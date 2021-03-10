; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads_tsan.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, [4 x i8], %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8, [7 x i8] }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32, [4 x i8] }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i64] }
%struct.halide_thread = type { i32 }
%struct._qurt_thread_attr = type { [16 x i8], i8, i8, i16, i8, i8, i16, i32, i8* }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i64 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type <{ %union.qurt_mutex_aligned8, %union.qurt_cond_t, i8, [7 x i8] }>
%union.qurt_mutex_aligned8 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%union.qurt_cond_t = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32, i32 }
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

@halide_qurt_default_thread_priority = weak dso_local local_unnamed_addr global i16 100, align 2, !dbg !0
@.str = private unnamed_addr constant [123 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:395 Assert failed: next != nullptr\0A\00", align 1
@_ZN6Halide7Runtime8Internal15Synchronization13table_storageE = weak dso_local global [24576 x i8] zeroinitializer, align 1, !dbg !316
@.str.1 = private unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", align 1
@_ZN6Halide7Runtime8Internal10work_queueE = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" { %struct.halide_mutex zeroinitializer, i32 0, i32 0, %"struct.Halide::Runtime::Internal::work"* null, i32 0, i32 0, i32 0, [4 x i8] undef, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, i32 0, i32 0, [256 x %struct.halide_thread*] zeroinitializer, i8 0, i8 0, i32 0 }, align 8, !dbg !323
@.str.3 = private unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", align 1
@_ZN6Halide7Runtime8Internal14custom_do_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 8, !dbg !361
@_ZN6Halide7Runtime8Internal19custom_do_loop_taskE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 8, !dbg !367
@_ZN6Halide7Runtime8Internal17custom_do_par_forE = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 8, !dbg !373
@_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 8, !dbg !379
@_ZN6Halide7Runtime8Internal21custom_semaphore_initE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 8, !dbg !386
@_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 8, !dbg !392
@_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 8, !dbg !398
@.str.4 = private unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", align 1
@.str.7 = private unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !415 {
  ret i32 4, !dbg !418
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_default_thread_priority(i32 %0) local_unnamed_addr #0 !dbg !419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !423, metadata !DIExpression()), !dbg !424
  %2 = icmp sgt i32 %0, 255, !dbg !425
  br i1 %2, label %5, label %3, !dbg !427

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 1, !dbg !428
  br i1 %4, label %8, label %5, !dbg !430

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %0, %3 ], [ 255, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !423, metadata !DIExpression()), !dbg !424
  %7 = trunc i32 %6 to i16, !dbg !431
  store i16 %7, i16* @halide_qurt_default_thread_priority, align 2, !dbg !432, !tbaa !433
  br label %8, !dbg !437

8:                                                ; preds = %3, %5
  ret void, !dbg !437
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i16 @halide_get_default_thread_priority() local_unnamed_addr #0 !dbg !438 {
  %1 = load i16, i16* @halide_qurt_default_thread_priority, align 2, !dbg !441, !tbaa !433
  ret i16 %1, !dbg !442
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #2 !dbg !443 {
  %3 = alloca %struct._qurt_thread_attr, align 8
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i8* %1, metadata !448, metadata !DIExpression()), !dbg !467
  %4 = tail call zeroext i16 @halide_get_default_thread_priority() #6, !dbg !468
  call void @llvm.dbg.value(metadata i16 %4, metadata !449, metadata !DIExpression()), !dbg !467
  %5 = tail call i8* @malloc(i64 32) #7, !dbg !469
  call void @llvm.dbg.value(metadata i8* %5, metadata !450, metadata !DIExpression()), !dbg !467
  %6 = bitcast i8* %5 to void (i8*)**, !dbg !470
  store void (i8*)* %0, void (i8*)** %6, align 8, !dbg !471, !tbaa !472
  %7 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !477
  %8 = bitcast i8* %7 to i8**, !dbg !477
  store i8* %1, i8** %8, align 8, !dbg !478, !tbaa !479
  %9 = tail call i8* @memalign(i64 128, i64 262144) #7, !dbg !480
  %10 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !481
  %11 = bitcast i8* %10 to i8**, !dbg !481
  store i8* %9, i8** %11, align 8, !dbg !482, !tbaa !483
  %12 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !484
  %13 = tail call i8* @memset(i8* nonnull %12, i32 0, i64 4) #7, !dbg !485
  %14 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 0, i64 0, !dbg !486
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #8, !dbg !486
  call void @llvm.dbg.declare(metadata %struct._qurt_thread_attr* %3, metadata !451, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !488, metadata !DIExpression()), !dbg !494
  store i8 0, i8* %14, align 8, !dbg !496, !tbaa !497
  %15 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 1, !dbg !498
  store i8 0, i8* %15, align 8, !dbg !499, !tbaa !500
  %16 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 3, !dbg !502
  %17 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 4, !dbg !503
  store i8 0, i8* %17, align 4, !dbg !504, !tbaa !505
  %18 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 2, !dbg !506
  store i8 -1, i8* %18, align 1, !dbg !507, !tbaa !508
  %19 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 5, !dbg !509
  store i8 -1, i8* %19, align 1, !dbg !510, !tbaa !511
  %20 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 6, !dbg !512
  store i16 -2, i16* %20, align 2, !dbg !513, !tbaa !514
  %21 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 7, !dbg !515
  %22 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 8, !dbg !516
  %23 = load i8*, i8** %11, align 8, !dbg !517, !tbaa !483
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !518, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i8* %23, metadata !523, metadata !DIExpression()), !dbg !524
  store i8* %23, i8** %22, align 8, !dbg !526, !tbaa !527
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !528, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i32 262144, metadata !533, metadata !DIExpression()), !dbg !534
  store i32 262144, i32* %21, align 8, !dbg !536, !tbaa !537
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !538, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i16 %4, metadata !543, metadata !DIExpression()), !dbg !544
  store i16 %4, i16* %16, align 2, !dbg !546, !tbaa !547
  %24 = bitcast i8* %12 to i32*, !dbg !548
  %25 = call i32 @qurt_thread_create(i32* nonnull %24, %struct._qurt_thread_attr* nonnull %3, void (i8*)* nonnull @_ZN12_GLOBAL__N_119spawn_thread_helperEPv, i8* %5) #7, !dbg !549
  %26 = bitcast i8* %5 to %struct.halide_thread*, !dbg !550
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #8, !dbg !551
  ret %struct.halide_thread* %26, !dbg !552
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !553 dso_local i8* @malloc(i64) local_unnamed_addr #4

declare !dbg !557 dso_local i8* @memalign(i64, i64) local_unnamed_addr #4

declare !dbg !560 dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

declare !dbg !563 dso_local i32 @qurt_thread_create(i32*, %struct._qurt_thread_attr*, void (i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define internal void @_ZN12_GLOBAL__N_119spawn_thread_helperEPv(i8* nocapture readonly %0) #2 !dbg !568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !570, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i8* %0, metadata !571, metadata !DIExpression()), !dbg !572
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !573
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !573, !tbaa !472
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !574
  %5 = bitcast i8* %4 to i8**, !dbg !574
  %6 = load i8*, i8** %5, align 8, !dbg !574, !tbaa !479
  tail call void %3(i8* %6) #7, !dbg !575
  ret void, !dbg !576
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #2 !dbg !577 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !581, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !582, metadata !DIExpression()), !dbg !584
  %3 = bitcast i32* %2 to i8*, !dbg !585
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !585
  call void @llvm.dbg.value(metadata i32 0, metadata !583, metadata !DIExpression()), !dbg !584
  store i32 0, i32* %2, align 4, !dbg !586, !tbaa !587
  %4 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i64 6, i32 0, !dbg !588
  %5 = load i32, i32* %4, align 8, !dbg !588, !tbaa !589
  call void @llvm.dbg.value(metadata i32* %2, metadata !583, metadata !DIExpression(DW_OP_deref)), !dbg !584
  %6 = call i32 @qurt_thread_join(i32 %5, i32* nonnull %2) #7, !dbg !590
  %7 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i64 4, !dbg !591
  %8 = bitcast %struct.halide_thread* %7 to i8**, !dbg !591
  %9 = load i8*, i8** %8, align 8, !dbg !591, !tbaa !483
  call void @free(i8* %9) #7, !dbg !592
  %10 = bitcast %struct.halide_thread* %0 to i8*, !dbg !593
  call void @free(i8* %10) #7, !dbg !594
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !595
  ret void, !dbg !595
}

declare !dbg !596 dso_local i32 @qurt_thread_join(i32, i32*) local_unnamed_addr #4

declare !dbg !600 dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #5 align 2 !dbg !601 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !603, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 40, metadata !605, metadata !DIExpression()), !dbg !625
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !626
  call void @llvm.dbg.value(metadata i64* %3, metadata !627, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !637
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !639
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13, !dbg !640

13:                                               ; preds = %64, %1
  %14 = phi i64 [ %4, %1 ], [ %65, %64 ]
  %15 = phi i32 [ 40, %1 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 %14, metadata !617, metadata !DIExpression()), !dbg !625
  %16 = and i64 %14, 1, !dbg !641
  %17 = icmp eq i64 %16, 0, !dbg !642
  br i1 %17, label %18, label %29, !dbg !643

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !617, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 %19, metadata !617, metadata !DIExpression()), !dbg !625
  %20 = or i64 %19, 1, !dbg !644
  call void @llvm.dbg.value(metadata i64 %20, metadata !618, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i64* %3, metadata !646, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()), !dbg !653
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic, !dbg !656
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !656
  br i1 %22, label %67, label %23, !dbg !656

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !656
  call void @llvm.dbg.value(metadata i32 %15, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 %24, metadata !617, metadata !DIExpression()), !dbg !625
  %25 = and i64 %24, 1, !dbg !641
  %26 = icmp eq i64 %25, 0, !dbg !642
  br i1 %26, label %18, label %27, !dbg !643

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0, !dbg !656
  br label %29, !dbg !657

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ], !dbg !625
  %31 = icmp ugt i64 %30, 3, !dbg !657
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32, !dbg !659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !660, metadata !DIExpression()), !dbg !664
  br i1 %33, label %34, label %39, !dbg !659

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %15, metadata !605, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !625
  %35 = icmp sgt i32 %15, 1, !dbg !666
  br i1 %35, label %36, label %39, !dbg !667

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1, !dbg !668
  call void @llvm.dbg.value(metadata i32 %37, metadata !605, metadata !DIExpression()), !dbg !625
  call void @halide_thread_yield() #7, !dbg !671
  call void @llvm.dbg.value(metadata i64* %3, metadata !627, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !673
  %38 = load atomic i64, i64* %3 monotonic, align 8, !dbg !675
  br label %64, !dbg !676

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ], !dbg !625
  call void @llvm.dbg.value(metadata i32 %40, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !677
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !622, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !679, metadata !DIExpression()) #8, !dbg !682
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !684, metadata !DIExpression()) #8, !dbg !688
  store i8 0, i8* %6, align 8, !dbg !690, !tbaa !691
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !694
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !696
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !697, !tbaa !698
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !dbg !700, !tbaa !701
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !702, !tbaa !703
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !704, metadata !DIExpression()), !dbg !707
  store i8 1, i8* %6, align 8, !dbg !709, !tbaa !691
  call void @llvm.dbg.value(metadata i64 %30, metadata !617, metadata !DIExpression()), !dbg !625
  %41 = and i64 %30, -4, !dbg !710
  call void @llvm.dbg.value(metadata i64 %41, metadata !623, metadata !DIExpression()), !dbg !711
  %42 = icmp eq i64 %41, 0, !dbg !712
  br i1 %42, label %43, label %44, !dbg !714

43:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !715, !tbaa !703
  br label %46, !dbg !717

44:                                               ; preds = %39
  %45 = inttoptr i64 %41 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !718
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, metadata !623, metadata !DIExpression()), !dbg !711
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !719, !tbaa !698
  br label %46

46:                                               ; preds = %44, %43
  call void @llvm.dbg.value(metadata i64 %30, metadata !617, metadata !DIExpression()), !dbg !625
  %47 = and i64 %30, 3, !dbg !721
  %48 = or i64 %47, %12, !dbg !722
  call void @llvm.dbg.value(metadata i64 %48, metadata !624, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i64* %3, metadata !723, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64* undef, metadata !726, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64* undef, metadata !727, metadata !DIExpression()), !dbg !728
  %49 = cmpxchg weak i64* %3, i64 %30, i64 %48 release monotonic, !dbg !731
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !731
  br i1 %50, label %53, label %51, !dbg !731

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !731
  br label %61

53:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !732, metadata !DIExpression()) #8, !dbg !735
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !738
  %54 = load i8, i8* %6, align 8, !dbg !739, !tbaa !691, !range !740
  %55 = icmp eq i8 %54, 0, !dbg !739
  br i1 %55, label %59, label %56, !dbg !741

56:                                               ; preds = %53, %56
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !742
  %57 = load i8, i8* %6, align 8, !dbg !739, !tbaa !691, !range !740
  %58 = icmp eq i8 %57, 0, !dbg !739
  br i1 %58, label %59, label %56, !dbg !741, !llvm.loop !744

59:                                               ; preds = %56, %53
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !747
  call void @llvm.dbg.value(metadata i32 40, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64* %3, metadata !627, metadata !DIExpression()), !dbg !748
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !748
  %60 = load atomic i64, i64* %3 monotonic, align 8, !dbg !750
  br label %61, !dbg !751

61:                                               ; preds = %51, %59
  %62 = phi i64 [ %60, %59 ], [ %52, %51 ], !dbg !625
  %63 = phi i32 [ 40, %59 ], [ %40, %51 ], !dbg !625
  call void @llvm.dbg.value(metadata i32 %63, metadata !605, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !752, metadata !DIExpression()) #8, !dbg !755
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !757, metadata !DIExpression()) #8, !dbg !760
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !763
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !765
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !766
  br label %64, !dbg !640

64:                                               ; preds = %61, %36
  %65 = phi i64 [ %38, %36 ], [ %62, %61 ]
  %66 = phi i32 [ %37, %36 ], [ %63, %61 ]
  br label %13, !dbg !625, !llvm.loop !767

67:                                               ; preds = %18
  ret void, !dbg !768
}

declare !dbg !769 dso_local void @halide_thread_yield() local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #5 align 2 !dbg !772 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !774, metadata !DIExpression()), !dbg !796
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !797
  call void @llvm.dbg.value(metadata i64* %2, metadata !627, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !798
  %3 = load atomic i64, i64* %2 monotonic, align 8, !dbg !800
  br label %4, !dbg !801

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ], !dbg !800
  call void @llvm.dbg.value(metadata i64 %5, metadata !775, metadata !DIExpression()), !dbg !796
  %6 = and i64 %5, 2, !dbg !802
  %7 = icmp ne i64 %6, 0, !dbg !803
  call void @llvm.dbg.value(metadata i1 %7, metadata !776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !804
  call void @llvm.dbg.value(metadata i1 undef, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !804
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7, !dbg !805
  call void @llvm.dbg.value(metadata i1 %8, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !804
  br i1 %9, label %62, label %10, !dbg !805

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !775, metadata !DIExpression()), !dbg !796
  %11 = or i64 %5, 2, !dbg !807
  call void @llvm.dbg.value(metadata i64 %11, metadata !779, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i64* %2, metadata !646, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()), !dbg !808
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic, !dbg !811
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !811
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %60
  %16 = phi { i64, i1 } [ %61, %60 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !800
  call void @llvm.dbg.value(metadata i64 %17, metadata !775, metadata !DIExpression()), !dbg !796
  %18 = and i64 %17, -4, !dbg !812
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !813
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !780, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !782, metadata !DIExpression()), !dbg !814
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3, !dbg !815
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !783, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()), !dbg !814
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !814, !tbaa !703
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !782, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 undef, metadata !784, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, metadata !783, metadata !DIExpression()), !dbg !814
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null, !dbg !816
  br i1 %22, label %23, label %34, !dbg !817

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, metadata !782, metadata !DIExpression()), !dbg !814
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1, !dbg !818
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !dbg !818, !tbaa !698
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !785, metadata !DIExpression()), !dbg !819
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null, !dbg !820
  br i1 %27, label %28, label %29, !dbg !823

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0)) #7, !dbg !824
  tail call void @abort() #7, !dbg !824
  br label %29, !dbg !824

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2, !dbg !826
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !827, !tbaa !701
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !782, metadata !DIExpression()), !dbg !814
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3, !dbg !828
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !783, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 undef, metadata !784, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !814
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !dbg !814, !tbaa !703
  call void @llvm.dbg.value(metadata i32 undef, metadata !784, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, metadata !783, metadata !DIExpression()), !dbg !814
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null, !dbg !816
  br i1 %33, label %23, label %34, !dbg !817, !llvm.loop !829

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ], !dbg !814
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !831, !tbaa !703
  call void @llvm.dbg.value(metadata i64 %17, metadata !775, metadata !DIExpression()), !dbg !796
  %36 = and i64 %17, 1, !dbg !832
  %37 = icmp eq i64 %36, 0, !dbg !833
  br i1 %37, label %42, label %38, !dbg !834

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %17, metadata !775, metadata !DIExpression()), !dbg !796
  %39 = and i64 %17, -3, !dbg !835
  call void @llvm.dbg.value(metadata i64 %39, metadata !787, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64* %2, metadata !837, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64* undef, metadata !842, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64* undef, metadata !843, metadata !DIExpression()), !dbg !844
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic, !dbg !847
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !847
  br i1 %41, label %62, label %60, !dbg !847, !llvm.loop !848

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2, !dbg !851
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !dbg !851, !tbaa !701
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !790, metadata !DIExpression()), !dbg !814
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !852
  br i1 %45, label %46, label %54, !dbg !853

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 %47, metadata !775, metadata !DIExpression()), !dbg !796
  %48 = and i64 %47, 1, !dbg !855
  call void @llvm.dbg.value(metadata i64 %48, metadata !794, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64* %2, metadata !837, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64* undef, metadata !842, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64* undef, metadata !843, metadata !DIExpression()), !dbg !857
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic, !dbg !860
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !860
  br i1 %50, label %56, label %51, !dbg !860

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !860
  call void @llvm.dbg.value(metadata i64 %52, metadata !775, metadata !DIExpression()), !dbg !796
  %53 = icmp ult i64 %52, 4, !dbg !861
  br i1 %53, label %46, label %60, !dbg !863, !llvm.loop !864

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !867, !tbaa !703
  call void @llvm.dbg.value(metadata i64* %2, metadata !869, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i64 -3, metadata !874, metadata !DIExpression()), !dbg !875
  %55 = atomicrmw and i64* %2, i64 -3 release, !dbg !877
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !878, metadata !DIExpression()) #8, !dbg !881
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0, !dbg !883
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !885, metadata !DIExpression()) #8, !dbg !888
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2, !dbg !890
  store i8 0, i8* %58, align 8, !dbg !891, !tbaa !691
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1, !dbg !892
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %59) #7, !dbg !893
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !894, metadata !DIExpression()) #8, !dbg !897
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !899
  br label %62, !dbg !900

60:                                               ; preds = %51, %38
  %61 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire, !dbg !814
  br label %15

62:                                               ; preds = %4, %38, %56
  ret void, !dbg !901
}

declare !dbg !902 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #4

declare !dbg !905 dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) local_unnamed_addr #2 !dbg !906 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !911, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i64 %0, metadata !915, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i32 10, metadata !921, metadata !DIExpression()), !dbg !922
  %2 = mul i64 %0, -7046029254386353131, !dbg !924
  %3 = lshr i64 %2, 54, !dbg !927
  call void @llvm.dbg.value(metadata i64 %3, metadata !912, metadata !DIExpression()), !dbg !914
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3, !dbg !928
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !913, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !929, metadata !DIExpression()) #8, !dbg !934
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !936
  call void @llvm.dbg.value(metadata i8* %5, metadata !937, metadata !DIExpression()) #8, !dbg !940
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #7, !dbg !942
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #8, !dbg !934
  call void @llvm.dbg.value(metadata i64 1, metadata !933, metadata !DIExpression()) #8, !dbg !934
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !943
  call void @llvm.dbg.value(metadata i64* %6, metadata !646, metadata !DIExpression()) #8, !dbg !945
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !945
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !945
  %7 = cmpxchg weak i64* %6, i64 0, i64 1 acquire monotonic, !dbg !947
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !947
  br i1 %8, label %11, label %9, !dbg !948

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !949
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !929, metadata !DIExpression()) #8, !dbg !934
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #7, !dbg !950
  br label %11, !dbg !952

11:                                               ; preds = %1, %9
  call void @llvm.dbg.value(metadata i8* %5, metadata !953, metadata !DIExpression()) #8, !dbg !956
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #7, !dbg !958
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !959
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #5 !dbg !960 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !972, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i64 %2, metadata !973, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i64 %1, metadata !915, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i32 10, metadata !921, metadata !DIExpression()), !dbg !987
  %4 = mul i64 %1, -7046029254386353131, !dbg !989
  %5 = lshr i64 %4, 54, !dbg !990
  call void @llvm.dbg.value(metadata i64 %5, metadata !974, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i64 %2, metadata !915, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 10, metadata !921, metadata !DIExpression()), !dbg !991
  %6 = mul i64 %2, -7046029254386353131, !dbg !993
  %7 = lshr i64 %6, 54, !dbg !994
  call void @llvm.dbg.value(metadata i64 %7, metadata !975, metadata !DIExpression()), !dbg !986
  %8 = icmp eq i64 %5, %7, !dbg !995
  br i1 %8, label %9, label %17, !dbg !996

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !997
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !976, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !929, metadata !DIExpression()) #8, !dbg !999
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*, !dbg !1001
  call void @llvm.dbg.value(metadata i8* %11, metadata !937, metadata !DIExpression()) #8, !dbg !1002
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #7, !dbg !1004
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #8, !dbg !999
  call void @llvm.dbg.value(metadata i64 1, metadata !933, metadata !DIExpression()) #8, !dbg !999
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0, !dbg !1005
  call void @llvm.dbg.value(metadata i64* %12, metadata !646, metadata !DIExpression()) #8, !dbg !1006
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !1006
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !1006
  %13 = cmpxchg weak i64* %12, i64 0, i64 1 acquire monotonic, !dbg !1008
  %14 = extractvalue { i64, i1 } %13, 1, !dbg !1008
  br i1 %14, label %51, label %15, !dbg !1009

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, !dbg !1010
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %16, metadata !929, metadata !DIExpression()) #8, !dbg !999
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %16) #7, !dbg !1011
  br label %51, !dbg !1012

17:                                               ; preds = %3
  %18 = icmp ult i64 %5, %7, !dbg !1013
  br i1 %18, label %19, label %35, !dbg !1014

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !1015
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !979, metadata !DIExpression()), !dbg !1016
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !1017
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !982, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !929, metadata !DIExpression()) #8, !dbg !1018
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %22, metadata !937, metadata !DIExpression()) #8, !dbg !1021
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #7, !dbg !1023
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #8, !dbg !1018
  call void @llvm.dbg.value(metadata i64 1, metadata !933, metadata !DIExpression()) #8, !dbg !1018
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0, !dbg !1024
  call void @llvm.dbg.value(metadata i64* %23, metadata !646, metadata !DIExpression()) #8, !dbg !1025
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !1025
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !1025
  %24 = cmpxchg weak i64* %23, i64 0, i64 1 acquire monotonic, !dbg !1027
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !1027
  br i1 %25, label %28, label %26, !dbg !1028

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, !dbg !1029
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !929, metadata !DIExpression()) #8, !dbg !1018
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %27) #7, !dbg !1030
  br label %28, !dbg !1031

28:                                               ; preds = %19, %26
  call void @llvm.dbg.value(metadata i8* %22, metadata !953, metadata !DIExpression()) #8, !dbg !1032
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #7, !dbg !1034
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !929, metadata !DIExpression()) #8, !dbg !1035
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %29, metadata !937, metadata !DIExpression()) #8, !dbg !1038
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #7, !dbg !1040
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #8, !dbg !1035
  call void @llvm.dbg.value(metadata i64 1, metadata !933, metadata !DIExpression()) #8, !dbg !1035
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i64 0, i32 0, i32 0, !dbg !1041
  call void @llvm.dbg.value(metadata i64* %30, metadata !646, metadata !DIExpression()) #8, !dbg !1042
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !1042
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !1042
  %31 = cmpxchg weak i64* %30, i64 0, i64 1 acquire monotonic, !dbg !1044
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !1044
  br i1 %32, label %51, label %33, !dbg !1045

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i64 0, i32 0, !dbg !1046
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %34, metadata !929, metadata !DIExpression()) #8, !dbg !1035
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %34) #7, !dbg !1047
  br label %51, !dbg !1048

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !1049
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !983, metadata !DIExpression()), !dbg !1050
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !1051
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !985, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !929, metadata !DIExpression()) #8, !dbg !1052
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %38, metadata !937, metadata !DIExpression()) #8, !dbg !1055
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #7, !dbg !1057
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #8, !dbg !1052
  call void @llvm.dbg.value(metadata i64 1, metadata !933, metadata !DIExpression()) #8, !dbg !1052
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i64 0, i32 0, i32 0, !dbg !1058
  call void @llvm.dbg.value(metadata i64* %39, metadata !646, metadata !DIExpression()) #8, !dbg !1059
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !1059
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !1059
  %40 = cmpxchg weak i64* %39, i64 0, i64 1 acquire monotonic, !dbg !1061
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !1061
  br i1 %41, label %44, label %42, !dbg !1062

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i64 0, i32 0, !dbg !1063
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %43, metadata !929, metadata !DIExpression()) #8, !dbg !1052
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %43) #7, !dbg !1064
  br label %44, !dbg !1065

44:                                               ; preds = %35, %42
  call void @llvm.dbg.value(metadata i8* %38, metadata !953, metadata !DIExpression()) #8, !dbg !1066
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #7, !dbg !1068
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !929, metadata !DIExpression()) #8, !dbg !1069
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %45, metadata !937, metadata !DIExpression()) #8, !dbg !1072
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #7, !dbg !1074
  call void @llvm.dbg.value(metadata i64 0, metadata !932, metadata !DIExpression()) #8, !dbg !1069
  call void @llvm.dbg.value(metadata i64 1, metadata !933, metadata !DIExpression()) #8, !dbg !1069
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i64 0, i32 0, i32 0, !dbg !1075
  call void @llvm.dbg.value(metadata i64* %46, metadata !646, metadata !DIExpression()) #8, !dbg !1076
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !1076
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !1076
  %47 = cmpxchg weak i64* %46, i64 0, i64 1 acquire monotonic, !dbg !1078
  %48 = extractvalue { i64, i1 } %47, 1, !dbg !1078
  br i1 %48, label %51, label %49, !dbg !1079

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i64 0, i32 0, !dbg !1080
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !929, metadata !DIExpression()) #8, !dbg !1069
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %50) #7, !dbg !1081
  br label %51, !dbg !1082

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #7, !dbg !1083
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !1083
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 8, !dbg !1083, !tbaa !1084
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !1083
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 8, !dbg !1083, !tbaa !1084
  ret void, !dbg !1085
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 !dbg !1086 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !1091, metadata !DIExpression()), !dbg !1092
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !1093
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !1093, !tbaa !1095
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !1097
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !1097, !tbaa !1098
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1099
  br i1 %6, label %7, label %18, !dbg !1100

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1101, metadata !DIExpression()) #8, !dbg !1107
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %8, metadata !1111, metadata !DIExpression()) #8, !dbg !1114
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #7, !dbg !1116
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !1117
  call void @llvm.dbg.value(metadata i64* %10, metadata !1118, metadata !DIExpression()) #8, !dbg !1122
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1122
  %11 = atomicrmw and i64* %10, i64 -2 release, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %11, metadata !1104, metadata !DIExpression()) #8, !dbg !1107
  %12 = and i64 %11, 2, !dbg !1125
  %13 = icmp ne i64 %12, 0, !dbg !1126
  call void @llvm.dbg.value(metadata i1 %13, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1107
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1107
  %14 = icmp ult i64 %11, 4
  %15 = or i1 %14, %13, !dbg !1127
  call void @llvm.dbg.value(metadata i1 %14, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1107
  br i1 %15, label %66, label %16, !dbg !1127

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !1129
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %17, metadata !1101, metadata !DIExpression()) #8, !dbg !1107
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %17) #7, !dbg !1130
  br label %66, !dbg !1132

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1133
  br i1 %19, label %20, label %43, !dbg !1135

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1101, metadata !DIExpression()) #8, !dbg !1136
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %21, metadata !1111, metadata !DIExpression()) #8, !dbg !1140
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #7, !dbg !1142
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !1143
  call void @llvm.dbg.value(metadata i64* %23, metadata !1118, metadata !DIExpression()) #8, !dbg !1144
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1144
  %24 = atomicrmw and i64* %23, i64 -2 release, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %24, metadata !1104, metadata !DIExpression()) #8, !dbg !1136
  %25 = and i64 %24, 2, !dbg !1147
  %26 = icmp ne i64 %25, 0, !dbg !1148
  call void @llvm.dbg.value(metadata i1 %26, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1136
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1136
  %27 = icmp ult i64 %24, 4
  %28 = or i1 %27, %26, !dbg !1149
  call void @llvm.dbg.value(metadata i1 %27, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1136
  br i1 %28, label %31, label %29, !dbg !1149

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !1150
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %30, metadata !1101, metadata !DIExpression()) #8, !dbg !1136
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %30) #7, !dbg !1151
  br label %31, !dbg !1152

31:                                               ; preds = %20, %29
  call void @llvm.dbg.value(metadata i8* %21, metadata !1153, metadata !DIExpression()) #8, !dbg !1156
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #7, !dbg !1158
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !1159, !tbaa !1098
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, metadata !1101, metadata !DIExpression()) #8, !dbg !1160
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %33, metadata !1111, metadata !DIExpression()) #8, !dbg !1163
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #7, !dbg !1165
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i64 0, i32 0, i32 0, !dbg !1166
  call void @llvm.dbg.value(metadata i64* %35, metadata !1118, metadata !DIExpression()) #8, !dbg !1167
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1167
  %36 = atomicrmw and i64* %35, i64 -2 release, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %36, metadata !1104, metadata !DIExpression()) #8, !dbg !1160
  %37 = and i64 %36, 2, !dbg !1170
  %38 = icmp ne i64 %37, 0, !dbg !1171
  call void @llvm.dbg.value(metadata i1 %38, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1160
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1160
  %39 = icmp ult i64 %36, 4
  %40 = or i1 %39, %38, !dbg !1172
  call void @llvm.dbg.value(metadata i1 %39, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1160
  br i1 %40, label %66, label %41, !dbg !1172

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i64 0, i32 0, !dbg !1173
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %42, metadata !1101, metadata !DIExpression()) #8, !dbg !1160
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %42) #7, !dbg !1174
  br label %66, !dbg !1175

43:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !1101, metadata !DIExpression()) #8, !dbg !1176
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %44, metadata !1111, metadata !DIExpression()) #8, !dbg !1180
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #7, !dbg !1182
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0, !dbg !1183
  call void @llvm.dbg.value(metadata i64* %46, metadata !1118, metadata !DIExpression()) #8, !dbg !1184
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1184
  %47 = atomicrmw and i64* %46, i64 -2 release, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %47, metadata !1104, metadata !DIExpression()) #8, !dbg !1176
  %48 = and i64 %47, 2, !dbg !1187
  %49 = icmp ne i64 %48, 0, !dbg !1188
  call void @llvm.dbg.value(metadata i1 %49, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1176
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1176
  %50 = icmp ult i64 %47, 4
  %51 = or i1 %50, %49, !dbg !1189
  call void @llvm.dbg.value(metadata i1 %50, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1176
  br i1 %51, label %54, label %52, !dbg !1189

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, !dbg !1190
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %53, metadata !1101, metadata !DIExpression()) #8, !dbg !1176
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %53) #7, !dbg !1191
  br label %54, !dbg !1192

54:                                               ; preds = %43, %52
  call void @llvm.dbg.value(metadata i8* %44, metadata !1153, metadata !DIExpression()) #8, !dbg !1193
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #7, !dbg !1195
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !1196, !tbaa !1095
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, metadata !1101, metadata !DIExpression()) #8, !dbg !1197
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %56, metadata !1111, metadata !DIExpression()) #8, !dbg !1200
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #7, !dbg !1202
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i64 0, i32 0, i32 0, !dbg !1203
  call void @llvm.dbg.value(metadata i64* %58, metadata !1118, metadata !DIExpression()) #8, !dbg !1204
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1204
  %59 = atomicrmw and i64* %58, i64 -2 release, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %59, metadata !1104, metadata !DIExpression()) #8, !dbg !1197
  %60 = and i64 %59, 2, !dbg !1207
  %61 = icmp ne i64 %60, 0, !dbg !1208
  call void @llvm.dbg.value(metadata i1 %61, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1197
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1197
  %62 = icmp ult i64 %59, 4
  %63 = or i1 %62, %61, !dbg !1209
  call void @llvm.dbg.value(metadata i1 %62, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1197
  br i1 %63, label %66, label %64, !dbg !1209

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i64 0, i32 0, !dbg !1210
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %65, metadata !1101, metadata !DIExpression()) #8, !dbg !1197
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %65) #7, !dbg !1211
  br label %66, !dbg !1212

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #7, !dbg !1213
  ret void, !dbg !1214
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #0 !dbg !1215 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1218, metadata !DIExpression()), !dbg !1219
  ret i1 true, !dbg !1220
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #0 !dbg !1221 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1223, metadata !DIExpression()), !dbg !1224
  ret void, !dbg !1225
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1228, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %1, metadata !1229, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i1 %2, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1231
  ret i64 0, !dbg !1232
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1235, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1236, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i1 %2, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1239
  call void @llvm.dbg.value(metadata i1 %3, metadata !1238, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1239
  ret void, !dbg !1240
}

; Function Attrs: nounwind
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 !dbg !1241 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1246, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1247, metadata !DIExpression()), !dbg !1251
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1252
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !1252
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1248, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1254, metadata !DIExpression()) #8, !dbg !1257
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !684, metadata !DIExpression()) #8, !dbg !1259
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2, !dbg !1261
  store i8 0, i8* %6, align 8, !dbg !1261, !tbaa !691
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0, !dbg !1262
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1263
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1, !dbg !1264
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !1265
  store i8 0, i8* %6, align 8, !dbg !1266, !tbaa !691
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1, !dbg !1267
  store i64 0, i64* %9, align 8, !dbg !1267, !tbaa !1268
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2, !dbg !1271
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1271, !tbaa !1272
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3, !dbg !1273
  store i64 0, i64* %11, align 8, !dbg !1273, !tbaa !1274
  %12 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #6, !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1249, metadata !DIExpression()), !dbg !1251
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0, !dbg !1276
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !1276
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1250, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1278, metadata !DIExpression()), !dbg !1282
  store i8 0, i8* %13, align 8, !dbg !1284, !tbaa !1285
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2, !dbg !1287
  store i64 0, i64* %14, align 8, !dbg !1287, !tbaa !1288
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0, !dbg !1289
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 8, !dbg !1289, !tbaa !1291
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1293
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #7, !dbg !1294
  br i1 %18, label %31, label %19, !dbg !1295

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1101, metadata !DIExpression()) #8, !dbg !1296
  %20 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1299
  call void @llvm.dbg.value(metadata i8* %20, metadata !1111, metadata !DIExpression()) #8, !dbg !1300
  %21 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %20, i32 1) #7, !dbg !1302
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1303
  call void @llvm.dbg.value(metadata i64* %22, metadata !1118, metadata !DIExpression()) #8, !dbg !1304
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1304
  %23 = atomicrmw and i64* %22, i64 -2 release, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %23, metadata !1104, metadata !DIExpression()) #8, !dbg !1296
  %24 = and i64 %23, 2, !dbg !1307
  %25 = icmp ne i64 %24, 0, !dbg !1308
  call void @llvm.dbg.value(metadata i1 %25, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1296
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1296
  %26 = icmp ult i64 %23, 4
  %27 = or i1 %26, %25, !dbg !1309
  call void @llvm.dbg.value(metadata i1 %26, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1296
  br i1 %27, label %30, label %28, !dbg !1309

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %29, metadata !1101, metadata !DIExpression()) #8, !dbg !1296
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %29) #7, !dbg !1311
  br label %30, !dbg !1312

30:                                               ; preds = %19, %28
  call void @llvm.dbg.value(metadata i8* %20, metadata !1153, metadata !DIExpression()) #8, !dbg !1313
  call void @__tsan_mutex_post_unlock(i8* nonnull %20, i32 1) #7, !dbg !1315
  br label %59, !dbg !1316

31:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1317, !tbaa !1272
  store i64 %0, i64* %9, align 8, !dbg !1318, !tbaa !1268
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !704, metadata !DIExpression()), !dbg !1319
  store i8 1, i8* %6, align 8, !dbg !1321, !tbaa !691
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 1, !dbg !1322
  %33 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, align 8, !dbg !1322, !tbaa !1324
  %34 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %33, null, !dbg !1327
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1328
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1328
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, i64 0, i32 2, !dbg !1328
  %38 = select i1 %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, !dbg !1328
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 8, !dbg !1329, !tbaa !1084
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1330
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1331, !tbaa !1332
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1101, metadata !DIExpression()) #8, !dbg !1333
  %40 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %40, metadata !1111, metadata !DIExpression()) #8, !dbg !1336
  %41 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %40, i32 1) #7, !dbg !1338
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1339
  call void @llvm.dbg.value(metadata i64* %42, metadata !1118, metadata !DIExpression()) #8, !dbg !1340
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1340
  %43 = atomicrmw and i64* %42, i64 -2 release, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %43, metadata !1104, metadata !DIExpression()) #8, !dbg !1333
  %44 = and i64 %43, 2, !dbg !1343
  %45 = icmp ne i64 %44, 0, !dbg !1344
  call void @llvm.dbg.value(metadata i1 %45, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1333
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1333
  %46 = icmp ult i64 %43, 4
  %47 = or i1 %46, %45, !dbg !1345
  call void @llvm.dbg.value(metadata i1 %46, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1333
  br i1 %47, label %50, label %48, !dbg !1345

48:                                               ; preds = %31
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1346
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %49, metadata !1101, metadata !DIExpression()) #8, !dbg !1333
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %49) #7, !dbg !1347
  br label %50, !dbg !1348

50:                                               ; preds = %31, %48
  call void @llvm.dbg.value(metadata i8* %40, metadata !1153, metadata !DIExpression()) #8, !dbg !1349
  call void @__tsan_mutex_post_unlock(i8* nonnull %40, i32 1) #7, !dbg !1351
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1, !dbg !1352
  %52 = load void (i8*)*, void (i8*)** %51, align 8, !dbg !1352, !tbaa !1353
  call void %52(i8* nonnull %17) #7, !dbg !1354
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !732, metadata !DIExpression()) #8, !dbg !1355
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1357
  %53 = load i8, i8* %6, align 8, !dbg !1358, !tbaa !691, !range !740
  %54 = icmp eq i8 %53, 0, !dbg !1358
  br i1 %54, label %58, label %55, !dbg !1359

55:                                               ; preds = %50, %55
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1360
  %56 = load i8, i8* %6, align 8, !dbg !1358, !tbaa !691, !range !740
  %57 = icmp eq i8 %56, 0, !dbg !1358
  br i1 %57, label %58, label %55, !dbg !1359, !llvm.loop !1361

58:                                               ; preds = %55, %50
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1363
  br label %59, !dbg !1364

59:                                               ; preds = %58, %30
  %60 = phi i64* [ %11, %58 ], [ %14, %30 ]
  %61 = load i64, i64* %60, align 8, !dbg !1251, !tbaa !1365
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !1366
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1367, metadata !DIExpression()) #8, !dbg !1370
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !757, metadata !DIExpression()) #8, !dbg !1372
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !1375
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1376
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !1366
  ret i64 %61, !dbg !1366
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 !dbg !1377 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1379, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1380, metadata !DIExpression()), !dbg !1396
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #6, !dbg !1397
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1381, metadata !DIExpression()), !dbg !1396
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1, !dbg !1398
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1382, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1383, metadata !DIExpression()), !dbg !1396
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !dbg !1399, !tbaa !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1384, metadata !DIExpression()), !dbg !1396
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %12, !dbg !1400

12:                                               ; preds = %59, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %60, %59 ], !dbg !1401
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %61, %59 ], !dbg !1402
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %62, %59 ], !dbg !1403
  %16 = phi i64 [ undef, %2 ], [ %63, %59 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !1384, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1383, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, metadata !1382, metadata !DIExpression()), !dbg !1396
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null, !dbg !1404
  br i1 %17, label %64, label %18, !dbg !1400

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64* %19, metadata !627, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1406
  %20 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %20, metadata !1385, metadata !DIExpression()), !dbg !1409
  %21 = icmp eq i64 %20, %0, !dbg !1410
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 2, !dbg !1411
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 8, !dbg !1411, !tbaa !1272
  br i1 %21, label %24, label %59, !dbg !1412

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1387, metadata !DIExpression()), !dbg !1413
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 8, !dbg !1414, !tbaa !1084
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()), !dbg !1413
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1415, !tbaa !1332
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15, !dbg !1416
  br i1 %26, label %29, label %27, !dbg !1417

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1391, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()), !dbg !1413
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null, !dbg !1419
  br i1 %28, label %41, label %30, !dbg !1420

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1421, !tbaa !1332
  br label %41, !dbg !1423

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1391, metadata !DIExpression()), !dbg !1418
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i64 0, i32 1, !dbg !1424
  call void @llvm.dbg.value(metadata i64* %32, metadata !627, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1425
  %33 = load atomic i64, i64* %32 monotonic, align 8, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %33, metadata !1394, metadata !DIExpression()), !dbg !1428
  %34 = icmp eq i64 %33, %0, !dbg !1429
  call void @llvm.dbg.value(metadata i1 %34, metadata !1390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1413
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i64 0, i32 2, !dbg !1430
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1430, !tbaa !1272
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, metadata !1391, metadata !DIExpression()), !dbg !1418
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1419
  %38 = or i1 %34, %37, !dbg !1431
  br i1 %38, label %39, label %30, !dbg !1420, !llvm.loop !1432

39:                                               ; preds = %30
  %40 = zext i1 %34 to i8, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %40, metadata !1390, metadata !DIExpression()), !dbg !1413
  br label %41, !dbg !1435

41:                                               ; preds = %39, %27, %29
  %42 = phi i8 [ 0, %29 ], [ 0, %27 ], [ %40, %39 ], !dbg !1436
  call void @llvm.dbg.value(metadata i8 %42, metadata !1390, metadata !DIExpression()), !dbg !1413
  %43 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1435, !tbaa !1437
  %44 = icmp ne i8 %42, 0, !dbg !1438
  %45 = tail call i64 %43(i8* nonnull %8, i32 1, i1 zeroext %44) #7, !dbg !1439
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 3, !dbg !1440
  store i64 %45, i64* %46, align 8, !dbg !1441, !tbaa !1274
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !878, metadata !DIExpression()) #8, !dbg !1442
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 0, !dbg !1444
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %47) #7, !dbg !1445
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1101, metadata !DIExpression()) #8, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %9, metadata !1111, metadata !DIExpression()) #8, !dbg !1448
  %48 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #7, !dbg !1450
  call void @llvm.dbg.value(metadata i64* %10, metadata !1118, metadata !DIExpression()) #8, !dbg !1451
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1451
  %49 = atomicrmw and i64* %10, i64 -2 release, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %49, metadata !1104, metadata !DIExpression()) #8, !dbg !1446
  %50 = and i64 %49, 2, !dbg !1454
  %51 = icmp ne i64 %50, 0, !dbg !1455
  call void @llvm.dbg.value(metadata i1 %51, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1446
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1446
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51, !dbg !1456
  call void @llvm.dbg.value(metadata i1 %52, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1446
  br i1 %53, label %55, label %54, !dbg !1456

54:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !1101, metadata !DIExpression()) #8, !dbg !1446
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %11) #7, !dbg !1457
  br label %55, !dbg !1458

55:                                               ; preds = %41, %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !1153, metadata !DIExpression()) #8, !dbg !1459
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #7, !dbg !1461
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !885, metadata !DIExpression()) #8, !dbg !1462
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 2, !dbg !1464
  store i8 0, i8* %56, align 8, !dbg !1465, !tbaa !691
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 1, !dbg !1466
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %57) #7, !dbg !1467
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !894, metadata !DIExpression()) #8, !dbg !1468
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %47) #7, !dbg !1470
  %58 = zext i8 %42 to i64
  br label %59

59:                                               ; preds = %18, %55
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %55 ], [ %22, %18 ], !dbg !1396
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %55 ], [ %15, %18 ], !dbg !1396
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %55 ], [ %23, %18 ], !dbg !1396
  %63 = phi i64 [ %58, %55 ], [ %16, %18 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %62, metadata !1384, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1383, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, metadata !1382, metadata !DIExpression()), !dbg !1396
  br i1 %21, label %75, label %12, !llvm.loop !1471

64:                                               ; preds = %12
  %65 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1473, !tbaa !1437
  %66 = tail call i64 %65(i8* nonnull %8, i32 0, i1 zeroext false) #7, !dbg !1474
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1101, metadata !DIExpression()) #8, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %9, metadata !1111, metadata !DIExpression()) #8, !dbg !1477
  %67 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #7, !dbg !1479
  call void @llvm.dbg.value(metadata i64* %10, metadata !1118, metadata !DIExpression()) #8, !dbg !1480
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1480
  %68 = atomicrmw and i64* %10, i64 -2 release, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %68, metadata !1104, metadata !DIExpression()) #8, !dbg !1475
  %69 = and i64 %68, 2, !dbg !1483
  %70 = icmp ne i64 %69, 0, !dbg !1484
  call void @llvm.dbg.value(metadata i1 %70, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1475
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1475
  %71 = icmp ult i64 %68, 4
  %72 = or i1 %71, %70, !dbg !1485
  call void @llvm.dbg.value(metadata i1 %71, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1475
  br i1 %72, label %74, label %73, !dbg !1485

73:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !1101, metadata !DIExpression()) #8, !dbg !1475
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %11) #7, !dbg !1486
  br label %74, !dbg !1487

74:                                               ; preds = %64, %73
  call void @llvm.dbg.value(metadata i8* %9, metadata !1153, metadata !DIExpression()) #8, !dbg !1488
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #7, !dbg !1490
  br label %75, !dbg !1491

75:                                               ; preds = %59, %74
  %76 = phi i64 [ 0, %74 ], [ %63, %59 ], !dbg !1396
  ret i64 %76, !dbg !1492
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy(i64 %0, i64 %1) local_unnamed_addr #2 !dbg !1493 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1497, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %1, metadata !1498, metadata !DIExpression()), !dbg !1523
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #6, !dbg !1524
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1499, metadata !DIExpression()), !dbg !1523
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1, !dbg !1525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1500, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1501, metadata !DIExpression()), !dbg !1523
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1526, !tbaa !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1502, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1503, metadata !DIExpression()), !dbg !1523
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1527
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #8, !dbg !1527
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1505, metadata !DIExpression()), !dbg !1528
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0, !dbg !1529
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1507, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 16, metadata !1508, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1501, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1502, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1503, metadata !DIExpression()), !dbg !1523
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1530
  br i1 %9, label %59, label %10, !dbg !1531

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12, !dbg !1531

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i64 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i64 [ 0, %10 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1501, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1502, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %15, metadata !1508, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1507, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %17, metadata !1503, metadata !DIExpression()), !dbg !1523
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64* %18, metadata !627, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1533
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1535
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1536
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !dbg !1536, !tbaa !1272
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1511, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 %19, metadata !1509, metadata !DIExpression()), !dbg !1537
  %22 = icmp eq i64 %19, %0, !dbg !1538
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1539, !tbaa !1084
  br i1 %22, label %23, label %53, !dbg !1540

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1541, !tbaa !1332
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1543
  br i1 %25, label %26, label %27, !dbg !1544

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1545, !tbaa !1332
  br label %27, !dbg !1547

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15, !dbg !1548
  br i1 %28, label %29, label %46, !dbg !1549

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1512, metadata !DIExpression()), !dbg !1550
  %30 = shl i64 %15, 4, !dbg !1551
  %31 = call i8* @malloc(i64 %30) #7, !dbg !1552
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1553
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1507, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()), !dbg !1554
  %33 = icmp eq i64 %15, 0, !dbg !1555
  br i1 %33, label %34, label %37, !dbg !1557

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %35, metadata !1508, metadata !DIExpression()), !dbg !1523
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1559
  br i1 %36, label %46, label %44, !dbg !1561

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1517, metadata !DIExpression()), !dbg !1554
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38, !dbg !1562
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1562, !tbaa !1084
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38, !dbg !1564
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1565, !tbaa !1084
  %42 = add nuw i64 %38, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %42, metadata !1517, metadata !DIExpression()), !dbg !1554
  %43 = icmp eq i64 %42, %15, !dbg !1555
  br i1 %43, label %34, label %37, !dbg !1557, !llvm.loop !1567

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1569
  call void @free(i8* %45) #7, !dbg !1571
  br label %46, !dbg !1572

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1523
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1523
  call void @llvm.dbg.value(metadata i64 %48, metadata !1508, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1507, metadata !DIExpression()), !dbg !1523
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1573
  store i64 %1, i64* %49, align 8, !dbg !1574, !tbaa !1274
  %50 = add i64 %17, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %50, metadata !1503, metadata !DIExpression()), !dbg !1523
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17, !dbg !1576
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !dbg !1577, !tbaa !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !878, metadata !DIExpression()) #8, !dbg !1578
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1580
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %52) #7, !dbg !1581
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1502, metadata !DIExpression()), !dbg !1523
  br label %53, !dbg !1582

53:                                               ; preds = %12, %46
  %54 = phi i64 [ %50, %46 ], [ %17, %12 ], !dbg !1523
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1523
  %56 = phi i64 [ %48, %46 ], [ %15, %12 ], !dbg !1523
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1501, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1502, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %56, metadata !1508, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1507, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %54, metadata !1503, metadata !DIExpression()), !dbg !1523
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1530
  br i1 %58, label %59, label %12, !dbg !1531, !llvm.loop !1583

59:                                               ; preds = %53, %2
  %60 = phi i64 [ 0, %2 ], [ %54, %53 ], !dbg !1523
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ], !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1101, metadata !DIExpression()) #8, !dbg !1585
  %62 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %62, metadata !1111, metadata !DIExpression()) #8, !dbg !1588
  %63 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %62, i32 1) #7, !dbg !1590
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !1591
  call void @llvm.dbg.value(metadata i64* %64, metadata !1118, metadata !DIExpression()) #8, !dbg !1592
  call void @llvm.dbg.value(metadata i64 -2, metadata !1121, metadata !DIExpression()) #8, !dbg !1592
  %65 = atomicrmw and i64* %64, i64 -2 release, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %65, metadata !1104, metadata !DIExpression()) #8, !dbg !1585
  %66 = and i64 %65, 2, !dbg !1595
  %67 = icmp ne i64 %66, 0, !dbg !1596
  call void @llvm.dbg.value(metadata i1 %67, metadata !1105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1585
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1585
  %68 = icmp ult i64 %65, 4
  %69 = or i1 %68, %67, !dbg !1597
  call void @llvm.dbg.value(metadata i1 %68, metadata !1106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1585
  br i1 %69, label %72, label %70, !dbg !1597

70:                                               ; preds = %59
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !1598
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %71, metadata !1101, metadata !DIExpression()) #8, !dbg !1585
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %71) #7, !dbg !1599
  br label %72, !dbg !1600

72:                                               ; preds = %59, %70
  call void @llvm.dbg.value(metadata i8* %62, metadata !1153, metadata !DIExpression()) #8, !dbg !1601
  call void @__tsan_mutex_post_unlock(i8* nonnull %62, i32 1) #7, !dbg !1603
  call void @llvm.dbg.value(metadata i64 0, metadata !1519, metadata !DIExpression()), !dbg !1604
  %73 = icmp eq i64 %60, 0, !dbg !1605
  br i1 %73, label %83, label %75, !dbg !1607

74:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1608
  br i1 %73, label %83, label %85, !dbg !1609

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %81, %75 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !1519, metadata !DIExpression()), !dbg !1604
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %76, !dbg !1610
  %78 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 8, !dbg !1610, !tbaa !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, metadata !885, metadata !DIExpression()) #8, !dbg !1612
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, i64 0, i32 0, i32 2, !dbg !1614
  store i8 0, i8* %79, align 8, !dbg !1615, !tbaa !691
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, i64 0, i32 0, i32 1, !dbg !1616
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %80) #7, !dbg !1617
  %81 = add nuw i64 %76, 1, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %81, metadata !1519, metadata !DIExpression()), !dbg !1604
  %82 = icmp eq i64 %81, %60, !dbg !1605
  br i1 %82, label %74, label %75, !dbg !1607, !llvm.loop !1619

83:                                               ; preds = %85, %72, %74
  %84 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8, !dbg !1621
  br i1 %84, label %94, label %92, !dbg !1623

85:                                               ; preds = %74, %85
  %86 = phi i64 [ %90, %85 ], [ 0, %74 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1521, metadata !DIExpression()), !dbg !1608
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %86, !dbg !1624
  %88 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %87, align 8, !dbg !1624, !tbaa !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, metadata !894, metadata !DIExpression()) #8, !dbg !1627
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i64 0, i32 0, i32 0, !dbg !1629
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %89) #7, !dbg !1630
  %90 = add nuw i64 %86, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %90, metadata !1521, metadata !DIExpression()), !dbg !1608
  %91 = icmp eq i64 %90, %60, !dbg !1632
  br i1 %91, label %83, label %85, !dbg !1609, !llvm.loop !1633

92:                                               ; preds = %83
  %93 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*, !dbg !1635
  call void @free(i8* %93) #7, !dbg !1637
  br label %94, !dbg !1638

94:                                               ; preds = %92, %83
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #8, !dbg !1639
  ret i64 %60, !dbg !1640
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #5 !dbg !1641 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1645, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %1, metadata !1646, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1647, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %3, metadata !1648, metadata !DIExpression()), !dbg !1660
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1661
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !1661
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1649, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %1, metadata !1646, metadata !DIExpression()), !dbg !1660
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #6, !dbg !1663
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0, !dbg !1664
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !1664
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1650, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1278, metadata !DIExpression()), !dbg !1666
  store i8 0, i8* %8, align 8, !dbg !1668, !tbaa !1285
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2, !dbg !1669
  store i64 0, i64* %9, align 8, !dbg !1669, !tbaa !1288
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0, !dbg !1670
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !dbg !1670, !tbaa !1291
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1672
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #7, !dbg !1673
  br i1 %13, label %15, label %14, !dbg !1674

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #6, !dbg !1675
  br label %91, !dbg !1677

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0, !dbg !1678
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1678, !tbaa !1095
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1, !dbg !1679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1651, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1652, metadata !DIExpression()), !dbg !1660
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !dbg !1680, !tbaa !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1653, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1655, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1656, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1652, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1651, metadata !DIExpression()), !dbg !1660
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1681
  br i1 %20, label %73, label %21, !dbg !1682

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1656, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1655, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1653, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1652, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, metadata !1651, metadata !DIExpression()), !dbg !1660
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64* %28, metadata !627, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1684
  %29 = load atomic i64, i64* %28 monotonic, align 8, !dbg !1686
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2, !dbg !1687
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !dbg !1687, !tbaa !1272
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1659, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i64 %29, metadata !1657, metadata !DIExpression()), !dbg !1688
  %32 = icmp eq i64 %29, %0, !dbg !1689
  br i1 %32, label %33, label %50, !dbg !1691

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !dbg !1692, !tbaa !1084
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1694, !tbaa !1095
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2, !dbg !1696
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1696, !tbaa !1332
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25, !dbg !1697
  br i1 %37, label %38, label %39, !dbg !1698

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1699, !tbaa !1332
  br label %39, !dbg !1701

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !dbg !1702, !tbaa !1285, !range !740
  %41 = icmp ne i8 %40, 0, !dbg !1702
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  %43 = and i1 %42, %41, !dbg !1704
  br i1 %43, label %50, label %44, !dbg !1704

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null, !dbg !1705
  br i1 %45, label %48, label %46, !dbg !1708

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2, !dbg !1709
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !dbg !1711, !tbaa !1272
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ], !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1655, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64* %28, metadata !1712, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64* undef, metadata !1717, metadata !DIExpression()), !dbg !1718
  store atomic i64 %1, i64* %28 monotonic, align 8, !dbg !1720
  br label %50

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ], !dbg !1660
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ], !dbg !1660
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ], !dbg !1721
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ], !dbg !1722
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ], !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1656, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1655, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1654, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1653, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1652, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1651, metadata !DIExpression()), !dbg !1660
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null, !dbg !1681
  br i1 %56, label %57, label %21, !dbg !1682, !llvm.loop !1723

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null, !dbg !1725
  br i1 %58, label %73, label %59, !dbg !1727

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2, !dbg !1728
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !dbg !1730, !tbaa !1272
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1, !dbg !1731
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !dbg !1731, !tbaa !1098
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1, !dbg !1733
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !dbg !1733, !tbaa !1324
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null, !dbg !1734
  br i1 %65, label %70, label %66, !dbg !1735

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1736
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !dbg !1736, !tbaa !1332
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2, !dbg !1738
  br label %70

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !dbg !1739, !tbaa !1084
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1740
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !dbg !1741, !tbaa !1332
  br label %73, !dbg !1742

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3, !dbg !1743
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !dbg !1743, !tbaa !1744
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null, !dbg !1745
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #7, !dbg !1746
  br i1 %78, label %79, label %84, !dbg !1747

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3, !dbg !1748
  store i64 %3, i64* %80, align 8, !dbg !1751, !tbaa !1274
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !878, metadata !DIExpression()) #8, !dbg !1752
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0, !dbg !1754
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %81) #7, !dbg !1755
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #6, !dbg !1756
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !885, metadata !DIExpression()) #8, !dbg !1757
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2, !dbg !1759
  store i8 0, i8* %82, align 8, !dbg !1760, !tbaa !691
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1, !dbg !1761
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %83) #7, !dbg !1762
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !894, metadata !DIExpression()) #8, !dbg !1763
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %81) #7, !dbg !1765
  br label %85, !dbg !1766

84:                                               ; preds = %73
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #6, !dbg !1767
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i8, i8* %8, align 8, !dbg !1769
  %87 = and i8 %86, 1, !dbg !1769
  %88 = icmp ne i8 %87, 0, !dbg !1769
  %89 = and i1 %78, %88, !dbg !1769
  %90 = zext i1 %89 to i32, !dbg !1770
  br label %91

91:                                               ; preds = %85, %14
  %92 = phi i32 [ %90, %85 ], [ 0, %14 ], !dbg !1660
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !1771
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !1771
  ret i32 %92, !dbg !1771
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #0 !dbg !1772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1774, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1775, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* %0, metadata !1776, metadata !DIExpression()), !dbg !1778
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1779
  %4 = bitcast i8* %3 to i64**, !dbg !1779
  %5 = load i64*, i64** %4, align 8, !dbg !1779, !tbaa !1780
  call void @llvm.dbg.value(metadata i64* %5, metadata !627, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1782
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %6, metadata !1777, metadata !DIExpression()), !dbg !1778
  %7 = icmp eq i64 %6, 3, !dbg !1785
  ret i1 %7, !dbg !1786
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1787 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1789, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i32 %1, metadata !1790, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i1 %2, metadata !1791, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %0, metadata !1792, metadata !DIExpression()), !dbg !1794
  %4 = select i1 %2, i64 2, i64 0, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %4, metadata !1793, metadata !DIExpression()), !dbg !1794
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1796
  %6 = bitcast i8* %5 to i64**, !dbg !1796
  %7 = load i64*, i64** %6, align 8, !dbg !1796, !tbaa !1780
  call void @llvm.dbg.value(metadata i64* %7, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64* undef, metadata !1800, metadata !DIExpression()), !dbg !1801
  store atomic i64 %4, i64* %7 release, align 8, !dbg !1803
  ret i64 0, !dbg !1804
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1805 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1807, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i32 %1, metadata !1808, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i1 %2, metadata !1809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1814
  call void @llvm.dbg.value(metadata i8* %0, metadata !1810, metadata !DIExpression()), !dbg !1814
  br i1 %2, label %8, label %4, !dbg !1815

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1810, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 0, metadata !1811, metadata !DIExpression()), !dbg !1816
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1817
  %6 = bitcast i8* %5 to i64**, !dbg !1817
  %7 = load i64*, i64** %6, align 8, !dbg !1817, !tbaa !1818
  call void @llvm.dbg.value(metadata i64* %7, metadata !1712, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i64* undef, metadata !1717, metadata !DIExpression()), !dbg !1820
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1822
  br label %8, !dbg !1823

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1824
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1825 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1827, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1828, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %0, metadata !1829, metadata !DIExpression()), !dbg !1831
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1832
  %4 = bitcast i8* %3 to i64**, !dbg !1832
  %5 = load i64*, i64** %4, align 8, !dbg !1832, !tbaa !1833
  call void @llvm.dbg.value(metadata i64* %5, metadata !627, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1835
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %6, metadata !1830, metadata !DIExpression()), !dbg !1831
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1838
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1838
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1838, !tbaa !1840
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64, !dbg !1841
  %11 = icmp eq i64 %6, %10, !dbg !1842
  br i1 %11, label %12, label %30, !dbg !1843

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1830, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i64* %5, metadata !1712, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64* undef, metadata !1717, metadata !DIExpression()), !dbg !1844
  store atomic i64 0, i64* %5 monotonic, align 8, !dbg !1846
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1847, !tbaa !1840
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, metadata !1848, metadata !DIExpression()), !dbg !1854
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0, !dbg !1856
  call void @llvm.dbg.value(metadata i64* %14, metadata !627, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1857
  %15 = load atomic i64, i64* %14 monotonic, align 8, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %15, metadata !1851, metadata !DIExpression()), !dbg !1854
  %16 = and i64 %15, 1, !dbg !1860
  %17 = icmp eq i64 %16, 0, !dbg !1862
  br i1 %17, label %27, label %18, !dbg !1863

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 %19, metadata !1851, metadata !DIExpression()), !dbg !1854
  %20 = or i64 %19, 2, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %20, metadata !1852, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64* %14, metadata !1866, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64* undef, metadata !1869, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64* undef, metadata !1870, metadata !DIExpression()), !dbg !1871
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic, !dbg !1874
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1874
  br i1 %22, label %27, label %23, !dbg !1874

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %24, metadata !1851, metadata !DIExpression()), !dbg !1854
  %25 = and i64 %24, 1, !dbg !1860
  %26 = icmp eq i64 %25, 0, !dbg !1862
  br i1 %26, label %27, label %18, !dbg !1863

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1875
  store i8 %28, i8* %29, align 8, !dbg !1876, !tbaa !1285
  br label %30, !dbg !1877

30:                                               ; preds = %2, %27
  ret i1 %11, !dbg !1878
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1881, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1882, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i1 %2, metadata !1883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1886
  call void @llvm.dbg.value(metadata i1 %3, metadata !1884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %0, metadata !1885, metadata !DIExpression()), !dbg !1886
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1887
  %6 = load i8, i8* %5, align 8, !dbg !1887, !tbaa !1285, !range !740
  %7 = icmp ne i8 %6, 0, !dbg !1887
  %8 = and i1 %7, %3, !dbg !1889
  br i1 %8, label %9, label %15, !dbg !1889

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1890
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1890
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !dbg !1890, !tbaa !1840
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1892, metadata !DIExpression()), !dbg !1895
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0, !dbg !1897
  call void @llvm.dbg.value(metadata i64* %13, metadata !1898, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 2, metadata !1901, metadata !DIExpression()), !dbg !1902
  %14 = atomicrmw or i64* %13, i64 2 monotonic, !dbg !1904
  br label %15, !dbg !1905

15:                                               ; preds = %4, %9
  ret void, !dbg !1906
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #0 !dbg !1907 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1909, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1910, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i8* %0, metadata !1911, metadata !DIExpression()), !dbg !1913
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1914
  %4 = bitcast i8* %3 to i64**, !dbg !1914
  %5 = load i64*, i64** %4, align 8, !dbg !1914, !tbaa !1915
  call void @llvm.dbg.value(metadata i64* %5, metadata !627, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()), !dbg !1917
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %6, metadata !1912, metadata !DIExpression()), !dbg !1913
  %7 = icmp eq i64 %6, 0, !dbg !1920
  %8 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1922
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1922
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !dbg !1922, !tbaa !1923
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64, !dbg !1922
  br i1 %7, label %12, label %13, !dbg !1924

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64 %11, metadata !1912, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64* %5, metadata !1712, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64* undef, metadata !1717, metadata !DIExpression()), !dbg !1925
  store atomic i64 %11, i64* %5 monotonic, align 8, !dbg !1928
  br label %17, !dbg !1929

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11, !dbg !1930
  br i1 %14, label %17, label %15, !dbg !1932

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2, !dbg !1933
  store i64 %11, i64* %16, align 8, !dbg !1935, !tbaa !1288
  br label %17, !dbg !1936

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ], !dbg !1913
  ret i1 %18, !dbg !1937
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #5 !dbg !1938 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1940, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* %0, metadata !1941, metadata !DIExpression()), !dbg !1942
  %3 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1943
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1943
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !dbg !1943, !tbaa !1923
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1944, metadata !DIExpression()) #8, !dbg !1949
  call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()) #8, !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1948, metadata !DIExpression()) #8, !dbg !1949
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0, !dbg !1951
  call void @llvm.dbg.value(metadata i64* %6, metadata !723, metadata !DIExpression()) #8, !dbg !1953
  call void @llvm.dbg.value(metadata i64* undef, metadata !726, metadata !DIExpression()) #8, !dbg !1953
  call void @llvm.dbg.value(metadata i64* undef, metadata !727, metadata !DIExpression()) #8, !dbg !1953
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic, !dbg !1955
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1955
  br i1 %8, label %22, label %9, !dbg !1956

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1957, metadata !DIExpression()) #8, !dbg !1963
  call void @llvm.dbg.value(metadata i64 1, metadata !1960, metadata !DIExpression()) #8, !dbg !1963
  call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()) #8, !dbg !1963
  call void @llvm.dbg.value(metadata i64* %6, metadata !1966, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i64* undef, metadata !1969, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i64* undef, metadata !1970, metadata !DIExpression()) #8, !dbg !1971
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic, !dbg !1974
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !1974
  br i1 %11, label %22, label %12, !dbg !1975

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1976
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #8, !dbg !1976
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1962, metadata !DIExpression()) #8, !dbg !1977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1978, metadata !DIExpression()) #8, !dbg !1982
  call void @llvm.dbg.value(metadata i64* %6, metadata !1981, metadata !DIExpression()) #8, !dbg !1982
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1984, metadata !DIExpression()) #8, !dbg !1988
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1990
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1991
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 8, !dbg !1991, !tbaa !1353
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1992
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1993
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !dbg !1993, !tbaa !1744
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1994
  store i64* %6, i64** %18, align 8, !dbg !1994, !tbaa !1780
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !dbg !1995, !tbaa !1291
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %16, align 8, !dbg !1997, !tbaa !1437
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64, !dbg !1998
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1999
  %21 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %20) #7, !dbg !2000
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #8, !dbg !2001
  br label %22, !dbg !2001

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !2002
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !2003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i32 %1, metadata !2006, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i1 %2, metadata !2007, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %0, metadata !2008, metadata !DIExpression()), !dbg !2012
  br i1 %2, label %8, label %4, !dbg !2013

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !2008, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 0, metadata !2009, metadata !DIExpression()), !dbg !2014
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !2015
  %6 = bitcast i8* %5 to i64**, !dbg !2015
  %7 = load i64*, i64** %6, align 8, !dbg !2015, !tbaa !1915
  call void @llvm.dbg.value(metadata i64* %7, metadata !1712, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i64* undef, metadata !1717, metadata !DIExpression()), !dbg !2016
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !2018
  br label %8, !dbg !2019

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !2020
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !2021 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2025, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2026, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2028, metadata !DIExpression()) #8, !dbg !2033
  call void @llvm.dbg.value(metadata i64 0, metadata !2031, metadata !DIExpression()) #8, !dbg !2033
  call void @llvm.dbg.value(metadata i64 1, metadata !2032, metadata !DIExpression()) #8, !dbg !2033
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !2035
  call void @llvm.dbg.value(metadata i64* %3, metadata !646, metadata !DIExpression()) #8, !dbg !2037
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !2037
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !2037
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic, !dbg !2039
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !2039
  br i1 %5, label %59, label %6, !dbg !2040

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2028, metadata !DIExpression()) #8, !dbg !2033
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2026, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2041, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i32 40, metadata !2044, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i64* %3, metadata !627, metadata !DIExpression()) #8, !dbg !2058
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2058
  %7 = load atomic i64, i64* %3 monotonic, align 8, !dbg !2060
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i64
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  br label %16, !dbg !2061

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !2044, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %17, metadata !2045, metadata !DIExpression()) #8, !dbg !2055
  %19 = and i64 %17, 1, !dbg !2062
  %20 = icmp eq i64 %19, 0, !dbg !2063
  br i1 %20, label %21, label %32, !dbg !2064

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !2045, metadata !DIExpression()) #8, !dbg !2055
  %23 = or i64 %22, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %23, metadata !2046, metadata !DIExpression()) #8, !dbg !2066
  call void @llvm.dbg.value(metadata i64* %3, metadata !646, metadata !DIExpression()) #8, !dbg !2067
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !2067
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !2067
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic, !dbg !2070
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !2070
  br i1 %25, label %59, label %26, !dbg !2070

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %18, metadata !2044, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %27, metadata !2045, metadata !DIExpression()) #8, !dbg !2055
  %28 = and i64 %27, 1, !dbg !2062
  %29 = icmp eq i64 %28, 0, !dbg !2063
  br i1 %29, label %21, label %30, !dbg !2064

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0, !dbg !2070
  br label %32, !dbg !2071

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ], !dbg !2055
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !660, metadata !DIExpression()) #8, !dbg !2074
  %34 = icmp sgt i32 %18, 0, !dbg !2071
  br i1 %34, label %35, label %40, !dbg !2075

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %18, metadata !2044, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !2055
  %36 = icmp eq i32 %18, 1, !dbg !2076
  br i1 %36, label %40, label %37, !dbg !2077

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1, !dbg !2078
  call void @llvm.dbg.value(metadata i32 %38, metadata !2044, metadata !DIExpression()) #8, !dbg !2055
  call void @halide_thread_yield() #7, !dbg !2079
  call void @llvm.dbg.value(metadata i64* %3, metadata !627, metadata !DIExpression()) #8, !dbg !2081
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2081
  %39 = load atomic i64, i64* %3 monotonic, align 8, !dbg !2083
  br label %55, !dbg !2084

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !2045, metadata !DIExpression()) #8, !dbg !2055
  %42 = and i64 %33, 2, !dbg !2085
  %43 = icmp eq i64 %42, 0, !dbg !2086
  br i1 %43, label %44, label %50, !dbg !2087

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %33, metadata !2045, metadata !DIExpression()) #8, !dbg !2055
  %45 = or i64 %33, 2, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %45, metadata !2050, metadata !DIExpression()) #8, !dbg !2089
  call void @llvm.dbg.value(metadata i64* %3, metadata !1866, metadata !DIExpression()) #8, !dbg !2090
  call void @llvm.dbg.value(metadata i64* undef, metadata !1869, metadata !DIExpression()) #8, !dbg !2090
  call void @llvm.dbg.value(metadata i64* undef, metadata !1870, metadata !DIExpression()) #8, !dbg !2090
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic, !dbg !2093
  %47 = extractvalue { i64, i1 } %46, 1, !dbg !2093
  br i1 %47, label %50, label %48, !dbg !2093

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0, !dbg !2093
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #8, !dbg !2094
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2053, metadata !DIExpression()) #8, !dbg !2095
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1978, metadata !DIExpression()) #8, !dbg !2096
  call void @llvm.dbg.value(metadata i64* %3, metadata !1981, metadata !DIExpression()) #8, !dbg !2096
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1984, metadata !DIExpression()) #8, !dbg !2098
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !2100, !tbaa !1353
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !2101, !tbaa !1744
  store i64* %3, i64** %13, align 8, !dbg !2102, !tbaa !1780
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !2103, !tbaa !1291
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !2104, !tbaa !1437
  %51 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #7, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %51, metadata !2054, metadata !DIExpression()) #8, !dbg !2106
  %52 = icmp eq i64 %51, %14, !dbg !2107
  br i1 %52, label %58, label %53, !dbg !2109

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 40, metadata !2044, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i64* %3, metadata !627, metadata !DIExpression()) #8, !dbg !2110
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2110
  %54 = load atomic i64, i64* %3 monotonic, align 8, !dbg !2112
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #8, !dbg !2113
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16, !dbg !2055, !llvm.loop !2114

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #8, !dbg !2113
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void, !dbg !2115
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !2116 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2118, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2119, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1944, metadata !DIExpression()) #8, !dbg !2121
  call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()) #8, !dbg !2121
  call void @llvm.dbg.value(metadata i64 0, metadata !1948, metadata !DIExpression()) #8, !dbg !2121
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !2123
  call void @llvm.dbg.value(metadata i64* %3, metadata !723, metadata !DIExpression()) #8, !dbg !2124
  call void @llvm.dbg.value(metadata i64* undef, metadata !726, metadata !DIExpression()) #8, !dbg !2124
  call void @llvm.dbg.value(metadata i64* undef, metadata !727, metadata !DIExpression()) #8, !dbg !2124
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic, !dbg !2126
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !2126
  br i1 %5, label %19, label %6, !dbg !2127

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1957, metadata !DIExpression()) #8, !dbg !2128
  call void @llvm.dbg.value(metadata i64 1, metadata !1960, metadata !DIExpression()) #8, !dbg !2128
  call void @llvm.dbg.value(metadata i64 0, metadata !1961, metadata !DIExpression()) #8, !dbg !2128
  call void @llvm.dbg.value(metadata i64* %3, metadata !1966, metadata !DIExpression()) #8, !dbg !2130
  call void @llvm.dbg.value(metadata i64* undef, metadata !1969, metadata !DIExpression()) #8, !dbg !2130
  call void @llvm.dbg.value(metadata i64* undef, metadata !1970, metadata !DIExpression()) #8, !dbg !2130
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic, !dbg !2132
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2132
  br i1 %8, label %19, label %9, !dbg !2133

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !2134
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #8, !dbg !2134
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1962, metadata !DIExpression()) #8, !dbg !2135
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1978, metadata !DIExpression()) #8, !dbg !2136
  call void @llvm.dbg.value(metadata i64* %3, metadata !1981, metadata !DIExpression()) #8, !dbg !2136
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1984, metadata !DIExpression()) #8, !dbg !2138
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2140
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2141
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2141, !tbaa !1353
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2142
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2143
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2143, !tbaa !1744
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !2144
  store i64* %3, i64** %15, align 8, !dbg !2144, !tbaa !1780
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2145, !tbaa !1291
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2146, !tbaa !1437
  %16 = ptrtoint %struct.halide_mutex* %0 to i64, !dbg !2147
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !2148
  %18 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17) #7, !dbg !2149
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #8, !dbg !2150
  br label %19, !dbg !2150

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !2151
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2152 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2158, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2160, metadata !DIExpression()) #8, !dbg !2165
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2167
  call void @llvm.dbg.value(metadata i8* %3, metadata !2168, metadata !DIExpression()) #8, !dbg !2171
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #7, !dbg !2173
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2174
  call void @llvm.dbg.value(metadata i64* %4, metadata !627, metadata !DIExpression()) #8, !dbg !2175
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2175
  %5 = load atomic i64, i64* %4 monotonic, align 8, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %5, metadata !2163, metadata !DIExpression()) #8, !dbg !2165
  %6 = icmp eq i64 %5, 0, !dbg !2178
  br i1 %6, label %7, label %8, !dbg !2180

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2181, metadata !DIExpression()) #8, !dbg !2184
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2187
  br label %20, !dbg !2188

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2160, metadata !DIExpression()) #8, !dbg !2165
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2158, metadata !DIExpression()), !dbg !2159
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !2189
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #8, !dbg !2189
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2164, metadata !DIExpression()) #8, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %5, metadata !2163, metadata !DIExpression()) #8, !dbg !2165
  %10 = inttoptr i64 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2191
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2192, metadata !DIExpression()) #8, !dbg !2197
  call void @llvm.dbg.value(metadata i64* %4, metadata !2195, metadata !DIExpression()) #8, !dbg !2197
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2196, metadata !DIExpression()) #8, !dbg !2197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1984, metadata !DIExpression()) #8, !dbg !2199
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2201
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2202
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2202, !tbaa !1353
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2203
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2203, !tbaa !1437
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2204
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1, !dbg !2205
  store i64* %4, i64** %15, align 8, !dbg !2205, !tbaa !1833
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2, !dbg !2206
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 8, !dbg !2206, !tbaa !1840
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2207, !tbaa !1291
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2209, !tbaa !1744
  %17 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %5, metadata !2163, metadata !DIExpression()) #8, !dbg !2165
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, !dbg !2211
  %19 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %17, i64 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %18, i64 0) #7, !dbg !2212
  call void @llvm.dbg.value(metadata i8* %3, metadata !2181, metadata !DIExpression()) #8, !dbg !2213
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #8, !dbg !2216
  br label %20, !dbg !2216

20:                                               ; preds = %7, %8
  ret void, !dbg !2217
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2218 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2223, metadata !DIExpression()) #8, !dbg !2228
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2230
  call void @llvm.dbg.value(metadata i8* %3, metadata !2168, metadata !DIExpression()) #8, !dbg !2231
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #7, !dbg !2233
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2234
  call void @llvm.dbg.value(metadata i64* %4, metadata !627, metadata !DIExpression()) #8, !dbg !2235
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2235
  %5 = load atomic i64, i64* %4 monotonic, align 8, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %5, metadata !2226, metadata !DIExpression()) #8, !dbg !2228
  %6 = icmp eq i64 %5, 0, !dbg !2238
  br i1 %6, label %7, label %8, !dbg !2240

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2181, metadata !DIExpression()) #8, !dbg !2241
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2244
  br label %20, !dbg !2245

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2223, metadata !DIExpression()) #8, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2246
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #8, !dbg !2246
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2227, metadata !DIExpression()) #8, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %5, metadata !2226, metadata !DIExpression()) #8, !dbg !2228
  %10 = inttoptr i64 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2248
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2249, metadata !DIExpression()) #8, !dbg !2254
  call void @llvm.dbg.value(metadata i64* %4, metadata !2252, metadata !DIExpression()) #8, !dbg !2254
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2253, metadata !DIExpression()) #8, !dbg !2254
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1984, metadata !DIExpression()) #8, !dbg !2256
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2258
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2258, !tbaa !1291
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2259
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2259, !tbaa !1353
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2260
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2261
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2261, !tbaa !1744
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1, !dbg !2262
  store i64* %4, i64** %15, align 8, !dbg !2262, !tbaa !1818
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2, !dbg !2263
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 8, !dbg !2263, !tbaa !2264
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2265, !tbaa !1437
  %17 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2267
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, !dbg !2268
  %19 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %18) #7, !dbg !2269
  call void @llvm.dbg.value(metadata i8* %3, metadata !2181, metadata !DIExpression()) #8, !dbg !2270
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2272
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #8, !dbg !2273
  br label %20, !dbg !2273

20:                                               ; preds = %7, %8
  ret void, !dbg !2274
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #5 !dbg !2275 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2279, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2280, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2284, metadata !DIExpression()) #8, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2287, metadata !DIExpression()) #8, !dbg !2293
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2295
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #8, !dbg !2295
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2288, metadata !DIExpression()) #8, !dbg !2296
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2297
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2298, metadata !DIExpression()) #8, !dbg !2303
  call void @llvm.dbg.value(metadata i64* %6, metadata !2301, metadata !DIExpression()) #8, !dbg !2303
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2302, metadata !DIExpression()) #8, !dbg !2303
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1984, metadata !DIExpression()) #8, !dbg !2305
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0, !dbg !2307
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1, !dbg !2308
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2, !dbg !2309
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3, !dbg !2310
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !dbg !2310, !tbaa !1744
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1, !dbg !2311
  store i64* %6, i64** %11, align 8, !dbg !2311, !tbaa !1915
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2, !dbg !2312
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2312
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !dbg !2312, !tbaa !1923
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !dbg !2313, !tbaa !1291
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 8, !dbg !2315, !tbaa !1353
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %9, align 8, !dbg !2316, !tbaa !1437
  %14 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2317
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, !dbg !2318
  %16 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #7, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %16, metadata !2289, metadata !DIExpression()) #8, !dbg !2293
  %17 = ptrtoint %struct.halide_mutex* %1 to i64, !dbg !2320
  %18 = icmp eq i64 %16, %17, !dbg !2321
  br i1 %18, label %75, label %19, !dbg !2322

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2028, metadata !DIExpression()) #8, !dbg !2323
  call void @llvm.dbg.value(metadata i64 0, metadata !2031, metadata !DIExpression()) #8, !dbg !2323
  call void @llvm.dbg.value(metadata i64 1, metadata !2032, metadata !DIExpression()) #8, !dbg !2323
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2326
  call void @llvm.dbg.value(metadata i64* %20, metadata !646, metadata !DIExpression()) #8, !dbg !2327
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !2327
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !2327
  %21 = cmpxchg weak i64* %20, i64 0, i64 1 acquire monotonic, !dbg !2329
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !2329
  br i1 %22, label %83, label %23, !dbg !2330

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2041, metadata !DIExpression()) #8, !dbg !2331
  call void @llvm.dbg.value(metadata i32 40, metadata !2044, metadata !DIExpression()) #8, !dbg !2331
  call void @llvm.dbg.value(metadata i64* %20, metadata !627, metadata !DIExpression()) #8, !dbg !2333
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2333
  %24 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2335
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32, !dbg !2336

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !2044, metadata !DIExpression()) #8, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %33, metadata !2045, metadata !DIExpression()) #8, !dbg !2331
  %35 = and i64 %33, 1, !dbg !2337
  %36 = icmp eq i64 %35, 0, !dbg !2338
  br i1 %36, label %37, label %48, !dbg !2339

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !2045, metadata !DIExpression()) #8, !dbg !2331
  %39 = or i64 %38, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %39, metadata !2046, metadata !DIExpression()) #8, !dbg !2341
  call void @llvm.dbg.value(metadata i64* %20, metadata !646, metadata !DIExpression()) #8, !dbg !2342
  call void @llvm.dbg.value(metadata i64* undef, metadata !651, metadata !DIExpression()) #8, !dbg !2342
  call void @llvm.dbg.value(metadata i64* undef, metadata !652, metadata !DIExpression()) #8, !dbg !2342
  %40 = cmpxchg weak i64* %20, i64 %38, i64 %39 acquire monotonic, !dbg !2344
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !2344
  br i1 %41, label %83, label %42, !dbg !2344

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %34, metadata !2044, metadata !DIExpression()) #8, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %43, metadata !2045, metadata !DIExpression()) #8, !dbg !2331
  %44 = and i64 %43, 1, !dbg !2337
  %45 = icmp eq i64 %44, 0, !dbg !2338
  br i1 %45, label %37, label %46, !dbg !2339

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0, !dbg !2344
  br label %48, !dbg !2345

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ], !dbg !2331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !660, metadata !DIExpression()) #8, !dbg !2347
  %50 = icmp sgt i32 %34, 0, !dbg !2345
  br i1 %50, label %51, label %56, !dbg !2348

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %34, metadata !2044, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !2331
  %52 = icmp eq i32 %34, 1, !dbg !2349
  br i1 %52, label %56, label %53, !dbg !2350

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %54, metadata !2044, metadata !DIExpression()) #8, !dbg !2331
  call void @halide_thread_yield() #7, !dbg !2352
  call void @llvm.dbg.value(metadata i64* %20, metadata !627, metadata !DIExpression()) #8, !dbg !2353
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2353
  %55 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2355
  br label %71, !dbg !2356

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !2045, metadata !DIExpression()) #8, !dbg !2331
  %58 = and i64 %49, 2, !dbg !2357
  %59 = icmp eq i64 %58, 0, !dbg !2358
  br i1 %59, label %60, label %66, !dbg !2359

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %49, metadata !2045, metadata !DIExpression()) #8, !dbg !2331
  %61 = or i64 %49, 2, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %61, metadata !2050, metadata !DIExpression()) #8, !dbg !2361
  call void @llvm.dbg.value(metadata i64* %20, metadata !1866, metadata !DIExpression()) #8, !dbg !2362
  call void @llvm.dbg.value(metadata i64* undef, metadata !1869, metadata !DIExpression()) #8, !dbg !2362
  call void @llvm.dbg.value(metadata i64* undef, metadata !1870, metadata !DIExpression()) #8, !dbg !2362
  %62 = cmpxchg weak i64* %20, i64 %49, i64 %61 monotonic monotonic, !dbg !2364
  %63 = extractvalue { i64, i1 } %62, 1, !dbg !2364
  br i1 %63, label %66, label %64, !dbg !2364

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0, !dbg !2364
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #8, !dbg !2365
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !2053, metadata !DIExpression()) #8, !dbg !2366
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1978, metadata !DIExpression()) #8, !dbg !2367
  call void @llvm.dbg.value(metadata i64* %20, metadata !1981, metadata !DIExpression()) #8, !dbg !2367
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1984, metadata !DIExpression()) #8, !dbg !2369
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 8, !dbg !2371, !tbaa !1353
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !dbg !2372, !tbaa !1744
  store i64* %20, i64** %30, align 8, !dbg !2373, !tbaa !1780
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !dbg !2374, !tbaa !1291
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %28, align 8, !dbg !2375, !tbaa !1437
  %67 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #7, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %67, metadata !2054, metadata !DIExpression()) #8, !dbg !2377
  %68 = icmp eq i64 %67, %17, !dbg !2378
  br i1 %68, label %74, label %69, !dbg !2379

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 40, metadata !2044, metadata !DIExpression()) #8, !dbg !2331
  call void @llvm.dbg.value(metadata i64* %20, metadata !627, metadata !DIExpression()) #8, !dbg !2380
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2380
  %70 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #8, !dbg !2383
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32, !dbg !2331, !llvm.loop !2384

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #8, !dbg !2383
  br label %83

75:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2302, metadata !DIExpression()) #8, !dbg !2303
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2287, metadata !DIExpression()) #8, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2282, metadata !DIExpression()), !dbg !2283
  %76 = bitcast %struct.halide_mutex* %1 to i8*, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %76, metadata !937, metadata !DIExpression()) #8, !dbg !2386
  call void @__tsan_mutex_pre_lock(i8* %76, i32 1) #7, !dbg !2388
  %77 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2389
  call void @llvm.dbg.value(metadata i64* %77, metadata !627, metadata !DIExpression()) #8, !dbg !2390
  call void @llvm.dbg.value(metadata i64* undef, metadata !634, metadata !DIExpression()) #8, !dbg !2390
  %78 = load atomic i64, i64* %77 monotonic, align 8, !dbg !2392
  call void @llvm.dbg.value(metadata i64 %78, metadata !2290, metadata !DIExpression()) #8, !dbg !2393
  %79 = and i64 %78, 1, !dbg !2394
  %80 = icmp eq i64 %79, 0, !dbg !2394
  br i1 %80, label %81, label %82, !dbg !2397

81:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !2398
  call void @abort() #7, !dbg !2398
  br label %82, !dbg !2398

82:                                               ; preds = %81, %75
  call void @llvm.dbg.value(metadata i8* %76, metadata !953, metadata !DIExpression()) #8, !dbg !2400
  call void @__tsan_mutex_post_lock(i8* nonnull %76, i32 1, i32 1) #7, !dbg !2402
  br label %83

83:                                               ; preds = %37, %19, %74, %82
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #8, !dbg !2403
  ret void, !dbg !2404
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #2 !dbg !2405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()), !dbg !2411
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #7, !dbg !2412
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2410, metadata !DIExpression()), !dbg !2411
  %4 = icmp eq i8* %2, null, !dbg !2414
  br i1 %4, label %14, label %5, !dbg !2416

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !2417
  %7 = shl nsw i64 %6, 3, !dbg !2418
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #7, !dbg !2419
  %9 = bitcast i8* %2 to i8**, !dbg !2420
  store i8* %8, i8** %9, align 8, !dbg !2420, !tbaa !2421
  %10 = icmp eq i8* %8, null, !dbg !2423
  br i1 %10, label %11, label %12, !dbg !2425

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #7, !dbg !2426
  br label %14, !dbg !2428

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #7, !dbg !2429
  br label %14, !dbg !2430

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ], !dbg !2411
  ret %struct.halide_mutex_array* %15, !dbg !2431
}

declare !dbg !2432 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #4

declare !dbg !2435 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !2438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %1, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %1, metadata !2442, metadata !DIExpression()), !dbg !2443
  %3 = bitcast i8* %1 to i8**, !dbg !2444
  %4 = load i8*, i8** %3, align 8, !dbg !2444, !tbaa !2421
  tail call void @halide_free(i8* %0, i8* %4) #7, !dbg !2445
  tail call void @halide_free(i8* %0, i8* %1) #7, !dbg !2446
  ret void, !dbg !2447
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2448 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %1, metadata !2453, metadata !DIExpression()), !dbg !2454
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2455
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2455, !tbaa !2421
  %5 = sext i32 %1 to i64, !dbg !2456
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2456
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #6, !dbg !2457
  ret i32 0, !dbg !2458
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2459 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %1, metadata !2462, metadata !DIExpression()), !dbg !2463
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2464
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2464, !tbaa !2421
  %5 = sext i32 %1 to i64, !dbg !2465
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2465
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #6, !dbg !2466
  ret i32 0, !dbg !2467
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #0 !dbg !2468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2473
  %2 = icmp sgt i32 %0, 256, !dbg !2474
  br i1 %2, label %6, label %3, !dbg !2476

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2477
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2477
  ret i32 %5, !dbg !2477

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2472, metadata !DIExpression()), !dbg !2473
  ret i32 256, !dbg !2478
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #2 !dbg !2479 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2481, metadata !DIExpression()), !dbg !2483
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2483
  %2 = icmp eq i8* %1, null, !dbg !2485
  br i1 %2, label %3, label %6, !dbg !2487

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2488
  call void @llvm.dbg.value(metadata i8* %4, metadata !2482, metadata !DIExpression()), !dbg !2483
  %5 = icmp eq i8* %4, null, !dbg !2490
  br i1 %5, label %9, label %6, !dbg !2492

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #7, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %8, metadata !2481, metadata !DIExpression()), !dbg !2483
  br label %11, !dbg !2495

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %10, metadata !2481, metadata !DIExpression()), !dbg !2483
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2498
  call void @llvm.dbg.value(metadata i32 %12, metadata !2481, metadata !DIExpression()), !dbg !2483
  ret i32 %12, !dbg !2499
}

declare !dbg !2500 dso_local i8* @getenv(i8*) local_unnamed_addr #4

declare !dbg !2503 dso_local i32 @atoi(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #2 !dbg !2506 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2510, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 40, metadata !2512, metadata !DIExpression()), !dbg !2536
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8, !dbg !2537
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10, !dbg !2543

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ], !dbg !2544
  call void @llvm.dbg.value(metadata i32 %11, metadata !2511, metadata !DIExpression()), !dbg !2536
  br i1 %3, label %15, label %12, !dbg !2545

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2540, metadata !DIExpression()), !dbg !2546
  %13 = load i32, i32* %4, align 8, !dbg !2547, !tbaa !2548
  %14 = icmp eq i32 %13, 0, !dbg !2551
  br i1 %14, label %18, label %21, !dbg !2552

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !2553, !tbaa !2554, !range !740
  %17 = icmp eq i8 %16, 0, !dbg !2553
  br i1 %17, label %48, label %417, !dbg !2543

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !dbg !2537, !tbaa !2558
  %20 = icmp eq i32 %19, 0, !dbg !2537
  br i1 %20, label %417, label %21, !dbg !2543

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2559, !tbaa !2560
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2514, metadata !DIExpression()), !dbg !2561
  %23 = load i32, i32* %5, align 4, !dbg !2562, !tbaa !2566
  %24 = icmp eq i32 %23, 0, !dbg !2567
  br i1 %24, label %38, label %25, !dbg !2568

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !dbg !2569, !tbaa !2558
  %27 = icmp eq i32 %26, 0, !dbg !2572
  br i1 %27, label %28, label %46, !dbg !2573

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2516, metadata !DIExpression()), !dbg !2561
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2574
  br i1 %29, label %35, label %30, !dbg !2576

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2514, metadata !DIExpression()), !dbg !2561
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2, !dbg !2577
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2516, metadata !DIExpression()), !dbg !2561
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !dbg !2579, !tbaa !2580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2514, metadata !DIExpression()), !dbg !2561
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2574
  br i1 %34, label %35, label %30, !dbg !2576, !llvm.loop !2581

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %28 ], [ %32, %30 ], !dbg !2561
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !dbg !2583, !tbaa !2580
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !dbg !2584, !tbaa !1084
  store i32 0, i32* %4, align 8, !dbg !2585, !tbaa !2548
  br label %402, !dbg !2586

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !dbg !2587, !tbaa !2589
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2590
  br i1 %40, label %46, label %41, !dbg !2591

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9, !dbg !2592
  %43 = load i32, i32* %42, align 4, !dbg !2592, !tbaa !2566
  %44 = icmp eq i32 %43, 0, !dbg !2593
  br i1 %44, label %46, label %45, !dbg !2594

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2595, !tbaa !2566
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !2597
  br label %402, !dbg !2598

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2516, metadata !DIExpression()), !dbg !2561
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2599
  br i1 %47, label %196, label %51, !dbg !2600

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2559, !tbaa !2560
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2516, metadata !DIExpression()), !dbg !2561
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2599
  br i1 %50, label %206, label %52, !dbg !2600

51:                                               ; preds = %46
  br i1 %3, label %52, label %121, !dbg !2600

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2601

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2516, metadata !DIExpression()), !dbg !2561
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5, !dbg !2602
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !dbg !2602, !tbaa !2589
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2520, metadata !DIExpression()), !dbg !2603
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2604
  br i1 %59, label %75, label %60, !dbg !2601

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8, !dbg !2606
  %62 = load i32, i32* %61, align 8, !dbg !2606, !tbaa !2558
  %63 = icmp eq i32 %62, 0, !dbg !2609
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7, !dbg !2610
  %65 = load i32, i32* %64, align 4, !dbg !2610, !tbaa !2611
  br i1 %63, label %71, label %66, !dbg !2612

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2613
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2615
  %69 = load i32, i32* %68, align 8, !dbg !2615, !tbaa !2616
  %70 = sub nsw i32 %67, %69, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %70, metadata !2521, metadata !DIExpression()), !dbg !2603
  br label %80

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2618
  %73 = load i32, i32* %72, align 8, !dbg !2618, !tbaa !2616
  %74 = sub nsw i32 %65, %73, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %74, metadata !2521, metadata !DIExpression()), !dbg !2603
  br label %80, !dbg !2621

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2622, !tbaa !2624
  %77 = add nsw i32 %76, 1, !dbg !2625
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2626, !tbaa !2627
  %79 = sub i32 %77, %78, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %79, metadata !2521, metadata !DIExpression()), !dbg !2603
  br label %80, !dbg !2629

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ], !dbg !2630
  call void @llvm.dbg.value(metadata i32 %81, metadata !2521, metadata !DIExpression()), !dbg !2603
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7, !dbg !2631
  %83 = load i32, i32* %82, align 4, !dbg !2631, !tbaa !2611
  %84 = icmp sge i32 %81, %83, !dbg !2632
  call void @llvm.dbg.value(metadata i1 %84, metadata !2518, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i1 true, metadata !2522, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8, !dbg !2633
  %86 = load i8, i8* %85, align 8, !dbg !2633, !tbaa !2634, !range !740
  %87 = icmp eq i8 %86, 0, !dbg !2633
  br i1 %87, label %92, label %88, !dbg !2635

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8, !dbg !2636
  %90 = load i32, i32* %89, align 8, !dbg !2636, !tbaa !2558
  %91 = icmp eq i32 %90, 0, !dbg !2637
  br label %92, !dbg !2635

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i1 %93, metadata !2523, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  %94 = and i1 %93, %84, !dbg !2638
  br i1 %94, label %95, label %117, !dbg !2638

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2640, metadata !DIExpression()) #8, !dbg !2643
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10, !dbg !2647
  %97 = load i32, i32* %96, align 8, !dbg !2647, !tbaa !2650
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4, !dbg !2651
  %99 = load i32, i32* %98, align 8, !dbg !2651, !tbaa !2652
  %100 = icmp slt i32 %97, %99, !dbg !2653
  br i1 %100, label %101, label %225, !dbg !2654

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103, !dbg !2654

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !dbg !2655, !tbaa !2658
  %106 = sext i32 %104 to i64, !dbg !2659
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0, !dbg !2660
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 8, !dbg !2660, !tbaa !2661
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1, !dbg !2663
  %110 = load i32, i32* %109, align 8, !dbg !2663, !tbaa !2664
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %110) #7, !dbg !2665
  br i1 %111, label %112, label %117, !dbg !2666

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !dbg !2667, !tbaa !2650
  %114 = add nsw i32 %113, 1, !dbg !2667
  store i32 %114, i32* %96, align 8, !dbg !2667, !tbaa !2650
  %115 = load i32, i32* %98, align 8, !dbg !2651, !tbaa !2652
  %116 = icmp slt i32 %114, %115, !dbg !2653
  br i1 %116, label %103, label %225, !dbg !2654, !llvm.loop !2668

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2, !dbg !2670
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %118, metadata !2516, metadata !DIExpression()), !dbg !2561
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !dbg !2671, !tbaa !2580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %119, metadata !2514, metadata !DIExpression()), !dbg !2561
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null, !dbg !2599
  br i1 %120, label %196, label %54, !dbg !2600

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %123, metadata !2516, metadata !DIExpression()), !dbg !2561
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5, !dbg !2602
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !dbg !2602, !tbaa !2589
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %125, metadata !2520, metadata !DIExpression()), !dbg !2603
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null, !dbg !2604
  br i1 %126, label %127, label %132, !dbg !2601

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2622, !tbaa !2624
  %129 = add nsw i32 %128, 1, !dbg !2625
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2626, !tbaa !2627
  %131 = sub i32 %129, %130, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %131, metadata !2521, metadata !DIExpression()), !dbg !2603
  br label %147, !dbg !2629

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8, !dbg !2606
  %134 = load i32, i32* %133, align 8, !dbg !2606, !tbaa !2558
  %135 = icmp eq i32 %134, 0, !dbg !2609
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7, !dbg !2610
  %137 = load i32, i32* %136, align 4, !dbg !2610, !tbaa !2611
  br i1 %135, label %138, label %142, !dbg !2612

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2618
  %140 = load i32, i32* %139, align 8, !dbg !2618, !tbaa !2616
  %141 = sub nsw i32 %137, %140, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %141, metadata !2521, metadata !DIExpression()), !dbg !2603
  br label %147, !dbg !2621

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134, !dbg !2613
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2615
  %145 = load i32, i32* %144, align 8, !dbg !2615, !tbaa !2616
  %146 = sub nsw i32 %143, %145, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %146, metadata !2521, metadata !DIExpression()), !dbg !2603
  br label %147

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ], !dbg !2630
  call void @llvm.dbg.value(metadata i32 %148, metadata !2521, metadata !DIExpression()), !dbg !2603
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7, !dbg !2631
  %150 = load i32, i32* %149, align 4, !dbg !2631, !tbaa !2611
  %151 = icmp slt i32 %148, %150, !dbg !2632
  call void @llvm.dbg.value(metadata i1 %151, metadata !2518, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3, !dbg !2672
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !dbg !2672, !tbaa !2673
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !dbg !2674, !tbaa !2673
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154, !dbg !2675
  %156 = icmp ne i32 %150, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2522, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8, !dbg !2633
  %158 = load i8, i8* %157, align 8, !dbg !2633, !tbaa !2634, !range !740
  %159 = icmp eq i8 %158, 0, !dbg !2633
  br i1 %159, label %164, label %160, !dbg !2635

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8, !dbg !2636
  %162 = load i32, i32* %161, align 8, !dbg !2636, !tbaa !2558
  %163 = icmp eq i32 %162, 0, !dbg !2637
  br label %164, !dbg !2635

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  call void @llvm.dbg.value(metadata i1 %165, metadata !2523, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2603
  %166 = and i1 %156, %155, !dbg !2638
  %167 = or i1 %151, %166, !dbg !2638
  %168 = xor i1 %165, true, !dbg !2638
  %169 = or i1 %167, %168, !dbg !2638
  br i1 %169, label %192, label %170, !dbg !2638

170:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2640, metadata !DIExpression()) #8, !dbg !2643
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10, !dbg !2647
  %172 = load i32, i32* %171, align 8, !dbg !2647, !tbaa !2650
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4, !dbg !2651
  %174 = load i32, i32* %173, align 8, !dbg !2651, !tbaa !2652
  %175 = icmp slt i32 %172, %174, !dbg !2653
  br i1 %175, label %176, label %225, !dbg !2654

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178, !dbg !2654

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !dbg !2655, !tbaa !2658
  %181 = sext i32 %179 to i64, !dbg !2659
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0, !dbg !2660
  %183 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %182, align 8, !dbg !2660, !tbaa !2661
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1, !dbg !2663
  %185 = load i32, i32* %184, align 8, !dbg !2663, !tbaa !2664
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %183, i32 %185) #7, !dbg !2665
  br i1 %186, label %187, label %192, !dbg !2666

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !dbg !2667, !tbaa !2650
  %189 = add nsw i32 %188, 1, !dbg !2667
  store i32 %189, i32* %171, align 8, !dbg !2667, !tbaa !2650
  %190 = load i32, i32* %173, align 8, !dbg !2651, !tbaa !2652
  %191 = icmp slt i32 %189, %190, !dbg !2653
  br i1 %191, label %178, label %225, !dbg !2654, !llvm.loop !2668

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2, !dbg !2670
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %193, metadata !2516, metadata !DIExpression()), !dbg !2561
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !dbg !2671, !tbaa !2580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %194, metadata !2514, metadata !DIExpression()), !dbg !2561
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null, !dbg !2599
  br i1 %195, label %196, label %121, !dbg !2600

196:                                              ; preds = %192, %117, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2516, metadata !DIExpression()), !dbg !2561
  br i1 %3, label %206, label %197, !dbg !2676

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %198, metadata !2511, metadata !DIExpression()), !dbg !2536
  %199 = icmp slt i32 %11, 40, !dbg !2683
  br i1 %199, label %200, label %201, !dbg !2684

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2685
  tail call void @halide_thread_yield() #7, !dbg !2687
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2688
  br label %402, !dbg !2689

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2690, !tbaa !2692
  %203 = add nsw i32 %202, 1, !dbg !2690
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2690, !tbaa !2692
  store i8 1, i8* %8, align 4, !dbg !2693, !tbaa !2694
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2695
  store i8 0, i8* %8, align 4, !dbg !2696, !tbaa !2694
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2697, !tbaa !2692
  %205 = add nsw i32 %204, -1, !dbg !2697
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2697, !tbaa !2692
  br label %402

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2698, !tbaa !2700
  %208 = add nsw i32 %207, 1, !dbg !2698
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2698, !tbaa !2700
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2701, !tbaa !2703
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2704, !tbaa !2705
  %211 = icmp sgt i32 %209, %210, !dbg !2706
  br i1 %211, label %212, label %216, !dbg !2707

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1, !dbg !2708
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2708, !tbaa !2703
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2710
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2711, !tbaa !2703
  %215 = add nsw i32 %214, 1, !dbg !2711
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2711, !tbaa !2703
  br label %221, !dbg !2712

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %217, metadata !2511, metadata !DIExpression()), !dbg !2536
  %218 = icmp slt i32 %11, 40, !dbg !2715
  br i1 %218, label %219, label %220, !dbg !2716

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2717
  tail call void @halide_thread_yield() #7, !dbg !2719
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2720
  br label %221, !dbg !2721

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2722
  br label %221

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ], !dbg !2536
  call void @llvm.dbg.value(metadata i32 %222, metadata !2511, metadata !DIExpression()), !dbg !2536
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2724, !tbaa !2700
  %224 = add nsw i32 %223, -1, !dbg !2724
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2724, !tbaa !2700
  br label %402

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !dbg !2725, !tbaa !2650
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2514, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %227, metadata !2516, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()), !dbg !2536
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8, !dbg !2726
  %230 = load i32, i32* %229, align 8, !dbg !2727, !tbaa !2558
  %231 = add nsw i32 %230, 1, !dbg !2727
  store i32 %231, i32* %229, align 8, !dbg !2727, !tbaa !2558
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5, !dbg !2728
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2728, !tbaa !2589
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null, !dbg !2730
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2731
  %236 = load i32, i32* %235, align 4, !dbg !2731, !tbaa !2611
  br i1 %234, label %237, label %240, !dbg !2732

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2733, !tbaa !2627
  %239 = add nsw i32 %238, %236, !dbg !2733
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2733, !tbaa !2627
  br label %244, !dbg !2735

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6, !dbg !2736
  %242 = load i32, i32* %241, align 8, !dbg !2738, !tbaa !2616
  %243 = add nsw i32 %242, %236, !dbg !2738
  store i32 %243, i32* %241, align 8, !dbg !2738, !tbaa !2616
  br label %244

244:                                              ; preds = %240, %237
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()), !dbg !2561
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8, !dbg !2739
  %246 = load i8, i8* %245, align 8, !dbg !2739, !tbaa !2634, !range !740
  %247 = icmp eq i8 %246, 0, !dbg !2739
  br i1 %247, label %323, label %248, !dbg !2740

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2741
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2741, !tbaa !2580
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2742, !tbaa !1084
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2525, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 1, metadata !2528, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()), !dbg !2561
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %259 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  br label %260, !dbg !2745

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2525, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %261, metadata !2528, metadata !DIExpression()), !dbg !2744
  %263 = load i32, i32* %251, align 8, !dbg !2746, !tbaa !2548
  %264 = sub nsw i32 %263, %262, !dbg !2748
  %265 = icmp sgt i32 %264, %261, !dbg !2749
  br i1 %265, label %266, label %297, !dbg !2750

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !dbg !2751, !tbaa !2650
  %268 = load i32, i32* %253, align 8, !dbg !2753, !tbaa !2652
  br label %269, !dbg !2754

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ], !dbg !2753
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ], !dbg !2751
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  call void @llvm.dbg.value(metadata i32 %273, metadata !2528, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2640, metadata !DIExpression()) #8, !dbg !2755
  %274 = icmp slt i32 %272, %271, !dbg !2756
  br i1 %274, label %275, label %291, !dbg !2757

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !dbg !2758, !tbaa !2658
  %278 = sext i32 %276 to i64, !dbg !2759
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0, !dbg !2760
  %280 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %279, align 8, !dbg !2760, !tbaa !2661
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1, !dbg !2761
  %282 = load i32, i32* %281, align 8, !dbg !2761, !tbaa !2664
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %280, i32 %282) #7, !dbg !2762
  br i1 %283, label %284, label %297, !dbg !2763

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !dbg !2764, !tbaa !2650
  %286 = add nsw i32 %285, 1, !dbg !2764
  store i32 %286, i32* %252, align 8, !dbg !2764, !tbaa !2650
  %287 = load i32, i32* %253, align 8, !dbg !2753, !tbaa !2652
  %288 = icmp slt i32 %286, %287, !dbg !2756
  br i1 %288, label %275, label %289, !dbg !2757, !llvm.loop !2765

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !dbg !2746, !tbaa !2548
  br label %291, !dbg !2767

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ], !dbg !2746
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !dbg !2767, !tbaa !2650
  %294 = add nuw nsw i32 %273, 1, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %294, metadata !2528, metadata !DIExpression()), !dbg !2744
  %295 = sub nsw i32 %292, %262, !dbg !2748
  %296 = icmp sgt i32 %295, %294, !dbg !2749
  br i1 %296, label %269, label %300, !dbg !2750, !llvm.loop !2770

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0, !dbg !2772
  br i1 %299, label %310, label %300, !dbg !2774

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %255, align 8, !dbg !2775, !tbaa !2776
  %303 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %256, align 8, !dbg !2777, !tbaa !2778
  %304 = load i32, i32* %257, align 4, !dbg !2779, !tbaa !2780
  %305 = add nsw i32 %304, %262, !dbg !2781
  %306 = load i8*, i8** %258, align 8, !dbg !2782, !tbaa !2783
  %307 = tail call i32 @halide_do_loop_task(i8* %302, i32 (i8*, i32, i32, i8*, i8*)* %303, i32 %305, i32 %301, i8* %306, i8* nonnull %259) #6, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %307, metadata !2524, metadata !DIExpression()), !dbg !2561
  %308 = add nuw nsw i32 %301, %262, !dbg !2785
  call void @llvm.dbg.value(metadata i32 0, metadata !2528, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 %308, metadata !2525, metadata !DIExpression()), !dbg !2744
  %309 = icmp eq i32 %307, 0, !dbg !2786
  br i1 %309, label %260, label %310, !dbg !2745, !llvm.loop !2787

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ], !dbg !2561
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ], !dbg !2744
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2789
  %314 = load i32, i32* %257, align 4, !dbg !2790, !tbaa !2780
  %315 = add nsw i32 %314, %313, !dbg !2790
  store i32 %315, i32* %257, align 4, !dbg !2790, !tbaa !2780
  %316 = load i32, i32* %251, align 8, !dbg !2791, !tbaa !2548
  %317 = sub nsw i32 %316, %313, !dbg !2791
  store i32 %317, i32* %251, align 8, !dbg !2791, !tbaa !2548
  br i1 %311, label %319, label %318, !dbg !2792

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !dbg !2793, !tbaa !2548
  call void @llvm.dbg.value(metadata i32 %350, metadata !2524, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2561
  br label %352, !dbg !2796

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0, !dbg !2797
  br i1 %320, label %321, label %382, !dbg !2799

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2800, !tbaa !2560
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2802, !tbaa !2580
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2803, !tbaa !2560
  br label %382, !dbg !2804

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0, !dbg !2805
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !dbg !2805, !tbaa.struct !2806
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %325, metadata !2529, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2808
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1, !dbg !2805
  %327 = load i8*, i8** %326, align 8, !dbg !2805, !tbaa.struct !2809
  call void @llvm.dbg.value(metadata i8* %327, metadata !2529, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2808
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5, !dbg !2805
  %329 = load i32, i32* %328, align 4, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %329, metadata !2529, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2808
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1, !dbg !2805
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !dbg !2805, !tbaa.struct !2810
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %331, metadata !2529, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !2808
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7, !dbg !2805
  %333 = load i8*, i8** %332, align 8, !dbg !2805, !tbaa.struct !2811
  call void @llvm.dbg.value(metadata i8* %333, metadata !2529, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !2808
  %334 = add nsw i32 %329, 1, !dbg !2812
  store i32 %334, i32* %328, align 4, !dbg !2812, !tbaa !2780
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2813
  %336 = load i32, i32* %335, align 8, !dbg !2814, !tbaa !2548
  %337 = add nsw i32 %336, -1, !dbg !2814
  store i32 %337, i32* %335, align 8, !dbg !2814, !tbaa !2548
  %338 = icmp eq i32 %337, 0, !dbg !2815
  br i1 %338, label %339, label %342, !dbg !2817

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2818
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !dbg !2818, !tbaa !2580
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2820, !tbaa !1084
  br label %342, !dbg !2821

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2822
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null, !dbg !2823
  br i1 %343, label %346, label %344, !dbg !2825

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #6, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %345, metadata !2524, metadata !DIExpression()), !dbg !2561
  br label %349, !dbg !2828

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*, !dbg !2829
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #6, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %348, metadata !2524, metadata !DIExpression()), !dbg !2561
  br label %349

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ], !dbg !2832
  call void @llvm.dbg.value(metadata i32 %350, metadata !2524, metadata !DIExpression()), !dbg !2561
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2833
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2561
  %351 = icmp eq i32 %350, 0, !dbg !2834
  br i1 %351, label %382, label %352, !dbg !2796

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2835
  store i32 %353, i32* %354, align 4, !dbg !2836, !tbaa !2566
  call void @llvm.dbg.value(metadata i32 0, metadata !2532, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2561
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4, !dbg !2838
  %356 = load i32, i32* %355, align 8, !dbg !2838, !tbaa !2840
  %357 = icmp sgt i32 %356, 0, !dbg !2841
  br i1 %357, label %358, label %382, !dbg !2842

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !2673
  %361 = zext i32 %356 to i64, !dbg !2841
  br label %362, !dbg !2842

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !2532, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8 %364, metadata !2531, metadata !DIExpression()), !dbg !2561
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9, !dbg !2843
  %366 = load i32, i32* %365, align 4, !dbg !2843, !tbaa !2566
  %367 = icmp eq i32 %366, 0, !dbg !2846
  br i1 %367, label %368, label %378, !dbg !2847

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !dbg !2848, !tbaa !2566
  %369 = load i32, i32* %229, align 8, !dbg !2850, !tbaa !2558
  %370 = icmp eq i32 %369, 0, !dbg !2851
  br i1 %370, label %371, label %374, !dbg !2852

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11, !dbg !2853
  %373 = load i8, i8* %372, align 4, !dbg !2853, !tbaa !2694, !range !740
  br label %374

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ], !dbg !2854
  %376 = and i8 %364, 1, !dbg !2855
  %377 = or i8 %375, %376, !dbg !2855
  call void @llvm.dbg.value(metadata i8 %377, metadata !2531, metadata !DIExpression()), !dbg !2561
  br label %378, !dbg !2856

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ], !dbg !2561
  call void @llvm.dbg.value(metadata i8 %379, metadata !2531, metadata !DIExpression()), !dbg !2561
  %380 = add nuw nsw i64 %363, 1, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %380, metadata !2532, metadata !DIExpression()), !dbg !2837
  %381 = icmp eq i64 %380, %361, !dbg !2841
  br i1 %381, label %382, label %362, !dbg !2842, !llvm.loop !2858

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ], !dbg !2860
  call void @llvm.dbg.value(metadata i8 %383, metadata !2531, metadata !DIExpression()), !dbg !2561
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2861, !tbaa !2589
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null, !dbg !2863
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2864
  %387 = load i32, i32* %386, align 4, !dbg !2864, !tbaa !2611
  br i1 %385, label %388, label %391, !dbg !2865

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2866, !tbaa !2627
  %390 = sub nsw i32 %389, %387, !dbg !2866
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2866, !tbaa !2627
  br label %395, !dbg !2868

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6, !dbg !2869
  %393 = load i32, i32* %392, align 8, !dbg !2871, !tbaa !2616
  %394 = sub nsw i32 %393, %387, !dbg !2871
  store i32 %394, i32* %392, align 8, !dbg !2871, !tbaa !2616
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !dbg !2872, !tbaa !2558
  %397 = add nsw i32 %396, -1, !dbg !2872
  store i32 %397, i32* %229, align 8, !dbg !2872, !tbaa !2558
  %398 = and i8 %383, 1, !dbg !2873
  %399 = icmp eq i8 %398, 0, !dbg !2873
  br i1 %399, label %400, label %416, !dbg !2875

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0, !dbg !2876
  br i1 %401, label %404, label %402, !dbg !2877

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !dbg !2536, !llvm.loop !2878

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2880
  %406 = load i32, i32* %405, align 8, !dbg !2880, !tbaa !2548
  %407 = icmp eq i32 %406, 0, !dbg !2881
  br i1 %407, label %412, label %408, !dbg !2882

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2883
  %410 = load i32, i32* %409, align 4, !dbg !2883, !tbaa !2566
  %411 = icmp eq i32 %410, 0, !dbg !2884
  br i1 %411, label %402, label %412, !dbg !2885

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11, !dbg !2886
  %414 = load i8, i8* %413, align 4, !dbg !2886, !tbaa !2694, !range !740
  %415 = icmp eq i8 %414, 0, !dbg !2886
  br i1 %415, label %402, label %416, !dbg !2887

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !2888
  br label %402, !dbg !2890

417:                                              ; preds = %15, %18
  ret void, !dbg !2891
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #2 !dbg !2892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2894, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2895, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %2, metadata !2896, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %3, metadata !2897, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %4, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %5, metadata !2899, metadata !DIExpression()), !dbg !2900
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !2901, !tbaa !1084
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !2901
  ret i32 %8, !dbg !2902
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #2 !dbg !2903 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2905, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2906, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 %2, metadata !2907, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()), !dbg !2909
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !2910, !tbaa !1084
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #7, !dbg !2911
  ret i32 %6, !dbg !2912
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #2 !dbg !2913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2917
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2918
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #6, !dbg !2919
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2920
  ret void, !dbg !2921
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #2 !dbg !2922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2927, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2928, metadata !DIExpression()), !dbg !2939
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2940, !tbaa !2942, !range !740
  %5 = icmp eq i8 %4, 0, !dbg !2940
  br i1 %5, label %6, label %25, !dbg !2943

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2944, metadata !DIExpression()) #8, !dbg !2950
  %8 = load i8, i8* %7, align 1, !dbg !2953, !tbaa !497
  %9 = icmp eq i8 %8, 0, !dbg !2954
  br i1 %9, label %10, label %13, !dbg !2955

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %11, metadata !2944, metadata !DIExpression()) #8, !dbg !2950
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2958
  br i1 %12, label %13, label %6, !dbg !2959, !llvm.loop !2960

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2950
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), !dbg !2962
  br i1 %15, label %17, label %16, !dbg !2965

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !2966
  tail call void @abort() #7, !dbg !2966
  br label %17, !dbg !2966

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2968, !tbaa !2970
  %19 = icmp eq i32 %18, 0, !dbg !2971
  br i1 %19, label %20, label %22, !dbg !2972

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !2973
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2975, !tbaa !2970
  br label %22, !dbg !2976

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2977
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #6, !dbg !2978
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2979, !tbaa !2970
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2980, !tbaa !2942
  br label %25, !dbg !2981

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2929, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 -1, metadata !2930, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 0, metadata !2931, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 0, metadata !2932, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 0, metadata !2933, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 0, metadata !2934, metadata !DIExpression()), !dbg !2982
  %26 = icmp sgt i32 %0, 0, !dbg !2983
  br i1 %26, label %27, label %31, !dbg !2985

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64, !dbg !2983
  br label %38, !dbg !2985

29:                                               ; preds = %64
  %30 = and i8 %49, 1, !dbg !2986
  br label %31, !dbg !2986

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ], !dbg !2939
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ], !dbg !2939
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ], !dbg !2988
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ], !dbg !2989
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2986
  br i1 %37, label %68, label %100, !dbg !2990

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !2929, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i64 %39, metadata !2934, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %41, metadata !2933, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %42, metadata !2932, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %43, metadata !2931, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 %44, metadata !2930, metadata !DIExpression()), !dbg !2939
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7, !dbg !2991
  %46 = load i32, i32* %45, align 4, !dbg !2991, !tbaa !2611
  %47 = icmp eq i32 %46, 0, !dbg !2994
  %48 = add i32 %46, %40, !dbg !2995
  %49 = select i1 %47, i8 1, i8 %43, !dbg !2995
  %50 = select i1 %47, i8 %41, i8 1, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %48, metadata !2929, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %50, metadata !2933, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %49, metadata !2931, metadata !DIExpression()), !dbg !2939
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4, !dbg !2996
  %52 = load i32, i32* %51, align 8, !dbg !2996, !tbaa !2652
  %53 = icmp eq i32 %52, 0, !dbg !2998
  %54 = select i1 %53, i8 %42, i8 1, !dbg !2999
  call void @llvm.dbg.value(metadata i8 %54, metadata !2932, metadata !DIExpression()), !dbg !2939
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8, !dbg !3000
  %56 = load i8, i8* %55, align 8, !dbg !3000, !tbaa !2634, !range !740
  %57 = icmp eq i8 %56, 0, !dbg !3000
  br i1 %57, label %60, label %58, !dbg !3002

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %59, metadata !2930, metadata !DIExpression()), !dbg !2939
  br label %64, !dbg !3005

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6, !dbg !3006
  %62 = load i32, i32* %61, align 8, !dbg !3006, !tbaa !2548
  %63 = add nsw i32 %62, %44, !dbg !3008
  call void @llvm.dbg.value(metadata i32 %63, metadata !2930, metadata !DIExpression()), !dbg !2939
  br label %64

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ], !dbg !3009
  call void @llvm.dbg.value(metadata i32 %65, metadata !2930, metadata !DIExpression()), !dbg !2939
  %66 = add nuw nsw i64 %39, 1, !dbg !3010
  call void @llvm.dbg.value(metadata i32 %48, metadata !2929, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i64 %66, metadata !2934, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 %50, metadata !2933, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %54, metadata !2932, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %49, metadata !2931, metadata !DIExpression()), !dbg !2939
  %67 = icmp eq i64 %66, %28, !dbg !2983
  br i1 %67, label %29, label %38, !dbg !2985, !llvm.loop !3011

68:                                               ; preds = %31
  %69 = or i8 %35, %34, !dbg !3013
  %70 = and i8 %69, 1, !dbg !3013
  %71 = icmp eq i8 %70, 0, !dbg !3013
  %72 = xor i1 %71, true, !dbg !3013
  %73 = zext i1 %72 to i32, !dbg !3013
  %74 = add nsw i32 %36, %73, !dbg !3013
  call void @llvm.dbg.value(metadata i32 %74, metadata !2929, metadata !DIExpression()), !dbg !2939
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3016, !tbaa !2624
  %76 = icmp slt i32 %75, 256, !dbg !3017
  br i1 %76, label %77, label %96, !dbg !3018

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3019, !tbaa !2970
  %80 = add nsw i32 %79, -1, !dbg !3020
  %81 = icmp slt i32 %78, %80, !dbg !3021
  br i1 %81, label %87, label %82, !dbg !3022

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1, !dbg !3023
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !3024, !tbaa !2627
  %85 = sub i32 %83, %84, !dbg !3025
  %86 = icmp slt i32 %85, %74, !dbg !3026
  br i1 %86, label %87, label %96, !dbg !3027

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !3028, !tbaa !2703
  %89 = add nsw i32 %88, 1, !dbg !3028
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !3028, !tbaa !2703
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #6, !dbg !3030
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3031, !tbaa !2624
  %92 = add nsw i32 %91, 1, !dbg !3031
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3031, !tbaa !2624
  %93 = sext i32 %91 to i64, !dbg !3032
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %93, !dbg !3032
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !dbg !3033, !tbaa !1084
  %95 = icmp slt i32 %91, 255, !dbg !3017
  br i1 %95, label %77, label %96, !dbg !3018, !llvm.loop !3034

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97, !dbg !3036

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !3038, !tbaa !2627
  %99 = add nsw i32 %98, 1, !dbg !3038
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !3038, !tbaa !2627
  br label %118, !dbg !3040

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7, !dbg !3041
  %102 = load i32, i32* %101, align 4, !dbg !3041, !tbaa !2611
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8, !dbg !3041
  %104 = load i32, i32* %103, align 8, !dbg !3041, !tbaa !2558
  %105 = mul nsw i32 %104, %102, !dbg !3041
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !3041
  %107 = load i32, i32* %106, align 8, !dbg !3041, !tbaa !2616
  %108 = sub nsw i32 %105, %107, !dbg !3041
  %109 = icmp sgt i32 %36, %108, !dbg !3041
  br i1 %109, label %110, label %111, !dbg !3045

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !3046
  tail call void @abort() #7, !dbg !3046
  br label %111, !dbg !3046

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34, !dbg !3048
  %113 = and i8 %112, 1, !dbg !3048
  %114 = icmp eq i8 %113, 0, !dbg !3048
  br i1 %114, label %118, label %115, !dbg !3048

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !dbg !3050, !tbaa !2616
  %117 = add nsw i32 %116, 1, !dbg !3050
  store i32 %117, i32* %106, align 8, !dbg !3050, !tbaa !2616
  br label %118, !dbg !3052

118:                                              ; preds = %111, %96, %115, %97
  call void @llvm.dbg.value(metadata i32 %0, metadata !2936, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3053
  br i1 %26, label %119, label %123, !dbg !3054

119:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %0, metadata !2936, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3053
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !2560
  %121 = zext i32 %0 to i64, !dbg !3054
  br label %136, !dbg !3054

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !3055, !tbaa !2560
  br label %123, !dbg !3054

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !3058, !tbaa !2692
  %125 = icmp ne i32 %124, 0, !dbg !3059
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !3060
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3060
  %128 = icmp slt i32 %126, %127, !dbg !3060
  %129 = or i1 %125, %128, !dbg !3060
  call void @llvm.dbg.value(metadata i1 %129, metadata !2938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2939
  %130 = icmp sgt i32 %32, %126
  %131 = or i1 %130, %129, !dbg !3061
  %132 = select i1 %131, i32 %127, i32 %32, !dbg !3061
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !3063, !tbaa !2705
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #6, !dbg !3064
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !3065, !tbaa !2705
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !3067, !tbaa !2703
  %135 = icmp sgt i32 %133, %134, !dbg !3068
  br i1 %135, label %146, label %149, !dbg !3069

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ], !dbg !3070
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ], !dbg !3070
  %139 = add nsw i64 %137, -1, !dbg !3053
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, !dbg !3071
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2, !dbg !3072
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !dbg !3073, !tbaa !2580
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3, !dbg !3074
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !dbg !3075, !tbaa !2673
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4, !dbg !3076
  store i32 %0, i32* %143, align 8, !dbg !3077, !tbaa !2840
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6, !dbg !3078
  store i32 0, i32* %144, align 8, !dbg !3079, !tbaa !2616
  call void @llvm.dbg.value(metadata i64 %139, metadata !2936, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3053
  %145 = icmp sgt i64 %137, 1, !dbg !3080
  br i1 %145, label %136, label %122, !dbg !3054, !llvm.loop !3081

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #6, !dbg !3083
  %147 = icmp eq i8 %33, 0, !dbg !3085
  br i1 %147, label %149, label %148, !dbg !3087

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !3088
  br label %149, !dbg !3090

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34, !dbg !3091
  %151 = and i8 %150, 1, !dbg !3091
  %152 = icmp eq i8 %151, 0, !dbg !3091
  br i1 %152, label %161, label %153, !dbg !3091

153:                                              ; preds = %149
  br i1 %37, label %158, label %154, !dbg !3093

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !3095
  %156 = load i32, i32* %155, align 8, !dbg !3098, !tbaa !2616
  %157 = add nsw i32 %156, -1, !dbg !3098
  store i32 %157, i32* %155, align 8, !dbg !3098, !tbaa !2616
  br label %161, !dbg !3099

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !3100, !tbaa !2627
  %160 = add nsw i32 %159, -1, !dbg !3100
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !3100, !tbaa !2627
  br label %161

161:                                              ; preds = %149, %154, %158
  ret void, !dbg !3102
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #2 !dbg !3103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3105, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %2, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %3, metadata !3108, metadata !DIExpression()), !dbg !3109
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #7, !dbg !3110
  ret i32 %5, !dbg !3111
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #2 !dbg !3112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !3115, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %2, metadata !3116, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %3, metadata !3117, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8* %4, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8* %5, metadata !3119, metadata !DIExpression()), !dbg !3120
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !3121
  ret i32 %7, !dbg !3122
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #2 !dbg !3123 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3125, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3126, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %2, metadata !3127, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %3, metadata !3128, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8* %4, metadata !3129, metadata !DIExpression()), !dbg !3131
  %7 = icmp slt i32 %3, 1, !dbg !3132
  br i1 %7, label %29, label %8, !dbg !3134

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !3135
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #8, !dbg !3135
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3130, metadata !DIExpression()), !dbg !3136
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0, !dbg !3137
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !dbg !3138, !tbaa !2778
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5, !dbg !3139
  store i32 %2, i32* %11, align 4, !dbg !3140, !tbaa !2780
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6, !dbg !3141
  store i32 %3, i32* %12, align 8, !dbg !3142, !tbaa !2548
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8, !dbg !3143
  store i8 0, i8* %13, align 8, !dbg !3144, !tbaa !2634
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3, !dbg !3145
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !dbg !3146, !tbaa !2658
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4, !dbg !3147
  store i32 0, i32* %15, align 8, !dbg !3148, !tbaa !2652
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1, !dbg !3149
  store i8* %4, i8** %16, align 8, !dbg !3150, !tbaa !2783
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7, !dbg !3151
  store i32 0, i32* %17, align 4, !dbg !3152, !tbaa !2611
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2, !dbg !3153
  store i8* null, i8** %18, align 8, !dbg !3154, !tbaa !3155
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1, !dbg !3156
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !dbg !3157, !tbaa !3158
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7, !dbg !3159
  store i8* %0, i8** %20, align 8, !dbg !3160, !tbaa !2776
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9, !dbg !3161
  store i32 0, i32* %21, align 4, !dbg !3162, !tbaa !2566
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8, !dbg !3163
  store i32 0, i32* %22, align 8, !dbg !3164, !tbaa !2558
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10, !dbg !3165
  store i32 0, i32* %23, align 8, !dbg !3166, !tbaa !2650
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11, !dbg !3167
  store i8 0, i8* %24, align 4, !dbg !3168, !tbaa !2694
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3, !dbg !3169
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !dbg !3170, !tbaa !2673
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4, !dbg !3171
  store i32 0, i32* %26, align 8, !dbg !3172, !tbaa !2840
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5, !dbg !3173
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !dbg !3174, !tbaa !2589
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3175
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #6, !dbg !3176
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #6, !dbg !3177
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3178
  %28 = load i32, i32* %21, align 4, !dbg !3179, !tbaa !2566
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #8, !dbg !3180
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !3131
  ret i32 %30, !dbg !3180
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #2 !dbg !3181 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 %1, metadata !3184, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3185, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i8* %3, metadata !3186, metadata !DIExpression()), !dbg !3193
  %5 = sext i32 %1 to i64, !dbg !3194
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8, !dbg !3195
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3187, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 0, metadata !3188, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %1, metadata !3184, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3185, metadata !DIExpression()), !dbg !3193
  %7 = icmp sgt i32 %1, 0, !dbg !3197
  br i1 %7, label %11, label %8, !dbg !3199

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %35, %33 ]
  %10 = icmp eq i32 %9, 0, !dbg !3200
  br i1 %10, label %56, label %39, !dbg !3202

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi i32 [ %35, %33 ], [ %1, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %34, %33 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !3188, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %13, metadata !3184, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %14, metadata !3185, metadata !DIExpression()), !dbg !3193
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 0, i32 6, !dbg !3203
  %16 = load i32, i32* %15, align 8, !dbg !3203, !tbaa !3206
  %17 = icmp slt i32 %16, 1, !dbg !3207
  br i1 %17, label %18, label %20, !dbg !3208

18:                                               ; preds = %11
  %19 = add nsw i32 %13, -1, !dbg !3209
  call void @llvm.dbg.value(metadata i32 %19, metadata !3184, metadata !DIExpression()), !dbg !3193
  br label %33, !dbg !3211

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 1, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %21, metadata !3185, metadata !DIExpression()), !dbg !3193
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, !dbg !3213
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*, !dbg !3214
  %24 = bitcast %struct.halide_parallel_task_t* %14 to i8*, !dbg !3214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !dbg !3214, !tbaa.struct !3215
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1, !dbg !3216
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !dbg !3217, !tbaa !3158
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7, !dbg !3218
  store i8* %0, i8** %26, align 8, !dbg !3219, !tbaa !2776
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9, !dbg !3220
  store i32 0, i32* %27, align 4, !dbg !3221, !tbaa !2566
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8, !dbg !3222
  store i32 0, i32* %28, align 8, !dbg !3223, !tbaa !2558
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10, !dbg !3224
  store i32 0, i32* %29, align 8, !dbg !3225, !tbaa !2650
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11, !dbg !3226
  store i8 0, i8* %30, align 4, !dbg !3227, !tbaa !2694
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5, !dbg !3228
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**, !dbg !3229
  store i8* %3, i8** %32, align 8, !dbg !3229, !tbaa !2589
  br label %33, !dbg !3230

33:                                               ; preds = %20, %18
  %34 = phi %struct.halide_parallel_task_t* [ %14, %18 ], [ %21, %20 ]
  %35 = phi i32 [ %19, %18 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !3184, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %34, metadata !3185, metadata !DIExpression()), !dbg !3193
  %36 = add nuw nsw i64 %12, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %36, metadata !3188, metadata !DIExpression()), !dbg !3196
  %37 = sext i32 %35 to i64, !dbg !3197
  %38 = icmp slt i64 %36, %37, !dbg !3197
  br i1 %38, label %11, label %8, !dbg !3199, !llvm.loop !3232

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3234
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3235
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #6, !dbg !3236
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 0, metadata !3191, metadata !DIExpression()), !dbg !3237
  %41 = icmp sgt i32 %9, 0, !dbg !3238
  br i1 %41, label %42, label %44, !dbg !3240

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64, !dbg !3238
  br label %46, !dbg !3240

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ], !dbg !3193
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3241
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !3191, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 %48, metadata !3190, metadata !DIExpression()), !dbg !3193
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, !dbg !3242
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #6, !dbg !3244
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9, !dbg !3245
  %51 = load i32, i32* %50, align 4, !dbg !3245, !tbaa !2566
  %52 = icmp eq i32 %51, 0, !dbg !3247
  %53 = select i1 %52, i32 %48, i32 %51, !dbg !3248
  call void @llvm.dbg.value(metadata i32 %53, metadata !3190, metadata !DIExpression()), !dbg !3193
  %54 = add nuw nsw i64 %47, 1, !dbg !3249
  call void @llvm.dbg.value(metadata i64 %54, metadata !3191, metadata !DIExpression()), !dbg !3237
  %55 = icmp eq i64 %54, %43, !dbg !3238
  br i1 %55, label %44, label %46, !dbg !3240, !llvm.loop !3250

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ], !dbg !3193
  ret i32 %57, !dbg !3252
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3253 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 %1, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3257, metadata !DIExpression()), !dbg !3258
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3259
  call void @llvm.dbg.value(metadata i32* %3, metadata !3260, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32* undef, metadata !3265, metadata !DIExpression()), !dbg !3268
  store atomic i32 %1, i32* %3 release, align 4, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %1, metadata !3256, metadata !DIExpression()), !dbg !3258
  ret i32 %1, !dbg !3271
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3272 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3274, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i32 %1, metadata !3275, metadata !DIExpression()), !dbg !3279
  %3 = icmp eq i32 %1, 0, !dbg !3280
  br i1 %3, label %20, label %4, !dbg !3282

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3276, metadata !DIExpression()), !dbg !3279
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3283
  call void @llvm.dbg.value(metadata i32* %5, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32* undef, metadata !3287, metadata !DIExpression()), !dbg !3288
  %6 = load atomic i32, i32* %5 acquire, align 4, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %6, metadata !3277, metadata !DIExpression()), !dbg !3279
  %7 = sub nsw i32 %6, %1, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %7, metadata !3278, metadata !DIExpression()), !dbg !3279
  %8 = icmp sgt i32 %7, -1, !dbg !3293
  br i1 %8, label %9, label %20, !dbg !3294

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i32* %5, metadata !3295, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32* undef, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32* undef, metadata !3301, metadata !DIExpression()), !dbg !3302
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic, !dbg !3304
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !3304
  br i1 %13, label %18, label %14, !dbg !3304

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %15, metadata !3277, metadata !DIExpression()), !dbg !3279
  %16 = sub nsw i32 %15, %1, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %16, metadata !3278, metadata !DIExpression()), !dbg !3279
  %17 = icmp sgt i32 %16, -1, !dbg !3293
  br i1 %17, label %9, label %18, !dbg !3294

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1, !dbg !3304
  br label %20, !dbg !3305

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ], !dbg !3279
  ret i1 %21, !dbg !3305
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3306 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3308, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %1, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3310, metadata !DIExpression()), !dbg !3312
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3313
  call void @llvm.dbg.value(metadata i32* %3, metadata !3314, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3320
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %4, metadata !3311, metadata !DIExpression()), !dbg !3312
  %5 = icmp eq i32 %4, 0, !dbg !3323
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3325
  br i1 %7, label %8, label %9, !dbg !3325

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3326
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #6, !dbg !3328
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !3329
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3330
  br label %9, !dbg !3331

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3332
  ret i32 %10, !dbg !3333
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #2 !dbg !3334 {
  tail call void @halide_shutdown_thread_pool() #6, !dbg !3335
  ret void, !dbg !3336
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #2 !dbg !3337 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !3343, !tbaa !2942, !range !740
  %2 = icmp eq i8 %1, 0, !dbg !3343
  br i1 %2, label %16, label %3, !dbg !3344

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3345
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !3346, !tbaa !2554
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !3347
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #6, !dbg !3348
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #6, !dbg !3349
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3350
  call void @llvm.dbg.value(metadata i32 0, metadata !3339, metadata !DIExpression()), !dbg !3351
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3352, !tbaa !2624
  %5 = icmp sgt i32 %4, 0, !dbg !3354
  br i1 %5, label %8, label %6, !dbg !3355

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3356, metadata !DIExpression()) #8, !dbg !3362
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), metadata !3359, metadata !DIExpression()) #8, !dbg !3362
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3360, metadata !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value)) #8, !dbg !3362
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i32 0, i64 2116) #7, !dbg !3364
  br label %16, !dbg !3365

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3339, metadata !DIExpression()), !dbg !3351
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %9, !dbg !3366
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !dbg !3366, !tbaa !1084
  tail call void @halide_join_thread(%struct.halide_thread* %11) #6, !dbg !3368
  %12 = add nuw nsw i64 %9, 1, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %12, metadata !3339, metadata !DIExpression()), !dbg !3351
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3352, !tbaa !2624
  %14 = sext i32 %13 to i64, !dbg !3354
  %15 = icmp slt i64 %12, %14, !dbg !3354
  br i1 %15, label %8, label %6, !dbg !3355, !llvm.loop !3370

16:                                               ; preds = %6, %0
  ret void, !dbg !3372
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #2 !dbg !3373 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  %2 = icmp slt i32 %0, 0, !dbg !3378
  br i1 %2, label %3, label %4, !dbg !3380

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !3381
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3383
  br label %8, !dbg !3384

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3383
  %5 = icmp eq i32 %0, 0, !dbg !3385
  br i1 %5, label %6, label %8, !dbg !3384

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !3387
  call void @llvm.dbg.value(metadata i32 %7, metadata !3375, metadata !DIExpression()), !dbg !3377
  br label %8, !dbg !3389

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3375, metadata !DIExpression()), !dbg !3377
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3390, !tbaa !2970
  call void @llvm.dbg.value(metadata i32 %10, metadata !3376, metadata !DIExpression()), !dbg !3377
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #6, !dbg !3391
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3392, !tbaa !2970
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3393
  ret i32 %10, !dbg !3394
}

declare !dbg !3395 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3396 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3400, metadata !DIExpression()), !dbg !3402
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3403, !tbaa !1084
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3401, metadata !DIExpression()), !dbg !3402
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3404, !tbaa !1084
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3405
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #0 !dbg !3406 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3410, metadata !DIExpression()), !dbg !3412
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3413, !tbaa !1084
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3411, metadata !DIExpression()), !dbg !3412
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3414, !tbaa !1084
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3415
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3416 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3420, metadata !DIExpression()), !dbg !3422
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3423, !tbaa !1084
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3424, !tbaa !1084
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3425
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #0 !dbg !3426 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3430, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3431, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3432, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3433, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3436, metadata !DIExpression()), !dbg !3437
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3438, !tbaa !1084
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3439, !tbaa !1084
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3440, !tbaa !1084
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3441, !tbaa !1084
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3442, !tbaa !1084
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3443, !tbaa !1084
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3444, !tbaa !1084
  ret void, !dbg !3445
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #2 !dbg !3446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3448, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3449, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 %2, metadata !3450, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 %3, metadata !3451, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %4, metadata !3452, metadata !DIExpression()), !dbg !3453
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3454, !tbaa !1084
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #7, !dbg !3455
  ret i32 %7, !dbg !3456
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #2 !dbg !3457 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %1, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3461, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i8* %3, metadata !3462, metadata !DIExpression()), !dbg !3463
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3464, !tbaa !1084
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #7, !dbg !3464
  ret i32 %6, !dbg !3465
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3466 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3468, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %1, metadata !3469, metadata !DIExpression()), !dbg !3470
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3471, !tbaa !1084
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3471
  ret i32 %4, !dbg !3472
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3473 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3478, !tbaa !1084
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3478
  ret i32 %4, !dbg !3479
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3480 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3482, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %1, metadata !3483, metadata !DIExpression()), !dbg !3484
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3485, !tbaa !1084
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3485
  ret i1 %4, !dbg !3486
}

declare !dbg !3487 dso_local void @qurt_mutex_init(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3491 dso_local void @qurt_cond_init(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3495 dso_local void @qurt_mutex_lock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3496 dso_local void @qurt_cond_wait(%union.qurt_cond_t*, %union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3499 dso_local void @qurt_mutex_unlock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3500 dso_local void @qurt_cond_destroy(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3501 dso_local void @qurt_mutex_destroy(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3502 dso_local void @qurt_cond_signal(%union.qurt_cond_t*) local_unnamed_addr #4

declare dso_local void @__tsan_mutex_pre_lock(i8*, i32) local_unnamed_addr #4

declare dso_local void @__tsan_mutex_post_lock(i8*, i32, i32) local_unnamed_addr #4

declare dso_local i32 @__tsan_mutex_pre_unlock(i8*, i32) local_unnamed_addr #4

declare dso_local void @__tsan_mutex_post_unlock(i8*, i32) local_unnamed_addr #4

declare dso_local void @__tsan_mutex_pre_signal(i8*, i32) local_unnamed_addr #4

declare dso_local void @__tsan_mutex_post_signal(i8*, i32) local_unnamed_addr #4

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
!llvm.module.flags = !{!411, !412, !413}
!llvm.ident = !{!414}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_qurt_default_thread_priority", scope: !2, file: !8, line: 37, type: !409, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !3, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !310, imports: !404, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads_tsan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!4 = !{}
!5 = !{!6, !25, !26, !30, !101, !136, !137, !178, !203, !213, !184, !223, !236, !240, !248, !305, !173, !265, !309}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spawned_thread", scope: !9, file: !8, line: 14, size: 256, flags: DIFlagTypePassByValue, elements: !10)
!8 = !DIFile(filename: "src/runtime/qurt_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !DINamespace(scope: null)
!10 = !{!11, !16, !17, !18}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !7, file: !8, line: 15, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !7, file: !8, line: 16, baseType: !15, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !7, file: !8, line: 17, baseType: !15, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !7, file: !8, line: 18, baseType: !19, size: 32, offset: 192)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !8, line: 9, size: 32, flags: DIFlagTypePassByValue, elements: !20, identifier: "_ZTS13halide_thread")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !8, line: 10, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_thread_t", file: !23, line: 18, baseType: !24)
!23 = !DIFile(filename: "src/runtime/mini_qurt.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !27, line: 61, baseType: !28)
!27 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !27, line: 10, baseType: !29)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_lock_queue_data", scope: !33, file: !32, line: 254, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !37, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE")
!32 = !DIFile(filename: "src/runtime/synchronization_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!33 = !DINamespace(name: "Synchronization", scope: !34)
!34 = !DINamespace(name: "Internal", scope: !35)
!35 = !DINamespace(name: "Runtime", scope: !36)
!36 = !DINamespace(name: "Halide", scope: null)
!37 = !{!38, !93, !94, !95, !96, !100}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !31, file: !32, line: 255, baseType: !39, size: 320)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_parker", scope: !33, file: !8, line: 84, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !40, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE")
!40 = !{!41, !53, !65, !67, !73, !77, !81, !84, !87, !88, !89, !90, !91, !92}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !39, file: !8, line: 85, baseType: !42, size: 128)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_mutex_t", file: !23, line: 211, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "qurt_mutex_aligned8", file: !23, line: 201, size: 128, flags: DIFlagTypePassByValue, elements: !44, identifier: "_ZTS19qurt_mutex_aligned8")
!44 = !{!45, !52}
!45 = !DIDerivedType(tag: DW_TAG_member, scope: !43, file: !23, line: 203, baseType: !46, size: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !43, file: !23, line: 203, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !47, identifier: "_ZTSN19qurt_mutex_aligned8Ut_E")
!47 = !{!48, !49, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !46, file: !23, line: 204, baseType: !24, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !46, file: !23, line: 205, baseType: !24, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !46, file: !23, line: 206, baseType: !24, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !46, file: !23, line: 207, baseType: !24, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !43, file: !23, line: 209, baseType: !29, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "condvar", scope: !39, file: !8, line: 86, baseType: !54, size: 128, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_cond_t", file: !23, line: 224, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 214, size: 128, flags: DIFlagTypePassByValue, elements: !56, identifier: "_ZTS11qurt_cond_t")
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !55, file: !23, line: 216, baseType: !29, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !55, file: !23, line: 222, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !23, line: 217, size: 128, flags: DIFlagTypePassByValue, elements: !60, identifier: "_ZTSN11qurt_cond_tUt_E")
!60 = !{!61, !62, !63, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !59, file: !23, line: 218, baseType: !24, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "n_waiting", scope: !59, file: !23, line: 219, baseType: !24, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !59, file: !23, line: 220, baseType: !24, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !59, file: !23, line: 221, baseType: !24, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "should_park", scope: !39, file: !8, line: 87, baseType: !66, size: 8, offset: 256)
!66 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!67 = !DISubprogram(name: "thread_parker", scope: !39, file: !8, line: 89, type: !68, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!73 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSERKS3_", scope: !39, file: !8, line: 90, type: !74, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !70, !71}
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !39, size: 64)
!77 = !DISubprogram(name: "thread_parker", scope: !39, file: !8, line: 91, type: !78, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !70, !80}
!80 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !39, size: 64)
!81 = !DISubprogram(name: "operator=", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkeraSEOS3_", scope: !39, file: !8, line: 92, type: !82, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!82 = !DISubroutineType(types: !83)
!83 = !{!76, !70, !80}
!84 = !DISubprogram(name: "thread_parker", scope: !39, file: !8, line: 94, type: !85, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !70}
!87 = !DISubprogram(name: "~thread_parker", scope: !39, file: !8, line: 100, type: !85, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !39, file: !8, line: 105, type: !85, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !39, file: !8, line: 109, type: !85, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !39, file: !8, line: 117, type: !85, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !39, file: !8, line: 121, type: !85, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !39, file: !8, line: 126, type: !85, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !32, line: 273, baseType: !30, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !31, file: !32, line: 274, baseType: !30, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !31, file: !32, line: 275, baseType: !30, size: 64, offset: 448)
!96 = !DISubprogram(name: "word_lock_queue_data", scope: !31, file: !32, line: 277, type: !97, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DISubprogram(name: "~word_lock_queue_data", scope: !31, file: !32, line: 280, type: !97, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", scope: !33, file: !32, line: 475, size: 196608, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !103, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10hash_tableE")
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !102, file: !32, line: 476, baseType: !105, size: 196608)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 196608, elements: !134)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", scope: !33, file: !32, line: 463, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !107, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE")
!107 = !{!108, !120, !133}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !32, line: 464, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "word_lock", scope: !33, file: !32, line: 283, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !110, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE")
!110 = !{!111, !112, !116, !117, !118, !119}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !109, file: !32, line: 284, baseType: !26, size: 64)
!112 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !109, file: !32, line: 286, type: !113, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !109, file: !32, line: 287, type: !113, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubprogram(name: "word_lock", scope: !109, file: !32, line: 290, type: !113, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !109, file: !32, line: 291, type: !113, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !109, file: !32, line: 304, type: !113, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !106, file: !32, line: 466, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_data", scope: !33, file: !32, line: 448, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !123, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE")
!123 = !{!124, !125, !126, !127, !128, !132}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !122, file: !32, line: 449, baseType: !39, size: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_address", scope: !122, file: !32, line: 451, baseType: !26, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !32, line: 452, baseType: !121, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_info", scope: !122, file: !32, line: 453, baseType: !26, size: 64, offset: 448)
!128 = !DISubprogram(name: "queue_data", scope: !122, file: !32, line: 455, type: !129, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!132 = !DISubprogram(name: "~queue_data", scope: !122, file: !32, line: 457, type: !129, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !32, line: 467, baseType: !121, size: 64, offset: 128)
!134 = !{!135}
!135 = !DISubrange(count: 1024)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex_parking_control", scope: !33, file: !32, line: 829, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !139, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE")
!139 = !{!140, !172, !174}
!140 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !138, baseType: !141, extraData: i32 0)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parking_control", scope: !33, file: !32, line: 592, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !142, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE")
!142 = !{!143, !156, !157, !162, !168}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !141, file: !32, line: 593, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!66, !15, !147}
!147 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "validate_action", scope: !33, file: !32, line: 576, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !149, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE")
!149 = !{!150, !151, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_one", scope: !148, file: !32, line: 577, baseType: !66, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_unpark_info", scope: !148, file: !32, line: 578, baseType: !26, size: 64, offset: 64)
!152 = !DISubprogram(name: "validate_action", scope: !148, file: !32, line: 580, type: !153, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "before_sleep", scope: !141, file: !32, line: 594, baseType: !12, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !141, file: !32, line: 595, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!26, !15, !161, !66}
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_callback", scope: !141, file: !32, line: 596, baseType: !163, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !15, !166, !66, !66}
!166 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!168 = !DISubprogram(name: "parking_control", scope: !141, file: !32, line: 598, type: !169, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "lock_state", scope: !138, file: !32, line: 830, baseType: !173, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!174 = !DISubprogram(name: "mutex_parking_control", scope: !138, file: !32, line: 832, type: !175, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !173}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_parking_control", scope: !33, file: !32, line: 958, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !180, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE")
!180 = !{!181, !182, !183, !199}
!181 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !179, baseType: !141, extraData: i32 0)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !179, file: !32, line: 959, baseType: !173, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !179, file: !32, line: 960, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_mutex", scope: !33, file: !32, line: 859, size: 64, flags: DIFlagTypePassByValue, elements: !186, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization10fast_mutexE")
!186 = !{!187, !188, !192, !193, !194, !195, !198}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !185, file: !32, line: 860, baseType: !26, size: 64)
!188 = !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !185, file: !32, line: 862, type: !189, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!192 = !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !185, file: !32, line: 906, type: !189, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !185, file: !32, line: 920, type: !189, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !185, file: !32, line: 929, type: !189, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !185, file: !32, line: 938, type: !196, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{!66, !191}
!198 = !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !185, file: !32, line: 953, type: !189, scopeLine: 953, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubprogram(name: "signal_parking_control", scope: !179, file: !32, line: 962, type: !200, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202, !173, !184}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "broadcast_parking_control", scope: !33, file: !32, line: 985, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !205, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE")
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !204, baseType: !141, extraData: i32 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !204, file: !32, line: 986, baseType: !173, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !204, file: !32, line: 987, baseType: !184, size: 64, offset: 320)
!209 = !DISubprogram(name: "broadcast_parking_control", scope: !204, file: !32, line: 989, type: !210, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212, !173, !184}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_parking_control", scope: !33, file: !32, line: 1026, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !215, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE")
!215 = !{!216, !217, !218, !219}
!216 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !214, baseType: !141, extraData: i32 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !214, file: !32, line: 1027, baseType: !173, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !214, file: !32, line: 1028, baseType: !184, size: 64, offset: 320)
!219 = !DISubprogram(name: "wait_parking_control", scope: !214, file: !32, line: 1030, type: !220, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !222, !173, !184}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_cond", scope: !33, file: !32, line: 1072, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !225, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization9fast_condE")
!225 = !{!226, !227, !231, !232, !233}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !32, line: 1073, baseType: !26, size: 64)
!227 = !DISubprogram(name: "fast_cond", scope: !224, file: !32, line: 1076, type: !228, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!231 = !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !224, file: !32, line: 1078, type: !228, scopeLine: 1078, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !224, file: !32, line: 1092, type: !228, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !224, file: !32, line: 1105, type: !234, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !230, !184}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !32, line: 1164, size: 64, flags: DIFlagTypePassByValue, elements: !238, identifier: "_ZTS18halide_mutex_array")
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !237, file: !32, line: 1165, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !242, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !243, identifier: "_ZTS12halide_mutex")
!242 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !241, file: !242, line: 121, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 1)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work", scope: !34, file: !250, line: 26, size: 1024, flags: DIFlagTypePassByValue, elements: !251, identifier: "_ZTSN6Halide7Runtime8Internal4workE")
!250 = !DIFile(filename: "src/runtime/thread_pool_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!251 = !{!252, !281, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !300}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !249, file: !250, line: 27, baseType: !253, size: 448)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !242, line: 201, size: 448, flags: DIFlagTypePassByValue, elements: !254, identifier: "_ZTS22halide_parallel_task_t")
!254 = !{!255, !263, !264, !268, !276, !277, !278, !279, !280}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !253, file: !242, line: 204, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_loop_task_t", file: !242, line: 192, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!161, !15, !161, !161, !260, !15}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 16, baseType: !262)
!262 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !253, file: !242, line: 207, baseType: !260, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !242, line: 210, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "semaphores", scope: !253, file: !242, line: 214, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_acquire_t", file: !242, line: 177, size: 128, flags: DIFlagTypePassByValue, elements: !271, identifier: "_ZTS26halide_semaphore_acquire_t")
!271 = !{!272, !275}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !270, file: !242, line: 178, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !242, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS18halide_semaphore_t")
!275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !270, file: !242, line: 179, baseType: !161, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "num_semaphores", scope: !253, file: !242, line: 215, baseType: !161, size: 32, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !253, file: !242, line: 219, baseType: !161, size: 32, offset: 288)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !253, file: !242, line: 219, baseType: !161, size: 32, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "min_threads", scope: !253, file: !242, line: 238, baseType: !161, size: 32, offset: 352)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !253, file: !242, line: 243, baseType: !66, size: 8, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "task_fn", scope: !249, file: !250, line: 31, baseType: !282, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_task_t", file: !242, line: 158, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!161, !15, !161, !260}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next_job", scope: !249, file: !250, line: 33, baseType: !248, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !249, file: !250, line: 34, baseType: !248, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_count", scope: !249, file: !250, line: 35, baseType: !161, size: 32, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parent_job", scope: !249, file: !250, line: 36, baseType: !248, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !249, file: !250, line: 37, baseType: !161, size: 32, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !249, file: !250, line: 39, baseType: !15, size: 64, offset: 832)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "active_workers", scope: !249, file: !250, line: 40, baseType: !161, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "exit_status", scope: !249, file: !250, line: 41, baseType: !161, size: 32, offset: 928)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next_semaphore", scope: !249, file: !250, line: 42, baseType: !161, size: 32, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "owner_is_sleeping", scope: !249, file: !250, line: 44, baseType: !66, size: 8, offset: 992)
!296 = !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !249, file: !250, line: 46, type: !297, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!66, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!300 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !249, file: !250, line: 62, type: !301, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!66, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_impl_t", file: !250, line: 711, size: 32, flags: DIFlagTypePassByValue, elements: !307, identifier: "_ZTS23halide_semaphore_impl_t")
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !250, line: 712, baseType: !161, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!310 = !{!0, !311, !314, !316, !321, !323, !361, !367, !373, !379, !386, !392, !398, !401}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!312 = distinct !DIGlobalVariable(name: "lock_bit", scope: !33, file: !32, line: 250, type: !313, isLocal: true, isDefinition: true)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!315 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !33, file: !32, line: 251, type: !313, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "table_storage", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13table_storageE", scope: !33, file: !32, line: 478, type: !318, isLocal: false, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 196608, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 24576)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!322 = distinct !DIGlobalVariable(name: "parked_bit", scope: !33, file: !32, line: 252, type: !313, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "work_queue", linkageName: "_ZN6Halide7Runtime8Internal10work_queueE", scope: !34, file: !250, line: 166, type: !325, isLocal: false, isDefinition: true)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_queue_t", scope: !34, file: !250, line: 94, size: 17024, flags: DIFlagTypePassByValue, elements: !326, identifier: "_ZTSN6Halide7Runtime8Internal12work_queue_tE")
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !338, !339, !340, !341, !342, !346, !347, !348, !349, !354, !357}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !325, file: !250, line: 96, baseType: !241, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "desired_threads_working", scope: !325, file: !250, line: 99, baseType: !161, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "zero_marker", scope: !325, file: !250, line: 103, baseType: !161, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !325, file: !250, line: 106, baseType: !248, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "threads_created", scope: !325, file: !250, line: 109, baseType: !161, size: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "a_team_size", scope: !325, file: !250, line: 116, baseType: !161, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "target_a_team_size", scope: !325, file: !250, line: 116, baseType: !161, size: 32, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wake_a_team", scope: !325, file: !250, line: 122, baseType: !335, size: 64, offset: 320)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_cond", file: !242, line: 125, size: 64, flags: DIFlagTypePassByValue, elements: !336, identifier: "_ZTS11halide_cond")
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !335, file: !242, line: 126, baseType: !245, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "wake_b_team", scope: !325, file: !250, line: 122, baseType: !335, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wake_owners", scope: !325, file: !250, line: 122, baseType: !335, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "workers_sleeping", scope: !325, file: !250, line: 126, baseType: !161, size: 32, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "owners_sleeping", scope: !325, file: !250, line: 126, baseType: !161, size: 32, offset: 544)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !325, file: !250, line: 129, baseType: !343, size: 16384, offset: 576)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16384, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !325, file: !250, line: 133, baseType: !66, size: 8, offset: 16960)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !325, file: !250, line: 133, baseType: !66, size: 8, offset: 16968)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !325, file: !250, line: 139, baseType: !161, size: 32, offset: 16992)
!349 = !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t7runningEv", scope: !325, file: !250, line: 141, type: !350, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{!66, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!354 = !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !325, file: !250, line: 146, type: !355, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !352}
!357 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !325, file: !250, line: 158, type: !358, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "_ZN6Halide7Runtime8Internal14custom_do_taskE", scope: !34, file: !250, line: 567, type: !363, isLocal: false, isDefinition: true)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !242, line: 259, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!161, !15, !282, !161, !260}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "_ZN6Halide7Runtime8Internal19custom_do_loop_taskE", scope: !34, file: !250, line: 568, type: !369, isLocal: false, isDefinition: true)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !242, line: 268, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!161, !15, !256, !161, !161, !260, !15}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "_ZN6Halide7Runtime8Internal17custom_do_par_forE", scope: !34, file: !250, line: 569, type: !375, isLocal: false, isDefinition: true)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !242, line: 167, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!161, !15, !282, !161, !161, !260}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE", scope: !34, file: !250, line: 570, type: !381, isLocal: false, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !242, line: 281, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!161, !15, !161, !385, !15}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "_ZN6Halide7Runtime8Internal21custom_semaphore_initE", scope: !34, file: !250, line: 571, type: !388, isLocal: false, isDefinition: true)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !242, line: 184, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!161, !273, !161}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE", scope: !34, file: !250, line: 572, type: !394, isLocal: false, isDefinition: true)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !242, line: 186, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!66, !273, !161}
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE", scope: !34, file: !250, line: 573, type: !400, isLocal: false, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !242, line: 185, baseType: !389)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!402 = distinct !DIGlobalVariable(name: "__tsan_mutex_linker_init", scope: !2, file: !32, line: 37, type: !403, isLocal: true, isDefinition: true)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!404 = !{!405, !406, !408}
!405 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !34, file: !27, line: 225)
!406 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !407, file: !8, line: 7)
!407 = !DINamespace(name: "Qurt", scope: !34)
!408 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !34, file: !250, line: 579)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 14, baseType: !410)
!410 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!411 = !{i32 7, !"Dwarf Version", i32 4}
!412 = !{i32 2, !"Debug Info Version", i32 3}
!413 = !{i32 1, !"wchar_size", i32 4}
!414 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!415 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !8, file: !8, line: 30, type: !416, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!416 = !DISubroutineType(types: !417)
!417 = !{!161}
!418 = !DILocation(line: 32, column: 5, scope: !415)
!419 = distinct !DISubprogram(name: "halide_set_default_thread_priority", scope: !8, file: !8, line: 39, type: !420, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !161}
!422 = !{!423}
!423 = !DILocalVariable(name: "priority", arg: 1, scope: !419, file: !8, line: 39, type: !161)
!424 = !DILocation(line: 0, scope: !419)
!425 = !DILocation(line: 40, column: 18, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !8, line: 40, column: 9)
!427 = !DILocation(line: 40, column: 9, scope: !419)
!428 = !DILocation(line: 42, column: 25, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !8, line: 42, column: 16)
!430 = !DILocation(line: 42, column: 16, scope: !426)
!431 = !DILocation(line: 45, column: 43, scope: !419)
!432 = !DILocation(line: 45, column: 41, scope: !419)
!433 = !{!434, !434, i64 0}
!434 = !{!"short", !435, i64 0}
!435 = !{!"omnipotent char", !436, i64 0}
!436 = !{!"Simple C++ TBAA"}
!437 = !DILocation(line: 46, column: 1, scope: !419)
!438 = distinct !DISubprogram(name: "halide_get_default_thread_priority", scope: !8, file: !8, line: 48, type: !439, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!439 = !DISubroutineType(types: !440)
!440 = !{!409}
!441 = !DILocation(line: 49, column: 12, scope: !438)
!442 = !DILocation(line: 49, column: 5, scope: !438)
!443 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !8, file: !8, line: 52, type: !444, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!25, !12, !15}
!446 = !{!447, !448, !449, !450, !451}
!447 = !DILocalVariable(name: "f", arg: 1, scope: !443, file: !8, line: 52, type: !12)
!448 = !DILocalVariable(name: "closure", arg: 2, scope: !443, file: !8, line: 52, type: !15)
!449 = !DILocalVariable(name: "priority", scope: !443, file: !8, line: 53, type: !409)
!450 = !DILocalVariable(name: "t", scope: !443, file: !8, line: 54, type: !6)
!451 = !DILocalVariable(name: "thread_attr", scope: !443, file: !8, line: 59, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_thread_attr_t", file: !23, line: 67, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_qurt_thread_attr", file: !23, line: 52, size: 320, flags: DIFlagTypePassByValue, elements: !454, identifier: "_ZTS17_qurt_thread_attr")
!454 = !{!455, !459, !460, !461, !462, !463, !464, !465, !466}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !23, line: 54, baseType: !456, size: 128)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tcb_partition", scope: !453, file: !23, line: 55, baseType: !262, size: 8, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !453, file: !23, line: 57, baseType: !262, size: 8, offset: 136)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !453, file: !23, line: 59, baseType: !410, size: 16, offset: 144)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "asid", scope: !453, file: !23, line: 60, baseType: !262, size: 8, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bus_priority", scope: !453, file: !23, line: 61, baseType: !262, size: 8, offset: 168)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "timetest_id", scope: !453, file: !23, line: 62, baseType: !410, size: 16, offset: 176)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !453, file: !23, line: 63, baseType: !24, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "stack_addr", scope: !453, file: !23, line: 64, baseType: !15, size: 64, offset: 256)
!467 = !DILocation(line: 0, scope: !443)
!468 = !DILocation(line: 53, column: 25, scope: !443)
!469 = !DILocation(line: 54, column: 43, scope: !443)
!470 = !DILocation(line: 55, column: 8, scope: !443)
!471 = !DILocation(line: 55, column: 10, scope: !443)
!472 = !{!473, !474, i64 0}
!473 = !{!"_ZTSN12_GLOBAL__N_114spawned_threadE", !474, i64 0, !474, i64 8, !474, i64 16, !475, i64 24}
!474 = !{!"any pointer", !435, i64 0}
!475 = !{!"_ZTS13halide_thread", !476, i64 0}
!476 = !{!"int", !435, i64 0}
!477 = !DILocation(line: 56, column: 8, scope: !443)
!478 = !DILocation(line: 56, column: 16, scope: !443)
!479 = !{!473, !474, i64 8}
!480 = !DILocation(line: 57, column: 16, scope: !443)
!481 = !DILocation(line: 57, column: 8, scope: !443)
!482 = !DILocation(line: 57, column: 14, scope: !443)
!483 = !{!473, !474, i64 16}
!484 = !DILocation(line: 58, column: 16, scope: !443)
!485 = !DILocation(line: 58, column: 5, scope: !443)
!486 = !DILocation(line: 59, column: 5, scope: !443)
!487 = !DILocation(line: 59, column: 24, scope: !443)
!488 = !DILocalVariable(name: "attr", arg: 1, scope: !489, file: !23, line: 96, type: !492)
!489 = distinct !DISubprogram(name: "qurt_thread_attr_init", linkageName: "_ZL21qurt_thread_attr_initP17_qurt_thread_attr", scope: !23, file: !23, line: 96, type: !490, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!493 = !{!488}
!494 = !DILocation(line: 0, scope: !489, inlinedAt: !495)
!495 = distinct !DILocation(line: 60, column: 5, scope: !443)
!496 = !DILocation(line: 98, column: 19, scope: !489, inlinedAt: !495)
!497 = !{!435, !435, i64 0}
!498 = !DILocation(line: 99, column: 11, scope: !489, inlinedAt: !495)
!499 = !DILocation(line: 99, column: 25, scope: !489, inlinedAt: !495)
!500 = !{!501, !435, i64 16}
!501 = !{!"_ZTS17_qurt_thread_attr", !435, i64 0, !435, i64 16, !435, i64 17, !434, i64 18, !435, i64 20, !435, i64 21, !434, i64 22, !476, i64 24, !474, i64 32}
!502 = !DILocation(line: 100, column: 11, scope: !489, inlinedAt: !495)
!503 = !DILocation(line: 101, column: 11, scope: !489, inlinedAt: !495)
!504 = !DILocation(line: 101, column: 16, scope: !489, inlinedAt: !495)
!505 = !{!501, !435, i64 20}
!506 = !DILocation(line: 102, column: 11, scope: !489, inlinedAt: !495)
!507 = !DILocation(line: 102, column: 20, scope: !489, inlinedAt: !495)
!508 = !{!501, !435, i64 17}
!509 = !DILocation(line: 103, column: 11, scope: !489, inlinedAt: !495)
!510 = !DILocation(line: 103, column: 24, scope: !489, inlinedAt: !495)
!511 = !{!501, !435, i64 21}
!512 = !DILocation(line: 104, column: 11, scope: !489, inlinedAt: !495)
!513 = !DILocation(line: 104, column: 23, scope: !489, inlinedAt: !495)
!514 = !{!501, !434, i64 22}
!515 = !DILocation(line: 105, column: 11, scope: !489, inlinedAt: !495)
!516 = !DILocation(line: 106, column: 11, scope: !489, inlinedAt: !495)
!517 = !DILocation(line: 61, column: 54, scope: !443)
!518 = !DILocalVariable(name: "attr", arg: 1, scope: !519, file: !23, line: 152, type: !492)
!519 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_addr", linkageName: "_ZL31qurt_thread_attr_set_stack_addrP17_qurt_thread_attrPv", scope: !23, file: !23, line: 152, type: !520, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !492, !15}
!522 = !{!518, !523}
!523 = !DILocalVariable(name: "stack_addr", arg: 2, scope: !519, file: !23, line: 152, type: !15)
!524 = !DILocation(line: 0, scope: !519, inlinedAt: !525)
!525 = distinct !DILocation(line: 61, column: 5, scope: !443)
!526 = !DILocation(line: 153, column: 22, scope: !519, inlinedAt: !525)
!527 = !{!501, !474, i64 32}
!528 = !DILocalVariable(name: "attr", arg: 1, scope: !529, file: !23, line: 127, type: !492)
!529 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_size", linkageName: "_ZL31qurt_thread_attr_set_stack_sizeP17_qurt_thread_attrj", scope: !23, file: !23, line: 127, type: !530, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !492, !24}
!532 = !{!528, !533}
!533 = !DILocalVariable(name: "stack_size", arg: 2, scope: !529, file: !23, line: 127, type: !24)
!534 = !DILocation(line: 0, scope: !529, inlinedAt: !535)
!535 = distinct !DILocation(line: 62, column: 5, scope: !443)
!536 = !DILocation(line: 128, column: 22, scope: !529, inlinedAt: !535)
!537 = !{!501, !476, i64 24}
!538 = !DILocalVariable(name: "attr", arg: 1, scope: !539, file: !23, line: 170, type: !492)
!539 = distinct !DISubprogram(name: "qurt_thread_attr_set_priority", linkageName: "_ZL29qurt_thread_attr_set_priorityP17_qurt_thread_attrt", scope: !23, file: !23, line: 170, type: !540, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !492, !410}
!542 = !{!538, !543}
!543 = !DILocalVariable(name: "priority", arg: 2, scope: !539, file: !23, line: 170, type: !410)
!544 = !DILocation(line: 0, scope: !539, inlinedAt: !545)
!545 = distinct !DILocation(line: 63, column: 5, scope: !443)
!546 = !DILocation(line: 171, column: 20, scope: !539, inlinedAt: !545)
!547 = !{!501, !434, i64 18}
!548 = !DILocation(line: 64, column: 35, scope: !443)
!549 = !DILocation(line: 64, column: 5, scope: !443)
!550 = !DILocation(line: 65, column: 12, scope: !443)
!551 = !DILocation(line: 66, column: 1, scope: !443)
!552 = !DILocation(line: 65, column: 5, scope: !443)
!553 = !DISubprogram(name: "malloc", scope: !27, file: !27, line: 87, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!554 = !DISubroutineType(types: !555)
!555 = !{!15, !556}
!556 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!557 = !DISubprogram(name: "memalign", scope: !8, file: !8, line: 28, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!558 = !DISubroutineType(types: !559)
!559 = !{!15, !556, !556}
!560 = !DISubprogram(name: "memset", scope: !27, file: !27, line: 96, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!561 = !DISubroutineType(types: !562)
!562 = !{!15, !15, !161, !556}
!563 = !DISubprogram(name: "qurt_thread_create", scope: !23, file: !23, line: 175, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!564 = !DISubroutineType(types: !565)
!565 = !{!161, !566, !567, !12, !15}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!568 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN12_GLOBAL__N_119spawn_thread_helperEPv", scope: !9, file: !8, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !569)
!569 = !{!570, !571}
!570 = !DILocalVariable(name: "arg", arg: 1, scope: !568, file: !8, line: 20, type: !15)
!571 = !DILocalVariable(name: "t", scope: !568, file: !8, line: 21, type: !6)
!572 = !DILocation(line: 0, scope: !568)
!573 = !DILocation(line: 22, column: 8, scope: !568)
!574 = !DILocation(line: 22, column: 13, scope: !568)
!575 = !DILocation(line: 22, column: 5, scope: !568)
!576 = !DILocation(line: 23, column: 1, scope: !568)
!577 = distinct !DISubprogram(name: "halide_join_thread", scope: !8, file: !8, line: 68, type: !578, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !25}
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !577, file: !8, line: 68, type: !25)
!582 = !DILocalVariable(name: "t", scope: !577, file: !8, line: 69, type: !6)
!583 = !DILocalVariable(name: "ret", scope: !577, file: !8, line: 70, type: !161)
!584 = !DILocation(line: 0, scope: !577)
!585 = !DILocation(line: 70, column: 5, scope: !577)
!586 = !DILocation(line: 70, column: 9, scope: !577)
!587 = !{!476, !476, i64 0}
!588 = !DILocation(line: 71, column: 32, scope: !577)
!589 = !{!473, !476, i64 24}
!590 = !DILocation(line: 71, column: 5, scope: !577)
!591 = !DILocation(line: 72, column: 13, scope: !577)
!592 = !DILocation(line: 72, column: 5, scope: !577)
!593 = !DILocation(line: 73, column: 10, scope: !577)
!594 = !DILocation(line: 73, column: 5, scope: !577)
!595 = !DILocation(line: 74, column: 1, scope: !577)
!596 = !DISubprogram(name: "qurt_thread_join", scope: !23, file: !23, line: 194, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!597 = !DISubroutineType(types: !598)
!598 = !{!161, !24, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!600 = !DISubprogram(name: "free", scope: !27, file: !27, line: 86, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!601 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !109, file: !32, line: 321, type: !113, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !112, retainedNodes: !602)
!602 = !{!603, !605, !617, !618, !622, !623, !624}
!603 = !DILocalVariable(name: "this", arg: 1, scope: !601, type: !604, flags: DIFlagArtificial | DIFlagObjectPointer)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!605 = !DILocalVariable(name: "spinner", scope: !601, file: !32, line: 322, type: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !33, file: !32, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !607, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!607 = !{!608, !609, !613, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !606, file: !32, line: 231, baseType: !161, size: 32)
!609 = !DISubprogram(name: "spin_control", scope: !606, file: !32, line: 235, type: !610, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!613 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !606, file: !32, line: 237, type: !614, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!66, !612}
!616 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !606, file: !32, line: 244, type: !610, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DILocalVariable(name: "expected", scope: !601, file: !32, line: 323, type: !26)
!618 = !DILocalVariable(name: "desired", scope: !619, file: !32, line: 328, type: !26)
!619 = distinct !DILexicalBlock(scope: !620, file: !32, line: 327, column: 37)
!620 = distinct !DILexicalBlock(scope: !621, file: !32, line: 327, column: 13)
!621 = distinct !DILexicalBlock(scope: !601, file: !32, line: 326, column: 18)
!622 = !DILocalVariable(name: "node", scope: !621, file: !32, line: 342, type: !31)
!623 = !DILocalVariable(name: "head", scope: !621, file: !32, line: 347, type: !30)
!624 = !DILocalVariable(name: "desired", scope: !621, file: !32, line: 359, type: !26)
!625 = !DILocation(line: 0, scope: !601)
!626 = !DILocation(line: 324, column: 26, scope: !601)
!627 = !DILocalVariable(name: "addr", arg: 1, scope: !628, file: !32, line: 200, type: !632)
!628 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIyEEvPT_S6_", scope: !629, file: !32, line: 200, type: !630, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !635, retainedNodes: !633)
!629 = !DINamespace(scope: !33)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !632, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!633 = !{!627, !634}
!634 = !DILocalVariable(name: "val", arg: 2, scope: !628, file: !32, line: 200, type: !632)
!635 = !{!636}
!636 = !DITemplateTypeParameter(name: "T", type: !29)
!637 = !DILocation(line: 0, scope: !628, inlinedAt: !638)
!638 = distinct !DILocation(line: 324, column: 5, scope: !601)
!639 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !638)
!640 = !DILocation(line: 326, column: 5, scope: !601)
!641 = !DILocation(line: 327, column: 24, scope: !620)
!642 = !DILocation(line: 327, column: 14, scope: !620)
!643 = !DILocation(line: 327, column: 13, scope: !621)
!644 = !DILocation(line: 328, column: 42, scope: !619)
!645 = !DILocation(line: 0, scope: !619)
!646 = !DILocalVariable(name: "addr", arg: 1, scope: !647, file: !32, line: 191, type: !173)
!647 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPyS4_S4_", scope: !629, file: !32, line: 191, type: !648, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!66, !173, !173, !173}
!650 = !{!646, !651, !652}
!651 = !DILocalVariable(name: "expected", arg: 2, scope: !647, file: !32, line: 191, type: !173)
!652 = !DILocalVariable(name: "desired", arg: 3, scope: !647, file: !32, line: 191, type: !173)
!653 = !DILocation(line: 0, scope: !647, inlinedAt: !654)
!654 = distinct !DILocation(line: 330, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !619, file: !32, line: 330, column: 17)
!656 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !654)
!657 = !DILocation(line: 336, column: 67, scope: !658)
!658 = distinct !DILexicalBlock(scope: !621, file: !32, line: 336, column: 13)
!659 = !DILocation(line: 336, column: 73, scope: !658)
!660 = !DILocalVariable(name: "this", arg: 1, scope: !661, type: !663, flags: DIFlagArtificial | DIFlagObjectPointer)
!661 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !606, file: !32, line: 237, type: !614, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !613, retainedNodes: !662)
!662 = !{!660}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!664 = !DILocation(line: 0, scope: !661, inlinedAt: !665)
!665 = distinct !DILocation(line: 336, column: 84, scope: !658)
!666 = !DILocation(line: 241, column: 27, scope: !661, inlinedAt: !665)
!667 = !DILocation(line: 336, column: 13, scope: !621)
!668 = !DILocation(line: 239, column: 23, scope: !669, inlinedAt: !665)
!669 = distinct !DILexicalBlock(scope: !670, file: !32, line: 238, column: 29)
!670 = distinct !DILexicalBlock(scope: !661, file: !32, line: 238, column: 13)
!671 = !DILocation(line: 337, column: 13, scope: !672)
!672 = distinct !DILexicalBlock(scope: !658, file: !32, line: 336, column: 99)
!673 = !DILocation(line: 0, scope: !628, inlinedAt: !674)
!674 = distinct !DILocation(line: 338, column: 13, scope: !672)
!675 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !674)
!676 = !DILocation(line: 339, column: 13, scope: !672)
!677 = !DILocation(line: 342, column: 9, scope: !621)
!678 = !DILocation(line: 342, column: 30, scope: !621)
!679 = !DILocalVariable(name: "this", arg: 1, scope: !680, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!680 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !31, file: !32, line: 277, type: !97, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !96, retainedNodes: !681)
!681 = !{!679}
!682 = !DILocation(line: 0, scope: !680, inlinedAt: !683)
!683 = distinct !DILocation(line: 342, column: 30, scope: !621)
!684 = !DILocalVariable(name: "this", arg: 1, scope: !685, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!685 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !39, file: !8, line: 94, type: !85, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !84, retainedNodes: !686)
!686 = !{!684}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!688 = !DILocation(line: 0, scope: !685, inlinedAt: !689)
!689 = distinct !DILocation(line: 277, column: 19, scope: !680, inlinedAt: !683)
!690 = !DILocation(line: 87, column: 10, scope: !685, inlinedAt: !689)
!691 = !{!692, !693, i64 32}
!692 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !435, i64 0, !435, i64 16, !693, i64 32}
!693 = !{!"bool", !435, i64 0}
!694 = !DILocation(line: 95, column: 9, scope: !695, inlinedAt: !689)
!695 = distinct !DILexicalBlock(scope: !685, file: !8, line: 94, column: 35)
!696 = !DILocation(line: 96, column: 9, scope: !695, inlinedAt: !689)
!697 = !DILocation(line: 273, column: 27, scope: !680, inlinedAt: !683)
!698 = !{!699, !474, i64 40}
!699 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !692, i64 0, !474, i64 40, !474, i64 48, !474, i64 56}
!700 = !DILocation(line: 274, column: 27, scope: !680, inlinedAt: !683)
!701 = !{!699, !474, i64 48}
!702 = !DILocation(line: 275, column: 27, scope: !680, inlinedAt: !683)
!703 = !{!699, !474, i64 56}
!704 = !DILocalVariable(name: "this", arg: 1, scope: !705, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !39, file: !8, line: 105, type: !85, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !88, retainedNodes: !706)
!706 = !{!704}
!707 = !DILocation(line: 0, scope: !705, inlinedAt: !708)
!708 = distinct !DILocation(line: 344, column: 21, scope: !621)
!709 = !DILocation(line: 106, column: 21, scope: !705, inlinedAt: !708)
!710 = !DILocation(line: 347, column: 72, scope: !621)
!711 = !DILocation(line: 0, scope: !621)
!712 = !DILocation(line: 348, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !621, file: !32, line: 348, column: 13)
!714 = !DILocation(line: 348, column: 13, scope: !621)
!715 = !DILocation(line: 349, column: 23, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !32, line: 348, column: 30)
!717 = !DILocation(line: 351, column: 9, scope: !716)
!718 = !DILocation(line: 347, column: 38, scope: !621)
!719 = !DILocation(line: 356, column: 23, scope: !720)
!720 = distinct !DILexicalBlock(scope: !713, file: !32, line: 351, column: 16)
!721 = !DILocation(line: 359, column: 60, scope: !621)
!722 = !DILocation(line: 359, column: 48, scope: !621)
!723 = !DILocalVariable(name: "addr", arg: 1, scope: !724, file: !32, line: 183, type: !173)
!724 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPyS4_S4_", scope: !629, file: !32, line: 183, type: !648, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!725 = !{!723, !726, !727}
!726 = !DILocalVariable(name: "expected", arg: 2, scope: !724, file: !32, line: 183, type: !173)
!727 = !DILocalVariable(name: "desired", arg: 3, scope: !724, file: !32, line: 183, type: !173)
!728 = !DILocation(line: 0, scope: !724, inlinedAt: !729)
!729 = distinct !DILocation(line: 360, column: 13, scope: !730)
!730 = distinct !DILexicalBlock(scope: !621, file: !32, line: 360, column: 13)
!731 = !DILocation(line: 184, column: 12, scope: !724, inlinedAt: !729)
!732 = !DILocalVariable(name: "this", arg: 1, scope: !733, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!733 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !39, file: !8, line: 109, type: !85, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !89, retainedNodes: !734)
!734 = !{!732}
!735 = !DILocation(line: 0, scope: !733, inlinedAt: !736)
!736 = distinct !DILocation(line: 361, column: 25, scope: !737)
!737 = distinct !DILexicalBlock(scope: !730, file: !32, line: 360, column: 75)
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
!748 = !DILocation(line: 0, scope: !628, inlinedAt: !749)
!749 = distinct !DILocation(line: 363, column: 13, scope: !737)
!750 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !749)
!751 = !DILocation(line: 364, column: 9, scope: !737)
!752 = !DILocalVariable(name: "this", arg: 1, scope: !753, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!753 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !31, file: !32, line: 280, type: !97, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !100, retainedNodes: !754)
!754 = !{!752}
!755 = !DILocation(line: 0, scope: !753, inlinedAt: !756)
!756 = distinct !DILocation(line: 365, column: 5, scope: !601)
!757 = !DILocalVariable(name: "this", arg: 1, scope: !758, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!758 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !39, file: !8, line: 100, type: !85, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !87, retainedNodes: !759)
!759 = !{!757}
!760 = !DILocation(line: 0, scope: !758, inlinedAt: !761)
!761 = distinct !DILocation(line: 280, column: 51, scope: !762, inlinedAt: !756)
!762 = distinct !DILexicalBlock(scope: !753, file: !32, line: 280, column: 51)
!763 = !DILocation(line: 101, column: 9, scope: !764, inlinedAt: !761)
!764 = distinct !DILexicalBlock(scope: !758, file: !8, line: 100, column: 36)
!765 = !DILocation(line: 102, column: 9, scope: !764, inlinedAt: !761)
!766 = !DILocation(line: 365, column: 5, scope: !601)
!767 = distinct !{!767, !640, !766}
!768 = !DILocation(line: 366, column: 1, scope: !601)
!769 = !DISubprogram(name: "halide_thread_yield", scope: !27, file: !27, line: 190, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!770 = !DISubroutineType(types: !771)
!771 = !{null}
!772 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !109, file: !32, line: 368, type: !113, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !116, retainedNodes: !773)
!773 = !{!774, !775, !776, !778, !779, !780, !782, !783, !784, !785, !787, !790, !791, !794}
!774 = !DILocalVariable(name: "this", arg: 1, scope: !772, type: !604, flags: DIFlagArtificial | DIFlagObjectPointer)
!775 = !DILocalVariable(name: "expected", scope: !772, file: !32, line: 369, type: !26)
!776 = !DILocalVariable(name: "thread_queuing", scope: !777, file: !32, line: 375, type: !66)
!777 = distinct !DILexicalBlock(scope: !772, file: !32, line: 372, column: 18)
!778 = !DILocalVariable(name: "none_queued", scope: !777, file: !32, line: 377, type: !66)
!779 = !DILocalVariable(name: "desired", scope: !777, file: !32, line: 382, type: !26)
!780 = !DILocalVariable(name: "head", scope: !781, file: !32, line: 389, type: !30)
!781 = distinct !DILexicalBlock(scope: !772, file: !32, line: 388, column: 18)
!782 = !DILocalVariable(name: "current", scope: !781, file: !32, line: 390, type: !30)
!783 = !DILocalVariable(name: "tail", scope: !781, file: !32, line: 391, type: !30)
!784 = !DILocalVariable(name: "times_through", scope: !781, file: !32, line: 392, type: !161)
!785 = !DILocalVariable(name: "next", scope: !786, file: !32, line: 394, type: !30)
!786 = distinct !DILexicalBlock(scope: !781, file: !32, line: 393, column: 33)
!787 = !DILocalVariable(name: "desired", scope: !788, file: !32, line: 406, type: !26)
!788 = distinct !DILexicalBlock(scope: !789, file: !32, line: 405, column: 34)
!789 = distinct !DILexicalBlock(scope: !781, file: !32, line: 405, column: 13)
!790 = !DILocalVariable(name: "new_tail", scope: !781, file: !32, line: 414, type: !30)
!791 = !DILocalVariable(name: "continue_outer", scope: !792, file: !32, line: 416, type: !66)
!792 = distinct !DILexicalBlock(scope: !793, file: !32, line: 415, column: 34)
!793 = distinct !DILexicalBlock(scope: !781, file: !32, line: 415, column: 13)
!794 = !DILocalVariable(name: "desired", scope: !795, file: !32, line: 418, type: !26)
!795 = distinct !DILexicalBlock(scope: !792, file: !32, line: 417, column: 37)
!796 = !DILocation(line: 0, scope: !772)
!797 = !DILocation(line: 370, column: 26, scope: !772)
!798 = !DILocation(line: 0, scope: !628, inlinedAt: !799)
!799 = distinct !DILocation(line: 370, column: 5, scope: !772)
!800 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !799)
!801 = !DILocation(line: 372, column: 5, scope: !772)
!802 = !DILocation(line: 375, column: 41, scope: !777)
!803 = !DILocation(line: 375, column: 31, scope: !777)
!804 = !DILocation(line: 0, scope: !777)
!805 = !DILocation(line: 378, column: 28, scope: !806)
!806 = distinct !DILexicalBlock(scope: !777, file: !32, line: 378, column: 13)
!807 = !DILocation(line: 382, column: 38, scope: !777)
!808 = !DILocation(line: 0, scope: !647, inlinedAt: !809)
!809 = distinct !DILocation(line: 383, column: 13, scope: !810)
!810 = distinct !DILexicalBlock(scope: !777, file: !32, line: 383, column: 13)
!811 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !809)
!812 = !DILocation(line: 389, column: 72, scope: !781)
!813 = !DILocation(line: 389, column: 38, scope: !781)
!814 = !DILocation(line: 0, scope: !781)
!815 = !DILocation(line: 391, column: 47, scope: !781)
!816 = !DILocation(line: 393, column: 21, scope: !781)
!817 = !DILocation(line: 393, column: 9, scope: !781)
!818 = !DILocation(line: 394, column: 51, scope: !786)
!819 = !DILocation(line: 0, scope: !786)
!820 = !DILocation(line: 395, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !32, line: 395, column: 13)
!822 = distinct !DILexicalBlock(scope: !786, file: !32, line: 395, column: 13)
!823 = !DILocation(line: 395, column: 13, scope: !822)
!824 = !DILocation(line: 395, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !32, line: 395, column: 13)
!826 = !DILocation(line: 396, column: 19, scope: !786)
!827 = !DILocation(line: 396, column: 24, scope: !786)
!828 = !DILocation(line: 398, column: 29, scope: !786)
!829 = distinct !{!829, !817, !830, !746}
!830 = !DILocation(line: 400, column: 9, scope: !781)
!831 = !DILocation(line: 401, column: 20, scope: !781)
!832 = !DILocation(line: 405, column: 22, scope: !789)
!833 = !DILocation(line: 405, column: 13, scope: !789)
!834 = !DILocation(line: 405, column: 13, scope: !781)
!835 = !DILocation(line: 406, column: 42, scope: !788)
!836 = !DILocation(line: 0, scope: !788)
!837 = !DILocalVariable(name: "addr", arg: 1, scope: !838, file: !32, line: 179, type: !632)
!838 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIyEEbPT_S6_S6_", scope: !629, file: !32, line: 179, type: !839, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !635, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!66, !632, !632, !632}
!841 = !{!837, !842, !843}
!842 = !DILocalVariable(name: "expected", arg: 2, scope: !838, file: !32, line: 179, type: !632)
!843 = !DILocalVariable(name: "desired", arg: 3, scope: !838, file: !32, line: 179, type: !632)
!844 = !DILocation(line: 0, scope: !838, inlinedAt: !845)
!845 = distinct !DILocation(line: 407, column: 17, scope: !846)
!846 = distinct !DILexicalBlock(scope: !788, file: !32, line: 407, column: 17)
!847 = !DILocation(line: 180, column: 12, scope: !838, inlinedAt: !845)
!848 = distinct !{!848, !849, !850}
!849 = !DILocation(line: 388, column: 5, scope: !772)
!850 = !DILocation(line: 445, column: 5, scope: !772)
!851 = !DILocation(line: 414, column: 48, scope: !781)
!852 = !DILocation(line: 415, column: 22, scope: !793)
!853 = !DILocation(line: 415, column: 13, scope: !781)
!854 = !DILocation(line: 0, scope: !792)
!855 = !DILocation(line: 418, column: 46, scope: !795)
!856 = !DILocation(line: 0, scope: !795)
!857 = !DILocation(line: 0, scope: !838, inlinedAt: !858)
!858 = distinct !DILocation(line: 419, column: 21, scope: !859)
!859 = distinct !DILexicalBlock(scope: !795, file: !32, line: 419, column: 21)
!860 = !DILocation(line: 180, column: 12, scope: !838, inlinedAt: !858)
!861 = !DILocation(line: 422, column: 74, scope: !862)
!862 = distinct !DILexicalBlock(scope: !795, file: !32, line: 422, column: 21)
!863 = !DILocation(line: 422, column: 21, scope: !795)
!864 = distinct !{!864, !865, !866, !746}
!865 = !DILocation(line: 417, column: 13, scope: !792)
!866 = !DILocation(line: 428, column: 13, scope: !792)
!867 = !DILocation(line: 434, column: 24, scope: !868)
!868 = distinct !DILexicalBlock(scope: !793, file: !32, line: 433, column: 16)
!869 = !DILocalVariable(name: "addr", arg: 1, scope: !870, file: !32, line: 165, type: !173)
!870 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPyy", scope: !629, file: !32, line: 165, type: !871, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!26, !173, !26}
!873 = !{!869, !874}
!874 = !DILocalVariable(name: "val", arg: 2, scope: !870, file: !32, line: 165, type: !26)
!875 = !DILocation(line: 0, scope: !870, inlinedAt: !876)
!876 = distinct !DILocation(line: 435, column: 13, scope: !868)
!877 = !DILocation(line: 166, column: 12, scope: !870, inlinedAt: !876)
!878 = !DILocalVariable(name: "this", arg: 1, scope: !879, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!879 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !39, file: !8, line: 117, type: !85, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !90, retainedNodes: !880)
!880 = !{!878}
!881 = !DILocation(line: 0, scope: !879, inlinedAt: !882)
!882 = distinct !DILocation(line: 441, column: 22, scope: !781)
!883 = !DILocation(line: 118, column: 26, scope: !879, inlinedAt: !882)
!884 = !DILocation(line: 118, column: 9, scope: !879, inlinedAt: !882)
!885 = !DILocalVariable(name: "this", arg: 1, scope: !886, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!886 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !39, file: !8, line: 121, type: !85, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !91, retainedNodes: !887)
!887 = !{!885}
!888 = !DILocation(line: 0, scope: !886, inlinedAt: !889)
!889 = distinct !DILocation(line: 442, column: 22, scope: !781)
!890 = !DILocation(line: 122, column: 9, scope: !886, inlinedAt: !889)
!891 = !DILocation(line: 122, column: 21, scope: !886, inlinedAt: !889)
!892 = !DILocation(line: 123, column: 27, scope: !886, inlinedAt: !889)
!893 = !DILocation(line: 123, column: 9, scope: !886, inlinedAt: !889)
!894 = !DILocalVariable(name: "this", arg: 1, scope: !895, type: !687, flags: DIFlagArtificial | DIFlagObjectPointer)
!895 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !39, file: !8, line: 126, type: !85, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !92, retainedNodes: !896)
!896 = !{!894}
!897 = !DILocation(line: 0, scope: !895, inlinedAt: !898)
!898 = distinct !DILocation(line: 443, column: 22, scope: !781)
!899 = !DILocation(line: 127, column: 9, scope: !895, inlinedAt: !898)
!900 = !DILocation(line: 444, column: 9, scope: !781)
!901 = !DILocation(line: 446, column: 1, scope: !772)
!902 = !DISubprogram(name: "halide_print", scope: !242, file: !242, line: 97, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !15, !265}
!905 = !DISubprogram(name: "abort", scope: !27, file: !27, line: 108, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!906 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy", scope: !33, file: !32, line: 509, type: !907, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!907 = !DISubroutineType(types: !908)
!908 = !{!909, !26}
!909 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 64)
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "addr", arg: 1, scope: !906, file: !32, line: 509, type: !26)
!912 = !DILocalVariable(name: "hash", scope: !906, file: !32, line: 510, type: !26)
!913 = !DILocalVariable(name: "bucket", scope: !906, file: !32, line: 515, type: !909)
!914 = !DILocation(line: 0, scope: !906)
!915 = !DILocalVariable(name: "addr", arg: 1, scope: !916, file: !32, line: 499, type: !26)
!916 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEyj", scope: !33, file: !32, line: 499, type: !917, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!917 = !DISubroutineType(types: !918)
!918 = !{!26, !26, !919}
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 12, baseType: !24)
!920 = !{!915, !921}
!921 = !DILocalVariable(name: "bits", arg: 2, scope: !916, file: !32, line: 499, type: !919)
!922 = !DILocation(line: 0, scope: !916, inlinedAt: !923)
!923 = distinct !DILocation(line: 510, column: 22, scope: !906)
!924 = !DILocation(line: 503, column: 22, scope: !925, inlinedAt: !923)
!925 = distinct !DILexicalBlock(scope: !926, file: !32, line: 502, column: 33)
!926 = distinct !DILexicalBlock(scope: !916, file: !32, line: 502, column: 9)
!927 = !DILocation(line: 503, column: 55, scope: !925, inlinedAt: !923)
!928 = !DILocation(line: 515, column: 27, scope: !906)
!929 = !DILocalVariable(name: "this", arg: 1, scope: !930, type: !604, flags: DIFlagArtificial | DIFlagObjectPointer)
!930 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !109, file: !32, line: 291, type: !113, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !118, retainedNodes: !931)
!931 = !{!929, !932, !933}
!932 = !DILocalVariable(name: "expected", scope: !930, file: !32, line: 294, type: !26)
!933 = !DILocalVariable(name: "desired", scope: !930, file: !32, line: 295, type: !26)
!934 = !DILocation(line: 0, scope: !930, inlinedAt: !935)
!935 = distinct !DILocation(line: 517, column: 18, scope: !906)
!936 = !DILocation(line: 292, column: 26, scope: !930, inlinedAt: !935)
!937 = !DILocalVariable(name: "mutex", arg: 1, scope: !938, file: !32, line: 56, type: !15)
!938 = distinct !DISubprogram(name: "if_tsan_pre_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_116if_tsan_pre_lockEPv", scope: !629, file: !32, line: 56, type: !13, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !939)
!939 = !{!937}
!940 = !DILocation(line: 0, scope: !938, inlinedAt: !941)
!941 = distinct !DILocation(line: 292, column: 9, scope: !930, inlinedAt: !935)
!942 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !941)
!943 = !DILocation(line: 297, column: 47, scope: !944, inlinedAt: !935)
!944 = distinct !DILexicalBlock(scope: !930, file: !32, line: 297, column: 13)
!945 = !DILocation(line: 0, scope: !647, inlinedAt: !946)
!946 = distinct !DILocation(line: 297, column: 14, scope: !944, inlinedAt: !935)
!947 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !946)
!948 = !DILocation(line: 297, column: 13, scope: !930, inlinedAt: !935)
!949 = !DILocation(line: 517, column: 12, scope: !906)
!950 = !DILocation(line: 298, column: 13, scope: !951, inlinedAt: !935)
!951 = distinct !DILexicalBlock(scope: !944, file: !32, line: 297, column: 76)
!952 = !DILocation(line: 299, column: 9, scope: !951, inlinedAt: !935)
!953 = !DILocalVariable(name: "mutex", arg: 1, scope: !954, file: !32, line: 60, type: !15)
!954 = distinct !DISubprogram(name: "if_tsan_post_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_117if_tsan_post_lockEPv", scope: !629, file: !32, line: 60, type: !13, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!955 = !{!953}
!956 = !DILocation(line: 0, scope: !954, inlinedAt: !957)
!957 = distinct !DILocation(line: 301, column: 9, scope: !930, inlinedAt: !935)
!958 = !DILocation(line: 61, column: 5, scope: !954, inlinedAt: !957)
!959 = !DILocation(line: 519, column: 5, scope: !906)
!960 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy", scope: !33, file: !32, line: 531, type: !961, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!961 = !DISubroutineType(types: !962)
!962 = !{!963, !26, !26}
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !33, file: !32, line: 522, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !964, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !963, file: !32, line: 523, baseType: !909, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !963, file: !32, line: 524, baseType: !909, size: 64, offset: 64)
!967 = !DISubprogram(name: "bucket_pair", scope: !963, file: !32, line: 526, type: !968, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !970, !909, !909}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!971 = !{!972, !973, !974, !975, !976, !979, !982, !983, !985}
!972 = !DILocalVariable(name: "addr_from", arg: 1, scope: !960, file: !32, line: 531, type: !26)
!973 = !DILocalVariable(name: "addr_to", arg: 2, scope: !960, file: !32, line: 531, type: !26)
!974 = !DILocalVariable(name: "hash_from", scope: !960, file: !32, line: 533, type: !26)
!975 = !DILocalVariable(name: "hash_to", scope: !960, file: !32, line: 534, type: !26)
!976 = !DILocalVariable(name: "first", scope: !977, file: !32, line: 542, type: !909)
!977 = distinct !DILexicalBlock(scope: !978, file: !32, line: 541, column: 31)
!978 = distinct !DILexicalBlock(scope: !960, file: !32, line: 541, column: 9)
!979 = !DILocalVariable(name: "first", scope: !980, file: !32, line: 546, type: !909)
!980 = distinct !DILexicalBlock(scope: !981, file: !32, line: 545, column: 37)
!981 = distinct !DILexicalBlock(scope: !978, file: !32, line: 545, column: 16)
!982 = !DILocalVariable(name: "second", scope: !980, file: !32, line: 547, type: !909)
!983 = !DILocalVariable(name: "first", scope: !984, file: !32, line: 552, type: !909)
!984 = distinct !DILexicalBlock(scope: !981, file: !32, line: 551, column: 12)
!985 = !DILocalVariable(name: "second", scope: !984, file: !32, line: 553, type: !909)
!986 = !DILocation(line: 0, scope: !960)
!987 = !DILocation(line: 0, scope: !916, inlinedAt: !988)
!988 = distinct !DILocation(line: 533, column: 27, scope: !960)
!989 = !DILocation(line: 503, column: 22, scope: !925, inlinedAt: !988)
!990 = !DILocation(line: 503, column: 55, scope: !925, inlinedAt: !988)
!991 = !DILocation(line: 0, scope: !916, inlinedAt: !992)
!992 = distinct !DILocation(line: 534, column: 25, scope: !960)
!993 = !DILocation(line: 503, column: 22, scope: !925, inlinedAt: !992)
!994 = !DILocation(line: 503, column: 55, scope: !925, inlinedAt: !992)
!995 = !DILocation(line: 541, column: 19, scope: !978)
!996 = !DILocation(line: 541, column: 9, scope: !960)
!997 = !DILocation(line: 542, column: 30, scope: !977)
!998 = !DILocation(line: 0, scope: !977)
!999 = !DILocation(line: 0, scope: !930, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 543, column: 21, scope: !977)
!1001 = !DILocation(line: 292, column: 26, scope: !930, inlinedAt: !1000)
!1002 = !DILocation(line: 0, scope: !938, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 292, column: 9, scope: !930, inlinedAt: !1000)
!1004 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !1003)
!1005 = !DILocation(line: 297, column: 47, scope: !944, inlinedAt: !1000)
!1006 = !DILocation(line: 0, scope: !647, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 297, column: 14, scope: !944, inlinedAt: !1000)
!1008 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !1007)
!1009 = !DILocation(line: 297, column: 13, scope: !930, inlinedAt: !1000)
!1010 = !DILocation(line: 543, column: 15, scope: !977)
!1011 = !DILocation(line: 298, column: 13, scope: !951, inlinedAt: !1000)
!1012 = !DILocation(line: 299, column: 9, scope: !951, inlinedAt: !1000)
!1013 = !DILocation(line: 545, column: 26, scope: !981)
!1014 = !DILocation(line: 545, column: 16, scope: !978)
!1015 = !DILocation(line: 546, column: 30, scope: !980)
!1016 = !DILocation(line: 0, scope: !980)
!1017 = !DILocation(line: 547, column: 31, scope: !980)
!1018 = !DILocation(line: 0, scope: !930, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 548, column: 21, scope: !980)
!1020 = !DILocation(line: 292, column: 26, scope: !930, inlinedAt: !1019)
!1021 = !DILocation(line: 0, scope: !938, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 292, column: 9, scope: !930, inlinedAt: !1019)
!1023 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !1022)
!1024 = !DILocation(line: 297, column: 47, scope: !944, inlinedAt: !1019)
!1025 = !DILocation(line: 0, scope: !647, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 297, column: 14, scope: !944, inlinedAt: !1019)
!1027 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !1026)
!1028 = !DILocation(line: 297, column: 13, scope: !930, inlinedAt: !1019)
!1029 = !DILocation(line: 548, column: 15, scope: !980)
!1030 = !DILocation(line: 298, column: 13, scope: !951, inlinedAt: !1019)
!1031 = !DILocation(line: 299, column: 9, scope: !951, inlinedAt: !1019)
!1032 = !DILocation(line: 0, scope: !954, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 301, column: 9, scope: !930, inlinedAt: !1019)
!1034 = !DILocation(line: 61, column: 5, scope: !954, inlinedAt: !1033)
!1035 = !DILocation(line: 0, scope: !930, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 549, column: 22, scope: !980)
!1037 = !DILocation(line: 292, column: 26, scope: !930, inlinedAt: !1036)
!1038 = !DILocation(line: 0, scope: !938, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 292, column: 9, scope: !930, inlinedAt: !1036)
!1040 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !1039)
!1041 = !DILocation(line: 297, column: 47, scope: !944, inlinedAt: !1036)
!1042 = !DILocation(line: 0, scope: !647, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 297, column: 14, scope: !944, inlinedAt: !1036)
!1044 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !1043)
!1045 = !DILocation(line: 297, column: 13, scope: !930, inlinedAt: !1036)
!1046 = !DILocation(line: 549, column: 16, scope: !980)
!1047 = !DILocation(line: 298, column: 13, scope: !951, inlinedAt: !1036)
!1048 = !DILocation(line: 299, column: 9, scope: !951, inlinedAt: !1036)
!1049 = !DILocation(line: 552, column: 30, scope: !984)
!1050 = !DILocation(line: 0, scope: !984)
!1051 = !DILocation(line: 553, column: 31, scope: !984)
!1052 = !DILocation(line: 0, scope: !930, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 554, column: 21, scope: !984)
!1054 = !DILocation(line: 292, column: 26, scope: !930, inlinedAt: !1053)
!1055 = !DILocation(line: 0, scope: !938, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 292, column: 9, scope: !930, inlinedAt: !1053)
!1057 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !1056)
!1058 = !DILocation(line: 297, column: 47, scope: !944, inlinedAt: !1053)
!1059 = !DILocation(line: 0, scope: !647, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 297, column: 14, scope: !944, inlinedAt: !1053)
!1061 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !1060)
!1062 = !DILocation(line: 297, column: 13, scope: !930, inlinedAt: !1053)
!1063 = !DILocation(line: 554, column: 15, scope: !984)
!1064 = !DILocation(line: 298, column: 13, scope: !951, inlinedAt: !1053)
!1065 = !DILocation(line: 299, column: 9, scope: !951, inlinedAt: !1053)
!1066 = !DILocation(line: 0, scope: !954, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 301, column: 9, scope: !930, inlinedAt: !1053)
!1068 = !DILocation(line: 61, column: 5, scope: !954, inlinedAt: !1067)
!1069 = !DILocation(line: 0, scope: !930, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 555, column: 22, scope: !984)
!1071 = !DILocation(line: 292, column: 26, scope: !930, inlinedAt: !1070)
!1072 = !DILocation(line: 0, scope: !938, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 292, column: 9, scope: !930, inlinedAt: !1070)
!1074 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !1073)
!1075 = !DILocation(line: 297, column: 47, scope: !944, inlinedAt: !1070)
!1076 = !DILocation(line: 0, scope: !647, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 297, column: 14, scope: !944, inlinedAt: !1070)
!1078 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !1077)
!1079 = !DILocation(line: 297, column: 13, scope: !930, inlinedAt: !1070)
!1080 = !DILocation(line: 555, column: 16, scope: !984)
!1081 = !DILocation(line: 298, column: 13, scope: !951, inlinedAt: !1070)
!1082 = !DILocation(line: 299, column: 9, scope: !951, inlinedAt: !1070)
!1083 = !DILocation(line: 0, scope: !978)
!1084 = !{!474, !474, i64 0}
!1085 = !DILocation(line: 558, column: 1, scope: !960)
!1086 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !33, file: !32, line: 560, type: !1087, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{null, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !963, size: 64)
!1090 = !{!1091}
!1091 = !DILocalVariable(name: "buckets", arg: 1, scope: !1086, file: !32, line: 560, type: !1089)
!1092 = !DILocation(line: 0, scope: !1086)
!1093 = !DILocation(line: 565, column: 18, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1086, file: !32, line: 565, column: 9)
!1095 = !{!1096, !474, i64 0}
!1096 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !474, i64 0, !474, i64 8}
!1097 = !DILocation(line: 565, column: 35, scope: !1094)
!1098 = !{!1096, !474, i64 8}
!1099 = !DILocation(line: 565, column: 23, scope: !1094)
!1100 = !DILocation(line: 565, column: 9, scope: !1086)
!1101 = !DILocalVariable(name: "this", arg: 1, scope: !1102, type: !604, flags: DIFlagArtificial | DIFlagObjectPointer)
!1102 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !109, file: !32, line: 304, type: !113, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !119, retainedNodes: !1103)
!1103 = !{!1101, !1104, !1105, !1106}
!1104 = !DILocalVariable(name: "val", scope: !1102, file: !32, line: 307, type: !26)
!1105 = !DILocalVariable(name: "no_thread_queuing", scope: !1102, file: !32, line: 310, type: !66)
!1106 = !DILocalVariable(name: "some_queued", scope: !1102, file: !32, line: 312, type: !66)
!1107 = !DILocation(line: 0, scope: !1102, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 566, column: 28, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1094, file: !32, line: 565, column: 39)
!1110 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1108)
!1111 = !DILocalVariable(name: "mutex", arg: 1, scope: !1112, file: !32, line: 64, type: !15)
!1112 = distinct !DISubprogram(name: "if_tsan_pre_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_unlockEPv", scope: !629, file: !32, line: 64, type: !13, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1113 = !{!1111}
!1114 = !DILocation(line: 0, scope: !1112, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1108)
!1116 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1115)
!1117 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1108)
!1118 = !DILocalVariable(name: "addr", arg: 1, scope: !1119, file: !32, line: 195, type: !173)
!1119 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPyy", scope: !629, file: !32, line: 195, type: !871, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1120)
!1120 = !{!1118, !1121}
!1121 = !DILocalVariable(name: "val", arg: 2, scope: !1119, file: !32, line: 195, type: !26)
!1122 = !DILocation(line: 0, scope: !1119, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1108)
!1124 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1123)
!1125 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1108)
!1126 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1108)
!1127 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1108)
!1128 = distinct !DILexicalBlock(scope: !1102, file: !32, line: 313, column: 13)
!1129 = !DILocation(line: 566, column: 22, scope: !1109)
!1130 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1108)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !32, line: 313, column: 47)
!1132 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1108)
!1133 = !DILocation(line: 567, column: 30, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1094, file: !32, line: 567, column: 16)
!1135 = !DILocation(line: 567, column: 16, scope: !1094)
!1136 = !DILocation(line: 0, scope: !1102, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 568, column: 28, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !32, line: 567, column: 45)
!1139 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1137)
!1140 = !DILocation(line: 0, scope: !1112, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1137)
!1142 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1141)
!1143 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1137)
!1144 = !DILocation(line: 0, scope: !1119, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1137)
!1146 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1145)
!1147 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1137)
!1148 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1137)
!1149 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1137)
!1150 = !DILocation(line: 568, column: 22, scope: !1138)
!1151 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1137)
!1152 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1137)
!1153 = !DILocalVariable(name: "mutex", arg: 1, scope: !1154, file: !32, line: 67, type: !15)
!1154 = distinct !DISubprogram(name: "if_tsan_post_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_unlockEPv", scope: !629, file: !32, line: 67, type: !13, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1155 = !{!1153}
!1156 = !DILocation(line: 0, scope: !1154, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1137)
!1158 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1157)
!1159 = !DILocation(line: 569, column: 17, scope: !1138)
!1160 = !DILocation(line: 0, scope: !1102, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 569, column: 26, scope: !1138)
!1162 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1161)
!1163 = !DILocation(line: 0, scope: !1112, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1161)
!1165 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1164)
!1166 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1161)
!1167 = !DILocation(line: 0, scope: !1119, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1161)
!1169 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1168)
!1170 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1161)
!1171 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1161)
!1172 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1161)
!1173 = !DILocation(line: 569, column: 20, scope: !1138)
!1174 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1161)
!1175 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1161)
!1176 = !DILocation(line: 0, scope: !1102, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 571, column: 26, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1134, file: !32, line: 570, column: 12)
!1179 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1177)
!1180 = !DILocation(line: 0, scope: !1112, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1177)
!1182 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1181)
!1183 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1177)
!1184 = !DILocation(line: 0, scope: !1119, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1177)
!1186 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1185)
!1187 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1177)
!1188 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1177)
!1189 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1177)
!1190 = !DILocation(line: 571, column: 20, scope: !1178)
!1191 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1177)
!1192 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1177)
!1193 = !DILocation(line: 0, scope: !1154, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1177)
!1195 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1194)
!1196 = !DILocation(line: 572, column: 17, scope: !1178)
!1197 = !DILocation(line: 0, scope: !1102, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 572, column: 28, scope: !1178)
!1199 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1198)
!1200 = !DILocation(line: 0, scope: !1112, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1198)
!1202 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1201)
!1203 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1198)
!1204 = !DILocation(line: 0, scope: !1119, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1198)
!1206 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1205)
!1207 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1198)
!1208 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1198)
!1209 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1198)
!1210 = !DILocation(line: 572, column: 22, scope: !1178)
!1211 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1198)
!1212 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1198)
!1213 = !DILocation(line: 0, scope: !1094)
!1214 = !DILocation(line: 574, column: 1, scope: !1086)
!1215 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 583, type: !145, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1216 = !{!1217, !1218}
!1217 = !DILocalVariable(name: "control", arg: 1, scope: !1215, file: !32, line: 583, type: !15)
!1218 = !DILocalVariable(name: "action", arg: 2, scope: !1215, file: !32, line: 583, type: !147)
!1219 = !DILocation(line: 0, scope: !1215)
!1220 = !DILocation(line: 584, column: 5, scope: !1215)
!1221 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !33, file: !32, line: 586, type: !13, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "control", arg: 1, scope: !1221, file: !32, line: 586, type: !15)
!1224 = !DILocation(line: 0, scope: !1221)
!1225 = !DILocation(line: 586, column: 55, scope: !1221)
!1226 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !33, file: !32, line: 587, type: !159, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1227)
!1227 = !{!1228, !1229, !1230}
!1228 = !DILocalVariable(name: "control", arg: 1, scope: !1226, file: !32, line: 587, type: !15)
!1229 = !DILocalVariable(name: "unparked", arg: 2, scope: !1226, file: !32, line: 587, type: !161)
!1230 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1226, file: !32, line: 587, type: !66)
!1231 = !DILocation(line: 0, scope: !1226)
!1232 = !DILocation(line: 588, column: 5, scope: !1226)
!1233 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !33, file: !32, line: 590, type: !164, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1234 = !{!1235, !1236, !1237, !1238}
!1235 = !DILocalVariable(name: "control", arg: 1, scope: !1233, file: !32, line: 590, type: !15)
!1236 = !DILocalVariable(name: "action", arg: 2, scope: !1233, file: !32, line: 590, type: !166)
!1237 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1233, file: !32, line: 590, type: !66)
!1238 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1233, file: !32, line: 590, type: !66)
!1239 = !DILocation(line: 0, scope: !1233)
!1240 = !DILocation(line: 590, column: 128, scope: !1233)
!1241 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE", scope: !33, file: !32, line: 605, type: !1242, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1245)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!26, !26, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !141, size: 64)
!1245 = !{!1246, !1247, !1248, !1249, !1250}
!1246 = !DILocalVariable(name: "addr", arg: 1, scope: !1241, file: !32, line: 605, type: !26)
!1247 = !DILocalVariable(name: "control", arg: 2, scope: !1241, file: !32, line: 605, type: !1244)
!1248 = !DILocalVariable(name: "queue_data", scope: !1241, file: !32, line: 606, type: !122)
!1249 = !DILocalVariable(name: "bucket", scope: !1241, file: !32, line: 608, type: !909)
!1250 = !DILocalVariable(name: "action", scope: !1241, file: !32, line: 610, type: !148)
!1251 = !DILocation(line: 0, scope: !1241)
!1252 = !DILocation(line: 606, column: 5, scope: !1241)
!1253 = !DILocation(line: 606, column: 16, scope: !1241)
!1254 = !DILocalVariable(name: "this", arg: 1, scope: !1255, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1255 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !122, file: !32, line: 455, type: !129, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !128, retainedNodes: !1256)
!1256 = !{!1254}
!1257 = !DILocation(line: 0, scope: !1255, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 606, column: 16, scope: !1241)
!1259 = !DILocation(line: 0, scope: !685, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 455, column: 19, scope: !1255, inlinedAt: !1258)
!1261 = !DILocation(line: 87, column: 10, scope: !685, inlinedAt: !1260)
!1262 = !DILocation(line: 95, column: 26, scope: !695, inlinedAt: !1260)
!1263 = !DILocation(line: 95, column: 9, scope: !695, inlinedAt: !1260)
!1264 = !DILocation(line: 96, column: 25, scope: !695, inlinedAt: !1260)
!1265 = !DILocation(line: 96, column: 9, scope: !695, inlinedAt: !1260)
!1266 = !DILocation(line: 97, column: 21, scope: !695, inlinedAt: !1260)
!1267 = !DILocation(line: 451, column: 15, scope: !1255, inlinedAt: !1258)
!1268 = !{!1269, !1270, i64 40}
!1269 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !692, i64 0, !1270, i64 40, !474, i64 48, !1270, i64 56}
!1270 = !{!"long long", !435, i64 0}
!1271 = !DILocation(line: 452, column: 17, scope: !1255, inlinedAt: !1258)
!1272 = !{!1269, !474, i64 48}
!1273 = !DILocation(line: 453, column: 15, scope: !1255, inlinedAt: !1258)
!1274 = !{!1269, !1270, i64 56}
!1275 = !DILocation(line: 608, column: 27, scope: !1241)
!1276 = !DILocation(line: 610, column: 5, scope: !1241)
!1277 = !DILocation(line: 610, column: 21, scope: !1241)
!1278 = !DILocalVariable(name: "this", arg: 1, scope: !1279, type: !1281, flags: DIFlagArtificial | DIFlagObjectPointer)
!1279 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !148, file: !32, line: 580, type: !153, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !152, retainedNodes: !1280)
!1280 = !{!1278}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1282 = !DILocation(line: 0, scope: !1279, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 610, column: 21, scope: !1241)
!1284 = !DILocation(line: 577, column: 10, scope: !1279, inlinedAt: !1283)
!1285 = !{!1286, !693, i64 0}
!1286 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !693, i64 0, !1270, i64 8}
!1287 = !DILocation(line: 578, column: 15, scope: !1279, inlinedAt: !1283)
!1288 = !{!1286, !1270, i64 8}
!1289 = !DILocation(line: 611, column: 18, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1241, file: !32, line: 611, column: 9)
!1291 = !{!1292, !474, i64 0}
!1292 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !474, i64 0, !474, i64 8, !474, i64 16, !474, i64 24}
!1293 = !DILocation(line: 611, column: 27, scope: !1290)
!1294 = !DILocation(line: 611, column: 10, scope: !1290)
!1295 = !DILocation(line: 611, column: 9, scope: !1241)
!1296 = !DILocation(line: 0, scope: !1102, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 612, column: 22, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1290, file: !32, line: 611, column: 46)
!1299 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1297)
!1300 = !DILocation(line: 0, scope: !1112, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1297)
!1302 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1301)
!1303 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1297)
!1304 = !DILocation(line: 0, scope: !1119, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1297)
!1306 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1305)
!1307 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1297)
!1308 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1297)
!1309 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1297)
!1310 = !DILocation(line: 612, column: 16, scope: !1298)
!1311 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1297)
!1312 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1297)
!1313 = !DILocation(line: 0, scope: !1154, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1297)
!1315 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1314)
!1316 = !DILocation(line: 613, column: 9, scope: !1298)
!1317 = !DILocation(line: 616, column: 21, scope: !1241)
!1318 = !DILocation(line: 617, column: 30, scope: !1241)
!1319 = !DILocation(line: 0, scope: !705, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 618, column: 23, scope: !1241)
!1321 = !DILocation(line: 106, column: 21, scope: !705, inlinedAt: !1320)
!1322 = !DILocation(line: 619, column: 16, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1241, file: !32, line: 619, column: 9)
!1324 = !{!1325, !474, i64 8}
!1325 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1326, i64 0, !474, i64 8, !474, i64 16}
!1326 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !1270, i64 0}
!1327 = !DILocation(line: 619, column: 21, scope: !1323)
!1328 = !DILocation(line: 619, column: 9, scope: !1241)
!1329 = !DILocation(line: 0, scope: !1323)
!1330 = !DILocation(line: 624, column: 12, scope: !1241)
!1331 = !DILocation(line: 624, column: 17, scope: !1241)
!1332 = !{!1325, !474, i64 16}
!1333 = !DILocation(line: 0, scope: !1102, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 625, column: 18, scope: !1241)
!1335 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1334)
!1336 = !DILocation(line: 0, scope: !1112, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1334)
!1338 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1337)
!1339 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1334)
!1340 = !DILocation(line: 0, scope: !1119, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1334)
!1342 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1341)
!1343 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1334)
!1344 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1334)
!1345 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1334)
!1346 = !DILocation(line: 625, column: 12, scope: !1241)
!1347 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1334)
!1348 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1334)
!1349 = !DILocation(line: 0, scope: !1154, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1334)
!1351 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1350)
!1352 = !DILocation(line: 627, column: 13, scope: !1241)
!1353 = !{!1292, !474, i64 8}
!1354 = !DILocation(line: 627, column: 5, scope: !1241)
!1355 = !DILocation(line: 0, scope: !733, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 629, column: 23, scope: !1241)
!1357 = !DILocation(line: 110, column: 9, scope: !733, inlinedAt: !1356)
!1358 = !DILocation(line: 111, column: 16, scope: !733, inlinedAt: !1356)
!1359 = !DILocation(line: 111, column: 9, scope: !733, inlinedAt: !1356)
!1360 = !DILocation(line: 112, column: 13, scope: !743, inlinedAt: !1356)
!1361 = distinct !{!1361, !1359, !1362, !746}
!1362 = !DILocation(line: 113, column: 9, scope: !733, inlinedAt: !1356)
!1363 = !DILocation(line: 114, column: 9, scope: !733, inlinedAt: !1356)
!1364 = !DILocation(line: 631, column: 5, scope: !1241)
!1365 = !{!1270, !1270, i64 0}
!1366 = !DILocation(line: 634, column: 1, scope: !1241)
!1367 = !DILocalVariable(name: "this", arg: 1, scope: !1368, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1368 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !122, file: !32, line: 457, type: !129, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !132, retainedNodes: !1369)
!1369 = !{!1367}
!1370 = !DILocation(line: 0, scope: !1368, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 634, column: 1, scope: !1241)
!1372 = !DILocation(line: 0, scope: !758, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 457, column: 41, scope: !1374, inlinedAt: !1371)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !32, line: 457, column: 41)
!1375 = !DILocation(line: 101, column: 9, scope: !764, inlinedAt: !1373)
!1376 = !DILocation(line: 102, column: 9, scope: !764, inlinedAt: !1373)
!1377 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE", scope: !33, file: !32, line: 636, type: !1242, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1387, !1390, !1391, !1394}
!1379 = !DILocalVariable(name: "addr", arg: 1, scope: !1377, file: !32, line: 636, type: !26)
!1380 = !DILocalVariable(name: "control", arg: 2, scope: !1377, file: !32, line: 636, type: !1244)
!1381 = !DILocalVariable(name: "bucket", scope: !1377, file: !32, line: 637, type: !909)
!1382 = !DILocalVariable(name: "data_location", scope: !1377, file: !32, line: 639, type: !136)
!1383 = !DILocalVariable(name: "prev", scope: !1377, file: !32, line: 640, type: !121)
!1384 = !DILocalVariable(name: "data", scope: !1377, file: !32, line: 641, type: !121)
!1385 = !DILocalVariable(name: "cur_addr", scope: !1386, file: !32, line: 643, type: !26)
!1386 = distinct !DILexicalBlock(scope: !1377, file: !32, line: 642, column: 29)
!1387 = !DILocalVariable(name: "next", scope: !1388, file: !32, line: 646, type: !121)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !32, line: 645, column: 31)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !32, line: 645, column: 13)
!1390 = !DILocalVariable(name: "more_waiters", scope: !1388, file: !32, line: 649, type: !66)
!1391 = !DILocalVariable(name: "data2", scope: !1392, file: !32, line: 654, type: !121)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !32, line: 653, column: 20)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !32, line: 651, column: 17)
!1394 = !DILocalVariable(name: "cur_addr2", scope: !1395, file: !32, line: 656, type: !26)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !32, line: 655, column: 59)
!1396 = !DILocation(line: 0, scope: !1377)
!1397 = !DILocation(line: 637, column: 27, scope: !1377)
!1398 = !DILocation(line: 639, column: 42, scope: !1377)
!1399 = !DILocation(line: 641, column: 24, scope: !1377)
!1400 = !DILocation(line: 642, column: 5, scope: !1377)
!1401 = !DILocation(line: 639, column: 18, scope: !1377)
!1402 = !DILocation(line: 640, column: 17, scope: !1377)
!1403 = !DILocation(line: 641, column: 17, scope: !1377)
!1404 = !DILocation(line: 642, column: 17, scope: !1377)
!1405 = !DILocation(line: 644, column: 36, scope: !1386)
!1406 = !DILocation(line: 0, scope: !628, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 644, column: 9, scope: !1386)
!1408 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1407)
!1409 = !DILocation(line: 0, scope: !1386)
!1410 = !DILocation(line: 645, column: 22, scope: !1389)
!1411 = !DILocation(line: 0, scope: !1389)
!1412 = !DILocation(line: 645, column: 13, scope: !1386)
!1413 = !DILocation(line: 0, scope: !1388)
!1414 = !DILocation(line: 647, column: 28, scope: !1388)
!1415 = !DILocation(line: 651, column: 24, scope: !1393)
!1416 = !DILocation(line: 651, column: 29, scope: !1393)
!1417 = !DILocation(line: 651, column: 17, scope: !1388)
!1418 = !DILocation(line: 0, scope: !1392)
!1419 = !DILocation(line: 655, column: 30, scope: !1392)
!1420 = !DILocation(line: 655, column: 17, scope: !1392)
!1421 = !DILocation(line: 652, column: 29, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1393, file: !32, line: 651, column: 38)
!1423 = !DILocation(line: 653, column: 13, scope: !1422)
!1424 = !DILocation(line: 657, column: 49, scope: !1395)
!1425 = !DILocation(line: 0, scope: !628, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 657, column: 21, scope: !1395)
!1427 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1426)
!1428 = !DILocation(line: 0, scope: !1395)
!1429 = !DILocation(line: 658, column: 47, scope: !1395)
!1430 = !DILocation(line: 659, column: 36, scope: !1395)
!1431 = !DILocation(line: 655, column: 41, scope: !1392)
!1432 = distinct !{!1432, !1420, !1433, !746}
!1433 = !DILocation(line: 660, column: 17, scope: !1392)
!1434 = !DILocation(line: 658, column: 34, scope: !1395)
!1435 = !DILocation(line: 663, column: 41, scope: !1388)
!1436 = !DILocation(line: 649, column: 18, scope: !1388)
!1437 = !{!1292, !474, i64 16}
!1438 = !DILocation(line: 663, column: 61, scope: !1388)
!1439 = !DILocation(line: 663, column: 33, scope: !1388)
!1440 = !DILocation(line: 663, column: 19, scope: !1388)
!1441 = !DILocation(line: 663, column: 31, scope: !1388)
!1442 = !DILocation(line: 0, scope: !879, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 665, column: 26, scope: !1388)
!1444 = !DILocation(line: 118, column: 26, scope: !879, inlinedAt: !1443)
!1445 = !DILocation(line: 118, column: 9, scope: !879, inlinedAt: !1443)
!1446 = !DILocation(line: 0, scope: !1102, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 666, column: 26, scope: !1388)
!1448 = !DILocation(line: 0, scope: !1112, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1447)
!1450 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1449)
!1451 = !DILocation(line: 0, scope: !1119, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1447)
!1453 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1452)
!1454 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1447)
!1455 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1447)
!1456 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1447)
!1457 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1447)
!1458 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1447)
!1459 = !DILocation(line: 0, scope: !1154, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1447)
!1461 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1460)
!1462 = !DILocation(line: 0, scope: !886, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 667, column: 26, scope: !1388)
!1464 = !DILocation(line: 122, column: 9, scope: !886, inlinedAt: !1463)
!1465 = !DILocation(line: 122, column: 21, scope: !886, inlinedAt: !1463)
!1466 = !DILocation(line: 123, column: 27, scope: !886, inlinedAt: !1463)
!1467 = !DILocation(line: 123, column: 9, scope: !886, inlinedAt: !1463)
!1468 = !DILocation(line: 0, scope: !895, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 668, column: 26, scope: !1388)
!1470 = !DILocation(line: 127, column: 9, scope: !895, inlinedAt: !1469)
!1471 = distinct !{!1471, !1400, !1472, !746}
!1472 = !DILocation(line: 677, column: 5, scope: !1377)
!1473 = !DILocation(line: 679, column: 13, scope: !1377)
!1474 = !DILocation(line: 679, column: 5, scope: !1377)
!1475 = !DILocation(line: 0, scope: !1102, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 681, column: 18, scope: !1377)
!1477 = !DILocation(line: 0, scope: !1112, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1476)
!1479 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1478)
!1480 = !DILocation(line: 0, scope: !1119, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1476)
!1482 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1481)
!1483 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1476)
!1484 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1476)
!1485 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1476)
!1486 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1476)
!1487 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1476)
!1488 = !DILocation(line: 0, scope: !1154, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1476)
!1490 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1489)
!1491 = !DILocation(line: 684, column: 5, scope: !1377)
!1492 = !DILocation(line: 685, column: 1, scope: !1377)
!1493 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy", scope: !33, file: !32, line: 687, type: !1494, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!26, !26, !26}
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502, !1503, !1505, !1507, !1508, !1509, !1511, !1512, !1517, !1519, !1521}
!1497 = !DILocalVariable(name: "addr", arg: 1, scope: !1493, file: !32, line: 687, type: !26)
!1498 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1493, file: !32, line: 687, type: !26)
!1499 = !DILocalVariable(name: "bucket", scope: !1493, file: !32, line: 688, type: !909)
!1500 = !DILocalVariable(name: "data_location", scope: !1493, file: !32, line: 690, type: !136)
!1501 = !DILocalVariable(name: "prev", scope: !1493, file: !32, line: 691, type: !121)
!1502 = !DILocalVariable(name: "data", scope: !1493, file: !32, line: 692, type: !121)
!1503 = !DILocalVariable(name: "waiters", scope: !1493, file: !32, line: 693, type: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 27, baseType: !556)
!1505 = !DILocalVariable(name: "temp_list_storage", scope: !1493, file: !32, line: 694, type: !1506)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !457)
!1507 = !DILocalVariable(name: "temp_list", scope: !1493, file: !32, line: 695, type: !136)
!1508 = !DILocalVariable(name: "max_waiters", scope: !1493, file: !32, line: 696, type: !1504)
!1509 = !DILocalVariable(name: "cur_addr", scope: !1510, file: !32, line: 699, type: !26)
!1510 = distinct !DILexicalBlock(scope: !1493, file: !32, line: 698, column: 29)
!1511 = !DILocalVariable(name: "next", scope: !1510, file: !32, line: 702, type: !121)
!1512 = !DILocalVariable(name: "temp", scope: !1513, file: !32, line: 711, type: !136)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !32, line: 710, column: 41)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !32, line: 710, column: 17)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !32, line: 703, column: 31)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !32, line: 703, column: 13)
!1517 = !DILocalVariable(name: "i", scope: !1518, file: !32, line: 713, type: !1504)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !32, line: 713, column: 17)
!1519 = !DILocalVariable(name: "i", scope: !1520, file: !32, line: 737, type: !1504)
!1520 = distinct !DILexicalBlock(scope: !1493, file: !32, line: 737, column: 5)
!1521 = !DILocalVariable(name: "i", scope: !1522, file: !32, line: 742, type: !1504)
!1522 = distinct !DILexicalBlock(scope: !1493, file: !32, line: 742, column: 5)
!1523 = !DILocation(line: 0, scope: !1493)
!1524 = !DILocation(line: 688, column: 27, scope: !1493)
!1525 = !DILocation(line: 690, column: 42, scope: !1493)
!1526 = !DILocation(line: 692, column: 24, scope: !1493)
!1527 = !DILocation(line: 694, column: 5, scope: !1493)
!1528 = !DILocation(line: 694, column: 17, scope: !1493)
!1529 = !DILocation(line: 695, column: 31, scope: !1493)
!1530 = !DILocation(line: 698, column: 17, scope: !1493)
!1531 = !DILocation(line: 698, column: 5, scope: !1493)
!1532 = !DILocation(line: 700, column: 36, scope: !1510)
!1533 = !DILocation(line: 0, scope: !628, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 700, column: 9, scope: !1510)
!1535 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1534)
!1536 = !DILocation(line: 702, column: 34, scope: !1510)
!1537 = !DILocation(line: 0, scope: !1510)
!1538 = !DILocation(line: 703, column: 22, scope: !1516)
!1539 = !DILocation(line: 0, scope: !1516)
!1540 = !DILocation(line: 703, column: 13, scope: !1510)
!1541 = !DILocation(line: 706, column: 24, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1515, file: !32, line: 706, column: 17)
!1543 = !DILocation(line: 706, column: 29, scope: !1542)
!1544 = !DILocation(line: 706, column: 17, scope: !1515)
!1545 = !DILocation(line: 707, column: 29, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !32, line: 706, column: 38)
!1547 = !DILocation(line: 708, column: 13, scope: !1546)
!1548 = !DILocation(line: 710, column: 25, scope: !1514)
!1549 = !DILocation(line: 710, column: 17, scope: !1515)
!1550 = !DILocation(line: 0, scope: !1513)
!1551 = !DILocation(line: 712, column: 86, scope: !1513)
!1552 = !DILocation(line: 712, column: 44, scope: !1513)
!1553 = !DILocation(line: 712, column: 29, scope: !1513)
!1554 = !DILocation(line: 0, scope: !1518)
!1555 = !DILocation(line: 713, column: 38, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1518, file: !32, line: 713, column: 17)
!1557 = !DILocation(line: 713, column: 17, scope: !1518)
!1558 = !DILocation(line: 716, column: 29, scope: !1513)
!1559 = !DILocation(line: 717, column: 26, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1513, file: !32, line: 717, column: 21)
!1561 = !DILocation(line: 717, column: 21, scope: !1513)
!1562 = !DILocation(line: 714, column: 36, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1556, file: !32, line: 713, column: 58)
!1564 = !DILocation(line: 714, column: 21, scope: !1563)
!1565 = !DILocation(line: 714, column: 34, scope: !1563)
!1566 = !DILocation(line: 713, column: 54, scope: !1556)
!1567 = distinct !{!1567, !1557, !1568, !746}
!1568 = !DILocation(line: 715, column: 17, scope: !1518)
!1569 = !DILocation(line: 718, column: 26, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1560, file: !32, line: 717, column: 52)
!1571 = !DILocation(line: 718, column: 21, scope: !1570)
!1572 = !DILocation(line: 719, column: 17, scope: !1570)
!1573 = !DILocation(line: 722, column: 19, scope: !1515)
!1574 = !DILocation(line: 722, column: 31, scope: !1515)
!1575 = !DILocation(line: 724, column: 30, scope: !1515)
!1576 = !DILocation(line: 724, column: 13, scope: !1515)
!1577 = !DILocation(line: 724, column: 34, scope: !1515)
!1578 = !DILocation(line: 0, scope: !879, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 725, column: 26, scope: !1515)
!1580 = !DILocation(line: 118, column: 26, scope: !879, inlinedAt: !1579)
!1581 = !DILocation(line: 118, column: 9, scope: !879, inlinedAt: !1579)
!1582 = !DILocation(line: 728, column: 9, scope: !1515)
!1583 = distinct !{!1583, !1531, !1584, !746}
!1584 = !DILocation(line: 733, column: 5, scope: !1493)
!1585 = !DILocation(line: 0, scope: !1102, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 735, column: 18, scope: !1493)
!1587 = !DILocation(line: 305, column: 28, scope: !1102, inlinedAt: !1586)
!1588 = !DILocation(line: 0, scope: !1112, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 305, column: 9, scope: !1102, inlinedAt: !1586)
!1590 = !DILocation(line: 65, column: 11, scope: !1112, inlinedAt: !1589)
!1591 = !DILocation(line: 307, column: 51, scope: !1102, inlinedAt: !1586)
!1592 = !DILocation(line: 0, scope: !1119, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 307, column: 25, scope: !1102, inlinedAt: !1586)
!1594 = !DILocation(line: 196, column: 12, scope: !1119, inlinedAt: !1593)
!1595 = !DILocation(line: 310, column: 39, scope: !1102, inlinedAt: !1586)
!1596 = !DILocation(line: 310, column: 57, scope: !1102, inlinedAt: !1586)
!1597 = !DILocation(line: 313, column: 31, scope: !1128, inlinedAt: !1586)
!1598 = !DILocation(line: 735, column: 12, scope: !1493)
!1599 = !DILocation(line: 314, column: 13, scope: !1131, inlinedAt: !1586)
!1600 = !DILocation(line: 315, column: 9, scope: !1131, inlinedAt: !1586)
!1601 = !DILocation(line: 0, scope: !1154, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 317, column: 9, scope: !1102, inlinedAt: !1586)
!1603 = !DILocation(line: 68, column: 5, scope: !1154, inlinedAt: !1602)
!1604 = !DILocation(line: 0, scope: !1520)
!1605 = !DILocation(line: 737, column: 26, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1520, file: !32, line: 737, column: 5)
!1607 = !DILocation(line: 737, column: 5, scope: !1520)
!1608 = !DILocation(line: 0, scope: !1522)
!1609 = !DILocation(line: 742, column: 5, scope: !1522)
!1610 = !DILocation(line: 738, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1606, file: !32, line: 737, column: 42)
!1612 = !DILocation(line: 0, scope: !886, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 738, column: 30, scope: !1611)
!1614 = !DILocation(line: 122, column: 9, scope: !886, inlinedAt: !1613)
!1615 = !DILocation(line: 122, column: 21, scope: !886, inlinedAt: !1613)
!1616 = !DILocation(line: 123, column: 27, scope: !886, inlinedAt: !1613)
!1617 = !DILocation(line: 123, column: 9, scope: !886, inlinedAt: !1613)
!1618 = !DILocation(line: 737, column: 38, scope: !1606)
!1619 = distinct !{!1619, !1607, !1620, !746}
!1620 = !DILocation(line: 739, column: 5, scope: !1520)
!1621 = !DILocation(line: 746, column: 19, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1493, file: !32, line: 746, column: 9)
!1623 = !DILocation(line: 746, column: 9, scope: !1493)
!1624 = !DILocation(line: 743, column: 9, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !32, line: 742, column: 42)
!1626 = distinct !DILexicalBlock(scope: !1522, file: !32, line: 742, column: 5)
!1627 = !DILocation(line: 0, scope: !895, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 743, column: 30, scope: !1625)
!1629 = !DILocation(line: 127, column: 28, scope: !895, inlinedAt: !1628)
!1630 = !DILocation(line: 127, column: 9, scope: !895, inlinedAt: !1628)
!1631 = !DILocation(line: 742, column: 38, scope: !1626)
!1632 = !DILocation(line: 742, column: 26, scope: !1626)
!1633 = distinct !{!1633, !1609, !1634, !746}
!1634 = !DILocation(line: 744, column: 5, scope: !1522)
!1635 = !DILocation(line: 747, column: 14, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1622, file: !32, line: 746, column: 45)
!1637 = !DILocation(line: 747, column: 9, scope: !1636)
!1638 = !DILocation(line: 748, column: 5, scope: !1636)
!1639 = !DILocation(line: 751, column: 1, scope: !1493)
!1640 = !DILocation(line: 750, column: 5, scope: !1493)
!1641 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy", scope: !33, file: !32, line: 753, type: !1642, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!161, !26, !26, !1244, !26}
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1659}
!1645 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1641, file: !32, line: 753, type: !26)
!1646 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1641, file: !32, line: 753, type: !26)
!1647 = !DILocalVariable(name: "control", arg: 3, scope: !1641, file: !32, line: 753, type: !1244)
!1648 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1641, file: !32, line: 753, type: !26)
!1649 = !DILocalVariable(name: "buckets", scope: !1641, file: !32, line: 754, type: !963)
!1650 = !DILocalVariable(name: "action", scope: !1641, file: !32, line: 756, type: !148)
!1651 = !DILocalVariable(name: "data_location", scope: !1641, file: !32, line: 762, type: !136)
!1652 = !DILocalVariable(name: "prev", scope: !1641, file: !32, line: 763, type: !121)
!1653 = !DILocalVariable(name: "data", scope: !1641, file: !32, line: 764, type: !121)
!1654 = !DILocalVariable(name: "requeue", scope: !1641, file: !32, line: 765, type: !121)
!1655 = !DILocalVariable(name: "requeue_tail", scope: !1641, file: !32, line: 766, type: !121)
!1656 = !DILocalVariable(name: "wakeup", scope: !1641, file: !32, line: 767, type: !121)
!1657 = !DILocalVariable(name: "cur_addr", scope: !1658, file: !32, line: 770, type: !26)
!1658 = distinct !DILexicalBlock(scope: !1641, file: !32, line: 769, column: 29)
!1659 = !DILocalVariable(name: "next", scope: !1658, file: !32, line: 773, type: !121)
!1660 = !DILocation(line: 0, scope: !1641)
!1661 = !DILocation(line: 754, column: 5, scope: !1641)
!1662 = !DILocation(line: 754, column: 17, scope: !1641)
!1663 = !DILocation(line: 754, column: 27, scope: !1641)
!1664 = !DILocation(line: 756, column: 5, scope: !1641)
!1665 = !DILocation(line: 756, column: 21, scope: !1641)
!1666 = !DILocation(line: 0, scope: !1279, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 756, column: 21, scope: !1641)
!1668 = !DILocation(line: 577, column: 10, scope: !1279, inlinedAt: !1667)
!1669 = !DILocation(line: 578, column: 15, scope: !1279, inlinedAt: !1667)
!1670 = !DILocation(line: 757, column: 18, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1641, file: !32, line: 757, column: 9)
!1672 = !DILocation(line: 757, column: 27, scope: !1671)
!1673 = !DILocation(line: 757, column: 10, scope: !1671)
!1674 = !DILocation(line: 757, column: 9, scope: !1641)
!1675 = !DILocation(line: 758, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !32, line: 757, column: 46)
!1677 = !DILocation(line: 759, column: 9, scope: !1676)
!1678 = !DILocation(line: 762, column: 43, scope: !1641)
!1679 = !DILocation(line: 762, column: 48, scope: !1641)
!1680 = !DILocation(line: 764, column: 24, scope: !1641)
!1681 = !DILocation(line: 769, column: 17, scope: !1641)
!1682 = !DILocation(line: 769, column: 5, scope: !1641)
!1683 = !DILocation(line: 771, column: 36, scope: !1658)
!1684 = !DILocation(line: 0, scope: !628, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 771, column: 9, scope: !1658)
!1686 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1685)
!1687 = !DILocation(line: 773, column: 34, scope: !1658)
!1688 = !DILocation(line: 0, scope: !1658)
!1689 = !DILocation(line: 774, column: 22, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1658, file: !32, line: 774, column: 13)
!1691 = !DILocation(line: 774, column: 13, scope: !1658)
!1692 = !DILocation(line: 775, column: 28, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !32, line: 774, column: 36)
!1694 = !DILocation(line: 777, column: 25, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1693, file: !32, line: 777, column: 17)
!1696 = !DILocation(line: 777, column: 30, scope: !1695)
!1697 = !DILocation(line: 777, column: 35, scope: !1695)
!1698 = !DILocation(line: 777, column: 17, scope: !1693)
!1699 = !DILocation(line: 778, column: 35, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1695, file: !32, line: 777, column: 44)
!1701 = !DILocation(line: 779, column: 13, scope: !1700)
!1702 = !DILocation(line: 781, column: 24, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1693, file: !32, line: 781, column: 17)
!1704 = !DILocation(line: 781, column: 35, scope: !1703)
!1705 = !DILocation(line: 784, column: 29, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !32, line: 784, column: 21)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !32, line: 783, column: 20)
!1708 = !DILocation(line: 784, column: 21, scope: !1707)
!1709 = !DILocation(line: 787, column: 35, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !32, line: 786, column: 24)
!1711 = !DILocation(line: 787, column: 40, scope: !1710)
!1712 = !DILocalVariable(name: "addr", arg: 1, scope: !1713, file: !32, line: 213, type: !173)
!1713 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPyS4_", scope: !629, file: !32, line: 213, type: !1714, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !173, !173}
!1716 = !{!1712, !1717}
!1717 = !DILocalVariable(name: "val", arg: 2, scope: !1713, file: !32, line: 213, type: !173)
!1718 = !DILocation(line: 0, scope: !1713, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 791, column: 17, scope: !1707)
!1720 = !DILocation(line: 214, column: 5, scope: !1713, inlinedAt: !1719)
!1721 = !DILocation(line: 765, column: 17, scope: !1641)
!1722 = !DILocation(line: 766, column: 17, scope: !1641)
!1723 = distinct !{!1723, !1682, !1724, !746}
!1724 = !DILocation(line: 800, column: 5, scope: !1641)
!1725 = !DILocation(line: 802, column: 17, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1641, file: !32, line: 802, column: 9)
!1727 = !DILocation(line: 802, column: 9, scope: !1641)
!1728 = !DILocation(line: 803, column: 23, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !32, line: 802, column: 29)
!1730 = !DILocation(line: 803, column: 28, scope: !1729)
!1731 = !DILocation(line: 804, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !32, line: 804, column: 13)
!1733 = !DILocation(line: 804, column: 24, scope: !1732)
!1734 = !DILocation(line: 804, column: 29, scope: !1732)
!1735 = !DILocation(line: 804, column: 13, scope: !1729)
!1736 = !DILocation(line: 807, column: 24, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !32, line: 806, column: 16)
!1738 = !DILocation(line: 807, column: 30, scope: !1737)
!1739 = !DILocation(line: 0, scope: !1732)
!1740 = !DILocation(line: 809, column: 20, scope: !1729)
!1741 = !DILocation(line: 809, column: 25, scope: !1729)
!1742 = !DILocation(line: 810, column: 5, scope: !1729)
!1743 = !DILocation(line: 812, column: 13, scope: !1641)
!1744 = !{!1292, !474, i64 24}
!1745 = !DILocation(line: 812, column: 55, scope: !1641)
!1746 = !DILocation(line: 812, column: 5, scope: !1641)
!1747 = !DILocation(line: 814, column: 9, scope: !1641)
!1748 = !DILocation(line: 815, column: 17, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !32, line: 814, column: 28)
!1750 = distinct !DILexicalBlock(scope: !1641, file: !32, line: 814, column: 9)
!1751 = !DILocation(line: 815, column: 29, scope: !1749)
!1752 = !DILocation(line: 0, scope: !879, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 816, column: 24, scope: !1749)
!1754 = !DILocation(line: 118, column: 26, scope: !879, inlinedAt: !1753)
!1755 = !DILocation(line: 118, column: 9, scope: !879, inlinedAt: !1753)
!1756 = !DILocation(line: 817, column: 9, scope: !1749)
!1757 = !DILocation(line: 0, scope: !886, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 818, column: 24, scope: !1749)
!1759 = !DILocation(line: 122, column: 9, scope: !886, inlinedAt: !1758)
!1760 = !DILocation(line: 122, column: 21, scope: !886, inlinedAt: !1758)
!1761 = !DILocation(line: 123, column: 27, scope: !886, inlinedAt: !1758)
!1762 = !DILocation(line: 123, column: 9, scope: !886, inlinedAt: !1758)
!1763 = !DILocation(line: 0, scope: !895, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 819, column: 24, scope: !1749)
!1765 = !DILocation(line: 127, column: 9, scope: !895, inlinedAt: !1764)
!1766 = !DILocation(line: 820, column: 5, scope: !1749)
!1767 = !DILocation(line: 821, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1750, file: !32, line: 820, column: 12)
!1769 = !DILocation(line: 824, column: 30, scope: !1641)
!1770 = !DILocation(line: 824, column: 12, scope: !1641)
!1771 = !DILocation(line: 825, column: 1, scope: !1641)
!1772 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 840, type: !145, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1773)
!1773 = !{!1774, !1775, !1776, !1777}
!1774 = !DILocalVariable(name: "control", arg: 1, scope: !1772, file: !32, line: 840, type: !15)
!1775 = !DILocalVariable(name: "action", arg: 2, scope: !1772, file: !32, line: 840, type: !147)
!1776 = !DILocalVariable(name: "mutex_control", scope: !1772, file: !32, line: 841, type: !137)
!1777 = !DILocalVariable(name: "result", scope: !1772, file: !32, line: 843, type: !26)
!1778 = !DILocation(line: 0, scope: !1772)
!1779 = !DILocation(line: 844, column: 40, scope: !1772)
!1780 = !{!1781, !474, i64 32}
!1781 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !474, i64 32}
!1782 = !DILocation(line: 0, scope: !628, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 844, column: 5, scope: !1772)
!1784 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1783)
!1785 = !DILocation(line: 845, column: 19, scope: !1772)
!1786 = !DILocation(line: 845, column: 5, scope: !1772)
!1787 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !33, file: !32, line: 849, type: !159, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793}
!1789 = !DILocalVariable(name: "control", arg: 1, scope: !1787, file: !32, line: 849, type: !15)
!1790 = !DILocalVariable(name: "unparked", arg: 2, scope: !1787, file: !32, line: 849, type: !161)
!1791 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1787, file: !32, line: 849, type: !66)
!1792 = !DILocalVariable(name: "mutex_control", scope: !1787, file: !32, line: 850, type: !137)
!1793 = !DILocalVariable(name: "return_state", scope: !1787, file: !32, line: 853, type: !26)
!1794 = !DILocation(line: 0, scope: !1787)
!1795 = !DILocation(line: 853, column: 30, scope: !1787)
!1796 = !DILocation(line: 854, column: 41, scope: !1787)
!1797 = !DILocalVariable(name: "addr", arg: 1, scope: !1798, file: !32, line: 218, type: !632)
!1798 = distinct !DISubprogram(name: "atomic_store_release<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIyEEvPT_S6_", scope: !629, file: !32, line: 218, type: !630, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !635, retainedNodes: !1799)
!1799 = !{!1797, !1800}
!1800 = !DILocalVariable(name: "val", arg: 2, scope: !1798, file: !32, line: 218, type: !632)
!1801 = !DILocation(line: 0, scope: !1798, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 854, column: 5, scope: !1787)
!1803 = !DILocation(line: 219, column: 5, scope: !1798, inlinedAt: !1802)
!1804 = !DILocation(line: 856, column: 5, scope: !1787)
!1805 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !33, file: !32, line: 968, type: !159, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1806)
!1806 = !{!1807, !1808, !1809, !1810, !1811}
!1807 = !DILocalVariable(name: "control", arg: 1, scope: !1805, file: !32, line: 968, type: !15)
!1808 = !DILocalVariable(name: "unparked", arg: 2, scope: !1805, file: !32, line: 968, type: !161)
!1809 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1805, file: !32, line: 968, type: !66)
!1810 = !DILocalVariable(name: "signal_control", scope: !1805, file: !32, line: 969, type: !178)
!1811 = !DILocalVariable(name: "val", scope: !1812, file: !32, line: 972, type: !26)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !32, line: 971, column: 24)
!1813 = distinct !DILexicalBlock(scope: !1805, file: !32, line: 971, column: 9)
!1814 = !DILocation(line: 0, scope: !1805)
!1815 = !DILocation(line: 971, column: 9, scope: !1805)
!1816 = !DILocation(line: 0, scope: !1812)
!1817 = !DILocation(line: 973, column: 46, scope: !1812)
!1818 = !{!1819, !474, i64 32}
!1819 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !474, i64 32, !474, i64 40}
!1820 = !DILocation(line: 0, scope: !1713, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 973, column: 9, scope: !1812)
!1822 = !DILocation(line: 214, column: 5, scope: !1713, inlinedAt: !1821)
!1823 = !DILocation(line: 974, column: 5, scope: !1812)
!1824 = !DILocation(line: 979, column: 5, scope: !1805)
!1825 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 996, type: !145, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DILocalVariable(name: "control", arg: 1, scope: !1825, file: !32, line: 996, type: !15)
!1828 = !DILocalVariable(name: "action", arg: 2, scope: !1825, file: !32, line: 996, type: !147)
!1829 = !DILocalVariable(name: "broadcast_control", scope: !1825, file: !32, line: 997, type: !203)
!1830 = !DILocalVariable(name: "val", scope: !1825, file: !32, line: 999, type: !26)
!1831 = !DILocation(line: 0, scope: !1825)
!1832 = !DILocation(line: 1000, column: 44, scope: !1825)
!1833 = !{!1834, !474, i64 32}
!1834 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !474, i64 32, !474, i64 40}
!1835 = !DILocation(line: 0, scope: !628, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 1000, column: 5, scope: !1825)
!1837 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1836)
!1838 = !DILocation(line: 1004, column: 46, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1825, file: !32, line: 1004, column: 9)
!1840 = !{!1834, !474, i64 40}
!1841 = !DILocation(line: 1004, column: 16, scope: !1839)
!1842 = !DILocation(line: 1004, column: 13, scope: !1839)
!1843 = !DILocation(line: 1004, column: 9, scope: !1825)
!1844 = !DILocation(line: 0, scope: !1713, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 1009, column: 5, scope: !1825)
!1846 = !DILocation(line: 214, column: 5, scope: !1713, inlinedAt: !1845)
!1847 = !DILocation(line: 1011, column: 45, scope: !1825)
!1848 = !DILocalVariable(name: "this", arg: 1, scope: !1849, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1849 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !185, file: !32, line: 938, type: !196, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !195, retainedNodes: !1850)
!1850 = !{!1848, !1851, !1852}
!1851 = !DILocalVariable(name: "val", scope: !1849, file: !32, line: 939, type: !26)
!1852 = !DILocalVariable(name: "desired", scope: !1853, file: !32, line: 946, type: !26)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !32, line: 941, column: 22)
!1854 = !DILocation(line: 0, scope: !1849, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 1011, column: 52, scope: !1825)
!1856 = !DILocation(line: 940, column: 30, scope: !1849, inlinedAt: !1855)
!1857 = !DILocation(line: 0, scope: !628, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 940, column: 9, scope: !1849, inlinedAt: !1855)
!1859 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1858)
!1860 = !DILocation(line: 942, column: 23, scope: !1861, inlinedAt: !1855)
!1861 = distinct !DILexicalBlock(scope: !1853, file: !32, line: 942, column: 17)
!1862 = !DILocation(line: 942, column: 18, scope: !1861, inlinedAt: !1855)
!1863 = !DILocation(line: 942, column: 17, scope: !1853, inlinedAt: !1855)
!1864 = !DILocation(line: 946, column: 37, scope: !1853, inlinedAt: !1855)
!1865 = !DILocation(line: 0, scope: !1853, inlinedAt: !1855)
!1866 = !DILocalVariable(name: "addr", arg: 1, scope: !1867, file: !32, line: 187, type: !173)
!1867 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPyS4_S4_", scope: !629, file: !32, line: 187, type: !648, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1868 = !{!1866, !1869, !1870}
!1869 = !DILocalVariable(name: "expected", arg: 2, scope: !1867, file: !32, line: 187, type: !173)
!1870 = !DILocalVariable(name: "desired", arg: 3, scope: !1867, file: !32, line: 187, type: !173)
!1871 = !DILocation(line: 0, scope: !1867, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 947, column: 17, scope: !1873, inlinedAt: !1855)
!1873 = distinct !DILexicalBlock(scope: !1853, file: !32, line: 947, column: 17)
!1874 = !DILocation(line: 188, column: 12, scope: !1867, inlinedAt: !1872)
!1875 = !DILocation(line: 1011, column: 12, scope: !1825)
!1876 = !DILocation(line: 1011, column: 23, scope: !1825)
!1877 = !DILocation(line: 1013, column: 5, scope: !1825)
!1878 = !DILocation(line: 1014, column: 1, scope: !1825)
!1879 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !33, file: !32, line: 1016, type: !164, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1880 = !{!1881, !1882, !1883, !1884, !1885}
!1881 = !DILocalVariable(name: "control", arg: 1, scope: !1879, file: !32, line: 1016, type: !15)
!1882 = !DILocalVariable(name: "action", arg: 2, scope: !1879, file: !32, line: 1016, type: !166)
!1883 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1879, file: !32, line: 1016, type: !66)
!1884 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1879, file: !32, line: 1016, type: !66)
!1885 = !DILocalVariable(name: "broadcast_control", scope: !1879, file: !32, line: 1017, type: !203)
!1886 = !DILocation(line: 0, scope: !1879)
!1887 = !DILocation(line: 1019, column: 16, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1879, file: !32, line: 1019, column: 9)
!1889 = !DILocation(line: 1019, column: 27, scope: !1888)
!1890 = !DILocation(line: 1020, column: 28, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !32, line: 1019, column: 45)
!1892 = !DILocalVariable(name: "this", arg: 1, scope: !1893, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1893 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !185, file: !32, line: 953, type: !189, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !198, retainedNodes: !1894)
!1894 = !{!1892}
!1895 = !DILocation(line: 0, scope: !1893, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 1020, column: 35, scope: !1891)
!1897 = !DILocation(line: 954, column: 34, scope: !1893, inlinedAt: !1896)
!1898 = !DILocalVariable(name: "addr", arg: 1, scope: !1899, file: !32, line: 209, type: !173)
!1899 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPyy", scope: !629, file: !32, line: 209, type: !871, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1900 = !{!1898, !1901}
!1901 = !DILocalVariable(name: "val", arg: 2, scope: !1899, file: !32, line: 209, type: !26)
!1902 = !DILocation(line: 0, scope: !1899, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 954, column: 9, scope: !1893, inlinedAt: !1896)
!1904 = !DILocation(line: 210, column: 12, scope: !1899, inlinedAt: !1903)
!1905 = !DILocation(line: 1021, column: 5, scope: !1891)
!1906 = !DILocation(line: 1022, column: 1, scope: !1879)
!1907 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 1038, type: !145, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1908)
!1908 = !{!1909, !1910, !1911, !1912}
!1909 = !DILocalVariable(name: "control", arg: 1, scope: !1907, file: !32, line: 1038, type: !15)
!1910 = !DILocalVariable(name: "action", arg: 2, scope: !1907, file: !32, line: 1038, type: !147)
!1911 = !DILocalVariable(name: "wait_control", scope: !1907, file: !32, line: 1039, type: !213)
!1912 = !DILocalVariable(name: "val", scope: !1907, file: !32, line: 1041, type: !26)
!1913 = !DILocation(line: 0, scope: !1907)
!1914 = !DILocation(line: 1042, column: 39, scope: !1907)
!1915 = !{!1916, !474, i64 32}
!1916 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !474, i64 32, !474, i64 40}
!1917 = !DILocation(line: 0, scope: !628, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 1042, column: 5, scope: !1907)
!1919 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !1918)
!1920 = !DILocation(line: 1044, column: 13, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1907, file: !32, line: 1044, column: 9)
!1922 = !DILocation(line: 0, scope: !1921)
!1923 = !{!1916, !474, i64 40}
!1924 = !DILocation(line: 1044, column: 9, scope: !1907)
!1925 = !DILocation(line: 0, scope: !1713, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 1046, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1921, file: !32, line: 1044, column: 19)
!1928 = !DILocation(line: 214, column: 5, scope: !1713, inlinedAt: !1926)
!1929 = !DILocation(line: 1047, column: 5, scope: !1927)
!1930 = !DILocation(line: 1047, column: 20, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1921, file: !32, line: 1047, column: 16)
!1932 = !DILocation(line: 1047, column: 16, scope: !1921)
!1933 = !DILocation(line: 1049, column: 16, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !32, line: 1047, column: 55)
!1935 = !DILocation(line: 1049, column: 36, scope: !1934)
!1936 = !DILocation(line: 1050, column: 9, scope: !1934)
!1937 = !DILocation(line: 1054, column: 1, scope: !1907)
!1938 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !33, file: !32, line: 1056, type: !13, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "control", arg: 1, scope: !1938, file: !32, line: 1056, type: !15)
!1941 = !DILocalVariable(name: "wait_control", scope: !1938, file: !32, line: 1057, type: !213)
!1942 = !DILocation(line: 0, scope: !1938)
!1943 = !DILocation(line: 1059, column: 19, scope: !1938)
!1944 = !DILocalVariable(name: "this", arg: 1, scope: !1945, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1945 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !185, file: !32, line: 929, type: !189, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !194, retainedNodes: !1946)
!1946 = !{!1944, !1947, !1948}
!1947 = !DILocalVariable(name: "expected", scope: !1945, file: !32, line: 930, type: !26)
!1948 = !DILocalVariable(name: "desired", scope: !1945, file: !32, line: 931, type: !26)
!1949 = !DILocation(line: 0, scope: !1945, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 1059, column: 26, scope: !1938)
!1951 = !DILocation(line: 933, column: 47, scope: !1952, inlinedAt: !1950)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !32, line: 933, column: 13)
!1953 = !DILocation(line: 0, scope: !724, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 933, column: 14, scope: !1952, inlinedAt: !1950)
!1955 = !DILocation(line: 184, column: 12, scope: !724, inlinedAt: !1954)
!1956 = !DILocation(line: 933, column: 13, scope: !1945, inlinedAt: !1950)
!1957 = !DILocalVariable(name: "this", arg: 1, scope: !1958, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1958 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !185, file: !32, line: 906, type: !189, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !192, retainedNodes: !1959)
!1959 = !{!1957, !1960, !1961, !1962}
!1960 = !DILocalVariable(name: "expected", scope: !1958, file: !32, line: 907, type: !26)
!1961 = !DILocalVariable(name: "desired", scope: !1958, file: !32, line: 908, type: !26)
!1962 = !DILocalVariable(name: "control", scope: !1958, file: !32, line: 915, type: !138)
!1963 = !DILocation(line: 0, scope: !1958, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 934, column: 13, scope: !1965, inlinedAt: !1950)
!1965 = distinct !DILexicalBlock(scope: !1952, file: !32, line: 933, column: 76)
!1966 = !DILocalVariable(name: "addr", arg: 1, scope: !1967, file: !32, line: 174, type: !173)
!1967 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPyS4_S4_", scope: !629, file: !32, line: 174, type: !648, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1968 = !{!1966, !1969, !1970}
!1969 = !DILocalVariable(name: "expected", arg: 2, scope: !1967, file: !32, line: 174, type: !173)
!1970 = !DILocalVariable(name: "desired", arg: 3, scope: !1967, file: !32, line: 174, type: !173)
!1971 = !DILocation(line: 0, scope: !1967, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 911, column: 13, scope: !1973, inlinedAt: !1964)
!1973 = distinct !DILexicalBlock(scope: !1958, file: !32, line: 911, column: 13)
!1974 = !DILocation(line: 175, column: 12, scope: !1967, inlinedAt: !1972)
!1975 = !DILocation(line: 911, column: 13, scope: !1958, inlinedAt: !1964)
!1976 = !DILocation(line: 915, column: 9, scope: !1958, inlinedAt: !1964)
!1977 = !DILocation(line: 915, column: 31, scope: !1958, inlinedAt: !1964)
!1978 = !DILocalVariable(name: "this", arg: 1, scope: !1979, type: !137, flags: DIFlagArtificial | DIFlagObjectPointer)
!1979 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPy", scope: !138, file: !32, line: 832, type: !175, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !174, retainedNodes: !1980)
!1980 = !{!1978, !1981}
!1981 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1979, file: !32, line: 832, type: !173)
!1982 = !DILocation(line: 0, scope: !1979, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 915, column: 31, scope: !1958, inlinedAt: !1964)
!1984 = !DILocalVariable(name: "this", arg: 1, scope: !1985, type: !1987, flags: DIFlagArtificial | DIFlagObjectPointer)
!1985 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !141, file: !32, line: 598, type: !169, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !168, retainedNodes: !1986)
!1986 = !{!1984}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!1988 = !DILocation(line: 0, scope: !1985, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 832, column: 19, scope: !1979, inlinedAt: !1983)
!1990 = !DILocation(line: 599, column: 11, scope: !1985, inlinedAt: !1989)
!1991 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !1989)
!1992 = !DILocation(line: 600, column: 11, scope: !1985, inlinedAt: !1989)
!1993 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !1989)
!1994 = !DILocation(line: 833, column: 11, scope: !1979, inlinedAt: !1983)
!1995 = !DILocation(line: 834, column: 18, scope: !1996, inlinedAt: !1983)
!1996 = distinct !DILexicalBlock(scope: !1979, file: !32, line: 833, column: 34)
!1997 = !DILocation(line: 835, column: 16, scope: !1996, inlinedAt: !1983)
!1998 = !DILocation(line: 916, column: 20, scope: !1958, inlinedAt: !1964)
!1999 = !DILocation(line: 916, column: 37, scope: !1958, inlinedAt: !1964)
!2000 = !DILocation(line: 916, column: 9, scope: !1958, inlinedAt: !1964)
!2001 = !DILocation(line: 917, column: 5, scope: !1958, inlinedAt: !1964)
!2002 = !DILocation(line: 1060, column: 1, scope: !1938)
!2003 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !33, file: !32, line: 1062, type: !159, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2004 = !{!2005, !2006, !2007, !2008, !2009}
!2005 = !DILocalVariable(name: "control", arg: 1, scope: !2003, file: !32, line: 1062, type: !15)
!2006 = !DILocalVariable(name: "unparked", arg: 2, scope: !2003, file: !32, line: 1062, type: !161)
!2007 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !2003, file: !32, line: 1062, type: !66)
!2008 = !DILocalVariable(name: "wait_control", scope: !2003, file: !32, line: 1063, type: !213)
!2009 = !DILocalVariable(name: "val", scope: !2010, file: !32, line: 1066, type: !26)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !32, line: 1065, column: 24)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !32, line: 1065, column: 9)
!2012 = !DILocation(line: 0, scope: !2003)
!2013 = !DILocation(line: 1065, column: 9, scope: !2003)
!2014 = !DILocation(line: 0, scope: !2010)
!2015 = !DILocation(line: 1067, column: 44, scope: !2010)
!2016 = !DILocation(line: 0, scope: !1713, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 1067, column: 9, scope: !2010)
!2018 = !DILocation(line: 214, column: 5, scope: !1713, inlinedAt: !2017)
!2019 = !DILocation(line: 1068, column: 5, scope: !2010)
!2020 = !DILocation(line: 1069, column: 5, scope: !2003)
!2021 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !32, file: !32, line: 1131, type: !2022, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !240}
!2024 = !{!2025, !2026}
!2025 = !DILocalVariable(name: "mutex", arg: 1, scope: !2021, file: !32, line: 1131, type: !240)
!2026 = !DILocalVariable(name: "fast_mutex", scope: !2021, file: !32, line: 1132, type: !184)
!2027 = !DILocation(line: 0, scope: !2021)
!2028 = !DILocalVariable(name: "this", arg: 1, scope: !2029, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!2029 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !185, file: !32, line: 920, type: !189, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !193, retainedNodes: !2030)
!2030 = !{!2028, !2031, !2032}
!2031 = !DILocalVariable(name: "expected", scope: !2029, file: !32, line: 921, type: !26)
!2032 = !DILocalVariable(name: "desired", scope: !2029, file: !32, line: 922, type: !26)
!2033 = !DILocation(line: 0, scope: !2029, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 1134, column: 17, scope: !2021)
!2035 = !DILocation(line: 924, column: 47, scope: !2036, inlinedAt: !2034)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !32, line: 924, column: 13)
!2037 = !DILocation(line: 0, scope: !647, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 924, column: 14, scope: !2036, inlinedAt: !2034)
!2039 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !2038)
!2040 = !DILocation(line: 924, column: 13, scope: !2029, inlinedAt: !2034)
!2041 = !DILocalVariable(name: "this", arg: 1, scope: !2042, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!2042 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !185, file: !32, line: 862, type: !189, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !188, retainedNodes: !2043)
!2043 = !{!2041, !2044, !2045, !2046, !2050, !2053, !2054}
!2044 = !DILocalVariable(name: "spinner", scope: !2042, file: !32, line: 864, type: !606)
!2045 = !DILocalVariable(name: "expected", scope: !2042, file: !32, line: 865, type: !26)
!2046 = !DILocalVariable(name: "desired", scope: !2047, file: !32, line: 870, type: !26)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !32, line: 869, column: 41)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !32, line: 869, column: 17)
!2049 = distinct !DILexicalBlock(scope: !2042, file: !32, line: 868, column: 22)
!2050 = !DILocalVariable(name: "desired", scope: !2051, file: !32, line: 888, type: !26)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !32, line: 887, column: 47)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !32, line: 887, column: 17)
!2053 = !DILocalVariable(name: "control", scope: !2049, file: !32, line: 895, type: !138)
!2054 = !DILocalVariable(name: "result", scope: !2049, file: !32, line: 896, type: !26)
!2055 = !DILocation(line: 0, scope: !2042, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 925, column: 13, scope: !2057, inlinedAt: !2034)
!2057 = distinct !DILexicalBlock(scope: !2036, file: !32, line: 924, column: 76)
!2058 = !DILocation(line: 0, scope: !628, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 866, column: 9, scope: !2042, inlinedAt: !2056)
!2060 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2059)
!2061 = !DILocation(line: 868, column: 9, scope: !2042, inlinedAt: !2056)
!2062 = !DILocation(line: 869, column: 28, scope: !2048, inlinedAt: !2056)
!2063 = !DILocation(line: 869, column: 18, scope: !2048, inlinedAt: !2056)
!2064 = !DILocation(line: 869, column: 17, scope: !2049, inlinedAt: !2056)
!2065 = !DILocation(line: 870, column: 46, scope: !2047, inlinedAt: !2056)
!2066 = !DILocation(line: 0, scope: !2047, inlinedAt: !2056)
!2067 = !DILocation(line: 0, scope: !647, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 871, column: 21, scope: !2069, inlinedAt: !2056)
!2069 = distinct !DILexicalBlock(scope: !2047, file: !32, line: 871, column: 21)
!2070 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !2068)
!2071 = !DILocation(line: 238, column: 24, scope: !670, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 880, column: 25, scope: !2073, inlinedAt: !2056)
!2073 = distinct !DILexicalBlock(scope: !2049, file: !32, line: 880, column: 17)
!2074 = !DILocation(line: 0, scope: !661, inlinedAt: !2072)
!2075 = !DILocation(line: 238, column: 13, scope: !661, inlinedAt: !2072)
!2076 = !DILocation(line: 241, column: 27, scope: !661, inlinedAt: !2072)
!2077 = !DILocation(line: 880, column: 17, scope: !2049, inlinedAt: !2056)
!2078 = !DILocation(line: 239, column: 23, scope: !669, inlinedAt: !2072)
!2079 = !DILocation(line: 881, column: 17, scope: !2080, inlinedAt: !2056)
!2080 = distinct !DILexicalBlock(scope: !2073, file: !32, line: 880, column: 40)
!2081 = !DILocation(line: 0, scope: !628, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 882, column: 17, scope: !2080, inlinedAt: !2056)
!2083 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2082)
!2084 = !DILocation(line: 883, column: 17, scope: !2080, inlinedAt: !2056)
!2085 = !DILocation(line: 887, column: 27, scope: !2052, inlinedAt: !2056)
!2086 = !DILocation(line: 887, column: 41, scope: !2052, inlinedAt: !2056)
!2087 = !DILocation(line: 887, column: 17, scope: !2049, inlinedAt: !2056)
!2088 = !DILocation(line: 888, column: 46, scope: !2051, inlinedAt: !2056)
!2089 = !DILocation(line: 0, scope: !2051, inlinedAt: !2056)
!2090 = !DILocation(line: 0, scope: !1867, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 889, column: 22, scope: !2092, inlinedAt: !2056)
!2092 = distinct !DILexicalBlock(scope: !2051, file: !32, line: 889, column: 21)
!2093 = !DILocation(line: 188, column: 12, scope: !1867, inlinedAt: !2091)
!2094 = !DILocation(line: 895, column: 13, scope: !2049, inlinedAt: !2056)
!2095 = !DILocation(line: 895, column: 35, scope: !2049, inlinedAt: !2056)
!2096 = !DILocation(line: 0, scope: !1979, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 895, column: 35, scope: !2049, inlinedAt: !2056)
!2098 = !DILocation(line: 0, scope: !1985, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 832, column: 19, scope: !1979, inlinedAt: !2097)
!2100 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !2099)
!2101 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !2099)
!2102 = !DILocation(line: 833, column: 11, scope: !1979, inlinedAt: !2097)
!2103 = !DILocation(line: 834, column: 18, scope: !1996, inlinedAt: !2097)
!2104 = !DILocation(line: 835, column: 16, scope: !1996, inlinedAt: !2097)
!2105 = !DILocation(line: 896, column: 32, scope: !2049, inlinedAt: !2056)
!2106 = !DILocation(line: 0, scope: !2049, inlinedAt: !2056)
!2107 = !DILocation(line: 897, column: 24, scope: !2108, inlinedAt: !2056)
!2108 = distinct !DILexicalBlock(scope: !2049, file: !32, line: 897, column: 17)
!2109 = !DILocation(line: 897, column: 17, scope: !2049, inlinedAt: !2056)
!2110 = !DILocation(line: 0, scope: !628, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 902, column: 13, scope: !2049, inlinedAt: !2056)
!2112 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2111)
!2113 = !DILocation(line: 903, column: 9, scope: !2042, inlinedAt: !2056)
!2114 = distinct !{!2114, !2061, !2113}
!2115 = !DILocation(line: 1135, column: 1, scope: !2021)
!2116 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !32, file: !32, line: 1137, type: !2022, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "mutex", arg: 1, scope: !2116, file: !32, line: 1137, type: !240)
!2119 = !DILocalVariable(name: "fast_mutex", scope: !2116, file: !32, line: 1138, type: !184)
!2120 = !DILocation(line: 0, scope: !2116)
!2121 = !DILocation(line: 0, scope: !1945, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 1140, column: 17, scope: !2116)
!2123 = !DILocation(line: 933, column: 47, scope: !1952, inlinedAt: !2122)
!2124 = !DILocation(line: 0, scope: !724, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 933, column: 14, scope: !1952, inlinedAt: !2122)
!2126 = !DILocation(line: 184, column: 12, scope: !724, inlinedAt: !2125)
!2127 = !DILocation(line: 933, column: 13, scope: !1945, inlinedAt: !2122)
!2128 = !DILocation(line: 0, scope: !1958, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 934, column: 13, scope: !1965, inlinedAt: !2122)
!2130 = !DILocation(line: 0, scope: !1967, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 911, column: 13, scope: !1973, inlinedAt: !2129)
!2132 = !DILocation(line: 175, column: 12, scope: !1967, inlinedAt: !2131)
!2133 = !DILocation(line: 911, column: 13, scope: !1958, inlinedAt: !2129)
!2134 = !DILocation(line: 915, column: 9, scope: !1958, inlinedAt: !2129)
!2135 = !DILocation(line: 915, column: 31, scope: !1958, inlinedAt: !2129)
!2136 = !DILocation(line: 0, scope: !1979, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 915, column: 31, scope: !1958, inlinedAt: !2129)
!2138 = !DILocation(line: 0, scope: !1985, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 832, column: 19, scope: !1979, inlinedAt: !2137)
!2140 = !DILocation(line: 599, column: 11, scope: !1985, inlinedAt: !2139)
!2141 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !2139)
!2142 = !DILocation(line: 600, column: 11, scope: !1985, inlinedAt: !2139)
!2143 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !2139)
!2144 = !DILocation(line: 833, column: 11, scope: !1979, inlinedAt: !2137)
!2145 = !DILocation(line: 834, column: 18, scope: !1996, inlinedAt: !2137)
!2146 = !DILocation(line: 835, column: 16, scope: !1996, inlinedAt: !2137)
!2147 = !DILocation(line: 916, column: 20, scope: !1958, inlinedAt: !2129)
!2148 = !DILocation(line: 916, column: 37, scope: !1958, inlinedAt: !2129)
!2149 = !DILocation(line: 916, column: 9, scope: !1958, inlinedAt: !2129)
!2150 = !DILocation(line: 917, column: 5, scope: !1958, inlinedAt: !2129)
!2151 = !DILocation(line: 1141, column: 1, scope: !2116)
!2152 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !32, file: !32, line: 1143, type: !2153, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "cond", arg: 1, scope: !2152, file: !32, line: 1143, type: !2155)
!2158 = !DILocalVariable(name: "fast_cond", scope: !2152, file: !32, line: 1144, type: !223)
!2159 = !DILocation(line: 0, scope: !2152)
!2160 = !DILocalVariable(name: "this", arg: 1, scope: !2161, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2161 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !224, file: !32, line: 1092, type: !228, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !232, retainedNodes: !2162)
!2162 = !{!2160, !2163, !2164}
!2163 = !DILocalVariable(name: "val", scope: !2161, file: !32, line: 1094, type: !26)
!2164 = !DILocalVariable(name: "control", scope: !2161, file: !32, line: 1100, type: !204)
!2165 = !DILocation(line: 0, scope: !2161, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 1146, column: 16, scope: !2152)
!2167 = !DILocation(line: 1093, column: 28, scope: !2161, inlinedAt: !2166)
!2168 = !DILocalVariable(name: "cond", arg: 1, scope: !2169, file: !32, line: 70, type: !15)
!2169 = distinct !DISubprogram(name: "if_tsan_pre_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_signalEPv", scope: !629, file: !32, line: 70, type: !13, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2170 = !{!2168}
!2171 = !DILocation(line: 0, scope: !2169, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 1093, column: 9, scope: !2161, inlinedAt: !2166)
!2173 = !DILocation(line: 71, column: 5, scope: !2169, inlinedAt: !2172)
!2174 = !DILocation(line: 1095, column: 30, scope: !2161, inlinedAt: !2166)
!2175 = !DILocation(line: 0, scope: !628, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 1095, column: 9, scope: !2161, inlinedAt: !2166)
!2177 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2176)
!2178 = !DILocation(line: 1096, column: 17, scope: !2179, inlinedAt: !2166)
!2179 = distinct !DILexicalBlock(scope: !2161, file: !32, line: 1096, column: 13)
!2180 = !DILocation(line: 1096, column: 13, scope: !2161, inlinedAt: !2166)
!2181 = !DILocalVariable(name: "cond", arg: 1, scope: !2182, file: !32, line: 73, type: !15)
!2182 = distinct !DISubprogram(name: "if_tsan_post_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_signalEPv", scope: !629, file: !32, line: 73, type: !13, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2183 = !{!2181}
!2184 = !DILocation(line: 0, scope: !2182, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 1097, column: 13, scope: !2186, inlinedAt: !2166)
!2186 = distinct !DILexicalBlock(scope: !2179, file: !32, line: 1096, column: 23)
!2187 = !DILocation(line: 74, column: 5, scope: !2182, inlinedAt: !2185)
!2188 = !DILocation(line: 1098, column: 13, scope: !2186, inlinedAt: !2166)
!2189 = !DILocation(line: 1100, column: 9, scope: !2161, inlinedAt: !2166)
!2190 = !DILocation(line: 1100, column: 35, scope: !2161, inlinedAt: !2166)
!2191 = !DILocation(line: 1100, column: 51, scope: !2161, inlinedAt: !2166)
!2192 = !DILocalVariable(name: "this", arg: 1, scope: !2193, type: !203, flags: DIFlagArtificial | DIFlagObjectPointer)
!2193 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPyPNS2_10fast_mutexE", scope: !204, file: !32, line: 989, type: !210, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !209, retainedNodes: !2194)
!2194 = !{!2192, !2195, !2196}
!2195 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2193, file: !32, line: 989, type: !173)
!2196 = !DILocalVariable(name: "mutex", arg: 3, scope: !2193, file: !32, line: 989, type: !184)
!2197 = !DILocation(line: 0, scope: !2193, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 1100, column: 35, scope: !2161, inlinedAt: !2166)
!2199 = !DILocation(line: 0, scope: !1985, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 989, column: 19, scope: !2193, inlinedAt: !2198)
!2201 = !DILocation(line: 599, column: 11, scope: !1985, inlinedAt: !2200)
!2202 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !2200)
!2203 = !DILocation(line: 600, column: 11, scope: !1985, inlinedAt: !2200)
!2204 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !2200)
!2205 = !DILocation(line: 990, column: 11, scope: !2193, inlinedAt: !2198)
!2206 = !DILocation(line: 990, column: 35, scope: !2193, inlinedAt: !2198)
!2207 = !DILocation(line: 991, column: 18, scope: !2208, inlinedAt: !2198)
!2208 = distinct !DILexicalBlock(scope: !2193, file: !32, line: 990, column: 48)
!2209 = !DILocation(line: 992, column: 26, scope: !2208, inlinedAt: !2198)
!2210 = !DILocation(line: 1101, column: 24, scope: !2161, inlinedAt: !2166)
!2211 = !DILocation(line: 1101, column: 46, scope: !2161, inlinedAt: !2166)
!2212 = !DILocation(line: 1101, column: 9, scope: !2161, inlinedAt: !2166)
!2213 = !DILocation(line: 0, scope: !2182, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 1102, column: 9, scope: !2161, inlinedAt: !2166)
!2215 = !DILocation(line: 74, column: 5, scope: !2182, inlinedAt: !2214)
!2216 = !DILocation(line: 1103, column: 5, scope: !2161, inlinedAt: !2166)
!2217 = !DILocation(line: 1147, column: 1, scope: !2152)
!2218 = distinct !DISubprogram(name: "halide_cond_signal", scope: !32, file: !32, line: 1149, type: !2153, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2219 = !{!2220, !2221}
!2220 = !DILocalVariable(name: "cond", arg: 1, scope: !2218, file: !32, line: 1149, type: !2155)
!2221 = !DILocalVariable(name: "fast_cond", scope: !2218, file: !32, line: 1150, type: !223)
!2222 = !DILocation(line: 0, scope: !2218)
!2223 = !DILocalVariable(name: "this", arg: 1, scope: !2224, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2224 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !224, file: !32, line: 1078, type: !228, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !231, retainedNodes: !2225)
!2225 = !{!2223, !2226, !2227}
!2226 = !DILocalVariable(name: "val", scope: !2224, file: !32, line: 1081, type: !26)
!2227 = !DILocalVariable(name: "control", scope: !2224, file: !32, line: 1087, type: !179)
!2228 = !DILocation(line: 0, scope: !2224, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 1152, column: 16, scope: !2218)
!2230 = !DILocation(line: 1079, column: 28, scope: !2224, inlinedAt: !2229)
!2231 = !DILocation(line: 0, scope: !2169, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 1079, column: 9, scope: !2224, inlinedAt: !2229)
!2233 = !DILocation(line: 71, column: 5, scope: !2169, inlinedAt: !2232)
!2234 = !DILocation(line: 1082, column: 30, scope: !2224, inlinedAt: !2229)
!2235 = !DILocation(line: 0, scope: !628, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1082, column: 9, scope: !2224, inlinedAt: !2229)
!2237 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2236)
!2238 = !DILocation(line: 1083, column: 17, scope: !2239, inlinedAt: !2229)
!2239 = distinct !DILexicalBlock(scope: !2224, file: !32, line: 1083, column: 13)
!2240 = !DILocation(line: 1083, column: 13, scope: !2224, inlinedAt: !2229)
!2241 = !DILocation(line: 0, scope: !2182, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 1084, column: 13, scope: !2243, inlinedAt: !2229)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !32, line: 1083, column: 23)
!2244 = !DILocation(line: 74, column: 5, scope: !2182, inlinedAt: !2242)
!2245 = !DILocation(line: 1085, column: 13, scope: !2243, inlinedAt: !2229)
!2246 = !DILocation(line: 1087, column: 9, scope: !2224, inlinedAt: !2229)
!2247 = !DILocation(line: 1087, column: 32, scope: !2224, inlinedAt: !2229)
!2248 = !DILocation(line: 1087, column: 48, scope: !2224, inlinedAt: !2229)
!2249 = !DILocalVariable(name: "this", arg: 1, scope: !2250, type: !178, flags: DIFlagArtificial | DIFlagObjectPointer)
!2250 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPyPNS2_10fast_mutexE", scope: !179, file: !32, line: 962, type: !200, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !199, retainedNodes: !2251)
!2251 = !{!2249, !2252, !2253}
!2252 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2250, file: !32, line: 962, type: !173)
!2253 = !DILocalVariable(name: "mutex", arg: 3, scope: !2250, file: !32, line: 962, type: !184)
!2254 = !DILocation(line: 0, scope: !2250, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1087, column: 32, scope: !2224, inlinedAt: !2229)
!2256 = !DILocation(line: 0, scope: !1985, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 962, column: 19, scope: !2250, inlinedAt: !2255)
!2258 = !DILocation(line: 599, column: 11, scope: !1985, inlinedAt: !2257)
!2259 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !2257)
!2260 = !DILocation(line: 600, column: 11, scope: !1985, inlinedAt: !2257)
!2261 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !2257)
!2262 = !DILocation(line: 963, column: 11, scope: !2250, inlinedAt: !2255)
!2263 = !DILocation(line: 963, column: 35, scope: !2250, inlinedAt: !2255)
!2264 = !{!1819, !474, i64 40}
!2265 = !DILocation(line: 964, column: 16, scope: !2266, inlinedAt: !2255)
!2266 = distinct !DILexicalBlock(scope: !2250, file: !32, line: 963, column: 48)
!2267 = !DILocation(line: 1088, column: 20, scope: !2224, inlinedAt: !2229)
!2268 = !DILocation(line: 1088, column: 37, scope: !2224, inlinedAt: !2229)
!2269 = !DILocation(line: 1088, column: 9, scope: !2224, inlinedAt: !2229)
!2270 = !DILocation(line: 0, scope: !2182, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 1089, column: 9, scope: !2224, inlinedAt: !2229)
!2272 = !DILocation(line: 74, column: 5, scope: !2182, inlinedAt: !2271)
!2273 = !DILocation(line: 1090, column: 5, scope: !2224, inlinedAt: !2229)
!2274 = !DILocation(line: 1153, column: 1, scope: !2218)
!2275 = distinct !DISubprogram(name: "halide_cond_wait", scope: !32, file: !32, line: 1155, type: !2276, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !2155, !240}
!2278 = !{!2279, !2280, !2281, !2282}
!2279 = !DILocalVariable(name: "cond", arg: 1, scope: !2275, file: !32, line: 1155, type: !2155)
!2280 = !DILocalVariable(name: "mutex", arg: 2, scope: !2275, file: !32, line: 1155, type: !240)
!2281 = !DILocalVariable(name: "fast_cond", scope: !2275, file: !32, line: 1156, type: !223)
!2282 = !DILocalVariable(name: "fast_mutex", scope: !2275, file: !32, line: 1158, type: !184)
!2283 = !DILocation(line: 0, scope: !2275)
!2284 = !DILocalVariable(name: "this", arg: 1, scope: !2285, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2285 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !224, file: !32, line: 1105, type: !234, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !233, retainedNodes: !2286)
!2286 = !{!2284, !2287, !2288, !2289, !2290}
!2287 = !DILocalVariable(name: "mutex", arg: 2, scope: !2285, file: !32, line: 1105, type: !184)
!2288 = !DILocalVariable(name: "control", scope: !2285, file: !32, line: 1106, type: !214)
!2289 = !DILocalVariable(name: "result", scope: !2285, file: !32, line: 1107, type: !26)
!2290 = !DILocalVariable(name: "val", scope: !2291, file: !32, line: 1114, type: !26)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !32, line: 1110, column: 16)
!2292 = distinct !DILexicalBlock(scope: !2285, file: !32, line: 1108, column: 13)
!2293 = !DILocation(line: 0, scope: !2285, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 1160, column: 16, scope: !2275)
!2295 = !DILocation(line: 1106, column: 9, scope: !2285, inlinedAt: !2294)
!2296 = !DILocation(line: 1106, column: 30, scope: !2285, inlinedAt: !2294)
!2297 = !DILocation(line: 1106, column: 39, scope: !2285, inlinedAt: !2294)
!2298 = !DILocalVariable(name: "this", arg: 1, scope: !2299, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!2299 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPyPNS2_10fast_mutexE", scope: !214, file: !32, line: 1030, type: !220, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !219, retainedNodes: !2300)
!2300 = !{!2298, !2301, !2302}
!2301 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2299, file: !32, line: 1030, type: !173)
!2302 = !DILocalVariable(name: "mutex", arg: 3, scope: !2299, file: !32, line: 1030, type: !184)
!2303 = !DILocation(line: 0, scope: !2299, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 1106, column: 30, scope: !2285, inlinedAt: !2294)
!2305 = !DILocation(line: 0, scope: !1985, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 1030, column: 19, scope: !2299, inlinedAt: !2304)
!2307 = !DILocation(line: 599, column: 11, scope: !1985, inlinedAt: !2306)
!2308 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !2306)
!2309 = !DILocation(line: 600, column: 11, scope: !1985, inlinedAt: !2306)
!2310 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !2306)
!2311 = !DILocation(line: 1031, column: 11, scope: !2299, inlinedAt: !2304)
!2312 = !DILocation(line: 1031, column: 35, scope: !2299, inlinedAt: !2304)
!2313 = !DILocation(line: 1032, column: 18, scope: !2314, inlinedAt: !2304)
!2314 = distinct !DILexicalBlock(scope: !2299, file: !32, line: 1031, column: 48)
!2315 = !DILocation(line: 1033, column: 22, scope: !2314, inlinedAt: !2304)
!2316 = !DILocation(line: 1034, column: 16, scope: !2314, inlinedAt: !2304)
!2317 = !DILocation(line: 1107, column: 33, scope: !2285, inlinedAt: !2294)
!2318 = !DILocation(line: 1107, column: 50, scope: !2285, inlinedAt: !2294)
!2319 = !DILocation(line: 1107, column: 28, scope: !2285, inlinedAt: !2294)
!2320 = !DILocation(line: 1108, column: 23, scope: !2292, inlinedAt: !2294)
!2321 = !DILocation(line: 1108, column: 20, scope: !2292, inlinedAt: !2294)
!2322 = !DILocation(line: 1108, column: 13, scope: !2285, inlinedAt: !2294)
!2323 = !DILocation(line: 0, scope: !2029, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 1109, column: 20, scope: !2325, inlinedAt: !2294)
!2325 = distinct !DILexicalBlock(scope: !2292, file: !32, line: 1108, column: 41)
!2326 = !DILocation(line: 924, column: 47, scope: !2036, inlinedAt: !2324)
!2327 = !DILocation(line: 0, scope: !647, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 924, column: 14, scope: !2036, inlinedAt: !2324)
!2329 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !2328)
!2330 = !DILocation(line: 924, column: 13, scope: !2029, inlinedAt: !2324)
!2331 = !DILocation(line: 0, scope: !2042, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 925, column: 13, scope: !2057, inlinedAt: !2324)
!2333 = !DILocation(line: 0, scope: !628, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 866, column: 9, scope: !2042, inlinedAt: !2332)
!2335 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2334)
!2336 = !DILocation(line: 868, column: 9, scope: !2042, inlinedAt: !2332)
!2337 = !DILocation(line: 869, column: 28, scope: !2048, inlinedAt: !2332)
!2338 = !DILocation(line: 869, column: 18, scope: !2048, inlinedAt: !2332)
!2339 = !DILocation(line: 869, column: 17, scope: !2049, inlinedAt: !2332)
!2340 = !DILocation(line: 870, column: 46, scope: !2047, inlinedAt: !2332)
!2341 = !DILocation(line: 0, scope: !2047, inlinedAt: !2332)
!2342 = !DILocation(line: 0, scope: !647, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 871, column: 21, scope: !2069, inlinedAt: !2332)
!2344 = !DILocation(line: 192, column: 12, scope: !647, inlinedAt: !2343)
!2345 = !DILocation(line: 238, column: 24, scope: !670, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 880, column: 25, scope: !2073, inlinedAt: !2332)
!2347 = !DILocation(line: 0, scope: !661, inlinedAt: !2346)
!2348 = !DILocation(line: 238, column: 13, scope: !661, inlinedAt: !2346)
!2349 = !DILocation(line: 241, column: 27, scope: !661, inlinedAt: !2346)
!2350 = !DILocation(line: 880, column: 17, scope: !2049, inlinedAt: !2332)
!2351 = !DILocation(line: 239, column: 23, scope: !669, inlinedAt: !2346)
!2352 = !DILocation(line: 881, column: 17, scope: !2080, inlinedAt: !2332)
!2353 = !DILocation(line: 0, scope: !628, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 882, column: 17, scope: !2080, inlinedAt: !2332)
!2355 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2354)
!2356 = !DILocation(line: 883, column: 17, scope: !2080, inlinedAt: !2332)
!2357 = !DILocation(line: 887, column: 27, scope: !2052, inlinedAt: !2332)
!2358 = !DILocation(line: 887, column: 41, scope: !2052, inlinedAt: !2332)
!2359 = !DILocation(line: 887, column: 17, scope: !2049, inlinedAt: !2332)
!2360 = !DILocation(line: 888, column: 46, scope: !2051, inlinedAt: !2332)
!2361 = !DILocation(line: 0, scope: !2051, inlinedAt: !2332)
!2362 = !DILocation(line: 0, scope: !1867, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 889, column: 22, scope: !2092, inlinedAt: !2332)
!2364 = !DILocation(line: 188, column: 12, scope: !1867, inlinedAt: !2363)
!2365 = !DILocation(line: 895, column: 13, scope: !2049, inlinedAt: !2332)
!2366 = !DILocation(line: 895, column: 35, scope: !2049, inlinedAt: !2332)
!2367 = !DILocation(line: 0, scope: !1979, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 895, column: 35, scope: !2049, inlinedAt: !2332)
!2369 = !DILocation(line: 0, scope: !1985, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 832, column: 19, scope: !1979, inlinedAt: !2368)
!2371 = !DILocation(line: 599, column: 47, scope: !1985, inlinedAt: !2370)
!2372 = !DILocation(line: 600, column: 43, scope: !1985, inlinedAt: !2370)
!2373 = !DILocation(line: 833, column: 11, scope: !1979, inlinedAt: !2368)
!2374 = !DILocation(line: 834, column: 18, scope: !1996, inlinedAt: !2368)
!2375 = !DILocation(line: 835, column: 16, scope: !1996, inlinedAt: !2368)
!2376 = !DILocation(line: 896, column: 32, scope: !2049, inlinedAt: !2332)
!2377 = !DILocation(line: 0, scope: !2049, inlinedAt: !2332)
!2378 = !DILocation(line: 897, column: 24, scope: !2108, inlinedAt: !2332)
!2379 = !DILocation(line: 897, column: 17, scope: !2049, inlinedAt: !2332)
!2380 = !DILocation(line: 0, scope: !628, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 902, column: 13, scope: !2049, inlinedAt: !2332)
!2382 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2381)
!2383 = !DILocation(line: 903, column: 9, scope: !2042, inlinedAt: !2332)
!2384 = distinct !{!2384, !2336, !2383}
!2385 = !DILocation(line: 1111, column: 30, scope: !2291, inlinedAt: !2294)
!2386 = !DILocation(line: 0, scope: !938, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 1111, column: 13, scope: !2291, inlinedAt: !2294)
!2388 = !DILocation(line: 57, column: 5, scope: !938, inlinedAt: !2387)
!2389 = !DILocation(line: 1115, column: 33, scope: !2291, inlinedAt: !2294)
!2390 = !DILocation(line: 0, scope: !628, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 1115, column: 13, scope: !2291, inlinedAt: !2294)
!2392 = !DILocation(line: 201, column: 5, scope: !628, inlinedAt: !2391)
!2393 = !DILocation(line: 0, scope: !2291, inlinedAt: !2294)
!2394 = !DILocation(line: 1116, column: 13, scope: !2395, inlinedAt: !2294)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !32, line: 1116, column: 13)
!2396 = distinct !DILexicalBlock(scope: !2291, file: !32, line: 1116, column: 13)
!2397 = !DILocation(line: 1116, column: 13, scope: !2396, inlinedAt: !2294)
!2398 = !DILocation(line: 1116, column: 13, scope: !2399, inlinedAt: !2294)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !32, line: 1116, column: 13)
!2400 = !DILocation(line: 0, scope: !954, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 1118, column: 13, scope: !2291, inlinedAt: !2294)
!2402 = !DILocation(line: 61, column: 5, scope: !954, inlinedAt: !2401)
!2403 = !DILocation(line: 1120, column: 5, scope: !2285, inlinedAt: !2294)
!2404 = !DILocation(line: 1161, column: 1, scope: !2275)
!2405 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !32, file: !32, line: 1168, type: !2406, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!236, !161}
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "sz", arg: 1, scope: !2405, file: !32, line: 1168, type: !161)
!2410 = !DILocalVariable(name: "array", scope: !2405, file: !32, line: 1171, type: !236)
!2411 = !DILocation(line: 0, scope: !2405)
!2412 = !DILocation(line: 1171, column: 55, scope: !2405)
!2413 = !DILocation(line: 1171, column: 33, scope: !2405)
!2414 = !DILocation(line: 1173, column: 15, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2405, file: !32, line: 1173, column: 9)
!2416 = !DILocation(line: 1173, column: 9, scope: !2405)
!2417 = !DILocation(line: 1178, column: 18, scope: !2405)
!2418 = !DILocation(line: 1178, column: 21, scope: !2405)
!2419 = !DILocation(line: 1177, column: 36, scope: !2405)
!2420 = !DILocation(line: 1177, column: 18, scope: !2405)
!2421 = !{!2422, !474, i64 0}
!2422 = !{!"_ZTS18halide_mutex_array", !474, i64 0}
!2423 = !DILocation(line: 1179, column: 22, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2405, file: !32, line: 1179, column: 9)
!2425 = !DILocation(line: 1179, column: 9, scope: !2405)
!2426 = !DILocation(line: 1180, column: 9, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !32, line: 1179, column: 34)
!2428 = !DILocation(line: 1182, column: 9, scope: !2427)
!2429 = !DILocation(line: 1184, column: 5, scope: !2405)
!2430 = !DILocation(line: 1185, column: 5, scope: !2405)
!2431 = !DILocation(line: 1186, column: 1, scope: !2405)
!2432 = !DISubprogram(name: "halide_malloc", scope: !242, file: !242, line: 354, type: !2433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!15, !15, !556}
!2435 = !DISubprogram(name: "halide_free", scope: !242, file: !242, line: 355, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !15, !15}
!2438 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !32, file: !32, line: 1188, type: !2436, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2439 = !{!2440, !2441, !2442}
!2440 = !DILocalVariable(name: "user_context", arg: 1, scope: !2438, file: !32, line: 1188, type: !15)
!2441 = !DILocalVariable(name: "array", arg: 2, scope: !2438, file: !32, line: 1188, type: !15)
!2442 = !DILocalVariable(name: "arr_ptr", scope: !2438, file: !32, line: 1189, type: !236)
!2443 = !DILocation(line: 0, scope: !2438)
!2444 = !DILocation(line: 1190, column: 40, scope: !2438)
!2445 = !DILocation(line: 1190, column: 5, scope: !2438)
!2446 = !DILocation(line: 1191, column: 5, scope: !2438)
!2447 = !DILocation(line: 1192, column: 1, scope: !2438)
!2448 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !32, file: !32, line: 1194, type: !2449, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!161, !236, !161}
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "array", arg: 1, scope: !2448, file: !32, line: 1194, type: !236)
!2453 = !DILocalVariable(name: "entry", arg: 2, scope: !2448, file: !32, line: 1194, type: !161)
!2454 = !DILocation(line: 0, scope: !2448)
!2455 = !DILocation(line: 1195, column: 31, scope: !2448)
!2456 = !DILocation(line: 1195, column: 24, scope: !2448)
!2457 = !DILocation(line: 1195, column: 5, scope: !2448)
!2458 = !DILocation(line: 1196, column: 5, scope: !2448)
!2459 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !32, file: !32, line: 1199, type: !2449, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "array", arg: 1, scope: !2459, file: !32, line: 1199, type: !236)
!2462 = !DILocalVariable(name: "entry", arg: 2, scope: !2459, file: !32, line: 1199, type: !161)
!2463 = !DILocation(line: 0, scope: !2459)
!2464 = !DILocation(line: 1200, column: 33, scope: !2459)
!2465 = !DILocation(line: 1200, column: 26, scope: !2459)
!2466 = !DILocation(line: 1200, column: 5, scope: !2459)
!2467 = !DILocation(line: 1201, column: 5, scope: !2459)
!2468 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !34, file: !250, line: 69, type: !2469, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!161, !161}
!2471 = !{!2472}
!2472 = !DILocalVariable(name: "threads", arg: 1, scope: !2468, file: !250, line: 69, type: !161)
!2473 = !DILocation(line: 0, scope: !2468)
!2474 = !DILocation(line: 70, column: 17, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2468, file: !250, line: 70, column: 9)
!2476 = !DILocation(line: 70, column: 9, scope: !2468)
!2477 = !DILocation(line: 72, column: 16, scope: !2475)
!2478 = !DILocation(line: 75, column: 5, scope: !2468)
!2479 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !34, file: !250, line: 78, type: !416, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2480)
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "desired_num_threads", scope: !2479, file: !250, line: 79, type: !161)
!2482 = !DILocalVariable(name: "threads_str", scope: !2479, file: !250, line: 80, type: !309)
!2483 = !DILocation(line: 0, scope: !2479)
!2484 = !DILocation(line: 80, column: 25, scope: !2479)
!2485 = !DILocation(line: 81, column: 10, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !250, line: 81, column: 9)
!2487 = !DILocation(line: 81, column: 9, scope: !2479)
!2488 = !DILocation(line: 83, column: 23, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !250, line: 81, column: 23)
!2490 = !DILocation(line: 85, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2479, file: !250, line: 85, column: 9)
!2492 = !DILocation(line: 85, column: 9, scope: !2479)
!2493 = !DILocation(line: 86, column: 31, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !250, line: 85, column: 22)
!2495 = !DILocation(line: 87, column: 5, scope: !2494)
!2496 = !DILocation(line: 88, column: 31, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2491, file: !250, line: 87, column: 12)
!2498 = !DILocation(line: 0, scope: !2491)
!2499 = !DILocation(line: 90, column: 5, scope: !2479)
!2500 = !DISubprogram(name: "getenv", scope: !27, file: !27, line: 85, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!309, !265}
!2503 = !DISubprogram(name: "atoi", scope: !27, file: !27, line: 89, type: !2504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!161, !265}
!2506 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !34, file: !250, line: 197, type: !2507, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !248}
!2509 = !{!2510, !2511, !2512, !2514, !2516, !2518, !2520, !2521, !2522, !2523, !2524, !2525, !2528, !2529, !2531, !2532}
!2510 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2506, file: !250, line: 197, type: !248)
!2511 = !DILocalVariable(name: "spin_count", scope: !2506, file: !250, line: 198, type: !161)
!2512 = !DILocalVariable(name: "max_spin_count", scope: !2506, file: !250, line: 199, type: !2513)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!2514 = !DILocalVariable(name: "job", scope: !2515, file: !250, line: 202, type: !248)
!2515 = distinct !DILexicalBlock(scope: !2506, file: !250, line: 201, column: 69)
!2516 = !DILocalVariable(name: "prev_ptr", scope: !2515, file: !250, line: 203, type: !2517)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!2518 = !DILocalVariable(name: "enough_threads", scope: !2519, file: !250, line: 235, type: !66)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 229, column: 21)
!2520 = !DILocalVariable(name: "parent_job", scope: !2519, file: !250, line: 237, type: !248)
!2521 = !DILocalVariable(name: "threads_available", scope: !2519, file: !250, line: 239, type: !161)
!2522 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2519, file: !250, line: 256, type: !66)
!2523 = !DILocalVariable(name: "can_add_worker", scope: !2519, file: !250, line: 260, type: !66)
!2524 = !DILocalVariable(name: "result", scope: !2515, file: !250, line: 328, type: !161)
!2525 = !DILocalVariable(name: "total_iters", scope: !2526, file: !250, line: 336, type: !161)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !250, line: 330, column: 31)
!2527 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 330, column: 13)
!2528 = !DILocalVariable(name: "iters", scope: !2526, file: !250, line: 337, type: !161)
!2529 = !DILocalVariable(name: "myjob", scope: !2530, file: !250, line: 369, type: !249)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !250, line: 367, column: 16)
!2531 = !DILocalVariable(name: "wake_owners", scope: !2515, file: !250, line: 396, type: !66)
!2532 = !DILocalVariable(name: "i", scope: !2533, file: !250, line: 402, type: !161)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !250, line: 402, column: 13)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !250, line: 399, column: 26)
!2535 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 399, column: 13)
!2536 = !DILocation(line: 0, scope: !2506)
!2537 = !DILocation(line: 63, column: 31, scope: !2538, inlinedAt: !2542)
!2538 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !249, file: !250, line: 62, type: !301, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !300, retainedNodes: !2539)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "this", arg: 1, scope: !2538, type: !2541, flags: DIFlagArtificial | DIFlagObjectPointer)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2542 = distinct !DILocation(line: 201, column: 35, scope: !2506)
!2543 = !DILocation(line: 201, column: 5, scope: !2506)
!2544 = !DILocation(line: 198, column: 9, scope: !2506)
!2545 = !DILocation(line: 201, column: 12, scope: !2506)
!2546 = !DILocation(line: 0, scope: !2538, inlinedAt: !2542)
!2547 = !DILocation(line: 63, column: 21, scope: !2538, inlinedAt: !2542)
!2548 = !{!2549, !476, i64 40}
!2549 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2550, i64 0, !474, i64 56, !474, i64 64, !474, i64 72, !476, i64 80, !474, i64 88, !476, i64 96, !474, i64 104, !476, i64 112, !476, i64 116, !476, i64 120, !693, i64 124}
!2550 = !{!"_ZTS22halide_parallel_task_t", !474, i64 0, !474, i64 8, !474, i64 16, !474, i64 24, !476, i64 32, !476, i64 36, !476, i64 40, !476, i64 44, !693, i64 48}
!2551 = !DILocation(line: 63, column: 16, scope: !2538, inlinedAt: !2542)
!2552 = !DILocation(line: 63, column: 28, scope: !2538, inlinedAt: !2542)
!2553 = !DILocation(line: 201, column: 59, scope: !2506)
!2554 = !{!2555, !693, i64 2120}
!2555 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2556, i64 0, !476, i64 8, !476, i64 12, !474, i64 16, !476, i64 24, !476, i64 28, !476, i64 32, !2557, i64 40, !2557, i64 48, !2557, i64 56, !476, i64 64, !476, i64 68, !435, i64 72, !693, i64 2120, !693, i64 2121, !476, i64 2124}
!2556 = !{!"_ZTS12halide_mutex", !435, i64 0}
!2557 = !{!"_ZTS11halide_cond", !435, i64 0}
!2558 = !{!2549, !476, i64 112}
!2559 = !DILocation(line: 202, column: 32, scope: !2515)
!2560 = !{!2555, !474, i64 16}
!2561 = !DILocation(line: 0, scope: !2515)
!2562 = !DILocation(line: 206, column: 28, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !250, line: 206, column: 17)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !250, line: 205, column: 24)
!2565 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 205, column: 13)
!2566 = !{!2549, !476, i64 116}
!2567 = !DILocation(line: 206, column: 40, scope: !2563)
!2568 = !DILocation(line: 206, column: 17, scope: !2564)
!2569 = !DILocation(line: 207, column: 32, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !250, line: 207, column: 21)
!2571 = distinct !DILexicalBlock(scope: !2563, file: !250, line: 206, column: 46)
!2572 = !DILocation(line: 207, column: 47, scope: !2570)
!2573 = !DILocation(line: 207, column: 21, scope: !2571)
!2574 = !DILocation(line: 208, column: 32, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !250, line: 207, column: 53)
!2576 = !DILocation(line: 208, column: 21, scope: !2575)
!2577 = !DILocation(line: 209, column: 42, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2575, file: !250, line: 208, column: 46)
!2579 = !DILocation(line: 210, column: 36, scope: !2578)
!2580 = !{!2549, !474, i64 64}
!2581 = distinct !{!2581, !2576, !2582, !746}
!2582 = !DILocation(line: 211, column: 21, scope: !2575)
!2583 = !DILocation(line: 212, column: 38, scope: !2575)
!2584 = !DILocation(line: 212, column: 31, scope: !2575)
!2585 = !DILocation(line: 213, column: 38, scope: !2575)
!2586 = !DILocation(line: 214, column: 21, scope: !2575)
!2587 = !DILocation(line: 216, column: 35, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2563, file: !250, line: 216, column: 24)
!2589 = !{!2549, !474, i64 88}
!2590 = !DILocation(line: 216, column: 24, scope: !2588)
!2591 = !DILocation(line: 216, column: 46, scope: !2588)
!2592 = !DILocation(line: 216, column: 72, scope: !2588)
!2593 = !DILocation(line: 216, column: 84, scope: !2588)
!2594 = !DILocation(line: 216, column: 24, scope: !2563)
!2595 = !DILocation(line: 217, column: 40, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !250, line: 216, column: 90)
!2597 = !DILocation(line: 221, column: 17, scope: !2596)
!2598 = !DILocation(line: 222, column: 17, scope: !2596)
!2599 = !DILocation(line: 229, column: 16, scope: !2515)
!2600 = !DILocation(line: 229, column: 9, scope: !2515)
!2601 = !DILocation(line: 240, column: 17, scope: !2519)
!2602 = !DILocation(line: 237, column: 37, scope: !2519)
!2603 = !DILocation(line: 0, scope: !2519)
!2604 = !DILocation(line: 240, column: 28, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2519, file: !250, line: 240, column: 17)
!2606 = !DILocation(line: 244, column: 33, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !250, line: 244, column: 21)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !250, line: 243, column: 20)
!2609 = !DILocation(line: 244, column: 48, scope: !2607)
!2610 = !DILocation(line: 0, scope: !2607)
!2611 = !{!2549, !476, i64 44}
!2612 = !DILocation(line: 244, column: 21, scope: !2608)
!2613 = !DILocation(line: 247, column: 68, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2607, file: !250, line: 246, column: 24)
!2615 = !DILocation(line: 247, column: 113, scope: !2614)
!2616 = !{!2549, !476, i64 96}
!2617 = !DILocation(line: 247, column: 99, scope: !2614)
!2618 = !DILocation(line: 245, column: 84, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2607, file: !250, line: 244, column: 54)
!2620 = !DILocation(line: 245, column: 70, scope: !2619)
!2621 = !DILocation(line: 246, column: 17, scope: !2619)
!2622 = !DILocation(line: 242, column: 49, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2605, file: !250, line: 240, column: 40)
!2624 = !{!2555, !476, i64 24}
!2625 = !DILocation(line: 242, column: 65, scope: !2623)
!2626 = !DILocation(line: 242, column: 83, scope: !2623)
!2627 = !{!2555, !476, i64 2124}
!2628 = !DILocation(line: 242, column: 70, scope: !2623)
!2629 = !DILocation(line: 243, column: 13, scope: !2623)
!2630 = !DILocation(line: 0, scope: !2605)
!2631 = !DILocation(line: 250, column: 61, scope: !2519)
!2632 = !DILocation(line: 250, column: 48, scope: !2519)
!2633 = !DILocation(line: 260, column: 47, scope: !2519)
!2634 = !{!2549, !693, i64 48}
!2635 = !DILocation(line: 260, column: 54, scope: !2519)
!2636 = !DILocation(line: 260, column: 63, scope: !2519)
!2637 = !DILocation(line: 260, column: 78, scope: !2519)
!2638 = !DILocation(line: 265, column: 32, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2519, file: !250, line: 265, column: 17)
!2640 = !DILocalVariable(name: "this", arg: 1, scope: !2641, type: !248, flags: DIFlagArtificial | DIFlagObjectPointer)
!2641 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !249, file: !250, line: 46, type: !297, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !296, retainedNodes: !2642)
!2642 = !{!2640}
!2643 = !DILocation(line: 0, scope: !2641, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 266, column: 26, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !250, line: 266, column: 21)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !250, line: 265, column: 80)
!2647 = !DILocation(line: 47, column: 16, scope: !2648, inlinedAt: !2644)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !250, line: 47, column: 9)
!2649 = distinct !DILexicalBlock(scope: !2641, file: !250, line: 47, column: 9)
!2650 = !{!2549, !476, i64 120}
!2651 = !DILocation(line: 47, column: 38, scope: !2648, inlinedAt: !2644)
!2652 = !{!2549, !476, i64 32}
!2653 = !DILocation(line: 47, column: 31, scope: !2648, inlinedAt: !2644)
!2654 = !DILocation(line: 47, column: 9, scope: !2649, inlinedAt: !2644)
!2655 = !DILocation(line: 48, column: 60, scope: !2656, inlinedAt: !2644)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !250, line: 48, column: 17)
!2657 = distinct !DILexicalBlock(scope: !2648, file: !250, line: 47, column: 72)
!2658 = !{!2549, !474, i64 24}
!2659 = !DILocation(line: 48, column: 55, scope: !2656, inlinedAt: !2644)
!2660 = !DILocation(line: 48, column: 87, scope: !2656, inlinedAt: !2644)
!2661 = !{!2662, !474, i64 0}
!2662 = !{!"_ZTS26halide_semaphore_acquire_t", !474, i64 0, !476, i64 8}
!2663 = !DILocation(line: 49, column: 87, scope: !2656, inlinedAt: !2644)
!2664 = !{!2662, !476, i64 8}
!2665 = !DILocation(line: 48, column: 18, scope: !2656, inlinedAt: !2644)
!2666 = !DILocation(line: 48, column: 17, scope: !2657, inlinedAt: !2644)
!2667 = !DILocation(line: 47, column: 68, scope: !2648, inlinedAt: !2644)
!2668 = distinct !{!2668, !2654, !2669, !746}
!2669 = !DILocation(line: 56, column: 9, scope: !2649, inlinedAt: !2644)
!2670 = !DILocation(line: 272, column: 31, scope: !2519)
!2671 = !DILocation(line: 273, column: 24, scope: !2519)
!2672 = !DILocation(line: 256, column: 66, scope: !2519)
!2673 = !{!2549, !474, i64 72}
!2674 = !DILocation(line: 256, column: 89, scope: !2519)
!2675 = !DILocation(line: 256, column: 75, scope: !2519)
!2676 = !DILocation(line: 278, column: 17, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !250, line: 276, column: 19)
!2678 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 276, column: 13)
!2679 = !DILocation(line: 279, column: 31, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !250, line: 279, column: 21)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !250, line: 278, column: 28)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !250, line: 278, column: 17)
!2683 = !DILocation(line: 279, column: 34, scope: !2680)
!2684 = !DILocation(line: 279, column: 21, scope: !2681)
!2685 = !DILocation(line: 281, column: 21, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2680, file: !250, line: 279, column: 52)
!2687 = !DILocation(line: 282, column: 21, scope: !2686)
!2688 = !DILocation(line: 283, column: 21, scope: !2686)
!2689 = !DILocation(line: 284, column: 17, scope: !2686)
!2690 = !DILocation(line: 285, column: 47, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2680, file: !250, line: 284, column: 24)
!2692 = !{!2555, !476, i64 68}
!2693 = !DILocation(line: 286, column: 50, scope: !2691)
!2694 = !{!2549, !693, i64 124}
!2695 = !DILocation(line: 287, column: 21, scope: !2691)
!2696 = !DILocation(line: 288, column: 50, scope: !2691)
!2697 = !DILocation(line: 289, column: 47, scope: !2691)
!2698 = !DILocation(line: 292, column: 44, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2682, file: !250, line: 291, column: 20)
!2700 = !{!2555, !476, i64 64}
!2701 = !DILocation(line: 293, column: 32, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !250, line: 293, column: 21)
!2703 = !{!2555, !476, i64 28}
!2704 = !DILocation(line: 293, column: 57, scope: !2702)
!2705 = !{!2555, !476, i64 32}
!2706 = !DILocation(line: 293, column: 44, scope: !2702)
!2707 = !DILocation(line: 293, column: 21, scope: !2699)
!2708 = !DILocation(line: 295, column: 43, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2702, file: !250, line: 293, column: 77)
!2710 = !DILocation(line: 296, column: 21, scope: !2709)
!2711 = !DILocation(line: 297, column: 43, scope: !2709)
!2712 = !DILocation(line: 298, column: 17, scope: !2709)
!2713 = !DILocation(line: 298, column: 38, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2702, file: !250, line: 298, column: 28)
!2715 = !DILocation(line: 298, column: 41, scope: !2714)
!2716 = !DILocation(line: 298, column: 28, scope: !2702)
!2717 = !DILocation(line: 300, column: 21, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !250, line: 298, column: 59)
!2719 = !DILocation(line: 301, column: 21, scope: !2718)
!2720 = !DILocation(line: 302, column: 21, scope: !2718)
!2721 = !DILocation(line: 303, column: 17, scope: !2718)
!2722 = !DILocation(line: 304, column: 21, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !250, line: 303, column: 24)
!2724 = !DILocation(line: 306, column: 44, scope: !2699)
!2725 = !DILocation(line: 58, column: 24, scope: !2641, inlinedAt: !2644)
!2726 = !DILocation(line: 318, column: 14, scope: !2515)
!2727 = !DILocation(line: 318, column: 28, scope: !2515)
!2728 = !DILocation(line: 320, column: 18, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 320, column: 13)
!2730 = !DILocation(line: 320, column: 29, scope: !2729)
!2731 = !DILocation(line: 0, scope: !2729)
!2732 = !DILocation(line: 320, column: 13, scope: !2515)
!2733 = !DILocation(line: 321, column: 41, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !250, line: 320, column: 41)
!2735 = !DILocation(line: 323, column: 9, scope: !2734)
!2736 = !DILocation(line: 324, column: 30, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2729, file: !250, line: 323, column: 16)
!2738 = !DILocation(line: 324, column: 47, scope: !2737)
!2739 = !DILocation(line: 330, column: 23, scope: !2527)
!2740 = !DILocation(line: 330, column: 13, scope: !2515)
!2741 = !DILocation(line: 332, column: 30, scope: !2526)
!2742 = !DILocation(line: 332, column: 23, scope: !2526)
!2743 = !DILocation(line: 335, column: 13, scope: !2526)
!2744 = !DILocation(line: 0, scope: !2526)
!2745 = !DILocation(line: 338, column: 13, scope: !2526)
!2746 = !DILocation(line: 340, column: 35, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2526, file: !250, line: 338, column: 33)
!2748 = !DILocation(line: 340, column: 42, scope: !2747)
!2749 = !DILocation(line: 340, column: 57, scope: !2747)
!2750 = !DILocation(line: 340, column: 65, scope: !2747)
!2751 = !DILocation(line: 47, column: 16, scope: !2648, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 341, column: 29, scope: !2747)
!2753 = !DILocation(line: 47, column: 38, scope: !2648, inlinedAt: !2752)
!2754 = !DILocation(line: 340, column: 17, scope: !2747)
!2755 = !DILocation(line: 0, scope: !2641, inlinedAt: !2752)
!2756 = !DILocation(line: 47, column: 31, scope: !2648, inlinedAt: !2752)
!2757 = !DILocation(line: 47, column: 9, scope: !2649, inlinedAt: !2752)
!2758 = !DILocation(line: 48, column: 60, scope: !2656, inlinedAt: !2752)
!2759 = !DILocation(line: 48, column: 55, scope: !2656, inlinedAt: !2752)
!2760 = !DILocation(line: 48, column: 87, scope: !2656, inlinedAt: !2752)
!2761 = !DILocation(line: 49, column: 87, scope: !2656, inlinedAt: !2752)
!2762 = !DILocation(line: 48, column: 18, scope: !2656, inlinedAt: !2752)
!2763 = !DILocation(line: 48, column: 17, scope: !2657, inlinedAt: !2752)
!2764 = !DILocation(line: 47, column: 68, scope: !2648, inlinedAt: !2752)
!2765 = distinct !{!2765, !2757, !2766, !746}
!2766 = !DILocation(line: 56, column: 9, scope: !2649, inlinedAt: !2752)
!2767 = !DILocation(line: 58, column: 24, scope: !2641, inlinedAt: !2752)
!2768 = !DILocation(line: 342, column: 26, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2747, file: !250, line: 341, column: 46)
!2770 = distinct !{!2770, !2754, !2771, !746}
!2771 = !DILocation(line: 343, column: 17, scope: !2747)
!2772 = !DILocation(line: 344, column: 27, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2747, file: !250, line: 344, column: 21)
!2774 = !DILocation(line: 344, column: 21, scope: !2747)
!2775 = !DILocation(line: 349, column: 51, scope: !2747)
!2776 = !{!2549, !474, i64 104}
!2777 = !DILocation(line: 349, column: 75, scope: !2747)
!2778 = !{!2549, !474, i64 0}
!2779 = !DILocation(line: 350, column: 56, scope: !2747)
!2780 = !{!2549, !476, i64 36}
!2781 = !DILocation(line: 350, column: 60, scope: !2747)
!2782 = !DILocation(line: 351, column: 56, scope: !2747)
!2783 = !{!2549, !474, i64 8}
!2784 = !DILocation(line: 349, column: 26, scope: !2747)
!2785 = !DILocation(line: 352, column: 29, scope: !2747)
!2786 = !DILocation(line: 338, column: 27, scope: !2526)
!2787 = distinct !{!2787, !2745, !2788, !746}
!2788 = !DILocation(line: 354, column: 13, scope: !2526)
!2789 = !DILocation(line: 355, column: 13, scope: !2526)
!2790 = !DILocation(line: 357, column: 27, scope: !2526)
!2791 = !DILocation(line: 358, column: 30, scope: !2526)
!2792 = !DILocation(line: 361, column: 17, scope: !2526)
!2793 = !DILocation(line: 362, column: 34, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !250, line: 361, column: 30)
!2795 = distinct !DILexicalBlock(scope: !2526, file: !250, line: 361, column: 17)
!2796 = !DILocation(line: 399, column: 13, scope: !2515)
!2797 = !DILocation(line: 363, column: 41, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !250, line: 363, column: 24)
!2799 = !DILocation(line: 363, column: 24, scope: !2795)
!2800 = !DILocation(line: 364, column: 44, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2798, file: !250, line: 363, column: 46)
!2802 = !DILocation(line: 364, column: 31, scope: !2801)
!2803 = !DILocation(line: 365, column: 33, scope: !2801)
!2804 = !DILocation(line: 366, column: 13, scope: !2801)
!2805 = !DILocation(line: 369, column: 26, scope: !2530)
!2806 = !{i64 0, i64 8, !1084, i64 8, i64 8, !1084, i64 16, i64 8, !1084, i64 24, i64 8, !1084, i64 32, i64 4, !587, i64 36, i64 4, !587, i64 40, i64 4, !587, i64 44, i64 4, !587, i64 48, i64 1, !2807, i64 56, i64 8, !1084, i64 64, i64 8, !1084, i64 72, i64 8, !1084, i64 80, i64 4, !587, i64 88, i64 8, !1084, i64 96, i64 4, !587, i64 104, i64 8, !1084, i64 112, i64 4, !587, i64 116, i64 4, !587, i64 120, i64 4, !587, i64 124, i64 1, !2807}
!2807 = !{!693, !693, i64 0}
!2808 = !DILocation(line: 0, scope: !2530)
!2809 = !{i64 0, i64 8, !1084, i64 8, i64 8, !1084, i64 16, i64 8, !1084, i64 24, i64 4, !587, i64 28, i64 4, !587, i64 32, i64 4, !587, i64 36, i64 4, !587, i64 40, i64 1, !2807, i64 48, i64 8, !1084, i64 56, i64 8, !1084, i64 64, i64 8, !1084, i64 72, i64 4, !587, i64 80, i64 8, !1084, i64 88, i64 4, !587, i64 96, i64 8, !1084, i64 104, i64 4, !587, i64 108, i64 4, !587, i64 112, i64 4, !587, i64 116, i64 1, !2807}
!2810 = !{i64 0, i64 8, !1084, i64 8, i64 8, !1084, i64 16, i64 8, !1084, i64 24, i64 4, !587, i64 32, i64 8, !1084, i64 40, i64 4, !587, i64 48, i64 8, !1084, i64 56, i64 4, !587, i64 60, i64 4, !587, i64 64, i64 4, !587, i64 68, i64 1, !2807}
!2811 = !{i64 0, i64 8, !1084, i64 8, i64 4, !587, i64 12, i64 4, !587, i64 16, i64 4, !587, i64 20, i64 1, !2807}
!2812 = !DILocation(line: 370, column: 26, scope: !2530)
!2813 = !DILocation(line: 371, column: 23, scope: !2530)
!2814 = !DILocation(line: 371, column: 29, scope: !2530)
!2815 = !DILocation(line: 375, column: 34, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2530, file: !250, line: 375, column: 17)
!2817 = !DILocation(line: 375, column: 17, scope: !2530)
!2818 = !DILocation(line: 376, column: 34, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !250, line: 375, column: 40)
!2820 = !DILocation(line: 376, column: 27, scope: !2819)
!2821 = !DILocation(line: 377, column: 13, scope: !2819)
!2822 = !DILocation(line: 380, column: 13, scope: !2530)
!2823 = !DILocation(line: 381, column: 17, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2530, file: !250, line: 381, column: 17)
!2825 = !DILocation(line: 381, column: 17, scope: !2530)
!2826 = !DILocation(line: 382, column: 26, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2824, file: !250, line: 381, column: 32)
!2828 = !DILocation(line: 384, column: 13, scope: !2827)
!2829 = !DILocation(line: 387, column: 66, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2824, file: !250, line: 384, column: 20)
!2831 = !DILocation(line: 385, column: 26, scope: !2830)
!2832 = !DILocation(line: 0, scope: !2824)
!2833 = !DILocation(line: 389, column: 13, scope: !2530)
!2834 = !DILocation(line: 399, column: 20, scope: !2535)
!2835 = !DILocation(line: 400, column: 18, scope: !2534)
!2836 = !DILocation(line: 400, column: 30, scope: !2534)
!2837 = !DILocation(line: 0, scope: !2533)
!2838 = !DILocation(line: 402, column: 38, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2533, file: !250, line: 402, column: 13)
!2840 = !{!2549, !476, i64 80}
!2841 = !DILocation(line: 402, column: 31, scope: !2839)
!2842 = !DILocation(line: 402, column: 13, scope: !2533)
!2843 = !DILocation(line: 404, column: 38, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !250, line: 404, column: 21)
!2845 = distinct !DILexicalBlock(scope: !2839, file: !250, line: 402, column: 58)
!2846 = !DILocation(line: 404, column: 50, scope: !2844)
!2847 = !DILocation(line: 404, column: 21, scope: !2845)
!2848 = !DILocation(line: 405, column: 50, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !250, line: 404, column: 56)
!2850 = !DILocation(line: 406, column: 42, scope: !2849)
!2851 = !DILocation(line: 406, column: 57, scope: !2849)
!2852 = !DILocation(line: 406, column: 62, scope: !2849)
!2853 = !DILocation(line: 406, column: 82, scope: !2849)
!2854 = !DILocation(line: 0, scope: !2849)
!2855 = !DILocation(line: 406, column: 33, scope: !2849)
!2856 = !DILocation(line: 407, column: 17, scope: !2849)
!2857 = !DILocation(line: 402, column: 54, scope: !2839)
!2858 = distinct !{!2858, !2842, !2859, !746}
!2859 = !DILocation(line: 409, column: 13, scope: !2533)
!2860 = !DILocation(line: 396, column: 14, scope: !2515)
!2861 = !DILocation(line: 412, column: 18, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 412, column: 13)
!2863 = !DILocation(line: 412, column: 29, scope: !2862)
!2864 = !DILocation(line: 0, scope: !2862)
!2865 = !DILocation(line: 412, column: 13, scope: !2515)
!2866 = !DILocation(line: 413, column: 41, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !250, line: 412, column: 41)
!2868 = !DILocation(line: 415, column: 9, scope: !2867)
!2869 = !DILocation(line: 416, column: 30, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !250, line: 415, column: 16)
!2871 = !DILocation(line: 416, column: 47, scope: !2870)
!2872 = !DILocation(line: 421, column: 28, scope: !2515)
!2873 = !DILocation(line: 425, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2515, file: !250, line: 425, column: 13)
!2875 = !DILocation(line: 425, column: 25, scope: !2874)
!2876 = !DILocation(line: 426, column: 34, scope: !2874)
!2877 = !DILocation(line: 426, column: 39, scope: !2874)
!2878 = distinct !{!2878, !2543, !2879, !746}
!2879 = !DILocation(line: 430, column: 5, scope: !2506)
!2880 = !DILocation(line: 426, column: 53, scope: !2874)
!2881 = !DILocation(line: 426, column: 60, scope: !2874)
!2882 = !DILocation(line: 426, column: 65, scope: !2874)
!2883 = !DILocation(line: 426, column: 73, scope: !2874)
!2884 = !DILocation(line: 426, column: 85, scope: !2874)
!2885 = !DILocation(line: 426, column: 91, scope: !2874)
!2886 = !DILocation(line: 426, column: 99, scope: !2874)
!2887 = !DILocation(line: 425, column: 13, scope: !2515)
!2888 = !DILocation(line: 428, column: 13, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2874, file: !250, line: 426, column: 119)
!2890 = !DILocation(line: 429, column: 9, scope: !2889)
!2891 = !DILocation(line: 431, column: 1, scope: !2506)
!2892 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !250, file: !250, line: 797, type: !371, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2893)
!2893 = !{!2894, !2895, !2896, !2897, !2898, !2899}
!2894 = !DILocalVariable(name: "user_context", arg: 1, scope: !2892, file: !250, line: 797, type: !15)
!2895 = !DILocalVariable(name: "f", arg: 2, scope: !2892, file: !250, line: 797, type: !256)
!2896 = !DILocalVariable(name: "min", arg: 3, scope: !2892, file: !250, line: 798, type: !161)
!2897 = !DILocalVariable(name: "size", arg: 4, scope: !2892, file: !250, line: 798, type: !161)
!2898 = !DILocalVariable(name: "closure", arg: 5, scope: !2892, file: !250, line: 798, type: !260)
!2899 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2892, file: !250, line: 798, type: !15)
!2900 = !DILocation(line: 0, scope: !2892)
!2901 = !DILocation(line: 799, column: 12, scope: !2892)
!2902 = !DILocation(line: 799, column: 5, scope: !2892)
!2903 = distinct !DISubprogram(name: "halide_do_task", scope: !250, file: !250, line: 787, type: !365, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2904)
!2904 = !{!2905, !2906, !2907, !2908}
!2905 = !DILocalVariable(name: "user_context", arg: 1, scope: !2903, file: !250, line: 787, type: !15)
!2906 = !DILocalVariable(name: "f", arg: 2, scope: !2903, file: !250, line: 787, type: !282)
!2907 = !DILocalVariable(name: "idx", arg: 3, scope: !2903, file: !250, line: 787, type: !161)
!2908 = !DILocalVariable(name: "closure", arg: 4, scope: !2903, file: !250, line: 788, type: !260)
!2909 = !DILocation(line: 0, scope: !2903)
!2910 = !DILocation(line: 789, column: 14, scope: !2903)
!2911 = !DILocation(line: 789, column: 12, scope: !2903)
!2912 = !DILocation(line: 789, column: 5, scope: !2903)
!2913 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !34, file: !250, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2914)
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2913, file: !250, line: 433, type: !15)
!2916 = !DILocation(line: 0, scope: !2913)
!2917 = !DILocation(line: 434, column: 5, scope: !2913)
!2918 = !DILocation(line: 435, column: 34, scope: !2913)
!2919 = !DILocation(line: 435, column: 5, scope: !2913)
!2920 = !DILocation(line: 436, column: 5, scope: !2913)
!2921 = !DILocation(line: 437, column: 1, scope: !2913)
!2922 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !34, file: !250, line: 439, type: !2923, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !161, !248, !248}
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2936, !2938}
!2926 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2922, file: !250, line: 439, type: !161)
!2927 = !DILocalVariable(name: "jobs", arg: 2, scope: !2922, file: !250, line: 439, type: !248)
!2928 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2922, file: !250, line: 439, type: !248)
!2929 = !DILocalVariable(name: "min_threads", scope: !2922, file: !250, line: 457, type: !161)
!2930 = !DILocalVariable(name: "workers_to_wake", scope: !2922, file: !250, line: 461, type: !161)
!2931 = !DILocalVariable(name: "stealable_jobs", scope: !2922, file: !250, line: 465, type: !66)
!2932 = !DILocalVariable(name: "job_has_acquires", scope: !2922, file: !250, line: 467, type: !66)
!2933 = !DILocalVariable(name: "job_may_block", scope: !2922, file: !250, line: 468, type: !66)
!2934 = !DILocalVariable(name: "i", scope: !2935, file: !250, line: 469, type: !161)
!2935 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 469, column: 5)
!2936 = !DILocalVariable(name: "i", scope: !2937, file: !250, line: 527, type: !161)
!2937 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 527, column: 5)
!2938 = !DILocalVariable(name: "nested_parallelism", scope: !2922, file: !250, line: 537, type: !66)
!2939 = !DILocation(line: 0, scope: !2922)
!2940 = !DILocation(line: 440, column: 21, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 440, column: 9)
!2942 = !{!2555, !693, i64 2121}
!2943 = !DILocation(line: 440, column: 9, scope: !2922)
!2944 = !DILocalVariable(name: "bytes", scope: !2945, file: !250, line: 148, type: !265)
!2945 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !325, file: !250, line: 146, type: !355, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !354, retainedNodes: !2946)
!2946 = !{!2947, !2944, !2949}
!2947 = !DILocalVariable(name: "this", arg: 1, scope: !2945, type: !2948, flags: DIFlagArtificial | DIFlagObjectPointer)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2949 = !DILocalVariable(name: "limit", scope: !2945, file: !250, line: 149, type: !265)
!2950 = !DILocation(line: 0, scope: !2945, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 441, column: 20, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2941, file: !250, line: 440, column: 34)
!2953 = !DILocation(line: 150, column: 33, scope: !2945, inlinedAt: !2951)
!2954 = !DILocation(line: 150, column: 40, scope: !2945, inlinedAt: !2951)
!2955 = !DILocation(line: 150, column: 9, scope: !2945, inlinedAt: !2951)
!2956 = !DILocation(line: 151, column: 18, scope: !2957, inlinedAt: !2951)
!2957 = distinct !DILexicalBlock(scope: !2945, file: !250, line: 150, column: 46)
!2958 = !DILocation(line: 150, column: 22, scope: !2945, inlinedAt: !2951)
!2959 = !DILocation(line: 150, column: 30, scope: !2945, inlinedAt: !2951)
!2960 = distinct !{!2960, !2955, !2961, !746}
!2961 = !DILocation(line: 152, column: 9, scope: !2945, inlinedAt: !2951)
!2962 = !DILocation(line: 153, column: 9, scope: !2963, inlinedAt: !2951)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !250, line: 153, column: 9)
!2964 = distinct !DILexicalBlock(scope: !2945, file: !250, line: 153, column: 9)
!2965 = !DILocation(line: 153, column: 9, scope: !2964, inlinedAt: !2951)
!2966 = !DILocation(line: 153, column: 9, scope: !2967, inlinedAt: !2951)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !250, line: 153, column: 9)
!2968 = !DILocation(line: 446, column: 25, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2952, file: !250, line: 446, column: 13)
!2970 = !{!2555, !476, i64 8}
!2971 = !DILocation(line: 446, column: 14, scope: !2969)
!2972 = !DILocation(line: 446, column: 13, scope: !2952)
!2973 = !DILocation(line: 447, column: 50, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !250, line: 446, column: 50)
!2975 = !DILocation(line: 447, column: 48, scope: !2974)
!2976 = !DILocation(line: 448, column: 9, scope: !2974)
!2977 = !DILocation(line: 449, column: 75, scope: !2952)
!2978 = !DILocation(line: 449, column: 46, scope: !2952)
!2979 = !DILocation(line: 449, column: 44, scope: !2952)
!2980 = !DILocation(line: 450, column: 32, scope: !2952)
!2981 = !DILocation(line: 451, column: 5, scope: !2952)
!2982 = !DILocation(line: 0, scope: !2935)
!2983 = !DILocation(line: 469, column: 23, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2935, file: !250, line: 469, column: 5)
!2985 = !DILocation(line: 469, column: 5, scope: !2935)
!2986 = !DILocation(line: 487, column: 21, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 487, column: 9)
!2988 = !DILocation(line: 468, column: 10, scope: !2922)
!2989 = !DILocation(line: 457, column: 9, scope: !2922)
!2990 = !DILocation(line: 487, column: 9, scope: !2922)
!2991 = !DILocation(line: 470, column: 26, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !250, line: 470, column: 13)
!2993 = distinct !DILexicalBlock(scope: !2984, file: !250, line: 469, column: 40)
!2994 = !DILocation(line: 470, column: 38, scope: !2992)
!2995 = !DILocation(line: 470, column: 13, scope: !2993)
!2996 = !DILocation(line: 476, column: 26, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !250, line: 476, column: 13)
!2998 = !DILocation(line: 476, column: 41, scope: !2997)
!2999 = !DILocation(line: 476, column: 13, scope: !2993)
!3000 = !DILocation(line: 480, column: 26, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2993, file: !250, line: 480, column: 13)
!3002 = !DILocation(line: 480, column: 13, scope: !2993)
!3003 = !DILocation(line: 481, column: 28, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3001, file: !250, line: 480, column: 34)
!3005 = !DILocation(line: 482, column: 9, scope: !3004)
!3006 = !DILocation(line: 483, column: 45, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3001, file: !250, line: 482, column: 16)
!3008 = !DILocation(line: 483, column: 29, scope: !3007)
!3009 = !DILocation(line: 0, scope: !3001)
!3010 = !DILocation(line: 469, column: 36, scope: !2984)
!3011 = distinct !{!3011, !2985, !3012, !746}
!3012 = !DILocation(line: 485, column: 5, scope: !2935)
!3013 = !DILocation(line: 497, column: 30, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !250, line: 497, column: 13)
!3015 = distinct !DILexicalBlock(scope: !2987, file: !250, line: 487, column: 33)
!3016 = !DILocation(line: 503, column: 27, scope: !3015)
!3017 = !DILocation(line: 503, column: 43, scope: !3015)
!3018 = !DILocation(line: 503, column: 57, scope: !3015)
!3019 = !DILocation(line: 504, column: 58, scope: !3015)
!3020 = !DILocation(line: 504, column: 82, scope: !3015)
!3021 = !DILocation(line: 504, column: 45, scope: !3015)
!3022 = !DILocation(line: 504, column: 87, scope: !3015)
!3023 = !DILocation(line: 505, column: 45, scope: !3015)
!3024 = !DILocation(line: 505, column: 63, scope: !3015)
!3025 = !DILocation(line: 505, column: 50, scope: !3015)
!3026 = !DILocation(line: 505, column: 80, scope: !3015)
!3027 = !DILocation(line: 503, column: 9, scope: !3015)
!3028 = !DILocation(line: 508, column: 35, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3015, file: !250, line: 505, column: 96)
!3030 = !DILocation(line: 510, column: 17, scope: !3029)
!3031 = !DILocation(line: 509, column: 58, scope: !3029)
!3032 = !DILocation(line: 509, column: 13, scope: !3029)
!3033 = !DILocation(line: 509, column: 62, scope: !3029)
!3034 = distinct !{!3034, !3027, !3035, !746}
!3035 = !DILocation(line: 511, column: 9, scope: !3015)
!3036 = !DILocation(line: 513, column: 30, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3015, file: !250, line: 513, column: 13)
!3038 = !DILocation(line: 514, column: 40, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3037, file: !250, line: 513, column: 48)
!3040 = !DILocation(line: 515, column: 9, scope: !3039)
!3041 = !DILocation(line: 518, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !250, line: 518, column: 9)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !250, line: 518, column: 9)
!3044 = distinct !DILexicalBlock(scope: !2987, file: !250, line: 516, column: 12)
!3045 = !DILocation(line: 518, column: 9, scope: !3043)
!3046 = !DILocation(line: 518, column: 9, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3042, file: !250, line: 518, column: 9)
!3048 = !DILocation(line: 521, column: 30, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !250, line: 521, column: 13)
!3050 = !DILocation(line: 522, column: 42, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3049, file: !250, line: 521, column: 48)
!3052 = !DILocation(line: 523, column: 9, scope: !3051)
!3053 = !DILocation(line: 0, scope: !2937)
!3054 = !DILocation(line: 527, column: 5, scope: !2937)
!3055 = !DILocation(line: 0, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !250, line: 527, column: 45)
!3057 = distinct !DILexicalBlock(scope: !2937, file: !250, line: 527, column: 5)
!3058 = !DILocation(line: 538, column: 20, scope: !2922)
!3059 = !DILocation(line: 538, column: 9, scope: !2922)
!3060 = !DILocation(line: 538, column: 36, scope: !2922)
!3061 = !DILocation(line: 542, column: 28, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 542, column: 9)
!3063 = !DILocation(line: 0, scope: !3062)
!3064 = !DILocation(line: 550, column: 5, scope: !2922)
!3065 = !DILocation(line: 551, column: 20, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 551, column: 9)
!3067 = !DILocation(line: 551, column: 52, scope: !3066)
!3068 = !DILocation(line: 551, column: 39, scope: !3066)
!3069 = !DILocation(line: 551, column: 9, scope: !2922)
!3070 = !DILocation(line: 530, column: 39, scope: !3056)
!3071 = !DILocation(line: 530, column: 9, scope: !3056)
!3072 = !DILocation(line: 530, column: 17, scope: !3056)
!3073 = !DILocation(line: 530, column: 26, scope: !3056)
!3074 = !DILocation(line: 531, column: 17, scope: !3056)
!3075 = !DILocation(line: 531, column: 26, scope: !3056)
!3076 = !DILocation(line: 532, column: 17, scope: !3056)
!3077 = !DILocation(line: 532, column: 31, scope: !3056)
!3078 = !DILocation(line: 533, column: 17, scope: !3056)
!3079 = !DILocation(line: 533, column: 34, scope: !3056)
!3080 = !DILocation(line: 527, column: 34, scope: !3057)
!3081 = distinct !{!3081, !3054, !3082, !746}
!3082 = !DILocation(line: 535, column: 5, scope: !2937)
!3083 = !DILocation(line: 552, column: 9, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3066, file: !250, line: 551, column: 65)
!3085 = !DILocation(line: 553, column: 13, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3084, file: !250, line: 553, column: 13)
!3087 = !DILocation(line: 553, column: 13, scope: !3084)
!3088 = !DILocation(line: 554, column: 13, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !250, line: 553, column: 29)
!3090 = !DILocation(line: 555, column: 9, scope: !3089)
!3091 = !DILocation(line: 558, column: 26, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2922, file: !250, line: 558, column: 9)
!3093 = !DILocation(line: 559, column: 13, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !250, line: 558, column: 44)
!3095 = !DILocation(line: 560, column: 26, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !250, line: 559, column: 37)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !250, line: 559, column: 13)
!3098 = !DILocation(line: 560, column: 42, scope: !3096)
!3099 = !DILocation(line: 561, column: 9, scope: !3096)
!3100 = !DILocation(line: 562, column: 40, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !250, line: 561, column: 16)
!3102 = !DILocation(line: 565, column: 1, scope: !2922)
!3103 = distinct !DISubprogram(name: "halide_default_do_task", scope: !250, file: !250, line: 589, type: !365, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3104)
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "user_context", arg: 1, scope: !3103, file: !250, line: 589, type: !15)
!3106 = !DILocalVariable(name: "f", arg: 2, scope: !3103, file: !250, line: 589, type: !282)
!3107 = !DILocalVariable(name: "idx", arg: 3, scope: !3103, file: !250, line: 589, type: !161)
!3108 = !DILocalVariable(name: "closure", arg: 4, scope: !3103, file: !250, line: 590, type: !260)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 591, column: 12, scope: !3103)
!3111 = !DILocation(line: 591, column: 5, scope: !3103)
!3112 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !250, file: !250, line: 594, type: !371, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3113)
!3113 = !{!3114, !3115, !3116, !3117, !3118, !3119}
!3114 = !DILocalVariable(name: "user_context", arg: 1, scope: !3112, file: !250, line: 594, type: !15)
!3115 = !DILocalVariable(name: "f", arg: 2, scope: !3112, file: !250, line: 594, type: !256)
!3116 = !DILocalVariable(name: "min", arg: 3, scope: !3112, file: !250, line: 595, type: !161)
!3117 = !DILocalVariable(name: "extent", arg: 4, scope: !3112, file: !250, line: 595, type: !161)
!3118 = !DILocalVariable(name: "closure", arg: 5, scope: !3112, file: !250, line: 595, type: !260)
!3119 = !DILocalVariable(name: "task_parent", arg: 6, scope: !3112, file: !250, line: 596, type: !15)
!3120 = !DILocation(line: 0, scope: !3112)
!3121 = !DILocation(line: 597, column: 12, scope: !3112)
!3122 = !DILocation(line: 597, column: 5, scope: !3112)
!3123 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !250, file: !250, line: 600, type: !377, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130}
!3125 = !DILocalVariable(name: "user_context", arg: 1, scope: !3123, file: !250, line: 600, type: !15)
!3126 = !DILocalVariable(name: "f", arg: 2, scope: !3123, file: !250, line: 600, type: !282)
!3127 = !DILocalVariable(name: "min", arg: 3, scope: !3123, file: !250, line: 601, type: !161)
!3128 = !DILocalVariable(name: "size", arg: 4, scope: !3123, file: !250, line: 601, type: !161)
!3129 = !DILocalVariable(name: "closure", arg: 5, scope: !3123, file: !250, line: 601, type: !260)
!3130 = !DILocalVariable(name: "job", scope: !3123, file: !250, line: 606, type: !249)
!3131 = !DILocation(line: 0, scope: !3123)
!3132 = !DILocation(line: 602, column: 14, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3123, file: !250, line: 602, column: 9)
!3134 = !DILocation(line: 602, column: 9, scope: !3123)
!3135 = !DILocation(line: 606, column: 5, scope: !3123)
!3136 = !DILocation(line: 606, column: 10, scope: !3123)
!3137 = !DILocation(line: 607, column: 14, scope: !3123)
!3138 = !DILocation(line: 607, column: 17, scope: !3123)
!3139 = !DILocation(line: 608, column: 14, scope: !3123)
!3140 = !DILocation(line: 608, column: 18, scope: !3123)
!3141 = !DILocation(line: 609, column: 14, scope: !3123)
!3142 = !DILocation(line: 609, column: 21, scope: !3123)
!3143 = !DILocation(line: 610, column: 14, scope: !3123)
!3144 = !DILocation(line: 610, column: 21, scope: !3123)
!3145 = !DILocation(line: 611, column: 14, scope: !3123)
!3146 = !DILocation(line: 611, column: 25, scope: !3123)
!3147 = !DILocation(line: 612, column: 14, scope: !3123)
!3148 = !DILocation(line: 612, column: 29, scope: !3123)
!3149 = !DILocation(line: 613, column: 14, scope: !3123)
!3150 = !DILocation(line: 613, column: 22, scope: !3123)
!3151 = !DILocation(line: 614, column: 14, scope: !3123)
!3152 = !DILocation(line: 614, column: 26, scope: !3123)
!3153 = !DILocation(line: 615, column: 14, scope: !3123)
!3154 = !DILocation(line: 615, column: 19, scope: !3123)
!3155 = !{!2549, !474, i64 16}
!3156 = !DILocation(line: 616, column: 9, scope: !3123)
!3157 = !DILocation(line: 616, column: 17, scope: !3123)
!3158 = !{!2549, !474, i64 56}
!3159 = !DILocation(line: 617, column: 9, scope: !3123)
!3160 = !DILocation(line: 617, column: 22, scope: !3123)
!3161 = !DILocation(line: 618, column: 9, scope: !3123)
!3162 = !DILocation(line: 618, column: 21, scope: !3123)
!3163 = !DILocation(line: 619, column: 9, scope: !3123)
!3164 = !DILocation(line: 619, column: 24, scope: !3123)
!3165 = !DILocation(line: 620, column: 9, scope: !3123)
!3166 = !DILocation(line: 620, column: 24, scope: !3123)
!3167 = !DILocation(line: 621, column: 9, scope: !3123)
!3168 = !DILocation(line: 621, column: 27, scope: !3123)
!3169 = !DILocation(line: 622, column: 9, scope: !3123)
!3170 = !DILocation(line: 622, column: 18, scope: !3123)
!3171 = !DILocation(line: 623, column: 9, scope: !3123)
!3172 = !DILocation(line: 623, column: 23, scope: !3123)
!3173 = !DILocation(line: 624, column: 9, scope: !3123)
!3174 = !DILocation(line: 624, column: 20, scope: !3123)
!3175 = !DILocation(line: 625, column: 5, scope: !3123)
!3176 = !DILocation(line: 626, column: 5, scope: !3123)
!3177 = !DILocation(line: 627, column: 5, scope: !3123)
!3178 = !DILocation(line: 628, column: 5, scope: !3123)
!3179 = !DILocation(line: 629, column: 16, scope: !3123)
!3180 = !DILocation(line: 630, column: 1, scope: !3123)
!3181 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !250, file: !250, line: 632, type: !383, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3190, !3191}
!3183 = !DILocalVariable(name: "user_context", arg: 1, scope: !3181, file: !250, line: 632, type: !15)
!3184 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3181, file: !250, line: 632, type: !161)
!3185 = !DILocalVariable(name: "tasks", arg: 3, scope: !3181, file: !250, line: 633, type: !385)
!3186 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3181, file: !250, line: 634, type: !15)
!3187 = !DILocalVariable(name: "jobs", scope: !3181, file: !250, line: 635, type: !248)
!3188 = !DILocalVariable(name: "i", scope: !3189, file: !250, line: 637, type: !161)
!3189 = distinct !DILexicalBlock(scope: !3181, file: !250, line: 637, column: 5)
!3190 = !DILocalVariable(name: "exit_status", scope: !3181, file: !250, line: 659, type: !161)
!3191 = !DILocalVariable(name: "i", scope: !3192, file: !250, line: 660, type: !161)
!3192 = distinct !DILexicalBlock(scope: !3181, file: !250, line: 660, column: 5)
!3193 = !DILocation(line: 0, scope: !3181)
!3194 = !DILocation(line: 635, column: 58, scope: !3181)
!3195 = !DILocation(line: 635, column: 26, scope: !3181)
!3196 = !DILocation(line: 0, scope: !3189)
!3197 = !DILocation(line: 637, column: 23, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3189, file: !250, line: 637, column: 5)
!3199 = !DILocation(line: 637, column: 5, scope: !3189)
!3200 = !DILocation(line: 653, column: 19, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3181, file: !250, line: 653, column: 9)
!3202 = !DILocation(line: 653, column: 9, scope: !3181)
!3203 = !DILocation(line: 638, column: 20, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !250, line: 638, column: 13)
!3205 = distinct !DILexicalBlock(scope: !3198, file: !250, line: 637, column: 41)
!3206 = !{!2550, !476, i64 40}
!3207 = !DILocation(line: 638, column: 27, scope: !3204)
!3208 = !DILocation(line: 638, column: 13, scope: !3205)
!3209 = !DILocation(line: 640, column: 22, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !250, line: 638, column: 33)
!3211 = !DILocation(line: 641, column: 13, scope: !3210)
!3212 = !DILocation(line: 643, column: 30, scope: !3205)
!3213 = !DILocation(line: 643, column: 9, scope: !3205)
!3214 = !DILocation(line: 643, column: 22, scope: !3205)
!3215 = !{i64 0, i64 8, !1084, i64 8, i64 8, !1084, i64 16, i64 8, !1084, i64 24, i64 8, !1084, i64 32, i64 4, !587, i64 36, i64 4, !587, i64 40, i64 4, !587, i64 44, i64 4, !587, i64 48, i64 1, !2807}
!3216 = !DILocation(line: 644, column: 17, scope: !3205)
!3217 = !DILocation(line: 644, column: 25, scope: !3205)
!3218 = !DILocation(line: 645, column: 17, scope: !3205)
!3219 = !DILocation(line: 645, column: 30, scope: !3205)
!3220 = !DILocation(line: 646, column: 17, scope: !3205)
!3221 = !DILocation(line: 646, column: 29, scope: !3205)
!3222 = !DILocation(line: 647, column: 17, scope: !3205)
!3223 = !DILocation(line: 647, column: 32, scope: !3205)
!3224 = !DILocation(line: 648, column: 17, scope: !3205)
!3225 = !DILocation(line: 648, column: 32, scope: !3205)
!3226 = !DILocation(line: 649, column: 17, scope: !3205)
!3227 = !DILocation(line: 649, column: 35, scope: !3205)
!3228 = !DILocation(line: 650, column: 17, scope: !3205)
!3229 = !DILocation(line: 650, column: 28, scope: !3205)
!3230 = !DILocation(line: 651, column: 5, scope: !3205)
!3231 = !DILocation(line: 637, column: 37, scope: !3198)
!3232 = distinct !{!3232, !3199, !3233, !746}
!3233 = !DILocation(line: 651, column: 5, scope: !3189)
!3234 = !DILocation(line: 657, column: 5, scope: !3181)
!3235 = !DILocation(line: 658, column: 50, scope: !3181)
!3236 = !DILocation(line: 658, column: 5, scope: !3181)
!3237 = !DILocation(line: 0, scope: !3192)
!3238 = !DILocation(line: 660, column: 23, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3192, file: !250, line: 660, column: 5)
!3240 = !DILocation(line: 660, column: 5, scope: !3192)
!3241 = !DILocation(line: 668, column: 5, scope: !3181)
!3242 = !DILocation(line: 663, column: 43, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !250, line: 660, column: 41)
!3244 = !DILocation(line: 663, column: 9, scope: !3243)
!3245 = !DILocation(line: 664, column: 21, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !250, line: 664, column: 13)
!3247 = !DILocation(line: 664, column: 33, scope: !3246)
!3248 = !DILocation(line: 664, column: 13, scope: !3243)
!3249 = !DILocation(line: 660, column: 37, scope: !3239)
!3250 = distinct !{!3250, !3240, !3251, !746}
!3251 = !DILocation(line: 667, column: 5, scope: !3192)
!3252 = !DILocation(line: 670, column: 1, scope: !3181)
!3253 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !250, file: !250, line: 715, type: !390, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3254)
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "s", arg: 1, scope: !3253, file: !250, line: 715, type: !273)
!3256 = !DILocalVariable(name: "n", arg: 2, scope: !3253, file: !250, line: 715, type: !161)
!3257 = !DILocalVariable(name: "sem", scope: !3253, file: !250, line: 716, type: !305)
!3258 = !DILocation(line: 0, scope: !3253)
!3259 = !DILocation(line: 717, column: 76, scope: !3253)
!3260 = !DILocalVariable(name: "addr", arg: 1, scope: !3261, file: !32, line: 218, type: !599)
!3261 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !629, file: !32, line: 218, type: !3262, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3266, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !599, !599}
!3264 = !{!3260, !3265}
!3265 = !DILocalVariable(name: "val", arg: 2, scope: !3261, file: !32, line: 218, type: !599)
!3266 = !{!3267}
!3267 = !DITemplateTypeParameter(name: "T", type: !161)
!3268 = !DILocation(line: 0, scope: !3261, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 717, column: 5, scope: !3253)
!3270 = !DILocation(line: 219, column: 5, scope: !3261, inlinedAt: !3269)
!3271 = !DILocation(line: 718, column: 5, scope: !3253)
!3272 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !250, file: !250, line: 735, type: !396, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278}
!3274 = !DILocalVariable(name: "s", arg: 1, scope: !3272, file: !250, line: 735, type: !273)
!3275 = !DILocalVariable(name: "n", arg: 2, scope: !3272, file: !250, line: 735, type: !161)
!3276 = !DILocalVariable(name: "sem", scope: !3272, file: !250, line: 739, type: !305)
!3277 = !DILocalVariable(name: "expected", scope: !3272, file: !250, line: 741, type: !161)
!3278 = !DILocalVariable(name: "desired", scope: !3272, file: !250, line: 742, type: !161)
!3279 = !DILocation(line: 0, scope: !3272)
!3280 = !DILocation(line: 736, column: 11, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3272, file: !250, line: 736, column: 9)
!3282 = !DILocation(line: 736, column: 9, scope: !3272)
!3283 = !DILocation(line: 743, column: 75, scope: !3272)
!3284 = !DILocalVariable(name: "addr", arg: 1, scope: !3285, file: !32, line: 205, type: !599)
!3285 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !629, file: !32, line: 205, type: !3262, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3266, retainedNodes: !3286)
!3286 = !{!3284, !3287}
!3287 = !DILocalVariable(name: "val", arg: 2, scope: !3285, file: !32, line: 205, type: !599)
!3288 = !DILocation(line: 0, scope: !3285, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 743, column: 5, scope: !3272)
!3290 = !DILocation(line: 206, column: 5, scope: !3285, inlinedAt: !3289)
!3291 = !DILocation(line: 745, column: 28, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3272, file: !250, line: 744, column: 8)
!3293 = !DILocation(line: 746, column: 22, scope: !3272)
!3294 = !DILocation(line: 746, column: 27, scope: !3272)
!3295 = !DILocalVariable(name: "addr", arg: 1, scope: !3296, file: !32, line: 179, type: !599)
!3296 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !629, file: !32, line: 179, type: !3297, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3266, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!66, !599, !599, !599}
!3299 = !{!3295, !3300, !3301}
!3300 = !DILocalVariable(name: "expected", arg: 2, scope: !3296, file: !32, line: 179, type: !599)
!3301 = !DILocalVariable(name: "desired", arg: 3, scope: !3296, file: !32, line: 179, type: !599)
!3302 = !DILocation(line: 0, scope: !3296, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 747, column: 15, scope: !3272)
!3304 = !DILocation(line: 180, column: 12, scope: !3296, inlinedAt: !3303)
!3305 = !DILocation(line: 749, column: 1, scope: !3272)
!3306 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !250, file: !250, line: 721, type: !390, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3307)
!3307 = !{!3308, !3309, !3310, !3311}
!3308 = !DILocalVariable(name: "s", arg: 1, scope: !3306, file: !250, line: 721, type: !273)
!3309 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !250, line: 721, type: !161)
!3310 = !DILocalVariable(name: "sem", scope: !3306, file: !250, line: 722, type: !305)
!3311 = !DILocalVariable(name: "old_val", scope: !3306, file: !250, line: 723, type: !161)
!3312 = !DILocation(line: 0, scope: !3306)
!3313 = !DILocation(line: 723, column: 102, scope: !3306)
!3314 = !DILocalVariable(name: "addr", arg: 1, scope: !3315, file: !32, line: 170, type: !599)
!3315 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !629, file: !32, line: 170, type: !3316, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3266, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!161, !599, !161}
!3318 = !{!3314, !3319}
!3319 = !DILocalVariable(name: "val", arg: 2, scope: !3315, file: !32, line: 170, type: !161)
!3320 = !DILocation(line: 0, scope: !3315, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 723, column: 19, scope: !3306)
!3322 = !DILocation(line: 171, column: 12, scope: !3315, inlinedAt: !3321)
!3323 = !DILocation(line: 725, column: 17, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3306, file: !250, line: 725, column: 9)
!3325 = !DILocation(line: 725, column: 22, scope: !3324)
!3326 = !DILocation(line: 727, column: 9, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !250, line: 725, column: 33)
!3328 = !DILocation(line: 728, column: 9, scope: !3327)
!3329 = !DILocation(line: 729, column: 9, scope: !3327)
!3330 = !DILocation(line: 730, column: 9, scope: !3327)
!3331 = !DILocation(line: 731, column: 5, scope: !3327)
!3332 = !DILocation(line: 732, column: 20, scope: !3306)
!3333 = !DILocation(line: 732, column: 5, scope: !3306)
!3334 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !9, file: !250, line: 584, type: !770, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3335 = !DILocation(line: 585, column: 5, scope: !3334)
!3336 = !DILocation(line: 586, column: 1, scope: !3334)
!3337 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !250, file: !250, line: 689, type: !770, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3338)
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "i", scope: !3340, file: !250, line: 702, type: !161)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !250, line: 702, column: 9)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !250, line: 690, column: 33)
!3342 = distinct !DILexicalBlock(scope: !3337, file: !250, line: 690, column: 9)
!3343 = !DILocation(line: 690, column: 20, scope: !3342)
!3344 = !DILocation(line: 690, column: 9, scope: !3337)
!3345 = !DILocation(line: 693, column: 9, scope: !3341)
!3346 = !DILocation(line: 695, column: 29, scope: !3341)
!3347 = !DILocation(line: 696, column: 9, scope: !3341)
!3348 = !DILocation(line: 697, column: 9, scope: !3341)
!3349 = !DILocation(line: 698, column: 9, scope: !3341)
!3350 = !DILocation(line: 699, column: 9, scope: !3341)
!3351 = !DILocation(line: 0, scope: !3340)
!3352 = !DILocation(line: 702, column: 40, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3340, file: !250, line: 702, column: 9)
!3354 = !DILocation(line: 702, column: 27, scope: !3353)
!3355 = !DILocation(line: 702, column: 9, scope: !3340)
!3356 = !DILocalVariable(name: "this", arg: 1, scope: !3357, type: !3361, flags: DIFlagArtificial | DIFlagObjectPointer)
!3357 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !325, file: !250, line: 158, type: !358, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !357, retainedNodes: !3358)
!3358 = !{!3356, !3359, !3360}
!3359 = !DILocalVariable(name: "bytes", scope: !3357, file: !250, line: 160, type: !309)
!3360 = !DILocalVariable(name: "limit", scope: !3357, file: !250, line: 161, type: !309)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3362 = !DILocation(line: 0, scope: !3357, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 707, column: 20, scope: !3341)
!3364 = !DILocation(line: 162, column: 9, scope: !3357, inlinedAt: !3363)
!3365 = !DILocation(line: 708, column: 5, scope: !3341)
!3366 = !DILocation(line: 703, column: 32, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3353, file: !250, line: 702, column: 62)
!3368 = !DILocation(line: 703, column: 13, scope: !3367)
!3369 = !DILocation(line: 702, column: 58, scope: !3353)
!3370 = distinct !{!3370, !3355, !3371, !746}
!3371 = !DILocation(line: 704, column: 9, scope: !3340)
!3372 = !DILocation(line: 709, column: 1, scope: !3337)
!3373 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !250, file: !250, line: 672, type: !2469, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "n", arg: 1, scope: !3373, file: !250, line: 672, type: !161)
!3376 = !DILocalVariable(name: "old", scope: !3373, file: !250, line: 683, type: !161)
!3377 = !DILocation(line: 0, scope: !3373)
!3378 = !DILocation(line: 673, column: 11, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3373, file: !250, line: 673, column: 9)
!3380 = !DILocation(line: 673, column: 9, scope: !3373)
!3381 = !DILocation(line: 674, column: 9, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !250, line: 673, column: 16)
!3383 = !DILocation(line: 679, column: 5, scope: !3373)
!3384 = !DILocation(line: 680, column: 9, scope: !3373)
!3385 = !DILocation(line: 680, column: 11, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3373, file: !250, line: 680, column: 9)
!3387 = !DILocation(line: 681, column: 13, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3386, file: !250, line: 680, column: 17)
!3389 = !DILocation(line: 682, column: 5, scope: !3388)
!3390 = !DILocation(line: 683, column: 26, scope: !3373)
!3391 = !DILocation(line: 684, column: 42, scope: !3373)
!3392 = !DILocation(line: 684, column: 40, scope: !3373)
!3393 = !DILocation(line: 685, column: 5, scope: !3373)
!3394 = !DILocation(line: 686, column: 5, scope: !3373)
!3395 = !DISubprogram(name: "halide_error", scope: !242, file: !242, line: 111, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3396 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !250, file: !250, line: 751, type: !3397, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!363, !363}
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "f", arg: 1, scope: !3396, file: !250, line: 751, type: !363)
!3401 = !DILocalVariable(name: "result", scope: !3396, file: !250, line: 752, type: !363)
!3402 = !DILocation(line: 0, scope: !3396)
!3403 = !DILocation(line: 752, column: 31, scope: !3396)
!3404 = !DILocation(line: 753, column: 20, scope: !3396)
!3405 = !DILocation(line: 754, column: 5, scope: !3396)
!3406 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !250, file: !250, line: 757, type: !3407, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!369, !369}
!3409 = !{!3410, !3411}
!3410 = !DILocalVariable(name: "f", arg: 1, scope: !3406, file: !250, line: 757, type: !369)
!3411 = !DILocalVariable(name: "result", scope: !3406, file: !250, line: 758, type: !369)
!3412 = !DILocation(line: 0, scope: !3406)
!3413 = !DILocation(line: 758, column: 36, scope: !3406)
!3414 = !DILocation(line: 759, column: 25, scope: !3406)
!3415 = !DILocation(line: 760, column: 5, scope: !3406)
!3416 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !250, file: !250, line: 763, type: !3417, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!375, !375}
!3419 = !{!3420, !3421}
!3420 = !DILocalVariable(name: "f", arg: 1, scope: !3416, file: !250, line: 763, type: !375)
!3421 = !DILocalVariable(name: "result", scope: !3416, file: !250, line: 764, type: !375)
!3422 = !DILocation(line: 0, scope: !3416)
!3423 = !DILocation(line: 764, column: 34, scope: !3416)
!3424 = !DILocation(line: 765, column: 23, scope: !3416)
!3425 = !DILocation(line: 766, column: 5, scope: !3416)
!3426 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !250, file: !250, line: 769, type: !3427, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !375, !363, !369, !381, !388, !394, !400}
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436}
!3430 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3426, file: !250, line: 770, type: !375)
!3431 = !DILocalVariable(name: "do_task", arg: 2, scope: !3426, file: !250, line: 771, type: !363)
!3432 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3426, file: !250, line: 772, type: !369)
!3433 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3426, file: !250, line: 773, type: !381)
!3434 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3426, file: !250, line: 774, type: !388)
!3435 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3426, file: !250, line: 775, type: !394)
!3436 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3426, file: !250, line: 776, type: !400)
!3437 = !DILocation(line: 0, scope: !3426)
!3438 = !DILocation(line: 778, column: 23, scope: !3426)
!3439 = !DILocation(line: 779, column: 20, scope: !3426)
!3440 = !DILocation(line: 780, column: 25, scope: !3426)
!3441 = !DILocation(line: 781, column: 30, scope: !3426)
!3442 = !DILocation(line: 782, column: 27, scope: !3426)
!3443 = !DILocation(line: 783, column: 34, scope: !3426)
!3444 = !DILocation(line: 784, column: 30, scope: !3426)
!3445 = !DILocation(line: 785, column: 1, scope: !3426)
!3446 = distinct !DISubprogram(name: "halide_do_par_for", scope: !250, file: !250, line: 792, type: !377, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452}
!3448 = !DILocalVariable(name: "user_context", arg: 1, scope: !3446, file: !250, line: 792, type: !15)
!3449 = !DILocalVariable(name: "f", arg: 2, scope: !3446, file: !250, line: 792, type: !282)
!3450 = !DILocalVariable(name: "min", arg: 3, scope: !3446, file: !250, line: 793, type: !161)
!3451 = !DILocalVariable(name: "size", arg: 4, scope: !3446, file: !250, line: 793, type: !161)
!3452 = !DILocalVariable(name: "closure", arg: 5, scope: !3446, file: !250, line: 793, type: !260)
!3453 = !DILocation(line: 0, scope: !3446)
!3454 = !DILocation(line: 794, column: 14, scope: !3446)
!3455 = !DILocation(line: 794, column: 12, scope: !3446)
!3456 = !DILocation(line: 794, column: 5, scope: !3446)
!3457 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !250, file: !250, line: 802, type: !383, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3458)
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DILocalVariable(name: "user_context", arg: 1, scope: !3457, file: !250, line: 802, type: !15)
!3460 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3457, file: !250, line: 802, type: !161)
!3461 = !DILocalVariable(name: "tasks", arg: 3, scope: !3457, file: !250, line: 803, type: !385)
!3462 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3457, file: !250, line: 804, type: !15)
!3463 = !DILocation(line: 0, scope: !3457)
!3464 = !DILocation(line: 805, column: 12, scope: !3457)
!3465 = !DILocation(line: 805, column: 5, scope: !3457)
!3466 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !250, file: !250, line: 808, type: !390, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3467)
!3467 = !{!3468, !3469}
!3468 = !DILocalVariable(name: "sema", arg: 1, scope: !3466, file: !250, line: 808, type: !273)
!3469 = !DILocalVariable(name: "count", arg: 2, scope: !3466, file: !250, line: 808, type: !161)
!3470 = !DILocation(line: 0, scope: !3466)
!3471 = !DILocation(line: 809, column: 12, scope: !3466)
!3472 = !DILocation(line: 809, column: 5, scope: !3466)
!3473 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !250, file: !250, line: 812, type: !390, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "sema", arg: 1, scope: !3473, file: !250, line: 812, type: !273)
!3476 = !DILocalVariable(name: "count", arg: 2, scope: !3473, file: !250, line: 812, type: !161)
!3477 = !DILocation(line: 0, scope: !3473)
!3478 = !DILocation(line: 813, column: 12, scope: !3473)
!3479 = !DILocation(line: 813, column: 5, scope: !3473)
!3480 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !250, file: !250, line: 816, type: !396, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3481)
!3481 = !{!3482, !3483}
!3482 = !DILocalVariable(name: "sema", arg: 1, scope: !3480, file: !250, line: 816, type: !273)
!3483 = !DILocalVariable(name: "count", arg: 2, scope: !3480, file: !250, line: 816, type: !161)
!3484 = !DILocation(line: 0, scope: !3480)
!3485 = !DILocation(line: 817, column: 12, scope: !3480)
!3486 = !DILocation(line: 817, column: 5, scope: !3480)
!3487 = !DISubprogram(name: "qurt_mutex_init", scope: !23, file: !23, line: 226, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3490}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!3491 = !DISubprogram(name: "qurt_cond_init", scope: !23, file: !23, line: 231, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3494}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3495 = !DISubprogram(name: "qurt_mutex_lock", scope: !23, file: !23, line: 228, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3496 = !DISubprogram(name: "qurt_cond_wait", scope: !23, file: !23, line: 234, type: !3497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !3494, !3490}
!3499 = !DISubprogram(name: "qurt_mutex_unlock", scope: !23, file: !23, line: 229, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3500 = !DISubprogram(name: "qurt_cond_destroy", scope: !23, file: !23, line: 232, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3501 = !DISubprogram(name: "qurt_mutex_destroy", scope: !23, file: !23, line: 227, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3502 = !DISubprogram(name: "qurt_cond_signal", scope: !23, file: !23, line: 233, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
