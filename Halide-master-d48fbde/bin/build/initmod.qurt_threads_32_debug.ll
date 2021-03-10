; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8 }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32 }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i32] }
%struct.halide_thread = type { i32 }
%struct._qurt_thread_attr = type { [16 x i8], i8, i8, i16, i8, i8, i16, i32, i8* }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, [4 x i8] }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type <{ %union.qurt_mutex_aligned8, %union.qurt_cond_t, i8, [7 x i8] }>
%union.qurt_mutex_aligned8 = type { i64, [8 x i8] }
%union.qurt_cond_t = type { i64, [8 x i8] }
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

@halide_qurt_default_thread_priority = weak dso_local local_unnamed_addr global i16 100, align 2, !dbg !0
@.str = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:395 Assert failed: next != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal15Synchronization13table_storageE = weak dso_local global [12288 x i8] zeroinitializer, align 1, !dbg !316
@.str.1 = private unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", align 1
@_ZN6Halide7Runtime8Internal10work_queueE = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" zeroinitializer, align 4, !dbg !323
@.str.3 = private unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 4, !dbg !361
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 4, !dbg !367
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 4, !dbg !373
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 4, !dbg !379
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 4, !dbg !386
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 4, !dbg !392
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 4, !dbg !398
@.str.4 = private unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", align 1
@.str.7 = private unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !412 {
  ret i32 4, !dbg !415
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_default_thread_priority(i32 %0) local_unnamed_addr #0 !dbg !416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !420, metadata !DIExpression()), !dbg !421
  %2 = icmp sgt i32 %0, 255, !dbg !422
  br i1 %2, label %6, label %3, !dbg !424

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 1, !dbg !425
  %5 = trunc i32 %0 to i16, !dbg !427
  br i1 %4, label %8, label %6, !dbg !427

6:                                                ; preds = %1, %3
  %7 = phi i16 [ %5, %3 ], [ 255, %1 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !420, metadata !DIExpression()), !dbg !421
  store i16 %7, i16* @halide_qurt_default_thread_priority, align 2, !dbg !428, !tbaa !429
  br label %8, !dbg !433

8:                                                ; preds = %3, %6
  ret void, !dbg !433
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i16 @halide_get_default_thread_priority() local_unnamed_addr #0 !dbg !434 {
  %1 = load i16, i16* @halide_qurt_default_thread_priority, align 2, !dbg !437, !tbaa !429
  ret i16 %1, !dbg !438
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #2 !dbg !439 {
  %3 = alloca %struct._qurt_thread_attr, align 4
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !443, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()), !dbg !463
  %4 = tail call zeroext i16 @halide_get_default_thread_priority() #6, !dbg !464
  call void @llvm.dbg.value(metadata i16 %4, metadata !445, metadata !DIExpression()), !dbg !463
  %5 = tail call i8* @malloc(i32 16) #7, !dbg !465
  call void @llvm.dbg.value(metadata i8* %5, metadata !446, metadata !DIExpression()), !dbg !463
  %6 = bitcast i8* %5 to void (i8*)**, !dbg !466
  store void (i8*)* %0, void (i8*)** %6, align 4, !dbg !467, !tbaa !468
  %7 = getelementptr inbounds i8, i8* %5, i32 4, !dbg !473
  %8 = bitcast i8* %7 to i8**, !dbg !473
  store i8* %1, i8** %8, align 4, !dbg !474, !tbaa !475
  %9 = tail call i8* @memalign(i32 128, i32 262144) #7, !dbg !476
  %10 = getelementptr inbounds i8, i8* %5, i32 8, !dbg !477
  %11 = bitcast i8* %10 to i8**, !dbg !477
  store i8* %9, i8** %11, align 4, !dbg !478, !tbaa !479
  %12 = getelementptr inbounds i8, i8* %5, i32 12, !dbg !480
  %13 = tail call i8* @memset(i8* nonnull %12, i32 0, i32 4) #7, !dbg !481
  %14 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 0, i32 0, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #8, !dbg !482
  call void @llvm.dbg.declare(metadata %struct._qurt_thread_attr* %3, metadata !447, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !484, metadata !DIExpression()), !dbg !490
  store i8 0, i8* %14, align 4, !dbg !492, !tbaa !493
  %15 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 1, !dbg !494
  store i8 0, i8* %15, align 4, !dbg !495, !tbaa !496
  %16 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 3, !dbg !498
  %17 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 4, !dbg !499
  store i8 0, i8* %17, align 4, !dbg !500, !tbaa !501
  %18 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 2, !dbg !502
  store i8 -1, i8* %18, align 1, !dbg !503, !tbaa !504
  %19 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 5, !dbg !505
  store i8 -1, i8* %19, align 1, !dbg !506, !tbaa !507
  %20 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 6, !dbg !508
  store i16 -2, i16* %20, align 2, !dbg !509, !tbaa !510
  %21 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 7, !dbg !511
  %22 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 8, !dbg !512
  %23 = load i8*, i8** %11, align 4, !dbg !513, !tbaa !479
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !514, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i8* %23, metadata !519, metadata !DIExpression()), !dbg !520
  store i8* %23, i8** %22, align 4, !dbg !522, !tbaa !523
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !524, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 262144, metadata !529, metadata !DIExpression()), !dbg !530
  store i32 262144, i32* %21, align 4, !dbg !532, !tbaa !533
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !534, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i16 %4, metadata !539, metadata !DIExpression()), !dbg !540
  store i16 %4, i16* %16, align 2, !dbg !542, !tbaa !543
  %24 = bitcast i8* %12 to i32*, !dbg !544
  %25 = call i32 @qurt_thread_create(i32* nonnull %24, %struct._qurt_thread_attr* nonnull %3, void (i8*)* nonnull @_ZN12_GLOBAL__N_119spawn_thread_helperEPv, i8* %5) #7, !dbg !545
  %26 = bitcast i8* %5 to %struct.halide_thread*, !dbg !546
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #8, !dbg !547
  ret %struct.halide_thread* %26, !dbg !548
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !549 dso_local i8* @malloc(i32) local_unnamed_addr #4

declare !dbg !552 dso_local i8* @memalign(i32, i32) local_unnamed_addr #4

declare !dbg !555 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #4

declare !dbg !558 dso_local i32 @qurt_thread_create(i32*, %struct._qurt_thread_attr*, void (i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define internal void @_ZN12_GLOBAL__N_119spawn_thread_helperEPv(i8* nocapture readonly %0) #2 !dbg !563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !565, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i8* %0, metadata !566, metadata !DIExpression()), !dbg !567
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !568
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !dbg !568, !tbaa !468
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !569
  %5 = bitcast i8* %4 to i8**, !dbg !569
  %6 = load i8*, i8** %5, align 4, !dbg !569, !tbaa !475
  tail call void %3(i8* %6) #7, !dbg !570
  ret void, !dbg !571
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #2 !dbg !572 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !576, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !577, metadata !DIExpression()), !dbg !579
  %3 = bitcast i32* %2 to i8*, !dbg !580
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !580
  call void @llvm.dbg.value(metadata i32 0, metadata !578, metadata !DIExpression()), !dbg !579
  store i32 0, i32* %2, align 4, !dbg !581, !tbaa !582
  %4 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i32 3, i32 0, !dbg !583
  %5 = load i32, i32* %4, align 4, !dbg !583, !tbaa !584
  call void @llvm.dbg.value(metadata i32* %2, metadata !578, metadata !DIExpression(DW_OP_deref)), !dbg !579
  %6 = call i32 @qurt_thread_join(i32 %5, i32* nonnull %2) #7, !dbg !585
  %7 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i32 2, !dbg !586
  %8 = bitcast %struct.halide_thread* %7 to i8**, !dbg !586
  %9 = load i8*, i8** %8, align 4, !dbg !586, !tbaa !479
  call void @free(i8* %9) #7, !dbg !587
  %10 = bitcast %struct.halide_thread* %0 to i8*, !dbg !588
  call void @free(i8* %10) #7, !dbg !589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !590
  ret void, !dbg !590
}

declare !dbg !591 dso_local i32 @qurt_thread_join(i32, i32*) local_unnamed_addr #4

declare !dbg !595 dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #5 align 2 !dbg !596 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !598, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 40, metadata !600, metadata !DIExpression()), !dbg !620
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !621
  %4 = load i32, i32* %3, align 4, !dbg !622, !tbaa !582
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13, !dbg !623

13:                                               ; preds = %58, %1
  %14 = phi i32 [ %4, %1 ], [ %59, %58 ]
  %15 = phi i32 [ 40, %1 ], [ %60, %58 ]
  br label %16, !dbg !624

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ], !dbg !620
  call void @llvm.dbg.value(metadata i32 %15, metadata !600, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %17, metadata !612, metadata !DIExpression()), !dbg !620
  %18 = and i32 %17, 1, !dbg !625
  %19 = icmp eq i32 %18, 0, !dbg !626
  br i1 %19, label %20, label %25, !dbg !624

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !612, metadata !DIExpression()), !dbg !620
  %21 = or i32 %17, 1, !dbg !627
  call void @llvm.dbg.value(metadata i32 %21, metadata !613, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32* %3, metadata !629, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 %17, metadata !647, metadata !DIExpression()), !dbg !651
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst, !dbg !653
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !653
  call void @llvm.dbg.value(metadata i32 %23, metadata !648, metadata !DIExpression()), !dbg !651
  %24 = icmp eq i32 %17, %23, !dbg !654
  br i1 %24, label %61, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3, !dbg !655
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27, !dbg !657
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !658, metadata !DIExpression()), !dbg !662
  br i1 %28, label %29, label %34, !dbg !657

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %15, metadata !600, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !620
  %30 = icmp sgt i32 %15, 1, !dbg !664
  br i1 %30, label %31, label %34, !dbg !665

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1, !dbg !666
  call void @llvm.dbg.value(metadata i32 %32, metadata !600, metadata !DIExpression()), !dbg !620
  call void @halide_thread_yield() #7, !dbg !669
  %33 = load i32, i32* %3, align 4, !dbg !671, !tbaa !582
  br label %58, !dbg !672

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ], !dbg !620
  call void @llvm.dbg.value(metadata i32 %35, metadata !600, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !673
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !617, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !675, metadata !DIExpression()) #8, !dbg !678
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !680, metadata !DIExpression()) #8, !dbg !684
  store i8 0, i8* %6, align 8, !dbg !686, !tbaa !687
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !690
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !692
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !693, !tbaa !694
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !dbg !696, !tbaa !697
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !698, !tbaa !699
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !700, metadata !DIExpression()), !dbg !703
  store i8 1, i8* %6, align 8, !dbg !705, !tbaa !687
  call void @llvm.dbg.value(metadata i32 %17, metadata !612, metadata !DIExpression()), !dbg !620
  %36 = and i32 %17, -4, !dbg !706
  call void @llvm.dbg.value(metadata i32 %36, metadata !618, metadata !DIExpression()), !dbg !707
  %37 = icmp eq i32 %36, 0, !dbg !708
  br i1 %37, label %38, label %39, !dbg !710

38:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !711, !tbaa !699
  br label %41, !dbg !713

39:                                               ; preds = %34
  %40 = inttoptr i32 %36 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !714
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, metadata !618, metadata !DIExpression()), !dbg !707
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !715, !tbaa !694
  br label %41

41:                                               ; preds = %39, %38
  call void @llvm.dbg.value(metadata i32 %17, metadata !612, metadata !DIExpression()), !dbg !620
  %42 = and i32 %17, 3, !dbg !717
  %43 = or i32 %42, %12, !dbg !718
  call void @llvm.dbg.value(metadata i32 %43, metadata !619, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32* %3, metadata !719, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i32* undef, metadata !722, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i32* undef, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32 %17, metadata !647, metadata !DIExpression()), !dbg !727
  %44 = cmpxchg i32* %3, i32 %17, i32 %43 seq_cst seq_cst, !dbg !729
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !729
  call void @llvm.dbg.value(metadata i32 %45, metadata !648, metadata !DIExpression()), !dbg !727
  %46 = icmp eq i32 %17, %45, !dbg !730
  br i1 %46, label %47, label %55, !dbg !731

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !732, metadata !DIExpression()) #8, !dbg !735
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !738
  %48 = load i8, i8* %6, align 8, !dbg !739, !tbaa !687, !range !740
  %49 = icmp eq i8 %48, 0, !dbg !739
  br i1 %49, label %53, label %50, !dbg !741

50:                                               ; preds = %47, %50
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !742
  %51 = load i8, i8* %6, align 8, !dbg !739, !tbaa !687, !range !740
  %52 = icmp eq i8 %51, 0, !dbg !739
  br i1 %52, label %53, label %50, !dbg !741, !llvm.loop !744

53:                                               ; preds = %50, %47
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !747
  call void @llvm.dbg.value(metadata i32 40, metadata !600, metadata !DIExpression()), !dbg !620
  %54 = load i32, i32* %3, align 4, !dbg !748, !tbaa !582
  br label %55, !dbg !749

55:                                               ; preds = %53, %41
  %56 = phi i32 [ %54, %53 ], [ %45, %41 ], !dbg !750
  %57 = phi i32 [ 40, %53 ], [ %35, %41 ], !dbg !620
  call void @llvm.dbg.value(metadata i32 %57, metadata !600, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !751, metadata !DIExpression()) #8, !dbg !754
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !756, metadata !DIExpression()) #8, !dbg !759
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !762
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !765
  br label %58, !dbg !623

58:                                               ; preds = %55, %31
  %59 = phi i32 [ %33, %31 ], [ %56, %55 ]
  %60 = phi i32 [ %32, %31 ], [ %57, %55 ]
  br label %13, !dbg !624, !llvm.loop !766

61:                                               ; preds = %20
  ret void, !dbg !767
}

declare !dbg !768 dso_local void @halide_thread_yield() local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #5 align 2 !dbg !771 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !773, metadata !DIExpression()), !dbg !795
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !796
  %3 = load i32, i32* %2, align 4, !dbg !797, !tbaa !582
  call void @llvm.dbg.value(metadata i32* undef, metadata !798, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i32* undef, metadata !803, metadata !DIExpression()), !dbg !804
  br label %4, !dbg !806

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ], !dbg !807
  call void @llvm.dbg.value(metadata i32 %5, metadata !774, metadata !DIExpression()), !dbg !795
  %6 = and i32 %5, 2, !dbg !808
  %7 = icmp ne i32 %6, 0, !dbg !809
  call void @llvm.dbg.value(metadata i1 %7, metadata !775, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !810
  call void @llvm.dbg.value(metadata i1 undef, metadata !777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !810
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7, !dbg !811
  call void @llvm.dbg.value(metadata i1 %8, metadata !777, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !810
  br i1 %9, label %64, label %10, !dbg !811

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %5, metadata !774, metadata !DIExpression()), !dbg !795
  %11 = or i32 %5, 2, !dbg !813
  call void @llvm.dbg.value(metadata i32 %11, metadata !778, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i32* %2, metadata !629, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32* %2, metadata !640, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 %5, metadata !647, metadata !DIExpression()), !dbg !817
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst, !dbg !819
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !819
  call void @llvm.dbg.value(metadata i32 %13, metadata !648, metadata !DIExpression()), !dbg !817
  %14 = icmp eq i32 %5, %13, !dbg !820
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %62
  %16 = phi i32 [ %63, %62 ], [ %5, %10 ], !dbg !807
  call void @llvm.dbg.value(metadata i32 %16, metadata !774, metadata !DIExpression()), !dbg !795
  %17 = and i32 %16, -4, !dbg !821
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !822
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !779, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !781, metadata !DIExpression()), !dbg !823
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3, !dbg !824
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !782, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 0, metadata !783, metadata !DIExpression()), !dbg !823
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !823, !tbaa !699
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !781, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 undef, metadata !783, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, metadata !782, metadata !DIExpression()), !dbg !823
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null, !dbg !825
  br i1 %21, label %22, label %33, !dbg !826

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, metadata !781, metadata !DIExpression()), !dbg !823
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1, !dbg !827
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !dbg !827, !tbaa !694
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !784, metadata !DIExpression()), !dbg !828
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null, !dbg !829
  br i1 %26, label %27, label %28, !dbg !832

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i32 0, i32 0)) #7, !dbg !833
  tail call void @abort() #7, !dbg !833
  br label %28, !dbg !833

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2, !dbg !835
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !dbg !836, !tbaa !697
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !781, metadata !DIExpression()), !dbg !823
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3, !dbg !837
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !782, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 undef, metadata !783, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !823
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !823, !tbaa !699
  call void @llvm.dbg.value(metadata i32 undef, metadata !783, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, metadata !782, metadata !DIExpression()), !dbg !823
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null, !dbg !825
  br i1 %32, label %22, label %33, !dbg !826, !llvm.loop !838

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ], !dbg !823
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !840, !tbaa !699
  call void @llvm.dbg.value(metadata i32 %16, metadata !774, metadata !DIExpression()), !dbg !795
  %35 = and i32 %16, 1, !dbg !841
  %36 = icmp eq i32 %35, 0, !dbg !842
  br i1 %36, label %42, label %37, !dbg !843

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %16, metadata !774, metadata !DIExpression()), !dbg !795
  %38 = and i32 %16, -3, !dbg !844
  call void @llvm.dbg.value(metadata i32 %38, metadata !786, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32* %2, metadata !846, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32* undef, metadata !849, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32* undef, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32* %2, metadata !640, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 %16, metadata !647, metadata !DIExpression()), !dbg !854
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst, !dbg !856
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !856
  call void @llvm.dbg.value(metadata i32 %40, metadata !648, metadata !DIExpression()), !dbg !854
  %41 = icmp eq i32 %16, %40, !dbg !857
  br i1 %41, label %64, label %62, !dbg !858, !llvm.loop !859

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2, !dbg !862
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !dbg !862, !tbaa !697
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !789, metadata !DIExpression()), !dbg !823
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !863
  br i1 %45, label %46, label %54, !dbg !864

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  call void @llvm.dbg.value(metadata i32 %47, metadata !774, metadata !DIExpression()), !dbg !795
  %48 = and i32 %47, 1, !dbg !865
  call void @llvm.dbg.value(metadata i32 %48, metadata !793, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i32* %2, metadata !846, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i32* undef, metadata !849, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i32* undef, metadata !850, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i32* %2, metadata !640, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 %47, metadata !647, metadata !DIExpression()), !dbg !870
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst, !dbg !872
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !872
  call void @llvm.dbg.value(metadata i32 %50, metadata !648, metadata !DIExpression()), !dbg !870
  %51 = icmp eq i32 %47, %50, !dbg !873
  br i1 %51, label %56, label %52, !dbg !874

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %50, metadata !774, metadata !DIExpression()), !dbg !795
  %53 = icmp ult i32 %50, 4, !dbg !875
  br i1 %53, label %46, label %60, !dbg !877, !llvm.loop !878

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !881, !tbaa !699
  call void @llvm.dbg.value(metadata i32* %2, metadata !883, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i32 -3, metadata !888, metadata !DIExpression()), !dbg !889
  %55 = atomicrmw and i32* %2, i32 -3 seq_cst, !dbg !891
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !892, metadata !DIExpression()) #8, !dbg !895
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0, !dbg !897
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !898
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !899, metadata !DIExpression()) #8, !dbg !902
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2, !dbg !904
  store i8 0, i8* %58, align 8, !dbg !905, !tbaa !687
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1, !dbg !906
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %59) #7, !dbg !907
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !908, metadata !DIExpression()) #8, !dbg !911
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !913
  br label %64, !dbg !914

60:                                               ; preds = %52
  %61 = extractvalue { i32, i1 } %49, 0, !dbg !872
  call void @llvm.dbg.value(metadata i8 undef, metadata !790, metadata !DIExpression()), !dbg !915
  br label %62

62:                                               ; preds = %37, %60
  %63 = phi i32 [ %61, %60 ], [ %40, %37 ], !dbg !795
  fence seq_cst, !dbg !823
  br label %15

64:                                               ; preds = %4, %37, %56
  ret void, !dbg !916
}

declare !dbg !917 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #4

declare !dbg !920 dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) local_unnamed_addr #2 !dbg !921 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !926, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i32 %0, metadata !930, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 10, metadata !935, metadata !DIExpression()), !dbg !936
  %2 = mul i32 %0, -1640531527, !dbg !938
  %3 = lshr i32 %2, 22, !dbg !941
  call void @llvm.dbg.value(metadata i32 %3, metadata !927, metadata !DIExpression()), !dbg !929
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3, !dbg !942
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !928, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !943, metadata !DIExpression()) #8, !dbg !948
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()) #8, !dbg !948
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()) #8, !dbg !948
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !950
  call void @llvm.dbg.value(metadata i32* %5, metadata !629, metadata !DIExpression()) #8, !dbg !952
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !952
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !952
  call void @llvm.dbg.value(metadata i32* %5, metadata !640, metadata !DIExpression()) #8, !dbg !954
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !954
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !954
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !954
  %6 = cmpxchg i32* %5, i32 0, i32 1 seq_cst seq_cst, !dbg !956
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !954
  %7 = extractvalue { i32, i1 } %6, 1, !dbg !957
  br i1 %7, label %10, label %8, !dbg !958

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !959
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %9, metadata !943, metadata !DIExpression()) #8, !dbg !948
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %9) #7, !dbg !960
  br label %10, !dbg !962

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !963
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #5 !dbg !964 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !976, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %2, metadata !977, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %1, metadata !930, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 10, metadata !935, metadata !DIExpression()), !dbg !991
  %4 = mul i32 %1, -1640531527, !dbg !993
  %5 = lshr i32 %4, 22, !dbg !994
  call void @llvm.dbg.value(metadata i32 %5, metadata !978, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %2, metadata !930, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i32 10, metadata !935, metadata !DIExpression()), !dbg !995
  %6 = mul i32 %2, -1640531527, !dbg !997
  %7 = lshr i32 %6, 22, !dbg !998
  call void @llvm.dbg.value(metadata i32 %7, metadata !979, metadata !DIExpression()), !dbg !990
  %8 = icmp eq i32 %5, %7, !dbg !999
  br i1 %8, label %9, label %16, !dbg !1000

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !1001
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !980, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !943, metadata !DIExpression()) #8, !dbg !1003
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()) #8, !dbg !1003
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()) #8, !dbg !1003
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0, !dbg !1005
  call void @llvm.dbg.value(metadata i32* %11, metadata !629, metadata !DIExpression()) #8, !dbg !1006
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1006
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1006
  call void @llvm.dbg.value(metadata i32* %11, metadata !640, metadata !DIExpression()) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !1008
  %12 = cmpxchg i32* %11, i32 0, i32 1 seq_cst seq_cst, !dbg !1010
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1008
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !1011
  br i1 %13, label %46, label %14, !dbg !1012

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, !dbg !1013
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !943, metadata !DIExpression()) #8, !dbg !1003
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #7, !dbg !1014
  br label %46, !dbg !1015

16:                                               ; preds = %3
  %17 = icmp ult i32 %5, %7, !dbg !1016
  br i1 %17, label %18, label %32, !dbg !1017

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !983, metadata !DIExpression()), !dbg !1019
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !1020
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !986, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !943, metadata !DIExpression()) #8, !dbg !1021
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()) #8, !dbg !1021
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()) #8, !dbg !1021
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, i32 0, !dbg !1023
  call void @llvm.dbg.value(metadata i32* %21, metadata !629, metadata !DIExpression()) #8, !dbg !1024
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1024
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1024
  call void @llvm.dbg.value(metadata i32* %21, metadata !640, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !1026
  %22 = cmpxchg i32* %21, i32 0, i32 1 seq_cst seq_cst, !dbg !1028
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1026
  %23 = extractvalue { i32, i1 } %22, 1, !dbg !1029
  br i1 %23, label %26, label %24, !dbg !1030

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, !dbg !1031
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %25, metadata !943, metadata !DIExpression()) #8, !dbg !1021
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %25) #7, !dbg !1032
  br label %26, !dbg !1033

26:                                               ; preds = %18, %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !943, metadata !DIExpression()) #8, !dbg !1034
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()) #8, !dbg !1034
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()) #8, !dbg !1034
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0, !dbg !1036
  call void @llvm.dbg.value(metadata i32* %27, metadata !629, metadata !DIExpression()) #8, !dbg !1037
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1037
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1037
  call void @llvm.dbg.value(metadata i32* %27, metadata !640, metadata !DIExpression()) #8, !dbg !1039
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1039
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1039
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !1039
  %28 = cmpxchg i32* %27, i32 0, i32 1 seq_cst seq_cst, !dbg !1041
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1039
  %29 = extractvalue { i32, i1 } %28, 1, !dbg !1042
  br i1 %29, label %46, label %30, !dbg !1043

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, !dbg !1044
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !943, metadata !DIExpression()) #8, !dbg !1034
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %31) #7, !dbg !1045
  br label %46, !dbg !1046

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !1047
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !987, metadata !DIExpression()), !dbg !1048
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !1049
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !989, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !943, metadata !DIExpression()) #8, !dbg !1050
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()) #8, !dbg !1050
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()) #8, !dbg !1050
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, i32 0, !dbg !1052
  call void @llvm.dbg.value(metadata i32* %35, metadata !629, metadata !DIExpression()) #8, !dbg !1053
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1053
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1053
  call void @llvm.dbg.value(metadata i32* %35, metadata !640, metadata !DIExpression()) #8, !dbg !1055
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1055
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1055
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !1055
  %36 = cmpxchg i32* %35, i32 0, i32 1 seq_cst seq_cst, !dbg !1057
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1055
  %37 = extractvalue { i32, i1 } %36, 1, !dbg !1058
  br i1 %37, label %40, label %38, !dbg !1059

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, !dbg !1060
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %39, metadata !943, metadata !DIExpression()) #8, !dbg !1050
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %39) #7, !dbg !1061
  br label %40, !dbg !1062

40:                                               ; preds = %32, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !943, metadata !DIExpression()) #8, !dbg !1063
  call void @llvm.dbg.value(metadata i32 0, metadata !946, metadata !DIExpression()) #8, !dbg !1063
  call void @llvm.dbg.value(metadata i32 1, metadata !947, metadata !DIExpression()) #8, !dbg !1063
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, i32 0, !dbg !1065
  call void @llvm.dbg.value(metadata i32* %41, metadata !629, metadata !DIExpression()) #8, !dbg !1066
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1066
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1066
  call void @llvm.dbg.value(metadata i32* %41, metadata !640, metadata !DIExpression()) #8, !dbg !1068
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1068
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1068
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !1068
  %42 = cmpxchg i32* %41, i32 0, i32 1 seq_cst seq_cst, !dbg !1070
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1068
  %43 = extractvalue { i32, i1 } %42, 1, !dbg !1071
  br i1 %43, label %46, label %44, !dbg !1072

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, !dbg !1073
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !943, metadata !DIExpression()) #8, !dbg !1063
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #7, !dbg !1074
  br label %46, !dbg !1075

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !1076
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 4, !dbg !1076, !tbaa !1077
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !1076
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 4, !dbg !1076, !tbaa !1077
  ret void, !dbg !1078
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #2 !dbg !1079 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !1084, metadata !DIExpression()), !dbg !1085
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !1086
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1086, !tbaa !1088
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !1090
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1090, !tbaa !1091
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1092
  br i1 %6, label %7, label %16, !dbg !1093

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1094, metadata !DIExpression()) #8, !dbg !1100
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !1103
  call void @llvm.dbg.value(metadata i32* %8, metadata !1104, metadata !DIExpression()) #8, !dbg !1108
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1108
  %9 = atomicrmw and i32* %8, i32 -2 seq_cst, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %9, metadata !1097, metadata !DIExpression()) #8, !dbg !1100
  %10 = and i32 %9, 2, !dbg !1111
  %11 = icmp ne i32 %10, 0, !dbg !1112
  call void @llvm.dbg.value(metadata i1 %11, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1100
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1100
  %12 = icmp ult i32 %9, 4
  %13 = or i1 %12, %11, !dbg !1113
  call void @llvm.dbg.value(metadata i1 %12, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1100
  br i1 %13, label %56, label %14, !dbg !1113

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1115
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !1094, metadata !DIExpression()) #8, !dbg !1100
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #7, !dbg !1116
  br label %56, !dbg !1118

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1119
  br i1 %17, label %18, label %37, !dbg !1121

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1094, metadata !DIExpression()) #8, !dbg !1122
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !1125
  call void @llvm.dbg.value(metadata i32* %19, metadata !1104, metadata !DIExpression()) #8, !dbg !1126
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1126
  %20 = atomicrmw and i32* %19, i32 -2 seq_cst, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %20, metadata !1097, metadata !DIExpression()) #8, !dbg !1122
  %21 = and i32 %20, 2, !dbg !1129
  %22 = icmp ne i32 %21, 0, !dbg !1130
  call void @llvm.dbg.value(metadata i1 %22, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1122
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1122
  %23 = icmp ult i32 %20, 4
  %24 = or i1 %23, %22, !dbg !1131
  call void @llvm.dbg.value(metadata i1 %23, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1122
  br i1 %24, label %27, label %25, !dbg !1131

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1132
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %26, metadata !1094, metadata !DIExpression()) #8, !dbg !1122
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %26) #7, !dbg !1133
  br label %27, !dbg !1134

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1135, !tbaa !1091
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, metadata !1094, metadata !DIExpression()) #8, !dbg !1136
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, i32 0, !dbg !1138
  call void @llvm.dbg.value(metadata i32* %29, metadata !1104, metadata !DIExpression()) #8, !dbg !1139
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1139
  %30 = atomicrmw and i32* %29, i32 -2 seq_cst, !dbg !1141
  call void @llvm.dbg.value(metadata i32 %30, metadata !1097, metadata !DIExpression()) #8, !dbg !1136
  %31 = and i32 %30, 2, !dbg !1142
  %32 = icmp ne i32 %31, 0, !dbg !1143
  call void @llvm.dbg.value(metadata i1 %32, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1136
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1136
  %33 = icmp ult i32 %30, 4
  %34 = or i1 %33, %32, !dbg !1144
  call void @llvm.dbg.value(metadata i1 %33, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1136
  br i1 %34, label %56, label %35, !dbg !1144

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, !dbg !1145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %36, metadata !1094, metadata !DIExpression()) #8, !dbg !1136
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %36) #7, !dbg !1146
  br label %56, !dbg !1147

37:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !1094, metadata !DIExpression()) #8, !dbg !1148
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0, !dbg !1151
  call void @llvm.dbg.value(metadata i32* %38, metadata !1104, metadata !DIExpression()) #8, !dbg !1152
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1152
  %39 = atomicrmw and i32* %38, i32 -2 seq_cst, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %39, metadata !1097, metadata !DIExpression()) #8, !dbg !1148
  %40 = and i32 %39, 2, !dbg !1155
  %41 = icmp ne i32 %40, 0, !dbg !1156
  call void @llvm.dbg.value(metadata i1 %41, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1148
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1148
  %42 = icmp ult i32 %39, 4
  %43 = or i1 %42, %41, !dbg !1157
  call void @llvm.dbg.value(metadata i1 %42, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1148
  br i1 %43, label %46, label %44, !dbg !1157

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, !dbg !1158
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !1094, metadata !DIExpression()) #8, !dbg !1148
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #7, !dbg !1159
  br label %46, !dbg !1160

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1161, !tbaa !1088
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, metadata !1094, metadata !DIExpression()) #8, !dbg !1162
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, i32 0, !dbg !1164
  call void @llvm.dbg.value(metadata i32* %48, metadata !1104, metadata !DIExpression()) #8, !dbg !1165
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1165
  %49 = atomicrmw and i32* %48, i32 -2 seq_cst, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %49, metadata !1097, metadata !DIExpression()) #8, !dbg !1162
  %50 = and i32 %49, 2, !dbg !1168
  %51 = icmp ne i32 %50, 0, !dbg !1169
  call void @llvm.dbg.value(metadata i1 %51, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1162
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1162
  %52 = icmp ult i32 %49, 4
  %53 = or i1 %52, %51, !dbg !1170
  call void @llvm.dbg.value(metadata i1 %52, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1162
  br i1 %53, label %56, label %54, !dbg !1170

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, !dbg !1171
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %55, metadata !1094, metadata !DIExpression()) #8, !dbg !1162
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %55) #7, !dbg !1172
  br label %56, !dbg !1173

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void, !dbg !1174
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #0 !dbg !1175 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1178, metadata !DIExpression()), !dbg !1179
  ret i1 true, !dbg !1180
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #0 !dbg !1181 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1183, metadata !DIExpression()), !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1188, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %1, metadata !1189, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i1 %2, metadata !1190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1191
  ret i32 0, !dbg !1192
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1195, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1196, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i1 %2, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1199
  call void @llvm.dbg.value(metadata i1 %3, metadata !1198, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1199
  ret void, !dbg !1200
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #5 !dbg !1201 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1206, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1207, metadata !DIExpression()), !dbg !1211
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1212
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !1212
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1208, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1214, metadata !DIExpression()) #8, !dbg !1217
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !680, metadata !DIExpression()) #8, !dbg !1219
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2, !dbg !1221
  store i8 0, i8* %6, align 8, !dbg !1221, !tbaa !687
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0, !dbg !1222
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1223
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1, !dbg !1224
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !1225
  store i8 0, i8* %6, align 8, !dbg !1226, !tbaa !687
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1, !dbg !1227
  store i32 0, i32* %9, align 8, !dbg !1227, !tbaa !1228
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2, !dbg !1230
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1230, !tbaa !1231
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3, !dbg !1232
  store i32 0, i32* %11, align 8, !dbg !1232, !tbaa !1233
  %12 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #6, !dbg !1234
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1209, metadata !DIExpression()), !dbg !1211
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0, !dbg !1235
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #8, !dbg !1235
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1210, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1237, metadata !DIExpression()), !dbg !1241
  store i8 0, i8* %13, align 4, !dbg !1243, !tbaa !1244
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1, !dbg !1246
  store i32 0, i32* %14, align 4, !dbg !1246, !tbaa !1247
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0, !dbg !1248
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 4, !dbg !1248, !tbaa !1250
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1252
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #7, !dbg !1253
  br i1 %18, label %30, label %19, !dbg !1254

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1094, metadata !DIExpression()) #8, !dbg !1255
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1258
  call void @llvm.dbg.value(metadata i32* %20, metadata !1104, metadata !DIExpression()) #8, !dbg !1259
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1259
  %21 = atomicrmw and i32* %20, i32 -2 seq_cst, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %21, metadata !1097, metadata !DIExpression()) #8, !dbg !1255
  %22 = and i32 %21, 2, !dbg !1262
  %23 = icmp ne i32 %22, 0, !dbg !1263
  call void @llvm.dbg.value(metadata i1 %23, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1255
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1255
  %24 = icmp ult i32 %21, 4
  %25 = or i1 %24, %23, !dbg !1264
  call void @llvm.dbg.value(metadata i1 %24, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1255
  br i1 %25, label %28, label %26, !dbg !1264

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1265
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !1094, metadata !DIExpression()) #8, !dbg !1255
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %27) #7, !dbg !1266
  br label %28, !dbg !1267

28:                                               ; preds = %19, %26
  %29 = load i32, i32* %14, align 4, !dbg !1268, !tbaa !1247
  br label %57, !dbg !1269

30:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1270, !tbaa !1231
  store i32 %0, i32* %9, align 8, !dbg !1271, !tbaa !1228
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !700, metadata !DIExpression()), !dbg !1272
  store i8 1, i8* %6, align 8, !dbg !1274, !tbaa !687
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 1, !dbg !1275
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, align 4, !dbg !1275, !tbaa !1277
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %32, null, !dbg !1280
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1281
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 4, !dbg !1281
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, i32 0, i32 2, !dbg !1281
  %37 = select i1 %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, !dbg !1281
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, align 4, !dbg !1282, !tbaa !1077
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1283
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1284, !tbaa !1285
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1094, metadata !DIExpression()) #8, !dbg !1286
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1288
  call void @llvm.dbg.value(metadata i32* %39, metadata !1104, metadata !DIExpression()) #8, !dbg !1289
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1289
  %40 = atomicrmw and i32* %39, i32 -2 seq_cst, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %40, metadata !1097, metadata !DIExpression()) #8, !dbg !1286
  %41 = and i32 %40, 2, !dbg !1292
  %42 = icmp ne i32 %41, 0, !dbg !1293
  call void @llvm.dbg.value(metadata i1 %42, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1286
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1286
  %43 = icmp ult i32 %40, 4
  %44 = or i1 %43, %42, !dbg !1294
  call void @llvm.dbg.value(metadata i1 %43, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1286
  br i1 %44, label %47, label %45, !dbg !1294

45:                                               ; preds = %30
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1295
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %46, metadata !1094, metadata !DIExpression()) #8, !dbg !1286
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %46) #7, !dbg !1296
  br label %47, !dbg !1297

47:                                               ; preds = %30, %45
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1, !dbg !1298
  %49 = load void (i8*)*, void (i8*)** %48, align 4, !dbg !1298, !tbaa !1299
  call void %49(i8* nonnull %17) #7, !dbg !1300
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !732, metadata !DIExpression()) #8, !dbg !1301
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1303
  %50 = load i8, i8* %6, align 8, !dbg !1304, !tbaa !687, !range !740
  %51 = icmp eq i8 %50, 0, !dbg !1304
  br i1 %51, label %55, label %52, !dbg !1305

52:                                               ; preds = %47, %52
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1306
  %53 = load i8, i8* %6, align 8, !dbg !1304, !tbaa !687, !range !740
  %54 = icmp eq i8 %53, 0, !dbg !1304
  br i1 %54, label %55, label %52, !dbg !1305, !llvm.loop !1307

55:                                               ; preds = %52, %47
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1309
  %56 = load i32, i32* %11, align 8, !dbg !1310, !tbaa !1233
  br label %57, !dbg !1311

57:                                               ; preds = %55, %28
  %58 = phi i32 [ %56, %55 ], [ %29, %28 ], !dbg !1211
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #8, !dbg !1312
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1313, metadata !DIExpression()) #8, !dbg !1316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !756, metadata !DIExpression()) #8, !dbg !1318
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !1321
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !1312
  ret i32 %58, !dbg !1312
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #2 !dbg !1323 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1325, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1326, metadata !DIExpression()), !dbg !1342
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #6, !dbg !1343
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1327, metadata !DIExpression()), !dbg !1342
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1, !dbg !1344
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1328, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1329, metadata !DIExpression()), !dbg !1342
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !dbg !1345, !tbaa !1077
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1330, metadata !DIExpression()), !dbg !1342
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %11, !dbg !1346

11:                                               ; preds = %54, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %55, %54 ], !dbg !1347
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %56, %54 ], !dbg !1348
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %57, %54 ], !dbg !1349
  %15 = phi i32 [ undef, %2 ], [ %58, %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1330, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1329, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, metadata !1328, metadata !DIExpression()), !dbg !1342
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null, !dbg !1350
  br i1 %16, label %59, label %17, !dbg !1346

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1351
  %19 = load i32, i32* %18, align 4, !dbg !1352, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %19, metadata !1331, metadata !DIExpression()), !dbg !1353
  %20 = icmp eq i32 %19, %0, !dbg !1354
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1355
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 4, !dbg !1355, !tbaa !1231
  br i1 %20, label %23, label %54, !dbg !1356

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1333, metadata !DIExpression()), !dbg !1357
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1358, !tbaa !1077
  call void @llvm.dbg.value(metadata i8 0, metadata !1336, metadata !DIExpression()), !dbg !1357
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1359, !tbaa !1285
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1360
  br i1 %25, label %28, label %26, !dbg !1361

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1337, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8 undef, metadata !1336, metadata !DIExpression()), !dbg !1357
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1363
  br i1 %27, label %38, label %29, !dbg !1364

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1365, !tbaa !1285
  br label %38, !dbg !1367

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, metadata !1337, metadata !DIExpression()), !dbg !1362
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 1, !dbg !1368
  %32 = load i32, i32* %31, align 4, !dbg !1369, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %32, metadata !1340, metadata !DIExpression()), !dbg !1370
  %33 = icmp eq i32 %32, %0, !dbg !1371
  call void @llvm.dbg.value(metadata i1 %33, metadata !1336, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1357
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 2, !dbg !1372
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 4, !dbg !1372, !tbaa !1231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, metadata !1337, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i8 undef, metadata !1336, metadata !DIExpression()), !dbg !1357
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1363
  %37 = or i1 %33, %36, !dbg !1373
  br i1 %37, label %38, label %29, !dbg !1364, !llvm.loop !1374

38:                                               ; preds = %29, %26, %28
  %39 = phi i1 [ false, %28 ], [ false, %26 ], [ %33, %29 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1336, metadata !DIExpression()), !dbg !1357
  %40 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1376, !tbaa !1377
  %41 = tail call i32 %40(i8* nonnull %8, i32 1, i1 zeroext %39) #7, !dbg !1378
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1379
  store i32 %41, i32* %42, align 8, !dbg !1380, !tbaa !1233
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !892, metadata !DIExpression()) #8, !dbg !1381
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1383
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %43) #7, !dbg !1384
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1094, metadata !DIExpression()) #8, !dbg !1385
  call void @llvm.dbg.value(metadata i32* %9, metadata !1104, metadata !DIExpression()) #8, !dbg !1387
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1387
  %44 = atomicrmw and i32* %9, i32 -2 seq_cst, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %44, metadata !1097, metadata !DIExpression()) #8, !dbg !1385
  %45 = and i32 %44, 2, !dbg !1390
  %46 = icmp ne i32 %45, 0, !dbg !1391
  call void @llvm.dbg.value(metadata i1 %46, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1385
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1385
  %47 = icmp ult i32 %44, 4
  %48 = or i1 %47, %46, !dbg !1392
  call void @llvm.dbg.value(metadata i1 %47, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1385
  br i1 %48, label %50, label %49, !dbg !1392

49:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !1094, metadata !DIExpression()) #8, !dbg !1385
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #7, !dbg !1393
  br label %50, !dbg !1394

50:                                               ; preds = %38, %49
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !899, metadata !DIExpression()) #8, !dbg !1395
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 2, !dbg !1397
  store i8 0, i8* %51, align 8, !dbg !1398, !tbaa !687
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 1, !dbg !1399
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %52) #7, !dbg !1400
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !908, metadata !DIExpression()) #8, !dbg !1401
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %43) #7, !dbg !1403
  %53 = zext i1 %39 to i32, !dbg !1404
  br label %54

54:                                               ; preds = %17, %50
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %50 ], [ %21, %17 ], !dbg !1342
  %56 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %50 ], [ %14, %17 ], !dbg !1342
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %50 ], [ %22, %17 ], !dbg !1342
  %58 = phi i32 [ %53, %50 ], [ %15, %17 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1330, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %56, metadata !1329, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1328, metadata !DIExpression()), !dbg !1342
  br i1 %20, label %68, label %11, !llvm.loop !1405

59:                                               ; preds = %11
  %60 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1407, !tbaa !1377
  %61 = tail call i32 %60(i8* nonnull %8, i32 0, i1 zeroext false) #7, !dbg !1408
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1094, metadata !DIExpression()) #8, !dbg !1409
  call void @llvm.dbg.value(metadata i32* %9, metadata !1104, metadata !DIExpression()) #8, !dbg !1411
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1411
  %62 = atomicrmw and i32* %9, i32 -2 seq_cst, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %62, metadata !1097, metadata !DIExpression()) #8, !dbg !1409
  %63 = and i32 %62, 2, !dbg !1414
  %64 = icmp ne i32 %63, 0, !dbg !1415
  call void @llvm.dbg.value(metadata i1 %64, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1409
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1409
  %65 = icmp ult i32 %62, 4
  %66 = or i1 %65, %64, !dbg !1416
  call void @llvm.dbg.value(metadata i1 %65, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1409
  br i1 %66, label %68, label %67, !dbg !1416

67:                                               ; preds = %59
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !1094, metadata !DIExpression()) #8, !dbg !1409
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #7, !dbg !1417
  br label %68, !dbg !1418

68:                                               ; preds = %54, %67, %59
  %69 = phi i32 [ 0, %59 ], [ 0, %67 ], [ %58, %54 ], !dbg !1342
  ret i32 %69, !dbg !1419
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj(i32 %0, i32 %1) local_unnamed_addr #2 !dbg !1420 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1424, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %1, metadata !1425, metadata !DIExpression()), !dbg !1450
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #6, !dbg !1451
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1426, metadata !DIExpression()), !dbg !1450
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1, !dbg !1452
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1427, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1428, metadata !DIExpression()), !dbg !1450
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1453, !tbaa !1077
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1429, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1430, metadata !DIExpression()), !dbg !1450
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1454
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #8, !dbg !1454
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1432, metadata !DIExpression()), !dbg !1455
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0, !dbg !1456
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1434, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 16, metadata !1435, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1428, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1429, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1430, metadata !DIExpression()), !dbg !1450
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1457
  br i1 %9, label %59, label %10, !dbg !1458

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12, !dbg !1458

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i32 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i32 [ 0, %10 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1428, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1429, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %15, metadata !1435, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1434, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %17, metadata !1430, metadata !DIExpression()), !dbg !1450
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1459
  %19 = load i32, i32* %18, align 4, !dbg !1460, !tbaa !582
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1461
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !dbg !1461, !tbaa !1231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1438, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %19, metadata !1436, metadata !DIExpression()), !dbg !1462
  %22 = icmp eq i32 %19, %0, !dbg !1463
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1464, !tbaa !1077
  br i1 %22, label %23, label %53, !dbg !1465

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1466, !tbaa !1285
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1468
  br i1 %25, label %26, label %27, !dbg !1469

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1470, !tbaa !1285
  br label %27, !dbg !1472

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15, !dbg !1473
  br i1 %28, label %29, label %46, !dbg !1474

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1439, metadata !DIExpression()), !dbg !1475
  %30 = shl i32 %15, 3, !dbg !1476
  %31 = call i8* @malloc(i32 %30) #7, !dbg !1477
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1478
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1434, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1444, metadata !DIExpression()), !dbg !1479
  %33 = icmp eq i32 %15, 0, !dbg !1480
  br i1 %33, label %34, label %37, !dbg !1482

34:                                               ; preds = %37, %29
  %35 = shl i32 %15, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %35, metadata !1435, metadata !DIExpression()), !dbg !1450
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1484
  br i1 %36, label %46, label %44, !dbg !1486

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !1444, metadata !DIExpression()), !dbg !1479
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %38, !dbg !1487
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1487, !tbaa !1077
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %38, !dbg !1489
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 4, !dbg !1490, !tbaa !1077
  %42 = add nuw i32 %38, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %42, metadata !1444, metadata !DIExpression()), !dbg !1479
  %43 = icmp ult i32 %42, %15, !dbg !1480
  br i1 %43, label %37, label %34, !dbg !1482, !llvm.loop !1492

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1494
  call void @free(i8* %45) #7, !dbg !1496
  br label %46, !dbg !1497

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1450
  %48 = phi i32 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1450
  call void @llvm.dbg.value(metadata i32 %48, metadata !1435, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1434, metadata !DIExpression()), !dbg !1450
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1498
  store i32 %1, i32* %49, align 8, !dbg !1499, !tbaa !1233
  %50 = add i32 %17, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %50, metadata !1430, metadata !DIExpression()), !dbg !1450
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i32 %17, !dbg !1501
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 4, !dbg !1502, !tbaa !1077
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !892, metadata !DIExpression()) #8, !dbg !1503
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1505
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %52) #7, !dbg !1506
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1429, metadata !DIExpression()), !dbg !1450
  br label %53, !dbg !1507

53:                                               ; preds = %12, %46
  %54 = phi i32 [ %50, %46 ], [ %17, %12 ], !dbg !1450
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1450
  %56 = phi i32 [ %48, %46 ], [ %15, %12 ], !dbg !1450
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1428, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1429, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %56, metadata !1435, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1434, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %54, metadata !1430, metadata !DIExpression()), !dbg !1450
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1457
  br i1 %58, label %59, label %12, !dbg !1458, !llvm.loop !1508

59:                                               ; preds = %53, %2
  %60 = phi i32 [ 0, %2 ], [ %54, %53 ], !dbg !1450
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ], !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1094, metadata !DIExpression()) #8, !dbg !1510
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !1512
  call void @llvm.dbg.value(metadata i32* %62, metadata !1104, metadata !DIExpression()) #8, !dbg !1513
  call void @llvm.dbg.value(metadata i32 -2, metadata !1107, metadata !DIExpression()) #8, !dbg !1513
  %63 = atomicrmw and i32* %62, i32 -2 seq_cst, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %63, metadata !1097, metadata !DIExpression()) #8, !dbg !1510
  %64 = and i32 %63, 2, !dbg !1516
  %65 = icmp ne i32 %64, 0, !dbg !1517
  call void @llvm.dbg.value(metadata i1 %65, metadata !1098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1510
  call void @llvm.dbg.value(metadata i1 undef, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1510
  %66 = icmp ult i32 %63, 4
  %67 = or i1 %66, %65, !dbg !1518
  call void @llvm.dbg.value(metadata i1 %66, metadata !1099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1510
  br i1 %67, label %70, label %68, !dbg !1518

68:                                               ; preds = %59
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !1519
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %69, metadata !1094, metadata !DIExpression()) #8, !dbg !1510
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %69) #7, !dbg !1520
  br label %70, !dbg !1521

70:                                               ; preds = %59, %68
  call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1522
  %71 = icmp eq i32 %60, 0, !dbg !1523
  br i1 %71, label %80, label %72, !dbg !1525

72:                                               ; preds = %70, %72
  %73 = phi i32 [ %78, %72 ], [ 0, %70 ]
  call void @llvm.dbg.value(metadata i32 %73, metadata !1446, metadata !DIExpression()), !dbg !1522
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i32 %73, !dbg !1526
  %75 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %74, align 4, !dbg !1526, !tbaa !1077
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, metadata !899, metadata !DIExpression()) #8, !dbg !1528
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i32 0, i32 0, i32 2, !dbg !1530
  store i8 0, i8* %76, align 8, !dbg !1531, !tbaa !687
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i32 0, i32 0, i32 1, !dbg !1532
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %77) #7, !dbg !1533
  %78 = add nuw i32 %73, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %78, metadata !1446, metadata !DIExpression()), !dbg !1522
  %79 = icmp ult i32 %78, %60, !dbg !1523
  br i1 %79, label %72, label %82, !dbg !1525, !llvm.loop !1535

80:                                               ; preds = %82, %70
  %81 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8, !dbg !1537
  br i1 %81, label %91, label %89, !dbg !1539

82:                                               ; preds = %72, %82
  %83 = phi i32 [ %87, %82 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i32 %83, metadata !1448, metadata !DIExpression()), !dbg !1540
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i32 %83, !dbg !1541
  %85 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %84, align 4, !dbg !1541, !tbaa !1077
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %85, metadata !908, metadata !DIExpression()) #8, !dbg !1544
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %85, i32 0, i32 0, i32 0, !dbg !1546
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %86) #7, !dbg !1547
  %87 = add nuw i32 %83, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %87, metadata !1448, metadata !DIExpression()), !dbg !1540
  %88 = icmp ult i32 %87, %60, !dbg !1549
  br i1 %88, label %82, label %80, !dbg !1550, !llvm.loop !1551

89:                                               ; preds = %80
  %90 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*, !dbg !1553
  call void @free(i8* %90) #7, !dbg !1555
  br label %91, !dbg !1556

91:                                               ; preds = %89, %80
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #8, !dbg !1557
  ret i32 %60, !dbg !1558
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #5 !dbg !1559 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1563, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1564, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1565, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %3, metadata !1566, metadata !DIExpression()), !dbg !1578
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1579
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1567, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i32 %1, metadata !1564, metadata !DIExpression()), !dbg !1578
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #6, !dbg !1581
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0, !dbg !1582
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1582
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1568, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1237, metadata !DIExpression()), !dbg !1584
  store i8 0, i8* %8, align 4, !dbg !1586, !tbaa !1244
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1, !dbg !1587
  store i32 0, i32* %9, align 4, !dbg !1587, !tbaa !1247
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0, !dbg !1588
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !dbg !1588, !tbaa !1250
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1590
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #7, !dbg !1591
  br i1 %13, label %15, label %14, !dbg !1592

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #6, !dbg !1593
  br label %123, !dbg !1595

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0, !dbg !1596
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1596, !tbaa !1088
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1, !dbg !1597
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1569, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1570, metadata !DIExpression()), !dbg !1578
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !dbg !1598, !tbaa !1077
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1569, metadata !DIExpression()), !dbg !1578
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1599
  br i1 %20, label %105, label %21, !dbg !1600

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24, !dbg !1600

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, metadata !1569, metadata !DIExpression()), !dbg !1578
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1, !dbg !1601
  %32 = load i32, i32* %31, align 4, !dbg !1602, !tbaa !582
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2, !dbg !1603
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1603, !tbaa !1231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1577, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %32, metadata !1575, metadata !DIExpression()), !dbg !1604
  %35 = icmp eq i32 %32, %0, !dbg !1605
  br i1 %35, label %36, label %50, !dbg !1607

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !dbg !1608, !tbaa !1077
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1610, !tbaa !1088
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2, !dbg !1612
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1612, !tbaa !1285
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28, !dbg !1613
  br i1 %40, label %41, label %42, !dbg !1614

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1615, !tbaa !1285
  br label %42, !dbg !1617

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null
  br i1 %43, label %50, label %44, !dbg !1618

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null, !dbg !1620
  br i1 %45, label %48, label %46, !dbg !1623

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2, !dbg !1624
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !dbg !1626, !tbaa !1231
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ], !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32* %31, metadata !1627, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32* undef, metadata !1632, metadata !DIExpression()), !dbg !1633
  store i32 %1, i32* %31, align 4, !dbg !1635, !tbaa !582
  br label %50

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ], !dbg !1578
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ], !dbg !1578
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ], !dbg !1636
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ], !dbg !1637
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ], !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1569, metadata !DIExpression()), !dbg !1578
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1599
  br i1 %56, label %86, label %24, !dbg !1600, !llvm.loop !1638

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, metadata !1569, metadata !DIExpression()), !dbg !1578
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1, !dbg !1601
  %64 = load i32, i32* %63, align 4, !dbg !1602, !tbaa !582
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2, !dbg !1603
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !dbg !1603, !tbaa !1231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1577, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %64, metadata !1575, metadata !DIExpression()), !dbg !1604
  %67 = icmp eq i32 %64, %0, !dbg !1605
  br i1 %67, label %68, label %80, !dbg !1607

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1608, !tbaa !1077
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1610, !tbaa !1088
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2, !dbg !1612
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1612, !tbaa !1285
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60, !dbg !1613
  br i1 %72, label %73, label %74, !dbg !1614

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1615, !tbaa !1285
  br label %74, !dbg !1617

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null, !dbg !1620
  br i1 %75, label %78, label %76, !dbg !1623

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2, !dbg !1624
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1626, !tbaa !1231
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ], !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32* %63, metadata !1627, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32* undef, metadata !1632, metadata !DIExpression()), !dbg !1633
  store i32 %1, i32* %63, align 4, !dbg !1635, !tbaa !582
  br label %80

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ], !dbg !1578
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ], !dbg !1578
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ], !dbg !1636
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ], !dbg !1637
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %84, metadata !1573, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %83, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1571, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %82, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %81, metadata !1569, metadata !DIExpression()), !dbg !1578
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null, !dbg !1599
  br i1 %85, label %86, label %57, !dbg !1600, !llvm.loop !1638

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ], !dbg !1636
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ], !dbg !1637
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ], !dbg !1578
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null, !dbg !1640
  br i1 %90, label %105, label %91, !dbg !1642

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2, !dbg !1643
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !dbg !1645, !tbaa !1231
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1, !dbg !1646
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !dbg !1646, !tbaa !1091
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1, !dbg !1648
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !dbg !1648, !tbaa !1277
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null, !dbg !1649
  br i1 %97, label %102, label %98, !dbg !1650

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1651
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !dbg !1651, !tbaa !1285
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2, !dbg !1653
  br label %102

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !dbg !1654, !tbaa !1077
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1655
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !dbg !1656, !tbaa !1285
  br label %105, !dbg !1657

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3, !dbg !1658
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !dbg !1658, !tbaa !1659
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null, !dbg !1660
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #7, !dbg !1661
  br i1 %110, label %111, label %116, !dbg !1662

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3, !dbg !1663
  store i32 %3, i32* %112, align 8, !dbg !1666, !tbaa !1233
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !892, metadata !DIExpression()) #8, !dbg !1667
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0, !dbg !1669
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %113) #7, !dbg !1670
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #6, !dbg !1671
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !899, metadata !DIExpression()) #8, !dbg !1672
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2, !dbg !1674
  store i8 0, i8* %114, align 8, !dbg !1675, !tbaa !687
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1, !dbg !1676
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %115) #7, !dbg !1677
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !908, metadata !DIExpression()) #8, !dbg !1678
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %113) #7, !dbg !1680
  br label %117, !dbg !1681

116:                                              ; preds = %105
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #6, !dbg !1682
  br label %117

117:                                              ; preds = %116, %111
  %118 = load i8, i8* %8, align 4, !dbg !1684
  %119 = and i8 %118, 1, !dbg !1684
  %120 = icmp ne i8 %119, 0, !dbg !1684
  %121 = and i1 %110, %120, !dbg !1684
  %122 = zext i1 %121 to i32, !dbg !1685
  br label %123

123:                                              ; preds = %117, %14
  %124 = phi i32 [ %122, %117 ], [ 0, %14 ], !dbg !1578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1686
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1686
  ret i32 %124, !dbg !1686
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #0 !dbg !1687 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1689, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1690, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8* %0, metadata !1691, metadata !DIExpression()), !dbg !1693
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1694
  %4 = bitcast i8* %3 to i32**, !dbg !1694
  %5 = load i32*, i32** %4, align 4, !dbg !1694, !tbaa !1695
  %6 = load i32, i32* %5, align 4, !dbg !1697, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %6, metadata !1692, metadata !DIExpression()), !dbg !1693
  %7 = icmp eq i32 %6, 3, !dbg !1698
  ret i1 %7, !dbg !1699
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1702, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %1, metadata !1703, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i1 %2, metadata !1704, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %0, metadata !1705, metadata !DIExpression()), !dbg !1707
  %4 = select i1 %2, i32 2, i32 0, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %4, metadata !1706, metadata !DIExpression()), !dbg !1707
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1709
  %6 = bitcast i8* %5 to i32**, !dbg !1709
  %7 = load i32*, i32** %6, align 4, !dbg !1709, !tbaa !1695
  call void @llvm.dbg.value(metadata i32* %7, metadata !1710, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32* undef, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i32 %4, i32* %7, align 4, !dbg !1716, !tbaa !582
  fence seq_cst, !dbg !1717
  ret i32 0, !dbg !1718
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1719 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1721, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %1, metadata !1722, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i1 %2, metadata !1723, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1728
  call void @llvm.dbg.value(metadata i8* %0, metadata !1724, metadata !DIExpression()), !dbg !1728
  br i1 %2, label %8, label %4, !dbg !1729

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1724, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 0, metadata !1725, metadata !DIExpression()), !dbg !1730
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1731
  %6 = bitcast i8* %5 to i32**, !dbg !1731
  %7 = load i32*, i32** %6, align 4, !dbg !1731, !tbaa !1732
  call void @llvm.dbg.value(metadata i32* %7, metadata !1627, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32* undef, metadata !1632, metadata !DIExpression()), !dbg !1734
  store i32 0, i32* %7, align 4, !dbg !1736, !tbaa !582
  br label %8, !dbg !1737

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1738
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %0, metadata !1743, metadata !DIExpression()), !dbg !1745
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1746
  %4 = bitcast i8* %3 to i32**, !dbg !1746
  %5 = load i32*, i32** %4, align 4, !dbg !1746, !tbaa !1747
  %6 = load i32, i32* %5, align 4, !dbg !1749, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %6, metadata !1744, metadata !DIExpression()), !dbg !1745
  %7 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1750
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1750
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !dbg !1750, !tbaa !1752
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32, !dbg !1753
  %11 = icmp eq i32 %6, %10, !dbg !1754
  br i1 %11, label %12, label %27, !dbg !1755

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1744, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32* %5, metadata !1627, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i32* undef, metadata !1632, metadata !DIExpression()), !dbg !1756
  store i32 0, i32* %5, align 4, !dbg !1758, !tbaa !582
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, metadata !1759, metadata !DIExpression()), !dbg !1765
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0, !dbg !1767
  %14 = load i32, i32* %13, align 4, !dbg !1768, !tbaa !582
  br label %15, !dbg !1769

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ], !dbg !1765
  call void @llvm.dbg.value(metadata i32 %16, metadata !1762, metadata !DIExpression()), !dbg !1765
  %17 = and i32 %16, 1, !dbg !1770
  %18 = icmp eq i32 %17, 0, !dbg !1772
  br i1 %18, label %24, label %19, !dbg !1773

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1762, metadata !DIExpression()), !dbg !1765
  %20 = or i32 %16, 2, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %20, metadata !1763, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32* %13, metadata !1776, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32* undef, metadata !1779, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32* undef, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32* %13, metadata !640, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i32 %16, metadata !647, metadata !DIExpression()), !dbg !1784
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst, !dbg !1786
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %22, metadata !648, metadata !DIExpression()), !dbg !1784
  %23 = icmp eq i32 %16, %22, !dbg !1787
  br i1 %23, label %24, label %15, !llvm.loop !1788

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1790
  store i8 %25, i8* %26, align 4, !dbg !1791, !tbaa !1244
  br label %27, !dbg !1792

27:                                               ; preds = %2, %24
  ret i1 %11, !dbg !1793
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1794 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1796, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i1 %2, metadata !1798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1801
  call void @llvm.dbg.value(metadata i1 %3, metadata !1799, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %0, metadata !1800, metadata !DIExpression()), !dbg !1801
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1802
  %6 = load i8, i8* %5, align 4, !dbg !1802, !tbaa !1244, !range !740
  %7 = icmp ne i8 %6, 0, !dbg !1802
  %8 = and i1 %7, %3, !dbg !1804
  br i1 %8, label %9, label %15, !dbg !1804

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1805
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1805
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !dbg !1805, !tbaa !1752
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1807, metadata !DIExpression()), !dbg !1810
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0, !dbg !1812
  call void @llvm.dbg.value(metadata i32* %13, metadata !1813, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 2, metadata !1816, metadata !DIExpression()), !dbg !1817
  %14 = atomicrmw or i32* %13, i32 2 seq_cst, !dbg !1819
  br label %15, !dbg !1820

15:                                               ; preds = %4, %9
  ret void, !dbg !1821
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #0 !dbg !1822 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1824, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1825, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %0, metadata !1826, metadata !DIExpression()), !dbg !1828
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1829
  %4 = bitcast i8* %3 to i32**, !dbg !1829
  %5 = load i32*, i32** %4, align 4, !dbg !1829, !tbaa !1830
  %6 = load i32, i32* %5, align 4, !dbg !1832, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %6, metadata !1827, metadata !DIExpression()), !dbg !1828
  %7 = icmp eq i32 %6, 0, !dbg !1833
  %8 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1835
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1835
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !dbg !1835, !tbaa !1836
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32, !dbg !1835
  br i1 %7, label %16, label %12, !dbg !1837

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11, !dbg !1838
  br i1 %13, label %18, label %14, !dbg !1840

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1, !dbg !1841
  br label %16, !dbg !1843

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !dbg !1835, !tbaa !582
  br label %18, !dbg !1844

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ], !dbg !1828
  ret i1 %19, !dbg !1844
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #5 !dbg !1845 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %0, metadata !1848, metadata !DIExpression()), !dbg !1849
  %3 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1850
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1850
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !dbg !1850, !tbaa !1836
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1851, metadata !DIExpression()) #8, !dbg !1856
  call void @llvm.dbg.value(metadata i32 1, metadata !1854, metadata !DIExpression()) #8, !dbg !1856
  call void @llvm.dbg.value(metadata i32 0, metadata !1855, metadata !DIExpression()) #8, !dbg !1856
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0, !dbg !1858
  call void @llvm.dbg.value(metadata i32* %6, metadata !719, metadata !DIExpression()) #8, !dbg !1860
  call void @llvm.dbg.value(metadata i32* undef, metadata !722, metadata !DIExpression()) #8, !dbg !1860
  call void @llvm.dbg.value(metadata i32* undef, metadata !723, metadata !DIExpression()) #8, !dbg !1860
  call void @llvm.dbg.value(metadata i32* %6, metadata !640, metadata !DIExpression()) #8, !dbg !1862
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1862
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1862
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()) #8, !dbg !1862
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1864
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1862
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1865
  br i1 %8, label %22, label %9, !dbg !1866

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1867, metadata !DIExpression()) #8, !dbg !1873
  call void @llvm.dbg.value(metadata i32 1, metadata !1870, metadata !DIExpression()) #8, !dbg !1873
  call void @llvm.dbg.value(metadata i32 0, metadata !1871, metadata !DIExpression()) #8, !dbg !1873
  call void @llvm.dbg.value(metadata i32* %6, metadata !1876, metadata !DIExpression()) #8, !dbg !1881
  call void @llvm.dbg.value(metadata i32* undef, metadata !1879, metadata !DIExpression()) #8, !dbg !1881
  call void @llvm.dbg.value(metadata i32* undef, metadata !1880, metadata !DIExpression()) #8, !dbg !1881
  call void @llvm.dbg.value(metadata i32* %6, metadata !640, metadata !DIExpression()) #8, !dbg !1884
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1884
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1884
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()) #8, !dbg !1884
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1886
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1884
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !1887
  br i1 %11, label %22, label %12, !dbg !1888

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1889
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #8, !dbg !1889
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1872, metadata !DIExpression()) #8, !dbg !1890
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1891, metadata !DIExpression()) #8, !dbg !1895
  call void @llvm.dbg.value(metadata i32* %6, metadata !1894, metadata !DIExpression()) #8, !dbg !1895
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1897, metadata !DIExpression()) #8, !dbg !1901
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1903
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1904
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 4, !dbg !1904, !tbaa !1299
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1905
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1906
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !dbg !1906, !tbaa !1659
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1907
  store i32* %6, i32** %18, align 4, !dbg !1907, !tbaa !1695
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !dbg !1908, !tbaa !1250
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %16, align 4, !dbg !1910, !tbaa !1377
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32, !dbg !1911
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1912
  %21 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %20) #7, !dbg !1913
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #8, !dbg !1914
  br label %22, !dbg !1914

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1915
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1918, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %1, metadata !1919, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i1 %2, metadata !1920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1925
  call void @llvm.dbg.value(metadata i8* %0, metadata !1921, metadata !DIExpression()), !dbg !1925
  br i1 %2, label %8, label %4, !dbg !1926

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 0, metadata !1922, metadata !DIExpression()), !dbg !1927
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1928
  %6 = bitcast i8* %5 to i32**, !dbg !1928
  %7 = load i32*, i32** %6, align 4, !dbg !1928, !tbaa !1830
  call void @llvm.dbg.value(metadata i32* %7, metadata !1627, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32* undef, metadata !1632, metadata !DIExpression()), !dbg !1929
  store i32 0, i32* %7, align 4, !dbg !1931, !tbaa !582
  br label %8, !dbg !1932

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1933
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !1934 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1938, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1939, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1941, metadata !DIExpression()) #8, !dbg !1946
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()) #8, !dbg !1946
  call void @llvm.dbg.value(metadata i32 1, metadata !1945, metadata !DIExpression()) #8, !dbg !1946
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1948
  call void @llvm.dbg.value(metadata i32* %3, metadata !629, metadata !DIExpression()) #8, !dbg !1950
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1950
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1950
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()) #8, !dbg !1952
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1952
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1952
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !1952
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst, !dbg !1954
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !1952
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1955
  br i1 %5, label %53, label %6, !dbg !1956

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1941, metadata !DIExpression()) #8, !dbg !1946
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1939, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1957, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i32 40, metadata !1960, metadata !DIExpression()) #8, !dbg !1971
  %7 = load i32, i32* %3, align 4, !dbg !1974, !tbaa !582
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i32
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  br label %16, !dbg !1975

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19, !dbg !1976

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ], !dbg !1971
  call void @llvm.dbg.value(metadata i32 %18, metadata !1960, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %20, metadata !1961, metadata !DIExpression()) #8, !dbg !1971
  %21 = and i32 %20, 1, !dbg !1977
  %22 = icmp eq i32 %21, 0, !dbg !1978
  br i1 %22, label %23, label %28, !dbg !1976

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1961, metadata !DIExpression()) #8, !dbg !1971
  %24 = or i32 %20, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %24, metadata !1962, metadata !DIExpression()) #8, !dbg !1980
  call void @llvm.dbg.value(metadata i32* %3, metadata !629, metadata !DIExpression()) #8, !dbg !1981
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !1981
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !1981
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()) #8, !dbg !1984
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !1984
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %20, metadata !647, metadata !DIExpression()) #8, !dbg !1984
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst, !dbg !1986
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %26, metadata !648, metadata !DIExpression()) #8, !dbg !1984
  %27 = icmp eq i32 %20, %26, !dbg !1987
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !658, metadata !DIExpression()) #8, !dbg !1988
  %29 = icmp sgt i32 %18, 0, !dbg !1991
  br i1 %29, label %30, label %35, !dbg !1992

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %18, metadata !1960, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !1971
  %31 = icmp eq i32 %18, 1, !dbg !1993
  br i1 %31, label %35, label %32, !dbg !1994

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %33, metadata !1960, metadata !DIExpression()) #8, !dbg !1971
  call void @halide_thread_yield() #7, !dbg !1996
  %34 = load i32, i32* %3, align 4, !dbg !1998, !tbaa !582
  br label %49, !dbg !1999

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !1961, metadata !DIExpression()) #8, !dbg !1971
  %37 = and i32 %20, 2, !dbg !2000
  %38 = icmp eq i32 %37, 0, !dbg !2001
  br i1 %38, label %39, label %44, !dbg !2002

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %20, metadata !1961, metadata !DIExpression()) #8, !dbg !1971
  %40 = or i32 %20, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %40, metadata !1966, metadata !DIExpression()) #8, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %3, metadata !1776, metadata !DIExpression()) #8, !dbg !2005
  call void @llvm.dbg.value(metadata i32* undef, metadata !1779, metadata !DIExpression()) #8, !dbg !2005
  call void @llvm.dbg.value(metadata i32* undef, metadata !1780, metadata !DIExpression()) #8, !dbg !2005
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()) #8, !dbg !2008
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !2008
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !2008
  call void @llvm.dbg.value(metadata i32 %20, metadata !647, metadata !DIExpression()) #8, !dbg !2008
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst, !dbg !2010
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %42, metadata !648, metadata !DIExpression()) #8, !dbg !2008
  %43 = icmp eq i32 %20, %42, !dbg !2011
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #8, !dbg !2012
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1969, metadata !DIExpression()) #8, !dbg !2013
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1891, metadata !DIExpression()) #8, !dbg !2014
  call void @llvm.dbg.value(metadata i32* %3, metadata !1894, metadata !DIExpression()) #8, !dbg !2014
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1897, metadata !DIExpression()) #8, !dbg !2016
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !2018, !tbaa !1299
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !2019, !tbaa !1659
  store i32* %3, i32** %13, align 4, !dbg !2020, !tbaa !1695
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !2021, !tbaa !1250
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !2022, !tbaa !1377
  %45 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #7, !dbg !2023
  call void @llvm.dbg.value(metadata i32 %45, metadata !1970, metadata !DIExpression()) #8, !dbg !2024
  %46 = icmp eq i32 %45, %14, !dbg !2025
  br i1 %46, label %52, label %47, !dbg !2027

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 40, metadata !1960, metadata !DIExpression()) #8, !dbg !1971
  %48 = load i32, i32* %3, align 4, !dbg !2028, !tbaa !582
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #8, !dbg !2029
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16, !dbg !1976, !llvm.loop !2030

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #8, !dbg !2029
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void, !dbg !2031
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !2032 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1851, metadata !DIExpression()) #8, !dbg !2037
  call void @llvm.dbg.value(metadata i32 1, metadata !1854, metadata !DIExpression()) #8, !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !1855, metadata !DIExpression()) #8, !dbg !2037
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !2039
  call void @llvm.dbg.value(metadata i32* %3, metadata !719, metadata !DIExpression()) #8, !dbg !2040
  call void @llvm.dbg.value(metadata i32* undef, metadata !722, metadata !DIExpression()) #8, !dbg !2040
  call void @llvm.dbg.value(metadata i32* undef, metadata !723, metadata !DIExpression()) #8, !dbg !2040
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()) #8, !dbg !2042
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !2042
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !2042
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()) #8, !dbg !2042
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !2044
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !2042
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2045
  br i1 %5, label %19, label %6, !dbg !2046

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1867, metadata !DIExpression()) #8, !dbg !2047
  call void @llvm.dbg.value(metadata i32 1, metadata !1870, metadata !DIExpression()) #8, !dbg !2047
  call void @llvm.dbg.value(metadata i32 0, metadata !1871, metadata !DIExpression()) #8, !dbg !2047
  call void @llvm.dbg.value(metadata i32* %3, metadata !1876, metadata !DIExpression()) #8, !dbg !2049
  call void @llvm.dbg.value(metadata i32* undef, metadata !1879, metadata !DIExpression()) #8, !dbg !2049
  call void @llvm.dbg.value(metadata i32* undef, metadata !1880, metadata !DIExpression()) #8, !dbg !2049
  call void @llvm.dbg.value(metadata i32* %3, metadata !640, metadata !DIExpression()) #8, !dbg !2051
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !2051
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !2051
  call void @llvm.dbg.value(metadata i32 1, metadata !647, metadata !DIExpression()) #8, !dbg !2051
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !2053
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !2051
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !2054
  br i1 %8, label %19, label %9, !dbg !2055

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #8, !dbg !2056
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1872, metadata !DIExpression()) #8, !dbg !2057
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1891, metadata !DIExpression()) #8, !dbg !2058
  call void @llvm.dbg.value(metadata i32* %3, metadata !1894, metadata !DIExpression()) #8, !dbg !2058
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1897, metadata !DIExpression()) #8, !dbg !2060
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2062
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2063
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2063, !tbaa !1299
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2064
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2065
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2065, !tbaa !1659
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !2066
  store i32* %3, i32** %15, align 4, !dbg !2066, !tbaa !1695
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2067, !tbaa !1250
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2068, !tbaa !1377
  %16 = ptrtoint %struct.halide_mutex* %0 to i32, !dbg !2069
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !2070
  %18 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #7, !dbg !2071
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #8, !dbg !2072
  br label %19, !dbg !2072

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !2073
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2074 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2080, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2082, metadata !DIExpression()) #8, !dbg !2087
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2089
  %4 = load i32, i32* %3, align 4, !dbg !2090, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %4, metadata !2085, metadata !DIExpression()) #8, !dbg !2087
  %5 = icmp eq i32 %4, 0, !dbg !2091
  br i1 %5, label %18, label %6, !dbg !2093

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2082, metadata !DIExpression()) #8, !dbg !2087
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2080, metadata !DIExpression()), !dbg !2081
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !2094
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2094
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2086, metadata !DIExpression()) #8, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %4, metadata !2085, metadata !DIExpression()) #8, !dbg !2087
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2096
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2097, metadata !DIExpression()) #8, !dbg !2102
  call void @llvm.dbg.value(metadata i32* %3, metadata !2100, metadata !DIExpression()) #8, !dbg !2102
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !2101, metadata !DIExpression()) #8, !dbg !2102
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1897, metadata !DIExpression()) #8, !dbg !2104
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2106
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2107
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !2107, !tbaa !1299
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2108
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !2108, !tbaa !1377
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2109
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1, !dbg !2110
  store i32* %3, i32** %13, align 4, !dbg !2110, !tbaa !1747
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2, !dbg !2111
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !dbg !2111, !tbaa !1752
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !2112, !tbaa !1250
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !2114, !tbaa !1659
  %15 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2115
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, !dbg !2116
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %15, i32 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16, i32 0) #7, !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2118
  br label %18, !dbg !2118

18:                                               ; preds = %1, %6
  ret void, !dbg !2119
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2120 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2125, metadata !DIExpression()) #8, !dbg !2130
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2132
  %4 = load i32, i32* %3, align 4, !dbg !2133, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %4, metadata !2128, metadata !DIExpression()) #8, !dbg !2130
  %5 = icmp eq i32 %4, 0, !dbg !2134
  br i1 %5, label %18, label %6, !dbg !2136

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2125, metadata !DIExpression()) #8, !dbg !2130
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2123, metadata !DIExpression()), !dbg !2124
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2137
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2129, metadata !DIExpression()) #8, !dbg !2138
  call void @llvm.dbg.value(metadata i32 %4, metadata !2128, metadata !DIExpression()) #8, !dbg !2130
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2139
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2140, metadata !DIExpression()) #8, !dbg !2145
  call void @llvm.dbg.value(metadata i32* %3, metadata !2143, metadata !DIExpression()) #8, !dbg !2145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !2144, metadata !DIExpression()) #8, !dbg !2145
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1897, metadata !DIExpression()) #8, !dbg !2147
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2149
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !2149, !tbaa !1250
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2150
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !2150, !tbaa !1299
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2151
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2152
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !2152, !tbaa !1659
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1, !dbg !2153
  store i32* %3, i32** %13, align 4, !dbg !2153, !tbaa !1732
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2, !dbg !2154
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !dbg !2154, !tbaa !2155
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !2156, !tbaa !1377
  %15 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2158
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, !dbg !2159
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16) #7, !dbg !2160
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2161
  br label %18, !dbg !2161

18:                                               ; preds = %1, %6
  ret void, !dbg !2162
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #5 !dbg !2163 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2167, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2172, metadata !DIExpression()) #8, !dbg !2181
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2175, metadata !DIExpression()) #8, !dbg !2181
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2183
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2176, metadata !DIExpression()) #8, !dbg !2184
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2185
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2186, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata i32* %6, metadata !2189, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2190, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1897, metadata !DIExpression()) #8, !dbg !2193
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0, !dbg !2195
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1, !dbg !2196
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2, !dbg !2197
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3, !dbg !2198
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !dbg !2198, !tbaa !1659
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1, !dbg !2199
  store i32* %6, i32** %11, align 4, !dbg !2199, !tbaa !1830
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2, !dbg !2200
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2200
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !dbg !2200, !tbaa !1836
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !dbg !2201, !tbaa !1250
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 4, !dbg !2203, !tbaa !1299
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %9, align 4, !dbg !2204, !tbaa !1377
  %14 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2205
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, !dbg !2206
  %16 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %16, metadata !2177, metadata !DIExpression()) #8, !dbg !2181
  %17 = ptrtoint %struct.halide_mutex* %1 to i32, !dbg !2208
  %18 = icmp eq i32 %16, %17, !dbg !2209
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2210
  br i1 %18, label %69, label %20, !dbg !2211

20:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1941, metadata !DIExpression()) #8, !dbg !2212
  call void @llvm.dbg.value(metadata i32 0, metadata !1944, metadata !DIExpression()) #8, !dbg !2212
  call void @llvm.dbg.value(metadata i32 1, metadata !1945, metadata !DIExpression()) #8, !dbg !2212
  call void @llvm.dbg.value(metadata i32* %19, metadata !629, metadata !DIExpression()) #8, !dbg !2215
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !2215
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !2215
  call void @llvm.dbg.value(metadata i32* %19, metadata !640, metadata !DIExpression()) #8, !dbg !2217
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !2217
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !2217
  call void @llvm.dbg.value(metadata i32 0, metadata !647, metadata !DIExpression()) #8, !dbg !2217
  %21 = cmpxchg i32* %19, i32 0, i32 1 seq_cst seq_cst, !dbg !2219
  call void @llvm.dbg.value(metadata i32 undef, metadata !648, metadata !DIExpression()) #8, !dbg !2217
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2220
  br i1 %22, label %74, label %23, !dbg !2221

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1957, metadata !DIExpression()) #8, !dbg !2222
  call void @llvm.dbg.value(metadata i32 40, metadata !1960, metadata !DIExpression()) #8, !dbg !2222
  %24 = load i32, i32* %19, align 4, !dbg !2224, !tbaa !582
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32, !dbg !2225

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35, !dbg !2226

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %34, metadata !1960, metadata !DIExpression()) #8, !dbg !2222
  call void @llvm.dbg.value(metadata i32 %36, metadata !1961, metadata !DIExpression()) #8, !dbg !2222
  %37 = and i32 %36, 1, !dbg !2227
  %38 = icmp eq i32 %37, 0, !dbg !2228
  br i1 %38, label %39, label %44, !dbg !2226

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1961, metadata !DIExpression()) #8, !dbg !2222
  %40 = or i32 %36, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %40, metadata !1962, metadata !DIExpression()) #8, !dbg !2230
  call void @llvm.dbg.value(metadata i32* %19, metadata !629, metadata !DIExpression()) #8, !dbg !2231
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()) #8, !dbg !2231
  call void @llvm.dbg.value(metadata i32* undef, metadata !636, metadata !DIExpression()) #8, !dbg !2231
  call void @llvm.dbg.value(metadata i32* %19, metadata !640, metadata !DIExpression()) #8, !dbg !2233
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !2233
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %36, metadata !647, metadata !DIExpression()) #8, !dbg !2233
  %41 = cmpxchg i32* %19, i32 %36, i32 %40 seq_cst seq_cst, !dbg !2235
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %42, metadata !648, metadata !DIExpression()) #8, !dbg !2233
  %43 = icmp eq i32 %36, %42, !dbg !2236
  br i1 %43, label %74, label %35

44:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !658, metadata !DIExpression()) #8, !dbg !2237
  %45 = icmp sgt i32 %34, 0, !dbg !2239
  br i1 %45, label %46, label %51, !dbg !2240

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %34, metadata !1960, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !2222
  %47 = icmp eq i32 %34, 1, !dbg !2241
  br i1 %47, label %51, label %48, !dbg !2242

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %49, metadata !1960, metadata !DIExpression()) #8, !dbg !2222
  call void @halide_thread_yield() #7, !dbg !2244
  %50 = load i32, i32* %19, align 4, !dbg !2245, !tbaa !582
  br label %65, !dbg !2246

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !1961, metadata !DIExpression()) #8, !dbg !2222
  %53 = and i32 %36, 2, !dbg !2247
  %54 = icmp eq i32 %53, 0, !dbg !2248
  br i1 %54, label %55, label %60, !dbg !2249

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %36, metadata !1961, metadata !DIExpression()) #8, !dbg !2222
  %56 = or i32 %36, 2, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %56, metadata !1966, metadata !DIExpression()) #8, !dbg !2251
  call void @llvm.dbg.value(metadata i32* %19, metadata !1776, metadata !DIExpression()) #8, !dbg !2252
  call void @llvm.dbg.value(metadata i32* undef, metadata !1779, metadata !DIExpression()) #8, !dbg !2252
  call void @llvm.dbg.value(metadata i32* undef, metadata !1780, metadata !DIExpression()) #8, !dbg !2252
  call void @llvm.dbg.value(metadata i32* %19, metadata !640, metadata !DIExpression()) #8, !dbg !2254
  call void @llvm.dbg.value(metadata i32* undef, metadata !645, metadata !DIExpression()) #8, !dbg !2254
  call void @llvm.dbg.value(metadata i32* undef, metadata !646, metadata !DIExpression()) #8, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %36, metadata !647, metadata !DIExpression()) #8, !dbg !2254
  %57 = cmpxchg i32* %19, i32 %36, i32 %56 seq_cst seq_cst, !dbg !2256
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %58, metadata !648, metadata !DIExpression()) #8, !dbg !2254
  %59 = icmp eq i32 %36, %58, !dbg !2257
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #8, !dbg !2258
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1969, metadata !DIExpression()) #8, !dbg !2259
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1891, metadata !DIExpression()) #8, !dbg !2260
  call void @llvm.dbg.value(metadata i32* %19, metadata !1894, metadata !DIExpression()) #8, !dbg !2260
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1897, metadata !DIExpression()) #8, !dbg !2262
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 4, !dbg !2264, !tbaa !1299
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !dbg !2265, !tbaa !1659
  store i32* %19, i32** %30, align 4, !dbg !2266, !tbaa !1695
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !dbg !2267, !tbaa !1250
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %28, align 4, !dbg !2268, !tbaa !1377
  %61 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #7, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %61, metadata !1970, metadata !DIExpression()) #8, !dbg !2270
  %62 = icmp eq i32 %61, %17, !dbg !2271
  br i1 %62, label %68, label %63, !dbg !2272

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 40, metadata !1960, metadata !DIExpression()) #8, !dbg !2222
  %64 = load i32, i32* %19, align 4, !dbg !2273, !tbaa !582
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #8, !dbg !2274
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32, !dbg !2226, !llvm.loop !2275

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #8, !dbg !2274
  br label %74

69:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2190, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2175, metadata !DIExpression()) #8, !dbg !2181
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2170, metadata !DIExpression()), !dbg !2171
  %70 = load i32, i32* %19, align 4, !dbg !2276, !tbaa !582
  call void @llvm.dbg.value(metadata i32 %70, metadata !2178, metadata !DIExpression()) #8, !dbg !2277
  %71 = and i32 %70, 1, !dbg !2278
  %72 = icmp eq i32 %71, 0, !dbg !2278
  br i1 %72, label %73, label %74, !dbg !2281

73:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !2282
  call void @abort() #7, !dbg !2282
  br label %74, !dbg !2282

74:                                               ; preds = %39, %20, %68, %69, %73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2284
  ret void, !dbg !2285
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #2 !dbg !2286 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2290, metadata !DIExpression()), !dbg !2292
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #7, !dbg !2293
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2294
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2291, metadata !DIExpression()), !dbg !2292
  %4 = icmp eq i8* %2, null, !dbg !2295
  br i1 %4, label %13, label %5, !dbg !2297

5:                                                ; preds = %1
  %6 = shl i32 %0, 2, !dbg !2298
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #7, !dbg !2299
  %8 = bitcast i8* %2 to i8**, !dbg !2300
  store i8* %7, i8** %8, align 4, !dbg !2300, !tbaa !2301
  %9 = icmp eq i8* %7, null, !dbg !2303
  br i1 %9, label %10, label %11, !dbg !2305

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #7, !dbg !2306
  br label %13, !dbg !2308

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #7, !dbg !2309
  br label %13, !dbg !2310

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ], !dbg !2292
  ret %struct.halide_mutex_array* %14, !dbg !2311
}

declare !dbg !2312 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #4

declare !dbg !2315 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !2318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2320, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()), !dbg !2323
  %3 = bitcast i8* %1 to i8**, !dbg !2324
  %4 = load i8*, i8** %3, align 4, !dbg !2324, !tbaa !2301
  tail call void @halide_free(i8* %0, i8* %4) #7, !dbg !2325
  tail call void @halide_free(i8* %0, i8* %1) #7, !dbg !2326
  ret void, !dbg !2327
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2328 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %1, metadata !2333, metadata !DIExpression()), !dbg !2334
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2335
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2335, !tbaa !2301
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2336
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #6, !dbg !2337
  ret i32 0, !dbg !2338
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2339 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2341, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32 %1, metadata !2342, metadata !DIExpression()), !dbg !2343
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2344
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2344, !tbaa !2301
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2345
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #6, !dbg !2346
  ret i32 0, !dbg !2347
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #0 !dbg !2348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()), !dbg !2353
  %2 = icmp sgt i32 %0, 256, !dbg !2354
  br i1 %2, label %6, label %3, !dbg !2356

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2357
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2357
  ret i32 %5, !dbg !2357

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2352, metadata !DIExpression()), !dbg !2353
  ret i32 256, !dbg !2358
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #2 !dbg !2359 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2361, metadata !DIExpression()), !dbg !2363
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %1, metadata !2362, metadata !DIExpression()), !dbg !2363
  %2 = icmp eq i8* %1, null, !dbg !2365
  br i1 %2, label %3, label %6, !dbg !2367

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %4, metadata !2362, metadata !DIExpression()), !dbg !2363
  %5 = icmp eq i8* %4, null, !dbg !2370
  br i1 %5, label %9, label %6, !dbg !2372

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #7, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %8, metadata !2361, metadata !DIExpression()), !dbg !2363
  br label %11, !dbg !2375

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %10, metadata !2361, metadata !DIExpression()), !dbg !2363
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2378
  call void @llvm.dbg.value(metadata i32 %12, metadata !2361, metadata !DIExpression()), !dbg !2363
  ret i32 %12, !dbg !2379
}

declare !dbg !2380 dso_local i8* @getenv(i8*) local_unnamed_addr #4

declare !dbg !2383 dso_local i32 @atoi(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #2 !dbg !2386 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2390, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 40, metadata !2392, metadata !DIExpression()), !dbg !2416
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8, !dbg !2417
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10, !dbg !2423

10:                                               ; preds = %390, %1
  %11 = phi i32 [ 0, %1 ], [ %391, %390 ], !dbg !2424
  call void @llvm.dbg.value(metadata i32 %11, metadata !2391, metadata !DIExpression()), !dbg !2416
  br i1 %3, label %15, label %12, !dbg !2425

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2420, metadata !DIExpression()), !dbg !2426
  %13 = load i32, i32* %4, align 4, !dbg !2427, !tbaa !2428
  %14 = icmp eq i32 %13, 0, !dbg !2431
  br i1 %14, label %18, label %21, !dbg !2432

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !2433, !tbaa !2434, !range !740
  %17 = icmp eq i8 %16, 0, !dbg !2433
  br i1 %17, label %48, label %405, !dbg !2423

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !2417, !tbaa !2438
  %20 = icmp eq i32 %19, 0, !dbg !2417
  br i1 %20, label %405, label %21, !dbg !2423

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2439, !tbaa !2440
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2396, metadata !DIExpression()), !dbg !2441
  %23 = load i32, i32* %5, align 4, !dbg !2442, !tbaa !2446
  %24 = icmp eq i32 %23, 0, !dbg !2447
  br i1 %24, label %38, label %25, !dbg !2448

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !2449, !tbaa !2438
  %27 = icmp eq i32 %26, 0, !dbg !2452
  br i1 %27, label %28, label %46, !dbg !2453

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2396, metadata !DIExpression()), !dbg !2441
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2454
  br i1 %29, label %35, label %30, !dbg !2456

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2394, metadata !DIExpression()), !dbg !2441
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2457
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2396, metadata !DIExpression()), !dbg !2441
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !dbg !2459, !tbaa !2460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2394, metadata !DIExpression()), !dbg !2441
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2454
  br i1 %34, label %35, label %30, !dbg !2456, !llvm.loop !2461

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %28 ], [ %32, %30 ], !dbg !2441
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !dbg !2463, !tbaa !2460
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 4, !dbg !2464, !tbaa !1077
  store i32 0, i32* %4, align 4, !dbg !2465, !tbaa !2428
  br label %390, !dbg !2466

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !dbg !2467, !tbaa !2469
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2470
  br i1 %40, label %46, label %41, !dbg !2471

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i32 0, i32 9, !dbg !2472
  %43 = load i32, i32* %42, align 4, !dbg !2472, !tbaa !2446
  %44 = icmp eq i32 %43, 0, !dbg !2473
  br i1 %44, label %46, label %45, !dbg !2474

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2475, !tbaa !2446
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !2477
  br label %390, !dbg !2478

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2396, metadata !DIExpression()), !dbg !2441
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2479
  br i1 %47, label %188, label %51, !dbg !2480

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2439, !tbaa !2440
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2396, metadata !DIExpression()), !dbg !2441
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2479
  br i1 %50, label %198, label %52, !dbg !2480

51:                                               ; preds = %46
  br i1 %3, label %52, label %117, !dbg !2480

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2481

54:                                               ; preds = %52, %113
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %115, %113 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %114, %113 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2396, metadata !DIExpression()), !dbg !2441
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 5, !dbg !2482
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 4, !dbg !2482, !tbaa !2469
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2400, metadata !DIExpression()), !dbg !2483
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2484
  br i1 %59, label %71, label %60, !dbg !2481

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 8, !dbg !2486
  %62 = load i32, i32* %61, align 4, !dbg !2486, !tbaa !2438
  %63 = icmp eq i32 %62, 0, !dbg !2489
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 0, i32 7, !dbg !2490
  %65 = load i32, i32* %64, align 4, !dbg !2490, !tbaa !2491
  br i1 %63, label %69, label %66, !dbg !2492

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2493
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2495
  call void @llvm.dbg.value(metadata i32 undef, metadata !2401, metadata !DIExpression()), !dbg !2483
  br label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2496
  call void @llvm.dbg.value(metadata i32 undef, metadata !2401, metadata !DIExpression()), !dbg !2483
  br label %74, !dbg !2498

71:                                               ; preds = %54
  %72 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2499, !tbaa !2501
  %73 = add nsw i32 %72, 1, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %78, metadata !2401, metadata !DIExpression()), !dbg !2483
  br label %74, !dbg !2503

74:                                               ; preds = %71, %69, %66
  %75 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %71 ], [ %70, %69 ], [ %68, %66 ]
  %76 = phi i32 [ %73, %71 ], [ %65, %69 ], [ %67, %66 ]
  %77 = load i32, i32* %75, align 4, !dbg !2504, !tbaa !582
  %78 = sub i32 %76, %77, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %78, metadata !2401, metadata !DIExpression()), !dbg !2483
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 7, !dbg !2505
  %80 = load i32, i32* %79, align 4, !dbg !2505, !tbaa !2491
  %81 = icmp sge i32 %78, %80, !dbg !2506
  call void @llvm.dbg.value(metadata i1 %81, metadata !2398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2483
  call void @llvm.dbg.value(metadata i1 true, metadata !2402, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2483
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 8, !dbg !2507
  %83 = load i8, i8* %82, align 4, !dbg !2507, !tbaa !2508, !range !740
  %84 = icmp eq i8 %83, 0, !dbg !2507
  br i1 %84, label %89, label %85, !dbg !2509

85:                                               ; preds = %74
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 8, !dbg !2510
  %87 = load i32, i32* %86, align 4, !dbg !2510, !tbaa !2438
  %88 = icmp eq i32 %87, 0, !dbg !2511
  br label %89, !dbg !2509

89:                                               ; preds = %85, %74
  %90 = phi i1 [ true, %74 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata i1 %90, metadata !2403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2483
  %91 = and i1 %90, %81, !dbg !2512
  br i1 %91, label %92, label %113, !dbg !2512

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2514, metadata !DIExpression()) #8, !dbg !2517
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 10, !dbg !2521
  %94 = load i32, i32* %93, align 4, !dbg !2521, !tbaa !2524
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 4, !dbg !2525
  %96 = load i32, i32* %95, align 4, !dbg !2525, !tbaa !2526
  %97 = icmp slt i32 %94, %96, !dbg !2527
  br i1 %97, label %98, label %217, !dbg !2528

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 3
  br label %100, !dbg !2528

100:                                              ; preds = %108, %98
  %101 = phi i32 [ %94, %98 ], [ %110, %108 ]
  %102 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %99, align 4, !dbg !2529, !tbaa !2532
  %103 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 0, !dbg !2533
  %104 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %103, align 4, !dbg !2533, !tbaa !2534
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 1, !dbg !2536
  %106 = load i32, i32* %105, align 4, !dbg !2536, !tbaa !2537
  %107 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %104, i32 %106) #7, !dbg !2538
  br i1 %107, label %108, label %113, !dbg !2539

108:                                              ; preds = %100
  %109 = load i32, i32* %93, align 4, !dbg !2540, !tbaa !2524
  %110 = add nsw i32 %109, 1, !dbg !2540
  store i32 %110, i32* %93, align 4, !dbg !2540, !tbaa !2524
  %111 = load i32, i32* %95, align 4, !dbg !2525, !tbaa !2526
  %112 = icmp slt i32 %110, %111, !dbg !2527
  br i1 %112, label %100, label %217, !dbg !2528, !llvm.loop !2541

113:                                              ; preds = %100, %89
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 2, !dbg !2543
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %114, metadata !2396, metadata !DIExpression()), !dbg !2441
  %115 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %114, align 4, !dbg !2544, !tbaa !2460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %115, metadata !2394, metadata !DIExpression()), !dbg !2441
  %116 = icmp eq %"struct.Halide::Runtime::Internal::work"* %115, null, !dbg !2479
  br i1 %116, label %188, label %54, !dbg !2480

117:                                              ; preds = %51, %184
  %118 = phi %"struct.Halide::Runtime::Internal::work"* [ %186, %184 ], [ %22, %51 ]
  %119 = phi %"struct.Halide::Runtime::Internal::work"** [ %185, %184 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %119, metadata !2396, metadata !DIExpression()), !dbg !2441
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 5, !dbg !2482
  %121 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %120, align 4, !dbg !2482, !tbaa !2469
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %121, metadata !2400, metadata !DIExpression()), !dbg !2483
  %122 = icmp eq %"struct.Halide::Runtime::Internal::work"* %121, null, !dbg !2484
  br i1 %122, label %123, label %126, !dbg !2481

123:                                              ; preds = %117
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2499, !tbaa !2501
  %125 = add nsw i32 %124, 1, !dbg !2502
  call void @llvm.dbg.value(metadata i32 undef, metadata !2401, metadata !DIExpression()), !dbg !2483
  br label %137, !dbg !2503

126:                                              ; preds = %117
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 8, !dbg !2486
  %128 = load i32, i32* %127, align 4, !dbg !2486, !tbaa !2438
  %129 = icmp eq i32 %128, 0, !dbg !2489
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 0, i32 7, !dbg !2490
  %131 = load i32, i32* %130, align 4, !dbg !2490, !tbaa !2491
  br i1 %129, label %132, label %134, !dbg !2492

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %141, metadata !2401, metadata !DIExpression()), !dbg !2483
  br label %137, !dbg !2498

134:                                              ; preds = %126
  %135 = mul nsw i32 %131, %128, !dbg !2493
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2495
  call void @llvm.dbg.value(metadata i32 undef, metadata !2401, metadata !DIExpression()), !dbg !2483
  br label %137

137:                                              ; preds = %132, %134, %123
  %138 = phi i32* [ %133, %132 ], [ %136, %134 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %123 ]
  %139 = phi i32 [ %131, %132 ], [ %135, %134 ], [ %125, %123 ]
  %140 = load i32, i32* %138, align 4, !dbg !2504, !tbaa !582
  %141 = sub i32 %139, %140, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %141, metadata !2401, metadata !DIExpression()), !dbg !2483
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 7, !dbg !2505
  %143 = load i32, i32* %142, align 4, !dbg !2505, !tbaa !2491
  %144 = icmp slt i32 %141, %143, !dbg !2506
  call void @llvm.dbg.value(metadata i1 %144, metadata !2398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2483
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 3, !dbg !2545
  %146 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %145, align 4, !dbg !2545, !tbaa !2546
  %147 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !dbg !2547, !tbaa !2546
  %148 = icmp ne %"struct.Halide::Runtime::Internal::work"* %146, %147, !dbg !2548
  %149 = icmp ne i32 %143, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2402, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2483
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 8, !dbg !2507
  %151 = load i8, i8* %150, align 4, !dbg !2507, !tbaa !2508, !range !740
  %152 = icmp eq i8 %151, 0, !dbg !2507
  br i1 %152, label %157, label %153, !dbg !2509

153:                                              ; preds = %137
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 8, !dbg !2510
  %155 = load i32, i32* %154, align 4, !dbg !2510, !tbaa !2438
  %156 = icmp eq i32 %155, 0, !dbg !2511
  br label %157, !dbg !2509

157:                                              ; preds = %153, %137
  %158 = phi i1 [ true, %137 ], [ %156, %153 ]
  call void @llvm.dbg.value(metadata i1 %158, metadata !2403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2483
  %159 = and i1 %149, %148, !dbg !2512
  %160 = or i1 %144, %159, !dbg !2512
  %161 = xor i1 %158, true, !dbg !2512
  %162 = or i1 %160, %161, !dbg !2512
  br i1 %162, label %184, label %163, !dbg !2512

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2514, metadata !DIExpression()) #8, !dbg !2517
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 10, !dbg !2521
  %165 = load i32, i32* %164, align 4, !dbg !2521, !tbaa !2524
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 4, !dbg !2525
  %167 = load i32, i32* %166, align 4, !dbg !2525, !tbaa !2526
  %168 = icmp slt i32 %165, %167, !dbg !2527
  br i1 %168, label %169, label %217, !dbg !2528

169:                                              ; preds = %163
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 3
  br label %171, !dbg !2528

171:                                              ; preds = %179, %169
  %172 = phi i32 [ %165, %169 ], [ %181, %179 ]
  %173 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %170, align 4, !dbg !2529, !tbaa !2532
  %174 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 0, !dbg !2533
  %175 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %174, align 4, !dbg !2533, !tbaa !2534
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 1, !dbg !2536
  %177 = load i32, i32* %176, align 4, !dbg !2536, !tbaa !2537
  %178 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %175, i32 %177) #7, !dbg !2538
  br i1 %178, label %179, label %184, !dbg !2539

179:                                              ; preds = %171
  %180 = load i32, i32* %164, align 4, !dbg !2540, !tbaa !2524
  %181 = add nsw i32 %180, 1, !dbg !2540
  store i32 %181, i32* %164, align 4, !dbg !2540, !tbaa !2524
  %182 = load i32, i32* %166, align 4, !dbg !2525, !tbaa !2526
  %183 = icmp slt i32 %181, %182, !dbg !2527
  br i1 %183, label %171, label %217, !dbg !2528, !llvm.loop !2541

184:                                              ; preds = %171, %157
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 2, !dbg !2543
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %185, metadata !2396, metadata !DIExpression()), !dbg !2441
  %186 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %185, align 4, !dbg !2544, !tbaa !2460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %186, metadata !2394, metadata !DIExpression()), !dbg !2441
  %187 = icmp eq %"struct.Halide::Runtime::Internal::work"* %186, null, !dbg !2479
  br i1 %187, label %188, label %117, !dbg !2480

188:                                              ; preds = %184, %113, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2396, metadata !DIExpression()), !dbg !2441
  br i1 %3, label %198, label %189, !dbg !2549

189:                                              ; preds = %188
  %190 = add nsw i32 %11, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %190, metadata !2391, metadata !DIExpression()), !dbg !2416
  %191 = icmp slt i32 %11, 40, !dbg !2556
  br i1 %191, label %192, label %193, !dbg !2557

192:                                              ; preds = %189
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2558
  tail call void @halide_thread_yield() #7, !dbg !2560
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2561
  br label %390, !dbg !2562

193:                                              ; preds = %189
  %194 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2563, !tbaa !2565
  %195 = add nsw i32 %194, 1, !dbg !2563
  store i32 %195, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2563, !tbaa !2565
  store i8 1, i8* %8, align 4, !dbg !2566, !tbaa !2567
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2568
  store i8 0, i8* %8, align 4, !dbg !2569, !tbaa !2567
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2570, !tbaa !2565
  %197 = add nsw i32 %196, -1, !dbg !2570
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2570, !tbaa !2565
  br label %390

198:                                              ; preds = %48, %188
  %199 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2571, !tbaa !2573
  %200 = add nsw i32 %199, 1, !dbg !2571
  store i32 %200, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2571, !tbaa !2573
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2574, !tbaa !2576
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2577, !tbaa !2578
  %203 = icmp sgt i32 %201, %202, !dbg !2579
  br i1 %203, label %204, label %208, !dbg !2580

204:                                              ; preds = %198
  %205 = add nsw i32 %201, -1, !dbg !2581
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2581, !tbaa !2576
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2583
  %206 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2584, !tbaa !2576
  %207 = add nsw i32 %206, 1, !dbg !2584
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2584, !tbaa !2576
  br label %213, !dbg !2585

208:                                              ; preds = %198
  %209 = add nsw i32 %11, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i32 %209, metadata !2391, metadata !DIExpression()), !dbg !2416
  %210 = icmp slt i32 %11, 40, !dbg !2588
  br i1 %210, label %211, label %212, !dbg !2589

211:                                              ; preds = %208
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2590
  tail call void @halide_thread_yield() #7, !dbg !2592
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2593
  br label %213, !dbg !2594

212:                                              ; preds = %208
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2595
  br label %213

213:                                              ; preds = %211, %212, %204
  %214 = phi i32 [ %11, %204 ], [ %209, %211 ], [ %209, %212 ], !dbg !2416
  call void @llvm.dbg.value(metadata i32 %214, metadata !2391, metadata !DIExpression()), !dbg !2416
  %215 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2597, !tbaa !2573
  %216 = add nsw i32 %215, -1, !dbg !2597
  store i32 %216, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2597, !tbaa !2573
  br label %390

217:                                              ; preds = %163, %92, %179, %108
  %218 = phi i32* [ %93, %108 ], [ %164, %179 ], [ %93, %92 ], [ %164, %163 ]
  %219 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %108 ], [ %119, %179 ], [ %56, %92 ], [ %119, %163 ]
  %220 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %108 ], [ %118, %179 ], [ %55, %92 ], [ %118, %163 ]
  store i32 0, i32* %218, align 4, !dbg !2598, !tbaa !2524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2394, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %219, metadata !2396, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2416
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 8, !dbg !2599
  %222 = load i32, i32* %221, align 4, !dbg !2600, !tbaa !2438
  %223 = add nsw i32 %222, 1, !dbg !2600
  store i32 %223, i32* %221, align 4, !dbg !2600, !tbaa !2438
  %224 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 5, !dbg !2601
  %225 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2601, !tbaa !2469
  %226 = icmp eq %"struct.Halide::Runtime::Internal::work"* %225, null, !dbg !2603
  %227 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2604
  %228 = load i32, i32* %227, align 4, !dbg !2604, !tbaa !2491
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %225, i32 0, i32 6, !dbg !2605
  %230 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2605
  %231 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2605
  %232 = load i32, i32* %230, align 4, !dbg !2604, !tbaa !582
  %233 = add nsw i32 %232, %228, !dbg !2604
  store i32 %233, i32* %231, align 4, !dbg !2604, !tbaa !582
  call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression()), !dbg !2441
  %234 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 8, !dbg !2606
  %235 = load i8, i8* %234, align 4, !dbg !2606, !tbaa !2508, !range !740
  %236 = icmp eq i8 %235, 0, !dbg !2606
  br i1 %236, label %311, label %237, !dbg !2607

237:                                              ; preds = %217
  %238 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2608
  %239 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2608, !tbaa !2460
  store %"struct.Halide::Runtime::Internal::work"* %239, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2609, !tbaa !1077
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2405, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 1, metadata !2408, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression()), !dbg !2441
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 10
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 4
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 3
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0
  %246 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1
  %248 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*
  br label %249, !dbg !2612

249:                                              ; preds = %237, %288
  %250 = phi i32 [ 1, %237 ], [ 0, %288 ]
  %251 = phi i32 [ 0, %237 ], [ %296, %288 ]
  call void @llvm.dbg.value(metadata i32 %251, metadata !2405, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %250, metadata !2408, metadata !DIExpression()), !dbg !2611
  %252 = load i32, i32* %240, align 4, !dbg !2613, !tbaa !2428
  %253 = sub nsw i32 %252, %251, !dbg !2615
  %254 = icmp sgt i32 %253, %250, !dbg !2616
  br i1 %254, label %255, label %285, !dbg !2617

255:                                              ; preds = %249
  %256 = load i32, i32* %241, align 4, !dbg !2618, !tbaa !2524
  %257 = load i32, i32* %242, align 4, !dbg !2620, !tbaa !2526
  br label %258, !dbg !2621

258:                                              ; preds = %255, %279
  %259 = phi i32 [ %280, %279 ], [ %252, %255 ]
  %260 = phi i32 [ %281, %279 ], [ %257, %255 ], !dbg !2620
  %261 = phi i32 [ 0, %279 ], [ %256, %255 ], !dbg !2618
  %262 = phi i32 [ %282, %279 ], [ %250, %255 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2408, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2514, metadata !DIExpression()) #8, !dbg !2622
  %263 = icmp slt i32 %261, %260, !dbg !2623
  br i1 %263, label %264, label %279, !dbg !2624

264:                                              ; preds = %258, %272
  %265 = phi i32 [ %274, %272 ], [ %261, %258 ]
  %266 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %243, align 4, !dbg !2625, !tbaa !2532
  %267 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 0, !dbg !2626
  %268 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %267, align 4, !dbg !2626, !tbaa !2534
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 1, !dbg !2627
  %270 = load i32, i32* %269, align 4, !dbg !2627, !tbaa !2537
  %271 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %268, i32 %270) #7, !dbg !2628
  br i1 %271, label %272, label %285, !dbg !2629

272:                                              ; preds = %264
  %273 = load i32, i32* %241, align 4, !dbg !2630, !tbaa !2524
  %274 = add nsw i32 %273, 1, !dbg !2630
  store i32 %274, i32* %241, align 4, !dbg !2630, !tbaa !2524
  %275 = load i32, i32* %242, align 4, !dbg !2620, !tbaa !2526
  %276 = icmp slt i32 %274, %275, !dbg !2623
  br i1 %276, label %264, label %277, !dbg !2624, !llvm.loop !2631

277:                                              ; preds = %272
  %278 = load i32, i32* %240, align 4, !dbg !2613, !tbaa !2428
  br label %279, !dbg !2633

279:                                              ; preds = %277, %258
  %280 = phi i32 [ %278, %277 ], [ %259, %258 ], !dbg !2613
  %281 = phi i32 [ %275, %277 ], [ %260, %258 ]
  store i32 0, i32* %241, align 4, !dbg !2633, !tbaa !2524
  %282 = add nuw nsw i32 %262, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %282, metadata !2408, metadata !DIExpression()), !dbg !2611
  %283 = sub nsw i32 %280, %251, !dbg !2615
  %284 = icmp sgt i32 %283, %282, !dbg !2616
  br i1 %284, label %258, label %288, !dbg !2617, !llvm.loop !2636

285:                                              ; preds = %264, %249
  %286 = phi i32 [ %250, %249 ], [ %262, %264 ]
  %287 = icmp eq i32 %286, 0, !dbg !2638
  br i1 %287, label %298, label %288, !dbg !2640

288:                                              ; preds = %279, %285
  %289 = phi i32 [ %286, %285 ], [ %282, %279 ]
  %290 = load i8*, i8** %244, align 4, !dbg !2641, !tbaa !2642
  %291 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %245, align 4, !dbg !2643, !tbaa !2644
  %292 = load i32, i32* %246, align 4, !dbg !2645, !tbaa !2646
  %293 = add nsw i32 %292, %251, !dbg !2647
  %294 = load i8*, i8** %247, align 4, !dbg !2648, !tbaa !2649
  %295 = tail call i32 @halide_do_loop_task(i8* %290, i32 (i8*, i32, i32, i8*, i8*)* %291, i32 %293, i32 %289, i8* %294, i8* nonnull %248) #6, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %295, metadata !2404, metadata !DIExpression()), !dbg !2441
  %296 = add nuw nsw i32 %289, %251, !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2408, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %296, metadata !2405, metadata !DIExpression()), !dbg !2611
  %297 = icmp eq i32 %295, 0, !dbg !2652
  br i1 %297, label %249, label %298, !dbg !2612, !llvm.loop !2653

298:                                              ; preds = %285, %288
  %299 = phi i1 [ true, %285 ], [ false, %288 ]
  %300 = phi i32 [ 0, %285 ], [ %295, %288 ], !dbg !2441
  %301 = phi i32 [ %251, %285 ], [ %296, %288 ], !dbg !2611
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2655
  %302 = load i32, i32* %246, align 4, !dbg !2656, !tbaa !2646
  %303 = add nsw i32 %302, %301, !dbg !2656
  store i32 %303, i32* %246, align 4, !dbg !2656, !tbaa !2646
  %304 = load i32, i32* %240, align 4, !dbg !2657, !tbaa !2428
  %305 = sub nsw i32 %304, %301, !dbg !2657
  store i32 %305, i32* %240, align 4, !dbg !2657, !tbaa !2428
  br i1 %299, label %307, label %306, !dbg !2658

306:                                              ; preds = %298
  store i32 0, i32* %240, align 4, !dbg !2659, !tbaa !2428
  call void @llvm.dbg.value(metadata i32 %338, metadata !2404, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2411, metadata !DIExpression()), !dbg !2441
  br label %340, !dbg !2662

307:                                              ; preds = %298
  %308 = icmp sgt i32 %305, 0, !dbg !2663
  br i1 %308, label %309, label %375, !dbg !2665

309:                                              ; preds = %307
  %310 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2666, !tbaa !2440
  store %"struct.Halide::Runtime::Internal::work"* %310, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2668, !tbaa !2460
  store %"struct.Halide::Runtime::Internal::work"* %220, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2669, !tbaa !2440
  br label %375, !dbg !2670

311:                                              ; preds = %217
  %312 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0, !dbg !2671
  %313 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %312, align 4, !dbg !2671, !tbaa.struct !2672
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %313, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2674
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1, !dbg !2671
  %315 = load i8*, i8** %314, align 4, !dbg !2671, !tbaa.struct !2675
  call void @llvm.dbg.value(metadata i8* %315, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2674
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5, !dbg !2671
  %317 = load i32, i32* %316, align 4, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %317, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2674
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 1, !dbg !2671
  %319 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %318, align 4, !dbg !2671, !tbaa.struct !2676
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %319, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2674
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7, !dbg !2671
  %321 = load i8*, i8** %320, align 4, !dbg !2671, !tbaa.struct !2677
  call void @llvm.dbg.value(metadata i8* %321, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2674
  %322 = add nsw i32 %317, 1, !dbg !2678
  store i32 %322, i32* %316, align 4, !dbg !2678, !tbaa !2646
  %323 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2679
  %324 = load i32, i32* %323, align 4, !dbg !2680, !tbaa !2428
  %325 = add nsw i32 %324, -1, !dbg !2680
  store i32 %325, i32* %323, align 4, !dbg !2680, !tbaa !2428
  %326 = icmp eq i32 %325, 0, !dbg !2681
  br i1 %326, label %327, label %330, !dbg !2683

327:                                              ; preds = %311
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2671
  %329 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %328, align 4, !dbg !2684, !tbaa !2460
  store %"struct.Halide::Runtime::Internal::work"* %329, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2686, !tbaa !1077
  br label %330, !dbg !2687

330:                                              ; preds = %327, %311
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2688
  %331 = icmp eq i32 (i8*, i32, i8*)* %319, null, !dbg !2689
  br i1 %331, label %334, label %332, !dbg !2691

332:                                              ; preds = %330
  %333 = tail call i32 @halide_do_task(i8* %321, i32 (i8*, i32, i8*)* nonnull %319, i32 %317, i8* %315) #6, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %333, metadata !2404, metadata !DIExpression()), !dbg !2441
  br label %337, !dbg !2694

334:                                              ; preds = %330
  %335 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*, !dbg !2695
  %336 = tail call i32 @halide_do_loop_task(i8* %321, i32 (i8*, i32, i32, i8*, i8*)* %313, i32 %317, i32 1, i8* %315, i8* %335) #6, !dbg !2697
  call void @llvm.dbg.value(metadata i32 %336, metadata !2404, metadata !DIExpression()), !dbg !2441
  br label %337

337:                                              ; preds = %332, %334
  %338 = phi i32 [ %333, %332 ], [ %336, %334 ], !dbg !2698
  call void @llvm.dbg.value(metadata i32 %338, metadata !2404, metadata !DIExpression()), !dbg !2441
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2699
  call void @llvm.dbg.value(metadata i8 0, metadata !2411, metadata !DIExpression()), !dbg !2441
  %339 = icmp eq i32 %338, 0, !dbg !2700
  br i1 %339, label %375, label %340, !dbg !2662

340:                                              ; preds = %306, %337
  %341 = phi i32 [ %300, %306 ], [ %338, %337 ]
  %342 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2701
  store i32 %341, i32* %342, align 4, !dbg !2702, !tbaa !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 0, metadata !2411, metadata !DIExpression()), !dbg !2441
  %343 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 4, !dbg !2704
  %344 = load i32, i32* %343, align 4, !dbg !2704, !tbaa !2706
  %345 = icmp sgt i32 %344, 0, !dbg !2707
  br i1 %345, label %346, label %349, !dbg !2708

346:                                              ; preds = %340
  %347 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 3
  %348 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %347, align 4, !tbaa !2546
  br label %353, !dbg !2708

349:                                              ; preds = %371, %340
  %350 = phi i8 [ 0, %340 ], [ %372, %371 ], !dbg !2441
  %351 = and i8 %350, 1, !dbg !2709
  %352 = icmp ne i8 %351, 0, !dbg !2709
  br label %375, !dbg !2709

353:                                              ; preds = %346, %371
  %354 = phi i32 [ 0, %346 ], [ %373, %371 ]
  %355 = phi i8 [ 0, %346 ], [ %372, %371 ]
  call void @llvm.dbg.value(metadata i32 %354, metadata !2412, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 %355, metadata !2411, metadata !DIExpression()), !dbg !2441
  %356 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 9, !dbg !2710
  %357 = load i32, i32* %356, align 4, !dbg !2710, !tbaa !2446
  %358 = icmp eq i32 %357, 0, !dbg !2713
  br i1 %358, label %359, label %371, !dbg !2714

359:                                              ; preds = %353
  store i32 %341, i32* %356, align 4, !dbg !2715, !tbaa !2446
  %360 = load i32, i32* %221, align 4, !dbg !2717, !tbaa !2438
  %361 = icmp eq i32 %360, 0, !dbg !2718
  br i1 %361, label %362, label %366, !dbg !2719

362:                                              ; preds = %359
  %363 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 11, !dbg !2720
  %364 = load i8, i8* %363, align 4, !dbg !2720, !tbaa !2567, !range !740
  %365 = icmp ne i8 %364, 0, !dbg !2720
  br label %366

366:                                              ; preds = %362, %359
  %367 = phi i1 [ false, %359 ], [ %365, %362 ], !dbg !2721
  %368 = zext i1 %367 to i8, !dbg !2722
  %369 = and i8 %355, 1, !dbg !2723
  %370 = or i8 %369, %368, !dbg !2723
  call void @llvm.dbg.value(metadata i8 %370, metadata !2411, metadata !DIExpression()), !dbg !2441
  br label %371, !dbg !2724

371:                                              ; preds = %353, %366
  %372 = phi i8 [ %370, %366 ], [ %355, %353 ], !dbg !2441
  call void @llvm.dbg.value(metadata i8 %372, metadata !2411, metadata !DIExpression()), !dbg !2441
  %373 = add nuw nsw i32 %354, 1, !dbg !2725
  call void @llvm.dbg.value(metadata i32 %373, metadata !2412, metadata !DIExpression()), !dbg !2703
  %374 = icmp slt i32 %373, %344, !dbg !2707
  br i1 %374, label %353, label %349, !dbg !2708, !llvm.loop !2726

375:                                              ; preds = %309, %307, %349, %337
  %376 = phi i1 [ %352, %349 ], [ false, %337 ], [ false, %307 ], [ false, %309 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2411, metadata !DIExpression()), !dbg !2441
  %377 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2728, !tbaa !2469
  %378 = icmp eq %"struct.Halide::Runtime::Internal::work"* %377, null, !dbg !2730
  %379 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2731
  %380 = load i32, i32* %379, align 4, !dbg !2731, !tbaa !2491
  %381 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %377, i32 0, i32 6, !dbg !2732
  %382 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2732
  %383 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2732
  %384 = load i32, i32* %382, align 4, !dbg !2731, !tbaa !582
  %385 = sub nsw i32 %384, %380, !dbg !2731
  store i32 %385, i32* %383, align 4, !dbg !2731, !tbaa !582
  %386 = load i32, i32* %221, align 4, !dbg !2733, !tbaa !2438
  %387 = add nsw i32 %386, -1, !dbg !2733
  store i32 %387, i32* %221, align 4, !dbg !2733, !tbaa !2438
  br i1 %376, label %404, label %388, !dbg !2734

388:                                              ; preds = %375
  %389 = icmp eq i32 %387, 0, !dbg !2736
  br i1 %389, label %392, label %390, !dbg !2737

390:                                              ; preds = %388, %396, %400, %404, %213, %193, %192, %45, %35
  %391 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %190, %192 ], [ %190, %193 ], [ %214, %213 ], [ 0, %404 ], [ 0, %400 ], [ 0, %396 ], [ 0, %388 ]
  br label %10, !dbg !2416, !llvm.loop !2738

392:                                              ; preds = %388
  %393 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2740
  %394 = load i32, i32* %393, align 4, !dbg !2740, !tbaa !2428
  %395 = icmp eq i32 %394, 0, !dbg !2741
  br i1 %395, label %400, label %396, !dbg !2742

396:                                              ; preds = %392
  %397 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2743
  %398 = load i32, i32* %397, align 4, !dbg !2743, !tbaa !2446
  %399 = icmp eq i32 %398, 0, !dbg !2744
  br i1 %399, label %390, label %400, !dbg !2745

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 11, !dbg !2746
  %402 = load i8, i8* %401, align 4, !dbg !2746, !tbaa !2567, !range !740
  %403 = icmp eq i8 %402, 0, !dbg !2746
  br i1 %403, label %390, label %404, !dbg !2747

404:                                              ; preds = %400, %375
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !2748
  br label %390, !dbg !2750

405:                                              ; preds = %15, %18
  ret void, !dbg !2751
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #2 !dbg !2752 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %2, metadata !2756, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %3, metadata !2757, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %4, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %5, metadata !2759, metadata !DIExpression()), !dbg !2760
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !2761, !tbaa !1077
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !2761
  ret i32 %8, !dbg !2762
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #2 !dbg !2763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %2, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %3, metadata !2768, metadata !DIExpression()), !dbg !2769
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !2770, !tbaa !1077
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #7, !dbg !2771
  ret i32 %6, !dbg !2772
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #2 !dbg !2773 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2775, metadata !DIExpression()), !dbg !2776
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2777
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2778
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #6, !dbg !2779
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2780
  ret void, !dbg !2781
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #2 !dbg !2782 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2787, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2788, metadata !DIExpression()), !dbg !2799
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2800, !tbaa !2802, !range !740
  %5 = icmp eq i8 %4, 0, !dbg !2800
  br i1 %5, label %6, label %25, !dbg !2803

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2804, metadata !DIExpression()) #8, !dbg !2810
  %8 = load i8, i8* %7, align 1, !dbg !2813, !tbaa !493
  %9 = icmp eq i8 %8, 0, !dbg !2814
  br i1 %9, label %10, label %13, !dbg !2815

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %11, metadata !2804, metadata !DIExpression()) #8, !dbg !2810
  %12 = icmp ult i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2818
  br i1 %12, label %6, label %13, !dbg !2819, !llvm.loop !2820

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ %11, %10 ], !dbg !2810
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2822
  br i1 %15, label %17, label %16, !dbg !2825

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !2826
  tail call void @abort() #7, !dbg !2826
  br label %17, !dbg !2826

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2828, !tbaa !2830
  %19 = icmp eq i32 %18, 0, !dbg !2831
  br i1 %19, label %20, label %22, !dbg !2832

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !2833
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2835, !tbaa !2830
  br label %22, !dbg !2836

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2837
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #6, !dbg !2838
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2839, !tbaa !2830
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2840, !tbaa !2802
  br label %25, !dbg !2841

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 -1, metadata !2790, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2791, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2792, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8 undef, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 undef, metadata !2792, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 undef, metadata !2791, metadata !DIExpression()), !dbg !2799
  %26 = icmp sgt i32 %0, 0, !dbg !2843
  br i1 %26, label %34, label %27, !dbg !2845

27:                                               ; preds = %61, %25
  %28 = phi i32 [ -1, %25 ], [ %62, %61 ], !dbg !2799
  %29 = phi i1 [ false, %25 ], [ %45, %61 ]
  %30 = phi i1 [ false, %25 ], [ %51, %61 ]
  %31 = phi i1 [ false, %25 ], [ %47, %61 ]
  %32 = phi i32 [ 0, %25 ], [ %44, %61 ], !dbg !2846
  %33 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2847
  br i1 %33, label %65, label %93, !dbg !2849

34:                                               ; preds = %25, %61
  %35 = phi i32 [ %44, %61 ], [ 0, %25 ]
  %36 = phi i32 [ %63, %61 ], [ 0, %25 ]
  %37 = phi i1 [ %47, %61 ], [ false, %25 ]
  %38 = phi i1 [ %51, %61 ], [ false, %25 ]
  %39 = phi i1 [ %45, %61 ], [ false, %25 ]
  %40 = phi i32 [ %62, %61 ], [ -1, %25 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !2789, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %36, metadata !2794, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 %40, metadata !2790, metadata !DIExpression()), !dbg !2799
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 7, !dbg !2850
  %42 = load i32, i32* %41, align 4, !dbg !2850, !tbaa !2491
  %43 = icmp eq i32 %42, 0, !dbg !2853
  %44 = add i32 %42, %35, !dbg !2854
  %45 = or i1 %39, %43, !dbg !2854
  %46 = xor i1 %43, true, !dbg !2854
  %47 = or i1 %37, %46, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %44, metadata !2789, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 undef, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 undef, metadata !2791, metadata !DIExpression()), !dbg !2799
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 4, !dbg !2855
  %49 = load i32, i32* %48, align 4, !dbg !2855, !tbaa !2526
  %50 = icmp ne i32 %49, 0, !dbg !2857
  %51 = or i1 %38, %50, !dbg !2858
  call void @llvm.dbg.value(metadata i8 undef, metadata !2792, metadata !DIExpression()), !dbg !2799
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 8, !dbg !2859
  %53 = load i8, i8* %52, align 4, !dbg !2859, !tbaa !2508, !range !740
  %54 = icmp eq i8 %53, 0, !dbg !2859
  br i1 %54, label %57, label %55, !dbg !2861

55:                                               ; preds = %34
  %56 = add nsw i32 %40, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %56, metadata !2790, metadata !DIExpression()), !dbg !2799
  br label %61, !dbg !2864

57:                                               ; preds = %34
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 6, !dbg !2865
  %59 = load i32, i32* %58, align 4, !dbg !2865, !tbaa !2428
  %60 = add nsw i32 %59, %40, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %60, metadata !2790, metadata !DIExpression()), !dbg !2799
  br label %61

61:                                               ; preds = %55, %57
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ], !dbg !2868
  call void @llvm.dbg.value(metadata i32 %62, metadata !2790, metadata !DIExpression()), !dbg !2799
  %63 = add nuw nsw i32 %36, 1, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %44, metadata !2789, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %63, metadata !2794, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8 undef, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 undef, metadata !2792, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 undef, metadata !2791, metadata !DIExpression()), !dbg !2799
  %64 = icmp slt i32 %63, %0, !dbg !2843
  br i1 %64, label %34, label %27, !dbg !2845, !llvm.loop !2870

65:                                               ; preds = %27
  %66 = or i1 %30, %31, !dbg !2872
  %67 = zext i1 %66 to i32, !dbg !2872
  %68 = add nsw i32 %32, %67, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %68, metadata !2789, metadata !DIExpression()), !dbg !2799
  %69 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2875, !tbaa !2501
  %70 = icmp slt i32 %69, 256, !dbg !2876
  br i1 %70, label %71, label %89, !dbg !2877

71:                                               ; preds = %65, %81
  %72 = phi i32 [ %86, %81 ], [ %69, %65 ]
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2878, !tbaa !2830
  %74 = add nsw i32 %73, -1, !dbg !2879
  %75 = icmp slt i32 %72, %74, !dbg !2880
  br i1 %75, label %81, label %76, !dbg !2881

76:                                               ; preds = %71
  %77 = add nsw i32 %72, 1, !dbg !2882
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2883, !tbaa !2884
  %79 = sub i32 %77, %78, !dbg !2885
  %80 = icmp slt i32 %79, %68, !dbg !2886
  br i1 %80, label %81, label %89, !dbg !2887

81:                                               ; preds = %71, %76
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2888, !tbaa !2576
  %83 = add nsw i32 %82, 1, !dbg !2888
  store i32 %83, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2888, !tbaa !2576
  %84 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #6, !dbg !2890
  %85 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2891, !tbaa !2501
  %86 = add nsw i32 %85, 1, !dbg !2891
  store i32 %86, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2891, !tbaa !2501
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %85, !dbg !2892
  store %struct.halide_thread* %84, %struct.halide_thread** %87, align 4, !dbg !2893, !tbaa !1077
  %88 = icmp slt i32 %85, 255, !dbg !2876
  br i1 %88, label %71, label %89, !dbg !2877, !llvm.loop !2894

89:                                               ; preds = %76, %81, %65
  br i1 %66, label %90, label %109, !dbg !2896

90:                                               ; preds = %89
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2898, !tbaa !2884
  %92 = add nsw i32 %91, 1, !dbg !2898
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !2898, !tbaa !2884
  br label %109, !dbg !2900

93:                                               ; preds = %27
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7, !dbg !2901
  %95 = load i32, i32* %94, align 4, !dbg !2901, !tbaa !2491
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8, !dbg !2901
  %97 = load i32, i32* %96, align 4, !dbg !2901, !tbaa !2438
  %98 = mul nsw i32 %97, %95, !dbg !2901
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2901
  %100 = load i32, i32* %99, align 4, !dbg !2901, !tbaa !2905
  %101 = sub nsw i32 %98, %100, !dbg !2901
  %102 = icmp sgt i32 %32, %101, !dbg !2901
  br i1 %102, label %103, label %104, !dbg !2906

103:                                              ; preds = %93
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !2907
  tail call void @abort() #7, !dbg !2907
  br label %104, !dbg !2907

104:                                              ; preds = %103, %93
  %105 = or i1 %30, %31, !dbg !2909
  br i1 %105, label %106, label %109, !dbg !2909

106:                                              ; preds = %104
  %107 = load i32, i32* %99, align 4, !dbg !2911, !tbaa !2905
  %108 = add nsw i32 %107, 1, !dbg !2911
  store i32 %108, i32* %99, align 4, !dbg !2911, !tbaa !2905
  br label %109, !dbg !2913

109:                                              ; preds = %104, %89, %106, %90
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2914
  br i1 %26, label %110, label %113, !dbg !2915

110:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2914
  %111 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !2440
  br label %126, !dbg !2915

112:                                              ; preds = %126
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2916, !tbaa !2440
  br label %113, !dbg !2915

113:                                              ; preds = %112, %109
  %114 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2919, !tbaa !2565
  %115 = icmp ne i32 %114, 0, !dbg !2920
  %116 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2921
  %117 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2921
  %118 = icmp slt i32 %116, %117, !dbg !2921
  %119 = or i1 %115, %118, !dbg !2921
  call void @llvm.dbg.value(metadata i1 %119, metadata !2798, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2799
  %120 = icmp sgt i32 %28, %116
  %121 = or i1 %120, %119, !dbg !2922
  %122 = select i1 %121, i32 %117, i32 %28, !dbg !2922
  store i32 %122, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2924, !tbaa !2578
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #6, !dbg !2925
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2926, !tbaa !2578
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2928, !tbaa !2576
  %125 = icmp sgt i32 %123, %124, !dbg !2929
  br i1 %125, label %136, label %138, !dbg !2930

126:                                              ; preds = %110, %126
  %127 = phi %"struct.Halide::Runtime::Internal::work"* [ %111, %110 ], [ %130, %126 ], !dbg !2931
  %128 = phi i32 [ %0, %110 ], [ %129, %126 ]
  %129 = add nsw i32 %128, -1, !dbg !2914
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, !dbg !2932
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 2, !dbg !2933
  store %"struct.Halide::Runtime::Internal::work"* %127, %"struct.Halide::Runtime::Internal::work"** %131, align 4, !dbg !2934, !tbaa !2460
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 3, !dbg !2935
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %132, align 4, !dbg !2936, !tbaa !2546
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 4, !dbg !2937
  store i32 %0, i32* %133, align 4, !dbg !2938, !tbaa !2706
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 6, !dbg !2939
  store i32 0, i32* %134, align 4, !dbg !2940, !tbaa !2905
  call void @llvm.dbg.value(metadata i32 %129, metadata !2796, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2914
  %135 = icmp sgt i32 %128, 1, !dbg !2941
  br i1 %135, label %126, label %112, !dbg !2915, !llvm.loop !2942

136:                                              ; preds = %113
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #6, !dbg !2944
  br i1 %29, label %137, label %138, !dbg !2946

137:                                              ; preds = %136
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !2947
  br label %138, !dbg !2950

138:                                              ; preds = %136, %137, %113
  %139 = or i1 %30, %31, !dbg !2951
  br i1 %139, label %140, label %145, !dbg !2951

140:                                              ; preds = %138
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2953
  %142 = select i1 %33, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %141, !dbg !2953
  %143 = load i32, i32* %142, align 4, !dbg !2955, !tbaa !582
  %144 = add nsw i32 %143, -1, !dbg !2955
  store i32 %144, i32* %142, align 4, !dbg !2955, !tbaa !582
  br label %145, !dbg !2957

145:                                              ; preds = %140, %138
  ret void, !dbg !2957
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #2 !dbg !2958 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2960, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 %2, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %3, metadata !2963, metadata !DIExpression()), !dbg !2964
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #7, !dbg !2965
  ret i32 %5, !dbg !2966
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #2 !dbg !2967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2969, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2970, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 %2, metadata !2971, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 %3, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %4, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8* %5, metadata !2974, metadata !DIExpression()), !dbg !2975
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !2976
  ret i32 %7, !dbg !2977
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #2 !dbg !2978 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2980, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2981, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %2, metadata !2982, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %3, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8* %4, metadata !2984, metadata !DIExpression()), !dbg !2986
  %7 = icmp slt i32 %3, 1, !dbg !2987
  br i1 %7, label %29, label %8, !dbg !2989

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2990
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #8, !dbg !2990
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2985, metadata !DIExpression()), !dbg !2991
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0, !dbg !2992
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !dbg !2993, !tbaa !2644
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5, !dbg !2994
  store i32 %2, i32* %11, align 4, !dbg !2995, !tbaa !2646
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6, !dbg !2996
  store i32 %3, i32* %12, align 4, !dbg !2997, !tbaa !2428
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8, !dbg !2998
  store i8 0, i8* %13, align 4, !dbg !2999, !tbaa !2508
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3, !dbg !3000
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !dbg !3001, !tbaa !2532
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4, !dbg !3002
  store i32 0, i32* %15, align 4, !dbg !3003, !tbaa !2526
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1, !dbg !3004
  store i8* %4, i8** %16, align 4, !dbg !3005, !tbaa !2649
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7, !dbg !3006
  store i32 0, i32* %17, align 4, !dbg !3007, !tbaa !2491
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2, !dbg !3008
  store i8* null, i8** %18, align 4, !dbg !3009, !tbaa !3010
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1, !dbg !3011
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !dbg !3012, !tbaa !3013
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7, !dbg !3014
  store i8* %0, i8** %20, align 4, !dbg !3015, !tbaa !2642
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9, !dbg !3016
  store i32 0, i32* %21, align 4, !dbg !3017, !tbaa !2446
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8, !dbg !3018
  store i32 0, i32* %22, align 4, !dbg !3019, !tbaa !2438
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10, !dbg !3020
  store i32 0, i32* %23, align 4, !dbg !3021, !tbaa !2524
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11, !dbg !3022
  store i8 0, i8* %24, align 4, !dbg !3023, !tbaa !2567
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3, !dbg !3024
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !dbg !3025, !tbaa !2546
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4, !dbg !3026
  store i32 0, i32* %26, align 4, !dbg !3027, !tbaa !2706
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5, !dbg !3028
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !dbg !3029, !tbaa !2469
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3030
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #6, !dbg !3031
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #6, !dbg !3032
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3033
  %28 = load i32, i32* %21, align 4, !dbg !3034, !tbaa !2446
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #8, !dbg !3035
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2986
  ret i32 %30, !dbg !3035
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #2 !dbg !3036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %1, metadata !3039, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3040, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i8* %3, metadata !3041, metadata !DIExpression()), !dbg !3048
  %5 = mul i32 %1, 80, !dbg !3049
  %6 = alloca i8, i32 %5, align 8, !dbg !3050
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3051
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %7, metadata !3042, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3043, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %1, metadata !3039, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3040, metadata !DIExpression()), !dbg !3048
  %8 = icmp sgt i32 %1, 0, !dbg !3053
  br i1 %8, label %12, label %9, !dbg !3055

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %36, %34 ]
  %11 = icmp eq i32 %10, 0, !dbg !3056
  br i1 %11, label %54, label %39, !dbg !3058

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi i32 [ %36, %34 ], [ %1, %4 ]
  %15 = phi %struct.halide_parallel_task_t* [ %35, %34 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !3043, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %14, metadata !3039, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %15, metadata !3040, metadata !DIExpression()), !dbg !3048
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 0, i32 6, !dbg !3059
  %17 = load i32, i32* %16, align 4, !dbg !3059, !tbaa !3062
  %18 = icmp slt i32 %17, 1, !dbg !3063
  br i1 %18, label %19, label %21, !dbg !3064

19:                                               ; preds = %12
  %20 = add nsw i32 %14, -1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %20, metadata !3039, metadata !DIExpression()), !dbg !3048
  br label %34, !dbg !3067

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 1, !dbg !3068
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %22, metadata !3040, metadata !DIExpression()), !dbg !3048
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, !dbg !3069
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*, !dbg !3070
  %25 = bitcast %struct.halide_parallel_task_t* %15 to i8*, !dbg !3070
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !dbg !3070, !tbaa.struct !3071
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1, !dbg !3072
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !dbg !3073, !tbaa !3013
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7, !dbg !3074
  store i8* %0, i8** %27, align 4, !dbg !3075, !tbaa !2642
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9, !dbg !3076
  store i32 0, i32* %28, align 4, !dbg !3077, !tbaa !2446
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8, !dbg !3078
  store i32 0, i32* %29, align 8, !dbg !3079, !tbaa !2438
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10, !dbg !3080
  store i32 0, i32* %30, align 8, !dbg !3081, !tbaa !2524
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11, !dbg !3082
  store i8 0, i8* %31, align 4, !dbg !3083, !tbaa !2567
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5, !dbg !3084
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**, !dbg !3085
  store i8* %3, i8** %33, align 4, !dbg !3085, !tbaa !2469
  br label %34, !dbg !3086

34:                                               ; preds = %21, %19
  %35 = phi %struct.halide_parallel_task_t* [ %15, %19 ], [ %22, %21 ]
  %36 = phi i32 [ %20, %19 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !3039, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %35, metadata !3040, metadata !DIExpression()), !dbg !3048
  %37 = add nuw nsw i32 %13, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %37, metadata !3043, metadata !DIExpression()), !dbg !3052
  %38 = icmp slt i32 %37, %36, !dbg !3053
  br i1 %38, label %12, label %9, !dbg !3055, !llvm.loop !3088

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3090
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3091
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #6, !dbg !3092
  call void @llvm.dbg.value(metadata i32 0, metadata !3045, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3046, metadata !DIExpression()), !dbg !3093
  %41 = icmp sgt i32 %10, 0, !dbg !3094
  br i1 %41, label %44, label %42, !dbg !3096

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ], !dbg !3048
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3097
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !3046, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 %46, metadata !3045, metadata !DIExpression()), !dbg !3048
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, !dbg !3098
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #6, !dbg !3100
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9, !dbg !3101
  %49 = load i32, i32* %48, align 4, !dbg !3101, !tbaa !2446
  %50 = icmp eq i32 %49, 0, !dbg !3103
  %51 = select i1 %50, i32 %46, i32 %49, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %51, metadata !3045, metadata !DIExpression()), !dbg !3048
  %52 = add nuw nsw i32 %45, 1, !dbg !3105
  call void @llvm.dbg.value(metadata i32 %52, metadata !3046, metadata !DIExpression()), !dbg !3093
  %53 = icmp slt i32 %52, %10, !dbg !3094
  br i1 %53, label %44, label %42, !dbg !3096, !llvm.loop !3106

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ], !dbg !3048
  ret i32 %55, !dbg !3108
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3109 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3111, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 %1, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3113, metadata !DIExpression()), !dbg !3114
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3115
  call void @llvm.dbg.value(metadata i32* %3, metadata !3116, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32* undef, metadata !3121, metadata !DIExpression()), !dbg !3124
  store i32 %1, i32* %3, align 4, !dbg !3126, !tbaa !582
  fence seq_cst, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %1, metadata !3112, metadata !DIExpression()), !dbg !3114
  ret i32 %1, !dbg !3128
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3129 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3131, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()), !dbg !3136
  %3 = icmp eq i32 %1, 0, !dbg !3137
  br i1 %3, label %15, label %4, !dbg !3139

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3133, metadata !DIExpression()), !dbg !3136
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3140
  call void @llvm.dbg.value(metadata i32* %5, metadata !3141, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32* undef, metadata !3144, metadata !DIExpression()), !dbg !3145
  fence seq_cst, !dbg !3147
  %6 = load i32, i32* %5, align 4, !dbg !3148, !tbaa !582
  br label %7, !dbg !3149

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ], !dbg !3136
  call void @llvm.dbg.value(metadata i32 %8, metadata !3134, metadata !DIExpression()), !dbg !3136
  %9 = sub nsw i32 %8, %1, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %9, metadata !3135, metadata !DIExpression()), !dbg !3136
  %10 = icmp sgt i32 %9, -1, !dbg !3152
  br i1 %10, label %11, label %15, !dbg !3153

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* %5, metadata !3154, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32* undef, metadata !3159, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32* undef, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32* %5, metadata !3163, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32* undef, metadata !3166, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32* undef, metadata !3167, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 %8, metadata !3168, metadata !DIExpression()), !dbg !3170
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst, !dbg !3172
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %13, metadata !3169, metadata !DIExpression()), !dbg !3170
  %14 = icmp eq i32 %8, %13, !dbg !3173
  br i1 %14, label %15, label %7, !dbg !3174, !llvm.loop !3175

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ], !dbg !3136
  ret i1 %16, !dbg !3177
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3178 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3180, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 %1, metadata !3181, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3182, metadata !DIExpression()), !dbg !3184
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3185
  call void @llvm.dbg.value(metadata i32* %3, metadata !3186, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %1, metadata !3191, metadata !DIExpression()), !dbg !3192
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst, !dbg !3194
  call void @llvm.dbg.value(metadata i32 %4, metadata !3183, metadata !DIExpression()), !dbg !3184
  %5 = icmp eq i32 %4, 0, !dbg !3195
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3197
  br i1 %7, label %8, label %9, !dbg !3197

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3198
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #6, !dbg !3200
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !3201
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3202
  br label %9, !dbg !3203

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3204
  ret i32 %10, !dbg !3205
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #2 !dbg !3206 {
  tail call void @halide_shutdown_thread_pool() #6, !dbg !3207
  ret void, !dbg !3208
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #2 !dbg !3209 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !3215, !tbaa !2802, !range !740
  %2 = icmp eq i8 %1, 0, !dbg !3215
  br i1 %2, label %15, label %3, !dbg !3216

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3217
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !3218, !tbaa !2434
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !3219
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #6, !dbg !3220
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #6, !dbg !3221
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3222
  call void @llvm.dbg.value(metadata i32 0, metadata !3211, metadata !DIExpression()), !dbg !3223
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3224, !tbaa !2501
  %5 = icmp sgt i32 %4, 0, !dbg !3226
  br i1 %5, label %8, label %6, !dbg !3227

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3228, metadata !DIExpression()) #8, !dbg !3234
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), metadata !3231, metadata !DIExpression()) #8, !dbg !3234
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3232, metadata !DIExpression(DW_OP_plus_uconst, 1080, DW_OP_stack_value)) #8, !dbg !3234
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), i32 0, i32 1072) #7, !dbg !3236
  br label %15, !dbg !3237

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3211, metadata !DIExpression()), !dbg !3223
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %9, !dbg !3238
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !dbg !3238, !tbaa !1077
  tail call void @halide_join_thread(%struct.halide_thread* %11) #6, !dbg !3240
  %12 = add nuw nsw i32 %9, 1, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %12, metadata !3211, metadata !DIExpression()), !dbg !3223
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3224, !tbaa !2501
  %14 = icmp slt i32 %12, %13, !dbg !3226
  br i1 %14, label %8, label %6, !dbg !3227, !llvm.loop !3242

15:                                               ; preds = %6, %0
  ret void, !dbg !3244
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #2 !dbg !3245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3247, metadata !DIExpression()), !dbg !3249
  %2 = icmp slt i32 %0, 0, !dbg !3250
  br i1 %2, label %3, label %4, !dbg !3252

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !3253
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3255
  br label %8, !dbg !3256

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3255
  %5 = icmp eq i32 %0, 0, !dbg !3257
  br i1 %5, label %6, label %8, !dbg !3256

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !3259
  call void @llvm.dbg.value(metadata i32 %7, metadata !3247, metadata !DIExpression()), !dbg !3249
  br label %8, !dbg !3261

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3247, metadata !DIExpression()), !dbg !3249
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3262, !tbaa !2830
  call void @llvm.dbg.value(metadata i32 %10, metadata !3248, metadata !DIExpression()), !dbg !3249
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #6, !dbg !3263
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3264, !tbaa !2830
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3265
  ret i32 %10, !dbg !3266
}

declare !dbg !3267 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3268 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3275, !tbaa !1077
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3276, !tbaa !1077
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3277
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #0 !dbg !3278 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3282, metadata !DIExpression()), !dbg !3284
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3285, !tbaa !1077
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3283, metadata !DIExpression()), !dbg !3284
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3286, !tbaa !1077
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3287
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3288 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3292, metadata !DIExpression()), !dbg !3294
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3295, !tbaa !1077
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3296, !tbaa !1077
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3297
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #0 !dbg !3298 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3302, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3303, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3304, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3306, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3307, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3308, metadata !DIExpression()), !dbg !3309
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3310, !tbaa !1077
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3311, !tbaa !1077
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3312, !tbaa !1077
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3313, !tbaa !1077
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3314, !tbaa !1077
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3315, !tbaa !1077
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3316, !tbaa !1077
  ret void, !dbg !3317
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #2 !dbg !3318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3321, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 %2, metadata !3322, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 %3, metadata !3323, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %4, metadata !3324, metadata !DIExpression()), !dbg !3325
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3326, !tbaa !1077
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #7, !dbg !3327
  ret i32 %7, !dbg !3328
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #2 !dbg !3329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3331, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 %1, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8* %3, metadata !3334, metadata !DIExpression()), !dbg !3335
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3336, !tbaa !1077
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #7, !dbg !3336
  ret i32 %6, !dbg !3337
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3338 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3340, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 %1, metadata !3341, metadata !DIExpression()), !dbg !3342
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3343, !tbaa !1077
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3343
  ret i32 %4, !dbg !3344
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3345 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 %1, metadata !3348, metadata !DIExpression()), !dbg !3349
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3350, !tbaa !1077
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3350
  ret i32 %4, !dbg !3351
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3352 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3354, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 %1, metadata !3355, metadata !DIExpression()), !dbg !3356
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3357, !tbaa !1077
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3357
  ret i1 %4, !dbg !3358
}

declare !dbg !3359 dso_local void @qurt_mutex_init(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3363 dso_local void @qurt_cond_init(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3367 dso_local void @qurt_mutex_lock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3368 dso_local void @qurt_cond_wait(%union.qurt_cond_t*, %union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3371 dso_local void @qurt_mutex_unlock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3372 dso_local void @qurt_cond_destroy(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3373 dso_local void @qurt_mutex_destroy(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3374 dso_local void @qurt_cond_signal(%union.qurt_cond_t*) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!408, !409, !410}
!llvm.ident = !{!411}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_qurt_default_thread_priority", scope: !2, file: !8, line: 37, type: !406, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !310, imports: !401, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!6, !25, !26, !29, !101, !136, !137, !178, !203, !213, !184, !223, !236, !240, !248, !305, !173, !265, !309}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spawned_thread", scope: !9, file: !8, line: 14, size: 128, flags: DIFlagTypePassByValue, elements: !10)
!8 = !DIFile(filename: "src/runtime/qurt_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !DINamespace(scope: null)
!10 = !{!11, !16, !17, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !7, file: !8, line: 15, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !7, file: !8, line: 16, baseType: !15, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !7, file: !8, line: 17, baseType: !15, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !7, file: !8, line: 18, baseType: !19, size: 32, offset: 96)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !8, line: 9, size: 32, flags: DIFlagTypePassByValue, elements: !20, identifier: "_ZTS13halide_thread")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !8, line: 10, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_thread_t", file: !23, line: 18, baseType: !24)
!23 = !DIFile(filename: "src/runtime/mini_qurt.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !27, line: 68, baseType: !28)
!27 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 12, baseType: !24)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_lock_queue_data", scope: !32, file: !31, line: 254, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !36, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE")
!31 = !DIFile(filename: "src/runtime/synchronization_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!32 = !DINamespace(name: "Synchronization", scope: !33)
!33 = !DINamespace(name: "Internal", scope: !34)
!34 = !DINamespace(name: "Runtime", scope: !35)
!35 = !DINamespace(name: "Halide", scope: null)
!36 = !{!37, !93, !94, !95, !96, !100}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !30, file: !31, line: 255, baseType: !38, size: 320)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_parker", scope: !32, file: !8, line: 84, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !39, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE")
!39 = !{!40, !53, !65, !67, !73, !77, !81, !84, !87, !88, !89, !90, !91, !92}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !8, line: 85, baseType: !41, size: 128)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_mutex_t", file: !23, line: 211, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "qurt_mutex_aligned8", file: !23, line: 201, size: 128, flags: DIFlagTypePassByValue, elements: !43, identifier: "_ZTS19qurt_mutex_aligned8")
!43 = !{!44, !51}
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !23, line: 203, baseType: !45, size: 128)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !42, file: !23, line: 203, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !46, identifier: "_ZTSN19qurt_mutex_aligned8Ut_E")
!46 = !{!47, !48, !49, !50}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !45, file: !23, line: 204, baseType: !24, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !45, file: !23, line: 205, baseType: !24, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !45, file: !23, line: 206, baseType: !24, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !45, file: !23, line: 207, baseType: !24, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !42, file: !23, line: 209, baseType: !52, size: 64)
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "condvar", scope: !38, file: !8, line: 86, baseType: !54, size: 128, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_cond_t", file: !23, line: 224, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 214, size: 128, flags: DIFlagTypePassByValue, elements: !56, identifier: "_ZTS11qurt_cond_t")
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !55, file: !23, line: 216, baseType: !52, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !55, file: !23, line: 222, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !23, line: 217, size: 128, flags: DIFlagTypePassByValue, elements: !60, identifier: "_ZTSN11qurt_cond_tUt_E")
!60 = !{!61, !62, !63, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !59, file: !23, line: 218, baseType: !24, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "n_waiting", scope: !59, file: !23, line: 219, baseType: !24, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !59, file: !23, line: 220, baseType: !24, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !59, file: !23, line: 221, baseType: !24, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "should_park", scope: !38, file: !8, line: 87, baseType: !66, size: 8, offset: 256)
!66 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!67 = !DISubprogram(name: "thread_parker", scope: !38, file: !8, line: 89, type: !68, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!73 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSERKS3_", scope: !38, file: !8, line: 90, type: !74, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !70, !71}
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !38, size: 32)
!77 = !DISubprogram(name: "thread_parker", scope: !38, file: !8, line: 91, type: !78, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !70, !80}
!80 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !38, size: 32)
!81 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSEOS3_", scope: !38, file: !8, line: 92, type: !82, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!82 = !DISubroutineType(types: !83)
!83 = !{!76, !70, !80}
!84 = !DISubprogram(name: "thread_parker", scope: !38, file: !8, line: 94, type: !85, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !70}
!87 = !DISubprogram(name: "~thread_parker", scope: !38, file: !8, line: 100, type: !85, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !38, file: !8, line: 105, type: !85, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !38, file: !8, line: 109, type: !85, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !38, file: !8, line: 117, type: !85, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !38, file: !8, line: 121, type: !85, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !38, file: !8, line: 126, type: !85, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !31, line: 273, baseType: !29, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !30, file: !31, line: 274, baseType: !29, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !30, file: !31, line: 275, baseType: !29, size: 32, offset: 384)
!96 = !DISubprogram(name: "word_lock_queue_data", scope: !30, file: !31, line: 277, type: !97, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DISubprogram(name: "~word_lock_queue_data", scope: !30, file: !31, line: 280, type: !97, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", scope: !32, file: !31, line: 475, size: 98304, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !103, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10hash_tableE")
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !102, file: !31, line: 476, baseType: !105, size: 98304)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 98304, elements: !134)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", scope: !32, file: !31, line: 463, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !107, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE")
!107 = !{!108, !120, !133}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !31, line: 464, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "word_lock", scope: !32, file: !31, line: 283, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !110, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE")
!110 = !{!111, !112, !116, !117, !118, !119}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !109, file: !31, line: 284, baseType: !26, size: 32)
!112 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !109, file: !31, line: 286, type: !113, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !109, file: !31, line: 287, type: !113, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubprogram(name: "word_lock", scope: !109, file: !31, line: 290, type: !113, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !109, file: !31, line: 291, type: !113, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !109, file: !31, line: 304, type: !113, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !106, file: !31, line: 466, baseType: !121, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_data", scope: !32, file: !31, line: 448, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !123, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE")
!123 = !{!124, !125, !126, !127, !128, !132}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !122, file: !31, line: 449, baseType: !38, size: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_address", scope: !122, file: !31, line: 451, baseType: !26, size: 32, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !31, line: 452, baseType: !121, size: 32, offset: 352)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_info", scope: !122, file: !31, line: 453, baseType: !26, size: 32, offset: 384)
!128 = !DISubprogram(name: "queue_data", scope: !122, file: !31, line: 455, type: !129, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!132 = !DISubprogram(name: "~queue_data", scope: !122, file: !31, line: 457, type: !129, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !31, line: 467, baseType: !121, size: 32, offset: 64)
!134 = !{!135}
!135 = !DISubrange(count: 1024)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex_parking_control", scope: !32, file: !31, line: 829, size: 160, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !139, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE")
!139 = !{!140, !172, !174}
!140 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !138, baseType: !141, extraData: i32 0)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parking_control", scope: !32, file: !31, line: 592, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !142, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE")
!142 = !{!143, !156, !157, !162, !168}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !141, file: !31, line: 593, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DISubroutineType(types: !146)
!146 = !{!66, !15, !147}
!147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "validate_action", scope: !32, file: !31, line: 576, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !149, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE")
!149 = !{!150, !151, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_one", scope: !148, file: !31, line: 577, baseType: !66, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_unpark_info", scope: !148, file: !31, line: 578, baseType: !26, size: 32, offset: 32)
!152 = !DISubprogram(name: "validate_action", scope: !148, file: !31, line: 580, type: !153, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "before_sleep", scope: !141, file: !31, line: 594, baseType: !12, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !141, file: !31, line: 595, baseType: !158, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 32)
!159 = !DISubroutineType(types: !160)
!160 = !{!26, !15, !161, !66}
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_callback", scope: !141, file: !31, line: 596, baseType: !163, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !15, !166, !66, !66}
!166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!168 = !DISubprogram(name: "parking_control", scope: !141, file: !31, line: 598, type: !169, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "lock_state", scope: !138, file: !31, line: 830, baseType: !173, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!174 = !DISubprogram(name: "mutex_parking_control", scope: !138, file: !31, line: 832, type: !175, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !173}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_parking_control", scope: !32, file: !31, line: 958, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !180, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE")
!180 = !{!181, !182, !183, !199}
!181 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !179, baseType: !141, extraData: i32 0)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !179, file: !31, line: 959, baseType: !173, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !179, file: !31, line: 960, baseType: !184, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_mutex", scope: !32, file: !31, line: 859, size: 32, flags: DIFlagTypePassByValue, elements: !186, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10fast_mutexE")
!186 = !{!187, !188, !192, !193, !194, !195, !198}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !185, file: !31, line: 860, baseType: !26, size: 32)
!188 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !185, file: !31, line: 862, type: !189, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!192 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !185, file: !31, line: 906, type: !189, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !185, file: !31, line: 920, type: !189, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !185, file: !31, line: 929, type: !189, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !185, file: !31, line: 938, type: !196, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{!66, !191}
!198 = !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !185, file: !31, line: 953, type: !189, scopeLine: 953, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubprogram(name: "signal_parking_control", scope: !179, file: !31, line: 962, type: !200, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202, !173, !184}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "broadcast_parking_control", scope: !32, file: !31, line: 985, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !205, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE")
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !204, baseType: !141, extraData: i32 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !204, file: !31, line: 986, baseType: !173, size: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !204, file: !31, line: 987, baseType: !184, size: 32, offset: 160)
!209 = !DISubprogram(name: "broadcast_parking_control", scope: !204, file: !31, line: 989, type: !210, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212, !173, !184}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_parking_control", scope: !32, file: !31, line: 1026, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !215, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE")
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !214, baseType: !141, extraData: i32 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !214, file: !31, line: 1027, baseType: !173, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !214, file: !31, line: 1028, baseType: !184, size: 32, offset: 160)
!219 = !DISubprogram(name: "wait_parking_control", scope: !214, file: !31, line: 1030, type: !220, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222, !173, !184}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_cond", scope: !32, file: !31, line: 1072, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !225, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9fast_condE")
!225 = !{!226, !227, !231, !232, !233}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !31, line: 1073, baseType: !26, size: 32)
!227 = !DISubprogram(name: "fast_cond", scope: !224, file: !31, line: 1076, type: !228, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!231 = !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !224, file: !31, line: 1078, type: !228, scopeLine: 1078, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !224, file: !31, line: 1092, type: !228, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !224, file: !31, line: 1105, type: !234, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !230, !184}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !31, line: 1164, size: 32, flags: DIFlagTypePassByValue, elements: !238, identifier: "_ZTS18halide_mutex_array")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !237, file: !31, line: 1165, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !242, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !243, identifier: "_ZTS12halide_mutex")
!242 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !241, file: !242, line: 121, baseType: !245, size: 32)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 1)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work", scope: !33, file: !250, line: 26, size: 640, flags: DIFlagTypePassByValue, elements: !251, identifier: "_ZTSN6Halide7Runtime8Internal4workE")
!250 = !DIFile(filename: "src/runtime/thread_pool_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!251 = !{!252, !281, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !300}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !249, file: !250, line: 27, baseType: !253, size: 288)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !242, line: 201, size: 288, flags: DIFlagTypePassByValue, elements: !254, identifier: "_ZTS22halide_parallel_task_t")
!254 = !{!255, !263, !264, !268, !276, !277, !278, !279, !280}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !253, file: !242, line: 204, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_loop_task_t", file: !242, line: 192, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 32)
!258 = !DISubroutineType(types: !259)
!259 = !{!161, !15, !161, !161, !260, !15}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 16, baseType: !262)
!262 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !253, file: !242, line: 207, baseType: !260, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !242, line: 210, baseType: !265, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "semaphores", scope: !253, file: !242, line: 214, baseType: !269, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_acquire_t", file: !242, line: 177, size: 64, flags: DIFlagTypePassByValue, elements: !271, identifier: "_ZTS26halide_semaphore_acquire_t")
!271 = !{!272, !275}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !270, file: !242, line: 178, baseType: !273, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !242, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS18halide_semaphore_t")
!275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !270, file: !242, line: 179, baseType: !161, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "num_semaphores", scope: !253, file: !242, line: 215, baseType: !161, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !253, file: !242, line: 219, baseType: !161, size: 32, offset: 160)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !253, file: !242, line: 219, baseType: !161, size: 32, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "min_threads", scope: !253, file: !242, line: 238, baseType: !161, size: 32, offset: 224)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !253, file: !242, line: 243, baseType: !66, size: 8, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "task_fn", scope: !249, file: !250, line: 31, baseType: !282, size: 32, offset: 288)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_task_t", file: !242, line: 158, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DISubroutineType(types: !285)
!285 = !{!161, !15, !161, !260}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next_job", scope: !249, file: !250, line: 33, baseType: !248, size: 32, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !249, file: !250, line: 34, baseType: !248, size: 32, offset: 352)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_count", scope: !249, file: !250, line: 35, baseType: !161, size: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent_job", scope: !249, file: !250, line: 36, baseType: !248, size: 32, offset: 416)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !249, file: !250, line: 37, baseType: !161, size: 32, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !249, file: !250, line: 39, baseType: !15, size: 32, offset: 480)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "active_workers", scope: !249, file: !250, line: 40, baseType: !161, size: 32, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "exit_status", scope: !249, file: !250, line: 41, baseType: !161, size: 32, offset: 544)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next_semaphore", scope: !249, file: !250, line: 42, baseType: !161, size: 32, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "owner_is_sleeping", scope: !249, file: !250, line: 44, baseType: !66, size: 8, offset: 608)
!296 = !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !249, file: !250, line: 46, type: !297, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!66, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!300 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !249, file: !250, line: 62, type: !301, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!66, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_impl_t", file: !250, line: 711, size: 32, flags: DIFlagTypePassByValue, elements: !307, identifier: "_ZTS23halide_semaphore_impl_t")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !250, line: 712, baseType: !161, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!310 = !{!0, !311, !314, !316, !321, !323, !361, !367, !373, !379, !386, !392, !398}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!312 = distinct !DIGlobalVariable(name: "lock_bit", scope: !32, file: !31, line: 250, type: !313, isLocal: true, isDefinition: true)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!315 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !32, file: !31, line: 251, type: !313, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "table_storage", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13table_storageE", scope: !32, file: !31, line: 478, type: !318, isLocal: false, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 98304, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 12288)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!322 = distinct !DIGlobalVariable(name: "parked_bit", scope: !32, file: !31, line: 252, type: !313, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "work_queue", linkageName: "_ZN6Halide7Runtime8Internal10work_queueE", scope: !33, file: !250, line: 166, type: !325, isLocal: false, isDefinition: true)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_queue_t", scope: !33, file: !250, line: 94, size: 8640, flags: DIFlagTypePassByValue, elements: !326, identifier: "_ZTSN6Halide7Runtime8Internal12work_queue_tE")
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !338, !339, !340, !341, !342, !346, !347, !348, !349, !354, !357}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !325, file: !250, line: 96, baseType: !241, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "desired_threads_working", scope: !325, file: !250, line: 99, baseType: !161, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "zero_marker", scope: !325, file: !250, line: 103, baseType: !161, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !325, file: !250, line: 106, baseType: !248, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "threads_created", scope: !325, file: !250, line: 109, baseType: !161, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "a_team_size", scope: !325, file: !250, line: 116, baseType: !161, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "target_a_team_size", scope: !325, file: !250, line: 116, baseType: !161, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wake_a_team", scope: !325, file: !250, line: 122, baseType: !335, size: 32, offset: 224)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_cond", file: !242, line: 125, size: 32, flags: DIFlagTypePassByValue, elements: !336, identifier: "_ZTS11halide_cond")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !335, file: !242, line: 126, baseType: !245, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wake_b_team", scope: !325, file: !250, line: 122, baseType: !335, size: 32, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wake_owners", scope: !325, file: !250, line: 122, baseType: !335, size: 32, offset: 288)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "workers_sleeping", scope: !325, file: !250, line: 126, baseType: !161, size: 32, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "owners_sleeping", scope: !325, file: !250, line: 126, baseType: !161, size: 32, offset: 352)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !325, file: !250, line: 129, baseType: !343, size: 8192, offset: 384)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8192, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !325, file: !250, line: 133, baseType: !66, size: 8, offset: 8576)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !325, file: !250, line: 133, baseType: !66, size: 8, offset: 8584)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !325, file: !250, line: 139, baseType: !161, size: 32, offset: 8608)
!349 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t7runningEv", scope: !325, file: !250, line: 141, type: !350, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{!66, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!354 = !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !325, file: !250, line: 146, type: !355, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !352}
!357 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !325, file: !250, line: 158, type: !358, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "_ZN6Halide7Runtime8Internal14custom_do_taskE", scope: !33, file: !250, line: 567, type: !363, isLocal: false, isDefinition: true)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !242, line: 259, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!365 = !DISubroutineType(types: !366)
!366 = !{!161, !15, !282, !161, !260}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "_ZN6Halide7Runtime8Internal19custom_do_loop_taskE", scope: !33, file: !250, line: 568, type: !369, isLocal: false, isDefinition: true)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !242, line: 268, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DISubroutineType(types: !372)
!372 = !{!161, !15, !256, !161, !161, !260, !15}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "_ZN6Halide7Runtime8Internal17custom_do_par_forE", scope: !33, file: !250, line: 569, type: !375, isLocal: false, isDefinition: true)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !242, line: 167, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = !DISubroutineType(types: !378)
!378 = !{!161, !15, !282, !161, !161, !260}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE", scope: !33, file: !250, line: 570, type: !381, isLocal: false, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !242, line: 281, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = !DISubroutineType(types: !384)
!384 = !{!161, !15, !161, !385, !15}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "_ZN6Halide7Runtime8Internal21custom_semaphore_initE", scope: !33, file: !250, line: 571, type: !388, isLocal: false, isDefinition: true)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !242, line: 184, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DISubroutineType(types: !391)
!391 = !{!161, !273, !161}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE", scope: !33, file: !250, line: 572, type: !394, isLocal: false, isDefinition: true)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !242, line: 186, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!396 = !DISubroutineType(types: !397)
!397 = !{!66, !273, !161}
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE", scope: !33, file: !250, line: 573, type: !400, isLocal: false, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !242, line: 185, baseType: !389)
!401 = !{!402, !403, !405}
!402 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !33, file: !27, line: 225)
!403 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !404, file: !8, line: 7)
!404 = !DINamespace(name: "Qurt", scope: !33)
!405 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !33, file: !250, line: 579)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 14, baseType: !407)
!407 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!408 = !{i32 7, !"Dwarf Version", i32 4}
!409 = !{i32 2, !"Debug Info Version", i32 3}
!410 = !{i32 1, !"wchar_size", i32 4}
!411 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!412 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !8, file: !8, line: 30, type: !413, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!413 = !DISubroutineType(types: !414)
!414 = !{!161}
!415 = !DILocation(line: 32, column: 5, scope: !412)
!416 = distinct !DISubprogram(name: "halide_set_default_thread_priority", scope: !8, file: !8, line: 39, type: !417, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !161}
!419 = !{!420}
!420 = !DILocalVariable(name: "priority", arg: 1, scope: !416, file: !8, line: 39, type: !161)
!421 = !DILocation(line: 0, scope: !416)
!422 = !DILocation(line: 40, column: 18, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !8, line: 40, column: 9)
!424 = !DILocation(line: 40, column: 9, scope: !416)
!425 = !DILocation(line: 42, column: 25, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !8, line: 42, column: 16)
!427 = !DILocation(line: 42, column: 16, scope: !423)
!428 = !DILocation(line: 45, column: 41, scope: !416)
!429 = !{!430, !430, i64 0}
!430 = !{!"short", !431, i64 0}
!431 = !{!"omnipotent char", !432, i64 0}
!432 = !{!"Simple C++ TBAA"}
!433 = !DILocation(line: 46, column: 1, scope: !416)
!434 = distinct !DISubprogram(name: "halide_get_default_thread_priority", scope: !8, file: !8, line: 48, type: !435, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!435 = !DISubroutineType(types: !436)
!436 = !{!406}
!437 = !DILocation(line: 49, column: 12, scope: !434)
!438 = !DILocation(line: 49, column: 5, scope: !434)
!439 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !8, file: !8, line: 52, type: !440, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!25, !12, !15}
!442 = !{!443, !444, !445, !446, !447}
!443 = !DILocalVariable(name: "f", arg: 1, scope: !439, file: !8, line: 52, type: !12)
!444 = !DILocalVariable(name: "closure", arg: 2, scope: !439, file: !8, line: 52, type: !15)
!445 = !DILocalVariable(name: "priority", scope: !439, file: !8, line: 53, type: !406)
!446 = !DILocalVariable(name: "t", scope: !439, file: !8, line: 54, type: !6)
!447 = !DILocalVariable(name: "thread_attr", scope: !439, file: !8, line: 59, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_thread_attr_t", file: !23, line: 67, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_qurt_thread_attr", file: !23, line: 52, size: 256, flags: DIFlagTypePassByValue, elements: !450, identifier: "_ZTS17_qurt_thread_attr")
!450 = !{!451, !455, !456, !457, !458, !459, !460, !461, !462}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !23, line: 54, baseType: !452, size: 128)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tcb_partition", scope: !449, file: !23, line: 55, baseType: !262, size: 8, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !449, file: !23, line: 57, baseType: !262, size: 8, offset: 136)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !449, file: !23, line: 59, baseType: !407, size: 16, offset: 144)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "asid", scope: !449, file: !23, line: 60, baseType: !262, size: 8, offset: 160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bus_priority", scope: !449, file: !23, line: 61, baseType: !262, size: 8, offset: 168)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "timetest_id", scope: !449, file: !23, line: 62, baseType: !407, size: 16, offset: 176)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !449, file: !23, line: 63, baseType: !24, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "stack_addr", scope: !449, file: !23, line: 64, baseType: !15, size: 32, offset: 224)
!463 = !DILocation(line: 0, scope: !439)
!464 = !DILocation(line: 53, column: 25, scope: !439)
!465 = !DILocation(line: 54, column: 43, scope: !439)
!466 = !DILocation(line: 55, column: 8, scope: !439)
!467 = !DILocation(line: 55, column: 10, scope: !439)
!468 = !{!469, !470, i64 0}
!469 = !{!"_ZTSN12_GLOBAL__N_114spawned_threadE", !470, i64 0, !470, i64 4, !470, i64 8, !471, i64 12}
!470 = !{!"any pointer", !431, i64 0}
!471 = !{!"_ZTS13halide_thread", !472, i64 0}
!472 = !{!"int", !431, i64 0}
!473 = !DILocation(line: 56, column: 8, scope: !439)
!474 = !DILocation(line: 56, column: 16, scope: !439)
!475 = !{!469, !470, i64 4}
!476 = !DILocation(line: 57, column: 16, scope: !439)
!477 = !DILocation(line: 57, column: 8, scope: !439)
!478 = !DILocation(line: 57, column: 14, scope: !439)
!479 = !{!469, !470, i64 8}
!480 = !DILocation(line: 58, column: 16, scope: !439)
!481 = !DILocation(line: 58, column: 5, scope: !439)
!482 = !DILocation(line: 59, column: 5, scope: !439)
!483 = !DILocation(line: 59, column: 24, scope: !439)
!484 = !DILocalVariable(name: "attr", arg: 1, scope: !485, file: !23, line: 96, type: !488)
!485 = distinct !DISubprogram(name: "qurt_thread_attr_init", linkageName: "_ZL21qurt_thread_attr_initP17_qurt_thread_attr", scope: !23, file: !23, line: 96, type: !486, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 32)
!489 = !{!484}
!490 = !DILocation(line: 0, scope: !485, inlinedAt: !491)
!491 = distinct !DILocation(line: 60, column: 5, scope: !439)
!492 = !DILocation(line: 98, column: 19, scope: !485, inlinedAt: !491)
!493 = !{!431, !431, i64 0}
!494 = !DILocation(line: 99, column: 11, scope: !485, inlinedAt: !491)
!495 = !DILocation(line: 99, column: 25, scope: !485, inlinedAt: !491)
!496 = !{!497, !431, i64 16}
!497 = !{!"_ZTS17_qurt_thread_attr", !431, i64 0, !431, i64 16, !431, i64 17, !430, i64 18, !431, i64 20, !431, i64 21, !430, i64 22, !472, i64 24, !470, i64 28}
!498 = !DILocation(line: 100, column: 11, scope: !485, inlinedAt: !491)
!499 = !DILocation(line: 101, column: 11, scope: !485, inlinedAt: !491)
!500 = !DILocation(line: 101, column: 16, scope: !485, inlinedAt: !491)
!501 = !{!497, !431, i64 20}
!502 = !DILocation(line: 102, column: 11, scope: !485, inlinedAt: !491)
!503 = !DILocation(line: 102, column: 20, scope: !485, inlinedAt: !491)
!504 = !{!497, !431, i64 17}
!505 = !DILocation(line: 103, column: 11, scope: !485, inlinedAt: !491)
!506 = !DILocation(line: 103, column: 24, scope: !485, inlinedAt: !491)
!507 = !{!497, !431, i64 21}
!508 = !DILocation(line: 104, column: 11, scope: !485, inlinedAt: !491)
!509 = !DILocation(line: 104, column: 23, scope: !485, inlinedAt: !491)
!510 = !{!497, !430, i64 22}
!511 = !DILocation(line: 105, column: 11, scope: !485, inlinedAt: !491)
!512 = !DILocation(line: 106, column: 11, scope: !485, inlinedAt: !491)
!513 = !DILocation(line: 61, column: 54, scope: !439)
!514 = !DILocalVariable(name: "attr", arg: 1, scope: !515, file: !23, line: 152, type: !488)
!515 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_addr", linkageName: "_ZL31qurt_thread_attr_set_stack_addrP17_qurt_thread_attrPv", scope: !23, file: !23, line: 152, type: !516, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !488, !15}
!518 = !{!514, !519}
!519 = !DILocalVariable(name: "stack_addr", arg: 2, scope: !515, file: !23, line: 152, type: !15)
!520 = !DILocation(line: 0, scope: !515, inlinedAt: !521)
!521 = distinct !DILocation(line: 61, column: 5, scope: !439)
!522 = !DILocation(line: 153, column: 22, scope: !515, inlinedAt: !521)
!523 = !{!497, !470, i64 28}
!524 = !DILocalVariable(name: "attr", arg: 1, scope: !525, file: !23, line: 127, type: !488)
!525 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_size", linkageName: "_ZL31qurt_thread_attr_set_stack_sizeP17_qurt_thread_attrj", scope: !23, file: !23, line: 127, type: !526, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !488, !24}
!528 = !{!524, !529}
!529 = !DILocalVariable(name: "stack_size", arg: 2, scope: !525, file: !23, line: 127, type: !24)
!530 = !DILocation(line: 0, scope: !525, inlinedAt: !531)
!531 = distinct !DILocation(line: 62, column: 5, scope: !439)
!532 = !DILocation(line: 128, column: 22, scope: !525, inlinedAt: !531)
!533 = !{!497, !472, i64 24}
!534 = !DILocalVariable(name: "attr", arg: 1, scope: !535, file: !23, line: 170, type: !488)
!535 = distinct !DISubprogram(name: "qurt_thread_attr_set_priority", linkageName: "_ZL29qurt_thread_attr_set_priorityP17_qurt_thread_attrt", scope: !23, file: !23, line: 170, type: !536, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !488, !407}
!538 = !{!534, !539}
!539 = !DILocalVariable(name: "priority", arg: 2, scope: !535, file: !23, line: 170, type: !407)
!540 = !DILocation(line: 0, scope: !535, inlinedAt: !541)
!541 = distinct !DILocation(line: 63, column: 5, scope: !439)
!542 = !DILocation(line: 171, column: 20, scope: !535, inlinedAt: !541)
!543 = !{!497, !430, i64 18}
!544 = !DILocation(line: 64, column: 35, scope: !439)
!545 = !DILocation(line: 64, column: 5, scope: !439)
!546 = !DILocation(line: 65, column: 12, scope: !439)
!547 = !DILocation(line: 66, column: 1, scope: !439)
!548 = !DILocation(line: 65, column: 5, scope: !439)
!549 = !DISubprogram(name: "malloc", scope: !27, file: !27, line: 87, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{!15, !24}
!552 = !DISubprogram(name: "memalign", scope: !8, file: !8, line: 28, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!553 = !DISubroutineType(types: !554)
!554 = !{!15, !24, !24}
!555 = !DISubprogram(name: "memset", scope: !27, file: !27, line: 96, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!556 = !DISubroutineType(types: !557)
!557 = !{!15, !15, !161, !24}
!558 = !DISubprogram(name: "qurt_thread_create", scope: !23, file: !23, line: 175, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!559 = !DISubroutineType(types: !560)
!560 = !{!161, !561, !562, !12, !15}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 32)
!563 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN12_GLOBAL__N_119spawn_thread_helperEPv", scope: !9, file: !8, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!564 = !{!565, !566}
!565 = !DILocalVariable(name: "arg", arg: 1, scope: !563, file: !8, line: 20, type: !15)
!566 = !DILocalVariable(name: "t", scope: !563, file: !8, line: 21, type: !6)
!567 = !DILocation(line: 0, scope: !563)
!568 = !DILocation(line: 22, column: 8, scope: !563)
!569 = !DILocation(line: 22, column: 13, scope: !563)
!570 = !DILocation(line: 22, column: 5, scope: !563)
!571 = !DILocation(line: 23, column: 1, scope: !563)
!572 = distinct !DISubprogram(name: "halide_join_thread", scope: !8, file: !8, line: 68, type: !573, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !25}
!575 = !{!576, !577, !578}
!576 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !572, file: !8, line: 68, type: !25)
!577 = !DILocalVariable(name: "t", scope: !572, file: !8, line: 69, type: !6)
!578 = !DILocalVariable(name: "ret", scope: !572, file: !8, line: 70, type: !161)
!579 = !DILocation(line: 0, scope: !572)
!580 = !DILocation(line: 70, column: 5, scope: !572)
!581 = !DILocation(line: 70, column: 9, scope: !572)
!582 = !{!472, !472, i64 0}
!583 = !DILocation(line: 71, column: 32, scope: !572)
!584 = !{!469, !472, i64 12}
!585 = !DILocation(line: 71, column: 5, scope: !572)
!586 = !DILocation(line: 72, column: 13, scope: !572)
!587 = !DILocation(line: 72, column: 5, scope: !572)
!588 = !DILocation(line: 73, column: 10, scope: !572)
!589 = !DILocation(line: 73, column: 5, scope: !572)
!590 = !DILocation(line: 74, column: 1, scope: !572)
!591 = !DISubprogram(name: "qurt_thread_join", scope: !23, file: !23, line: 194, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!592 = !DISubroutineType(types: !593)
!593 = !{!161, !24, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!595 = !DISubprogram(name: "free", scope: !27, file: !27, line: 86, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!596 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !109, file: !31, line: 321, type: !113, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !112, retainedNodes: !597)
!597 = !{!598, !600, !612, !613, !617, !618, !619}
!598 = !DILocalVariable(name: "this", arg: 1, scope: !596, type: !599, flags: DIFlagArtificial | DIFlagObjectPointer)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!600 = !DILocalVariable(name: "spinner", scope: !596, file: !31, line: 322, type: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !32, file: !31, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !602, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!602 = !{!603, !604, !608, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !601, file: !31, line: 231, baseType: !161, size: 32)
!604 = !DISubprogram(name: "spin_control", scope: !601, file: !31, line: 235, type: !605, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!608 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !601, file: !31, line: 237, type: !609, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!66, !607}
!611 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !601, file: !31, line: 244, type: !605, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DILocalVariable(name: "expected", scope: !596, file: !31, line: 323, type: !26)
!613 = !DILocalVariable(name: "desired", scope: !614, file: !31, line: 328, type: !26)
!614 = distinct !DILexicalBlock(scope: !615, file: !31, line: 327, column: 37)
!615 = distinct !DILexicalBlock(scope: !616, file: !31, line: 327, column: 13)
!616 = distinct !DILexicalBlock(scope: !596, file: !31, line: 326, column: 18)
!617 = !DILocalVariable(name: "node", scope: !616, file: !31, line: 342, type: !30)
!618 = !DILocalVariable(name: "head", scope: !616, file: !31, line: 347, type: !29)
!619 = !DILocalVariable(name: "desired", scope: !616, file: !31, line: 359, type: !26)
!620 = !DILocation(line: 0, scope: !596)
!621 = !DILocation(line: 324, column: 26, scope: !596)
!622 = !DILocation(line: 324, column: 5, scope: !596)
!623 = !DILocation(line: 326, column: 5, scope: !596)
!624 = !DILocation(line: 327, column: 13, scope: !616)
!625 = !DILocation(line: 327, column: 24, scope: !615)
!626 = !DILocation(line: 327, column: 14, scope: !615)
!627 = !DILocation(line: 328, column: 42, scope: !614)
!628 = !DILocation(line: 0, scope: !614)
!629 = !DILocalVariable(name: "addr", arg: 1, scope: !630, file: !31, line: 126, type: !173)
!630 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPjS4_S4_", scope: !631, file: !31, line: 126, type: !632, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !634)
!631 = !DINamespace(scope: !32)
!632 = !DISubroutineType(types: !633)
!633 = !{!66, !173, !173, !173}
!634 = !{!629, !635, !636}
!635 = !DILocalVariable(name: "expected", arg: 2, scope: !630, file: !31, line: 126, type: !173)
!636 = !DILocalVariable(name: "desired", arg: 3, scope: !630, file: !31, line: 126, type: !173)
!637 = !DILocation(line: 0, scope: !630, inlinedAt: !638)
!638 = distinct !DILocation(line: 330, column: 17, scope: !639)
!639 = distinct !DILexicalBlock(scope: !614, file: !31, line: 330, column: 17)
!640 = !DILocalVariable(name: "addr", arg: 1, scope: !641, file: !31, line: 102, type: !561)
!641 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIjEEbPT_S6_S6_", scope: !631, file: !31, line: 102, type: !642, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !649, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!66, !561, !561, !561}
!644 = !{!640, !645, !646, !647, !648}
!645 = !DILocalVariable(name: "expected", arg: 2, scope: !641, file: !31, line: 102, type: !561)
!646 = !DILocalVariable(name: "desired", arg: 3, scope: !641, file: !31, line: 102, type: !561)
!647 = !DILocalVariable(name: "oldval", scope: !641, file: !31, line: 103, type: !24)
!648 = !DILocalVariable(name: "gotval", scope: !641, file: !31, line: 104, type: !24)
!649 = !{!650}
!650 = !DITemplateTypeParameter(name: "T", type: !24)
!651 = !DILocation(line: 0, scope: !641, inlinedAt: !652)
!652 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !638)
!653 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !652)
!654 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !652)
!655 = !DILocation(line: 336, column: 67, scope: !656)
!656 = distinct !DILexicalBlock(scope: !616, file: !31, line: 336, column: 13)
!657 = !DILocation(line: 336, column: 73, scope: !656)
!658 = !DILocalVariable(name: "this", arg: 1, scope: !659, type: !661, flags: DIFlagArtificial | DIFlagObjectPointer)
!659 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !601, file: !31, line: 237, type: !609, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !608, retainedNodes: !660)
!660 = !{!658}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 32)
!662 = !DILocation(line: 0, scope: !659, inlinedAt: !663)
!663 = distinct !DILocation(line: 336, column: 84, scope: !656)
!664 = !DILocation(line: 241, column: 27, scope: !659, inlinedAt: !663)
!665 = !DILocation(line: 336, column: 13, scope: !616)
!666 = !DILocation(line: 239, column: 23, scope: !667, inlinedAt: !663)
!667 = distinct !DILexicalBlock(scope: !668, file: !31, line: 238, column: 29)
!668 = distinct !DILexicalBlock(scope: !659, file: !31, line: 238, column: 13)
!669 = !DILocation(line: 337, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !656, file: !31, line: 336, column: 99)
!671 = !DILocation(line: 338, column: 13, scope: !670)
!672 = !DILocation(line: 339, column: 13, scope: !670)
!673 = !DILocation(line: 342, column: 9, scope: !616)
!674 = !DILocation(line: 342, column: 30, scope: !616)
!675 = !DILocalVariable(name: "this", arg: 1, scope: !676, type: !29, flags: DIFlagArtificial | DIFlagObjectPointer)
!676 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !30, file: !31, line: 277, type: !97, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !96, retainedNodes: !677)
!677 = !{!675}
!678 = !DILocation(line: 0, scope: !676, inlinedAt: !679)
!679 = distinct !DILocation(line: 342, column: 30, scope: !616)
!680 = !DILocalVariable(name: "this", arg: 1, scope: !681, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!681 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !38, file: !8, line: 94, type: !85, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !84, retainedNodes: !682)
!682 = !{!680}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!684 = !DILocation(line: 0, scope: !681, inlinedAt: !685)
!685 = distinct !DILocation(line: 277, column: 19, scope: !676, inlinedAt: !679)
!686 = !DILocation(line: 87, column: 10, scope: !681, inlinedAt: !685)
!687 = !{!688, !689, i64 32}
!688 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !431, i64 0, !431, i64 16, !689, i64 32}
!689 = !{!"bool", !431, i64 0}
!690 = !DILocation(line: 95, column: 9, scope: !691, inlinedAt: !685)
!691 = distinct !DILexicalBlock(scope: !681, file: !8, line: 94, column: 35)
!692 = !DILocation(line: 96, column: 9, scope: !691, inlinedAt: !685)
!693 = !DILocation(line: 273, column: 27, scope: !676, inlinedAt: !679)
!694 = !{!695, !470, i64 40}
!695 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !688, i64 0, !470, i64 40, !470, i64 44, !470, i64 48}
!696 = !DILocation(line: 274, column: 27, scope: !676, inlinedAt: !679)
!697 = !{!695, !470, i64 44}
!698 = !DILocation(line: 275, column: 27, scope: !676, inlinedAt: !679)
!699 = !{!695, !470, i64 48}
!700 = !DILocalVariable(name: "this", arg: 1, scope: !701, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!701 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !38, file: !8, line: 105, type: !85, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !88, retainedNodes: !702)
!702 = !{!700}
!703 = !DILocation(line: 0, scope: !701, inlinedAt: !704)
!704 = distinct !DILocation(line: 344, column: 21, scope: !616)
!705 = !DILocation(line: 106, column: 21, scope: !701, inlinedAt: !704)
!706 = !DILocation(line: 347, column: 72, scope: !616)
!707 = !DILocation(line: 0, scope: !616)
!708 = !DILocation(line: 348, column: 18, scope: !709)
!709 = distinct !DILexicalBlock(scope: !616, file: !31, line: 348, column: 13)
!710 = !DILocation(line: 348, column: 13, scope: !616)
!711 = !DILocation(line: 349, column: 23, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !31, line: 348, column: 30)
!713 = !DILocation(line: 351, column: 9, scope: !712)
!714 = !DILocation(line: 347, column: 38, scope: !616)
!715 = !DILocation(line: 356, column: 23, scope: !716)
!716 = distinct !DILexicalBlock(scope: !709, file: !31, line: 351, column: 16)
!717 = !DILocation(line: 359, column: 60, scope: !616)
!718 = !DILocation(line: 359, column: 48, scope: !616)
!719 = !DILocalVariable(name: "addr", arg: 1, scope: !720, file: !31, line: 113, type: !173)
!720 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPjS4_S4_", scope: !631, file: !31, line: 113, type: !632, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!721 = !{!719, !722, !723}
!722 = !DILocalVariable(name: "expected", arg: 2, scope: !720, file: !31, line: 113, type: !173)
!723 = !DILocalVariable(name: "desired", arg: 3, scope: !720, file: !31, line: 113, type: !173)
!724 = !DILocation(line: 0, scope: !720, inlinedAt: !725)
!725 = distinct !DILocation(line: 360, column: 13, scope: !726)
!726 = distinct !DILexicalBlock(scope: !616, file: !31, line: 360, column: 13)
!727 = !DILocation(line: 0, scope: !641, inlinedAt: !728)
!728 = distinct !DILocation(line: 114, column: 12, scope: !720, inlinedAt: !725)
!729 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !728)
!730 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !728)
!731 = !DILocation(line: 360, column: 13, scope: !616)
!732 = !DILocalVariable(name: "this", arg: 1, scope: !733, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!733 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !38, file: !8, line: 109, type: !85, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !89, retainedNodes: !734)
!734 = !{!732}
!735 = !DILocation(line: 0, scope: !733, inlinedAt: !736)
!736 = distinct !DILocation(line: 361, column: 25, scope: !737)
!737 = distinct !DILexicalBlock(scope: !726, file: !31, line: 360, column: 75)
!738 = !DILocation(line: 110, column: 9, scope: !733, inlinedAt: !736)
!739 = !DILocation(line: 111, column: 16, scope: !733, inlinedAt: !736)
!740 = !{i8 0, i8 2}
!741 = !DILocation(line: 111, column: 9, scope: !733, inlinedAt: !736)
!742 = !DILocation(line: 112, column: 13, scope: !743, inlinedAt: !736)
!743 = distinct !DILexicalBlock(scope: !733, file: !8, line: 111, column: 29)
!744 = distinct !{!744, !741, !745, !746}
!745 = !DILocation(line: 113, column: 9, scope: !733, inlinedAt: !736)
!746 = !{!"llvm.loop.mustprogress"}
!747 = !DILocation(line: 114, column: 9, scope: !733, inlinedAt: !736)
!748 = !DILocation(line: 363, column: 13, scope: !737)
!749 = !DILocation(line: 364, column: 9, scope: !737)
!750 = !DILocation(line: 0, scope: !726)
!751 = !DILocalVariable(name: "this", arg: 1, scope: !752, type: !29, flags: DIFlagArtificial | DIFlagObjectPointer)
!752 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !30, file: !31, line: 280, type: !97, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !100, retainedNodes: !753)
!753 = !{!751}
!754 = !DILocation(line: 0, scope: !752, inlinedAt: !755)
!755 = distinct !DILocation(line: 365, column: 5, scope: !596)
!756 = !DILocalVariable(name: "this", arg: 1, scope: !757, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!757 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !38, file: !8, line: 100, type: !85, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !87, retainedNodes: !758)
!758 = !{!756}
!759 = !DILocation(line: 0, scope: !757, inlinedAt: !760)
!760 = distinct !DILocation(line: 280, column: 51, scope: !761, inlinedAt: !755)
!761 = distinct !DILexicalBlock(scope: !752, file: !31, line: 280, column: 51)
!762 = !DILocation(line: 101, column: 9, scope: !763, inlinedAt: !760)
!763 = distinct !DILexicalBlock(scope: !757, file: !8, line: 100, column: 36)
!764 = !DILocation(line: 102, column: 9, scope: !763, inlinedAt: !760)
!765 = !DILocation(line: 365, column: 5, scope: !596)
!766 = distinct !{!766, !623, !765}
!767 = !DILocation(line: 366, column: 1, scope: !596)
!768 = !DISubprogram(name: "halide_thread_yield", scope: !27, file: !27, line: 190, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!769 = !DISubroutineType(types: !770)
!770 = !{null}
!771 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !109, file: !31, line: 368, type: !113, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !116, retainedNodes: !772)
!772 = !{!773, !774, !775, !777, !778, !779, !781, !782, !783, !784, !786, !789, !790, !793}
!773 = !DILocalVariable(name: "this", arg: 1, scope: !771, type: !599, flags: DIFlagArtificial | DIFlagObjectPointer)
!774 = !DILocalVariable(name: "expected", scope: !771, file: !31, line: 369, type: !26)
!775 = !DILocalVariable(name: "thread_queuing", scope: !776, file: !31, line: 375, type: !66)
!776 = distinct !DILexicalBlock(scope: !771, file: !31, line: 372, column: 18)
!777 = !DILocalVariable(name: "none_queued", scope: !776, file: !31, line: 377, type: !66)
!778 = !DILocalVariable(name: "desired", scope: !776, file: !31, line: 382, type: !26)
!779 = !DILocalVariable(name: "head", scope: !780, file: !31, line: 389, type: !29)
!780 = distinct !DILexicalBlock(scope: !771, file: !31, line: 388, column: 18)
!781 = !DILocalVariable(name: "current", scope: !780, file: !31, line: 390, type: !29)
!782 = !DILocalVariable(name: "tail", scope: !780, file: !31, line: 391, type: !29)
!783 = !DILocalVariable(name: "times_through", scope: !780, file: !31, line: 392, type: !161)
!784 = !DILocalVariable(name: "next", scope: !785, file: !31, line: 394, type: !29)
!785 = distinct !DILexicalBlock(scope: !780, file: !31, line: 393, column: 33)
!786 = !DILocalVariable(name: "desired", scope: !787, file: !31, line: 406, type: !26)
!787 = distinct !DILexicalBlock(scope: !788, file: !31, line: 405, column: 34)
!788 = distinct !DILexicalBlock(scope: !780, file: !31, line: 405, column: 13)
!789 = !DILocalVariable(name: "new_tail", scope: !780, file: !31, line: 414, type: !29)
!790 = !DILocalVariable(name: "continue_outer", scope: !791, file: !31, line: 416, type: !66)
!791 = distinct !DILexicalBlock(scope: !792, file: !31, line: 415, column: 34)
!792 = distinct !DILexicalBlock(scope: !780, file: !31, line: 415, column: 13)
!793 = !DILocalVariable(name: "desired", scope: !794, file: !31, line: 418, type: !26)
!794 = distinct !DILexicalBlock(scope: !791, file: !31, line: 417, column: 37)
!795 = !DILocation(line: 0, scope: !771)
!796 = !DILocation(line: 370, column: 26, scope: !771)
!797 = !DILocation(line: 370, column: 5, scope: !771)
!798 = !DILocalVariable(name: "addr", arg: 1, scope: !799, file: !31, line: 135, type: !561)
!799 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIjEEvPT_S6_", scope: !631, file: !31, line: 135, type: !800, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !649, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !561, !561}
!802 = !{!798, !803}
!803 = !DILocalVariable(name: "val", arg: 2, scope: !799, file: !31, line: 135, type: !561)
!804 = !DILocation(line: 0, scope: !799, inlinedAt: !805)
!805 = distinct !DILocation(line: 370, column: 5, scope: !771)
!806 = !DILocation(line: 372, column: 5, scope: !771)
!807 = !DILocation(line: 136, column: 10, scope: !799, inlinedAt: !805)
!808 = !DILocation(line: 375, column: 41, scope: !776)
!809 = !DILocation(line: 375, column: 31, scope: !776)
!810 = !DILocation(line: 0, scope: !776)
!811 = !DILocation(line: 378, column: 28, scope: !812)
!812 = distinct !DILexicalBlock(scope: !776, file: !31, line: 378, column: 13)
!813 = !DILocation(line: 382, column: 38, scope: !776)
!814 = !DILocation(line: 0, scope: !630, inlinedAt: !815)
!815 = distinct !DILocation(line: 383, column: 13, scope: !816)
!816 = distinct !DILexicalBlock(scope: !776, file: !31, line: 383, column: 13)
!817 = !DILocation(line: 0, scope: !641, inlinedAt: !818)
!818 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !815)
!819 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !818)
!820 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !818)
!821 = !DILocation(line: 389, column: 72, scope: !780)
!822 = !DILocation(line: 389, column: 38, scope: !780)
!823 = !DILocation(line: 0, scope: !780)
!824 = !DILocation(line: 391, column: 47, scope: !780)
!825 = !DILocation(line: 393, column: 21, scope: !780)
!826 = !DILocation(line: 393, column: 9, scope: !780)
!827 = !DILocation(line: 394, column: 51, scope: !785)
!828 = !DILocation(line: 0, scope: !785)
!829 = !DILocation(line: 395, column: 13, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !31, line: 395, column: 13)
!831 = distinct !DILexicalBlock(scope: !785, file: !31, line: 395, column: 13)
!832 = !DILocation(line: 395, column: 13, scope: !831)
!833 = !DILocation(line: 395, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !31, line: 395, column: 13)
!835 = !DILocation(line: 396, column: 19, scope: !785)
!836 = !DILocation(line: 396, column: 24, scope: !785)
!837 = !DILocation(line: 398, column: 29, scope: !785)
!838 = distinct !{!838, !826, !839, !746}
!839 = !DILocation(line: 400, column: 9, scope: !780)
!840 = !DILocation(line: 401, column: 20, scope: !780)
!841 = !DILocation(line: 405, column: 22, scope: !788)
!842 = !DILocation(line: 405, column: 13, scope: !788)
!843 = !DILocation(line: 405, column: 13, scope: !780)
!844 = !DILocation(line: 406, column: 42, scope: !787)
!845 = !DILocation(line: 0, scope: !787)
!846 = !DILocalVariable(name: "addr", arg: 1, scope: !847, file: !31, line: 118, type: !561)
!847 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIjEEbPT_S6_S6_", scope: !631, file: !31, line: 118, type: !642, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !649, retainedNodes: !848)
!848 = !{!846, !849, !850}
!849 = !DILocalVariable(name: "expected", arg: 2, scope: !847, file: !31, line: 118, type: !561)
!850 = !DILocalVariable(name: "desired", arg: 3, scope: !847, file: !31, line: 118, type: !561)
!851 = !DILocation(line: 0, scope: !847, inlinedAt: !852)
!852 = distinct !DILocation(line: 407, column: 17, scope: !853)
!853 = distinct !DILexicalBlock(scope: !787, file: !31, line: 407, column: 17)
!854 = !DILocation(line: 0, scope: !641, inlinedAt: !855)
!855 = distinct !DILocation(line: 119, column: 12, scope: !847, inlinedAt: !852)
!856 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !855)
!857 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !855)
!858 = !DILocation(line: 407, column: 17, scope: !787)
!859 = distinct !{!859, !860, !861}
!860 = !DILocation(line: 388, column: 5, scope: !771)
!861 = !DILocation(line: 445, column: 5, scope: !771)
!862 = !DILocation(line: 414, column: 48, scope: !780)
!863 = !DILocation(line: 415, column: 22, scope: !792)
!864 = !DILocation(line: 415, column: 13, scope: !780)
!865 = !DILocation(line: 418, column: 46, scope: !794)
!866 = !DILocation(line: 0, scope: !794)
!867 = !DILocation(line: 0, scope: !847, inlinedAt: !868)
!868 = distinct !DILocation(line: 419, column: 21, scope: !869)
!869 = distinct !DILexicalBlock(scope: !794, file: !31, line: 419, column: 21)
!870 = !DILocation(line: 0, scope: !641, inlinedAt: !871)
!871 = distinct !DILocation(line: 119, column: 12, scope: !847, inlinedAt: !868)
!872 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !871)
!873 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !871)
!874 = !DILocation(line: 419, column: 21, scope: !794)
!875 = !DILocation(line: 422, column: 74, scope: !876)
!876 = distinct !DILexicalBlock(scope: !794, file: !31, line: 422, column: 21)
!877 = !DILocation(line: 422, column: 21, scope: !794)
!878 = distinct !{!878, !879, !880, !746}
!879 = !DILocation(line: 417, column: 13, scope: !791)
!880 = !DILocation(line: 428, column: 13, scope: !791)
!881 = !DILocation(line: 434, column: 24, scope: !882)
!882 = distinct !DILexicalBlock(scope: !792, file: !31, line: 433, column: 16)
!883 = !DILocalVariable(name: "addr", arg: 1, scope: !884, file: !31, line: 92, type: !173)
!884 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPjj", scope: !631, file: !31, line: 92, type: !885, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{!26, !173, !26}
!887 = !{!883, !888}
!888 = !DILocalVariable(name: "val", arg: 2, scope: !884, file: !31, line: 92, type: !26)
!889 = !DILocation(line: 0, scope: !884, inlinedAt: !890)
!890 = distinct !DILocation(line: 435, column: 13, scope: !882)
!891 = !DILocation(line: 93, column: 12, scope: !884, inlinedAt: !890)
!892 = !DILocalVariable(name: "this", arg: 1, scope: !893, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!893 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !38, file: !8, line: 117, type: !85, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !90, retainedNodes: !894)
!894 = !{!892}
!895 = !DILocation(line: 0, scope: !893, inlinedAt: !896)
!896 = distinct !DILocation(line: 441, column: 22, scope: !780)
!897 = !DILocation(line: 118, column: 26, scope: !893, inlinedAt: !896)
!898 = !DILocation(line: 118, column: 9, scope: !893, inlinedAt: !896)
!899 = !DILocalVariable(name: "this", arg: 1, scope: !900, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !38, file: !8, line: 121, type: !85, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !91, retainedNodes: !901)
!901 = !{!899}
!902 = !DILocation(line: 0, scope: !900, inlinedAt: !903)
!903 = distinct !DILocation(line: 442, column: 22, scope: !780)
!904 = !DILocation(line: 122, column: 9, scope: !900, inlinedAt: !903)
!905 = !DILocation(line: 122, column: 21, scope: !900, inlinedAt: !903)
!906 = !DILocation(line: 123, column: 27, scope: !900, inlinedAt: !903)
!907 = !DILocation(line: 123, column: 9, scope: !900, inlinedAt: !903)
!908 = !DILocalVariable(name: "this", arg: 1, scope: !909, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!909 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !38, file: !8, line: 126, type: !85, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !92, retainedNodes: !910)
!910 = !{!908}
!911 = !DILocation(line: 0, scope: !909, inlinedAt: !912)
!912 = distinct !DILocation(line: 443, column: 22, scope: !780)
!913 = !DILocation(line: 127, column: 9, scope: !909, inlinedAt: !912)
!914 = !DILocation(line: 444, column: 9, scope: !780)
!915 = !DILocation(line: 0, scope: !791)
!916 = !DILocation(line: 446, column: 1, scope: !771)
!917 = !DISubprogram(name: "halide_print", scope: !242, file: !242, line: 97, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !15, !265}
!920 = !DISubprogram(name: "abort", scope: !27, file: !27, line: 108, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!921 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj", scope: !32, file: !31, line: 509, type: !922, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!922 = !DISubroutineType(types: !923)
!923 = !{!924, !26}
!924 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 32)
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(name: "addr", arg: 1, scope: !921, file: !31, line: 509, type: !26)
!927 = !DILocalVariable(name: "hash", scope: !921, file: !31, line: 510, type: !26)
!928 = !DILocalVariable(name: "bucket", scope: !921, file: !31, line: 515, type: !924)
!929 = !DILocation(line: 0, scope: !921)
!930 = !DILocalVariable(name: "addr", arg: 1, scope: !931, file: !31, line: 499, type: !26)
!931 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEjj", scope: !32, file: !31, line: 499, type: !932, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{!26, !26, !28}
!934 = !{!930, !935}
!935 = !DILocalVariable(name: "bits", arg: 2, scope: !931, file: !31, line: 499, type: !28)
!936 = !DILocation(line: 0, scope: !931, inlinedAt: !937)
!937 = distinct !DILocation(line: 510, column: 22, scope: !921)
!938 = !DILocation(line: 505, column: 22, scope: !939, inlinedAt: !937)
!939 = distinct !DILexicalBlock(scope: !940, file: !31, line: 504, column: 12)
!940 = distinct !DILexicalBlock(scope: !931, file: !31, line: 502, column: 9)
!941 = !DILocation(line: 505, column: 47, scope: !939, inlinedAt: !937)
!942 = !DILocation(line: 515, column: 27, scope: !921)
!943 = !DILocalVariable(name: "this", arg: 1, scope: !944, type: !599, flags: DIFlagArtificial | DIFlagObjectPointer)
!944 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !109, file: !31, line: 291, type: !113, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !118, retainedNodes: !945)
!945 = !{!943, !946, !947}
!946 = !DILocalVariable(name: "expected", scope: !944, file: !31, line: 294, type: !26)
!947 = !DILocalVariable(name: "desired", scope: !944, file: !31, line: 295, type: !26)
!948 = !DILocation(line: 0, scope: !944, inlinedAt: !949)
!949 = distinct !DILocation(line: 517, column: 18, scope: !921)
!950 = !DILocation(line: 297, column: 47, scope: !951, inlinedAt: !949)
!951 = distinct !DILexicalBlock(scope: !944, file: !31, line: 297, column: 13)
!952 = !DILocation(line: 0, scope: !630, inlinedAt: !953)
!953 = distinct !DILocation(line: 297, column: 14, scope: !951, inlinedAt: !949)
!954 = !DILocation(line: 0, scope: !641, inlinedAt: !955)
!955 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !953)
!956 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !955)
!957 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !955)
!958 = !DILocation(line: 297, column: 13, scope: !944, inlinedAt: !949)
!959 = !DILocation(line: 517, column: 12, scope: !921)
!960 = !DILocation(line: 298, column: 13, scope: !961, inlinedAt: !949)
!961 = distinct !DILexicalBlock(scope: !951, file: !31, line: 297, column: 76)
!962 = !DILocation(line: 299, column: 9, scope: !961, inlinedAt: !949)
!963 = !DILocation(line: 519, column: 5, scope: !921)
!964 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj", scope: !32, file: !31, line: 531, type: !965, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !975)
!965 = !DISubroutineType(types: !966)
!966 = !{!967, !26, !26}
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !32, file: !31, line: 522, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !968, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !967, file: !31, line: 523, baseType: !924, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !967, file: !31, line: 524, baseType: !924, size: 32, offset: 32)
!971 = !DISubprogram(name: "bucket_pair", scope: !967, file: !31, line: 526, type: !972, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !974, !924, !924}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!975 = !{!976, !977, !978, !979, !980, !983, !986, !987, !989}
!976 = !DILocalVariable(name: "addr_from", arg: 1, scope: !964, file: !31, line: 531, type: !26)
!977 = !DILocalVariable(name: "addr_to", arg: 2, scope: !964, file: !31, line: 531, type: !26)
!978 = !DILocalVariable(name: "hash_from", scope: !964, file: !31, line: 533, type: !26)
!979 = !DILocalVariable(name: "hash_to", scope: !964, file: !31, line: 534, type: !26)
!980 = !DILocalVariable(name: "first", scope: !981, file: !31, line: 542, type: !924)
!981 = distinct !DILexicalBlock(scope: !982, file: !31, line: 541, column: 31)
!982 = distinct !DILexicalBlock(scope: !964, file: !31, line: 541, column: 9)
!983 = !DILocalVariable(name: "first", scope: !984, file: !31, line: 546, type: !924)
!984 = distinct !DILexicalBlock(scope: !985, file: !31, line: 545, column: 37)
!985 = distinct !DILexicalBlock(scope: !982, file: !31, line: 545, column: 16)
!986 = !DILocalVariable(name: "second", scope: !984, file: !31, line: 547, type: !924)
!987 = !DILocalVariable(name: "first", scope: !988, file: !31, line: 552, type: !924)
!988 = distinct !DILexicalBlock(scope: !985, file: !31, line: 551, column: 12)
!989 = !DILocalVariable(name: "second", scope: !988, file: !31, line: 553, type: !924)
!990 = !DILocation(line: 0, scope: !964)
!991 = !DILocation(line: 0, scope: !931, inlinedAt: !992)
!992 = distinct !DILocation(line: 533, column: 27, scope: !964)
!993 = !DILocation(line: 505, column: 22, scope: !939, inlinedAt: !992)
!994 = !DILocation(line: 505, column: 47, scope: !939, inlinedAt: !992)
!995 = !DILocation(line: 0, scope: !931, inlinedAt: !996)
!996 = distinct !DILocation(line: 534, column: 25, scope: !964)
!997 = !DILocation(line: 505, column: 22, scope: !939, inlinedAt: !996)
!998 = !DILocation(line: 505, column: 47, scope: !939, inlinedAt: !996)
!999 = !DILocation(line: 541, column: 19, scope: !982)
!1000 = !DILocation(line: 541, column: 9, scope: !964)
!1001 = !DILocation(line: 542, column: 30, scope: !981)
!1002 = !DILocation(line: 0, scope: !981)
!1003 = !DILocation(line: 0, scope: !944, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 543, column: 21, scope: !981)
!1005 = !DILocation(line: 297, column: 47, scope: !951, inlinedAt: !1004)
!1006 = !DILocation(line: 0, scope: !630, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 297, column: 14, scope: !951, inlinedAt: !1004)
!1008 = !DILocation(line: 0, scope: !641, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1007)
!1010 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1009)
!1011 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1009)
!1012 = !DILocation(line: 297, column: 13, scope: !944, inlinedAt: !1004)
!1013 = !DILocation(line: 543, column: 15, scope: !981)
!1014 = !DILocation(line: 298, column: 13, scope: !961, inlinedAt: !1004)
!1015 = !DILocation(line: 299, column: 9, scope: !961, inlinedAt: !1004)
!1016 = !DILocation(line: 545, column: 26, scope: !985)
!1017 = !DILocation(line: 545, column: 16, scope: !982)
!1018 = !DILocation(line: 546, column: 30, scope: !984)
!1019 = !DILocation(line: 0, scope: !984)
!1020 = !DILocation(line: 547, column: 31, scope: !984)
!1021 = !DILocation(line: 0, scope: !944, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 548, column: 21, scope: !984)
!1023 = !DILocation(line: 297, column: 47, scope: !951, inlinedAt: !1022)
!1024 = !DILocation(line: 0, scope: !630, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 297, column: 14, scope: !951, inlinedAt: !1022)
!1026 = !DILocation(line: 0, scope: !641, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1025)
!1028 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1027)
!1029 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1027)
!1030 = !DILocation(line: 297, column: 13, scope: !944, inlinedAt: !1022)
!1031 = !DILocation(line: 548, column: 15, scope: !984)
!1032 = !DILocation(line: 298, column: 13, scope: !961, inlinedAt: !1022)
!1033 = !DILocation(line: 299, column: 9, scope: !961, inlinedAt: !1022)
!1034 = !DILocation(line: 0, scope: !944, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 549, column: 22, scope: !984)
!1036 = !DILocation(line: 297, column: 47, scope: !951, inlinedAt: !1035)
!1037 = !DILocation(line: 0, scope: !630, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 297, column: 14, scope: !951, inlinedAt: !1035)
!1039 = !DILocation(line: 0, scope: !641, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1038)
!1041 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1040)
!1042 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1040)
!1043 = !DILocation(line: 297, column: 13, scope: !944, inlinedAt: !1035)
!1044 = !DILocation(line: 549, column: 16, scope: !984)
!1045 = !DILocation(line: 298, column: 13, scope: !961, inlinedAt: !1035)
!1046 = !DILocation(line: 299, column: 9, scope: !961, inlinedAt: !1035)
!1047 = !DILocation(line: 552, column: 30, scope: !988)
!1048 = !DILocation(line: 0, scope: !988)
!1049 = !DILocation(line: 553, column: 31, scope: !988)
!1050 = !DILocation(line: 0, scope: !944, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 554, column: 21, scope: !988)
!1052 = !DILocation(line: 297, column: 47, scope: !951, inlinedAt: !1051)
!1053 = !DILocation(line: 0, scope: !630, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 297, column: 14, scope: !951, inlinedAt: !1051)
!1055 = !DILocation(line: 0, scope: !641, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1054)
!1057 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1056)
!1058 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1056)
!1059 = !DILocation(line: 297, column: 13, scope: !944, inlinedAt: !1051)
!1060 = !DILocation(line: 554, column: 15, scope: !988)
!1061 = !DILocation(line: 298, column: 13, scope: !961, inlinedAt: !1051)
!1062 = !DILocation(line: 299, column: 9, scope: !961, inlinedAt: !1051)
!1063 = !DILocation(line: 0, scope: !944, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 555, column: 22, scope: !988)
!1065 = !DILocation(line: 297, column: 47, scope: !951, inlinedAt: !1064)
!1066 = !DILocation(line: 0, scope: !630, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 297, column: 14, scope: !951, inlinedAt: !1064)
!1068 = !DILocation(line: 0, scope: !641, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1067)
!1070 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1069)
!1071 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1069)
!1072 = !DILocation(line: 297, column: 13, scope: !944, inlinedAt: !1064)
!1073 = !DILocation(line: 555, column: 16, scope: !988)
!1074 = !DILocation(line: 298, column: 13, scope: !961, inlinedAt: !1064)
!1075 = !DILocation(line: 299, column: 9, scope: !961, inlinedAt: !1064)
!1076 = !DILocation(line: 0, scope: !982)
!1077 = !{!470, !470, i64 0}
!1078 = !DILocation(line: 558, column: 1, scope: !964)
!1079 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !32, file: !31, line: 560, type: !1080, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !967, size: 32)
!1083 = !{!1084}
!1084 = !DILocalVariable(name: "buckets", arg: 1, scope: !1079, file: !31, line: 560, type: !1082)
!1085 = !DILocation(line: 0, scope: !1079)
!1086 = !DILocation(line: 565, column: 18, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1079, file: !31, line: 565, column: 9)
!1088 = !{!1089, !470, i64 0}
!1089 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !470, i64 0, !470, i64 4}
!1090 = !DILocation(line: 565, column: 35, scope: !1087)
!1091 = !{!1089, !470, i64 4}
!1092 = !DILocation(line: 565, column: 23, scope: !1087)
!1093 = !DILocation(line: 565, column: 9, scope: !1079)
!1094 = !DILocalVariable(name: "this", arg: 1, scope: !1095, type: !599, flags: DIFlagArtificial | DIFlagObjectPointer)
!1095 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !109, file: !31, line: 304, type: !113, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !119, retainedNodes: !1096)
!1096 = !{!1094, !1097, !1098, !1099}
!1097 = !DILocalVariable(name: "val", scope: !1095, file: !31, line: 307, type: !26)
!1098 = !DILocalVariable(name: "no_thread_queuing", scope: !1095, file: !31, line: 310, type: !66)
!1099 = !DILocalVariable(name: "some_queued", scope: !1095, file: !31, line: 312, type: !66)
!1100 = !DILocation(line: 0, scope: !1095, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 566, column: 28, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1087, file: !31, line: 565, column: 39)
!1103 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1101)
!1104 = !DILocalVariable(name: "addr", arg: 1, scope: !1105, file: !31, line: 130, type: !173)
!1105 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPjj", scope: !631, file: !31, line: 130, type: !885, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1106 = !{!1104, !1107}
!1107 = !DILocalVariable(name: "val", arg: 2, scope: !1105, file: !31, line: 130, type: !26)
!1108 = !DILocation(line: 0, scope: !1105, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1101)
!1110 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1109)
!1111 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1101)
!1112 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1101)
!1113 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1101)
!1114 = distinct !DILexicalBlock(scope: !1095, file: !31, line: 313, column: 13)
!1115 = !DILocation(line: 566, column: 22, scope: !1102)
!1116 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1101)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !31, line: 313, column: 47)
!1118 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1101)
!1119 = !DILocation(line: 567, column: 30, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1087, file: !31, line: 567, column: 16)
!1121 = !DILocation(line: 567, column: 16, scope: !1087)
!1122 = !DILocation(line: 0, scope: !1095, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 568, column: 28, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !31, line: 567, column: 45)
!1125 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1123)
!1126 = !DILocation(line: 0, scope: !1105, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1123)
!1128 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1127)
!1129 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1123)
!1130 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1123)
!1131 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1123)
!1132 = !DILocation(line: 568, column: 22, scope: !1124)
!1133 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1123)
!1134 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1123)
!1135 = !DILocation(line: 569, column: 17, scope: !1124)
!1136 = !DILocation(line: 0, scope: !1095, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 569, column: 26, scope: !1124)
!1138 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1137)
!1139 = !DILocation(line: 0, scope: !1105, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1137)
!1141 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1140)
!1142 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1137)
!1143 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1137)
!1144 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1137)
!1145 = !DILocation(line: 569, column: 20, scope: !1124)
!1146 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1137)
!1147 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1137)
!1148 = !DILocation(line: 0, scope: !1095, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 571, column: 26, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1120, file: !31, line: 570, column: 12)
!1151 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1149)
!1152 = !DILocation(line: 0, scope: !1105, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1149)
!1154 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1153)
!1155 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1149)
!1156 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1149)
!1157 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1149)
!1158 = !DILocation(line: 571, column: 20, scope: !1150)
!1159 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1149)
!1160 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1149)
!1161 = !DILocation(line: 572, column: 17, scope: !1150)
!1162 = !DILocation(line: 0, scope: !1095, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 572, column: 28, scope: !1150)
!1164 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1163)
!1165 = !DILocation(line: 0, scope: !1105, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1163)
!1167 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1166)
!1168 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1163)
!1169 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1163)
!1170 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1163)
!1171 = !DILocation(line: 572, column: 22, scope: !1150)
!1172 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1163)
!1173 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1163)
!1174 = !DILocation(line: 574, column: 1, scope: !1079)
!1175 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 583, type: !145, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1176 = !{!1177, !1178}
!1177 = !DILocalVariable(name: "control", arg: 1, scope: !1175, file: !31, line: 583, type: !15)
!1178 = !DILocalVariable(name: "action", arg: 2, scope: !1175, file: !31, line: 583, type: !147)
!1179 = !DILocation(line: 0, scope: !1175)
!1180 = !DILocation(line: 584, column: 5, scope: !1175)
!1181 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !32, file: !31, line: 586, type: !13, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1182 = !{!1183}
!1183 = !DILocalVariable(name: "control", arg: 1, scope: !1181, file: !31, line: 586, type: !15)
!1184 = !DILocation(line: 0, scope: !1181)
!1185 = !DILocation(line: 586, column: 55, scope: !1181)
!1186 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !32, file: !31, line: 587, type: !159, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1187)
!1187 = !{!1188, !1189, !1190}
!1188 = !DILocalVariable(name: "control", arg: 1, scope: !1186, file: !31, line: 587, type: !15)
!1189 = !DILocalVariable(name: "unparked", arg: 2, scope: !1186, file: !31, line: 587, type: !161)
!1190 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1186, file: !31, line: 587, type: !66)
!1191 = !DILocation(line: 0, scope: !1186)
!1192 = !DILocation(line: 588, column: 5, scope: !1186)
!1193 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !32, file: !31, line: 590, type: !164, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1194)
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DILocalVariable(name: "control", arg: 1, scope: !1193, file: !31, line: 590, type: !15)
!1196 = !DILocalVariable(name: "action", arg: 2, scope: !1193, file: !31, line: 590, type: !166)
!1197 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1193, file: !31, line: 590, type: !66)
!1198 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1193, file: !31, line: 590, type: !66)
!1199 = !DILocation(line: 0, scope: !1193)
!1200 = !DILocation(line: 590, column: 128, scope: !1193)
!1201 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE", scope: !32, file: !31, line: 605, type: !1202, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!26, !26, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !141, size: 32)
!1205 = !{!1206, !1207, !1208, !1209, !1210}
!1206 = !DILocalVariable(name: "addr", arg: 1, scope: !1201, file: !31, line: 605, type: !26)
!1207 = !DILocalVariable(name: "control", arg: 2, scope: !1201, file: !31, line: 605, type: !1204)
!1208 = !DILocalVariable(name: "queue_data", scope: !1201, file: !31, line: 606, type: !122)
!1209 = !DILocalVariable(name: "bucket", scope: !1201, file: !31, line: 608, type: !924)
!1210 = !DILocalVariable(name: "action", scope: !1201, file: !31, line: 610, type: !148)
!1211 = !DILocation(line: 0, scope: !1201)
!1212 = !DILocation(line: 606, column: 5, scope: !1201)
!1213 = !DILocation(line: 606, column: 16, scope: !1201)
!1214 = !DILocalVariable(name: "this", arg: 1, scope: !1215, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1215 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !122, file: !31, line: 455, type: !129, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !128, retainedNodes: !1216)
!1216 = !{!1214}
!1217 = !DILocation(line: 0, scope: !1215, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 606, column: 16, scope: !1201)
!1219 = !DILocation(line: 0, scope: !681, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 455, column: 19, scope: !1215, inlinedAt: !1218)
!1221 = !DILocation(line: 87, column: 10, scope: !681, inlinedAt: !1220)
!1222 = !DILocation(line: 95, column: 26, scope: !691, inlinedAt: !1220)
!1223 = !DILocation(line: 95, column: 9, scope: !691, inlinedAt: !1220)
!1224 = !DILocation(line: 96, column: 25, scope: !691, inlinedAt: !1220)
!1225 = !DILocation(line: 96, column: 9, scope: !691, inlinedAt: !1220)
!1226 = !DILocation(line: 97, column: 21, scope: !691, inlinedAt: !1220)
!1227 = !DILocation(line: 451, column: 15, scope: !1215, inlinedAt: !1218)
!1228 = !{!1229, !472, i64 40}
!1229 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !688, i64 0, !472, i64 40, !470, i64 44, !472, i64 48}
!1230 = !DILocation(line: 452, column: 17, scope: !1215, inlinedAt: !1218)
!1231 = !{!1229, !470, i64 44}
!1232 = !DILocation(line: 453, column: 15, scope: !1215, inlinedAt: !1218)
!1233 = !{!1229, !472, i64 48}
!1234 = !DILocation(line: 608, column: 27, scope: !1201)
!1235 = !DILocation(line: 610, column: 5, scope: !1201)
!1236 = !DILocation(line: 610, column: 21, scope: !1201)
!1237 = !DILocalVariable(name: "this", arg: 1, scope: !1238, type: !1240, flags: DIFlagArtificial | DIFlagObjectPointer)
!1238 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !148, file: !31, line: 580, type: !153, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !152, retainedNodes: !1239)
!1239 = !{!1237}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!1241 = !DILocation(line: 0, scope: !1238, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 610, column: 21, scope: !1201)
!1243 = !DILocation(line: 577, column: 10, scope: !1238, inlinedAt: !1242)
!1244 = !{!1245, !689, i64 0}
!1245 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !689, i64 0, !472, i64 4}
!1246 = !DILocation(line: 578, column: 15, scope: !1238, inlinedAt: !1242)
!1247 = !{!1245, !472, i64 4}
!1248 = !DILocation(line: 611, column: 18, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1201, file: !31, line: 611, column: 9)
!1250 = !{!1251, !470, i64 0}
!1251 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !470, i64 0, !470, i64 4, !470, i64 8, !470, i64 12}
!1252 = !DILocation(line: 611, column: 27, scope: !1249)
!1253 = !DILocation(line: 611, column: 10, scope: !1249)
!1254 = !DILocation(line: 611, column: 9, scope: !1201)
!1255 = !DILocation(line: 0, scope: !1095, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 612, column: 22, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !31, line: 611, column: 46)
!1258 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1256)
!1259 = !DILocation(line: 0, scope: !1105, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1256)
!1261 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1260)
!1262 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1256)
!1263 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1256)
!1264 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1256)
!1265 = !DILocation(line: 612, column: 16, scope: !1257)
!1266 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1256)
!1267 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1256)
!1268 = !DILocation(line: 613, column: 23, scope: !1257)
!1269 = !DILocation(line: 613, column: 9, scope: !1257)
!1270 = !DILocation(line: 616, column: 21, scope: !1201)
!1271 = !DILocation(line: 617, column: 30, scope: !1201)
!1272 = !DILocation(line: 0, scope: !701, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 618, column: 23, scope: !1201)
!1274 = !DILocation(line: 106, column: 21, scope: !701, inlinedAt: !1273)
!1275 = !DILocation(line: 619, column: 16, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1201, file: !31, line: 619, column: 9)
!1277 = !{!1278, !470, i64 4}
!1278 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1279, i64 0, !470, i64 4, !470, i64 8}
!1279 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !472, i64 0}
!1280 = !DILocation(line: 619, column: 21, scope: !1276)
!1281 = !DILocation(line: 619, column: 9, scope: !1201)
!1282 = !DILocation(line: 0, scope: !1276)
!1283 = !DILocation(line: 624, column: 12, scope: !1201)
!1284 = !DILocation(line: 624, column: 17, scope: !1201)
!1285 = !{!1278, !470, i64 8}
!1286 = !DILocation(line: 0, scope: !1095, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 625, column: 18, scope: !1201)
!1288 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1287)
!1289 = !DILocation(line: 0, scope: !1105, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1287)
!1291 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1290)
!1292 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1287)
!1293 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1287)
!1294 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1287)
!1295 = !DILocation(line: 625, column: 12, scope: !1201)
!1296 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1287)
!1297 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1287)
!1298 = !DILocation(line: 627, column: 13, scope: !1201)
!1299 = !{!1251, !470, i64 4}
!1300 = !DILocation(line: 627, column: 5, scope: !1201)
!1301 = !DILocation(line: 0, scope: !733, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 629, column: 23, scope: !1201)
!1303 = !DILocation(line: 110, column: 9, scope: !733, inlinedAt: !1302)
!1304 = !DILocation(line: 111, column: 16, scope: !733, inlinedAt: !1302)
!1305 = !DILocation(line: 111, column: 9, scope: !733, inlinedAt: !1302)
!1306 = !DILocation(line: 112, column: 13, scope: !743, inlinedAt: !1302)
!1307 = distinct !{!1307, !1305, !1308, !746}
!1308 = !DILocation(line: 113, column: 9, scope: !733, inlinedAt: !1302)
!1309 = !DILocation(line: 114, column: 9, scope: !733, inlinedAt: !1302)
!1310 = !DILocation(line: 631, column: 23, scope: !1201)
!1311 = !DILocation(line: 631, column: 5, scope: !1201)
!1312 = !DILocation(line: 634, column: 1, scope: !1201)
!1313 = !DILocalVariable(name: "this", arg: 1, scope: !1314, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1314 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !122, file: !31, line: 457, type: !129, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !132, retainedNodes: !1315)
!1315 = !{!1313}
!1316 = !DILocation(line: 0, scope: !1314, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 634, column: 1, scope: !1201)
!1318 = !DILocation(line: 0, scope: !757, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 457, column: 41, scope: !1320, inlinedAt: !1317)
!1320 = distinct !DILexicalBlock(scope: !1314, file: !31, line: 457, column: 41)
!1321 = !DILocation(line: 101, column: 9, scope: !763, inlinedAt: !1319)
!1322 = !DILocation(line: 102, column: 9, scope: !763, inlinedAt: !1319)
!1323 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE", scope: !32, file: !31, line: 636, type: !1202, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1333, !1336, !1337, !1340}
!1325 = !DILocalVariable(name: "addr", arg: 1, scope: !1323, file: !31, line: 636, type: !26)
!1326 = !DILocalVariable(name: "control", arg: 2, scope: !1323, file: !31, line: 636, type: !1204)
!1327 = !DILocalVariable(name: "bucket", scope: !1323, file: !31, line: 637, type: !924)
!1328 = !DILocalVariable(name: "data_location", scope: !1323, file: !31, line: 639, type: !136)
!1329 = !DILocalVariable(name: "prev", scope: !1323, file: !31, line: 640, type: !121)
!1330 = !DILocalVariable(name: "data", scope: !1323, file: !31, line: 641, type: !121)
!1331 = !DILocalVariable(name: "cur_addr", scope: !1332, file: !31, line: 643, type: !26)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !31, line: 642, column: 29)
!1333 = !DILocalVariable(name: "next", scope: !1334, file: !31, line: 646, type: !121)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !31, line: 645, column: 31)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !31, line: 645, column: 13)
!1336 = !DILocalVariable(name: "more_waiters", scope: !1334, file: !31, line: 649, type: !66)
!1337 = !DILocalVariable(name: "data2", scope: !1338, file: !31, line: 654, type: !121)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !31, line: 653, column: 20)
!1339 = distinct !DILexicalBlock(scope: !1334, file: !31, line: 651, column: 17)
!1340 = !DILocalVariable(name: "cur_addr2", scope: !1341, file: !31, line: 656, type: !26)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !31, line: 655, column: 59)
!1342 = !DILocation(line: 0, scope: !1323)
!1343 = !DILocation(line: 637, column: 27, scope: !1323)
!1344 = !DILocation(line: 639, column: 42, scope: !1323)
!1345 = !DILocation(line: 641, column: 24, scope: !1323)
!1346 = !DILocation(line: 642, column: 5, scope: !1323)
!1347 = !DILocation(line: 639, column: 18, scope: !1323)
!1348 = !DILocation(line: 640, column: 17, scope: !1323)
!1349 = !DILocation(line: 641, column: 17, scope: !1323)
!1350 = !DILocation(line: 642, column: 17, scope: !1323)
!1351 = !DILocation(line: 644, column: 36, scope: !1332)
!1352 = !DILocation(line: 644, column: 9, scope: !1332)
!1353 = !DILocation(line: 0, scope: !1332)
!1354 = !DILocation(line: 645, column: 22, scope: !1335)
!1355 = !DILocation(line: 0, scope: !1335)
!1356 = !DILocation(line: 645, column: 13, scope: !1332)
!1357 = !DILocation(line: 0, scope: !1334)
!1358 = !DILocation(line: 647, column: 28, scope: !1334)
!1359 = !DILocation(line: 651, column: 24, scope: !1339)
!1360 = !DILocation(line: 651, column: 29, scope: !1339)
!1361 = !DILocation(line: 651, column: 17, scope: !1334)
!1362 = !DILocation(line: 0, scope: !1338)
!1363 = !DILocation(line: 655, column: 30, scope: !1338)
!1364 = !DILocation(line: 655, column: 17, scope: !1338)
!1365 = !DILocation(line: 652, column: 29, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1339, file: !31, line: 651, column: 38)
!1367 = !DILocation(line: 653, column: 13, scope: !1366)
!1368 = !DILocation(line: 657, column: 49, scope: !1341)
!1369 = !DILocation(line: 657, column: 21, scope: !1341)
!1370 = !DILocation(line: 0, scope: !1341)
!1371 = !DILocation(line: 658, column: 47, scope: !1341)
!1372 = !DILocation(line: 659, column: 36, scope: !1341)
!1373 = !DILocation(line: 655, column: 41, scope: !1338)
!1374 = distinct !{!1374, !1364, !1375, !746}
!1375 = !DILocation(line: 660, column: 17, scope: !1338)
!1376 = !DILocation(line: 663, column: 41, scope: !1334)
!1377 = !{!1251, !470, i64 8}
!1378 = !DILocation(line: 663, column: 33, scope: !1334)
!1379 = !DILocation(line: 663, column: 19, scope: !1334)
!1380 = !DILocation(line: 663, column: 31, scope: !1334)
!1381 = !DILocation(line: 0, scope: !893, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 665, column: 26, scope: !1334)
!1383 = !DILocation(line: 118, column: 26, scope: !893, inlinedAt: !1382)
!1384 = !DILocation(line: 118, column: 9, scope: !893, inlinedAt: !1382)
!1385 = !DILocation(line: 0, scope: !1095, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 666, column: 26, scope: !1334)
!1387 = !DILocation(line: 0, scope: !1105, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1386)
!1389 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1388)
!1390 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1386)
!1391 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1386)
!1392 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1386)
!1393 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1386)
!1394 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1386)
!1395 = !DILocation(line: 0, scope: !900, inlinedAt: !1396)
!1396 = distinct !DILocation(line: 667, column: 26, scope: !1334)
!1397 = !DILocation(line: 122, column: 9, scope: !900, inlinedAt: !1396)
!1398 = !DILocation(line: 122, column: 21, scope: !900, inlinedAt: !1396)
!1399 = !DILocation(line: 123, column: 27, scope: !900, inlinedAt: !1396)
!1400 = !DILocation(line: 123, column: 9, scope: !900, inlinedAt: !1396)
!1401 = !DILocation(line: 0, scope: !909, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 668, column: 26, scope: !1334)
!1403 = !DILocation(line: 127, column: 9, scope: !909, inlinedAt: !1402)
!1404 = !DILocation(line: 671, column: 20, scope: !1334)
!1405 = distinct !{!1405, !1346, !1406, !746}
!1406 = !DILocation(line: 677, column: 5, scope: !1323)
!1407 = !DILocation(line: 679, column: 13, scope: !1323)
!1408 = !DILocation(line: 679, column: 5, scope: !1323)
!1409 = !DILocation(line: 0, scope: !1095, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 681, column: 18, scope: !1323)
!1411 = !DILocation(line: 0, scope: !1105, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1410)
!1413 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1412)
!1414 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1410)
!1415 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1410)
!1416 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1410)
!1417 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1410)
!1418 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1410)
!1419 = !DILocation(line: 685, column: 1, scope: !1323)
!1420 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj", scope: !32, file: !31, line: 687, type: !1421, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!26, !26, !26}
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1432, !1434, !1435, !1436, !1438, !1439, !1444, !1446, !1448}
!1424 = !DILocalVariable(name: "addr", arg: 1, scope: !1420, file: !31, line: 687, type: !26)
!1425 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1420, file: !31, line: 687, type: !26)
!1426 = !DILocalVariable(name: "bucket", scope: !1420, file: !31, line: 688, type: !924)
!1427 = !DILocalVariable(name: "data_location", scope: !1420, file: !31, line: 690, type: !136)
!1428 = !DILocalVariable(name: "prev", scope: !1420, file: !31, line: 691, type: !121)
!1429 = !DILocalVariable(name: "data", scope: !1420, file: !31, line: 692, type: !121)
!1430 = !DILocalVariable(name: "waiters", scope: !1420, file: !31, line: 693, type: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 27, baseType: !24)
!1432 = !DILocalVariable(name: "temp_list_storage", scope: !1420, file: !31, line: 694, type: !1433)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !453)
!1434 = !DILocalVariable(name: "temp_list", scope: !1420, file: !31, line: 695, type: !136)
!1435 = !DILocalVariable(name: "max_waiters", scope: !1420, file: !31, line: 696, type: !1431)
!1436 = !DILocalVariable(name: "cur_addr", scope: !1437, file: !31, line: 699, type: !26)
!1437 = distinct !DILexicalBlock(scope: !1420, file: !31, line: 698, column: 29)
!1438 = !DILocalVariable(name: "next", scope: !1437, file: !31, line: 702, type: !121)
!1439 = !DILocalVariable(name: "temp", scope: !1440, file: !31, line: 711, type: !136)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !31, line: 710, column: 41)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !31, line: 710, column: 17)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !31, line: 703, column: 31)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !31, line: 703, column: 13)
!1444 = !DILocalVariable(name: "i", scope: !1445, file: !31, line: 713, type: !1431)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !31, line: 713, column: 17)
!1446 = !DILocalVariable(name: "i", scope: !1447, file: !31, line: 737, type: !1431)
!1447 = distinct !DILexicalBlock(scope: !1420, file: !31, line: 737, column: 5)
!1448 = !DILocalVariable(name: "i", scope: !1449, file: !31, line: 742, type: !1431)
!1449 = distinct !DILexicalBlock(scope: !1420, file: !31, line: 742, column: 5)
!1450 = !DILocation(line: 0, scope: !1420)
!1451 = !DILocation(line: 688, column: 27, scope: !1420)
!1452 = !DILocation(line: 690, column: 42, scope: !1420)
!1453 = !DILocation(line: 692, column: 24, scope: !1420)
!1454 = !DILocation(line: 694, column: 5, scope: !1420)
!1455 = !DILocation(line: 694, column: 17, scope: !1420)
!1456 = !DILocation(line: 695, column: 31, scope: !1420)
!1457 = !DILocation(line: 698, column: 17, scope: !1420)
!1458 = !DILocation(line: 698, column: 5, scope: !1420)
!1459 = !DILocation(line: 700, column: 36, scope: !1437)
!1460 = !DILocation(line: 700, column: 9, scope: !1437)
!1461 = !DILocation(line: 702, column: 34, scope: !1437)
!1462 = !DILocation(line: 0, scope: !1437)
!1463 = !DILocation(line: 703, column: 22, scope: !1443)
!1464 = !DILocation(line: 0, scope: !1443)
!1465 = !DILocation(line: 703, column: 13, scope: !1437)
!1466 = !DILocation(line: 706, column: 24, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1442, file: !31, line: 706, column: 17)
!1468 = !DILocation(line: 706, column: 29, scope: !1467)
!1469 = !DILocation(line: 706, column: 17, scope: !1442)
!1470 = !DILocation(line: 707, column: 29, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !31, line: 706, column: 38)
!1472 = !DILocation(line: 708, column: 13, scope: !1471)
!1473 = !DILocation(line: 710, column: 25, scope: !1441)
!1474 = !DILocation(line: 710, column: 17, scope: !1442)
!1475 = !DILocation(line: 0, scope: !1440)
!1476 = !DILocation(line: 712, column: 86, scope: !1440)
!1477 = !DILocation(line: 712, column: 44, scope: !1440)
!1478 = !DILocation(line: 712, column: 29, scope: !1440)
!1479 = !DILocation(line: 0, scope: !1445)
!1480 = !DILocation(line: 713, column: 38, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1445, file: !31, line: 713, column: 17)
!1482 = !DILocation(line: 713, column: 17, scope: !1445)
!1483 = !DILocation(line: 716, column: 29, scope: !1440)
!1484 = !DILocation(line: 717, column: 26, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1440, file: !31, line: 717, column: 21)
!1486 = !DILocation(line: 717, column: 21, scope: !1440)
!1487 = !DILocation(line: 714, column: 36, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1481, file: !31, line: 713, column: 58)
!1489 = !DILocation(line: 714, column: 21, scope: !1488)
!1490 = !DILocation(line: 714, column: 34, scope: !1488)
!1491 = !DILocation(line: 713, column: 54, scope: !1481)
!1492 = distinct !{!1492, !1482, !1493, !746}
!1493 = !DILocation(line: 715, column: 17, scope: !1445)
!1494 = !DILocation(line: 718, column: 26, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1485, file: !31, line: 717, column: 52)
!1496 = !DILocation(line: 718, column: 21, scope: !1495)
!1497 = !DILocation(line: 719, column: 17, scope: !1495)
!1498 = !DILocation(line: 722, column: 19, scope: !1442)
!1499 = !DILocation(line: 722, column: 31, scope: !1442)
!1500 = !DILocation(line: 724, column: 30, scope: !1442)
!1501 = !DILocation(line: 724, column: 13, scope: !1442)
!1502 = !DILocation(line: 724, column: 34, scope: !1442)
!1503 = !DILocation(line: 0, scope: !893, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 725, column: 26, scope: !1442)
!1505 = !DILocation(line: 118, column: 26, scope: !893, inlinedAt: !1504)
!1506 = !DILocation(line: 118, column: 9, scope: !893, inlinedAt: !1504)
!1507 = !DILocation(line: 728, column: 9, scope: !1442)
!1508 = distinct !{!1508, !1458, !1509, !746}
!1509 = !DILocation(line: 733, column: 5, scope: !1420)
!1510 = !DILocation(line: 0, scope: !1095, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 735, column: 18, scope: !1420)
!1512 = !DILocation(line: 307, column: 51, scope: !1095, inlinedAt: !1511)
!1513 = !DILocation(line: 0, scope: !1105, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 307, column: 25, scope: !1095, inlinedAt: !1511)
!1515 = !DILocation(line: 131, column: 12, scope: !1105, inlinedAt: !1514)
!1516 = !DILocation(line: 310, column: 39, scope: !1095, inlinedAt: !1511)
!1517 = !DILocation(line: 310, column: 57, scope: !1095, inlinedAt: !1511)
!1518 = !DILocation(line: 313, column: 31, scope: !1114, inlinedAt: !1511)
!1519 = !DILocation(line: 735, column: 12, scope: !1420)
!1520 = !DILocation(line: 314, column: 13, scope: !1117, inlinedAt: !1511)
!1521 = !DILocation(line: 315, column: 9, scope: !1117, inlinedAt: !1511)
!1522 = !DILocation(line: 0, scope: !1447)
!1523 = !DILocation(line: 737, column: 26, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1447, file: !31, line: 737, column: 5)
!1525 = !DILocation(line: 737, column: 5, scope: !1447)
!1526 = !DILocation(line: 738, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !31, line: 737, column: 42)
!1528 = !DILocation(line: 0, scope: !900, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 738, column: 30, scope: !1527)
!1530 = !DILocation(line: 122, column: 9, scope: !900, inlinedAt: !1529)
!1531 = !DILocation(line: 122, column: 21, scope: !900, inlinedAt: !1529)
!1532 = !DILocation(line: 123, column: 27, scope: !900, inlinedAt: !1529)
!1533 = !DILocation(line: 123, column: 9, scope: !900, inlinedAt: !1529)
!1534 = !DILocation(line: 737, column: 38, scope: !1524)
!1535 = distinct !{!1535, !1525, !1536, !746}
!1536 = !DILocation(line: 739, column: 5, scope: !1447)
!1537 = !DILocation(line: 746, column: 19, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1420, file: !31, line: 746, column: 9)
!1539 = !DILocation(line: 746, column: 9, scope: !1420)
!1540 = !DILocation(line: 0, scope: !1449)
!1541 = !DILocation(line: 743, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !31, line: 742, column: 42)
!1543 = distinct !DILexicalBlock(scope: !1449, file: !31, line: 742, column: 5)
!1544 = !DILocation(line: 0, scope: !909, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 743, column: 30, scope: !1542)
!1546 = !DILocation(line: 127, column: 28, scope: !909, inlinedAt: !1545)
!1547 = !DILocation(line: 127, column: 9, scope: !909, inlinedAt: !1545)
!1548 = !DILocation(line: 742, column: 38, scope: !1543)
!1549 = !DILocation(line: 742, column: 26, scope: !1543)
!1550 = !DILocation(line: 742, column: 5, scope: !1449)
!1551 = distinct !{!1551, !1550, !1552, !746}
!1552 = !DILocation(line: 744, column: 5, scope: !1449)
!1553 = !DILocation(line: 747, column: 14, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1538, file: !31, line: 746, column: 45)
!1555 = !DILocation(line: 747, column: 9, scope: !1554)
!1556 = !DILocation(line: 748, column: 5, scope: !1554)
!1557 = !DILocation(line: 751, column: 1, scope: !1420)
!1558 = !DILocation(line: 750, column: 5, scope: !1420)
!1559 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj", scope: !32, file: !31, line: 753, type: !1560, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!161, !26, !26, !1204, !26}
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1577}
!1563 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1559, file: !31, line: 753, type: !26)
!1564 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1559, file: !31, line: 753, type: !26)
!1565 = !DILocalVariable(name: "control", arg: 3, scope: !1559, file: !31, line: 753, type: !1204)
!1566 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1559, file: !31, line: 753, type: !26)
!1567 = !DILocalVariable(name: "buckets", scope: !1559, file: !31, line: 754, type: !967)
!1568 = !DILocalVariable(name: "action", scope: !1559, file: !31, line: 756, type: !148)
!1569 = !DILocalVariable(name: "data_location", scope: !1559, file: !31, line: 762, type: !136)
!1570 = !DILocalVariable(name: "prev", scope: !1559, file: !31, line: 763, type: !121)
!1571 = !DILocalVariable(name: "data", scope: !1559, file: !31, line: 764, type: !121)
!1572 = !DILocalVariable(name: "requeue", scope: !1559, file: !31, line: 765, type: !121)
!1573 = !DILocalVariable(name: "requeue_tail", scope: !1559, file: !31, line: 766, type: !121)
!1574 = !DILocalVariable(name: "wakeup", scope: !1559, file: !31, line: 767, type: !121)
!1575 = !DILocalVariable(name: "cur_addr", scope: !1576, file: !31, line: 770, type: !26)
!1576 = distinct !DILexicalBlock(scope: !1559, file: !31, line: 769, column: 29)
!1577 = !DILocalVariable(name: "next", scope: !1576, file: !31, line: 773, type: !121)
!1578 = !DILocation(line: 0, scope: !1559)
!1579 = !DILocation(line: 754, column: 5, scope: !1559)
!1580 = !DILocation(line: 754, column: 17, scope: !1559)
!1581 = !DILocation(line: 754, column: 27, scope: !1559)
!1582 = !DILocation(line: 756, column: 5, scope: !1559)
!1583 = !DILocation(line: 756, column: 21, scope: !1559)
!1584 = !DILocation(line: 0, scope: !1238, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 756, column: 21, scope: !1559)
!1586 = !DILocation(line: 577, column: 10, scope: !1238, inlinedAt: !1585)
!1587 = !DILocation(line: 578, column: 15, scope: !1238, inlinedAt: !1585)
!1588 = !DILocation(line: 757, column: 18, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1559, file: !31, line: 757, column: 9)
!1590 = !DILocation(line: 757, column: 27, scope: !1589)
!1591 = !DILocation(line: 757, column: 10, scope: !1589)
!1592 = !DILocation(line: 757, column: 9, scope: !1559)
!1593 = !DILocation(line: 758, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !31, line: 757, column: 46)
!1595 = !DILocation(line: 759, column: 9, scope: !1594)
!1596 = !DILocation(line: 762, column: 43, scope: !1559)
!1597 = !DILocation(line: 762, column: 48, scope: !1559)
!1598 = !DILocation(line: 764, column: 24, scope: !1559)
!1599 = !DILocation(line: 769, column: 17, scope: !1559)
!1600 = !DILocation(line: 769, column: 5, scope: !1559)
!1601 = !DILocation(line: 771, column: 36, scope: !1576)
!1602 = !DILocation(line: 771, column: 9, scope: !1576)
!1603 = !DILocation(line: 773, column: 34, scope: !1576)
!1604 = !DILocation(line: 0, scope: !1576)
!1605 = !DILocation(line: 774, column: 22, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1576, file: !31, line: 774, column: 13)
!1607 = !DILocation(line: 774, column: 13, scope: !1576)
!1608 = !DILocation(line: 775, column: 28, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !31, line: 774, column: 36)
!1610 = !DILocation(line: 777, column: 25, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !31, line: 777, column: 17)
!1612 = !DILocation(line: 777, column: 30, scope: !1611)
!1613 = !DILocation(line: 777, column: 35, scope: !1611)
!1614 = !DILocation(line: 777, column: 17, scope: !1609)
!1615 = !DILocation(line: 778, column: 35, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !31, line: 777, column: 44)
!1617 = !DILocation(line: 779, column: 13, scope: !1616)
!1618 = !DILocation(line: 781, column: 35, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1609, file: !31, line: 781, column: 17)
!1620 = !DILocation(line: 784, column: 29, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !31, line: 784, column: 21)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !31, line: 783, column: 20)
!1623 = !DILocation(line: 784, column: 21, scope: !1622)
!1624 = !DILocation(line: 787, column: 35, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !31, line: 786, column: 24)
!1626 = !DILocation(line: 787, column: 40, scope: !1625)
!1627 = !DILocalVariable(name: "addr", arg: 1, scope: !1628, file: !31, line: 149, type: !173)
!1628 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPjS4_", scope: !631, file: !31, line: 149, type: !1629, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !173, !173}
!1631 = !{!1627, !1632}
!1632 = !DILocalVariable(name: "val", arg: 2, scope: !1628, file: !31, line: 149, type: !173)
!1633 = !DILocation(line: 0, scope: !1628, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 791, column: 17, scope: !1622)
!1635 = !DILocation(line: 150, column: 11, scope: !1628, inlinedAt: !1634)
!1636 = !DILocation(line: 765, column: 17, scope: !1559)
!1637 = !DILocation(line: 766, column: 17, scope: !1559)
!1638 = distinct !{!1638, !1600, !1639, !746}
!1639 = !DILocation(line: 800, column: 5, scope: !1559)
!1640 = !DILocation(line: 802, column: 17, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1559, file: !31, line: 802, column: 9)
!1642 = !DILocation(line: 802, column: 9, scope: !1559)
!1643 = !DILocation(line: 803, column: 23, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !31, line: 802, column: 29)
!1645 = !DILocation(line: 803, column: 28, scope: !1644)
!1646 = !DILocation(line: 804, column: 21, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !31, line: 804, column: 13)
!1648 = !DILocation(line: 804, column: 24, scope: !1647)
!1649 = !DILocation(line: 804, column: 29, scope: !1647)
!1650 = !DILocation(line: 804, column: 13, scope: !1644)
!1651 = !DILocation(line: 807, column: 24, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !31, line: 806, column: 16)
!1653 = !DILocation(line: 807, column: 30, scope: !1652)
!1654 = !DILocation(line: 0, scope: !1647)
!1655 = !DILocation(line: 809, column: 20, scope: !1644)
!1656 = !DILocation(line: 809, column: 25, scope: !1644)
!1657 = !DILocation(line: 810, column: 5, scope: !1644)
!1658 = !DILocation(line: 812, column: 13, scope: !1559)
!1659 = !{!1251, !470, i64 12}
!1660 = !DILocation(line: 812, column: 55, scope: !1559)
!1661 = !DILocation(line: 812, column: 5, scope: !1559)
!1662 = !DILocation(line: 814, column: 9, scope: !1559)
!1663 = !DILocation(line: 815, column: 17, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !31, line: 814, column: 28)
!1665 = distinct !DILexicalBlock(scope: !1559, file: !31, line: 814, column: 9)
!1666 = !DILocation(line: 815, column: 29, scope: !1664)
!1667 = !DILocation(line: 0, scope: !893, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 816, column: 24, scope: !1664)
!1669 = !DILocation(line: 118, column: 26, scope: !893, inlinedAt: !1668)
!1670 = !DILocation(line: 118, column: 9, scope: !893, inlinedAt: !1668)
!1671 = !DILocation(line: 817, column: 9, scope: !1664)
!1672 = !DILocation(line: 0, scope: !900, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 818, column: 24, scope: !1664)
!1674 = !DILocation(line: 122, column: 9, scope: !900, inlinedAt: !1673)
!1675 = !DILocation(line: 122, column: 21, scope: !900, inlinedAt: !1673)
!1676 = !DILocation(line: 123, column: 27, scope: !900, inlinedAt: !1673)
!1677 = !DILocation(line: 123, column: 9, scope: !900, inlinedAt: !1673)
!1678 = !DILocation(line: 0, scope: !909, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 819, column: 24, scope: !1664)
!1680 = !DILocation(line: 127, column: 9, scope: !909, inlinedAt: !1679)
!1681 = !DILocation(line: 820, column: 5, scope: !1664)
!1682 = !DILocation(line: 821, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1665, file: !31, line: 820, column: 12)
!1684 = !DILocation(line: 824, column: 30, scope: !1559)
!1685 = !DILocation(line: 824, column: 12, scope: !1559)
!1686 = !DILocation(line: 825, column: 1, scope: !1559)
!1687 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 840, type: !145, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DILocalVariable(name: "control", arg: 1, scope: !1687, file: !31, line: 840, type: !15)
!1690 = !DILocalVariable(name: "action", arg: 2, scope: !1687, file: !31, line: 840, type: !147)
!1691 = !DILocalVariable(name: "mutex_control", scope: !1687, file: !31, line: 841, type: !137)
!1692 = !DILocalVariable(name: "result", scope: !1687, file: !31, line: 843, type: !26)
!1693 = !DILocation(line: 0, scope: !1687)
!1694 = !DILocation(line: 844, column: 40, scope: !1687)
!1695 = !{!1696, !470, i64 16}
!1696 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !470, i64 16}
!1697 = !DILocation(line: 844, column: 5, scope: !1687)
!1698 = !DILocation(line: 845, column: 19, scope: !1687)
!1699 = !DILocation(line: 845, column: 5, scope: !1687)
!1700 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !32, file: !31, line: 849, type: !159, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706}
!1702 = !DILocalVariable(name: "control", arg: 1, scope: !1700, file: !31, line: 849, type: !15)
!1703 = !DILocalVariable(name: "unparked", arg: 2, scope: !1700, file: !31, line: 849, type: !161)
!1704 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1700, file: !31, line: 849, type: !66)
!1705 = !DILocalVariable(name: "mutex_control", scope: !1700, file: !31, line: 850, type: !137)
!1706 = !DILocalVariable(name: "return_state", scope: !1700, file: !31, line: 853, type: !26)
!1707 = !DILocation(line: 0, scope: !1700)
!1708 = !DILocation(line: 853, column: 30, scope: !1700)
!1709 = !DILocation(line: 854, column: 41, scope: !1700)
!1710 = !DILocalVariable(name: "addr", arg: 1, scope: !1711, file: !31, line: 154, type: !561)
!1711 = distinct !DISubprogram(name: "atomic_store_release<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIjEEvPT_S6_", scope: !631, file: !31, line: 154, type: !800, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !649, retainedNodes: !1712)
!1712 = !{!1710, !1713}
!1713 = !DILocalVariable(name: "val", arg: 2, scope: !1711, file: !31, line: 154, type: !561)
!1714 = !DILocation(line: 0, scope: !1711, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 854, column: 5, scope: !1700)
!1716 = !DILocation(line: 155, column: 11, scope: !1711, inlinedAt: !1715)
!1717 = !DILocation(line: 156, column: 5, scope: !1711, inlinedAt: !1715)
!1718 = !DILocation(line: 856, column: 5, scope: !1700)
!1719 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !32, file: !31, line: 968, type: !159, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725}
!1721 = !DILocalVariable(name: "control", arg: 1, scope: !1719, file: !31, line: 968, type: !15)
!1722 = !DILocalVariable(name: "unparked", arg: 2, scope: !1719, file: !31, line: 968, type: !161)
!1723 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1719, file: !31, line: 968, type: !66)
!1724 = !DILocalVariable(name: "signal_control", scope: !1719, file: !31, line: 969, type: !178)
!1725 = !DILocalVariable(name: "val", scope: !1726, file: !31, line: 972, type: !26)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !31, line: 971, column: 24)
!1727 = distinct !DILexicalBlock(scope: !1719, file: !31, line: 971, column: 9)
!1728 = !DILocation(line: 0, scope: !1719)
!1729 = !DILocation(line: 971, column: 9, scope: !1719)
!1730 = !DILocation(line: 0, scope: !1726)
!1731 = !DILocation(line: 973, column: 46, scope: !1726)
!1732 = !{!1733, !470, i64 16}
!1733 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !470, i64 16, !470, i64 20}
!1734 = !DILocation(line: 0, scope: !1628, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 973, column: 9, scope: !1726)
!1736 = !DILocation(line: 150, column: 11, scope: !1628, inlinedAt: !1735)
!1737 = !DILocation(line: 974, column: 5, scope: !1726)
!1738 = !DILocation(line: 979, column: 5, scope: !1719)
!1739 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 996, type: !145, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1740 = !{!1741, !1742, !1743, !1744}
!1741 = !DILocalVariable(name: "control", arg: 1, scope: !1739, file: !31, line: 996, type: !15)
!1742 = !DILocalVariable(name: "action", arg: 2, scope: !1739, file: !31, line: 996, type: !147)
!1743 = !DILocalVariable(name: "broadcast_control", scope: !1739, file: !31, line: 997, type: !203)
!1744 = !DILocalVariable(name: "val", scope: !1739, file: !31, line: 999, type: !26)
!1745 = !DILocation(line: 0, scope: !1739)
!1746 = !DILocation(line: 1000, column: 44, scope: !1739)
!1747 = !{!1748, !470, i64 16}
!1748 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !470, i64 16, !470, i64 20}
!1749 = !DILocation(line: 1000, column: 5, scope: !1739)
!1750 = !DILocation(line: 1004, column: 46, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1739, file: !31, line: 1004, column: 9)
!1752 = !{!1748, !470, i64 20}
!1753 = !DILocation(line: 1004, column: 16, scope: !1751)
!1754 = !DILocation(line: 1004, column: 13, scope: !1751)
!1755 = !DILocation(line: 1004, column: 9, scope: !1739)
!1756 = !DILocation(line: 0, scope: !1628, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 1009, column: 5, scope: !1739)
!1758 = !DILocation(line: 150, column: 11, scope: !1628, inlinedAt: !1757)
!1759 = !DILocalVariable(name: "this", arg: 1, scope: !1760, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1760 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !185, file: !31, line: 938, type: !196, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !195, retainedNodes: !1761)
!1761 = !{!1759, !1762, !1763}
!1762 = !DILocalVariable(name: "val", scope: !1760, file: !31, line: 939, type: !26)
!1763 = !DILocalVariable(name: "desired", scope: !1764, file: !31, line: 946, type: !26)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !31, line: 941, column: 22)
!1765 = !DILocation(line: 0, scope: !1760, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 1011, column: 52, scope: !1739)
!1767 = !DILocation(line: 940, column: 30, scope: !1760, inlinedAt: !1766)
!1768 = !DILocation(line: 940, column: 9, scope: !1760, inlinedAt: !1766)
!1769 = !DILocation(line: 941, column: 9, scope: !1760, inlinedAt: !1766)
!1770 = !DILocation(line: 942, column: 23, scope: !1771, inlinedAt: !1766)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !31, line: 942, column: 17)
!1772 = !DILocation(line: 942, column: 18, scope: !1771, inlinedAt: !1766)
!1773 = !DILocation(line: 942, column: 17, scope: !1764, inlinedAt: !1766)
!1774 = !DILocation(line: 946, column: 37, scope: !1764, inlinedAt: !1766)
!1775 = !DILocation(line: 0, scope: !1764, inlinedAt: !1766)
!1776 = !DILocalVariable(name: "addr", arg: 1, scope: !1777, file: !31, line: 122, type: !173)
!1777 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPjS4_S4_", scope: !631, file: !31, line: 122, type: !632, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1778)
!1778 = !{!1776, !1779, !1780}
!1779 = !DILocalVariable(name: "expected", arg: 2, scope: !1777, file: !31, line: 122, type: !173)
!1780 = !DILocalVariable(name: "desired", arg: 3, scope: !1777, file: !31, line: 122, type: !173)
!1781 = !DILocation(line: 0, scope: !1777, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 947, column: 17, scope: !1783, inlinedAt: !1766)
!1783 = distinct !DILexicalBlock(scope: !1764, file: !31, line: 947, column: 17)
!1784 = !DILocation(line: 0, scope: !641, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 123, column: 12, scope: !1777, inlinedAt: !1782)
!1786 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1785)
!1787 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1785)
!1788 = distinct !{!1788, !1769, !1789}
!1789 = !DILocation(line: 950, column: 9, scope: !1760, inlinedAt: !1766)
!1790 = !DILocation(line: 1011, column: 12, scope: !1739)
!1791 = !DILocation(line: 1011, column: 23, scope: !1739)
!1792 = !DILocation(line: 1013, column: 5, scope: !1739)
!1793 = !DILocation(line: 1014, column: 1, scope: !1739)
!1794 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !32, file: !31, line: 1016, type: !164, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800}
!1796 = !DILocalVariable(name: "control", arg: 1, scope: !1794, file: !31, line: 1016, type: !15)
!1797 = !DILocalVariable(name: "action", arg: 2, scope: !1794, file: !31, line: 1016, type: !166)
!1798 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1794, file: !31, line: 1016, type: !66)
!1799 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1794, file: !31, line: 1016, type: !66)
!1800 = !DILocalVariable(name: "broadcast_control", scope: !1794, file: !31, line: 1017, type: !203)
!1801 = !DILocation(line: 0, scope: !1794)
!1802 = !DILocation(line: 1019, column: 16, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !31, line: 1019, column: 9)
!1804 = !DILocation(line: 1019, column: 27, scope: !1803)
!1805 = !DILocation(line: 1020, column: 28, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !31, line: 1019, column: 45)
!1807 = !DILocalVariable(name: "this", arg: 1, scope: !1808, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1808 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !185, file: !31, line: 953, type: !189, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !198, retainedNodes: !1809)
!1809 = !{!1807}
!1810 = !DILocation(line: 0, scope: !1808, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 1020, column: 35, scope: !1806)
!1812 = !DILocation(line: 954, column: 34, scope: !1808, inlinedAt: !1811)
!1813 = !DILocalVariable(name: "addr", arg: 1, scope: !1814, file: !31, line: 145, type: !173)
!1814 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPjj", scope: !631, file: !31, line: 145, type: !885, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1815)
!1815 = !{!1813, !1816}
!1816 = !DILocalVariable(name: "val", arg: 2, scope: !1814, file: !31, line: 145, type: !26)
!1817 = !DILocation(line: 0, scope: !1814, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 954, column: 9, scope: !1808, inlinedAt: !1811)
!1819 = !DILocation(line: 146, column: 12, scope: !1814, inlinedAt: !1818)
!1820 = !DILocation(line: 1021, column: 5, scope: !1806)
!1821 = !DILocation(line: 1022, column: 1, scope: !1794)
!1822 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 1038, type: !145, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1823)
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DILocalVariable(name: "control", arg: 1, scope: !1822, file: !31, line: 1038, type: !15)
!1825 = !DILocalVariable(name: "action", arg: 2, scope: !1822, file: !31, line: 1038, type: !147)
!1826 = !DILocalVariable(name: "wait_control", scope: !1822, file: !31, line: 1039, type: !213)
!1827 = !DILocalVariable(name: "val", scope: !1822, file: !31, line: 1041, type: !26)
!1828 = !DILocation(line: 0, scope: !1822)
!1829 = !DILocation(line: 1042, column: 39, scope: !1822)
!1830 = !{!1831, !470, i64 16}
!1831 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !470, i64 16, !470, i64 20}
!1832 = !DILocation(line: 1042, column: 5, scope: !1822)
!1833 = !DILocation(line: 1044, column: 13, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1822, file: !31, line: 1044, column: 9)
!1835 = !DILocation(line: 0, scope: !1834)
!1836 = !{!1831, !470, i64 20}
!1837 = !DILocation(line: 1044, column: 9, scope: !1822)
!1838 = !DILocation(line: 1047, column: 20, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !31, line: 1047, column: 16)
!1840 = !DILocation(line: 1047, column: 16, scope: !1834)
!1841 = !DILocation(line: 1049, column: 16, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !31, line: 1047, column: 55)
!1843 = !DILocation(line: 1050, column: 9, scope: !1842)
!1844 = !DILocation(line: 1054, column: 1, scope: !1822)
!1845 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !32, file: !31, line: 1056, type: !13, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1846)
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "control", arg: 1, scope: !1845, file: !31, line: 1056, type: !15)
!1848 = !DILocalVariable(name: "wait_control", scope: !1845, file: !31, line: 1057, type: !213)
!1849 = !DILocation(line: 0, scope: !1845)
!1850 = !DILocation(line: 1059, column: 19, scope: !1845)
!1851 = !DILocalVariable(name: "this", arg: 1, scope: !1852, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1852 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !185, file: !31, line: 929, type: !189, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !194, retainedNodes: !1853)
!1853 = !{!1851, !1854, !1855}
!1854 = !DILocalVariable(name: "expected", scope: !1852, file: !31, line: 930, type: !26)
!1855 = !DILocalVariable(name: "desired", scope: !1852, file: !31, line: 931, type: !26)
!1856 = !DILocation(line: 0, scope: !1852, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 1059, column: 26, scope: !1845)
!1858 = !DILocation(line: 933, column: 47, scope: !1859, inlinedAt: !1857)
!1859 = distinct !DILexicalBlock(scope: !1852, file: !31, line: 933, column: 13)
!1860 = !DILocation(line: 0, scope: !720, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 933, column: 14, scope: !1859, inlinedAt: !1857)
!1862 = !DILocation(line: 0, scope: !641, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 114, column: 12, scope: !720, inlinedAt: !1861)
!1864 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1863)
!1865 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1863)
!1866 = !DILocation(line: 933, column: 13, scope: !1852, inlinedAt: !1857)
!1867 = !DILocalVariable(name: "this", arg: 1, scope: !1868, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1868 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !185, file: !31, line: 906, type: !189, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !192, retainedNodes: !1869)
!1869 = !{!1867, !1870, !1871, !1872}
!1870 = !DILocalVariable(name: "expected", scope: !1868, file: !31, line: 907, type: !26)
!1871 = !DILocalVariable(name: "desired", scope: !1868, file: !31, line: 908, type: !26)
!1872 = !DILocalVariable(name: "control", scope: !1868, file: !31, line: 915, type: !138)
!1873 = !DILocation(line: 0, scope: !1868, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 934, column: 13, scope: !1875, inlinedAt: !1857)
!1875 = distinct !DILexicalBlock(scope: !1859, file: !31, line: 933, column: 76)
!1876 = !DILocalVariable(name: "addr", arg: 1, scope: !1877, file: !31, line: 109, type: !173)
!1877 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPjS4_S4_", scope: !631, file: !31, line: 109, type: !632, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1878 = !{!1876, !1879, !1880}
!1879 = !DILocalVariable(name: "expected", arg: 2, scope: !1877, file: !31, line: 109, type: !173)
!1880 = !DILocalVariable(name: "desired", arg: 3, scope: !1877, file: !31, line: 109, type: !173)
!1881 = !DILocation(line: 0, scope: !1877, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 911, column: 13, scope: !1883, inlinedAt: !1874)
!1883 = distinct !DILexicalBlock(scope: !1868, file: !31, line: 911, column: 13)
!1884 = !DILocation(line: 0, scope: !641, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 110, column: 12, scope: !1877, inlinedAt: !1882)
!1886 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1885)
!1887 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1885)
!1888 = !DILocation(line: 911, column: 13, scope: !1868, inlinedAt: !1874)
!1889 = !DILocation(line: 915, column: 9, scope: !1868, inlinedAt: !1874)
!1890 = !DILocation(line: 915, column: 31, scope: !1868, inlinedAt: !1874)
!1891 = !DILocalVariable(name: "this", arg: 1, scope: !1892, type: !137, flags: DIFlagArtificial | DIFlagObjectPointer)
!1892 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPj", scope: !138, file: !31, line: 832, type: !175, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !174, retainedNodes: !1893)
!1893 = !{!1891, !1894}
!1894 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1892, file: !31, line: 832, type: !173)
!1895 = !DILocation(line: 0, scope: !1892, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 915, column: 31, scope: !1868, inlinedAt: !1874)
!1897 = !DILocalVariable(name: "this", arg: 1, scope: !1898, type: !1900, flags: DIFlagArtificial | DIFlagObjectPointer)
!1898 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !141, file: !31, line: 598, type: !169, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !168, retainedNodes: !1899)
!1899 = !{!1897}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!1901 = !DILocation(line: 0, scope: !1898, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 832, column: 19, scope: !1892, inlinedAt: !1896)
!1903 = !DILocation(line: 599, column: 11, scope: !1898, inlinedAt: !1902)
!1904 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !1902)
!1905 = !DILocation(line: 600, column: 11, scope: !1898, inlinedAt: !1902)
!1906 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !1902)
!1907 = !DILocation(line: 833, column: 11, scope: !1892, inlinedAt: !1896)
!1908 = !DILocation(line: 834, column: 18, scope: !1909, inlinedAt: !1896)
!1909 = distinct !DILexicalBlock(scope: !1892, file: !31, line: 833, column: 34)
!1910 = !DILocation(line: 835, column: 16, scope: !1909, inlinedAt: !1896)
!1911 = !DILocation(line: 916, column: 20, scope: !1868, inlinedAt: !1874)
!1912 = !DILocation(line: 916, column: 37, scope: !1868, inlinedAt: !1874)
!1913 = !DILocation(line: 916, column: 9, scope: !1868, inlinedAt: !1874)
!1914 = !DILocation(line: 917, column: 5, scope: !1868, inlinedAt: !1874)
!1915 = !DILocation(line: 1060, column: 1, scope: !1845)
!1916 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !32, file: !31, line: 1062, type: !159, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1917 = !{!1918, !1919, !1920, !1921, !1922}
!1918 = !DILocalVariable(name: "control", arg: 1, scope: !1916, file: !31, line: 1062, type: !15)
!1919 = !DILocalVariable(name: "unparked", arg: 2, scope: !1916, file: !31, line: 1062, type: !161)
!1920 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1916, file: !31, line: 1062, type: !66)
!1921 = !DILocalVariable(name: "wait_control", scope: !1916, file: !31, line: 1063, type: !213)
!1922 = !DILocalVariable(name: "val", scope: !1923, file: !31, line: 1066, type: !26)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !31, line: 1065, column: 24)
!1924 = distinct !DILexicalBlock(scope: !1916, file: !31, line: 1065, column: 9)
!1925 = !DILocation(line: 0, scope: !1916)
!1926 = !DILocation(line: 1065, column: 9, scope: !1916)
!1927 = !DILocation(line: 0, scope: !1923)
!1928 = !DILocation(line: 1067, column: 44, scope: !1923)
!1929 = !DILocation(line: 0, scope: !1628, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 1067, column: 9, scope: !1923)
!1931 = !DILocation(line: 150, column: 11, scope: !1628, inlinedAt: !1930)
!1932 = !DILocation(line: 1068, column: 5, scope: !1923)
!1933 = !DILocation(line: 1069, column: 5, scope: !1916)
!1934 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !31, file: !31, line: 1131, type: !1935, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !240}
!1937 = !{!1938, !1939}
!1938 = !DILocalVariable(name: "mutex", arg: 1, scope: !1934, file: !31, line: 1131, type: !240)
!1939 = !DILocalVariable(name: "fast_mutex", scope: !1934, file: !31, line: 1132, type: !184)
!1940 = !DILocation(line: 0, scope: !1934)
!1941 = !DILocalVariable(name: "this", arg: 1, scope: !1942, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1942 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !185, file: !31, line: 920, type: !189, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !193, retainedNodes: !1943)
!1943 = !{!1941, !1944, !1945}
!1944 = !DILocalVariable(name: "expected", scope: !1942, file: !31, line: 921, type: !26)
!1945 = !DILocalVariable(name: "desired", scope: !1942, file: !31, line: 922, type: !26)
!1946 = !DILocation(line: 0, scope: !1942, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 1134, column: 17, scope: !1934)
!1948 = !DILocation(line: 924, column: 47, scope: !1949, inlinedAt: !1947)
!1949 = distinct !DILexicalBlock(scope: !1942, file: !31, line: 924, column: 13)
!1950 = !DILocation(line: 0, scope: !630, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 924, column: 14, scope: !1949, inlinedAt: !1947)
!1952 = !DILocation(line: 0, scope: !641, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1951)
!1954 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1953)
!1955 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1953)
!1956 = !DILocation(line: 924, column: 13, scope: !1942, inlinedAt: !1947)
!1957 = !DILocalVariable(name: "this", arg: 1, scope: !1958, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1958 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !185, file: !31, line: 862, type: !189, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !188, retainedNodes: !1959)
!1959 = !{!1957, !1960, !1961, !1962, !1966, !1969, !1970}
!1960 = !DILocalVariable(name: "spinner", scope: !1958, file: !31, line: 864, type: !601)
!1961 = !DILocalVariable(name: "expected", scope: !1958, file: !31, line: 865, type: !26)
!1962 = !DILocalVariable(name: "desired", scope: !1963, file: !31, line: 870, type: !26)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !31, line: 869, column: 41)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !31, line: 869, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1958, file: !31, line: 868, column: 22)
!1966 = !DILocalVariable(name: "desired", scope: !1967, file: !31, line: 888, type: !26)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !31, line: 887, column: 47)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !31, line: 887, column: 17)
!1969 = !DILocalVariable(name: "control", scope: !1965, file: !31, line: 895, type: !138)
!1970 = !DILocalVariable(name: "result", scope: !1965, file: !31, line: 896, type: !26)
!1971 = !DILocation(line: 0, scope: !1958, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 925, column: 13, scope: !1973, inlinedAt: !1947)
!1973 = distinct !DILexicalBlock(scope: !1949, file: !31, line: 924, column: 76)
!1974 = !DILocation(line: 866, column: 9, scope: !1958, inlinedAt: !1972)
!1975 = !DILocation(line: 868, column: 9, scope: !1958, inlinedAt: !1972)
!1976 = !DILocation(line: 869, column: 17, scope: !1965, inlinedAt: !1972)
!1977 = !DILocation(line: 869, column: 28, scope: !1964, inlinedAt: !1972)
!1978 = !DILocation(line: 869, column: 18, scope: !1964, inlinedAt: !1972)
!1979 = !DILocation(line: 870, column: 46, scope: !1963, inlinedAt: !1972)
!1980 = !DILocation(line: 0, scope: !1963, inlinedAt: !1972)
!1981 = !DILocation(line: 0, scope: !630, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 871, column: 21, scope: !1983, inlinedAt: !1972)
!1983 = distinct !DILexicalBlock(scope: !1963, file: !31, line: 871, column: 21)
!1984 = !DILocation(line: 0, scope: !641, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !1982)
!1986 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !1985)
!1987 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !1985)
!1988 = !DILocation(line: 0, scope: !659, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 880, column: 25, scope: !1990, inlinedAt: !1972)
!1990 = distinct !DILexicalBlock(scope: !1965, file: !31, line: 880, column: 17)
!1991 = !DILocation(line: 238, column: 24, scope: !668, inlinedAt: !1989)
!1992 = !DILocation(line: 238, column: 13, scope: !659, inlinedAt: !1989)
!1993 = !DILocation(line: 241, column: 27, scope: !659, inlinedAt: !1989)
!1994 = !DILocation(line: 880, column: 17, scope: !1965, inlinedAt: !1972)
!1995 = !DILocation(line: 239, column: 23, scope: !667, inlinedAt: !1989)
!1996 = !DILocation(line: 881, column: 17, scope: !1997, inlinedAt: !1972)
!1997 = distinct !DILexicalBlock(scope: !1990, file: !31, line: 880, column: 40)
!1998 = !DILocation(line: 882, column: 17, scope: !1997, inlinedAt: !1972)
!1999 = !DILocation(line: 883, column: 17, scope: !1997, inlinedAt: !1972)
!2000 = !DILocation(line: 887, column: 27, scope: !1968, inlinedAt: !1972)
!2001 = !DILocation(line: 887, column: 41, scope: !1968, inlinedAt: !1972)
!2002 = !DILocation(line: 887, column: 17, scope: !1965, inlinedAt: !1972)
!2003 = !DILocation(line: 888, column: 46, scope: !1967, inlinedAt: !1972)
!2004 = !DILocation(line: 0, scope: !1967, inlinedAt: !1972)
!2005 = !DILocation(line: 0, scope: !1777, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 889, column: 22, scope: !2007, inlinedAt: !1972)
!2007 = distinct !DILexicalBlock(scope: !1967, file: !31, line: 889, column: 21)
!2008 = !DILocation(line: 0, scope: !641, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 123, column: 12, scope: !1777, inlinedAt: !2006)
!2010 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !2009)
!2011 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !2009)
!2012 = !DILocation(line: 895, column: 13, scope: !1965, inlinedAt: !1972)
!2013 = !DILocation(line: 895, column: 35, scope: !1965, inlinedAt: !1972)
!2014 = !DILocation(line: 0, scope: !1892, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 895, column: 35, scope: !1965, inlinedAt: !1972)
!2016 = !DILocation(line: 0, scope: !1898, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 832, column: 19, scope: !1892, inlinedAt: !2015)
!2018 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !2017)
!2019 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !2017)
!2020 = !DILocation(line: 833, column: 11, scope: !1892, inlinedAt: !2015)
!2021 = !DILocation(line: 834, column: 18, scope: !1909, inlinedAt: !2015)
!2022 = !DILocation(line: 835, column: 16, scope: !1909, inlinedAt: !2015)
!2023 = !DILocation(line: 896, column: 32, scope: !1965, inlinedAt: !1972)
!2024 = !DILocation(line: 0, scope: !1965, inlinedAt: !1972)
!2025 = !DILocation(line: 897, column: 24, scope: !2026, inlinedAt: !1972)
!2026 = distinct !DILexicalBlock(scope: !1965, file: !31, line: 897, column: 17)
!2027 = !DILocation(line: 897, column: 17, scope: !1965, inlinedAt: !1972)
!2028 = !DILocation(line: 902, column: 13, scope: !1965, inlinedAt: !1972)
!2029 = !DILocation(line: 903, column: 9, scope: !1958, inlinedAt: !1972)
!2030 = distinct !{!2030, !1975, !2029}
!2031 = !DILocation(line: 1135, column: 1, scope: !1934)
!2032 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !31, file: !31, line: 1137, type: !1935, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "mutex", arg: 1, scope: !2032, file: !31, line: 1137, type: !240)
!2035 = !DILocalVariable(name: "fast_mutex", scope: !2032, file: !31, line: 1138, type: !184)
!2036 = !DILocation(line: 0, scope: !2032)
!2037 = !DILocation(line: 0, scope: !1852, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 1140, column: 17, scope: !2032)
!2039 = !DILocation(line: 933, column: 47, scope: !1859, inlinedAt: !2038)
!2040 = !DILocation(line: 0, scope: !720, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 933, column: 14, scope: !1859, inlinedAt: !2038)
!2042 = !DILocation(line: 0, scope: !641, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 114, column: 12, scope: !720, inlinedAt: !2041)
!2044 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !2043)
!2045 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !2043)
!2046 = !DILocation(line: 933, column: 13, scope: !1852, inlinedAt: !2038)
!2047 = !DILocation(line: 0, scope: !1868, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 934, column: 13, scope: !1875, inlinedAt: !2038)
!2049 = !DILocation(line: 0, scope: !1877, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 911, column: 13, scope: !1883, inlinedAt: !2048)
!2051 = !DILocation(line: 0, scope: !641, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 110, column: 12, scope: !1877, inlinedAt: !2050)
!2053 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !2052)
!2054 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !2052)
!2055 = !DILocation(line: 911, column: 13, scope: !1868, inlinedAt: !2048)
!2056 = !DILocation(line: 915, column: 9, scope: !1868, inlinedAt: !2048)
!2057 = !DILocation(line: 915, column: 31, scope: !1868, inlinedAt: !2048)
!2058 = !DILocation(line: 0, scope: !1892, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 915, column: 31, scope: !1868, inlinedAt: !2048)
!2060 = !DILocation(line: 0, scope: !1898, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 832, column: 19, scope: !1892, inlinedAt: !2059)
!2062 = !DILocation(line: 599, column: 11, scope: !1898, inlinedAt: !2061)
!2063 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !2061)
!2064 = !DILocation(line: 600, column: 11, scope: !1898, inlinedAt: !2061)
!2065 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !2061)
!2066 = !DILocation(line: 833, column: 11, scope: !1892, inlinedAt: !2059)
!2067 = !DILocation(line: 834, column: 18, scope: !1909, inlinedAt: !2059)
!2068 = !DILocation(line: 835, column: 16, scope: !1909, inlinedAt: !2059)
!2069 = !DILocation(line: 916, column: 20, scope: !1868, inlinedAt: !2048)
!2070 = !DILocation(line: 916, column: 37, scope: !1868, inlinedAt: !2048)
!2071 = !DILocation(line: 916, column: 9, scope: !1868, inlinedAt: !2048)
!2072 = !DILocation(line: 917, column: 5, scope: !1868, inlinedAt: !2048)
!2073 = !DILocation(line: 1141, column: 1, scope: !2032)
!2074 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !31, file: !31, line: 1143, type: !2075, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "cond", arg: 1, scope: !2074, file: !31, line: 1143, type: !2077)
!2080 = !DILocalVariable(name: "fast_cond", scope: !2074, file: !31, line: 1144, type: !223)
!2081 = !DILocation(line: 0, scope: !2074)
!2082 = !DILocalVariable(name: "this", arg: 1, scope: !2083, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2083 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !224, file: !31, line: 1092, type: !228, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !232, retainedNodes: !2084)
!2084 = !{!2082, !2085, !2086}
!2085 = !DILocalVariable(name: "val", scope: !2083, file: !31, line: 1094, type: !26)
!2086 = !DILocalVariable(name: "control", scope: !2083, file: !31, line: 1100, type: !204)
!2087 = !DILocation(line: 0, scope: !2083, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 1146, column: 16, scope: !2074)
!2089 = !DILocation(line: 1095, column: 30, scope: !2083, inlinedAt: !2088)
!2090 = !DILocation(line: 1095, column: 9, scope: !2083, inlinedAt: !2088)
!2091 = !DILocation(line: 1096, column: 17, scope: !2092, inlinedAt: !2088)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !31, line: 1096, column: 13)
!2093 = !DILocation(line: 1096, column: 13, scope: !2083, inlinedAt: !2088)
!2094 = !DILocation(line: 1100, column: 9, scope: !2083, inlinedAt: !2088)
!2095 = !DILocation(line: 1100, column: 35, scope: !2083, inlinedAt: !2088)
!2096 = !DILocation(line: 1100, column: 51, scope: !2083, inlinedAt: !2088)
!2097 = !DILocalVariable(name: "this", arg: 1, scope: !2098, type: !203, flags: DIFlagArtificial | DIFlagObjectPointer)
!2098 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPjPNS2_10fast_mutexE", scope: !204, file: !31, line: 989, type: !210, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !209, retainedNodes: !2099)
!2099 = !{!2097, !2100, !2101}
!2100 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2098, file: !31, line: 989, type: !173)
!2101 = !DILocalVariable(name: "mutex", arg: 3, scope: !2098, file: !31, line: 989, type: !184)
!2102 = !DILocation(line: 0, scope: !2098, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 1100, column: 35, scope: !2083, inlinedAt: !2088)
!2104 = !DILocation(line: 0, scope: !1898, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 989, column: 19, scope: !2098, inlinedAt: !2103)
!2106 = !DILocation(line: 599, column: 11, scope: !1898, inlinedAt: !2105)
!2107 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !2105)
!2108 = !DILocation(line: 600, column: 11, scope: !1898, inlinedAt: !2105)
!2109 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !2105)
!2110 = !DILocation(line: 990, column: 11, scope: !2098, inlinedAt: !2103)
!2111 = !DILocation(line: 990, column: 35, scope: !2098, inlinedAt: !2103)
!2112 = !DILocation(line: 991, column: 18, scope: !2113, inlinedAt: !2103)
!2113 = distinct !DILexicalBlock(scope: !2098, file: !31, line: 990, column: 48)
!2114 = !DILocation(line: 992, column: 26, scope: !2113, inlinedAt: !2103)
!2115 = !DILocation(line: 1101, column: 24, scope: !2083, inlinedAt: !2088)
!2116 = !DILocation(line: 1101, column: 46, scope: !2083, inlinedAt: !2088)
!2117 = !DILocation(line: 1101, column: 9, scope: !2083, inlinedAt: !2088)
!2118 = !DILocation(line: 1103, column: 5, scope: !2083, inlinedAt: !2088)
!2119 = !DILocation(line: 1147, column: 1, scope: !2074)
!2120 = distinct !DISubprogram(name: "halide_cond_signal", scope: !31, file: !31, line: 1149, type: !2075, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "cond", arg: 1, scope: !2120, file: !31, line: 1149, type: !2077)
!2123 = !DILocalVariable(name: "fast_cond", scope: !2120, file: !31, line: 1150, type: !223)
!2124 = !DILocation(line: 0, scope: !2120)
!2125 = !DILocalVariable(name: "this", arg: 1, scope: !2126, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2126 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !224, file: !31, line: 1078, type: !228, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !231, retainedNodes: !2127)
!2127 = !{!2125, !2128, !2129}
!2128 = !DILocalVariable(name: "val", scope: !2126, file: !31, line: 1081, type: !26)
!2129 = !DILocalVariable(name: "control", scope: !2126, file: !31, line: 1087, type: !179)
!2130 = !DILocation(line: 0, scope: !2126, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1152, column: 16, scope: !2120)
!2132 = !DILocation(line: 1082, column: 30, scope: !2126, inlinedAt: !2131)
!2133 = !DILocation(line: 1082, column: 9, scope: !2126, inlinedAt: !2131)
!2134 = !DILocation(line: 1083, column: 17, scope: !2135, inlinedAt: !2131)
!2135 = distinct !DILexicalBlock(scope: !2126, file: !31, line: 1083, column: 13)
!2136 = !DILocation(line: 1083, column: 13, scope: !2126, inlinedAt: !2131)
!2137 = !DILocation(line: 1087, column: 9, scope: !2126, inlinedAt: !2131)
!2138 = !DILocation(line: 1087, column: 32, scope: !2126, inlinedAt: !2131)
!2139 = !DILocation(line: 1087, column: 48, scope: !2126, inlinedAt: !2131)
!2140 = !DILocalVariable(name: "this", arg: 1, scope: !2141, type: !178, flags: DIFlagArtificial | DIFlagObjectPointer)
!2141 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPjPNS2_10fast_mutexE", scope: !179, file: !31, line: 962, type: !200, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !199, retainedNodes: !2142)
!2142 = !{!2140, !2143, !2144}
!2143 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2141, file: !31, line: 962, type: !173)
!2144 = !DILocalVariable(name: "mutex", arg: 3, scope: !2141, file: !31, line: 962, type: !184)
!2145 = !DILocation(line: 0, scope: !2141, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 1087, column: 32, scope: !2126, inlinedAt: !2131)
!2147 = !DILocation(line: 0, scope: !1898, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 962, column: 19, scope: !2141, inlinedAt: !2146)
!2149 = !DILocation(line: 599, column: 11, scope: !1898, inlinedAt: !2148)
!2150 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !2148)
!2151 = !DILocation(line: 600, column: 11, scope: !1898, inlinedAt: !2148)
!2152 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !2148)
!2153 = !DILocation(line: 963, column: 11, scope: !2141, inlinedAt: !2146)
!2154 = !DILocation(line: 963, column: 35, scope: !2141, inlinedAt: !2146)
!2155 = !{!1733, !470, i64 20}
!2156 = !DILocation(line: 964, column: 16, scope: !2157, inlinedAt: !2146)
!2157 = distinct !DILexicalBlock(scope: !2141, file: !31, line: 963, column: 48)
!2158 = !DILocation(line: 1088, column: 20, scope: !2126, inlinedAt: !2131)
!2159 = !DILocation(line: 1088, column: 37, scope: !2126, inlinedAt: !2131)
!2160 = !DILocation(line: 1088, column: 9, scope: !2126, inlinedAt: !2131)
!2161 = !DILocation(line: 1090, column: 5, scope: !2126, inlinedAt: !2131)
!2162 = !DILocation(line: 1153, column: 1, scope: !2120)
!2163 = distinct !DISubprogram(name: "halide_cond_wait", scope: !31, file: !31, line: 1155, type: !2164, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null, !2077, !240}
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DILocalVariable(name: "cond", arg: 1, scope: !2163, file: !31, line: 1155, type: !2077)
!2168 = !DILocalVariable(name: "mutex", arg: 2, scope: !2163, file: !31, line: 1155, type: !240)
!2169 = !DILocalVariable(name: "fast_cond", scope: !2163, file: !31, line: 1156, type: !223)
!2170 = !DILocalVariable(name: "fast_mutex", scope: !2163, file: !31, line: 1158, type: !184)
!2171 = !DILocation(line: 0, scope: !2163)
!2172 = !DILocalVariable(name: "this", arg: 1, scope: !2173, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2173 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !224, file: !31, line: 1105, type: !234, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !233, retainedNodes: !2174)
!2174 = !{!2172, !2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "mutex", arg: 2, scope: !2173, file: !31, line: 1105, type: !184)
!2176 = !DILocalVariable(name: "control", scope: !2173, file: !31, line: 1106, type: !214)
!2177 = !DILocalVariable(name: "result", scope: !2173, file: !31, line: 1107, type: !26)
!2178 = !DILocalVariable(name: "val", scope: !2179, file: !31, line: 1114, type: !26)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !31, line: 1110, column: 16)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !31, line: 1108, column: 13)
!2181 = !DILocation(line: 0, scope: !2173, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 1160, column: 16, scope: !2163)
!2183 = !DILocation(line: 1106, column: 9, scope: !2173, inlinedAt: !2182)
!2184 = !DILocation(line: 1106, column: 30, scope: !2173, inlinedAt: !2182)
!2185 = !DILocation(line: 1106, column: 39, scope: !2173, inlinedAt: !2182)
!2186 = !DILocalVariable(name: "this", arg: 1, scope: !2187, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!2187 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPjPNS2_10fast_mutexE", scope: !214, file: !31, line: 1030, type: !220, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !219, retainedNodes: !2188)
!2188 = !{!2186, !2189, !2190}
!2189 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2187, file: !31, line: 1030, type: !173)
!2190 = !DILocalVariable(name: "mutex", arg: 3, scope: !2187, file: !31, line: 1030, type: !184)
!2191 = !DILocation(line: 0, scope: !2187, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 1106, column: 30, scope: !2173, inlinedAt: !2182)
!2193 = !DILocation(line: 0, scope: !1898, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 1030, column: 19, scope: !2187, inlinedAt: !2192)
!2195 = !DILocation(line: 599, column: 11, scope: !1898, inlinedAt: !2194)
!2196 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !2194)
!2197 = !DILocation(line: 600, column: 11, scope: !1898, inlinedAt: !2194)
!2198 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !2194)
!2199 = !DILocation(line: 1031, column: 11, scope: !2187, inlinedAt: !2192)
!2200 = !DILocation(line: 1031, column: 35, scope: !2187, inlinedAt: !2192)
!2201 = !DILocation(line: 1032, column: 18, scope: !2202, inlinedAt: !2192)
!2202 = distinct !DILexicalBlock(scope: !2187, file: !31, line: 1031, column: 48)
!2203 = !DILocation(line: 1033, column: 22, scope: !2202, inlinedAt: !2192)
!2204 = !DILocation(line: 1034, column: 16, scope: !2202, inlinedAt: !2192)
!2205 = !DILocation(line: 1107, column: 33, scope: !2173, inlinedAt: !2182)
!2206 = !DILocation(line: 1107, column: 50, scope: !2173, inlinedAt: !2182)
!2207 = !DILocation(line: 1107, column: 28, scope: !2173, inlinedAt: !2182)
!2208 = !DILocation(line: 1108, column: 23, scope: !2180, inlinedAt: !2182)
!2209 = !DILocation(line: 1108, column: 20, scope: !2180, inlinedAt: !2182)
!2210 = !DILocation(line: 0, scope: !2180, inlinedAt: !2182)
!2211 = !DILocation(line: 1108, column: 13, scope: !2173, inlinedAt: !2182)
!2212 = !DILocation(line: 0, scope: !1942, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 1109, column: 20, scope: !2214, inlinedAt: !2182)
!2214 = distinct !DILexicalBlock(scope: !2180, file: !31, line: 1108, column: 41)
!2215 = !DILocation(line: 0, scope: !630, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 924, column: 14, scope: !1949, inlinedAt: !2213)
!2217 = !DILocation(line: 0, scope: !641, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !2216)
!2219 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !2218)
!2220 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !2218)
!2221 = !DILocation(line: 924, column: 13, scope: !1942, inlinedAt: !2213)
!2222 = !DILocation(line: 0, scope: !1958, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 925, column: 13, scope: !1973, inlinedAt: !2213)
!2224 = !DILocation(line: 866, column: 9, scope: !1958, inlinedAt: !2223)
!2225 = !DILocation(line: 868, column: 9, scope: !1958, inlinedAt: !2223)
!2226 = !DILocation(line: 869, column: 17, scope: !1965, inlinedAt: !2223)
!2227 = !DILocation(line: 869, column: 28, scope: !1964, inlinedAt: !2223)
!2228 = !DILocation(line: 869, column: 18, scope: !1964, inlinedAt: !2223)
!2229 = !DILocation(line: 870, column: 46, scope: !1963, inlinedAt: !2223)
!2230 = !DILocation(line: 0, scope: !1963, inlinedAt: !2223)
!2231 = !DILocation(line: 0, scope: !630, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 871, column: 21, scope: !1983, inlinedAt: !2223)
!2233 = !DILocation(line: 0, scope: !641, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 127, column: 12, scope: !630, inlinedAt: !2232)
!2235 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !2234)
!2236 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !2234)
!2237 = !DILocation(line: 0, scope: !659, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 880, column: 25, scope: !1990, inlinedAt: !2223)
!2239 = !DILocation(line: 238, column: 24, scope: !668, inlinedAt: !2238)
!2240 = !DILocation(line: 238, column: 13, scope: !659, inlinedAt: !2238)
!2241 = !DILocation(line: 241, column: 27, scope: !659, inlinedAt: !2238)
!2242 = !DILocation(line: 880, column: 17, scope: !1965, inlinedAt: !2223)
!2243 = !DILocation(line: 239, column: 23, scope: !667, inlinedAt: !2238)
!2244 = !DILocation(line: 881, column: 17, scope: !1997, inlinedAt: !2223)
!2245 = !DILocation(line: 882, column: 17, scope: !1997, inlinedAt: !2223)
!2246 = !DILocation(line: 883, column: 17, scope: !1997, inlinedAt: !2223)
!2247 = !DILocation(line: 887, column: 27, scope: !1968, inlinedAt: !2223)
!2248 = !DILocation(line: 887, column: 41, scope: !1968, inlinedAt: !2223)
!2249 = !DILocation(line: 887, column: 17, scope: !1965, inlinedAt: !2223)
!2250 = !DILocation(line: 888, column: 46, scope: !1967, inlinedAt: !2223)
!2251 = !DILocation(line: 0, scope: !1967, inlinedAt: !2223)
!2252 = !DILocation(line: 0, scope: !1777, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 889, column: 22, scope: !2007, inlinedAt: !2223)
!2254 = !DILocation(line: 0, scope: !641, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 123, column: 12, scope: !1777, inlinedAt: !2253)
!2256 = !DILocation(line: 104, column: 16, scope: !641, inlinedAt: !2255)
!2257 = !DILocation(line: 106, column: 19, scope: !641, inlinedAt: !2255)
!2258 = !DILocation(line: 895, column: 13, scope: !1965, inlinedAt: !2223)
!2259 = !DILocation(line: 895, column: 35, scope: !1965, inlinedAt: !2223)
!2260 = !DILocation(line: 0, scope: !1892, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 895, column: 35, scope: !1965, inlinedAt: !2223)
!2262 = !DILocation(line: 0, scope: !1898, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 832, column: 19, scope: !1892, inlinedAt: !2261)
!2264 = !DILocation(line: 599, column: 47, scope: !1898, inlinedAt: !2263)
!2265 = !DILocation(line: 600, column: 43, scope: !1898, inlinedAt: !2263)
!2266 = !DILocation(line: 833, column: 11, scope: !1892, inlinedAt: !2261)
!2267 = !DILocation(line: 834, column: 18, scope: !1909, inlinedAt: !2261)
!2268 = !DILocation(line: 835, column: 16, scope: !1909, inlinedAt: !2261)
!2269 = !DILocation(line: 896, column: 32, scope: !1965, inlinedAt: !2223)
!2270 = !DILocation(line: 0, scope: !1965, inlinedAt: !2223)
!2271 = !DILocation(line: 897, column: 24, scope: !2026, inlinedAt: !2223)
!2272 = !DILocation(line: 897, column: 17, scope: !1965, inlinedAt: !2223)
!2273 = !DILocation(line: 902, column: 13, scope: !1965, inlinedAt: !2223)
!2274 = !DILocation(line: 903, column: 9, scope: !1958, inlinedAt: !2223)
!2275 = distinct !{!2275, !2225, !2274}
!2276 = !DILocation(line: 1115, column: 13, scope: !2179, inlinedAt: !2182)
!2277 = !DILocation(line: 0, scope: !2179, inlinedAt: !2182)
!2278 = !DILocation(line: 1116, column: 13, scope: !2279, inlinedAt: !2182)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !31, line: 1116, column: 13)
!2280 = distinct !DILexicalBlock(scope: !2179, file: !31, line: 1116, column: 13)
!2281 = !DILocation(line: 1116, column: 13, scope: !2280, inlinedAt: !2182)
!2282 = !DILocation(line: 1116, column: 13, scope: !2283, inlinedAt: !2182)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !31, line: 1116, column: 13)
!2284 = !DILocation(line: 1120, column: 5, scope: !2173, inlinedAt: !2182)
!2285 = !DILocation(line: 1161, column: 1, scope: !2163)
!2286 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !31, file: !31, line: 1168, type: !2287, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!236, !161}
!2289 = !{!2290, !2291}
!2290 = !DILocalVariable(name: "sz", arg: 1, scope: !2286, file: !31, line: 1168, type: !161)
!2291 = !DILocalVariable(name: "array", scope: !2286, file: !31, line: 1171, type: !236)
!2292 = !DILocation(line: 0, scope: !2286)
!2293 = !DILocation(line: 1171, column: 55, scope: !2286)
!2294 = !DILocation(line: 1171, column: 33, scope: !2286)
!2295 = !DILocation(line: 1173, column: 15, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2286, file: !31, line: 1173, column: 9)
!2297 = !DILocation(line: 1173, column: 9, scope: !2286)
!2298 = !DILocation(line: 1178, column: 21, scope: !2286)
!2299 = !DILocation(line: 1177, column: 36, scope: !2286)
!2300 = !DILocation(line: 1177, column: 18, scope: !2286)
!2301 = !{!2302, !470, i64 0}
!2302 = !{!"_ZTS18halide_mutex_array", !470, i64 0}
!2303 = !DILocation(line: 1179, column: 22, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2286, file: !31, line: 1179, column: 9)
!2305 = !DILocation(line: 1179, column: 9, scope: !2286)
!2306 = !DILocation(line: 1180, column: 9, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !31, line: 1179, column: 34)
!2308 = !DILocation(line: 1182, column: 9, scope: !2307)
!2309 = !DILocation(line: 1184, column: 5, scope: !2286)
!2310 = !DILocation(line: 1185, column: 5, scope: !2286)
!2311 = !DILocation(line: 1186, column: 1, scope: !2286)
!2312 = !DISubprogram(name: "halide_malloc", scope: !242, file: !242, line: 354, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!15, !15, !24}
!2315 = !DISubprogram(name: "halide_free", scope: !242, file: !242, line: 355, type: !2316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !15, !15}
!2318 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !31, file: !31, line: 1188, type: !2316, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2319 = !{!2320, !2321, !2322}
!2320 = !DILocalVariable(name: "user_context", arg: 1, scope: !2318, file: !31, line: 1188, type: !15)
!2321 = !DILocalVariable(name: "array", arg: 2, scope: !2318, file: !31, line: 1188, type: !15)
!2322 = !DILocalVariable(name: "arr_ptr", scope: !2318, file: !31, line: 1189, type: !236)
!2323 = !DILocation(line: 0, scope: !2318)
!2324 = !DILocation(line: 1190, column: 40, scope: !2318)
!2325 = !DILocation(line: 1190, column: 5, scope: !2318)
!2326 = !DILocation(line: 1191, column: 5, scope: !2318)
!2327 = !DILocation(line: 1192, column: 1, scope: !2318)
!2328 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !31, file: !31, line: 1194, type: !2329, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!161, !236, !161}
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "array", arg: 1, scope: !2328, file: !31, line: 1194, type: !236)
!2333 = !DILocalVariable(name: "entry", arg: 2, scope: !2328, file: !31, line: 1194, type: !161)
!2334 = !DILocation(line: 0, scope: !2328)
!2335 = !DILocation(line: 1195, column: 31, scope: !2328)
!2336 = !DILocation(line: 1195, column: 24, scope: !2328)
!2337 = !DILocation(line: 1195, column: 5, scope: !2328)
!2338 = !DILocation(line: 1196, column: 5, scope: !2328)
!2339 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !31, file: !31, line: 1199, type: !2329, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2340 = !{!2341, !2342}
!2341 = !DILocalVariable(name: "array", arg: 1, scope: !2339, file: !31, line: 1199, type: !236)
!2342 = !DILocalVariable(name: "entry", arg: 2, scope: !2339, file: !31, line: 1199, type: !161)
!2343 = !DILocation(line: 0, scope: !2339)
!2344 = !DILocation(line: 1200, column: 33, scope: !2339)
!2345 = !DILocation(line: 1200, column: 26, scope: !2339)
!2346 = !DILocation(line: 1200, column: 5, scope: !2339)
!2347 = !DILocation(line: 1201, column: 5, scope: !2339)
!2348 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !33, file: !250, line: 69, type: !2349, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!161, !161}
!2351 = !{!2352}
!2352 = !DILocalVariable(name: "threads", arg: 1, scope: !2348, file: !250, line: 69, type: !161)
!2353 = !DILocation(line: 0, scope: !2348)
!2354 = !DILocation(line: 70, column: 17, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !250, line: 70, column: 9)
!2356 = !DILocation(line: 70, column: 9, scope: !2348)
!2357 = !DILocation(line: 72, column: 16, scope: !2355)
!2358 = !DILocation(line: 75, column: 5, scope: !2348)
!2359 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !33, file: !250, line: 78, type: !413, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "desired_num_threads", scope: !2359, file: !250, line: 79, type: !161)
!2362 = !DILocalVariable(name: "threads_str", scope: !2359, file: !250, line: 80, type: !309)
!2363 = !DILocation(line: 0, scope: !2359)
!2364 = !DILocation(line: 80, column: 25, scope: !2359)
!2365 = !DILocation(line: 81, column: 10, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2359, file: !250, line: 81, column: 9)
!2367 = !DILocation(line: 81, column: 9, scope: !2359)
!2368 = !DILocation(line: 83, column: 23, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !250, line: 81, column: 23)
!2370 = !DILocation(line: 85, column: 9, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2359, file: !250, line: 85, column: 9)
!2372 = !DILocation(line: 85, column: 9, scope: !2359)
!2373 = !DILocation(line: 86, column: 31, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2371, file: !250, line: 85, column: 22)
!2375 = !DILocation(line: 87, column: 5, scope: !2374)
!2376 = !DILocation(line: 88, column: 31, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2371, file: !250, line: 87, column: 12)
!2378 = !DILocation(line: 0, scope: !2371)
!2379 = !DILocation(line: 90, column: 5, scope: !2359)
!2380 = !DISubprogram(name: "getenv", scope: !27, file: !27, line: 85, type: !2381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!309, !265}
!2383 = !DISubprogram(name: "atoi", scope: !27, file: !27, line: 89, type: !2384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!161, !265}
!2386 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !33, file: !250, line: 197, type: !2387, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !248}
!2389 = !{!2390, !2391, !2392, !2394, !2396, !2398, !2400, !2401, !2402, !2403, !2404, !2405, !2408, !2409, !2411, !2412}
!2390 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2386, file: !250, line: 197, type: !248)
!2391 = !DILocalVariable(name: "spin_count", scope: !2386, file: !250, line: 198, type: !161)
!2392 = !DILocalVariable(name: "max_spin_count", scope: !2386, file: !250, line: 199, type: !2393)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!2394 = !DILocalVariable(name: "job", scope: !2395, file: !250, line: 202, type: !248)
!2395 = distinct !DILexicalBlock(scope: !2386, file: !250, line: 201, column: 69)
!2396 = !DILocalVariable(name: "prev_ptr", scope: !2395, file: !250, line: 203, type: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!2398 = !DILocalVariable(name: "enough_threads", scope: !2399, file: !250, line: 235, type: !66)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 229, column: 21)
!2400 = !DILocalVariable(name: "parent_job", scope: !2399, file: !250, line: 237, type: !248)
!2401 = !DILocalVariable(name: "threads_available", scope: !2399, file: !250, line: 239, type: !161)
!2402 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2399, file: !250, line: 256, type: !66)
!2403 = !DILocalVariable(name: "can_add_worker", scope: !2399, file: !250, line: 260, type: !66)
!2404 = !DILocalVariable(name: "result", scope: !2395, file: !250, line: 328, type: !161)
!2405 = !DILocalVariable(name: "total_iters", scope: !2406, file: !250, line: 336, type: !161)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !250, line: 330, column: 31)
!2407 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 330, column: 13)
!2408 = !DILocalVariable(name: "iters", scope: !2406, file: !250, line: 337, type: !161)
!2409 = !DILocalVariable(name: "myjob", scope: !2410, file: !250, line: 369, type: !249)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !250, line: 367, column: 16)
!2411 = !DILocalVariable(name: "wake_owners", scope: !2395, file: !250, line: 396, type: !66)
!2412 = !DILocalVariable(name: "i", scope: !2413, file: !250, line: 402, type: !161)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !250, line: 402, column: 13)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !250, line: 399, column: 26)
!2415 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 399, column: 13)
!2416 = !DILocation(line: 0, scope: !2386)
!2417 = !DILocation(line: 63, column: 31, scope: !2418, inlinedAt: !2422)
!2418 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !249, file: !250, line: 62, type: !301, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !300, retainedNodes: !2419)
!2419 = !{!2420}
!2420 = !DILocalVariable(name: "this", arg: 1, scope: !2418, type: !2421, flags: DIFlagArtificial | DIFlagObjectPointer)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!2422 = distinct !DILocation(line: 201, column: 35, scope: !2386)
!2423 = !DILocation(line: 201, column: 5, scope: !2386)
!2424 = !DILocation(line: 198, column: 9, scope: !2386)
!2425 = !DILocation(line: 201, column: 12, scope: !2386)
!2426 = !DILocation(line: 0, scope: !2418, inlinedAt: !2422)
!2427 = !DILocation(line: 63, column: 21, scope: !2418, inlinedAt: !2422)
!2428 = !{!2429, !472, i64 24}
!2429 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2430, i64 0, !470, i64 36, !470, i64 40, !470, i64 44, !472, i64 48, !470, i64 52, !472, i64 56, !470, i64 60, !472, i64 64, !472, i64 68, !472, i64 72, !689, i64 76}
!2430 = !{!"_ZTS22halide_parallel_task_t", !470, i64 0, !470, i64 4, !470, i64 8, !470, i64 12, !472, i64 16, !472, i64 20, !472, i64 24, !472, i64 28, !689, i64 32}
!2431 = !DILocation(line: 63, column: 16, scope: !2418, inlinedAt: !2422)
!2432 = !DILocation(line: 63, column: 28, scope: !2418, inlinedAt: !2422)
!2433 = !DILocation(line: 201, column: 59, scope: !2386)
!2434 = !{!2435, !689, i64 1072}
!2435 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2436, i64 0, !472, i64 4, !472, i64 8, !470, i64 12, !472, i64 16, !472, i64 20, !472, i64 24, !2437, i64 28, !2437, i64 32, !2437, i64 36, !472, i64 40, !472, i64 44, !431, i64 48, !689, i64 1072, !689, i64 1073, !472, i64 1076}
!2436 = !{!"_ZTS12halide_mutex", !431, i64 0}
!2437 = !{!"_ZTS11halide_cond", !431, i64 0}
!2438 = !{!2429, !472, i64 64}
!2439 = !DILocation(line: 202, column: 32, scope: !2395)
!2440 = !{!2435, !470, i64 12}
!2441 = !DILocation(line: 0, scope: !2395)
!2442 = !DILocation(line: 206, column: 28, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !250, line: 206, column: 17)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !250, line: 205, column: 24)
!2445 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 205, column: 13)
!2446 = !{!2429, !472, i64 68}
!2447 = !DILocation(line: 206, column: 40, scope: !2443)
!2448 = !DILocation(line: 206, column: 17, scope: !2444)
!2449 = !DILocation(line: 207, column: 32, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !250, line: 207, column: 21)
!2451 = distinct !DILexicalBlock(scope: !2443, file: !250, line: 206, column: 46)
!2452 = !DILocation(line: 207, column: 47, scope: !2450)
!2453 = !DILocation(line: 207, column: 21, scope: !2451)
!2454 = !DILocation(line: 208, column: 32, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !250, line: 207, column: 53)
!2456 = !DILocation(line: 208, column: 21, scope: !2455)
!2457 = !DILocation(line: 209, column: 42, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !250, line: 208, column: 46)
!2459 = !DILocation(line: 210, column: 36, scope: !2458)
!2460 = !{!2429, !470, i64 40}
!2461 = distinct !{!2461, !2456, !2462, !746}
!2462 = !DILocation(line: 211, column: 21, scope: !2455)
!2463 = !DILocation(line: 212, column: 38, scope: !2455)
!2464 = !DILocation(line: 212, column: 31, scope: !2455)
!2465 = !DILocation(line: 213, column: 38, scope: !2455)
!2466 = !DILocation(line: 214, column: 21, scope: !2455)
!2467 = !DILocation(line: 216, column: 35, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2443, file: !250, line: 216, column: 24)
!2469 = !{!2429, !470, i64 52}
!2470 = !DILocation(line: 216, column: 24, scope: !2468)
!2471 = !DILocation(line: 216, column: 46, scope: !2468)
!2472 = !DILocation(line: 216, column: 72, scope: !2468)
!2473 = !DILocation(line: 216, column: 84, scope: !2468)
!2474 = !DILocation(line: 216, column: 24, scope: !2443)
!2475 = !DILocation(line: 217, column: 40, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2468, file: !250, line: 216, column: 90)
!2477 = !DILocation(line: 221, column: 17, scope: !2476)
!2478 = !DILocation(line: 222, column: 17, scope: !2476)
!2479 = !DILocation(line: 229, column: 16, scope: !2395)
!2480 = !DILocation(line: 229, column: 9, scope: !2395)
!2481 = !DILocation(line: 240, column: 17, scope: !2399)
!2482 = !DILocation(line: 237, column: 37, scope: !2399)
!2483 = !DILocation(line: 0, scope: !2399)
!2484 = !DILocation(line: 240, column: 28, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2399, file: !250, line: 240, column: 17)
!2486 = !DILocation(line: 244, column: 33, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !250, line: 244, column: 21)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !250, line: 243, column: 20)
!2489 = !DILocation(line: 244, column: 48, scope: !2487)
!2490 = !DILocation(line: 0, scope: !2487)
!2491 = !{!2429, !472, i64 28}
!2492 = !DILocation(line: 244, column: 21, scope: !2488)
!2493 = !DILocation(line: 247, column: 68, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2487, file: !250, line: 246, column: 24)
!2495 = !DILocation(line: 247, column: 113, scope: !2494)
!2496 = !DILocation(line: 245, column: 84, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2487, file: !250, line: 244, column: 54)
!2498 = !DILocation(line: 246, column: 17, scope: !2497)
!2499 = !DILocation(line: 242, column: 49, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2485, file: !250, line: 240, column: 40)
!2501 = !{!2435, !472, i64 16}
!2502 = !DILocation(line: 242, column: 65, scope: !2500)
!2503 = !DILocation(line: 243, column: 13, scope: !2500)
!2504 = !DILocation(line: 0, scope: !2485)
!2505 = !DILocation(line: 250, column: 61, scope: !2399)
!2506 = !DILocation(line: 250, column: 48, scope: !2399)
!2507 = !DILocation(line: 260, column: 47, scope: !2399)
!2508 = !{!2429, !689, i64 32}
!2509 = !DILocation(line: 260, column: 54, scope: !2399)
!2510 = !DILocation(line: 260, column: 63, scope: !2399)
!2511 = !DILocation(line: 260, column: 78, scope: !2399)
!2512 = !DILocation(line: 265, column: 32, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2399, file: !250, line: 265, column: 17)
!2514 = !DILocalVariable(name: "this", arg: 1, scope: !2515, type: !248, flags: DIFlagArtificial | DIFlagObjectPointer)
!2515 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !249, file: !250, line: 46, type: !297, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !296, retainedNodes: !2516)
!2516 = !{!2514}
!2517 = !DILocation(line: 0, scope: !2515, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 266, column: 26, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !250, line: 266, column: 21)
!2520 = distinct !DILexicalBlock(scope: !2513, file: !250, line: 265, column: 80)
!2521 = !DILocation(line: 47, column: 16, scope: !2522, inlinedAt: !2518)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !250, line: 47, column: 9)
!2523 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 47, column: 9)
!2524 = !{!2429, !472, i64 72}
!2525 = !DILocation(line: 47, column: 38, scope: !2522, inlinedAt: !2518)
!2526 = !{!2429, !472, i64 16}
!2527 = !DILocation(line: 47, column: 31, scope: !2522, inlinedAt: !2518)
!2528 = !DILocation(line: 47, column: 9, scope: !2523, inlinedAt: !2518)
!2529 = !DILocation(line: 48, column: 60, scope: !2530, inlinedAt: !2518)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !250, line: 48, column: 17)
!2531 = distinct !DILexicalBlock(scope: !2522, file: !250, line: 47, column: 72)
!2532 = !{!2429, !470, i64 12}
!2533 = !DILocation(line: 48, column: 87, scope: !2530, inlinedAt: !2518)
!2534 = !{!2535, !470, i64 0}
!2535 = !{!"_ZTS26halide_semaphore_acquire_t", !470, i64 0, !472, i64 4}
!2536 = !DILocation(line: 49, column: 87, scope: !2530, inlinedAt: !2518)
!2537 = !{!2535, !472, i64 4}
!2538 = !DILocation(line: 48, column: 18, scope: !2530, inlinedAt: !2518)
!2539 = !DILocation(line: 48, column: 17, scope: !2531, inlinedAt: !2518)
!2540 = !DILocation(line: 47, column: 68, scope: !2522, inlinedAt: !2518)
!2541 = distinct !{!2541, !2528, !2542, !746}
!2542 = !DILocation(line: 56, column: 9, scope: !2523, inlinedAt: !2518)
!2543 = !DILocation(line: 272, column: 31, scope: !2399)
!2544 = !DILocation(line: 273, column: 24, scope: !2399)
!2545 = !DILocation(line: 256, column: 66, scope: !2399)
!2546 = !{!2429, !470, i64 44}
!2547 = !DILocation(line: 256, column: 89, scope: !2399)
!2548 = !DILocation(line: 256, column: 75, scope: !2399)
!2549 = !DILocation(line: 278, column: 17, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !250, line: 276, column: 19)
!2551 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 276, column: 13)
!2552 = !DILocation(line: 279, column: 31, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !250, line: 279, column: 21)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !250, line: 278, column: 28)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !250, line: 278, column: 17)
!2556 = !DILocation(line: 279, column: 34, scope: !2553)
!2557 = !DILocation(line: 279, column: 21, scope: !2554)
!2558 = !DILocation(line: 281, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2553, file: !250, line: 279, column: 52)
!2560 = !DILocation(line: 282, column: 21, scope: !2559)
!2561 = !DILocation(line: 283, column: 21, scope: !2559)
!2562 = !DILocation(line: 284, column: 17, scope: !2559)
!2563 = !DILocation(line: 285, column: 47, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2553, file: !250, line: 284, column: 24)
!2565 = !{!2435, !472, i64 44}
!2566 = !DILocation(line: 286, column: 50, scope: !2564)
!2567 = !{!2429, !689, i64 76}
!2568 = !DILocation(line: 287, column: 21, scope: !2564)
!2569 = !DILocation(line: 288, column: 50, scope: !2564)
!2570 = !DILocation(line: 289, column: 47, scope: !2564)
!2571 = !DILocation(line: 292, column: 44, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2555, file: !250, line: 291, column: 20)
!2573 = !{!2435, !472, i64 40}
!2574 = !DILocation(line: 293, column: 32, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !250, line: 293, column: 21)
!2576 = !{!2435, !472, i64 20}
!2577 = !DILocation(line: 293, column: 57, scope: !2575)
!2578 = !{!2435, !472, i64 24}
!2579 = !DILocation(line: 293, column: 44, scope: !2575)
!2580 = !DILocation(line: 293, column: 21, scope: !2572)
!2581 = !DILocation(line: 295, column: 43, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2575, file: !250, line: 293, column: 77)
!2583 = !DILocation(line: 296, column: 21, scope: !2582)
!2584 = !DILocation(line: 297, column: 43, scope: !2582)
!2585 = !DILocation(line: 298, column: 17, scope: !2582)
!2586 = !DILocation(line: 298, column: 38, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2575, file: !250, line: 298, column: 28)
!2588 = !DILocation(line: 298, column: 41, scope: !2587)
!2589 = !DILocation(line: 298, column: 28, scope: !2575)
!2590 = !DILocation(line: 300, column: 21, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !250, line: 298, column: 59)
!2592 = !DILocation(line: 301, column: 21, scope: !2591)
!2593 = !DILocation(line: 302, column: 21, scope: !2591)
!2594 = !DILocation(line: 303, column: 17, scope: !2591)
!2595 = !DILocation(line: 304, column: 21, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2587, file: !250, line: 303, column: 24)
!2597 = !DILocation(line: 306, column: 44, scope: !2572)
!2598 = !DILocation(line: 58, column: 24, scope: !2515, inlinedAt: !2518)
!2599 = !DILocation(line: 318, column: 14, scope: !2395)
!2600 = !DILocation(line: 318, column: 28, scope: !2395)
!2601 = !DILocation(line: 320, column: 18, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 320, column: 13)
!2603 = !DILocation(line: 320, column: 29, scope: !2602)
!2604 = !DILocation(line: 0, scope: !2602)
!2605 = !DILocation(line: 320, column: 13, scope: !2395)
!2606 = !DILocation(line: 330, column: 23, scope: !2407)
!2607 = !DILocation(line: 330, column: 13, scope: !2395)
!2608 = !DILocation(line: 332, column: 30, scope: !2406)
!2609 = !DILocation(line: 332, column: 23, scope: !2406)
!2610 = !DILocation(line: 335, column: 13, scope: !2406)
!2611 = !DILocation(line: 0, scope: !2406)
!2612 = !DILocation(line: 338, column: 13, scope: !2406)
!2613 = !DILocation(line: 340, column: 35, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2406, file: !250, line: 338, column: 33)
!2615 = !DILocation(line: 340, column: 42, scope: !2614)
!2616 = !DILocation(line: 340, column: 57, scope: !2614)
!2617 = !DILocation(line: 340, column: 65, scope: !2614)
!2618 = !DILocation(line: 47, column: 16, scope: !2522, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 341, column: 29, scope: !2614)
!2620 = !DILocation(line: 47, column: 38, scope: !2522, inlinedAt: !2619)
!2621 = !DILocation(line: 340, column: 17, scope: !2614)
!2622 = !DILocation(line: 0, scope: !2515, inlinedAt: !2619)
!2623 = !DILocation(line: 47, column: 31, scope: !2522, inlinedAt: !2619)
!2624 = !DILocation(line: 47, column: 9, scope: !2523, inlinedAt: !2619)
!2625 = !DILocation(line: 48, column: 60, scope: !2530, inlinedAt: !2619)
!2626 = !DILocation(line: 48, column: 87, scope: !2530, inlinedAt: !2619)
!2627 = !DILocation(line: 49, column: 87, scope: !2530, inlinedAt: !2619)
!2628 = !DILocation(line: 48, column: 18, scope: !2530, inlinedAt: !2619)
!2629 = !DILocation(line: 48, column: 17, scope: !2531, inlinedAt: !2619)
!2630 = !DILocation(line: 47, column: 68, scope: !2522, inlinedAt: !2619)
!2631 = distinct !{!2631, !2624, !2632, !746}
!2632 = !DILocation(line: 56, column: 9, scope: !2523, inlinedAt: !2619)
!2633 = !DILocation(line: 58, column: 24, scope: !2515, inlinedAt: !2619)
!2634 = !DILocation(line: 342, column: 26, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2614, file: !250, line: 341, column: 46)
!2636 = distinct !{!2636, !2621, !2637, !746}
!2637 = !DILocation(line: 343, column: 17, scope: !2614)
!2638 = !DILocation(line: 344, column: 27, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2614, file: !250, line: 344, column: 21)
!2640 = !DILocation(line: 344, column: 21, scope: !2614)
!2641 = !DILocation(line: 349, column: 51, scope: !2614)
!2642 = !{!2429, !470, i64 60}
!2643 = !DILocation(line: 349, column: 75, scope: !2614)
!2644 = !{!2429, !470, i64 0}
!2645 = !DILocation(line: 350, column: 56, scope: !2614)
!2646 = !{!2429, !472, i64 20}
!2647 = !DILocation(line: 350, column: 60, scope: !2614)
!2648 = !DILocation(line: 351, column: 56, scope: !2614)
!2649 = !{!2429, !470, i64 4}
!2650 = !DILocation(line: 349, column: 26, scope: !2614)
!2651 = !DILocation(line: 352, column: 29, scope: !2614)
!2652 = !DILocation(line: 338, column: 27, scope: !2406)
!2653 = distinct !{!2653, !2612, !2654, !746}
!2654 = !DILocation(line: 354, column: 13, scope: !2406)
!2655 = !DILocation(line: 355, column: 13, scope: !2406)
!2656 = !DILocation(line: 357, column: 27, scope: !2406)
!2657 = !DILocation(line: 358, column: 30, scope: !2406)
!2658 = !DILocation(line: 361, column: 17, scope: !2406)
!2659 = !DILocation(line: 362, column: 34, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !250, line: 361, column: 30)
!2661 = distinct !DILexicalBlock(scope: !2406, file: !250, line: 361, column: 17)
!2662 = !DILocation(line: 399, column: 13, scope: !2395)
!2663 = !DILocation(line: 363, column: 41, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !250, line: 363, column: 24)
!2665 = !DILocation(line: 363, column: 24, scope: !2661)
!2666 = !DILocation(line: 364, column: 44, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !250, line: 363, column: 46)
!2668 = !DILocation(line: 364, column: 31, scope: !2667)
!2669 = !DILocation(line: 365, column: 33, scope: !2667)
!2670 = !DILocation(line: 366, column: 13, scope: !2667)
!2671 = !DILocation(line: 369, column: 26, scope: !2410)
!2672 = !{i64 0, i64 4, !1077, i64 4, i64 4, !1077, i64 8, i64 4, !1077, i64 12, i64 4, !1077, i64 16, i64 4, !582, i64 20, i64 4, !582, i64 24, i64 4, !582, i64 28, i64 4, !582, i64 32, i64 1, !2673, i64 36, i64 4, !1077, i64 40, i64 4, !1077, i64 44, i64 4, !1077, i64 48, i64 4, !582, i64 52, i64 4, !1077, i64 56, i64 4, !582, i64 60, i64 4, !1077, i64 64, i64 4, !582, i64 68, i64 4, !582, i64 72, i64 4, !582, i64 76, i64 1, !2673}
!2673 = !{!689, !689, i64 0}
!2674 = !DILocation(line: 0, scope: !2410)
!2675 = !{i64 0, i64 4, !1077, i64 4, i64 4, !1077, i64 8, i64 4, !1077, i64 12, i64 4, !582, i64 16, i64 4, !582, i64 20, i64 4, !582, i64 24, i64 4, !582, i64 28, i64 1, !2673, i64 32, i64 4, !1077, i64 36, i64 4, !1077, i64 40, i64 4, !1077, i64 44, i64 4, !582, i64 48, i64 4, !1077, i64 52, i64 4, !582, i64 56, i64 4, !1077, i64 60, i64 4, !582, i64 64, i64 4, !582, i64 68, i64 4, !582, i64 72, i64 1, !2673}
!2676 = !{i64 0, i64 4, !1077, i64 4, i64 4, !1077, i64 8, i64 4, !1077, i64 12, i64 4, !582, i64 16, i64 4, !1077, i64 20, i64 4, !582, i64 24, i64 4, !1077, i64 28, i64 4, !582, i64 32, i64 4, !582, i64 36, i64 4, !582, i64 40, i64 1, !2673}
!2677 = !{i64 0, i64 4, !1077, i64 4, i64 4, !582, i64 8, i64 4, !582, i64 12, i64 4, !582, i64 16, i64 1, !2673}
!2678 = !DILocation(line: 370, column: 26, scope: !2410)
!2679 = !DILocation(line: 371, column: 23, scope: !2410)
!2680 = !DILocation(line: 371, column: 29, scope: !2410)
!2681 = !DILocation(line: 375, column: 34, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2410, file: !250, line: 375, column: 17)
!2683 = !DILocation(line: 375, column: 17, scope: !2410)
!2684 = !DILocation(line: 376, column: 34, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !250, line: 375, column: 40)
!2686 = !DILocation(line: 376, column: 27, scope: !2685)
!2687 = !DILocation(line: 377, column: 13, scope: !2685)
!2688 = !DILocation(line: 380, column: 13, scope: !2410)
!2689 = !DILocation(line: 381, column: 17, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2410, file: !250, line: 381, column: 17)
!2691 = !DILocation(line: 381, column: 17, scope: !2410)
!2692 = !DILocation(line: 382, column: 26, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !250, line: 381, column: 32)
!2694 = !DILocation(line: 384, column: 13, scope: !2693)
!2695 = !DILocation(line: 387, column: 66, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2690, file: !250, line: 384, column: 20)
!2697 = !DILocation(line: 385, column: 26, scope: !2696)
!2698 = !DILocation(line: 0, scope: !2690)
!2699 = !DILocation(line: 389, column: 13, scope: !2410)
!2700 = !DILocation(line: 399, column: 20, scope: !2415)
!2701 = !DILocation(line: 400, column: 18, scope: !2414)
!2702 = !DILocation(line: 400, column: 30, scope: !2414)
!2703 = !DILocation(line: 0, scope: !2413)
!2704 = !DILocation(line: 402, column: 38, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2413, file: !250, line: 402, column: 13)
!2706 = !{!2429, !472, i64 48}
!2707 = !DILocation(line: 402, column: 31, scope: !2705)
!2708 = !DILocation(line: 402, column: 13, scope: !2413)
!2709 = !DILocation(line: 410, column: 9, scope: !2414)
!2710 = !DILocation(line: 404, column: 38, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !250, line: 404, column: 21)
!2712 = distinct !DILexicalBlock(scope: !2705, file: !250, line: 402, column: 58)
!2713 = !DILocation(line: 404, column: 50, scope: !2711)
!2714 = !DILocation(line: 404, column: 21, scope: !2712)
!2715 = !DILocation(line: 405, column: 50, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !250, line: 404, column: 56)
!2717 = !DILocation(line: 406, column: 42, scope: !2716)
!2718 = !DILocation(line: 406, column: 57, scope: !2716)
!2719 = !DILocation(line: 406, column: 62, scope: !2716)
!2720 = !DILocation(line: 406, column: 82, scope: !2716)
!2721 = !DILocation(line: 0, scope: !2716)
!2722 = !DILocation(line: 406, column: 36, scope: !2716)
!2723 = !DILocation(line: 406, column: 33, scope: !2716)
!2724 = !DILocation(line: 407, column: 17, scope: !2716)
!2725 = !DILocation(line: 402, column: 54, scope: !2705)
!2726 = distinct !{!2726, !2708, !2727, !746}
!2727 = !DILocation(line: 409, column: 13, scope: !2413)
!2728 = !DILocation(line: 412, column: 18, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 412, column: 13)
!2730 = !DILocation(line: 412, column: 29, scope: !2729)
!2731 = !DILocation(line: 0, scope: !2729)
!2732 = !DILocation(line: 412, column: 13, scope: !2395)
!2733 = !DILocation(line: 421, column: 28, scope: !2395)
!2734 = !DILocation(line: 425, column: 25, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2395, file: !250, line: 425, column: 13)
!2736 = !DILocation(line: 426, column: 34, scope: !2735)
!2737 = !DILocation(line: 426, column: 39, scope: !2735)
!2738 = distinct !{!2738, !2423, !2739, !746}
!2739 = !DILocation(line: 430, column: 5, scope: !2386)
!2740 = !DILocation(line: 426, column: 53, scope: !2735)
!2741 = !DILocation(line: 426, column: 60, scope: !2735)
!2742 = !DILocation(line: 426, column: 65, scope: !2735)
!2743 = !DILocation(line: 426, column: 73, scope: !2735)
!2744 = !DILocation(line: 426, column: 85, scope: !2735)
!2745 = !DILocation(line: 426, column: 91, scope: !2735)
!2746 = !DILocation(line: 426, column: 99, scope: !2735)
!2747 = !DILocation(line: 425, column: 13, scope: !2395)
!2748 = !DILocation(line: 428, column: 13, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2735, file: !250, line: 426, column: 119)
!2750 = !DILocation(line: 429, column: 9, scope: !2749)
!2751 = !DILocation(line: 431, column: 1, scope: !2386)
!2752 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !250, file: !250, line: 797, type: !371, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759}
!2754 = !DILocalVariable(name: "user_context", arg: 1, scope: !2752, file: !250, line: 797, type: !15)
!2755 = !DILocalVariable(name: "f", arg: 2, scope: !2752, file: !250, line: 797, type: !256)
!2756 = !DILocalVariable(name: "min", arg: 3, scope: !2752, file: !250, line: 798, type: !161)
!2757 = !DILocalVariable(name: "size", arg: 4, scope: !2752, file: !250, line: 798, type: !161)
!2758 = !DILocalVariable(name: "closure", arg: 5, scope: !2752, file: !250, line: 798, type: !260)
!2759 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2752, file: !250, line: 798, type: !15)
!2760 = !DILocation(line: 0, scope: !2752)
!2761 = !DILocation(line: 799, column: 12, scope: !2752)
!2762 = !DILocation(line: 799, column: 5, scope: !2752)
!2763 = distinct !DISubprogram(name: "halide_do_task", scope: !250, file: !250, line: 787, type: !365, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DILocalVariable(name: "user_context", arg: 1, scope: !2763, file: !250, line: 787, type: !15)
!2766 = !DILocalVariable(name: "f", arg: 2, scope: !2763, file: !250, line: 787, type: !282)
!2767 = !DILocalVariable(name: "idx", arg: 3, scope: !2763, file: !250, line: 787, type: !161)
!2768 = !DILocalVariable(name: "closure", arg: 4, scope: !2763, file: !250, line: 788, type: !260)
!2769 = !DILocation(line: 0, scope: !2763)
!2770 = !DILocation(line: 789, column: 14, scope: !2763)
!2771 = !DILocation(line: 789, column: 12, scope: !2763)
!2772 = !DILocation(line: 789, column: 5, scope: !2763)
!2773 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !33, file: !250, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2774)
!2774 = !{!2775}
!2775 = !DILocalVariable(name: "arg", arg: 1, scope: !2773, file: !250, line: 433, type: !15)
!2776 = !DILocation(line: 0, scope: !2773)
!2777 = !DILocation(line: 434, column: 5, scope: !2773)
!2778 = !DILocation(line: 435, column: 34, scope: !2773)
!2779 = !DILocation(line: 435, column: 5, scope: !2773)
!2780 = !DILocation(line: 436, column: 5, scope: !2773)
!2781 = !DILocation(line: 437, column: 1, scope: !2773)
!2782 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !33, file: !250, line: 439, type: !2783, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !161, !248, !248}
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2796, !2798}
!2786 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2782, file: !250, line: 439, type: !161)
!2787 = !DILocalVariable(name: "jobs", arg: 2, scope: !2782, file: !250, line: 439, type: !248)
!2788 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2782, file: !250, line: 439, type: !248)
!2789 = !DILocalVariable(name: "min_threads", scope: !2782, file: !250, line: 457, type: !161)
!2790 = !DILocalVariable(name: "workers_to_wake", scope: !2782, file: !250, line: 461, type: !161)
!2791 = !DILocalVariable(name: "stealable_jobs", scope: !2782, file: !250, line: 465, type: !66)
!2792 = !DILocalVariable(name: "job_has_acquires", scope: !2782, file: !250, line: 467, type: !66)
!2793 = !DILocalVariable(name: "job_may_block", scope: !2782, file: !250, line: 468, type: !66)
!2794 = !DILocalVariable(name: "i", scope: !2795, file: !250, line: 469, type: !161)
!2795 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 469, column: 5)
!2796 = !DILocalVariable(name: "i", scope: !2797, file: !250, line: 527, type: !161)
!2797 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 527, column: 5)
!2798 = !DILocalVariable(name: "nested_parallelism", scope: !2782, file: !250, line: 537, type: !66)
!2799 = !DILocation(line: 0, scope: !2782)
!2800 = !DILocation(line: 440, column: 21, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 440, column: 9)
!2802 = !{!2435, !689, i64 1073}
!2803 = !DILocation(line: 440, column: 9, scope: !2782)
!2804 = !DILocalVariable(name: "bytes", scope: !2805, file: !250, line: 148, type: !265)
!2805 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !325, file: !250, line: 146, type: !355, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !354, retainedNodes: !2806)
!2806 = !{!2807, !2804, !2809}
!2807 = !DILocalVariable(name: "this", arg: 1, scope: !2805, type: !2808, flags: DIFlagArtificial | DIFlagObjectPointer)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!2809 = !DILocalVariable(name: "limit", scope: !2805, file: !250, line: 149, type: !265)
!2810 = !DILocation(line: 0, scope: !2805, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 441, column: 20, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2801, file: !250, line: 440, column: 34)
!2813 = !DILocation(line: 150, column: 33, scope: !2805, inlinedAt: !2811)
!2814 = !DILocation(line: 150, column: 40, scope: !2805, inlinedAt: !2811)
!2815 = !DILocation(line: 150, column: 9, scope: !2805, inlinedAt: !2811)
!2816 = !DILocation(line: 151, column: 18, scope: !2817, inlinedAt: !2811)
!2817 = distinct !DILexicalBlock(scope: !2805, file: !250, line: 150, column: 46)
!2818 = !DILocation(line: 150, column: 22, scope: !2805, inlinedAt: !2811)
!2819 = !DILocation(line: 150, column: 30, scope: !2805, inlinedAt: !2811)
!2820 = distinct !{!2820, !2815, !2821, !746}
!2821 = !DILocation(line: 152, column: 9, scope: !2805, inlinedAt: !2811)
!2822 = !DILocation(line: 153, column: 9, scope: !2823, inlinedAt: !2811)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !250, line: 153, column: 9)
!2824 = distinct !DILexicalBlock(scope: !2805, file: !250, line: 153, column: 9)
!2825 = !DILocation(line: 153, column: 9, scope: !2824, inlinedAt: !2811)
!2826 = !DILocation(line: 153, column: 9, scope: !2827, inlinedAt: !2811)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !250, line: 153, column: 9)
!2828 = !DILocation(line: 446, column: 25, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2812, file: !250, line: 446, column: 13)
!2830 = !{!2435, !472, i64 4}
!2831 = !DILocation(line: 446, column: 14, scope: !2829)
!2832 = !DILocation(line: 446, column: 13, scope: !2812)
!2833 = !DILocation(line: 447, column: 50, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !250, line: 446, column: 50)
!2835 = !DILocation(line: 447, column: 48, scope: !2834)
!2836 = !DILocation(line: 448, column: 9, scope: !2834)
!2837 = !DILocation(line: 449, column: 75, scope: !2812)
!2838 = !DILocation(line: 449, column: 46, scope: !2812)
!2839 = !DILocation(line: 449, column: 44, scope: !2812)
!2840 = !DILocation(line: 450, column: 32, scope: !2812)
!2841 = !DILocation(line: 451, column: 5, scope: !2812)
!2842 = !DILocation(line: 0, scope: !2795)
!2843 = !DILocation(line: 469, column: 23, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2795, file: !250, line: 469, column: 5)
!2845 = !DILocation(line: 469, column: 5, scope: !2795)
!2846 = !DILocation(line: 457, column: 9, scope: !2782)
!2847 = !DILocation(line: 487, column: 21, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 487, column: 9)
!2849 = !DILocation(line: 487, column: 9, scope: !2782)
!2850 = !DILocation(line: 470, column: 26, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !250, line: 470, column: 13)
!2852 = distinct !DILexicalBlock(scope: !2844, file: !250, line: 469, column: 40)
!2853 = !DILocation(line: 470, column: 38, scope: !2851)
!2854 = !DILocation(line: 470, column: 13, scope: !2852)
!2855 = !DILocation(line: 476, column: 26, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !250, line: 476, column: 13)
!2857 = !DILocation(line: 476, column: 41, scope: !2856)
!2858 = !DILocation(line: 476, column: 13, scope: !2852)
!2859 = !DILocation(line: 480, column: 26, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2852, file: !250, line: 480, column: 13)
!2861 = !DILocation(line: 480, column: 13, scope: !2852)
!2862 = !DILocation(line: 481, column: 28, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2860, file: !250, line: 480, column: 34)
!2864 = !DILocation(line: 482, column: 9, scope: !2863)
!2865 = !DILocation(line: 483, column: 45, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2860, file: !250, line: 482, column: 16)
!2867 = !DILocation(line: 483, column: 29, scope: !2866)
!2868 = !DILocation(line: 0, scope: !2860)
!2869 = !DILocation(line: 469, column: 36, scope: !2844)
!2870 = distinct !{!2870, !2845, !2871, !746}
!2871 = !DILocation(line: 485, column: 5, scope: !2795)
!2872 = !DILocation(line: 497, column: 30, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !250, line: 497, column: 13)
!2874 = distinct !DILexicalBlock(scope: !2848, file: !250, line: 487, column: 33)
!2875 = !DILocation(line: 503, column: 27, scope: !2874)
!2876 = !DILocation(line: 503, column: 43, scope: !2874)
!2877 = !DILocation(line: 503, column: 57, scope: !2874)
!2878 = !DILocation(line: 504, column: 58, scope: !2874)
!2879 = !DILocation(line: 504, column: 82, scope: !2874)
!2880 = !DILocation(line: 504, column: 45, scope: !2874)
!2881 = !DILocation(line: 504, column: 87, scope: !2874)
!2882 = !DILocation(line: 505, column: 45, scope: !2874)
!2883 = !DILocation(line: 505, column: 63, scope: !2874)
!2884 = !{!2435, !472, i64 1076}
!2885 = !DILocation(line: 505, column: 50, scope: !2874)
!2886 = !DILocation(line: 505, column: 80, scope: !2874)
!2887 = !DILocation(line: 503, column: 9, scope: !2874)
!2888 = !DILocation(line: 508, column: 35, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2874, file: !250, line: 505, column: 96)
!2890 = !DILocation(line: 510, column: 17, scope: !2889)
!2891 = !DILocation(line: 509, column: 58, scope: !2889)
!2892 = !DILocation(line: 509, column: 13, scope: !2889)
!2893 = !DILocation(line: 509, column: 62, scope: !2889)
!2894 = distinct !{!2894, !2887, !2895, !746}
!2895 = !DILocation(line: 511, column: 9, scope: !2874)
!2896 = !DILocation(line: 513, column: 30, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2874, file: !250, line: 513, column: 13)
!2898 = !DILocation(line: 514, column: 40, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2897, file: !250, line: 513, column: 48)
!2900 = !DILocation(line: 515, column: 9, scope: !2899)
!2901 = !DILocation(line: 518, column: 9, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !250, line: 518, column: 9)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !250, line: 518, column: 9)
!2904 = distinct !DILexicalBlock(scope: !2848, file: !250, line: 516, column: 12)
!2905 = !{!2429, !472, i64 56}
!2906 = !DILocation(line: 518, column: 9, scope: !2903)
!2907 = !DILocation(line: 518, column: 9, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2902, file: !250, line: 518, column: 9)
!2909 = !DILocation(line: 521, column: 30, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2904, file: !250, line: 521, column: 13)
!2911 = !DILocation(line: 522, column: 42, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2910, file: !250, line: 521, column: 48)
!2913 = !DILocation(line: 523, column: 9, scope: !2912)
!2914 = !DILocation(line: 0, scope: !2797)
!2915 = !DILocation(line: 527, column: 5, scope: !2797)
!2916 = !DILocation(line: 0, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !250, line: 527, column: 45)
!2918 = distinct !DILexicalBlock(scope: !2797, file: !250, line: 527, column: 5)
!2919 = !DILocation(line: 538, column: 20, scope: !2782)
!2920 = !DILocation(line: 538, column: 9, scope: !2782)
!2921 = !DILocation(line: 538, column: 36, scope: !2782)
!2922 = !DILocation(line: 542, column: 28, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 542, column: 9)
!2924 = !DILocation(line: 0, scope: !2923)
!2925 = !DILocation(line: 550, column: 5, scope: !2782)
!2926 = !DILocation(line: 551, column: 20, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 551, column: 9)
!2928 = !DILocation(line: 551, column: 52, scope: !2927)
!2929 = !DILocation(line: 551, column: 39, scope: !2927)
!2930 = !DILocation(line: 551, column: 9, scope: !2782)
!2931 = !DILocation(line: 530, column: 39, scope: !2917)
!2932 = !DILocation(line: 530, column: 9, scope: !2917)
!2933 = !DILocation(line: 530, column: 17, scope: !2917)
!2934 = !DILocation(line: 530, column: 26, scope: !2917)
!2935 = !DILocation(line: 531, column: 17, scope: !2917)
!2936 = !DILocation(line: 531, column: 26, scope: !2917)
!2937 = !DILocation(line: 532, column: 17, scope: !2917)
!2938 = !DILocation(line: 532, column: 31, scope: !2917)
!2939 = !DILocation(line: 533, column: 17, scope: !2917)
!2940 = !DILocation(line: 533, column: 34, scope: !2917)
!2941 = !DILocation(line: 527, column: 34, scope: !2918)
!2942 = distinct !{!2942, !2915, !2943, !746}
!2943 = !DILocation(line: 535, column: 5, scope: !2797)
!2944 = !DILocation(line: 552, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2927, file: !250, line: 551, column: 65)
!2946 = !DILocation(line: 553, column: 13, scope: !2945)
!2947 = !DILocation(line: 554, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !250, line: 553, column: 29)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !250, line: 553, column: 13)
!2950 = !DILocation(line: 555, column: 9, scope: !2948)
!2951 = !DILocation(line: 558, column: 26, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2782, file: !250, line: 558, column: 9)
!2953 = !DILocation(line: 559, column: 13, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2952, file: !250, line: 558, column: 44)
!2955 = !DILocation(line: 0, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2954, file: !250, line: 559, column: 13)
!2957 = !DILocation(line: 565, column: 1, scope: !2782)
!2958 = distinct !DISubprogram(name: "halide_default_do_task", scope: !250, file: !250, line: 589, type: !365, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2959)
!2959 = !{!2960, !2961, !2962, !2963}
!2960 = !DILocalVariable(name: "user_context", arg: 1, scope: !2958, file: !250, line: 589, type: !15)
!2961 = !DILocalVariable(name: "f", arg: 2, scope: !2958, file: !250, line: 589, type: !282)
!2962 = !DILocalVariable(name: "idx", arg: 3, scope: !2958, file: !250, line: 589, type: !161)
!2963 = !DILocalVariable(name: "closure", arg: 4, scope: !2958, file: !250, line: 590, type: !260)
!2964 = !DILocation(line: 0, scope: !2958)
!2965 = !DILocation(line: 591, column: 12, scope: !2958)
!2966 = !DILocation(line: 591, column: 5, scope: !2958)
!2967 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !250, file: !250, line: 594, type: !371, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2968)
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974}
!2969 = !DILocalVariable(name: "user_context", arg: 1, scope: !2967, file: !250, line: 594, type: !15)
!2970 = !DILocalVariable(name: "f", arg: 2, scope: !2967, file: !250, line: 594, type: !256)
!2971 = !DILocalVariable(name: "min", arg: 3, scope: !2967, file: !250, line: 595, type: !161)
!2972 = !DILocalVariable(name: "extent", arg: 4, scope: !2967, file: !250, line: 595, type: !161)
!2973 = !DILocalVariable(name: "closure", arg: 5, scope: !2967, file: !250, line: 595, type: !260)
!2974 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2967, file: !250, line: 596, type: !15)
!2975 = !DILocation(line: 0, scope: !2967)
!2976 = !DILocation(line: 597, column: 12, scope: !2967)
!2977 = !DILocation(line: 597, column: 5, scope: !2967)
!2978 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !250, file: !250, line: 600, type: !377, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985}
!2980 = !DILocalVariable(name: "user_context", arg: 1, scope: !2978, file: !250, line: 600, type: !15)
!2981 = !DILocalVariable(name: "f", arg: 2, scope: !2978, file: !250, line: 600, type: !282)
!2982 = !DILocalVariable(name: "min", arg: 3, scope: !2978, file: !250, line: 601, type: !161)
!2983 = !DILocalVariable(name: "size", arg: 4, scope: !2978, file: !250, line: 601, type: !161)
!2984 = !DILocalVariable(name: "closure", arg: 5, scope: !2978, file: !250, line: 601, type: !260)
!2985 = !DILocalVariable(name: "job", scope: !2978, file: !250, line: 606, type: !249)
!2986 = !DILocation(line: 0, scope: !2978)
!2987 = !DILocation(line: 602, column: 14, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2978, file: !250, line: 602, column: 9)
!2989 = !DILocation(line: 602, column: 9, scope: !2978)
!2990 = !DILocation(line: 606, column: 5, scope: !2978)
!2991 = !DILocation(line: 606, column: 10, scope: !2978)
!2992 = !DILocation(line: 607, column: 14, scope: !2978)
!2993 = !DILocation(line: 607, column: 17, scope: !2978)
!2994 = !DILocation(line: 608, column: 14, scope: !2978)
!2995 = !DILocation(line: 608, column: 18, scope: !2978)
!2996 = !DILocation(line: 609, column: 14, scope: !2978)
!2997 = !DILocation(line: 609, column: 21, scope: !2978)
!2998 = !DILocation(line: 610, column: 14, scope: !2978)
!2999 = !DILocation(line: 610, column: 21, scope: !2978)
!3000 = !DILocation(line: 611, column: 14, scope: !2978)
!3001 = !DILocation(line: 611, column: 25, scope: !2978)
!3002 = !DILocation(line: 612, column: 14, scope: !2978)
!3003 = !DILocation(line: 612, column: 29, scope: !2978)
!3004 = !DILocation(line: 613, column: 14, scope: !2978)
!3005 = !DILocation(line: 613, column: 22, scope: !2978)
!3006 = !DILocation(line: 614, column: 14, scope: !2978)
!3007 = !DILocation(line: 614, column: 26, scope: !2978)
!3008 = !DILocation(line: 615, column: 14, scope: !2978)
!3009 = !DILocation(line: 615, column: 19, scope: !2978)
!3010 = !{!2429, !470, i64 8}
!3011 = !DILocation(line: 616, column: 9, scope: !2978)
!3012 = !DILocation(line: 616, column: 17, scope: !2978)
!3013 = !{!2429, !470, i64 36}
!3014 = !DILocation(line: 617, column: 9, scope: !2978)
!3015 = !DILocation(line: 617, column: 22, scope: !2978)
!3016 = !DILocation(line: 618, column: 9, scope: !2978)
!3017 = !DILocation(line: 618, column: 21, scope: !2978)
!3018 = !DILocation(line: 619, column: 9, scope: !2978)
!3019 = !DILocation(line: 619, column: 24, scope: !2978)
!3020 = !DILocation(line: 620, column: 9, scope: !2978)
!3021 = !DILocation(line: 620, column: 24, scope: !2978)
!3022 = !DILocation(line: 621, column: 9, scope: !2978)
!3023 = !DILocation(line: 621, column: 27, scope: !2978)
!3024 = !DILocation(line: 622, column: 9, scope: !2978)
!3025 = !DILocation(line: 622, column: 18, scope: !2978)
!3026 = !DILocation(line: 623, column: 9, scope: !2978)
!3027 = !DILocation(line: 623, column: 23, scope: !2978)
!3028 = !DILocation(line: 624, column: 9, scope: !2978)
!3029 = !DILocation(line: 624, column: 20, scope: !2978)
!3030 = !DILocation(line: 625, column: 5, scope: !2978)
!3031 = !DILocation(line: 626, column: 5, scope: !2978)
!3032 = !DILocation(line: 627, column: 5, scope: !2978)
!3033 = !DILocation(line: 628, column: 5, scope: !2978)
!3034 = !DILocation(line: 629, column: 16, scope: !2978)
!3035 = !DILocation(line: 630, column: 1, scope: !2978)
!3036 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !250, file: !250, line: 632, type: !383, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3037)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3045, !3046}
!3038 = !DILocalVariable(name: "user_context", arg: 1, scope: !3036, file: !250, line: 632, type: !15)
!3039 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3036, file: !250, line: 632, type: !161)
!3040 = !DILocalVariable(name: "tasks", arg: 3, scope: !3036, file: !250, line: 633, type: !385)
!3041 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3036, file: !250, line: 634, type: !15)
!3042 = !DILocalVariable(name: "jobs", scope: !3036, file: !250, line: 635, type: !248)
!3043 = !DILocalVariable(name: "i", scope: !3044, file: !250, line: 637, type: !161)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !250, line: 637, column: 5)
!3045 = !DILocalVariable(name: "exit_status", scope: !3036, file: !250, line: 659, type: !161)
!3046 = !DILocalVariable(name: "i", scope: !3047, file: !250, line: 660, type: !161)
!3047 = distinct !DILexicalBlock(scope: !3036, file: !250, line: 660, column: 5)
!3048 = !DILocation(line: 0, scope: !3036)
!3049 = !DILocation(line: 635, column: 56, scope: !3036)
!3050 = !DILocation(line: 635, column: 26, scope: !3036)
!3051 = !DILocation(line: 635, column: 18, scope: !3036)
!3052 = !DILocation(line: 0, scope: !3044)
!3053 = !DILocation(line: 637, column: 23, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3044, file: !250, line: 637, column: 5)
!3055 = !DILocation(line: 637, column: 5, scope: !3044)
!3056 = !DILocation(line: 653, column: 19, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3036, file: !250, line: 653, column: 9)
!3058 = !DILocation(line: 653, column: 9, scope: !3036)
!3059 = !DILocation(line: 638, column: 20, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !250, line: 638, column: 13)
!3061 = distinct !DILexicalBlock(scope: !3054, file: !250, line: 637, column: 41)
!3062 = !{!2430, !472, i64 24}
!3063 = !DILocation(line: 638, column: 27, scope: !3060)
!3064 = !DILocation(line: 638, column: 13, scope: !3061)
!3065 = !DILocation(line: 640, column: 22, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3060, file: !250, line: 638, column: 33)
!3067 = !DILocation(line: 641, column: 13, scope: !3066)
!3068 = !DILocation(line: 643, column: 30, scope: !3061)
!3069 = !DILocation(line: 643, column: 9, scope: !3061)
!3070 = !DILocation(line: 643, column: 22, scope: !3061)
!3071 = !{i64 0, i64 4, !1077, i64 4, i64 4, !1077, i64 8, i64 4, !1077, i64 12, i64 4, !1077, i64 16, i64 4, !582, i64 20, i64 4, !582, i64 24, i64 4, !582, i64 28, i64 4, !582, i64 32, i64 1, !2673}
!3072 = !DILocation(line: 644, column: 17, scope: !3061)
!3073 = !DILocation(line: 644, column: 25, scope: !3061)
!3074 = !DILocation(line: 645, column: 17, scope: !3061)
!3075 = !DILocation(line: 645, column: 30, scope: !3061)
!3076 = !DILocation(line: 646, column: 17, scope: !3061)
!3077 = !DILocation(line: 646, column: 29, scope: !3061)
!3078 = !DILocation(line: 647, column: 17, scope: !3061)
!3079 = !DILocation(line: 647, column: 32, scope: !3061)
!3080 = !DILocation(line: 648, column: 17, scope: !3061)
!3081 = !DILocation(line: 648, column: 32, scope: !3061)
!3082 = !DILocation(line: 649, column: 17, scope: !3061)
!3083 = !DILocation(line: 649, column: 35, scope: !3061)
!3084 = !DILocation(line: 650, column: 17, scope: !3061)
!3085 = !DILocation(line: 650, column: 28, scope: !3061)
!3086 = !DILocation(line: 651, column: 5, scope: !3061)
!3087 = !DILocation(line: 637, column: 37, scope: !3054)
!3088 = distinct !{!3088, !3055, !3089, !746}
!3089 = !DILocation(line: 651, column: 5, scope: !3044)
!3090 = !DILocation(line: 657, column: 5, scope: !3036)
!3091 = !DILocation(line: 658, column: 50, scope: !3036)
!3092 = !DILocation(line: 658, column: 5, scope: !3036)
!3093 = !DILocation(line: 0, scope: !3047)
!3094 = !DILocation(line: 660, column: 23, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3047, file: !250, line: 660, column: 5)
!3096 = !DILocation(line: 660, column: 5, scope: !3047)
!3097 = !DILocation(line: 668, column: 5, scope: !3036)
!3098 = !DILocation(line: 663, column: 43, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !250, line: 660, column: 41)
!3100 = !DILocation(line: 663, column: 9, scope: !3099)
!3101 = !DILocation(line: 664, column: 21, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3099, file: !250, line: 664, column: 13)
!3103 = !DILocation(line: 664, column: 33, scope: !3102)
!3104 = !DILocation(line: 664, column: 13, scope: !3099)
!3105 = !DILocation(line: 660, column: 37, scope: !3095)
!3106 = distinct !{!3106, !3096, !3107, !746}
!3107 = !DILocation(line: 667, column: 5, scope: !3047)
!3108 = !DILocation(line: 670, column: 1, scope: !3036)
!3109 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !250, file: !250, line: 715, type: !390, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "s", arg: 1, scope: !3109, file: !250, line: 715, type: !273)
!3112 = !DILocalVariable(name: "n", arg: 2, scope: !3109, file: !250, line: 715, type: !161)
!3113 = !DILocalVariable(name: "sem", scope: !3109, file: !250, line: 716, type: !305)
!3114 = !DILocation(line: 0, scope: !3109)
!3115 = !DILocation(line: 717, column: 76, scope: !3109)
!3116 = !DILocalVariable(name: "addr", arg: 1, scope: !3117, file: !31, line: 154, type: !594)
!3117 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !631, file: !31, line: 154, type: !3118, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3122, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !594, !594}
!3120 = !{!3116, !3121}
!3121 = !DILocalVariable(name: "val", arg: 2, scope: !3117, file: !31, line: 154, type: !594)
!3122 = !{!3123}
!3123 = !DITemplateTypeParameter(name: "T", type: !161)
!3124 = !DILocation(line: 0, scope: !3117, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 717, column: 5, scope: !3109)
!3126 = !DILocation(line: 155, column: 11, scope: !3117, inlinedAt: !3125)
!3127 = !DILocation(line: 156, column: 5, scope: !3117, inlinedAt: !3125)
!3128 = !DILocation(line: 718, column: 5, scope: !3109)
!3129 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !250, file: !250, line: 735, type: !396, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3130)
!3130 = !{!3131, !3132, !3133, !3134, !3135}
!3131 = !DILocalVariable(name: "s", arg: 1, scope: !3129, file: !250, line: 735, type: !273)
!3132 = !DILocalVariable(name: "n", arg: 2, scope: !3129, file: !250, line: 735, type: !161)
!3133 = !DILocalVariable(name: "sem", scope: !3129, file: !250, line: 739, type: !305)
!3134 = !DILocalVariable(name: "expected", scope: !3129, file: !250, line: 741, type: !161)
!3135 = !DILocalVariable(name: "desired", scope: !3129, file: !250, line: 742, type: !161)
!3136 = !DILocation(line: 0, scope: !3129)
!3137 = !DILocation(line: 736, column: 11, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3129, file: !250, line: 736, column: 9)
!3139 = !DILocation(line: 736, column: 9, scope: !3129)
!3140 = !DILocation(line: 743, column: 75, scope: !3129)
!3141 = !DILocalVariable(name: "addr", arg: 1, scope: !3142, file: !31, line: 140, type: !594)
!3142 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !631, file: !31, line: 140, type: !3118, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3122, retainedNodes: !3143)
!3143 = !{!3141, !3144}
!3144 = !DILocalVariable(name: "val", arg: 2, scope: !3142, file: !31, line: 140, type: !594)
!3145 = !DILocation(line: 0, scope: !3142, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 743, column: 5, scope: !3129)
!3147 = !DILocation(line: 141, column: 5, scope: !3142, inlinedAt: !3146)
!3148 = !DILocation(line: 142, column: 12, scope: !3142, inlinedAt: !3146)
!3149 = !DILocation(line: 744, column: 5, scope: !3129)
!3150 = !DILocation(line: 745, column: 28, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3129, file: !250, line: 744, column: 8)
!3152 = !DILocation(line: 746, column: 22, scope: !3129)
!3153 = !DILocation(line: 746, column: 27, scope: !3129)
!3154 = !DILocalVariable(name: "addr", arg: 1, scope: !3155, file: !31, line: 118, type: !594)
!3155 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !631, file: !31, line: 118, type: !3156, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3122, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!66, !594, !594, !594}
!3158 = !{!3154, !3159, !3160}
!3159 = !DILocalVariable(name: "expected", arg: 2, scope: !3155, file: !31, line: 118, type: !594)
!3160 = !DILocalVariable(name: "desired", arg: 3, scope: !3155, file: !31, line: 118, type: !594)
!3161 = !DILocation(line: 0, scope: !3155, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 747, column: 15, scope: !3129)
!3163 = !DILocalVariable(name: "addr", arg: 1, scope: !3164, file: !31, line: 102, type: !594)
!3164 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIiEEbPT_S6_S6_", scope: !631, file: !31, line: 102, type: !3156, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3122, retainedNodes: !3165)
!3165 = !{!3163, !3166, !3167, !3168, !3169}
!3166 = !DILocalVariable(name: "expected", arg: 2, scope: !3164, file: !31, line: 102, type: !594)
!3167 = !DILocalVariable(name: "desired", arg: 3, scope: !3164, file: !31, line: 102, type: !594)
!3168 = !DILocalVariable(name: "oldval", scope: !3164, file: !31, line: 103, type: !161)
!3169 = !DILocalVariable(name: "gotval", scope: !3164, file: !31, line: 104, type: !161)
!3170 = !DILocation(line: 0, scope: !3164, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 119, column: 12, scope: !3155, inlinedAt: !3162)
!3172 = !DILocation(line: 104, column: 16, scope: !3164, inlinedAt: !3171)
!3173 = !DILocation(line: 106, column: 19, scope: !3164, inlinedAt: !3171)
!3174 = !DILocation(line: 746, column: 5, scope: !3151)
!3175 = distinct !{!3175, !3149, !3176, !746}
!3176 = !DILocation(line: 747, column: 123, scope: !3129)
!3177 = !DILocation(line: 749, column: 1, scope: !3129)
!3178 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !250, file: !250, line: 721, type: !390, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DILocalVariable(name: "s", arg: 1, scope: !3178, file: !250, line: 721, type: !273)
!3181 = !DILocalVariable(name: "n", arg: 2, scope: !3178, file: !250, line: 721, type: !161)
!3182 = !DILocalVariable(name: "sem", scope: !3178, file: !250, line: 722, type: !305)
!3183 = !DILocalVariable(name: "old_val", scope: !3178, file: !250, line: 723, type: !161)
!3184 = !DILocation(line: 0, scope: !3178)
!3185 = !DILocation(line: 723, column: 102, scope: !3178)
!3186 = !DILocalVariable(name: "addr", arg: 1, scope: !3187, file: !31, line: 97, type: !594)
!3187 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !631, file: !31, line: 97, type: !3188, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3122, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!161, !594, !161}
!3190 = !{!3186, !3191}
!3191 = !DILocalVariable(name: "val", arg: 2, scope: !3187, file: !31, line: 97, type: !161)
!3192 = !DILocation(line: 0, scope: !3187, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 723, column: 19, scope: !3178)
!3194 = !DILocation(line: 98, column: 12, scope: !3187, inlinedAt: !3193)
!3195 = !DILocation(line: 725, column: 17, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3178, file: !250, line: 725, column: 9)
!3197 = !DILocation(line: 725, column: 22, scope: !3196)
!3198 = !DILocation(line: 727, column: 9, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !250, line: 725, column: 33)
!3200 = !DILocation(line: 728, column: 9, scope: !3199)
!3201 = !DILocation(line: 729, column: 9, scope: !3199)
!3202 = !DILocation(line: 730, column: 9, scope: !3199)
!3203 = !DILocation(line: 731, column: 5, scope: !3199)
!3204 = !DILocation(line: 732, column: 20, scope: !3178)
!3205 = !DILocation(line: 732, column: 5, scope: !3178)
!3206 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !9, file: !250, line: 584, type: !769, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3207 = !DILocation(line: 585, column: 5, scope: !3206)
!3208 = !DILocation(line: 586, column: 1, scope: !3206)
!3209 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !250, file: !250, line: 689, type: !769, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3210)
!3210 = !{!3211}
!3211 = !DILocalVariable(name: "i", scope: !3212, file: !250, line: 702, type: !161)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !250, line: 702, column: 9)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !250, line: 690, column: 33)
!3214 = distinct !DILexicalBlock(scope: !3209, file: !250, line: 690, column: 9)
!3215 = !DILocation(line: 690, column: 20, scope: !3214)
!3216 = !DILocation(line: 690, column: 9, scope: !3209)
!3217 = !DILocation(line: 693, column: 9, scope: !3213)
!3218 = !DILocation(line: 695, column: 29, scope: !3213)
!3219 = !DILocation(line: 696, column: 9, scope: !3213)
!3220 = !DILocation(line: 697, column: 9, scope: !3213)
!3221 = !DILocation(line: 698, column: 9, scope: !3213)
!3222 = !DILocation(line: 699, column: 9, scope: !3213)
!3223 = !DILocation(line: 0, scope: !3212)
!3224 = !DILocation(line: 702, column: 40, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3212, file: !250, line: 702, column: 9)
!3226 = !DILocation(line: 702, column: 27, scope: !3225)
!3227 = !DILocation(line: 702, column: 9, scope: !3212)
!3228 = !DILocalVariable(name: "this", arg: 1, scope: !3229, type: !3233, flags: DIFlagArtificial | DIFlagObjectPointer)
!3229 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !325, file: !250, line: 158, type: !358, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !357, retainedNodes: !3230)
!3230 = !{!3228, !3231, !3232}
!3231 = !DILocalVariable(name: "bytes", scope: !3229, file: !250, line: 160, type: !309)
!3232 = !DILocalVariable(name: "limit", scope: !3229, file: !250, line: 161, type: !309)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 32)
!3234 = !DILocation(line: 0, scope: !3229, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 707, column: 20, scope: !3213)
!3236 = !DILocation(line: 162, column: 9, scope: !3229, inlinedAt: !3235)
!3237 = !DILocation(line: 708, column: 5, scope: !3213)
!3238 = !DILocation(line: 703, column: 32, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3225, file: !250, line: 702, column: 62)
!3240 = !DILocation(line: 703, column: 13, scope: !3239)
!3241 = !DILocation(line: 702, column: 58, scope: !3225)
!3242 = distinct !{!3242, !3227, !3243, !746}
!3243 = !DILocation(line: 704, column: 9, scope: !3212)
!3244 = !DILocation(line: 709, column: 1, scope: !3209)
!3245 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !250, file: !250, line: 672, type: !2349, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3246)
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !250, line: 672, type: !161)
!3248 = !DILocalVariable(name: "old", scope: !3245, file: !250, line: 683, type: !161)
!3249 = !DILocation(line: 0, scope: !3245)
!3250 = !DILocation(line: 673, column: 11, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3245, file: !250, line: 673, column: 9)
!3252 = !DILocation(line: 673, column: 9, scope: !3245)
!3253 = !DILocation(line: 674, column: 9, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3251, file: !250, line: 673, column: 16)
!3255 = !DILocation(line: 679, column: 5, scope: !3245)
!3256 = !DILocation(line: 680, column: 9, scope: !3245)
!3257 = !DILocation(line: 680, column: 11, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3245, file: !250, line: 680, column: 9)
!3259 = !DILocation(line: 681, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3258, file: !250, line: 680, column: 17)
!3261 = !DILocation(line: 682, column: 5, scope: !3260)
!3262 = !DILocation(line: 683, column: 26, scope: !3245)
!3263 = !DILocation(line: 684, column: 42, scope: !3245)
!3264 = !DILocation(line: 684, column: 40, scope: !3245)
!3265 = !DILocation(line: 685, column: 5, scope: !3245)
!3266 = !DILocation(line: 686, column: 5, scope: !3245)
!3267 = !DISubprogram(name: "halide_error", scope: !242, file: !242, line: 111, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3268 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !250, file: !250, line: 751, type: !3269, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!363, !363}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "f", arg: 1, scope: !3268, file: !250, line: 751, type: !363)
!3273 = !DILocalVariable(name: "result", scope: !3268, file: !250, line: 752, type: !363)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 752, column: 31, scope: !3268)
!3276 = !DILocation(line: 753, column: 20, scope: !3268)
!3277 = !DILocation(line: 754, column: 5, scope: !3268)
!3278 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !250, file: !250, line: 757, type: !3279, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!369, !369}
!3281 = !{!3282, !3283}
!3282 = !DILocalVariable(name: "f", arg: 1, scope: !3278, file: !250, line: 757, type: !369)
!3283 = !DILocalVariable(name: "result", scope: !3278, file: !250, line: 758, type: !369)
!3284 = !DILocation(line: 0, scope: !3278)
!3285 = !DILocation(line: 758, column: 36, scope: !3278)
!3286 = !DILocation(line: 759, column: 25, scope: !3278)
!3287 = !DILocation(line: 760, column: 5, scope: !3278)
!3288 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !250, file: !250, line: 763, type: !3289, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!375, !375}
!3291 = !{!3292, !3293}
!3292 = !DILocalVariable(name: "f", arg: 1, scope: !3288, file: !250, line: 763, type: !375)
!3293 = !DILocalVariable(name: "result", scope: !3288, file: !250, line: 764, type: !375)
!3294 = !DILocation(line: 0, scope: !3288)
!3295 = !DILocation(line: 764, column: 34, scope: !3288)
!3296 = !DILocation(line: 765, column: 23, scope: !3288)
!3297 = !DILocation(line: 766, column: 5, scope: !3288)
!3298 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !250, file: !250, line: 769, type: !3299, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{null, !375, !363, !369, !381, !388, !394, !400}
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3302 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3298, file: !250, line: 770, type: !375)
!3303 = !DILocalVariable(name: "do_task", arg: 2, scope: !3298, file: !250, line: 771, type: !363)
!3304 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3298, file: !250, line: 772, type: !369)
!3305 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3298, file: !250, line: 773, type: !381)
!3306 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3298, file: !250, line: 774, type: !388)
!3307 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3298, file: !250, line: 775, type: !394)
!3308 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3298, file: !250, line: 776, type: !400)
!3309 = !DILocation(line: 0, scope: !3298)
!3310 = !DILocation(line: 778, column: 23, scope: !3298)
!3311 = !DILocation(line: 779, column: 20, scope: !3298)
!3312 = !DILocation(line: 780, column: 25, scope: !3298)
!3313 = !DILocation(line: 781, column: 30, scope: !3298)
!3314 = !DILocation(line: 782, column: 27, scope: !3298)
!3315 = !DILocation(line: 783, column: 34, scope: !3298)
!3316 = !DILocation(line: 784, column: 30, scope: !3298)
!3317 = !DILocation(line: 785, column: 1, scope: !3298)
!3318 = distinct !DISubprogram(name: "halide_do_par_for", scope: !250, file: !250, line: 792, type: !377, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324}
!3320 = !DILocalVariable(name: "user_context", arg: 1, scope: !3318, file: !250, line: 792, type: !15)
!3321 = !DILocalVariable(name: "f", arg: 2, scope: !3318, file: !250, line: 792, type: !282)
!3322 = !DILocalVariable(name: "min", arg: 3, scope: !3318, file: !250, line: 793, type: !161)
!3323 = !DILocalVariable(name: "size", arg: 4, scope: !3318, file: !250, line: 793, type: !161)
!3324 = !DILocalVariable(name: "closure", arg: 5, scope: !3318, file: !250, line: 793, type: !260)
!3325 = !DILocation(line: 0, scope: !3318)
!3326 = !DILocation(line: 794, column: 14, scope: !3318)
!3327 = !DILocation(line: 794, column: 12, scope: !3318)
!3328 = !DILocation(line: 794, column: 5, scope: !3318)
!3329 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !250, file: !250, line: 802, type: !383, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3330)
!3330 = !{!3331, !3332, !3333, !3334}
!3331 = !DILocalVariable(name: "user_context", arg: 1, scope: !3329, file: !250, line: 802, type: !15)
!3332 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3329, file: !250, line: 802, type: !161)
!3333 = !DILocalVariable(name: "tasks", arg: 3, scope: !3329, file: !250, line: 803, type: !385)
!3334 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3329, file: !250, line: 804, type: !15)
!3335 = !DILocation(line: 0, scope: !3329)
!3336 = !DILocation(line: 805, column: 12, scope: !3329)
!3337 = !DILocation(line: 805, column: 5, scope: !3329)
!3338 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !250, file: !250, line: 808, type: !390, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3339)
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "sema", arg: 1, scope: !3338, file: !250, line: 808, type: !273)
!3341 = !DILocalVariable(name: "count", arg: 2, scope: !3338, file: !250, line: 808, type: !161)
!3342 = !DILocation(line: 0, scope: !3338)
!3343 = !DILocation(line: 809, column: 12, scope: !3338)
!3344 = !DILocation(line: 809, column: 5, scope: !3338)
!3345 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !250, file: !250, line: 812, type: !390, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3346)
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "sema", arg: 1, scope: !3345, file: !250, line: 812, type: !273)
!3348 = !DILocalVariable(name: "count", arg: 2, scope: !3345, file: !250, line: 812, type: !161)
!3349 = !DILocation(line: 0, scope: !3345)
!3350 = !DILocation(line: 813, column: 12, scope: !3345)
!3351 = !DILocation(line: 813, column: 5, scope: !3345)
!3352 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !250, file: !250, line: 816, type: !396, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3353)
!3353 = !{!3354, !3355}
!3354 = !DILocalVariable(name: "sema", arg: 1, scope: !3352, file: !250, line: 816, type: !273)
!3355 = !DILocalVariable(name: "count", arg: 2, scope: !3352, file: !250, line: 816, type: !161)
!3356 = !DILocation(line: 0, scope: !3352)
!3357 = !DILocation(line: 817, column: 12, scope: !3352)
!3358 = !DILocation(line: 817, column: 5, scope: !3352)
!3359 = !DISubprogram(name: "qurt_mutex_init", scope: !23, file: !23, line: 226, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!3363 = !DISubprogram(name: "qurt_cond_init", scope: !23, file: !23, line: 231, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!3367 = !DISubprogram(name: "qurt_mutex_lock", scope: !23, file: !23, line: 228, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3368 = !DISubprogram(name: "qurt_cond_wait", scope: !23, file: !23, line: 234, type: !3369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !3366, !3362}
!3371 = !DISubprogram(name: "qurt_mutex_unlock", scope: !23, file: !23, line: 229, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3372 = !DISubprogram(name: "qurt_cond_destroy", scope: !23, file: !23, line: 232, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3373 = !DISubprogram(name: "qurt_mutex_destroy", scope: !23, file: !23, line: 227, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3374 = !DISubprogram(name: "qurt_cond_signal", scope: !23, file: !23, line: 233, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
