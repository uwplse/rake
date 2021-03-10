; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads_tsan.cpp"
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
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !415 {
  ret i32 4, !dbg !418
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_default_thread_priority(i32 %0) local_unnamed_addr #0 !dbg !419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !423, metadata !DIExpression()), !dbg !424
  %2 = icmp sgt i32 %0, 255, !dbg !425
  br i1 %2, label %6, label %3, !dbg !427

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 1, !dbg !428
  %5 = trunc i32 %0 to i16, !dbg !430
  br i1 %4, label %8, label %6, !dbg !430

6:                                                ; preds = %1, %3
  %7 = phi i16 [ %5, %3 ], [ 255, %1 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !423, metadata !DIExpression()), !dbg !424
  store i16 %7, i16* @halide_qurt_default_thread_priority, align 2, !dbg !431, !tbaa !432
  br label %8, !dbg !436

8:                                                ; preds = %3, %6
  ret void, !dbg !436
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i16 @halide_get_default_thread_priority() local_unnamed_addr #0 !dbg !437 {
  %1 = load i16, i16* @halide_qurt_default_thread_priority, align 2, !dbg !440, !tbaa !432
  ret i16 %1, !dbg !441
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #2 !dbg !442 {
  %3 = alloca %struct._qurt_thread_attr, align 4
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !446, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i8* %1, metadata !447, metadata !DIExpression()), !dbg !466
  %4 = tail call zeroext i16 @halide_get_default_thread_priority() #6, !dbg !467
  call void @llvm.dbg.value(metadata i16 %4, metadata !448, metadata !DIExpression()), !dbg !466
  %5 = tail call i8* @malloc(i32 16) #7, !dbg !468
  call void @llvm.dbg.value(metadata i8* %5, metadata !449, metadata !DIExpression()), !dbg !466
  %6 = bitcast i8* %5 to void (i8*)**, !dbg !469
  store void (i8*)* %0, void (i8*)** %6, align 4, !dbg !470, !tbaa !471
  %7 = getelementptr inbounds i8, i8* %5, i32 4, !dbg !476
  %8 = bitcast i8* %7 to i8**, !dbg !476
  store i8* %1, i8** %8, align 4, !dbg !477, !tbaa !478
  %9 = tail call i8* @memalign(i32 128, i32 262144) #7, !dbg !479
  %10 = getelementptr inbounds i8, i8* %5, i32 8, !dbg !480
  %11 = bitcast i8* %10 to i8**, !dbg !480
  store i8* %9, i8** %11, align 4, !dbg !481, !tbaa !482
  %12 = getelementptr inbounds i8, i8* %5, i32 12, !dbg !483
  %13 = tail call i8* @memset(i8* nonnull %12, i32 0, i32 4) #7, !dbg !484
  %14 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 0, i32 0, !dbg !485
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #8, !dbg !485
  call void @llvm.dbg.declare(metadata %struct._qurt_thread_attr* %3, metadata !450, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !487, metadata !DIExpression()), !dbg !493
  store i8 0, i8* %14, align 4, !dbg !495, !tbaa !496
  %15 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 1, !dbg !497
  store i8 0, i8* %15, align 4, !dbg !498, !tbaa !499
  %16 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 3, !dbg !501
  %17 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 4, !dbg !502
  store i8 0, i8* %17, align 4, !dbg !503, !tbaa !504
  %18 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 2, !dbg !505
  store i8 -1, i8* %18, align 1, !dbg !506, !tbaa !507
  %19 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 5, !dbg !508
  store i8 -1, i8* %19, align 1, !dbg !509, !tbaa !510
  %20 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 6, !dbg !511
  store i16 -2, i16* %20, align 2, !dbg !512, !tbaa !513
  %21 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 7, !dbg !514
  %22 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i32 0, i32 8, !dbg !515
  %23 = load i8*, i8** %11, align 4, !dbg !516, !tbaa !482
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !517, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i8* %23, metadata !522, metadata !DIExpression()), !dbg !523
  store i8* %23, i8** %22, align 4, !dbg !525, !tbaa !526
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !527, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i32 262144, metadata !532, metadata !DIExpression()), !dbg !533
  store i32 262144, i32* %21, align 4, !dbg !535, !tbaa !536
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !537, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i16 %4, metadata !542, metadata !DIExpression()), !dbg !543
  store i16 %4, i16* %16, align 2, !dbg !545, !tbaa !546
  %24 = bitcast i8* %12 to i32*, !dbg !547
  %25 = call i32 @qurt_thread_create(i32* nonnull %24, %struct._qurt_thread_attr* nonnull %3, void (i8*)* nonnull @_ZN12_GLOBAL__N_119spawn_thread_helperEPv, i8* %5) #7, !dbg !548
  %26 = bitcast i8* %5 to %struct.halide_thread*, !dbg !549
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #8, !dbg !550
  ret %struct.halide_thread* %26, !dbg !551
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !552 dso_local i8* @malloc(i32) local_unnamed_addr #4

declare !dbg !555 dso_local i8* @memalign(i32, i32) local_unnamed_addr #4

declare !dbg !558 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #4

declare !dbg !561 dso_local i32 @qurt_thread_create(i32*, %struct._qurt_thread_attr*, void (i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define internal void @_ZN12_GLOBAL__N_119spawn_thread_helperEPv(i8* nocapture readonly %0) #2 !dbg !566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i8* %0, metadata !569, metadata !DIExpression()), !dbg !570
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !571
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !dbg !571, !tbaa !471
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !572
  %5 = bitcast i8* %4 to i8**, !dbg !572
  %6 = load i8*, i8** %5, align 4, !dbg !572, !tbaa !478
  tail call void %3(i8* %6) #7, !dbg !573
  ret void, !dbg !574
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #2 !dbg !575 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !579, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !580, metadata !DIExpression()), !dbg !582
  %3 = bitcast i32* %2 to i8*, !dbg !583
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !583
  call void @llvm.dbg.value(metadata i32 0, metadata !581, metadata !DIExpression()), !dbg !582
  store i32 0, i32* %2, align 4, !dbg !584, !tbaa !585
  %4 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i32 3, i32 0, !dbg !586
  %5 = load i32, i32* %4, align 4, !dbg !586, !tbaa !587
  call void @llvm.dbg.value(metadata i32* %2, metadata !581, metadata !DIExpression(DW_OP_deref)), !dbg !582
  %6 = call i32 @qurt_thread_join(i32 %5, i32* nonnull %2) #7, !dbg !588
  %7 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i32 2, !dbg !589
  %8 = bitcast %struct.halide_thread* %7 to i8**, !dbg !589
  %9 = load i8*, i8** %8, align 4, !dbg !589, !tbaa !482
  call void @free(i8* %9) #7, !dbg !590
  %10 = bitcast %struct.halide_thread* %0 to i8*, !dbg !591
  call void @free(i8* %10) #7, !dbg !592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !593
  ret void, !dbg !593
}

declare !dbg !594 dso_local i32 @qurt_thread_join(i32, i32*) local_unnamed_addr #4

declare !dbg !598 dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #5 align 2 !dbg !599 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !601, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 40, metadata !603, metadata !DIExpression()), !dbg !623
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !624
  %4 = load i32, i32* %3, align 4, !dbg !625, !tbaa !585
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13, !dbg !626

13:                                               ; preds = %58, %1
  %14 = phi i32 [ %4, %1 ], [ %59, %58 ]
  %15 = phi i32 [ 40, %1 ], [ %60, %58 ]
  br label %16, !dbg !627

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %15, metadata !603, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 %17, metadata !615, metadata !DIExpression()), !dbg !623
  %18 = and i32 %17, 1, !dbg !628
  %19 = icmp eq i32 %18, 0, !dbg !629
  br i1 %19, label %20, label %25, !dbg !627

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !615, metadata !DIExpression()), !dbg !623
  %21 = or i32 %17, 1, !dbg !630
  call void @llvm.dbg.value(metadata i32 %21, metadata !616, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i32* %3, metadata !632, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i32 %17, metadata !650, metadata !DIExpression()), !dbg !654
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst, !dbg !656
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !656
  call void @llvm.dbg.value(metadata i32 %23, metadata !651, metadata !DIExpression()), !dbg !654
  %24 = icmp eq i32 %17, %23, !dbg !657
  br i1 %24, label %61, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3, !dbg !658
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27, !dbg !660
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !661, metadata !DIExpression()), !dbg !665
  br i1 %28, label %29, label %34, !dbg !660

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %15, metadata !603, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !623
  %30 = icmp sgt i32 %15, 1, !dbg !667
  br i1 %30, label %31, label %34, !dbg !668

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1, !dbg !669
  call void @llvm.dbg.value(metadata i32 %32, metadata !603, metadata !DIExpression()), !dbg !623
  call void @halide_thread_yield() #7, !dbg !672
  %33 = load i32, i32* %3, align 4, !dbg !674, !tbaa !585
  br label %58, !dbg !675

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %35, metadata !603, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !676
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !620, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !678, metadata !DIExpression()) #8, !dbg !681
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !683, metadata !DIExpression()) #8, !dbg !687
  store i8 0, i8* %6, align 8, !dbg !689, !tbaa !690
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !693
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !695
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !696, !tbaa !697
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !dbg !699, !tbaa !700
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !701, !tbaa !702
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !703, metadata !DIExpression()), !dbg !706
  store i8 1, i8* %6, align 8, !dbg !708, !tbaa !690
  call void @llvm.dbg.value(metadata i32 %17, metadata !615, metadata !DIExpression()), !dbg !623
  %36 = and i32 %17, -4, !dbg !709
  call void @llvm.dbg.value(metadata i32 %36, metadata !621, metadata !DIExpression()), !dbg !710
  %37 = icmp eq i32 %36, 0, !dbg !711
  br i1 %37, label %38, label %39, !dbg !713

38:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !714, !tbaa !702
  br label %41, !dbg !716

39:                                               ; preds = %34
  %40 = inttoptr i32 %36 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !717
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, metadata !621, metadata !DIExpression()), !dbg !710
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !718, !tbaa !697
  br label %41

41:                                               ; preds = %39, %38
  call void @llvm.dbg.value(metadata i32 %17, metadata !615, metadata !DIExpression()), !dbg !623
  %42 = and i32 %17, 3, !dbg !720
  %43 = or i32 %42, %12, !dbg !721
  call void @llvm.dbg.value(metadata i32 %43, metadata !622, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32* %3, metadata !722, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32* undef, metadata !725, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32* undef, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata i32 %17, metadata !650, metadata !DIExpression()), !dbg !730
  %44 = cmpxchg i32* %3, i32 %17, i32 %43 seq_cst seq_cst, !dbg !732
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !732
  call void @llvm.dbg.value(metadata i32 %45, metadata !651, metadata !DIExpression()), !dbg !730
  %46 = icmp eq i32 %17, %45, !dbg !733
  br i1 %46, label %47, label %55, !dbg !734

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !735, metadata !DIExpression()) #8, !dbg !738
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !741
  %48 = load i8, i8* %6, align 8, !dbg !742, !tbaa !690, !range !743
  %49 = icmp eq i8 %48, 0, !dbg !742
  br i1 %49, label %53, label %50, !dbg !744

50:                                               ; preds = %47, %50
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !745
  %51 = load i8, i8* %6, align 8, !dbg !742, !tbaa !690, !range !743
  %52 = icmp eq i8 %51, 0, !dbg !742
  br i1 %52, label %53, label %50, !dbg !744, !llvm.loop !747

53:                                               ; preds = %50, %47
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !750
  call void @llvm.dbg.value(metadata i32 40, metadata !603, metadata !DIExpression()), !dbg !623
  %54 = load i32, i32* %3, align 4, !dbg !751, !tbaa !585
  br label %55, !dbg !752

55:                                               ; preds = %53, %41
  %56 = phi i32 [ %54, %53 ], [ %45, %41 ], !dbg !753
  %57 = phi i32 [ 40, %53 ], [ %35, %41 ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %57, metadata !603, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !754, metadata !DIExpression()) #8, !dbg !757
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !759, metadata !DIExpression()) #8, !dbg !762
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !765
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !767
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !768
  br label %58, !dbg !626

58:                                               ; preds = %55, %31
  %59 = phi i32 [ %33, %31 ], [ %56, %55 ]
  %60 = phi i32 [ %32, %31 ], [ %57, %55 ]
  br label %13, !dbg !627, !llvm.loop !769

61:                                               ; preds = %20
  ret void, !dbg !770
}

declare !dbg !771 dso_local void @halide_thread_yield() local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #5 align 2 !dbg !774 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !776, metadata !DIExpression()), !dbg !798
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !799
  %3 = load i32, i32* %2, align 4, !dbg !800, !tbaa !585
  call void @llvm.dbg.value(metadata i32* undef, metadata !801, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i32* undef, metadata !806, metadata !DIExpression()), !dbg !807
  br label %4, !dbg !809

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ], !dbg !810
  call void @llvm.dbg.value(metadata i32 %5, metadata !777, metadata !DIExpression()), !dbg !798
  %6 = and i32 %5, 2, !dbg !811
  %7 = icmp ne i32 %6, 0, !dbg !812
  call void @llvm.dbg.value(metadata i1 %7, metadata !778, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !813
  call void @llvm.dbg.value(metadata i1 undef, metadata !780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !813
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7, !dbg !814
  call void @llvm.dbg.value(metadata i1 %8, metadata !780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !813
  br i1 %9, label %64, label %10, !dbg !814

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %5, metadata !777, metadata !DIExpression()), !dbg !798
  %11 = or i32 %5, 2, !dbg !816
  call void @llvm.dbg.value(metadata i32 %11, metadata !781, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i32* %2, metadata !632, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32* %2, metadata !643, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i32 %5, metadata !650, metadata !DIExpression()), !dbg !820
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst, !dbg !822
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !822
  call void @llvm.dbg.value(metadata i32 %13, metadata !651, metadata !DIExpression()), !dbg !820
  %14 = icmp eq i32 %5, %13, !dbg !823
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %62
  %16 = phi i32 [ %63, %62 ], [ %5, %10 ], !dbg !810
  call void @llvm.dbg.value(metadata i32 %16, metadata !777, metadata !DIExpression()), !dbg !798
  %17 = and i32 %16, -4, !dbg !824
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !825
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !782, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !784, metadata !DIExpression()), !dbg !826
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3, !dbg !827
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !785, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 0, metadata !786, metadata !DIExpression()), !dbg !826
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !826, !tbaa !702
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !784, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 undef, metadata !786, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, metadata !785, metadata !DIExpression()), !dbg !826
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null, !dbg !828
  br i1 %21, label %22, label %33, !dbg !829

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, metadata !784, metadata !DIExpression()), !dbg !826
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1, !dbg !830
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !dbg !830, !tbaa !697
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !787, metadata !DIExpression()), !dbg !831
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null, !dbg !832
  br i1 %26, label %27, label %28, !dbg !835

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i32 0, i32 0)) #7, !dbg !836
  tail call void @abort() #7, !dbg !836
  br label %28, !dbg !836

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2, !dbg !838
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !dbg !839, !tbaa !700
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !784, metadata !DIExpression()), !dbg !826
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3, !dbg !840
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !785, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 undef, metadata !786, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !826
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !826, !tbaa !702
  call void @llvm.dbg.value(metadata i32 undef, metadata !786, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, metadata !785, metadata !DIExpression()), !dbg !826
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null, !dbg !828
  br i1 %32, label %22, label %33, !dbg !829, !llvm.loop !841

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ], !dbg !826
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !843, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %16, metadata !777, metadata !DIExpression()), !dbg !798
  %35 = and i32 %16, 1, !dbg !844
  %36 = icmp eq i32 %35, 0, !dbg !845
  br i1 %36, label %42, label %37, !dbg !846

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %16, metadata !777, metadata !DIExpression()), !dbg !798
  %38 = and i32 %16, -3, !dbg !847
  call void @llvm.dbg.value(metadata i32 %38, metadata !789, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i32* %2, metadata !849, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32* undef, metadata !852, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32* undef, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32* %2, metadata !643, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i32 %16, metadata !650, metadata !DIExpression()), !dbg !857
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst, !dbg !859
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !859
  call void @llvm.dbg.value(metadata i32 %40, metadata !651, metadata !DIExpression()), !dbg !857
  %41 = icmp eq i32 %16, %40, !dbg !860
  br i1 %41, label %64, label %62, !dbg !861, !llvm.loop !862

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2, !dbg !865
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !dbg !865, !tbaa !700
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !792, metadata !DIExpression()), !dbg !826
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !866
  br i1 %45, label %46, label %54, !dbg !867

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  call void @llvm.dbg.value(metadata i32 %47, metadata !777, metadata !DIExpression()), !dbg !798
  %48 = and i32 %47, 1, !dbg !868
  call void @llvm.dbg.value(metadata i32 %48, metadata !796, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata i32* %2, metadata !849, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32* undef, metadata !852, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32* undef, metadata !853, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32* %2, metadata !643, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 %47, metadata !650, metadata !DIExpression()), !dbg !873
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst, !dbg !875
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !875
  call void @llvm.dbg.value(metadata i32 %50, metadata !651, metadata !DIExpression()), !dbg !873
  %51 = icmp eq i32 %47, %50, !dbg !876
  br i1 %51, label %56, label %52, !dbg !877

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %50, metadata !777, metadata !DIExpression()), !dbg !798
  %53 = icmp ult i32 %50, 4, !dbg !878
  br i1 %53, label %46, label %60, !dbg !880, !llvm.loop !881

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !884, !tbaa !702
  call void @llvm.dbg.value(metadata i32* %2, metadata !886, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i32 -3, metadata !891, metadata !DIExpression()), !dbg !892
  %55 = atomicrmw and i32* %2, i32 -3 seq_cst, !dbg !894
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !895, metadata !DIExpression()) #8, !dbg !898
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0, !dbg !900
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !901
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !902, metadata !DIExpression()) #8, !dbg !905
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2, !dbg !907
  store i8 0, i8* %58, align 8, !dbg !908, !tbaa !690
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1, !dbg !909
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %59) #7, !dbg !910
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !911, metadata !DIExpression()) #8, !dbg !914
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !916
  br label %64, !dbg !917

60:                                               ; preds = %52
  %61 = extractvalue { i32, i1 } %49, 0, !dbg !875
  call void @llvm.dbg.value(metadata i8 undef, metadata !793, metadata !DIExpression()), !dbg !918
  br label %62

62:                                               ; preds = %37, %60
  %63 = phi i32 [ %61, %60 ], [ %40, %37 ], !dbg !798
  fence seq_cst, !dbg !826
  br label %15

64:                                               ; preds = %4, %37, %56
  ret void, !dbg !919
}

declare !dbg !920 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #4

declare !dbg !923 dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) local_unnamed_addr #2 !dbg !924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !929, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i32 %0, metadata !933, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 10, metadata !938, metadata !DIExpression()), !dbg !939
  %2 = mul i32 %0, -1640531527, !dbg !941
  %3 = lshr i32 %2, 22, !dbg !944
  call void @llvm.dbg.value(metadata i32 %3, metadata !930, metadata !DIExpression()), !dbg !932
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3, !dbg !945
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !946, metadata !DIExpression()) #8, !dbg !951
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !953
  call void @llvm.dbg.value(metadata i8* %5, metadata !954, metadata !DIExpression()) #8, !dbg !957
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #7, !dbg !959
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #8, !dbg !951
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()) #8, !dbg !951
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !960
  call void @llvm.dbg.value(metadata i32* %6, metadata !632, metadata !DIExpression()) #8, !dbg !962
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !962
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !962
  call void @llvm.dbg.value(metadata i32* %6, metadata !643, metadata !DIExpression()) #8, !dbg !964
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !964
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !964
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !964
  %7 = cmpxchg i32* %6, i32 0, i32 1 seq_cst seq_cst, !dbg !966
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !964
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !967
  br i1 %8, label %11, label %9, !dbg !968

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !969
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !946, metadata !DIExpression()) #8, !dbg !951
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #7, !dbg !970
  br label %11, !dbg !972

11:                                               ; preds = %1, %9
  call void @llvm.dbg.value(metadata i8* %5, metadata !973, metadata !DIExpression()) #8, !dbg !976
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #7, !dbg !978
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !979
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #5 !dbg !980 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !992, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i32 %2, metadata !993, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i32 %1, metadata !933, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i32 10, metadata !938, metadata !DIExpression()), !dbg !1007
  %4 = mul i32 %1, -1640531527, !dbg !1009
  %5 = lshr i32 %4, 22, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %5, metadata !994, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i32 %2, metadata !933, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i32 10, metadata !938, metadata !DIExpression()), !dbg !1011
  %6 = mul i32 %2, -1640531527, !dbg !1013
  %7 = lshr i32 %6, 22, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %7, metadata !995, metadata !DIExpression()), !dbg !1006
  %8 = icmp eq i32 %5, %7, !dbg !1015
  br i1 %8, label %9, label %17, !dbg !1016

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !1017
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !996, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !946, metadata !DIExpression()) #8, !dbg !1019
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %11, metadata !954, metadata !DIExpression()) #8, !dbg !1022
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #7, !dbg !1024
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #8, !dbg !1019
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()) #8, !dbg !1019
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0, !dbg !1025
  call void @llvm.dbg.value(metadata i32* %12, metadata !632, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32* %12, metadata !643, metadata !DIExpression()) #8, !dbg !1028
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1028
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1028
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !1028
  %13 = cmpxchg i32* %12, i32 0, i32 1 seq_cst seq_cst, !dbg !1030
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1028
  %14 = extractvalue { i32, i1 } %13, 1, !dbg !1031
  br i1 %14, label %51, label %15, !dbg !1032

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, !dbg !1033
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %16, metadata !946, metadata !DIExpression()) #8, !dbg !1019
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %16) #7, !dbg !1034
  br label %51, !dbg !1035

17:                                               ; preds = %3
  %18 = icmp ult i32 %5, %7, !dbg !1036
  br i1 %18, label %19, label %35, !dbg !1037

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !1038
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !999, metadata !DIExpression()), !dbg !1039
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !1040
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !1002, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !946, metadata !DIExpression()) #8, !dbg !1041
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %22, metadata !954, metadata !DIExpression()) #8, !dbg !1044
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #7, !dbg !1046
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #8, !dbg !1041
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()) #8, !dbg !1041
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0, !dbg !1047
  call void @llvm.dbg.value(metadata i32* %23, metadata !632, metadata !DIExpression()) #8, !dbg !1048
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !1048
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !1048
  call void @llvm.dbg.value(metadata i32* %23, metadata !643, metadata !DIExpression()) #8, !dbg !1050
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1050
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1050
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !1050
  %24 = cmpxchg i32* %23, i32 0, i32 1 seq_cst seq_cst, !dbg !1052
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1050
  %25 = extractvalue { i32, i1 } %24, 1, !dbg !1053
  br i1 %25, label %28, label %26, !dbg !1054

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, !dbg !1055
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !946, metadata !DIExpression()) #8, !dbg !1041
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %27) #7, !dbg !1056
  br label %28, !dbg !1057

28:                                               ; preds = %19, %26
  call void @llvm.dbg.value(metadata i8* %22, metadata !973, metadata !DIExpression()) #8, !dbg !1058
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #7, !dbg !1060
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !946, metadata !DIExpression()) #8, !dbg !1061
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %29, metadata !954, metadata !DIExpression()) #8, !dbg !1064
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #7, !dbg !1066
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #8, !dbg !1061
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()) #8, !dbg !1061
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, i32 0, !dbg !1067
  call void @llvm.dbg.value(metadata i32* %30, metadata !632, metadata !DIExpression()) #8, !dbg !1068
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !1068
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !1068
  call void @llvm.dbg.value(metadata i32* %30, metadata !643, metadata !DIExpression()) #8, !dbg !1070
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1070
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1070
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !1070
  %31 = cmpxchg i32* %30, i32 0, i32 1 seq_cst seq_cst, !dbg !1072
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1070
  %32 = extractvalue { i32, i1 } %31, 1, !dbg !1073
  br i1 %32, label %51, label %33, !dbg !1074

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, !dbg !1075
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %34, metadata !946, metadata !DIExpression()) #8, !dbg !1061
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %34) #7, !dbg !1076
  br label %51, !dbg !1077

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !1078
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !1003, metadata !DIExpression()), !dbg !1079
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !1080
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !1005, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !946, metadata !DIExpression()) #8, !dbg !1081
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %38, metadata !954, metadata !DIExpression()) #8, !dbg !1084
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #7, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #8, !dbg !1081
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()) #8, !dbg !1081
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, i32 0, !dbg !1087
  call void @llvm.dbg.value(metadata i32* %39, metadata !632, metadata !DIExpression()) #8, !dbg !1088
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !1088
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !1088
  call void @llvm.dbg.value(metadata i32* %39, metadata !643, metadata !DIExpression()) #8, !dbg !1090
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1090
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1090
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !1090
  %40 = cmpxchg i32* %39, i32 0, i32 1 seq_cst seq_cst, !dbg !1092
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1090
  %41 = extractvalue { i32, i1 } %40, 1, !dbg !1093
  br i1 %41, label %44, label %42, !dbg !1094

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, !dbg !1095
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %43, metadata !946, metadata !DIExpression()) #8, !dbg !1081
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %43) #7, !dbg !1096
  br label %44, !dbg !1097

44:                                               ; preds = %35, %42
  call void @llvm.dbg.value(metadata i8* %38, metadata !973, metadata !DIExpression()) #8, !dbg !1098
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #7, !dbg !1100
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !946, metadata !DIExpression()) #8, !dbg !1101
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %45, metadata !954, metadata !DIExpression()) #8, !dbg !1104
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #7, !dbg !1106
  call void @llvm.dbg.value(metadata i32 0, metadata !949, metadata !DIExpression()) #8, !dbg !1101
  call void @llvm.dbg.value(metadata i32 1, metadata !950, metadata !DIExpression()) #8, !dbg !1101
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, i32 0, !dbg !1107
  call void @llvm.dbg.value(metadata i32* %46, metadata !632, metadata !DIExpression()) #8, !dbg !1108
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !1108
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !1108
  call void @llvm.dbg.value(metadata i32* %46, metadata !643, metadata !DIExpression()) #8, !dbg !1110
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1110
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1110
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !1110
  %47 = cmpxchg i32* %46, i32 0, i32 1 seq_cst seq_cst, !dbg !1112
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1110
  %48 = extractvalue { i32, i1 } %47, 1, !dbg !1113
  br i1 %48, label %51, label %49, !dbg !1114

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, !dbg !1115
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !946, metadata !DIExpression()) #8, !dbg !1101
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #7, !dbg !1116
  br label %51, !dbg !1117

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #7, !dbg !1118
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !1118
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 4, !dbg !1118, !tbaa !1119
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !1118
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 4, !dbg !1118, !tbaa !1119
  ret void, !dbg !1120
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #2 !dbg !1121 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !1126, metadata !DIExpression()), !dbg !1127
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !1128
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1128, !tbaa !1130
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !1132
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1132, !tbaa !1133
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1134
  br i1 %6, label %7, label %18, !dbg !1135

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1136, metadata !DIExpression()) #8, !dbg !1142
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %8, metadata !1146, metadata !DIExpression()) #8, !dbg !1149
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #7, !dbg !1151
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !1152
  call void @llvm.dbg.value(metadata i32* %10, metadata !1153, metadata !DIExpression()) #8, !dbg !1157
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1157
  %11 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %11, metadata !1139, metadata !DIExpression()) #8, !dbg !1142
  %12 = and i32 %11, 2, !dbg !1160
  %13 = icmp ne i32 %12, 0, !dbg !1161
  call void @llvm.dbg.value(metadata i1 %13, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1142
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1142
  %14 = icmp ult i32 %11, 4
  %15 = or i1 %14, %13, !dbg !1162
  call void @llvm.dbg.value(metadata i1 %14, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1142
  br i1 %15, label %66, label %16, !dbg !1162

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1164
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %17, metadata !1136, metadata !DIExpression()) #8, !dbg !1142
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %17) #7, !dbg !1165
  br label %66, !dbg !1167

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1168
  br i1 %19, label %20, label %43, !dbg !1170

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1136, metadata !DIExpression()) #8, !dbg !1171
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %21, metadata !1146, metadata !DIExpression()) #8, !dbg !1175
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #7, !dbg !1177
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !1178
  call void @llvm.dbg.value(metadata i32* %23, metadata !1153, metadata !DIExpression()) #8, !dbg !1179
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1179
  %24 = atomicrmw and i32* %23, i32 -2 seq_cst, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %24, metadata !1139, metadata !DIExpression()) #8, !dbg !1171
  %25 = and i32 %24, 2, !dbg !1182
  %26 = icmp ne i32 %25, 0, !dbg !1183
  call void @llvm.dbg.value(metadata i1 %26, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1171
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1171
  %27 = icmp ult i32 %24, 4
  %28 = or i1 %27, %26, !dbg !1184
  call void @llvm.dbg.value(metadata i1 %27, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1171
  br i1 %28, label %31, label %29, !dbg !1184

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !1185
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %30, metadata !1136, metadata !DIExpression()) #8, !dbg !1171
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %30) #7, !dbg !1186
  br label %31, !dbg !1187

31:                                               ; preds = %20, %29
  call void @llvm.dbg.value(metadata i8* %21, metadata !1188, metadata !DIExpression()) #8, !dbg !1191
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #7, !dbg !1193
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !1194, !tbaa !1133
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, metadata !1136, metadata !DIExpression()) #8, !dbg !1195
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %33, metadata !1146, metadata !DIExpression()) #8, !dbg !1198
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #7, !dbg !1200
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, i32 0, !dbg !1201
  call void @llvm.dbg.value(metadata i32* %35, metadata !1153, metadata !DIExpression()) #8, !dbg !1202
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1202
  %36 = atomicrmw and i32* %35, i32 -2 seq_cst, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %36, metadata !1139, metadata !DIExpression()) #8, !dbg !1195
  %37 = and i32 %36, 2, !dbg !1205
  %38 = icmp ne i32 %37, 0, !dbg !1206
  call void @llvm.dbg.value(metadata i1 %38, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1195
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1195
  %39 = icmp ult i32 %36, 4
  %40 = or i1 %39, %38, !dbg !1207
  call void @llvm.dbg.value(metadata i1 %39, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1195
  br i1 %40, label %66, label %41, !dbg !1207

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, !dbg !1208
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %42, metadata !1136, metadata !DIExpression()) #8, !dbg !1195
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %42) #7, !dbg !1209
  br label %66, !dbg !1210

43:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !1136, metadata !DIExpression()) #8, !dbg !1211
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %44, metadata !1146, metadata !DIExpression()) #8, !dbg !1215
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #7, !dbg !1217
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0, !dbg !1218
  call void @llvm.dbg.value(metadata i32* %46, metadata !1153, metadata !DIExpression()) #8, !dbg !1219
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1219
  %47 = atomicrmw and i32* %46, i32 -2 seq_cst, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %47, metadata !1139, metadata !DIExpression()) #8, !dbg !1211
  %48 = and i32 %47, 2, !dbg !1222
  %49 = icmp ne i32 %48, 0, !dbg !1223
  call void @llvm.dbg.value(metadata i1 %49, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1211
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1211
  %50 = icmp ult i32 %47, 4
  %51 = or i1 %50, %49, !dbg !1224
  call void @llvm.dbg.value(metadata i1 %50, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1211
  br i1 %51, label %54, label %52, !dbg !1224

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, !dbg !1225
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %53, metadata !1136, metadata !DIExpression()) #8, !dbg !1211
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %53) #7, !dbg !1226
  br label %54, !dbg !1227

54:                                               ; preds = %43, %52
  call void @llvm.dbg.value(metadata i8* %44, metadata !1188, metadata !DIExpression()) #8, !dbg !1228
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #7, !dbg !1230
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1231, !tbaa !1130
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, metadata !1136, metadata !DIExpression()) #8, !dbg !1232
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %56, metadata !1146, metadata !DIExpression()) #8, !dbg !1235
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #7, !dbg !1237
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, i32 0, !dbg !1238
  call void @llvm.dbg.value(metadata i32* %58, metadata !1153, metadata !DIExpression()) #8, !dbg !1239
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1239
  %59 = atomicrmw and i32* %58, i32 -2 seq_cst, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %59, metadata !1139, metadata !DIExpression()) #8, !dbg !1232
  %60 = and i32 %59, 2, !dbg !1242
  %61 = icmp ne i32 %60, 0, !dbg !1243
  call void @llvm.dbg.value(metadata i1 %61, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1232
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1232
  %62 = icmp ult i32 %59, 4
  %63 = or i1 %62, %61, !dbg !1244
  call void @llvm.dbg.value(metadata i1 %62, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1232
  br i1 %63, label %66, label %64, !dbg !1244

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, !dbg !1245
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %65, metadata !1136, metadata !DIExpression()) #8, !dbg !1232
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %65) #7, !dbg !1246
  br label %66, !dbg !1247

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #7, !dbg !1248
  ret void, !dbg !1249
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #0 !dbg !1250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1252, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1253, metadata !DIExpression()), !dbg !1254
  ret i1 true, !dbg !1255
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #0 !dbg !1256 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1258, metadata !DIExpression()), !dbg !1259
  ret void, !dbg !1260
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !1264, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i1 %2, metadata !1265, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1266
  ret i32 0, !dbg !1267
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1270, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1271, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i1 %2, metadata !1272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1274
  call void @llvm.dbg.value(metadata i1 %3, metadata !1273, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1274
  ret void, !dbg !1275
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #5 !dbg !1276 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1282, metadata !DIExpression()), !dbg !1286
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1287
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #8, !dbg !1287
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1283, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1289, metadata !DIExpression()) #8, !dbg !1292
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !683, metadata !DIExpression()) #8, !dbg !1294
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2, !dbg !1296
  store i8 0, i8* %6, align 8, !dbg !1296, !tbaa !690
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0, !dbg !1297
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1298
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1, !dbg !1299
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !1300
  store i8 0, i8* %6, align 8, !dbg !1301, !tbaa !690
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1, !dbg !1302
  store i32 0, i32* %9, align 8, !dbg !1302, !tbaa !1303
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2, !dbg !1305
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1305, !tbaa !1306
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3, !dbg !1307
  store i32 0, i32* %11, align 8, !dbg !1307, !tbaa !1308
  %12 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #6, !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1284, metadata !DIExpression()), !dbg !1286
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0, !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #8, !dbg !1310
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1285, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1312, metadata !DIExpression()), !dbg !1316
  store i8 0, i8* %13, align 4, !dbg !1318, !tbaa !1319
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1, !dbg !1321
  store i32 0, i32* %14, align 4, !dbg !1321, !tbaa !1322
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0, !dbg !1323
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 4, !dbg !1323, !tbaa !1325
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1327
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #7, !dbg !1328
  br i1 %18, label %32, label %19, !dbg !1329

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1136, metadata !DIExpression()) #8, !dbg !1330
  %20 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %20, metadata !1146, metadata !DIExpression()) #8, !dbg !1334
  %21 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %20, i32 1) #7, !dbg !1336
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1337
  call void @llvm.dbg.value(metadata i32* %22, metadata !1153, metadata !DIExpression()) #8, !dbg !1338
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1338
  %23 = atomicrmw and i32* %22, i32 -2 seq_cst, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %23, metadata !1139, metadata !DIExpression()) #8, !dbg !1330
  %24 = and i32 %23, 2, !dbg !1341
  %25 = icmp ne i32 %24, 0, !dbg !1342
  call void @llvm.dbg.value(metadata i1 %25, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1330
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1330
  %26 = icmp ult i32 %23, 4
  %27 = or i1 %26, %25, !dbg !1343
  call void @llvm.dbg.value(metadata i1 %26, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1330
  br i1 %27, label %30, label %28, !dbg !1343

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1344
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %29, metadata !1136, metadata !DIExpression()) #8, !dbg !1330
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %29) #7, !dbg !1345
  br label %30, !dbg !1346

30:                                               ; preds = %19, %28
  call void @llvm.dbg.value(metadata i8* %20, metadata !1188, metadata !DIExpression()) #8, !dbg !1347
  call void @__tsan_mutex_post_unlock(i8* nonnull %20, i32 1) #7, !dbg !1349
  %31 = load i32, i32* %14, align 4, !dbg !1350, !tbaa !1322
  br label %61, !dbg !1351

32:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1352, !tbaa !1306
  store i32 %0, i32* %9, align 8, !dbg !1353, !tbaa !1303
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !703, metadata !DIExpression()), !dbg !1354
  store i8 1, i8* %6, align 8, !dbg !1356, !tbaa !690
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 1, !dbg !1357
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1357, !tbaa !1359
  %35 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1362
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1363
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 4, !dbg !1363
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %37, i32 0, i32 2, !dbg !1363
  %39 = select i1 %35, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, !dbg !1363
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1364, !tbaa !1119
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1365
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, align 4, !dbg !1366, !tbaa !1367
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1136, metadata !DIExpression()) #8, !dbg !1368
  %41 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1370
  call void @llvm.dbg.value(metadata i8* %41, metadata !1146, metadata !DIExpression()) #8, !dbg !1371
  %42 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %41, i32 1) #7, !dbg !1373
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1374
  call void @llvm.dbg.value(metadata i32* %43, metadata !1153, metadata !DIExpression()) #8, !dbg !1375
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1375
  %44 = atomicrmw and i32* %43, i32 -2 seq_cst, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %44, metadata !1139, metadata !DIExpression()) #8, !dbg !1368
  %45 = and i32 %44, 2, !dbg !1378
  %46 = icmp ne i32 %45, 0, !dbg !1379
  call void @llvm.dbg.value(metadata i1 %46, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1368
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1368
  %47 = icmp ult i32 %44, 4
  %48 = or i1 %47, %46, !dbg !1380
  call void @llvm.dbg.value(metadata i1 %47, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1368
  br i1 %48, label %51, label %49, !dbg !1380

49:                                               ; preds = %32
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !1136, metadata !DIExpression()) #8, !dbg !1368
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #7, !dbg !1382
  br label %51, !dbg !1383

51:                                               ; preds = %32, %49
  call void @llvm.dbg.value(metadata i8* %41, metadata !1188, metadata !DIExpression()) #8, !dbg !1384
  call void @__tsan_mutex_post_unlock(i8* nonnull %41, i32 1) #7, !dbg !1386
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1, !dbg !1387
  %53 = load void (i8*)*, void (i8*)** %52, align 4, !dbg !1387, !tbaa !1388
  call void %53(i8* nonnull %17) #7, !dbg !1389
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !735, metadata !DIExpression()) #8, !dbg !1390
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1392
  %54 = load i8, i8* %6, align 8, !dbg !1393, !tbaa !690, !range !743
  %55 = icmp eq i8 %54, 0, !dbg !1393
  br i1 %55, label %59, label %56, !dbg !1394

56:                                               ; preds = %51, %56
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1395
  %57 = load i8, i8* %6, align 8, !dbg !1393, !tbaa !690, !range !743
  %58 = icmp eq i8 %57, 0, !dbg !1393
  br i1 %58, label %59, label %56, !dbg !1394, !llvm.loop !1396

59:                                               ; preds = %56, %51
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1398
  %60 = load i32, i32* %11, align 8, !dbg !1399, !tbaa !1308
  br label %61, !dbg !1400

61:                                               ; preds = %59, %30
  %62 = phi i32 [ %60, %59 ], [ %31, %30 ], !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #8, !dbg !1401
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1402, metadata !DIExpression()) #8, !dbg !1405
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !759, metadata !DIExpression()) #8, !dbg !1407
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !1410
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #8, !dbg !1401
  ret i32 %62, !dbg !1401
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #2 !dbg !1412 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1414, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1415, metadata !DIExpression()), !dbg !1431
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #6, !dbg !1432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1416, metadata !DIExpression()), !dbg !1431
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1, !dbg !1433
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1417, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1418, metadata !DIExpression()), !dbg !1431
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !dbg !1434, !tbaa !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1419, metadata !DIExpression()), !dbg !1431
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %12, !dbg !1435

12:                                               ; preds = %56, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %57, %56 ], !dbg !1436
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %58, %56 ], !dbg !1437
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %59, %56 ], !dbg !1438
  %16 = phi i32 [ undef, %2 ], [ %60, %56 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !1419, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1418, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, metadata !1417, metadata !DIExpression()), !dbg !1431
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null, !dbg !1439
  br i1 %17, label %61, label %18, !dbg !1435

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 1, !dbg !1440
  %20 = load i32, i32* %19, align 4, !dbg !1441, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %20, metadata !1420, metadata !DIExpression()), !dbg !1442
  %21 = icmp eq i32 %20, %0, !dbg !1443
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 2, !dbg !1444
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 4, !dbg !1444, !tbaa !1306
  br i1 %21, label %24, label %56, !dbg !1445

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1422, metadata !DIExpression()), !dbg !1446
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 4, !dbg !1447, !tbaa !1119
  call void @llvm.dbg.value(metadata i8 0, metadata !1425, metadata !DIExpression()), !dbg !1446
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1448, !tbaa !1367
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15, !dbg !1449
  br i1 %26, label %29, label %27, !dbg !1450

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1426, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 undef, metadata !1425, metadata !DIExpression()), !dbg !1446
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null, !dbg !1452
  br i1 %28, label %39, label %30, !dbg !1453

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1454, !tbaa !1367
  br label %39, !dbg !1456

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1426, metadata !DIExpression()), !dbg !1451
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 1, !dbg !1457
  %33 = load i32, i32* %32, align 4, !dbg !1458, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %33, metadata !1429, metadata !DIExpression()), !dbg !1459
  %34 = icmp eq i32 %33, %0, !dbg !1460
  call void @llvm.dbg.value(metadata i1 %34, metadata !1425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 2, !dbg !1461
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 4, !dbg !1461, !tbaa !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, metadata !1426, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 undef, metadata !1425, metadata !DIExpression()), !dbg !1446
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1452
  %38 = or i1 %34, %37, !dbg !1462
  br i1 %38, label %39, label %30, !dbg !1453, !llvm.loop !1463

39:                                               ; preds = %30, %27, %29
  %40 = phi i1 [ false, %29 ], [ false, %27 ], [ %34, %30 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1425, metadata !DIExpression()), !dbg !1446
  %41 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1465, !tbaa !1466
  %42 = tail call i32 %41(i8* nonnull %8, i32 1, i1 zeroext %40) #7, !dbg !1467
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 3, !dbg !1468
  store i32 %42, i32* %43, align 8, !dbg !1469, !tbaa !1308
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !895, metadata !DIExpression()) #8, !dbg !1470
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 0, !dbg !1472
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %44) #7, !dbg !1473
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1136, metadata !DIExpression()) #8, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %9, metadata !1146, metadata !DIExpression()) #8, !dbg !1476
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #7, !dbg !1478
  call void @llvm.dbg.value(metadata i32* %10, metadata !1153, metadata !DIExpression()) #8, !dbg !1479
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1479
  %46 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %46, metadata !1139, metadata !DIExpression()) #8, !dbg !1474
  %47 = and i32 %46, 2, !dbg !1482
  %48 = icmp ne i32 %47, 0, !dbg !1483
  call void @llvm.dbg.value(metadata i1 %48, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1474
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1474
  %49 = icmp ult i32 %46, 4
  %50 = or i1 %49, %48, !dbg !1484
  call void @llvm.dbg.value(metadata i1 %49, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1474
  br i1 %50, label %52, label %51, !dbg !1484

51:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !1136, metadata !DIExpression()) #8, !dbg !1474
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #7, !dbg !1485
  br label %52, !dbg !1486

52:                                               ; preds = %39, %51
  call void @llvm.dbg.value(metadata i8* %9, metadata !1188, metadata !DIExpression()) #8, !dbg !1487
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #7, !dbg !1489
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !902, metadata !DIExpression()) #8, !dbg !1490
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 2, !dbg !1492
  store i8 0, i8* %53, align 8, !dbg !1493, !tbaa !690
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 1, !dbg !1494
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %54) #7, !dbg !1495
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !911, metadata !DIExpression()) #8, !dbg !1496
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %44) #7, !dbg !1498
  %55 = zext i1 %40 to i32, !dbg !1499
  br label %56

56:                                               ; preds = %18, %52
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %52 ], [ %22, %18 ], !dbg !1431
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %52 ], [ %15, %18 ], !dbg !1431
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %52 ], [ %23, %18 ], !dbg !1431
  %60 = phi i32 [ %55, %52 ], [ %16, %18 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1419, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1418, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %57, metadata !1417, metadata !DIExpression()), !dbg !1431
  br i1 %21, label %72, label %12, !llvm.loop !1500

61:                                               ; preds = %12
  %62 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1502, !tbaa !1466
  %63 = tail call i32 %62(i8* nonnull %8, i32 0, i1 zeroext false) #7, !dbg !1503
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1136, metadata !DIExpression()) #8, !dbg !1504
  call void @llvm.dbg.value(metadata i8* %9, metadata !1146, metadata !DIExpression()) #8, !dbg !1506
  %64 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #7, !dbg !1508
  call void @llvm.dbg.value(metadata i32* %10, metadata !1153, metadata !DIExpression()) #8, !dbg !1509
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1509
  %65 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %65, metadata !1139, metadata !DIExpression()) #8, !dbg !1504
  %66 = and i32 %65, 2, !dbg !1512
  %67 = icmp ne i32 %66, 0, !dbg !1513
  call void @llvm.dbg.value(metadata i1 %67, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1504
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1504
  %68 = icmp ult i32 %65, 4
  %69 = or i1 %68, %67, !dbg !1514
  call void @llvm.dbg.value(metadata i1 %68, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1504
  br i1 %69, label %71, label %70, !dbg !1514

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !1136, metadata !DIExpression()) #8, !dbg !1504
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #7, !dbg !1515
  br label %71, !dbg !1516

71:                                               ; preds = %61, %70
  call void @llvm.dbg.value(metadata i8* %9, metadata !1188, metadata !DIExpression()) #8, !dbg !1517
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #7, !dbg !1519
  br label %72, !dbg !1520

72:                                               ; preds = %56, %71
  %73 = phi i32 [ 0, %71 ], [ %60, %56 ], !dbg !1431
  ret i32 %73, !dbg !1521
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj(i32 %0, i32 %1) local_unnamed_addr #2 !dbg !1522 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1526, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1552
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj(i32 %0) #6, !dbg !1553
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1528, metadata !DIExpression()), !dbg !1552
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1, !dbg !1554
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1529, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1530, metadata !DIExpression()), !dbg !1552
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1555, !tbaa !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1531, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 0, metadata !1532, metadata !DIExpression()), !dbg !1552
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1556
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #8, !dbg !1556
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1534, metadata !DIExpression()), !dbg !1557
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0, !dbg !1558
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1536, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 16, metadata !1537, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1530, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1531, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 0, metadata !1532, metadata !DIExpression()), !dbg !1552
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1559
  br i1 %9, label %59, label %10, !dbg !1560

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12, !dbg !1560

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i32 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i32 [ 0, %10 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1530, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1531, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %15, metadata !1537, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1536, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %17, metadata !1532, metadata !DIExpression()), !dbg !1552
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1561
  %19 = load i32, i32* %18, align 4, !dbg !1562, !tbaa !585
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1563
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !dbg !1563, !tbaa !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1540, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %19, metadata !1538, metadata !DIExpression()), !dbg !1564
  %22 = icmp eq i32 %19, %0, !dbg !1565
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1566, !tbaa !1119
  br i1 %22, label %23, label %53, !dbg !1567

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1568, !tbaa !1367
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1570
  br i1 %25, label %26, label %27, !dbg !1571

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1572, !tbaa !1367
  br label %27, !dbg !1574

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15, !dbg !1575
  br i1 %28, label %29, label %46, !dbg !1576

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1541, metadata !DIExpression()), !dbg !1577
  %30 = shl i32 %15, 3, !dbg !1578
  %31 = call i8* @malloc(i32 %30) #7, !dbg !1579
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1536, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 0, metadata !1546, metadata !DIExpression()), !dbg !1581
  %33 = icmp eq i32 %15, 0, !dbg !1582
  br i1 %33, label %34, label %37, !dbg !1584

34:                                               ; preds = %37, %29
  %35 = shl i32 %15, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %35, metadata !1537, metadata !DIExpression()), !dbg !1552
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1586
  br i1 %36, label %46, label %44, !dbg !1588

37:                                               ; preds = %29, %37
  %38 = phi i32 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i32 %38, metadata !1546, metadata !DIExpression()), !dbg !1581
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %38, !dbg !1589
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1589, !tbaa !1119
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %38, !dbg !1591
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 4, !dbg !1592, !tbaa !1119
  %42 = add nuw i32 %38, 1, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %42, metadata !1546, metadata !DIExpression()), !dbg !1581
  %43 = icmp ult i32 %42, %15, !dbg !1582
  br i1 %43, label %37, label %34, !dbg !1584, !llvm.loop !1594

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1596
  call void @free(i8* %45) #7, !dbg !1598
  br label %46, !dbg !1599

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1552
  %48 = phi i32 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1552
  call void @llvm.dbg.value(metadata i32 %48, metadata !1537, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1536, metadata !DIExpression()), !dbg !1552
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1600
  store i32 %1, i32* %49, align 8, !dbg !1601, !tbaa !1308
  %50 = add i32 %17, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %50, metadata !1532, metadata !DIExpression()), !dbg !1552
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i32 %17, !dbg !1603
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 4, !dbg !1604, !tbaa !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !895, metadata !DIExpression()) #8, !dbg !1605
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1607
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %52) #7, !dbg !1608
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1531, metadata !DIExpression()), !dbg !1552
  br label %53, !dbg !1609

53:                                               ; preds = %12, %46
  %54 = phi i32 [ %50, %46 ], [ %17, %12 ], !dbg !1552
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1552
  %56 = phi i32 [ %48, %46 ], [ %15, %12 ], !dbg !1552
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1530, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1531, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %56, metadata !1537, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1536, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %54, metadata !1532, metadata !DIExpression()), !dbg !1552
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1559
  br i1 %58, label %59, label %12, !dbg !1560, !llvm.loop !1610

59:                                               ; preds = %53, %2
  %60 = phi i32 [ 0, %2 ], [ %54, %53 ], !dbg !1552
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ], !dbg !1552
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1136, metadata !DIExpression()) #8, !dbg !1612
  %62 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %62, metadata !1146, metadata !DIExpression()) #8, !dbg !1615
  %63 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %62, i32 1) #7, !dbg !1617
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !1618
  call void @llvm.dbg.value(metadata i32* %64, metadata !1153, metadata !DIExpression()) #8, !dbg !1619
  call void @llvm.dbg.value(metadata i32 -2, metadata !1156, metadata !DIExpression()) #8, !dbg !1619
  %65 = atomicrmw and i32* %64, i32 -2 seq_cst, !dbg !1621
  call void @llvm.dbg.value(metadata i32 %65, metadata !1139, metadata !DIExpression()) #8, !dbg !1612
  %66 = and i32 %65, 2, !dbg !1622
  %67 = icmp ne i32 %66, 0, !dbg !1623
  call void @llvm.dbg.value(metadata i1 %67, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1612
  call void @llvm.dbg.value(metadata i1 undef, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1612
  %68 = icmp ult i32 %65, 4
  %69 = or i1 %68, %67, !dbg !1624
  call void @llvm.dbg.value(metadata i1 %68, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1612
  br i1 %69, label %72, label %70, !dbg !1624

70:                                               ; preds = %59
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !1625
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %71, metadata !1136, metadata !DIExpression()) #8, !dbg !1612
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %71) #7, !dbg !1626
  br label %72, !dbg !1627

72:                                               ; preds = %59, %70
  call void @llvm.dbg.value(metadata i8* %62, metadata !1188, metadata !DIExpression()) #8, !dbg !1628
  call void @__tsan_mutex_post_unlock(i8* nonnull %62, i32 1) #7, !dbg !1630
  call void @llvm.dbg.value(metadata i32 0, metadata !1548, metadata !DIExpression()), !dbg !1631
  %73 = icmp eq i32 %60, 0, !dbg !1632
  br i1 %73, label %82, label %74, !dbg !1634

74:                                               ; preds = %72, %74
  %75 = phi i32 [ %80, %74 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !1548, metadata !DIExpression()), !dbg !1631
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i32 %75, !dbg !1635
  %77 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %76, align 4, !dbg !1635, !tbaa !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, metadata !902, metadata !DIExpression()) #8, !dbg !1637
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, i32 0, i32 0, i32 2, !dbg !1639
  store i8 0, i8* %78, align 8, !dbg !1640, !tbaa !690
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %77, i32 0, i32 0, i32 1, !dbg !1641
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %79) #7, !dbg !1642
  %80 = add nuw i32 %75, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %80, metadata !1548, metadata !DIExpression()), !dbg !1631
  %81 = icmp ult i32 %80, %60, !dbg !1632
  br i1 %81, label %74, label %84, !dbg !1634, !llvm.loop !1644

82:                                               ; preds = %84, %72
  %83 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8, !dbg !1646
  br i1 %83, label %93, label %91, !dbg !1648

84:                                               ; preds = %74, %84
  %85 = phi i32 [ %89, %84 ], [ 0, %74 ]
  call void @llvm.dbg.value(metadata i32 %85, metadata !1550, metadata !DIExpression()), !dbg !1649
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i32 %85, !dbg !1650
  %87 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %86, align 4, !dbg !1650, !tbaa !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, metadata !911, metadata !DIExpression()) #8, !dbg !1653
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, i32 0, i32 0, i32 0, !dbg !1655
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %88) #7, !dbg !1656
  %89 = add nuw i32 %85, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %89, metadata !1550, metadata !DIExpression()), !dbg !1649
  %90 = icmp ult i32 %89, %60, !dbg !1658
  br i1 %90, label %84, label %82, !dbg !1659, !llvm.loop !1660

91:                                               ; preds = %82
  %92 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*, !dbg !1662
  call void @free(i8* %92) #7, !dbg !1664
  br label %93, !dbg !1665

93:                                               ; preds = %91, %82
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #8, !dbg !1666
  ret i32 %60, !dbg !1667
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #5 !dbg !1668 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1672, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %1, metadata !1673, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1674, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %3, metadata !1675, metadata !DIExpression()), !dbg !1687
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1688
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1688
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1676, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %1, metadata !1673, metadata !DIExpression()), !dbg !1687
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #6, !dbg !1690
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0, !dbg !1691
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1691
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1677, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1312, metadata !DIExpression()), !dbg !1693
  store i8 0, i8* %8, align 4, !dbg !1695, !tbaa !1319
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1, !dbg !1696
  store i32 0, i32* %9, align 4, !dbg !1696, !tbaa !1322
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0, !dbg !1697
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !dbg !1697, !tbaa !1325
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1699
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #7, !dbg !1700
  br i1 %13, label %15, label %14, !dbg !1701

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #6, !dbg !1702
  br label %123, !dbg !1704

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0, !dbg !1705
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1705, !tbaa !1130
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1, !dbg !1706
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1678, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1679, metadata !DIExpression()), !dbg !1687
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !dbg !1707, !tbaa !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1678, metadata !DIExpression()), !dbg !1687
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1708
  br i1 %20, label %105, label %21, !dbg !1709

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24, !dbg !1709

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, metadata !1678, metadata !DIExpression()), !dbg !1687
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1, !dbg !1710
  %32 = load i32, i32* %31, align 4, !dbg !1711, !tbaa !585
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2, !dbg !1712
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1712, !tbaa !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1686, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %32, metadata !1684, metadata !DIExpression()), !dbg !1713
  %35 = icmp eq i32 %32, %0, !dbg !1714
  br i1 %35, label %36, label %50, !dbg !1716

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !dbg !1717, !tbaa !1119
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1719, !tbaa !1130
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2, !dbg !1721
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1721, !tbaa !1367
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28, !dbg !1722
  br i1 %40, label %41, label %42, !dbg !1723

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1724, !tbaa !1367
  br label %42, !dbg !1726

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null
  br i1 %43, label %50, label %44, !dbg !1727

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null, !dbg !1729
  br i1 %45, label %48, label %46, !dbg !1732

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2, !dbg !1733
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !dbg !1735, !tbaa !1306
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ], !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32* %31, metadata !1736, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32* undef, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i32 %1, i32* %31, align 4, !dbg !1744, !tbaa !585
  br label %50

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ], !dbg !1687
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ], !dbg !1687
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ], !dbg !1745
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ], !dbg !1746
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ], !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1678, metadata !DIExpression()), !dbg !1687
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1708
  br i1 %56, label %86, label %24, !dbg !1709, !llvm.loop !1747

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, metadata !1678, metadata !DIExpression()), !dbg !1687
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1, !dbg !1710
  %64 = load i32, i32* %63, align 4, !dbg !1711, !tbaa !585
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2, !dbg !1712
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !dbg !1712, !tbaa !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1686, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %64, metadata !1684, metadata !DIExpression()), !dbg !1713
  %67 = icmp eq i32 %64, %0, !dbg !1714
  br i1 %67, label %68, label %80, !dbg !1716

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1717, !tbaa !1119
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1719, !tbaa !1130
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2, !dbg !1721
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1721, !tbaa !1367
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60, !dbg !1722
  br i1 %72, label %73, label %74, !dbg !1723

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1724, !tbaa !1367
  br label %74, !dbg !1726

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null, !dbg !1729
  br i1 %75, label %78, label %76, !dbg !1732

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2, !dbg !1733
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1735, !tbaa !1306
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ], !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32* %63, metadata !1736, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32* undef, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i32 %1, i32* %63, align 4, !dbg !1744, !tbaa !585
  br label %80

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ], !dbg !1687
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ], !dbg !1687
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ], !dbg !1745
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ], !dbg !1746
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %84, metadata !1682, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %83, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %82, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %81, metadata !1678, metadata !DIExpression()), !dbg !1687
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null, !dbg !1708
  br i1 %85, label %86, label %57, !dbg !1709, !llvm.loop !1747

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ], !dbg !1745
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ], !dbg !1746
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ], !dbg !1687
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null, !dbg !1749
  br i1 %90, label %105, label %91, !dbg !1751

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2, !dbg !1752
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !dbg !1754, !tbaa !1306
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1, !dbg !1755
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !dbg !1755, !tbaa !1133
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1, !dbg !1757
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !dbg !1757, !tbaa !1359
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null, !dbg !1758
  br i1 %97, label %102, label %98, !dbg !1759

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1760
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !dbg !1760, !tbaa !1367
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2, !dbg !1762
  br label %102

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !dbg !1763, !tbaa !1119
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1764
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !dbg !1765, !tbaa !1367
  br label %105, !dbg !1766

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3, !dbg !1767
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !dbg !1767, !tbaa !1768
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null, !dbg !1769
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #7, !dbg !1770
  br i1 %110, label %111, label %116, !dbg !1771

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3, !dbg !1772
  store i32 %3, i32* %112, align 8, !dbg !1775, !tbaa !1308
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !895, metadata !DIExpression()) #8, !dbg !1776
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0, !dbg !1778
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %113) #7, !dbg !1779
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #6, !dbg !1780
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !902, metadata !DIExpression()) #8, !dbg !1781
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2, !dbg !1783
  store i8 0, i8* %114, align 8, !dbg !1784, !tbaa !690
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1, !dbg !1785
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %115) #7, !dbg !1786
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !911, metadata !DIExpression()) #8, !dbg !1787
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %113) #7, !dbg !1789
  br label %117, !dbg !1790

116:                                              ; preds = %105
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #6, !dbg !1791
  br label %117

117:                                              ; preds = %116, %111
  %118 = load i8, i8* %8, align 4, !dbg !1793
  %119 = and i8 %118, 1, !dbg !1793
  %120 = icmp ne i8 %119, 0, !dbg !1793
  %121 = and i1 %110, %120, !dbg !1793
  %122 = zext i1 %121 to i32, !dbg !1794
  br label %123

123:                                              ; preds = %117, %14
  %124 = phi i32 [ %122, %117 ], [ 0, %14 ], !dbg !1687
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1795
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !1795
  ret i32 %124, !dbg !1795
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #0 !dbg !1796 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1798, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1799, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8* %0, metadata !1800, metadata !DIExpression()), !dbg !1802
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1803
  %4 = bitcast i8* %3 to i32**, !dbg !1803
  %5 = load i32*, i32** %4, align 4, !dbg !1803, !tbaa !1804
  %6 = load i32, i32* %5, align 4, !dbg !1806, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %6, metadata !1801, metadata !DIExpression()), !dbg !1802
  %7 = icmp eq i32 %6, 3, !dbg !1807
  ret i1 %7, !dbg !1808
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1809 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1811, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %1, metadata !1812, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i1 %2, metadata !1813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1816
  call void @llvm.dbg.value(metadata i8* %0, metadata !1814, metadata !DIExpression()), !dbg !1816
  %4 = select i1 %2, i32 2, i32 0, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %4, metadata !1815, metadata !DIExpression()), !dbg !1816
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1818
  %6 = bitcast i8* %5 to i32**, !dbg !1818
  %7 = load i32*, i32** %6, align 4, !dbg !1818, !tbaa !1804
  call void @llvm.dbg.value(metadata i32* %7, metadata !1819, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32* undef, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 %4, i32* %7, align 4, !dbg !1825, !tbaa !585
  fence seq_cst, !dbg !1826
  ret i32 0, !dbg !1827
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1830, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 %1, metadata !1831, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i1 %2, metadata !1832, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1837
  call void @llvm.dbg.value(metadata i8* %0, metadata !1833, metadata !DIExpression()), !dbg !1837
  br i1 %2, label %8, label %4, !dbg !1838

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1833, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !1834, metadata !DIExpression()), !dbg !1839
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1840
  %6 = bitcast i8* %5 to i32**, !dbg !1840
  %7 = load i32*, i32** %6, align 4, !dbg !1840, !tbaa !1841
  call void @llvm.dbg.value(metadata i32* %7, metadata !1736, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32* undef, metadata !1741, metadata !DIExpression()), !dbg !1843
  store i32 0, i32* %7, align 4, !dbg !1845, !tbaa !585
  br label %8, !dbg !1846

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1847
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1850, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %0, metadata !1852, metadata !DIExpression()), !dbg !1854
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1855
  %4 = bitcast i8* %3 to i32**, !dbg !1855
  %5 = load i32*, i32** %4, align 4, !dbg !1855, !tbaa !1856
  %6 = load i32, i32* %5, align 4, !dbg !1858, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %6, metadata !1853, metadata !DIExpression()), !dbg !1854
  %7 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1859
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1859
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !dbg !1859, !tbaa !1861
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32, !dbg !1862
  %11 = icmp eq i32 %6, %10, !dbg !1863
  br i1 %11, label %12, label %27, !dbg !1864

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1853, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32* %5, metadata !1736, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i32* undef, metadata !1741, metadata !DIExpression()), !dbg !1865
  store i32 0, i32* %5, align 4, !dbg !1867, !tbaa !585
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, metadata !1868, metadata !DIExpression()), !dbg !1874
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0, !dbg !1876
  %14 = load i32, i32* %13, align 4, !dbg !1877, !tbaa !585
  br label %15, !dbg !1878

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ], !dbg !1874
  call void @llvm.dbg.value(metadata i32 %16, metadata !1871, metadata !DIExpression()), !dbg !1874
  %17 = and i32 %16, 1, !dbg !1879
  %18 = icmp eq i32 %17, 0, !dbg !1881
  br i1 %18, label %24, label %19, !dbg !1882

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1871, metadata !DIExpression()), !dbg !1874
  %20 = or i32 %16, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %20, metadata !1872, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32* %13, metadata !1885, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32* undef, metadata !1888, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32* undef, metadata !1889, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i32* %13, metadata !643, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %16, metadata !650, metadata !DIExpression()), !dbg !1893
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst, !dbg !1895
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %22, metadata !651, metadata !DIExpression()), !dbg !1893
  %23 = icmp eq i32 %16, %22, !dbg !1896
  br i1 %23, label %24, label %15, !llvm.loop !1897

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1899
  store i8 %25, i8* %26, align 4, !dbg !1900, !tbaa !1319
  br label %27, !dbg !1901

27:                                               ; preds = %2, %24
  ret i1 %11, !dbg !1902
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1903 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1905, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1906, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i1 %2, metadata !1907, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1910
  call void @llvm.dbg.value(metadata i1 %3, metadata !1908, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1910
  call void @llvm.dbg.value(metadata i8* %0, metadata !1909, metadata !DIExpression()), !dbg !1910
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1911
  %6 = load i8, i8* %5, align 4, !dbg !1911, !tbaa !1319, !range !743
  %7 = icmp ne i8 %6, 0, !dbg !1911
  %8 = and i1 %7, %3, !dbg !1913
  br i1 %8, label %9, label %15, !dbg !1913

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1914
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1914
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !dbg !1914, !tbaa !1861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1916, metadata !DIExpression()), !dbg !1919
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0, !dbg !1921
  call void @llvm.dbg.value(metadata i32* %13, metadata !1922, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 2, metadata !1925, metadata !DIExpression()), !dbg !1926
  %14 = atomicrmw or i32* %13, i32 2 seq_cst, !dbg !1928
  br label %15, !dbg !1929

15:                                               ; preds = %4, %9
  ret void, !dbg !1930
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #0 !dbg !1931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* %0, metadata !1935, metadata !DIExpression()), !dbg !1937
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1938
  %4 = bitcast i8* %3 to i32**, !dbg !1938
  %5 = load i32*, i32** %4, align 4, !dbg !1938, !tbaa !1939
  %6 = load i32, i32* %5, align 4, !dbg !1941, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %6, metadata !1936, metadata !DIExpression()), !dbg !1937
  %7 = icmp eq i32 %6, 0, !dbg !1942
  %8 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1944
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1944
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !dbg !1944, !tbaa !1945
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32, !dbg !1944
  br i1 %7, label %16, label %12, !dbg !1946

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11, !dbg !1947
  br i1 %13, label %18, label %14, !dbg !1949

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1, !dbg !1950
  br label %16, !dbg !1952

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !dbg !1944, !tbaa !585
  br label %18, !dbg !1953

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ], !dbg !1937
  ret i1 %19, !dbg !1953
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #5 !dbg !1954 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %0, metadata !1957, metadata !DIExpression()), !dbg !1958
  %3 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1959
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1959
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !dbg !1959, !tbaa !1945
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1960, metadata !DIExpression()) #8, !dbg !1965
  call void @llvm.dbg.value(metadata i32 1, metadata !1963, metadata !DIExpression()) #8, !dbg !1965
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()) #8, !dbg !1965
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0, !dbg !1967
  call void @llvm.dbg.value(metadata i32* %6, metadata !722, metadata !DIExpression()) #8, !dbg !1969
  call void @llvm.dbg.value(metadata i32* undef, metadata !725, metadata !DIExpression()) #8, !dbg !1969
  call void @llvm.dbg.value(metadata i32* undef, metadata !726, metadata !DIExpression()) #8, !dbg !1969
  call void @llvm.dbg.value(metadata i32* %6, metadata !643, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i32 1, metadata !650, metadata !DIExpression()) #8, !dbg !1971
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1973
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1971
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1974
  br i1 %8, label %22, label %9, !dbg !1975

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1976, metadata !DIExpression()) #8, !dbg !1982
  call void @llvm.dbg.value(metadata i32 1, metadata !1979, metadata !DIExpression()) #8, !dbg !1982
  call void @llvm.dbg.value(metadata i32 0, metadata !1980, metadata !DIExpression()) #8, !dbg !1982
  call void @llvm.dbg.value(metadata i32* %6, metadata !1985, metadata !DIExpression()) #8, !dbg !1990
  call void @llvm.dbg.value(metadata i32* undef, metadata !1988, metadata !DIExpression()) #8, !dbg !1990
  call void @llvm.dbg.value(metadata i32* undef, metadata !1989, metadata !DIExpression()) #8, !dbg !1990
  call void @llvm.dbg.value(metadata i32* %6, metadata !643, metadata !DIExpression()) #8, !dbg !1993
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1993
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1993
  call void @llvm.dbg.value(metadata i32 1, metadata !650, metadata !DIExpression()) #8, !dbg !1993
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1995
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !1993
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !1996
  br i1 %11, label %22, label %12, !dbg !1997

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1998
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #8, !dbg !1998
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1981, metadata !DIExpression()) #8, !dbg !1999
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2000, metadata !DIExpression()) #8, !dbg !2004
  call void @llvm.dbg.value(metadata i32* %6, metadata !2003, metadata !DIExpression()) #8, !dbg !2004
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2006, metadata !DIExpression()) #8, !dbg !2010
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2012
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2013
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 4, !dbg !2013, !tbaa !1388
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2014
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2015
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !dbg !2015, !tbaa !1768
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !2016
  store i32* %6, i32** %18, align 4, !dbg !2016, !tbaa !1804
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !dbg !2017, !tbaa !1325
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %16, align 4, !dbg !2019, !tbaa !1466
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32, !dbg !2020
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !2021
  %21 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %20) #7, !dbg !2022
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #8, !dbg !2023
  br label %22, !dbg !2023

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !2024
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !2025 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2027, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 %1, metadata !2028, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i1 %2, metadata !2029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2034
  call void @llvm.dbg.value(metadata i8* %0, metadata !2030, metadata !DIExpression()), !dbg !2034
  br i1 %2, label %8, label %4, !dbg !2035

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !2030, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2036
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !2037
  %6 = bitcast i8* %5 to i32**, !dbg !2037
  %7 = load i32*, i32** %6, align 4, !dbg !2037, !tbaa !1939
  call void @llvm.dbg.value(metadata i32* %7, metadata !1736, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i32* undef, metadata !1741, metadata !DIExpression()), !dbg !2038
  store i32 0, i32* %7, align 4, !dbg !2040, !tbaa !585
  br label %8, !dbg !2041

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !2042
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !2043 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2050, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata i32 1, metadata !2054, metadata !DIExpression()) #8, !dbg !2055
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !2057
  call void @llvm.dbg.value(metadata i32* %3, metadata !632, metadata !DIExpression()) #8, !dbg !2059
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !2059
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !2059
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()) #8, !dbg !2061
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2061
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2061
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !2061
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst, !dbg !2063
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !2061
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2064
  br i1 %5, label %53, label %6, !dbg !2065

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2050, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2066, metadata !DIExpression()) #8, !dbg !2080
  call void @llvm.dbg.value(metadata i32 40, metadata !2069, metadata !DIExpression()) #8, !dbg !2080
  %7 = load i32, i32* %3, align 4, !dbg !2083, !tbaa !585
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i32
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  br label %16, !dbg !2084

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19, !dbg !2085

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ], !dbg !2080
  call void @llvm.dbg.value(metadata i32 %18, metadata !2069, metadata !DIExpression()) #8, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %20, metadata !2070, metadata !DIExpression()) #8, !dbg !2080
  %21 = and i32 %20, 1, !dbg !2086
  %22 = icmp eq i32 %21, 0, !dbg !2087
  br i1 %22, label %23, label %28, !dbg !2085

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !2070, metadata !DIExpression()) #8, !dbg !2080
  %24 = or i32 %20, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %24, metadata !2071, metadata !DIExpression()) #8, !dbg !2089
  call void @llvm.dbg.value(metadata i32* %3, metadata !632, metadata !DIExpression()) #8, !dbg !2090
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !2090
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !2090
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()) #8, !dbg !2093
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2093
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %20, metadata !650, metadata !DIExpression()) #8, !dbg !2093
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst, !dbg !2095
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %26, metadata !651, metadata !DIExpression()) #8, !dbg !2093
  %27 = icmp eq i32 %20, %26, !dbg !2096
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !661, metadata !DIExpression()) #8, !dbg !2097
  %29 = icmp sgt i32 %18, 0, !dbg !2100
  br i1 %29, label %30, label %35, !dbg !2101

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %18, metadata !2069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !2080
  %31 = icmp eq i32 %18, 1, !dbg !2102
  br i1 %31, label %35, label %32, !dbg !2103

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %33, metadata !2069, metadata !DIExpression()) #8, !dbg !2080
  call void @halide_thread_yield() #7, !dbg !2105
  %34 = load i32, i32* %3, align 4, !dbg !2107, !tbaa !585
  br label %49, !dbg !2108

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !2070, metadata !DIExpression()) #8, !dbg !2080
  %37 = and i32 %20, 2, !dbg !2109
  %38 = icmp eq i32 %37, 0, !dbg !2110
  br i1 %38, label %39, label %44, !dbg !2111

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %20, metadata !2070, metadata !DIExpression()) #8, !dbg !2080
  %40 = or i32 %20, 2, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %40, metadata !2075, metadata !DIExpression()) #8, !dbg !2113
  call void @llvm.dbg.value(metadata i32* %3, metadata !1885, metadata !DIExpression()) #8, !dbg !2114
  call void @llvm.dbg.value(metadata i32* undef, metadata !1888, metadata !DIExpression()) #8, !dbg !2114
  call void @llvm.dbg.value(metadata i32* undef, metadata !1889, metadata !DIExpression()) #8, !dbg !2114
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()) #8, !dbg !2117
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2117
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %20, metadata !650, metadata !DIExpression()) #8, !dbg !2117
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst, !dbg !2119
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %42, metadata !651, metadata !DIExpression()) #8, !dbg !2117
  %43 = icmp eq i32 %20, %42, !dbg !2120
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #8, !dbg !2121
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2078, metadata !DIExpression()) #8, !dbg !2122
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2000, metadata !DIExpression()) #8, !dbg !2123
  call void @llvm.dbg.value(metadata i32* %3, metadata !2003, metadata !DIExpression()) #8, !dbg !2123
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2006, metadata !DIExpression()) #8, !dbg !2125
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 4, !dbg !2127, !tbaa !1388
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !2128, !tbaa !1768
  store i32* %3, i32** %13, align 4, !dbg !2129, !tbaa !1804
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !2130, !tbaa !1325
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %11, align 4, !dbg !2131, !tbaa !1466
  %45 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #7, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %45, metadata !2079, metadata !DIExpression()) #8, !dbg !2133
  %46 = icmp eq i32 %45, %14, !dbg !2134
  br i1 %46, label %52, label %47, !dbg !2136

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 40, metadata !2069, metadata !DIExpression()) #8, !dbg !2080
  %48 = load i32, i32* %3, align 4, !dbg !2137, !tbaa !585
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #8, !dbg !2138
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16, !dbg !2085, !llvm.loop !2139

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #8, !dbg !2138
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void, !dbg !2140
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !2141 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2144, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1960, metadata !DIExpression()) #8, !dbg !2146
  call void @llvm.dbg.value(metadata i32 1, metadata !1963, metadata !DIExpression()) #8, !dbg !2146
  call void @llvm.dbg.value(metadata i32 0, metadata !1964, metadata !DIExpression()) #8, !dbg !2146
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !2148
  call void @llvm.dbg.value(metadata i32* %3, metadata !722, metadata !DIExpression()) #8, !dbg !2149
  call void @llvm.dbg.value(metadata i32* undef, metadata !725, metadata !DIExpression()) #8, !dbg !2149
  call void @llvm.dbg.value(metadata i32* undef, metadata !726, metadata !DIExpression()) #8, !dbg !2149
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()) #8, !dbg !2151
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2151
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2151
  call void @llvm.dbg.value(metadata i32 1, metadata !650, metadata !DIExpression()) #8, !dbg !2151
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !2153
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !2151
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2154
  br i1 %5, label %19, label %6, !dbg !2155

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1976, metadata !DIExpression()) #8, !dbg !2156
  call void @llvm.dbg.value(metadata i32 1, metadata !1979, metadata !DIExpression()) #8, !dbg !2156
  call void @llvm.dbg.value(metadata i32 0, metadata !1980, metadata !DIExpression()) #8, !dbg !2156
  call void @llvm.dbg.value(metadata i32* %3, metadata !1985, metadata !DIExpression()) #8, !dbg !2158
  call void @llvm.dbg.value(metadata i32* undef, metadata !1988, metadata !DIExpression()) #8, !dbg !2158
  call void @llvm.dbg.value(metadata i32* undef, metadata !1989, metadata !DIExpression()) #8, !dbg !2158
  call void @llvm.dbg.value(metadata i32* %3, metadata !643, metadata !DIExpression()) #8, !dbg !2160
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2160
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2160
  call void @llvm.dbg.value(metadata i32 1, metadata !650, metadata !DIExpression()) #8, !dbg !2160
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !2162
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !2160
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !2163
  br i1 %8, label %19, label %9, !dbg !2164

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !2165
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #8, !dbg !2165
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1981, metadata !DIExpression()) #8, !dbg !2166
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2000, metadata !DIExpression()) #8, !dbg !2167
  call void @llvm.dbg.value(metadata i32* %3, metadata !2003, metadata !DIExpression()) #8, !dbg !2167
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !2006, metadata !DIExpression()) #8, !dbg !2169
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2171
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2172
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2172, !tbaa !1388
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2173
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2174
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2174, !tbaa !1768
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !2175
  store i32* %3, i32** %15, align 4, !dbg !2175, !tbaa !1804
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2176, !tbaa !1325
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2177, !tbaa !1466
  %16 = ptrtoint %struct.halide_mutex* %0 to i32, !dbg !2178
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !2179
  %18 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #7, !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #8, !dbg !2181
  br label %19, !dbg !2181

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !2182
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2183 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2191, metadata !DIExpression()) #8, !dbg !2196
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %3, metadata !2199, metadata !DIExpression()) #8, !dbg !2202
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #7, !dbg !2204
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2205
  %5 = load i32, i32* %4, align 4, !dbg !2206, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %5, metadata !2194, metadata !DIExpression()) #8, !dbg !2196
  %6 = icmp eq i32 %5, 0, !dbg !2207
  br i1 %6, label %7, label %8, !dbg !2209

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2210, metadata !DIExpression()) #8, !dbg !2213
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2216
  br label %20, !dbg !2217

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2191, metadata !DIExpression()) #8, !dbg !2196
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2189, metadata !DIExpression()), !dbg !2190
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !2218
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2218
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2195, metadata !DIExpression()) #8, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %5, metadata !2194, metadata !DIExpression()) #8, !dbg !2196
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2220
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2221, metadata !DIExpression()) #8, !dbg !2226
  call void @llvm.dbg.value(metadata i32* %4, metadata !2224, metadata !DIExpression()) #8, !dbg !2226
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2225, metadata !DIExpression()) #8, !dbg !2226
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2006, metadata !DIExpression()) #8, !dbg !2228
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2230
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2231
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2231, !tbaa !1388
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2232
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2232, !tbaa !1466
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2233
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1, !dbg !2234
  store i32* %4, i32** %15, align 4, !dbg !2234, !tbaa !1856
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2, !dbg !2235
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !dbg !2235, !tbaa !1861
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2236, !tbaa !1325
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2238, !tbaa !1768
  %17 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %5, metadata !2194, metadata !DIExpression()) #8, !dbg !2196
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, !dbg !2240
  %19 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj(i32 %17, i32 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %18, i32 0) #7, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %3, metadata !2210, metadata !DIExpression()) #8, !dbg !2242
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2245
  br label %20, !dbg !2245

20:                                               ; preds = %7, %8
  ret void, !dbg !2246
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2247 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2252, metadata !DIExpression()) #8, !dbg !2257
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !2259
  call void @llvm.dbg.value(metadata i8* %3, metadata !2199, metadata !DIExpression()) #8, !dbg !2260
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #7, !dbg !2262
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2263
  %5 = load i32, i32* %4, align 4, !dbg !2264, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %5, metadata !2255, metadata !DIExpression()) #8, !dbg !2257
  %6 = icmp eq i32 %5, 0, !dbg !2265
  br i1 %6, label %7, label %8, !dbg !2267

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !2210, metadata !DIExpression()) #8, !dbg !2268
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2271
  br label %20, !dbg !2272

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2252, metadata !DIExpression()) #8, !dbg !2257
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2250, metadata !DIExpression()), !dbg !2251
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2273
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2273
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2256, metadata !DIExpression()) #8, !dbg !2274
  call void @llvm.dbg.value(metadata i32 %5, metadata !2255, metadata !DIExpression()) #8, !dbg !2257
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2276, metadata !DIExpression()) #8, !dbg !2281
  call void @llvm.dbg.value(metadata i32* %4, metadata !2279, metadata !DIExpression()) #8, !dbg !2281
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !2280, metadata !DIExpression()) #8, !dbg !2281
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2006, metadata !DIExpression()) #8, !dbg !2283
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !2285
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !2285, !tbaa !1325
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !2286
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 4, !dbg !2286, !tbaa !1388
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !2287
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !2288
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !2288, !tbaa !1768
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1, !dbg !2289
  store i32* %4, i32** %15, align 4, !dbg !2289, !tbaa !1841
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2, !dbg !2290
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !dbg !2290, !tbaa !2291
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %13, align 4, !dbg !2292, !tbaa !1466
  %17 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2294
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, !dbg !2295
  %19 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %18) #7, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %3, metadata !2210, metadata !DIExpression()) #8, !dbg !2297
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #7, !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2300
  br label %20, !dbg !2300

20:                                               ; preds = %7, %8
  ret void, !dbg !2301
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #5 !dbg !2302 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2306, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2309, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2311, metadata !DIExpression()) #8, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2314, metadata !DIExpression()) #8, !dbg !2320
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2322
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2322
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2315, metadata !DIExpression()) #8, !dbg !2323
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !2324
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2325, metadata !DIExpression()) #8, !dbg !2330
  call void @llvm.dbg.value(metadata i32* %6, metadata !2328, metadata !DIExpression()) #8, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2329, metadata !DIExpression()) #8, !dbg !2330
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2006, metadata !DIExpression()) #8, !dbg !2332
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0, !dbg !2334
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1, !dbg !2335
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2, !dbg !2336
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3, !dbg !2337
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !dbg !2337, !tbaa !1768
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1, !dbg !2338
  store i32* %6, i32** %11, align 4, !dbg !2338, !tbaa !1939
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2, !dbg !2339
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2339
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !dbg !2339, !tbaa !1945
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !dbg !2340, !tbaa !1325
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 4, !dbg !2342, !tbaa !1388
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %9, align 4, !dbg !2343, !tbaa !1466
  %14 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !2344
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, !dbg !2345
  %16 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #7, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %16, metadata !2316, metadata !DIExpression()) #8, !dbg !2320
  %17 = ptrtoint %struct.halide_mutex* %1 to i32, !dbg !2347
  %18 = icmp eq i32 %16, %17, !dbg !2348
  br i1 %18, label %69, label %19, !dbg !2349

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2050, metadata !DIExpression()) #8, !dbg !2350
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()) #8, !dbg !2350
  call void @llvm.dbg.value(metadata i32 1, metadata !2054, metadata !DIExpression()) #8, !dbg !2350
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2353
  call void @llvm.dbg.value(metadata i32* %20, metadata !632, metadata !DIExpression()) #8, !dbg !2354
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !2354
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !2354
  call void @llvm.dbg.value(metadata i32* %20, metadata !643, metadata !DIExpression()) #8, !dbg !2356
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2356
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !650, metadata !DIExpression()) #8, !dbg !2356
  %21 = cmpxchg i32* %20, i32 0, i32 1 seq_cst seq_cst, !dbg !2358
  call void @llvm.dbg.value(metadata i32 undef, metadata !651, metadata !DIExpression()) #8, !dbg !2356
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2359
  br i1 %22, label %77, label %23, !dbg !2360

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2361
  call void @llvm.dbg.value(metadata i32 40, metadata !2069, metadata !DIExpression()) #8, !dbg !2361
  %24 = load i32, i32* %20, align 4, !dbg !2363, !tbaa !585
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32, !dbg !2364

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35, !dbg !2365

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %34, metadata !2069, metadata !DIExpression()) #8, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %36, metadata !2070, metadata !DIExpression()) #8, !dbg !2361
  %37 = and i32 %36, 1, !dbg !2366
  %38 = icmp eq i32 %37, 0, !dbg !2367
  br i1 %38, label %39, label %44, !dbg !2365

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !2070, metadata !DIExpression()) #8, !dbg !2361
  %40 = or i32 %36, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %40, metadata !2071, metadata !DIExpression()) #8, !dbg !2369
  call void @llvm.dbg.value(metadata i32* %20, metadata !632, metadata !DIExpression()) #8, !dbg !2370
  call void @llvm.dbg.value(metadata i32* undef, metadata !638, metadata !DIExpression()) #8, !dbg !2370
  call void @llvm.dbg.value(metadata i32* undef, metadata !639, metadata !DIExpression()) #8, !dbg !2370
  call void @llvm.dbg.value(metadata i32* %20, metadata !643, metadata !DIExpression()) #8, !dbg !2372
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2372
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %36, metadata !650, metadata !DIExpression()) #8, !dbg !2372
  %41 = cmpxchg i32* %20, i32 %36, i32 %40 seq_cst seq_cst, !dbg !2374
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %42, metadata !651, metadata !DIExpression()) #8, !dbg !2372
  %43 = icmp eq i32 %36, %42, !dbg !2375
  br i1 %43, label %77, label %35

44:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !661, metadata !DIExpression()) #8, !dbg !2376
  %45 = icmp sgt i32 %34, 0, !dbg !2378
  br i1 %45, label %46, label %51, !dbg !2379

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %34, metadata !2069, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !2361
  %47 = icmp eq i32 %34, 1, !dbg !2380
  br i1 %47, label %51, label %48, !dbg !2381

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %49, metadata !2069, metadata !DIExpression()) #8, !dbg !2361
  call void @halide_thread_yield() #7, !dbg !2383
  %50 = load i32, i32* %20, align 4, !dbg !2384, !tbaa !585
  br label %65, !dbg !2385

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !2070, metadata !DIExpression()) #8, !dbg !2361
  %53 = and i32 %36, 2, !dbg !2386
  %54 = icmp eq i32 %53, 0, !dbg !2387
  br i1 %54, label %55, label %60, !dbg !2388

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %36, metadata !2070, metadata !DIExpression()) #8, !dbg !2361
  %56 = or i32 %36, 2, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %56, metadata !2075, metadata !DIExpression()) #8, !dbg !2390
  call void @llvm.dbg.value(metadata i32* %20, metadata !1885, metadata !DIExpression()) #8, !dbg !2391
  call void @llvm.dbg.value(metadata i32* undef, metadata !1888, metadata !DIExpression()) #8, !dbg !2391
  call void @llvm.dbg.value(metadata i32* undef, metadata !1889, metadata !DIExpression()) #8, !dbg !2391
  call void @llvm.dbg.value(metadata i32* %20, metadata !643, metadata !DIExpression()) #8, !dbg !2393
  call void @llvm.dbg.value(metadata i32* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2393
  call void @llvm.dbg.value(metadata i32* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %36, metadata !650, metadata !DIExpression()) #8, !dbg !2393
  %57 = cmpxchg i32* %20, i32 %36, i32 %56 seq_cst seq_cst, !dbg !2395
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %58, metadata !651, metadata !DIExpression()) #8, !dbg !2393
  %59 = icmp eq i32 %36, %58, !dbg !2396
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #8, !dbg !2397
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !2078, metadata !DIExpression()) #8, !dbg !2398
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !2000, metadata !DIExpression()) #8, !dbg !2399
  call void @llvm.dbg.value(metadata i32* %20, metadata !2003, metadata !DIExpression()) #8, !dbg !2399
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !2006, metadata !DIExpression()) #8, !dbg !2401
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 4, !dbg !2403, !tbaa !1388
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !dbg !2404, !tbaa !1768
  store i32* %20, i32** %30, align 4, !dbg !2405, !tbaa !1804
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !dbg !2406, !tbaa !1325
  store i32 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i32 (i8*, i32, i1)** %28, align 4, !dbg !2407, !tbaa !1466
  %61 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #7, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %61, metadata !2079, metadata !DIExpression()) #8, !dbg !2409
  %62 = icmp eq i32 %61, %17, !dbg !2410
  br i1 %62, label %68, label %63, !dbg !2411

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 40, metadata !2069, metadata !DIExpression()) #8, !dbg !2361
  %64 = load i32, i32* %20, align 4, !dbg !2412, !tbaa !585
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #8, !dbg !2413
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32, !dbg !2365, !llvm.loop !2414

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #8, !dbg !2413
  br label %77

69:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2329, metadata !DIExpression()) #8, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2314, metadata !DIExpression()) #8, !dbg !2320
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2309, metadata !DIExpression()), !dbg !2310
  %70 = bitcast %struct.halide_mutex* %1 to i8*, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %70, metadata !954, metadata !DIExpression()) #8, !dbg !2416
  call void @__tsan_mutex_pre_lock(i8* %70, i32 1) #7, !dbg !2418
  %71 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2419
  %72 = load i32, i32* %71, align 4, !dbg !2420, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %72, metadata !2317, metadata !DIExpression()) #8, !dbg !2421
  %73 = and i32 %72, 1, !dbg !2422
  %74 = icmp eq i32 %73, 0, !dbg !2422
  br i1 %74, label %75, label %76, !dbg !2425

75:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !2426
  call void @abort() #7, !dbg !2426
  br label %76, !dbg !2426

76:                                               ; preds = %75, %69
  call void @llvm.dbg.value(metadata i8* %70, metadata !973, metadata !DIExpression()) #8, !dbg !2428
  call void @__tsan_mutex_post_lock(i8* nonnull %70, i32 1, i32 1) #7, !dbg !2430
  br label %77

77:                                               ; preds = %39, %19, %68, %76
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #2 !dbg !2433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2439
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #7, !dbg !2440
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2441
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2438, metadata !DIExpression()), !dbg !2439
  %4 = icmp eq i8* %2, null, !dbg !2442
  br i1 %4, label %13, label %5, !dbg !2444

5:                                                ; preds = %1
  %6 = shl i32 %0, 2, !dbg !2445
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #7, !dbg !2446
  %8 = bitcast i8* %2 to i8**, !dbg !2447
  store i8* %7, i8** %8, align 4, !dbg !2447, !tbaa !2448
  %9 = icmp eq i8* %7, null, !dbg !2450
  br i1 %9, label %10, label %11, !dbg !2452

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #7, !dbg !2453
  br label %13, !dbg !2455

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #7, !dbg !2456
  br label %13, !dbg !2457

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ], !dbg !2439
  ret %struct.halide_mutex_array* %14, !dbg !2458
}

declare !dbg !2459 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #4

declare !dbg !2462 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !2465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %1, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %1, metadata !2469, metadata !DIExpression()), !dbg !2470
  %3 = bitcast i8* %1 to i8**, !dbg !2471
  %4 = load i8*, i8** %3, align 4, !dbg !2471, !tbaa !2448
  tail call void @halide_free(i8* %0, i8* %4) #7, !dbg !2472
  tail call void @halide_free(i8* %0, i8* %1) #7, !dbg !2473
  ret void, !dbg !2474
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2475 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %1, metadata !2480, metadata !DIExpression()), !dbg !2481
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2482
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2482, !tbaa !2448
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2483
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #6, !dbg !2484
  ret i32 0, !dbg !2485
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2486 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %1, metadata !2489, metadata !DIExpression()), !dbg !2490
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2491
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2491, !tbaa !2448
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2492
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #6, !dbg !2493
  ret i32 0, !dbg !2494
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #0 !dbg !2495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()), !dbg !2500
  %2 = icmp sgt i32 %0, 256, !dbg !2501
  br i1 %2, label %6, label %3, !dbg !2503

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2504
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2504
  ret i32 %5, !dbg !2504

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2499, metadata !DIExpression()), !dbg !2500
  ret i32 256, !dbg !2505
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #2 !dbg !2506 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2508, metadata !DIExpression()), !dbg !2510
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2509, metadata !DIExpression()), !dbg !2510
  %2 = icmp eq i8* %1, null, !dbg !2512
  br i1 %2, label %3, label %6, !dbg !2514

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !2515
  call void @llvm.dbg.value(metadata i8* %4, metadata !2509, metadata !DIExpression()), !dbg !2510
  %5 = icmp eq i8* %4, null, !dbg !2517
  br i1 %5, label %9, label %6, !dbg !2519

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #7, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %8, metadata !2508, metadata !DIExpression()), !dbg !2510
  br label %11, !dbg !2522

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %10, metadata !2508, metadata !DIExpression()), !dbg !2510
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2525
  call void @llvm.dbg.value(metadata i32 %12, metadata !2508, metadata !DIExpression()), !dbg !2510
  ret i32 %12, !dbg !2526
}

declare !dbg !2527 dso_local i8* @getenv(i8*) local_unnamed_addr #4

declare !dbg !2530 dso_local i32 @atoi(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #2 !dbg !2533 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2537, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 40, metadata !2539, metadata !DIExpression()), !dbg !2563
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8, !dbg !2564
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10, !dbg !2570

10:                                               ; preds = %390, %1
  %11 = phi i32 [ 0, %1 ], [ %391, %390 ], !dbg !2571
  call void @llvm.dbg.value(metadata i32 %11, metadata !2538, metadata !DIExpression()), !dbg !2563
  br i1 %3, label %15, label %12, !dbg !2572

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2567, metadata !DIExpression()), !dbg !2573
  %13 = load i32, i32* %4, align 4, !dbg !2574, !tbaa !2575
  %14 = icmp eq i32 %13, 0, !dbg !2578
  br i1 %14, label %18, label %21, !dbg !2579

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !2580, !tbaa !2581, !range !743
  %17 = icmp eq i8 %16, 0, !dbg !2580
  br i1 %17, label %48, label %405, !dbg !2570

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !2564, !tbaa !2585
  %20 = icmp eq i32 %19, 0, !dbg !2564
  br i1 %20, label %405, label %21, !dbg !2570

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2586, !tbaa !2587
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2543, metadata !DIExpression()), !dbg !2588
  %23 = load i32, i32* %5, align 4, !dbg !2589, !tbaa !2593
  %24 = icmp eq i32 %23, 0, !dbg !2594
  br i1 %24, label %38, label %25, !dbg !2595

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !2596, !tbaa !2585
  %27 = icmp eq i32 %26, 0, !dbg !2599
  br i1 %27, label %28, label %46, !dbg !2600

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2543, metadata !DIExpression()), !dbg !2588
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2601
  br i1 %29, label %35, label %30, !dbg !2603

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2541, metadata !DIExpression()), !dbg !2588
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2604
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2543, metadata !DIExpression()), !dbg !2588
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !dbg !2606, !tbaa !2607
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2541, metadata !DIExpression()), !dbg !2588
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2601
  br i1 %34, label %35, label %30, !dbg !2603, !llvm.loop !2608

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %28 ], [ %32, %30 ], !dbg !2588
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !dbg !2610, !tbaa !2607
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 4, !dbg !2611, !tbaa !1119
  store i32 0, i32* %4, align 4, !dbg !2612, !tbaa !2575
  br label %390, !dbg !2613

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !dbg !2614, !tbaa !2616
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2617
  br i1 %40, label %46, label %41, !dbg !2618

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i32 0, i32 9, !dbg !2619
  %43 = load i32, i32* %42, align 4, !dbg !2619, !tbaa !2593
  %44 = icmp eq i32 %43, 0, !dbg !2620
  br i1 %44, label %46, label %45, !dbg !2621

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2622, !tbaa !2593
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !2624
  br label %390, !dbg !2625

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2543, metadata !DIExpression()), !dbg !2588
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2626
  br i1 %47, label %188, label %51, !dbg !2627

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2586, !tbaa !2587
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), metadata !2543, metadata !DIExpression()), !dbg !2588
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2626
  br i1 %50, label %198, label %52, !dbg !2627

51:                                               ; preds = %46
  br i1 %3, label %52, label %117, !dbg !2627

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2628

54:                                               ; preds = %52, %113
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %115, %113 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %114, %113 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2543, metadata !DIExpression()), !dbg !2588
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 5, !dbg !2629
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 4, !dbg !2629, !tbaa !2616
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2547, metadata !DIExpression()), !dbg !2630
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2631
  br i1 %59, label %71, label %60, !dbg !2628

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 8, !dbg !2633
  %62 = load i32, i32* %61, align 4, !dbg !2633, !tbaa !2585
  %63 = icmp eq i32 %62, 0, !dbg !2636
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 0, i32 7, !dbg !2637
  %65 = load i32, i32* %64, align 4, !dbg !2637, !tbaa !2638
  br i1 %63, label %69, label %66, !dbg !2639

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2640
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2642
  call void @llvm.dbg.value(metadata i32 undef, metadata !2548, metadata !DIExpression()), !dbg !2630
  br label %74

69:                                               ; preds = %60
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i32 0, i32 6, !dbg !2643
  call void @llvm.dbg.value(metadata i32 undef, metadata !2548, metadata !DIExpression()), !dbg !2630
  br label %74, !dbg !2645

71:                                               ; preds = %54
  %72 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2646, !tbaa !2648
  %73 = add nsw i32 %72, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %78, metadata !2548, metadata !DIExpression()), !dbg !2630
  br label %74, !dbg !2650

74:                                               ; preds = %71, %69, %66
  %75 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %71 ], [ %70, %69 ], [ %68, %66 ]
  %76 = phi i32 [ %73, %71 ], [ %65, %69 ], [ %67, %66 ]
  %77 = load i32, i32* %75, align 4, !dbg !2651, !tbaa !585
  %78 = sub i32 %76, %77, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %78, metadata !2548, metadata !DIExpression()), !dbg !2630
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 7, !dbg !2652
  %80 = load i32, i32* %79, align 4, !dbg !2652, !tbaa !2638
  %81 = icmp sge i32 %78, %80, !dbg !2653
  call void @llvm.dbg.value(metadata i1 %81, metadata !2545, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  call void @llvm.dbg.value(metadata i1 true, metadata !2549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 8, !dbg !2654
  %83 = load i8, i8* %82, align 4, !dbg !2654, !tbaa !2655, !range !743
  %84 = icmp eq i8 %83, 0, !dbg !2654
  br i1 %84, label %89, label %85, !dbg !2656

85:                                               ; preds = %74
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 8, !dbg !2657
  %87 = load i32, i32* %86, align 4, !dbg !2657, !tbaa !2585
  %88 = icmp eq i32 %87, 0, !dbg !2658
  br label %89, !dbg !2656

89:                                               ; preds = %85, %74
  %90 = phi i1 [ true, %74 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata i1 %90, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  %91 = and i1 %90, %81, !dbg !2659
  br i1 %91, label %92, label %113, !dbg !2659

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2661, metadata !DIExpression()) #8, !dbg !2664
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 10, !dbg !2668
  %94 = load i32, i32* %93, align 4, !dbg !2668, !tbaa !2671
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 4, !dbg !2672
  %96 = load i32, i32* %95, align 4, !dbg !2672, !tbaa !2673
  %97 = icmp slt i32 %94, %96, !dbg !2674
  br i1 %97, label %98, label %217, !dbg !2675

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 0, i32 3
  br label %100, !dbg !2675

100:                                              ; preds = %108, %98
  %101 = phi i32 [ %94, %98 ], [ %110, %108 ]
  %102 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %99, align 4, !dbg !2676, !tbaa !2679
  %103 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 0, !dbg !2680
  %104 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %103, align 4, !dbg !2680, !tbaa !2681
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %102, i32 %101, i32 1, !dbg !2683
  %106 = load i32, i32* %105, align 4, !dbg !2683, !tbaa !2684
  %107 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %104, i32 %106) #7, !dbg !2685
  br i1 %107, label %108, label %113, !dbg !2686

108:                                              ; preds = %100
  %109 = load i32, i32* %93, align 4, !dbg !2687, !tbaa !2671
  %110 = add nsw i32 %109, 1, !dbg !2687
  store i32 %110, i32* %93, align 4, !dbg !2687, !tbaa !2671
  %111 = load i32, i32* %95, align 4, !dbg !2672, !tbaa !2673
  %112 = icmp slt i32 %110, %111, !dbg !2674
  br i1 %112, label %100, label %217, !dbg !2675, !llvm.loop !2688

113:                                              ; preds = %100, %89
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i32 0, i32 2, !dbg !2690
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %114, metadata !2543, metadata !DIExpression()), !dbg !2588
  %115 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %114, align 4, !dbg !2691, !tbaa !2607
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %115, metadata !2541, metadata !DIExpression()), !dbg !2588
  %116 = icmp eq %"struct.Halide::Runtime::Internal::work"* %115, null, !dbg !2626
  br i1 %116, label %188, label %54, !dbg !2627

117:                                              ; preds = %51, %184
  %118 = phi %"struct.Halide::Runtime::Internal::work"* [ %186, %184 ], [ %22, %51 ]
  %119 = phi %"struct.Halide::Runtime::Internal::work"** [ %185, %184 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %119, metadata !2543, metadata !DIExpression()), !dbg !2588
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 5, !dbg !2629
  %121 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %120, align 4, !dbg !2629, !tbaa !2616
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %121, metadata !2547, metadata !DIExpression()), !dbg !2630
  %122 = icmp eq %"struct.Halide::Runtime::Internal::work"* %121, null, !dbg !2631
  br i1 %122, label %123, label %126, !dbg !2628

123:                                              ; preds = %117
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !2646, !tbaa !2648
  %125 = add nsw i32 %124, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 undef, metadata !2548, metadata !DIExpression()), !dbg !2630
  br label %137, !dbg !2650

126:                                              ; preds = %117
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 8, !dbg !2633
  %128 = load i32, i32* %127, align 4, !dbg !2633, !tbaa !2585
  %129 = icmp eq i32 %128, 0, !dbg !2636
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 0, i32 7, !dbg !2637
  %131 = load i32, i32* %130, align 4, !dbg !2637, !tbaa !2638
  br i1 %129, label %132, label %134, !dbg !2639

132:                                              ; preds = %126
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %141, metadata !2548, metadata !DIExpression()), !dbg !2630
  br label %137, !dbg !2645

134:                                              ; preds = %126
  %135 = mul nsw i32 %131, %128, !dbg !2640
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %121, i32 0, i32 6, !dbg !2642
  call void @llvm.dbg.value(metadata i32 undef, metadata !2548, metadata !DIExpression()), !dbg !2630
  br label %137

137:                                              ; preds = %132, %134, %123
  %138 = phi i32* [ %133, %132 ], [ %136, %134 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), %123 ]
  %139 = phi i32 [ %131, %132 ], [ %135, %134 ], [ %125, %123 ]
  %140 = load i32, i32* %138, align 4, !dbg !2651, !tbaa !585
  %141 = sub i32 %139, %140, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %141, metadata !2548, metadata !DIExpression()), !dbg !2630
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 7, !dbg !2652
  %143 = load i32, i32* %142, align 4, !dbg !2652, !tbaa !2638
  %144 = icmp slt i32 %141, %143, !dbg !2653
  call void @llvm.dbg.value(metadata i1 %144, metadata !2545, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 3, !dbg !2692
  %146 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %145, align 4, !dbg !2692, !tbaa !2693
  %147 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !dbg !2694, !tbaa !2693
  %148 = icmp ne %"struct.Halide::Runtime::Internal::work"* %146, %147, !dbg !2695
  %149 = icmp ne i32 %143, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2549, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 8, !dbg !2654
  %151 = load i8, i8* %150, align 4, !dbg !2654, !tbaa !2655, !range !743
  %152 = icmp eq i8 %151, 0, !dbg !2654
  br i1 %152, label %157, label %153, !dbg !2656

153:                                              ; preds = %137
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 8, !dbg !2657
  %155 = load i32, i32* %154, align 4, !dbg !2657, !tbaa !2585
  %156 = icmp eq i32 %155, 0, !dbg !2658
  br label %157, !dbg !2656

157:                                              ; preds = %153, %137
  %158 = phi i1 [ true, %137 ], [ %156, %153 ]
  call void @llvm.dbg.value(metadata i1 %158, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2630
  %159 = and i1 %149, %148, !dbg !2659
  %160 = or i1 %144, %159, !dbg !2659
  %161 = xor i1 %158, true, !dbg !2659
  %162 = or i1 %160, %161, !dbg !2659
  br i1 %162, label %184, label %163, !dbg !2659

163:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %118, metadata !2661, metadata !DIExpression()) #8, !dbg !2664
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 10, !dbg !2668
  %165 = load i32, i32* %164, align 4, !dbg !2668, !tbaa !2671
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 4, !dbg !2672
  %167 = load i32, i32* %166, align 4, !dbg !2672, !tbaa !2673
  %168 = icmp slt i32 %165, %167, !dbg !2674
  br i1 %168, label %169, label %217, !dbg !2675

169:                                              ; preds = %163
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 0, i32 3
  br label %171, !dbg !2675

171:                                              ; preds = %179, %169
  %172 = phi i32 [ %165, %169 ], [ %181, %179 ]
  %173 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %170, align 4, !dbg !2676, !tbaa !2679
  %174 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 0, !dbg !2680
  %175 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %174, align 4, !dbg !2680, !tbaa !2681
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %173, i32 %172, i32 1, !dbg !2683
  %177 = load i32, i32* %176, align 4, !dbg !2683, !tbaa !2684
  %178 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %175, i32 %177) #7, !dbg !2685
  br i1 %178, label %179, label %184, !dbg !2686

179:                                              ; preds = %171
  %180 = load i32, i32* %164, align 4, !dbg !2687, !tbaa !2671
  %181 = add nsw i32 %180, 1, !dbg !2687
  store i32 %181, i32* %164, align 4, !dbg !2687, !tbaa !2671
  %182 = load i32, i32* %166, align 4, !dbg !2672, !tbaa !2673
  %183 = icmp slt i32 %181, %182, !dbg !2674
  br i1 %183, label %171, label %217, !dbg !2675, !llvm.loop !2688

184:                                              ; preds = %171, %157
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %118, i32 0, i32 2, !dbg !2690
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %185, metadata !2543, metadata !DIExpression()), !dbg !2588
  %186 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %185, align 4, !dbg !2691, !tbaa !2607
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %186, metadata !2541, metadata !DIExpression()), !dbg !2588
  %187 = icmp eq %"struct.Halide::Runtime::Internal::work"* %186, null, !dbg !2626
  br i1 %187, label %188, label %117, !dbg !2627

188:                                              ; preds = %184, %113, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2543, metadata !DIExpression()), !dbg !2588
  br i1 %3, label %198, label %189, !dbg !2696

189:                                              ; preds = %188
  %190 = add nsw i32 %11, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %190, metadata !2538, metadata !DIExpression()), !dbg !2563
  %191 = icmp slt i32 %11, 40, !dbg !2703
  br i1 %191, label %192, label %193, !dbg !2704

192:                                              ; preds = %189
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2705
  tail call void @halide_thread_yield() #7, !dbg !2707
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2708
  br label %390, !dbg !2709

193:                                              ; preds = %189
  %194 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2710, !tbaa !2712
  %195 = add nsw i32 %194, 1, !dbg !2710
  store i32 %195, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2710, !tbaa !2712
  store i8 1, i8* %8, align 4, !dbg !2713, !tbaa !2714
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2715
  store i8 0, i8* %8, align 4, !dbg !2716, !tbaa !2714
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2717, !tbaa !2712
  %197 = add nsw i32 %196, -1, !dbg !2717
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !2717, !tbaa !2712
  br label %390

198:                                              ; preds = %48, %188
  %199 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2718, !tbaa !2720
  %200 = add nsw i32 %199, 1, !dbg !2718
  store i32 %200, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2718, !tbaa !2720
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2721, !tbaa !2723
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !2724, !tbaa !2725
  %203 = icmp sgt i32 %201, %202, !dbg !2726
  br i1 %203, label %204, label %208, !dbg !2727

204:                                              ; preds = %198
  %205 = add nsw i32 %201, -1, !dbg !2728
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2728, !tbaa !2723
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2730
  %206 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2731, !tbaa !2723
  %207 = add nsw i32 %206, 1, !dbg !2731
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !2731, !tbaa !2723
  br label %213, !dbg !2732

208:                                              ; preds = %198
  %209 = add nsw i32 %11, 1, !dbg !2733
  call void @llvm.dbg.value(metadata i32 %209, metadata !2538, metadata !DIExpression()), !dbg !2563
  %210 = icmp slt i32 %11, 40, !dbg !2735
  br i1 %210, label %211, label %212, !dbg !2736

211:                                              ; preds = %208
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2737
  tail call void @halide_thread_yield() #7, !dbg !2739
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2740
  br label %213, !dbg !2741

212:                                              ; preds = %208
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2742
  br label %213

213:                                              ; preds = %211, %212, %204
  %214 = phi i32 [ %11, %204 ], [ %209, %211 ], [ %209, %212 ], !dbg !2563
  call void @llvm.dbg.value(metadata i32 %214, metadata !2538, metadata !DIExpression()), !dbg !2563
  %215 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2744, !tbaa !2720
  %216 = add nsw i32 %215, -1, !dbg !2744
  store i32 %216, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !2744, !tbaa !2720
  br label %390

217:                                              ; preds = %163, %92, %179, %108
  %218 = phi i32* [ %93, %108 ], [ %164, %179 ], [ %93, %92 ], [ %164, %163 ]
  %219 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %108 ], [ %119, %179 ], [ %56, %92 ], [ %119, %163 ]
  %220 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %108 ], [ %118, %179 ], [ %55, %92 ], [ %118, %163 ]
  store i32 0, i32* %218, align 4, !dbg !2745, !tbaa !2671
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2541, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %219, metadata !2543, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2563
  %221 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 8, !dbg !2746
  %222 = load i32, i32* %221, align 4, !dbg !2747, !tbaa !2585
  %223 = add nsw i32 %222, 1, !dbg !2747
  store i32 %223, i32* %221, align 4, !dbg !2747, !tbaa !2585
  %224 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 5, !dbg !2748
  %225 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2748, !tbaa !2616
  %226 = icmp eq %"struct.Halide::Runtime::Internal::work"* %225, null, !dbg !2750
  %227 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2751
  %228 = load i32, i32* %227, align 4, !dbg !2751, !tbaa !2638
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %225, i32 0, i32 6, !dbg !2752
  %230 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2752
  %231 = select i1 %226, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %229, !dbg !2752
  %232 = load i32, i32* %230, align 4, !dbg !2751, !tbaa !585
  %233 = add nsw i32 %232, %228, !dbg !2751
  store i32 %233, i32* %231, align 4, !dbg !2751, !tbaa !585
  call void @llvm.dbg.value(metadata i32 0, metadata !2551, metadata !DIExpression()), !dbg !2588
  %234 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 8, !dbg !2753
  %235 = load i8, i8* %234, align 4, !dbg !2753, !tbaa !2655, !range !743
  %236 = icmp eq i8 %235, 0, !dbg !2753
  br i1 %236, label %311, label %237, !dbg !2754

237:                                              ; preds = %217
  %238 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2755
  %239 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2755, !tbaa !2607
  store %"struct.Halide::Runtime::Internal::work"* %239, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2756, !tbaa !1119
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2757
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 1, metadata !2555, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2551, metadata !DIExpression()), !dbg !2588
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 10
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 4
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 3
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0
  %246 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1
  %248 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*
  br label %249, !dbg !2759

249:                                              ; preds = %237, %288
  %250 = phi i32 [ 1, %237 ], [ 0, %288 ]
  %251 = phi i32 [ 0, %237 ], [ %296, %288 ]
  call void @llvm.dbg.value(metadata i32 %251, metadata !2552, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2551, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %250, metadata !2555, metadata !DIExpression()), !dbg !2758
  %252 = load i32, i32* %240, align 4, !dbg !2760, !tbaa !2575
  %253 = sub nsw i32 %252, %251, !dbg !2762
  %254 = icmp sgt i32 %253, %250, !dbg !2763
  br i1 %254, label %255, label %285, !dbg !2764

255:                                              ; preds = %249
  %256 = load i32, i32* %241, align 4, !dbg !2765, !tbaa !2671
  %257 = load i32, i32* %242, align 4, !dbg !2767, !tbaa !2673
  br label %258, !dbg !2768

258:                                              ; preds = %255, %279
  %259 = phi i32 [ %280, %279 ], [ %252, %255 ]
  %260 = phi i32 [ %281, %279 ], [ %257, %255 ], !dbg !2767
  %261 = phi i32 [ 0, %279 ], [ %256, %255 ], !dbg !2765
  %262 = phi i32 [ %282, %279 ], [ %250, %255 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2555, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %220, metadata !2661, metadata !DIExpression()) #8, !dbg !2769
  %263 = icmp slt i32 %261, %260, !dbg !2770
  br i1 %263, label %264, label %279, !dbg !2771

264:                                              ; preds = %258, %272
  %265 = phi i32 [ %274, %272 ], [ %261, %258 ]
  %266 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %243, align 4, !dbg !2772, !tbaa !2679
  %267 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 0, !dbg !2773
  %268 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %267, align 4, !dbg !2773, !tbaa !2681
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %266, i32 %265, i32 1, !dbg !2774
  %270 = load i32, i32* %269, align 4, !dbg !2774, !tbaa !2684
  %271 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %268, i32 %270) #7, !dbg !2775
  br i1 %271, label %272, label %285, !dbg !2776

272:                                              ; preds = %264
  %273 = load i32, i32* %241, align 4, !dbg !2777, !tbaa !2671
  %274 = add nsw i32 %273, 1, !dbg !2777
  store i32 %274, i32* %241, align 4, !dbg !2777, !tbaa !2671
  %275 = load i32, i32* %242, align 4, !dbg !2767, !tbaa !2673
  %276 = icmp slt i32 %274, %275, !dbg !2770
  br i1 %276, label %264, label %277, !dbg !2771, !llvm.loop !2778

277:                                              ; preds = %272
  %278 = load i32, i32* %240, align 4, !dbg !2760, !tbaa !2575
  br label %279, !dbg !2780

279:                                              ; preds = %277, %258
  %280 = phi i32 [ %278, %277 ], [ %259, %258 ], !dbg !2760
  %281 = phi i32 [ %275, %277 ], [ %260, %258 ]
  store i32 0, i32* %241, align 4, !dbg !2780, !tbaa !2671
  %282 = add nuw nsw i32 %262, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %282, metadata !2555, metadata !DIExpression()), !dbg !2758
  %283 = sub nsw i32 %280, %251, !dbg !2762
  %284 = icmp sgt i32 %283, %282, !dbg !2763
  br i1 %284, label %258, label %288, !dbg !2764, !llvm.loop !2783

285:                                              ; preds = %264, %249
  %286 = phi i32 [ %250, %249 ], [ %262, %264 ]
  %287 = icmp eq i32 %286, 0, !dbg !2785
  br i1 %287, label %298, label %288, !dbg !2787

288:                                              ; preds = %279, %285
  %289 = phi i32 [ %286, %285 ], [ %282, %279 ]
  %290 = load i8*, i8** %244, align 4, !dbg !2788, !tbaa !2789
  %291 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %245, align 4, !dbg !2790, !tbaa !2791
  %292 = load i32, i32* %246, align 4, !dbg !2792, !tbaa !2793
  %293 = add nsw i32 %292, %251, !dbg !2794
  %294 = load i8*, i8** %247, align 4, !dbg !2795, !tbaa !2796
  %295 = tail call i32 @halide_do_loop_task(i8* %290, i32 (i8*, i32, i32, i8*, i8*)* %291, i32 %293, i32 %289, i8* %294, i8* nonnull %248) #6, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %295, metadata !2551, metadata !DIExpression()), !dbg !2588
  %296 = add nuw nsw i32 %289, %251, !dbg !2798
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 %296, metadata !2552, metadata !DIExpression()), !dbg !2758
  %297 = icmp eq i32 %295, 0, !dbg !2799
  br i1 %297, label %249, label %298, !dbg !2759, !llvm.loop !2800

298:                                              ; preds = %285, %288
  %299 = phi i1 [ true, %285 ], [ false, %288 ]
  %300 = phi i32 [ 0, %285 ], [ %295, %288 ], !dbg !2588
  %301 = phi i32 [ %251, %285 ], [ %296, %288 ], !dbg !2758
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2802
  %302 = load i32, i32* %246, align 4, !dbg !2803, !tbaa !2793
  %303 = add nsw i32 %302, %301, !dbg !2803
  store i32 %303, i32* %246, align 4, !dbg !2803, !tbaa !2793
  %304 = load i32, i32* %240, align 4, !dbg !2804, !tbaa !2575
  %305 = sub nsw i32 %304, %301, !dbg !2804
  store i32 %305, i32* %240, align 4, !dbg !2804, !tbaa !2575
  br i1 %299, label %307, label %306, !dbg !2805

306:                                              ; preds = %298
  store i32 0, i32* %240, align 4, !dbg !2806, !tbaa !2575
  call void @llvm.dbg.value(metadata i32 %338, metadata !2551, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2588
  br label %340, !dbg !2809

307:                                              ; preds = %298
  %308 = icmp sgt i32 %305, 0, !dbg !2810
  br i1 %308, label %309, label %375, !dbg !2812

309:                                              ; preds = %307
  %310 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2813, !tbaa !2587
  store %"struct.Halide::Runtime::Internal::work"* %310, %"struct.Halide::Runtime::Internal::work"** %238, align 4, !dbg !2815, !tbaa !2607
  store %"struct.Halide::Runtime::Internal::work"* %220, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !2816, !tbaa !2587
  br label %375, !dbg !2817

311:                                              ; preds = %217
  %312 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 0, !dbg !2818
  %313 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %312, align 4, !dbg !2818, !tbaa.struct !2819
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %313, metadata !2556, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2821
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 1, !dbg !2818
  %315 = load i8*, i8** %314, align 4, !dbg !2818, !tbaa.struct !2822
  call void @llvm.dbg.value(metadata i8* %315, metadata !2556, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2821
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 5, !dbg !2818
  %317 = load i32, i32* %316, align 4, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %317, metadata !2556, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2821
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 1, !dbg !2818
  %319 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %318, align 4, !dbg !2818, !tbaa.struct !2823
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %319, metadata !2556, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2821
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 7, !dbg !2818
  %321 = load i8*, i8** %320, align 4, !dbg !2818, !tbaa.struct !2824
  call void @llvm.dbg.value(metadata i8* %321, metadata !2556, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2821
  %322 = add nsw i32 %317, 1, !dbg !2825
  store i32 %322, i32* %316, align 4, !dbg !2825, !tbaa !2793
  %323 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2826
  %324 = load i32, i32* %323, align 4, !dbg !2827, !tbaa !2575
  %325 = add nsw i32 %324, -1, !dbg !2827
  store i32 %325, i32* %323, align 4, !dbg !2827, !tbaa !2575
  %326 = icmp eq i32 %325, 0, !dbg !2828
  br i1 %326, label %327, label %330, !dbg !2830

327:                                              ; preds = %311
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 2, !dbg !2818
  %329 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %328, align 4, !dbg !2831, !tbaa !2607
  store %"struct.Halide::Runtime::Internal::work"* %329, %"struct.Halide::Runtime::Internal::work"** %219, align 4, !dbg !2833, !tbaa !1119
  br label %330, !dbg !2834

330:                                              ; preds = %327, %311
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2835
  %331 = icmp eq i32 (i8*, i32, i8*)* %319, null, !dbg !2836
  br i1 %331, label %334, label %332, !dbg !2838

332:                                              ; preds = %330
  %333 = tail call i32 @halide_do_task(i8* %321, i32 (i8*, i32, i8*)* nonnull %319, i32 %317, i8* %315) #6, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %333, metadata !2551, metadata !DIExpression()), !dbg !2588
  br label %337, !dbg !2841

334:                                              ; preds = %330
  %335 = bitcast %"struct.Halide::Runtime::Internal::work"* %220 to i8*, !dbg !2842
  %336 = tail call i32 @halide_do_loop_task(i8* %321, i32 (i8*, i32, i32, i8*, i8*)* %313, i32 %317, i32 1, i8* %315, i8* %335) #6, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %336, metadata !2551, metadata !DIExpression()), !dbg !2588
  br label %337

337:                                              ; preds = %332, %334
  %338 = phi i32 [ %333, %332 ], [ %336, %334 ], !dbg !2845
  call void @llvm.dbg.value(metadata i32 %338, metadata !2551, metadata !DIExpression()), !dbg !2588
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2846
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2588
  %339 = icmp eq i32 %338, 0, !dbg !2847
  br i1 %339, label %375, label %340, !dbg !2809

340:                                              ; preds = %306, %337
  %341 = phi i32 [ %300, %306 ], [ %338, %337 ]
  %342 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2848
  store i32 %341, i32* %342, align 4, !dbg !2849, !tbaa !2593
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2588
  %343 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 4, !dbg !2851
  %344 = load i32, i32* %343, align 4, !dbg !2851, !tbaa !2853
  %345 = icmp sgt i32 %344, 0, !dbg !2854
  br i1 %345, label %346, label %349, !dbg !2855

346:                                              ; preds = %340
  %347 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 3
  %348 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %347, align 4, !tbaa !2693
  br label %353, !dbg !2855

349:                                              ; preds = %371, %340
  %350 = phi i8 [ 0, %340 ], [ %372, %371 ], !dbg !2588
  %351 = and i8 %350, 1, !dbg !2856
  %352 = icmp ne i8 %351, 0, !dbg !2856
  br label %375, !dbg !2856

353:                                              ; preds = %346, %371
  %354 = phi i32 [ 0, %346 ], [ %373, %371 ]
  %355 = phi i8 [ 0, %346 ], [ %372, %371 ]
  call void @llvm.dbg.value(metadata i32 %354, metadata !2559, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 %355, metadata !2558, metadata !DIExpression()), !dbg !2588
  %356 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 9, !dbg !2857
  %357 = load i32, i32* %356, align 4, !dbg !2857, !tbaa !2593
  %358 = icmp eq i32 %357, 0, !dbg !2860
  br i1 %358, label %359, label %371, !dbg !2861

359:                                              ; preds = %353
  store i32 %341, i32* %356, align 4, !dbg !2862, !tbaa !2593
  %360 = load i32, i32* %221, align 4, !dbg !2864, !tbaa !2585
  %361 = icmp eq i32 %360, 0, !dbg !2865
  br i1 %361, label %362, label %366, !dbg !2866

362:                                              ; preds = %359
  %363 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %348, i32 %354, i32 11, !dbg !2867
  %364 = load i8, i8* %363, align 4, !dbg !2867, !tbaa !2714, !range !743
  %365 = icmp ne i8 %364, 0, !dbg !2867
  br label %366

366:                                              ; preds = %362, %359
  %367 = phi i1 [ false, %359 ], [ %365, %362 ], !dbg !2868
  %368 = zext i1 %367 to i8, !dbg !2869
  %369 = and i8 %355, 1, !dbg !2870
  %370 = or i8 %369, %368, !dbg !2870
  call void @llvm.dbg.value(metadata i8 %370, metadata !2558, metadata !DIExpression()), !dbg !2588
  br label %371, !dbg !2871

371:                                              ; preds = %353, %366
  %372 = phi i8 [ %370, %366 ], [ %355, %353 ], !dbg !2588
  call void @llvm.dbg.value(metadata i8 %372, metadata !2558, metadata !DIExpression()), !dbg !2588
  %373 = add nuw nsw i32 %354, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %373, metadata !2559, metadata !DIExpression()), !dbg !2850
  %374 = icmp slt i32 %373, %344, !dbg !2854
  br i1 %374, label %353, label %349, !dbg !2855, !llvm.loop !2873

375:                                              ; preds = %309, %307, %349, %337
  %376 = phi i1 [ %352, %349 ], [ false, %337 ], [ false, %307 ], [ false, %309 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2558, metadata !DIExpression()), !dbg !2588
  %377 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %224, align 4, !dbg !2875, !tbaa !2616
  %378 = icmp eq %"struct.Halide::Runtime::Internal::work"* %377, null, !dbg !2877
  %379 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 7, !dbg !2878
  %380 = load i32, i32* %379, align 4, !dbg !2878, !tbaa !2638
  %381 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %377, i32 0, i32 6, !dbg !2879
  %382 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2879
  %383 = select i1 %378, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %381, !dbg !2879
  %384 = load i32, i32* %382, align 4, !dbg !2878, !tbaa !585
  %385 = sub nsw i32 %384, %380, !dbg !2878
  store i32 %385, i32* %383, align 4, !dbg !2878, !tbaa !585
  %386 = load i32, i32* %221, align 4, !dbg !2880, !tbaa !2585
  %387 = add nsw i32 %386, -1, !dbg !2880
  store i32 %387, i32* %221, align 4, !dbg !2880, !tbaa !2585
  br i1 %376, label %404, label %388, !dbg !2881

388:                                              ; preds = %375
  %389 = icmp eq i32 %387, 0, !dbg !2883
  br i1 %389, label %392, label %390, !dbg !2884

390:                                              ; preds = %388, %396, %400, %404, %213, %193, %192, %45, %35
  %391 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %190, %192 ], [ %190, %193 ], [ %214, %213 ], [ 0, %404 ], [ 0, %400 ], [ 0, %396 ], [ 0, %388 ]
  br label %10, !dbg !2563, !llvm.loop !2885

392:                                              ; preds = %388
  %393 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 0, i32 6, !dbg !2887
  %394 = load i32, i32* %393, align 4, !dbg !2887, !tbaa !2575
  %395 = icmp eq i32 %394, 0, !dbg !2888
  br i1 %395, label %400, label %396, !dbg !2889

396:                                              ; preds = %392
  %397 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 9, !dbg !2890
  %398 = load i32, i32* %397, align 4, !dbg !2890, !tbaa !2593
  %399 = icmp eq i32 %398, 0, !dbg !2891
  br i1 %399, label %390, label %400, !dbg !2892

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %220, i32 0, i32 11, !dbg !2893
  %402 = load i8, i8* %401, align 4, !dbg !2893, !tbaa !2714, !range !743
  %403 = icmp eq i8 %402, 0, !dbg !2893
  br i1 %403, label %390, label %404, !dbg !2894

404:                                              ; preds = %400, %375
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !2895
  br label %390, !dbg !2897

405:                                              ; preds = %15, %18
  ret void, !dbg !2898
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #2 !dbg !2899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2901, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2902, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %2, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %3, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %4, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %5, metadata !2906, metadata !DIExpression()), !dbg !2907
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !2908, !tbaa !1119
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !2908
  ret i32 %8, !dbg !2909
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #2 !dbg !2910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 %2, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %3, metadata !2915, metadata !DIExpression()), !dbg !2916
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !2917, !tbaa !1119
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #7, !dbg !2918
  ret i32 %6, !dbg !2919
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #2 !dbg !2920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()), !dbg !2923
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2924
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2925
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #6, !dbg !2926
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !2927
  ret void, !dbg !2928
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #2 !dbg !2929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2934, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2935, metadata !DIExpression()), !dbg !2946
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2947, !tbaa !2949, !range !743
  %5 = icmp eq i8 %4, 0, !dbg !2947
  br i1 %5, label %6, label %25, !dbg !2950

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2951, metadata !DIExpression()) #8, !dbg !2957
  %8 = load i8, i8* %7, align 1, !dbg !2960, !tbaa !496
  %9 = icmp eq i8 %8, 0, !dbg !2961
  br i1 %9, label %10, label %13, !dbg !2962

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %11, metadata !2951, metadata !DIExpression()) #8, !dbg !2957
  %12 = icmp ult i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2965
  br i1 %12, label %6, label %13, !dbg !2966, !llvm.loop !2967

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ %11, %10 ], !dbg !2957
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 1) to i8*), !dbg !2969
  br i1 %15, label %17, label %16, !dbg !2972

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !2973
  tail call void @abort() #7, !dbg !2973
  br label %17, !dbg !2973

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2975, !tbaa !2977
  %19 = icmp eq i32 %18, 0, !dbg !2978
  br i1 %19, label %20, label %22, !dbg !2979

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !2980
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2982, !tbaa !2977
  br label %22, !dbg !2983

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2984
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #6, !dbg !2985
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !2986, !tbaa !2977
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !2987, !tbaa !2949
  br label %25, !dbg !2988

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2936, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 -1, metadata !2937, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2938, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2939, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2940, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2941, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 undef, metadata !2940, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 undef, metadata !2939, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 undef, metadata !2938, metadata !DIExpression()), !dbg !2946
  %26 = icmp sgt i32 %0, 0, !dbg !2990
  br i1 %26, label %34, label %27, !dbg !2992

27:                                               ; preds = %61, %25
  %28 = phi i32 [ -1, %25 ], [ %62, %61 ], !dbg !2946
  %29 = phi i1 [ false, %25 ], [ %45, %61 ]
  %30 = phi i1 [ false, %25 ], [ %51, %61 ]
  %31 = phi i1 [ false, %25 ], [ %47, %61 ]
  %32 = phi i32 [ 0, %25 ], [ %44, %61 ], !dbg !2993
  %33 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2994
  br i1 %33, label %65, label %93, !dbg !2996

34:                                               ; preds = %25, %61
  %35 = phi i32 [ %44, %61 ], [ 0, %25 ]
  %36 = phi i32 [ %63, %61 ], [ 0, %25 ]
  %37 = phi i1 [ %47, %61 ], [ false, %25 ]
  %38 = phi i1 [ %51, %61 ], [ false, %25 ]
  %39 = phi i1 [ %45, %61 ], [ false, %25 ]
  %40 = phi i32 [ %62, %61 ], [ -1, %25 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !2936, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 %36, metadata !2941, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 %40, metadata !2937, metadata !DIExpression()), !dbg !2946
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 7, !dbg !2997
  %42 = load i32, i32* %41, align 4, !dbg !2997, !tbaa !2638
  %43 = icmp eq i32 %42, 0, !dbg !3000
  %44 = add i32 %42, %35, !dbg !3001
  %45 = or i1 %39, %43, !dbg !3001
  %46 = xor i1 %43, true, !dbg !3001
  %47 = or i1 %37, %46, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %44, metadata !2936, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 undef, metadata !2940, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 undef, metadata !2938, metadata !DIExpression()), !dbg !2946
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 4, !dbg !3002
  %49 = load i32, i32* %48, align 4, !dbg !3002, !tbaa !2673
  %50 = icmp ne i32 %49, 0, !dbg !3004
  %51 = or i1 %38, %50, !dbg !3005
  call void @llvm.dbg.value(metadata i8 undef, metadata !2939, metadata !DIExpression()), !dbg !2946
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 8, !dbg !3006
  %53 = load i8, i8* %52, align 4, !dbg !3006, !tbaa !2655, !range !743
  %54 = icmp eq i8 %53, 0, !dbg !3006
  br i1 %54, label %57, label %55, !dbg !3008

55:                                               ; preds = %34
  %56 = add nsw i32 %40, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i32 %56, metadata !2937, metadata !DIExpression()), !dbg !2946
  br label %61, !dbg !3011

57:                                               ; preds = %34
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %36, i32 0, i32 6, !dbg !3012
  %59 = load i32, i32* %58, align 4, !dbg !3012, !tbaa !2575
  %60 = add nsw i32 %59, %40, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %60, metadata !2937, metadata !DIExpression()), !dbg !2946
  br label %61

61:                                               ; preds = %55, %57
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ], !dbg !3015
  call void @llvm.dbg.value(metadata i32 %62, metadata !2937, metadata !DIExpression()), !dbg !2946
  %63 = add nuw nsw i32 %36, 1, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %44, metadata !2936, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 %63, metadata !2941, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i8 undef, metadata !2940, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 undef, metadata !2939, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 undef, metadata !2938, metadata !DIExpression()), !dbg !2946
  %64 = icmp slt i32 %63, %0, !dbg !2990
  br i1 %64, label %34, label %27, !dbg !2992, !llvm.loop !3017

65:                                               ; preds = %27
  %66 = or i1 %30, %31, !dbg !3019
  %67 = zext i1 %66 to i32, !dbg !3019
  %68 = add nsw i32 %32, %67, !dbg !3019
  call void @llvm.dbg.value(metadata i32 %68, metadata !2936, metadata !DIExpression()), !dbg !2946
  %69 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3022, !tbaa !2648
  %70 = icmp slt i32 %69, 256, !dbg !3023
  br i1 %70, label %71, label %89, !dbg !3024

71:                                               ; preds = %65, %81
  %72 = phi i32 [ %86, %81 ], [ %69, %65 ]
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3025, !tbaa !2977
  %74 = add nsw i32 %73, -1, !dbg !3026
  %75 = icmp slt i32 %72, %74, !dbg !3027
  br i1 %75, label %81, label %76, !dbg !3028

76:                                               ; preds = %71
  %77 = add nsw i32 %72, 1, !dbg !3029
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !3030, !tbaa !3031
  %79 = sub i32 %77, %78, !dbg !3032
  %80 = icmp slt i32 %79, %68, !dbg !3033
  br i1 %80, label %81, label %89, !dbg !3034

81:                                               ; preds = %71, %76
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !3035, !tbaa !2723
  %83 = add nsw i32 %82, 1, !dbg !3035
  store i32 %83, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !3035, !tbaa !2723
  %84 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #6, !dbg !3037
  %85 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3038, !tbaa !2648
  %86 = add nsw i32 %85, 1, !dbg !3038
  store i32 %86, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3038, !tbaa !2648
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %85, !dbg !3039
  store %struct.halide_thread* %84, %struct.halide_thread** %87, align 4, !dbg !3040, !tbaa !1119
  %88 = icmp slt i32 %85, 255, !dbg !3023
  br i1 %88, label %71, label %89, !dbg !3024, !llvm.loop !3041

89:                                               ; preds = %76, %81, %65
  br i1 %66, label %90, label %109, !dbg !3043

90:                                               ; preds = %89
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !3045, !tbaa !3031
  %92 = add nsw i32 %91, 1, !dbg !3045
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), align 4, !dbg !3045, !tbaa !3031
  br label %109, !dbg !3047

93:                                               ; preds = %27
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7, !dbg !3048
  %95 = load i32, i32* %94, align 4, !dbg !3048, !tbaa !2638
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8, !dbg !3048
  %97 = load i32, i32* %96, align 4, !dbg !3048, !tbaa !2585
  %98 = mul nsw i32 %97, %95, !dbg !3048
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !3048
  %100 = load i32, i32* %99, align 4, !dbg !3048, !tbaa !3052
  %101 = sub nsw i32 %98, %100, !dbg !3048
  %102 = icmp sgt i32 %32, %101, !dbg !3048
  br i1 %102, label %103, label %104, !dbg !3053

103:                                              ; preds = %93
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !3054
  tail call void @abort() #7, !dbg !3054
  br label %104, !dbg !3054

104:                                              ; preds = %103, %93
  %105 = or i1 %30, %31, !dbg !3056
  br i1 %105, label %106, label %109, !dbg !3056

106:                                              ; preds = %104
  %107 = load i32, i32* %99, align 4, !dbg !3058, !tbaa !3052
  %108 = add nsw i32 %107, 1, !dbg !3058
  store i32 %108, i32* %99, align 4, !dbg !3058, !tbaa !3052
  br label %109, !dbg !3060

109:                                              ; preds = %104, %89, %106, %90
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3061
  br i1 %26, label %110, label %113, !dbg !3062

110:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3061
  %111 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !tbaa !2587
  br label %126, !dbg !3062

112:                                              ; preds = %126
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 3), align 4, !dbg !3063, !tbaa !2587
  br label %113, !dbg !3062

113:                                              ; preds = %112, %109
  %114 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 11), align 4, !dbg !3066, !tbaa !2712
  %115 = icmp ne i32 %114, 0, !dbg !3067
  %116 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 10), align 4, !dbg !3068
  %117 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3068
  %118 = icmp slt i32 %116, %117, !dbg !3068
  %119 = or i1 %115, %118, !dbg !3068
  call void @llvm.dbg.value(metadata i1 %119, metadata !2945, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2946
  %120 = icmp sgt i32 %28, %116
  %121 = or i1 %120, %119, !dbg !3069
  %122 = select i1 %121, i32 %117, i32 %28, !dbg !3069
  store i32 %122, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !3071, !tbaa !2725
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #6, !dbg !3072
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 6), align 4, !dbg !3073, !tbaa !2725
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 5), align 4, !dbg !3075, !tbaa !2723
  %125 = icmp sgt i32 %123, %124, !dbg !3076
  br i1 %125, label %136, label %138, !dbg !3077

126:                                              ; preds = %110, %126
  %127 = phi %"struct.Halide::Runtime::Internal::work"* [ %111, %110 ], [ %130, %126 ], !dbg !3078
  %128 = phi i32 [ %0, %110 ], [ %129, %126 ]
  %129 = add nsw i32 %128, -1, !dbg !3061
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, !dbg !3079
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 2, !dbg !3080
  store %"struct.Halide::Runtime::Internal::work"* %127, %"struct.Halide::Runtime::Internal::work"** %131, align 4, !dbg !3081, !tbaa !2607
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 3, !dbg !3082
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %132, align 4, !dbg !3083, !tbaa !2693
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 4, !dbg !3084
  store i32 %0, i32* %133, align 4, !dbg !3085, !tbaa !2853
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %129, i32 6, !dbg !3086
  store i32 0, i32* %134, align 4, !dbg !3087, !tbaa !3052
  call void @llvm.dbg.value(metadata i32 %129, metadata !2943, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3061
  %135 = icmp sgt i32 %128, 1, !dbg !3088
  br i1 %135, label %126, label %112, !dbg !3062, !llvm.loop !3089

136:                                              ; preds = %113
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #6, !dbg !3091
  br i1 %29, label %137, label %138, !dbg !3093

137:                                              ; preds = %136
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !3094
  br label %138, !dbg !3097

138:                                              ; preds = %136, %137, %113
  %139 = or i1 %30, %31, !dbg !3098
  br i1 %139, label %140, label %145, !dbg !3098

140:                                              ; preds = %138
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !3100
  %142 = select i1 %33, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 15), i32* %141, !dbg !3100
  %143 = load i32, i32* %142, align 4, !dbg !3102, !tbaa !585
  %144 = add nsw i32 %143, -1, !dbg !3102
  store i32 %144, i32* %142, align 4, !dbg !3102, !tbaa !585
  br label %145, !dbg !3104

145:                                              ; preds = %140, %138
  ret void, !dbg !3104
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #2 !dbg !3105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3107, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3108, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 %2, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8* %3, metadata !3110, metadata !DIExpression()), !dbg !3111
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #7, !dbg !3112
  ret i32 %5, !dbg !3113
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #2 !dbg !3114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3116, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !3117, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %2, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i32 %3, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %4, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %5, metadata !3121, metadata !DIExpression()), !dbg !3122
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !3123
  ret i32 %7, !dbg !3124
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #2 !dbg !3125 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3127, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3128, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %2, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %3, metadata !3130, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8* %4, metadata !3131, metadata !DIExpression()), !dbg !3133
  %7 = icmp slt i32 %3, 1, !dbg !3134
  br i1 %7, label %29, label %8, !dbg !3136

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #8, !dbg !3137
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3132, metadata !DIExpression()), !dbg !3138
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0, !dbg !3139
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !dbg !3140, !tbaa !2791
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5, !dbg !3141
  store i32 %2, i32* %11, align 4, !dbg !3142, !tbaa !2793
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6, !dbg !3143
  store i32 %3, i32* %12, align 4, !dbg !3144, !tbaa !2575
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8, !dbg !3145
  store i8 0, i8* %13, align 4, !dbg !3146, !tbaa !2655
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3, !dbg !3147
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !dbg !3148, !tbaa !2679
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4, !dbg !3149
  store i32 0, i32* %15, align 4, !dbg !3150, !tbaa !2673
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1, !dbg !3151
  store i8* %4, i8** %16, align 4, !dbg !3152, !tbaa !2796
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7, !dbg !3153
  store i32 0, i32* %17, align 4, !dbg !3154, !tbaa !2638
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2, !dbg !3155
  store i8* null, i8** %18, align 4, !dbg !3156, !tbaa !3157
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1, !dbg !3158
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !dbg !3159, !tbaa !3160
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7, !dbg !3161
  store i8* %0, i8** %20, align 4, !dbg !3162, !tbaa !2789
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9, !dbg !3163
  store i32 0, i32* %21, align 4, !dbg !3164, !tbaa !2593
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8, !dbg !3165
  store i32 0, i32* %22, align 4, !dbg !3166, !tbaa !2585
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10, !dbg !3167
  store i32 0, i32* %23, align 4, !dbg !3168, !tbaa !2671
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11, !dbg !3169
  store i8 0, i8* %24, align 4, !dbg !3170, !tbaa !2714
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3, !dbg !3171
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !dbg !3172, !tbaa !2693
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4, !dbg !3173
  store i32 0, i32* %26, align 4, !dbg !3174, !tbaa !2853
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5, !dbg !3175
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !dbg !3176, !tbaa !2616
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3177
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #6, !dbg !3178
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #6, !dbg !3179
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3180
  %28 = load i32, i32* %21, align 4, !dbg !3181, !tbaa !2593
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #8, !dbg !3182
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !3133
  ret i32 %30, !dbg !3182
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #2 !dbg !3183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %1, metadata !3186, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3187, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %3, metadata !3188, metadata !DIExpression()), !dbg !3195
  %5 = mul i32 %1, 80, !dbg !3196
  %6 = alloca i8, i32 %5, align 8, !dbg !3197
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3198
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %7, metadata !3189, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %1, metadata !3186, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3187, metadata !DIExpression()), !dbg !3195
  %8 = icmp sgt i32 %1, 0, !dbg !3200
  br i1 %8, label %12, label %9, !dbg !3202

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %36, %34 ]
  %11 = icmp eq i32 %10, 0, !dbg !3203
  br i1 %11, label %54, label %39, !dbg !3205

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi i32 [ %36, %34 ], [ %1, %4 ]
  %15 = phi %struct.halide_parallel_task_t* [ %35, %34 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %14, metadata !3186, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %15, metadata !3187, metadata !DIExpression()), !dbg !3195
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 0, i32 6, !dbg !3206
  %17 = load i32, i32* %16, align 4, !dbg !3206, !tbaa !3209
  %18 = icmp slt i32 %17, 1, !dbg !3210
  br i1 %18, label %19, label %21, !dbg !3211

19:                                               ; preds = %12
  %20 = add nsw i32 %14, -1, !dbg !3212
  call void @llvm.dbg.value(metadata i32 %20, metadata !3186, metadata !DIExpression()), !dbg !3195
  br label %34, !dbg !3214

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %15, i32 1, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %22, metadata !3187, metadata !DIExpression()), !dbg !3195
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, !dbg !3216
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*, !dbg !3217
  %25 = bitcast %struct.halide_parallel_task_t* %15 to i8*, !dbg !3217
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !dbg !3217, !tbaa.struct !3218
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1, !dbg !3219
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !dbg !3220, !tbaa !3160
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7, !dbg !3221
  store i8* %0, i8** %27, align 4, !dbg !3222, !tbaa !2789
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9, !dbg !3223
  store i32 0, i32* %28, align 4, !dbg !3224, !tbaa !2593
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8, !dbg !3225
  store i32 0, i32* %29, align 8, !dbg !3226, !tbaa !2585
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10, !dbg !3227
  store i32 0, i32* %30, align 8, !dbg !3228, !tbaa !2671
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11, !dbg !3229
  store i8 0, i8* %31, align 4, !dbg !3230, !tbaa !2714
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5, !dbg !3231
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**, !dbg !3232
  store i8* %3, i8** %33, align 4, !dbg !3232, !tbaa !2616
  br label %34, !dbg !3233

34:                                               ; preds = %21, %19
  %35 = phi %struct.halide_parallel_task_t* [ %15, %19 ], [ %22, %21 ]
  %36 = phi i32 [ %20, %19 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !3186, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %35, metadata !3187, metadata !DIExpression()), !dbg !3195
  %37 = add nuw nsw i32 %13, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %37, metadata !3190, metadata !DIExpression()), !dbg !3199
  %38 = icmp slt i32 %37, %36, !dbg !3200
  br i1 %38, label %12, label %9, !dbg !3202, !llvm.loop !3235

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3237
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3238
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #6, !dbg !3239
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32 0, metadata !3193, metadata !DIExpression()), !dbg !3240
  %41 = icmp sgt i32 %10, 0, !dbg !3241
  br i1 %41, label %44, label %42, !dbg !3243

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ], !dbg !3195
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3244
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !3193, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 %46, metadata !3192, metadata !DIExpression()), !dbg !3195
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, !dbg !3245
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #6, !dbg !3247
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9, !dbg !3248
  %49 = load i32, i32* %48, align 4, !dbg !3248, !tbaa !2593
  %50 = icmp eq i32 %49, 0, !dbg !3250
  %51 = select i1 %50, i32 %46, i32 %49, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %51, metadata !3192, metadata !DIExpression()), !dbg !3195
  %52 = add nuw nsw i32 %45, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %52, metadata !3193, metadata !DIExpression()), !dbg !3240
  %53 = icmp slt i32 %52, %10, !dbg !3241
  br i1 %53, label %44, label %42, !dbg !3243, !llvm.loop !3253

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ], !dbg !3195
  ret i32 %55, !dbg !3255
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3256 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3258, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i32 %1, metadata !3259, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3260, metadata !DIExpression()), !dbg !3261
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3262
  call void @llvm.dbg.value(metadata i32* %3, metadata !3263, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32* undef, metadata !3268, metadata !DIExpression()), !dbg !3271
  store i32 %1, i32* %3, align 4, !dbg !3273, !tbaa !585
  fence seq_cst, !dbg !3274
  call void @llvm.dbg.value(metadata i32 %1, metadata !3259, metadata !DIExpression()), !dbg !3261
  ret i32 %1, !dbg !3275
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3276 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3278, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %1, metadata !3279, metadata !DIExpression()), !dbg !3283
  %3 = icmp eq i32 %1, 0, !dbg !3284
  br i1 %3, label %15, label %4, !dbg !3286

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3280, metadata !DIExpression()), !dbg !3283
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3287
  call void @llvm.dbg.value(metadata i32* %5, metadata !3288, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32* undef, metadata !3291, metadata !DIExpression()), !dbg !3292
  fence seq_cst, !dbg !3294
  %6 = load i32, i32* %5, align 4, !dbg !3295, !tbaa !585
  br label %7, !dbg !3296

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ], !dbg !3283
  call void @llvm.dbg.value(metadata i32 %8, metadata !3281, metadata !DIExpression()), !dbg !3283
  %9 = sub nsw i32 %8, %1, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %9, metadata !3282, metadata !DIExpression()), !dbg !3283
  %10 = icmp sgt i32 %9, -1, !dbg !3299
  br i1 %10, label %11, label %15, !dbg !3300

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* %5, metadata !3301, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32* undef, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32* undef, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32* %5, metadata !3310, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32* undef, metadata !3313, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32* undef, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %8, metadata !3315, metadata !DIExpression()), !dbg !3317
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst, !dbg !3319
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %13, metadata !3316, metadata !DIExpression()), !dbg !3317
  %14 = icmp eq i32 %8, %13, !dbg !3320
  br i1 %14, label %15, label %7, !dbg !3321, !llvm.loop !3322

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ], !dbg !3283
  ret i1 %16, !dbg !3324
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3325 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3327, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %1, metadata !3328, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3329, metadata !DIExpression()), !dbg !3331
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3332
  call void @llvm.dbg.value(metadata i32* %3, metadata !3333, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %1, metadata !3338, metadata !DIExpression()), !dbg !3339
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %4, metadata !3330, metadata !DIExpression()), !dbg !3331
  %5 = icmp eq i32 %4, 0, !dbg !3342
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3344
  br i1 %7, label %8, label %9, !dbg !3344

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3345
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #6, !dbg !3347
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !3348
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3349
  br label %9, !dbg !3350

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3351
  ret i32 %10, !dbg !3352
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #2 !dbg !3353 {
  tail call void @halide_shutdown_thread_pool() #6, !dbg !3354
  ret void, !dbg !3355
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #2 !dbg !3356 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 14), align 1, !dbg !3362, !tbaa !2949, !range !743
  %2 = icmp eq i8 %1, 0, !dbg !3362
  br i1 %2, label %15, label %3, !dbg !3363

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3364
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 13), align 4, !dbg !3365, !tbaa !2581
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 9)) #6, !dbg !3366
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 7)) #6, !dbg !3367
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 8)) #6, !dbg !3368
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3369
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3370
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3371, !tbaa !2648
  %5 = icmp sgt i32 %4, 0, !dbg !3373
  br i1 %5, label %8, label %6, !dbg !3374

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3375, metadata !DIExpression()) #8, !dbg !3381
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), metadata !3378, metadata !DIExpression()) #8, !dbg !3381
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3379, metadata !DIExpression(DW_OP_plus_uconst, 1080, DW_OP_stack_value)) #8, !dbg !3381
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 2) to i8*), i32 0, i32 1072) #7, !dbg !3383
  br label %15, !dbg !3384

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3358, metadata !DIExpression()), !dbg !3370
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 12, i32 %9, !dbg !3385
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !dbg !3385, !tbaa !1119
  tail call void @halide_join_thread(%struct.halide_thread* %11) #6, !dbg !3387
  %12 = add nuw nsw i32 %9, 1, !dbg !3388
  call void @llvm.dbg.value(metadata i32 %12, metadata !3358, metadata !DIExpression()), !dbg !3370
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 4), align 4, !dbg !3371, !tbaa !2648
  %14 = icmp slt i32 %12, %13, !dbg !3373
  br i1 %14, label %8, label %6, !dbg !3374, !llvm.loop !3389

15:                                               ; preds = %6, %0
  ret void, !dbg !3391
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #2 !dbg !3392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3394, metadata !DIExpression()), !dbg !3396
  %2 = icmp slt i32 %0, 0, !dbg !3397
  br i1 %2, label %3, label %4, !dbg !3399

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !3400
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3402
  br label %8, !dbg !3403

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3402
  %5 = icmp eq i32 %0, 0, !dbg !3404
  br i1 %5, label %6, label %8, !dbg !3403

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %7, metadata !3394, metadata !DIExpression()), !dbg !3396
  br label %8, !dbg !3408

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3394, metadata !DIExpression()), !dbg !3396
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3409, !tbaa !2977
  call void @llvm.dbg.value(metadata i32 %10, metadata !3395, metadata !DIExpression()), !dbg !3396
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #6, !dbg !3410
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 1), align 4, !dbg !3411, !tbaa !2977
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i32 0, i32 0)) #6, !dbg !3412
  ret i32 %10, !dbg !3413
}

declare !dbg !3414 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3415 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3419, metadata !DIExpression()), !dbg !3421
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3422, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3420, metadata !DIExpression()), !dbg !3421
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3423, !tbaa !1119
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3424
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #0 !dbg !3425 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3429, metadata !DIExpression()), !dbg !3431
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3432, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3430, metadata !DIExpression()), !dbg !3431
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3433, !tbaa !1119
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3434
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3435 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3439, metadata !DIExpression()), !dbg !3441
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3442, !tbaa !1119
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3440, metadata !DIExpression()), !dbg !3441
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3443, !tbaa !1119
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3444
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #0 !dbg !3445 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3449, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3450, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3451, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3452, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3455, metadata !DIExpression()), !dbg !3456
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3457, !tbaa !1119
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 4, !dbg !3458, !tbaa !1119
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 4, !dbg !3459, !tbaa !1119
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3460, !tbaa !1119
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3461, !tbaa !1119
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3462, !tbaa !1119
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3463, !tbaa !1119
  ret void, !dbg !3464
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #2 !dbg !3465 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3467, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %2, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %3, metadata !3470, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i8* %4, metadata !3471, metadata !DIExpression()), !dbg !3472
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 4, !dbg !3473, !tbaa !1119
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #7, !dbg !3474
  ret i32 %7, !dbg !3475
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #2 !dbg !3476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 %1, metadata !3479, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3480, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()), !dbg !3482
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 4, !dbg !3483, !tbaa !1119
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #7, !dbg !3483
  ret i32 %6, !dbg !3484
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3485 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 4, !dbg !3490, !tbaa !1119
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3490
  ret i32 %4, !dbg !3491
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3492 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3494, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 %1, metadata !3495, metadata !DIExpression()), !dbg !3496
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 4, !dbg !3497, !tbaa !1119
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3497
  ret i32 %4, !dbg !3498
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3499 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3501, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 %1, metadata !3502, metadata !DIExpression()), !dbg !3503
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 4, !dbg !3504, !tbaa !1119
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3504
  ret i1 %4, !dbg !3505
}

declare !dbg !3506 dso_local void @qurt_mutex_init(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3510 dso_local void @qurt_cond_init(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3514 dso_local void @qurt_mutex_lock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3515 dso_local void @qurt_cond_wait(%union.qurt_cond_t*, %union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3518 dso_local void @qurt_mutex_unlock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3519 dso_local void @qurt_cond_destroy(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3520 dso_local void @qurt_mutex_destroy(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3521 dso_local void @qurt_cond_signal(%union.qurt_cond_t*) local_unnamed_addr #4

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
!310 = !{!0, !311, !314, !316, !321, !323, !361, !367, !373, !379, !386, !392, !398, !401}
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
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!402 = distinct !DIGlobalVariable(name: "__tsan_mutex_linker_init", scope: !2, file: !31, line: 37, type: !403, isLocal: true, isDefinition: true)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!404 = !{!405, !406, !408}
!405 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !33, file: !27, line: 225)
!406 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !407, file: !8, line: 7)
!407 = !DINamespace(name: "Qurt", scope: !33)
!408 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !33, file: !250, line: 579)
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
!431 = !DILocation(line: 45, column: 41, scope: !419)
!432 = !{!433, !433, i64 0}
!433 = !{!"short", !434, i64 0}
!434 = !{!"omnipotent char", !435, i64 0}
!435 = !{!"Simple C++ TBAA"}
!436 = !DILocation(line: 46, column: 1, scope: !419)
!437 = distinct !DISubprogram(name: "halide_get_default_thread_priority", scope: !8, file: !8, line: 48, type: !438, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!438 = !DISubroutineType(types: !439)
!439 = !{!409}
!440 = !DILocation(line: 49, column: 12, scope: !437)
!441 = !DILocation(line: 49, column: 5, scope: !437)
!442 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !8, file: !8, line: 52, type: !443, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!25, !12, !15}
!445 = !{!446, !447, !448, !449, !450}
!446 = !DILocalVariable(name: "f", arg: 1, scope: !442, file: !8, line: 52, type: !12)
!447 = !DILocalVariable(name: "closure", arg: 2, scope: !442, file: !8, line: 52, type: !15)
!448 = !DILocalVariable(name: "priority", scope: !442, file: !8, line: 53, type: !409)
!449 = !DILocalVariable(name: "t", scope: !442, file: !8, line: 54, type: !6)
!450 = !DILocalVariable(name: "thread_attr", scope: !442, file: !8, line: 59, type: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_thread_attr_t", file: !23, line: 67, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_qurt_thread_attr", file: !23, line: 52, size: 256, flags: DIFlagTypePassByValue, elements: !453, identifier: "_ZTS17_qurt_thread_attr")
!453 = !{!454, !458, !459, !460, !461, !462, !463, !464, !465}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !23, line: 54, baseType: !455, size: 128)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tcb_partition", scope: !452, file: !23, line: 55, baseType: !262, size: 8, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !452, file: !23, line: 57, baseType: !262, size: 8, offset: 136)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !452, file: !23, line: 59, baseType: !410, size: 16, offset: 144)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "asid", scope: !452, file: !23, line: 60, baseType: !262, size: 8, offset: 160)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_priority", scope: !452, file: !23, line: 61, baseType: !262, size: 8, offset: 168)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "timetest_id", scope: !452, file: !23, line: 62, baseType: !410, size: 16, offset: 176)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !452, file: !23, line: 63, baseType: !24, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "stack_addr", scope: !452, file: !23, line: 64, baseType: !15, size: 32, offset: 224)
!466 = !DILocation(line: 0, scope: !442)
!467 = !DILocation(line: 53, column: 25, scope: !442)
!468 = !DILocation(line: 54, column: 43, scope: !442)
!469 = !DILocation(line: 55, column: 8, scope: !442)
!470 = !DILocation(line: 55, column: 10, scope: !442)
!471 = !{!472, !473, i64 0}
!472 = !{!"_ZTSN12_GLOBAL__N_114spawned_threadE", !473, i64 0, !473, i64 4, !473, i64 8, !474, i64 12}
!473 = !{!"any pointer", !434, i64 0}
!474 = !{!"_ZTS13halide_thread", !475, i64 0}
!475 = !{!"int", !434, i64 0}
!476 = !DILocation(line: 56, column: 8, scope: !442)
!477 = !DILocation(line: 56, column: 16, scope: !442)
!478 = !{!472, !473, i64 4}
!479 = !DILocation(line: 57, column: 16, scope: !442)
!480 = !DILocation(line: 57, column: 8, scope: !442)
!481 = !DILocation(line: 57, column: 14, scope: !442)
!482 = !{!472, !473, i64 8}
!483 = !DILocation(line: 58, column: 16, scope: !442)
!484 = !DILocation(line: 58, column: 5, scope: !442)
!485 = !DILocation(line: 59, column: 5, scope: !442)
!486 = !DILocation(line: 59, column: 24, scope: !442)
!487 = !DILocalVariable(name: "attr", arg: 1, scope: !488, file: !23, line: 96, type: !491)
!488 = distinct !DISubprogram(name: "qurt_thread_attr_init", linkageName: "_ZL21qurt_thread_attr_initP17_qurt_thread_attr", scope: !23, file: !23, line: 96, type: !489, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 32)
!492 = !{!487}
!493 = !DILocation(line: 0, scope: !488, inlinedAt: !494)
!494 = distinct !DILocation(line: 60, column: 5, scope: !442)
!495 = !DILocation(line: 98, column: 19, scope: !488, inlinedAt: !494)
!496 = !{!434, !434, i64 0}
!497 = !DILocation(line: 99, column: 11, scope: !488, inlinedAt: !494)
!498 = !DILocation(line: 99, column: 25, scope: !488, inlinedAt: !494)
!499 = !{!500, !434, i64 16}
!500 = !{!"_ZTS17_qurt_thread_attr", !434, i64 0, !434, i64 16, !434, i64 17, !433, i64 18, !434, i64 20, !434, i64 21, !433, i64 22, !475, i64 24, !473, i64 28}
!501 = !DILocation(line: 100, column: 11, scope: !488, inlinedAt: !494)
!502 = !DILocation(line: 101, column: 11, scope: !488, inlinedAt: !494)
!503 = !DILocation(line: 101, column: 16, scope: !488, inlinedAt: !494)
!504 = !{!500, !434, i64 20}
!505 = !DILocation(line: 102, column: 11, scope: !488, inlinedAt: !494)
!506 = !DILocation(line: 102, column: 20, scope: !488, inlinedAt: !494)
!507 = !{!500, !434, i64 17}
!508 = !DILocation(line: 103, column: 11, scope: !488, inlinedAt: !494)
!509 = !DILocation(line: 103, column: 24, scope: !488, inlinedAt: !494)
!510 = !{!500, !434, i64 21}
!511 = !DILocation(line: 104, column: 11, scope: !488, inlinedAt: !494)
!512 = !DILocation(line: 104, column: 23, scope: !488, inlinedAt: !494)
!513 = !{!500, !433, i64 22}
!514 = !DILocation(line: 105, column: 11, scope: !488, inlinedAt: !494)
!515 = !DILocation(line: 106, column: 11, scope: !488, inlinedAt: !494)
!516 = !DILocation(line: 61, column: 54, scope: !442)
!517 = !DILocalVariable(name: "attr", arg: 1, scope: !518, file: !23, line: 152, type: !491)
!518 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_addr", linkageName: "_ZL31qurt_thread_attr_set_stack_addrP17_qurt_thread_attrPv", scope: !23, file: !23, line: 152, type: !519, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !491, !15}
!521 = !{!517, !522}
!522 = !DILocalVariable(name: "stack_addr", arg: 2, scope: !518, file: !23, line: 152, type: !15)
!523 = !DILocation(line: 0, scope: !518, inlinedAt: !524)
!524 = distinct !DILocation(line: 61, column: 5, scope: !442)
!525 = !DILocation(line: 153, column: 22, scope: !518, inlinedAt: !524)
!526 = !{!500, !473, i64 28}
!527 = !DILocalVariable(name: "attr", arg: 1, scope: !528, file: !23, line: 127, type: !491)
!528 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_size", linkageName: "_ZL31qurt_thread_attr_set_stack_sizeP17_qurt_thread_attrj", scope: !23, file: !23, line: 127, type: !529, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !531)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !491, !24}
!531 = !{!527, !532}
!532 = !DILocalVariable(name: "stack_size", arg: 2, scope: !528, file: !23, line: 127, type: !24)
!533 = !DILocation(line: 0, scope: !528, inlinedAt: !534)
!534 = distinct !DILocation(line: 62, column: 5, scope: !442)
!535 = !DILocation(line: 128, column: 22, scope: !528, inlinedAt: !534)
!536 = !{!500, !475, i64 24}
!537 = !DILocalVariable(name: "attr", arg: 1, scope: !538, file: !23, line: 170, type: !491)
!538 = distinct !DISubprogram(name: "qurt_thread_attr_set_priority", linkageName: "_ZL29qurt_thread_attr_set_priorityP17_qurt_thread_attrt", scope: !23, file: !23, line: 170, type: !539, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !491, !410}
!541 = !{!537, !542}
!542 = !DILocalVariable(name: "priority", arg: 2, scope: !538, file: !23, line: 170, type: !410)
!543 = !DILocation(line: 0, scope: !538, inlinedAt: !544)
!544 = distinct !DILocation(line: 63, column: 5, scope: !442)
!545 = !DILocation(line: 171, column: 20, scope: !538, inlinedAt: !544)
!546 = !{!500, !433, i64 18}
!547 = !DILocation(line: 64, column: 35, scope: !442)
!548 = !DILocation(line: 64, column: 5, scope: !442)
!549 = !DILocation(line: 65, column: 12, scope: !442)
!550 = !DILocation(line: 66, column: 1, scope: !442)
!551 = !DILocation(line: 65, column: 5, scope: !442)
!552 = !DISubprogram(name: "malloc", scope: !27, file: !27, line: 87, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!553 = !DISubroutineType(types: !554)
!554 = !{!15, !24}
!555 = !DISubprogram(name: "memalign", scope: !8, file: !8, line: 28, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!556 = !DISubroutineType(types: !557)
!557 = !{!15, !24, !24}
!558 = !DISubprogram(name: "memset", scope: !27, file: !27, line: 96, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!559 = !DISubroutineType(types: !560)
!560 = !{!15, !15, !161, !24}
!561 = !DISubprogram(name: "qurt_thread_create", scope: !23, file: !23, line: 175, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!562 = !DISubroutineType(types: !563)
!563 = !{!161, !564, !565, !12, !15}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!566 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN12_GLOBAL__N_119spawn_thread_helperEPv", scope: !9, file: !8, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !567)
!567 = !{!568, !569}
!568 = !DILocalVariable(name: "arg", arg: 1, scope: !566, file: !8, line: 20, type: !15)
!569 = !DILocalVariable(name: "t", scope: !566, file: !8, line: 21, type: !6)
!570 = !DILocation(line: 0, scope: !566)
!571 = !DILocation(line: 22, column: 8, scope: !566)
!572 = !DILocation(line: 22, column: 13, scope: !566)
!573 = !DILocation(line: 22, column: 5, scope: !566)
!574 = !DILocation(line: 23, column: 1, scope: !566)
!575 = distinct !DISubprogram(name: "halide_join_thread", scope: !8, file: !8, line: 68, type: !576, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !25}
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !575, file: !8, line: 68, type: !25)
!580 = !DILocalVariable(name: "t", scope: !575, file: !8, line: 69, type: !6)
!581 = !DILocalVariable(name: "ret", scope: !575, file: !8, line: 70, type: !161)
!582 = !DILocation(line: 0, scope: !575)
!583 = !DILocation(line: 70, column: 5, scope: !575)
!584 = !DILocation(line: 70, column: 9, scope: !575)
!585 = !{!475, !475, i64 0}
!586 = !DILocation(line: 71, column: 32, scope: !575)
!587 = !{!472, !475, i64 12}
!588 = !DILocation(line: 71, column: 5, scope: !575)
!589 = !DILocation(line: 72, column: 13, scope: !575)
!590 = !DILocation(line: 72, column: 5, scope: !575)
!591 = !DILocation(line: 73, column: 10, scope: !575)
!592 = !DILocation(line: 73, column: 5, scope: !575)
!593 = !DILocation(line: 74, column: 1, scope: !575)
!594 = !DISubprogram(name: "qurt_thread_join", scope: !23, file: !23, line: 194, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!595 = !DISubroutineType(types: !596)
!596 = !{!161, !24, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!598 = !DISubprogram(name: "free", scope: !27, file: !27, line: 86, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!599 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !109, file: !31, line: 321, type: !113, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !112, retainedNodes: !600)
!600 = !{!601, !603, !615, !616, !620, !621, !622}
!601 = !DILocalVariable(name: "this", arg: 1, scope: !599, type: !602, flags: DIFlagArtificial | DIFlagObjectPointer)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!603 = !DILocalVariable(name: "spinner", scope: !599, file: !31, line: 322, type: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !32, file: !31, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !605, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!605 = !{!606, !607, !611, !614}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !604, file: !31, line: 231, baseType: !161, size: 32)
!607 = !DISubprogram(name: "spin_control", scope: !604, file: !31, line: 235, type: !608, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!611 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !604, file: !31, line: 237, type: !612, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubroutineType(types: !613)
!613 = !{!66, !610}
!614 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !604, file: !31, line: 244, type: !608, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DILocalVariable(name: "expected", scope: !599, file: !31, line: 323, type: !26)
!616 = !DILocalVariable(name: "desired", scope: !617, file: !31, line: 328, type: !26)
!617 = distinct !DILexicalBlock(scope: !618, file: !31, line: 327, column: 37)
!618 = distinct !DILexicalBlock(scope: !619, file: !31, line: 327, column: 13)
!619 = distinct !DILexicalBlock(scope: !599, file: !31, line: 326, column: 18)
!620 = !DILocalVariable(name: "node", scope: !619, file: !31, line: 342, type: !30)
!621 = !DILocalVariable(name: "head", scope: !619, file: !31, line: 347, type: !29)
!622 = !DILocalVariable(name: "desired", scope: !619, file: !31, line: 359, type: !26)
!623 = !DILocation(line: 0, scope: !599)
!624 = !DILocation(line: 324, column: 26, scope: !599)
!625 = !DILocation(line: 324, column: 5, scope: !599)
!626 = !DILocation(line: 326, column: 5, scope: !599)
!627 = !DILocation(line: 327, column: 13, scope: !619)
!628 = !DILocation(line: 327, column: 24, scope: !618)
!629 = !DILocation(line: 327, column: 14, scope: !618)
!630 = !DILocation(line: 328, column: 42, scope: !617)
!631 = !DILocation(line: 0, scope: !617)
!632 = !DILocalVariable(name: "addr", arg: 1, scope: !633, file: !31, line: 126, type: !173)
!633 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPjS4_S4_", scope: !634, file: !31, line: 126, type: !635, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!634 = !DINamespace(scope: !32)
!635 = !DISubroutineType(types: !636)
!636 = !{!66, !173, !173, !173}
!637 = !{!632, !638, !639}
!638 = !DILocalVariable(name: "expected", arg: 2, scope: !633, file: !31, line: 126, type: !173)
!639 = !DILocalVariable(name: "desired", arg: 3, scope: !633, file: !31, line: 126, type: !173)
!640 = !DILocation(line: 0, scope: !633, inlinedAt: !641)
!641 = distinct !DILocation(line: 330, column: 17, scope: !642)
!642 = distinct !DILexicalBlock(scope: !617, file: !31, line: 330, column: 17)
!643 = !DILocalVariable(name: "addr", arg: 1, scope: !644, file: !31, line: 102, type: !564)
!644 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIjEEbPT_S6_S6_", scope: !634, file: !31, line: 102, type: !645, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !652, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{!66, !564, !564, !564}
!647 = !{!643, !648, !649, !650, !651}
!648 = !DILocalVariable(name: "expected", arg: 2, scope: !644, file: !31, line: 102, type: !564)
!649 = !DILocalVariable(name: "desired", arg: 3, scope: !644, file: !31, line: 102, type: !564)
!650 = !DILocalVariable(name: "oldval", scope: !644, file: !31, line: 103, type: !24)
!651 = !DILocalVariable(name: "gotval", scope: !644, file: !31, line: 104, type: !24)
!652 = !{!653}
!653 = !DITemplateTypeParameter(name: "T", type: !24)
!654 = !DILocation(line: 0, scope: !644, inlinedAt: !655)
!655 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !641)
!656 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !655)
!657 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !655)
!658 = !DILocation(line: 336, column: 67, scope: !659)
!659 = distinct !DILexicalBlock(scope: !619, file: !31, line: 336, column: 13)
!660 = !DILocation(line: 336, column: 73, scope: !659)
!661 = !DILocalVariable(name: "this", arg: 1, scope: !662, type: !664, flags: DIFlagArtificial | DIFlagObjectPointer)
!662 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !604, file: !31, line: 237, type: !612, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !611, retainedNodes: !663)
!663 = !{!661}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 32)
!665 = !DILocation(line: 0, scope: !662, inlinedAt: !666)
!666 = distinct !DILocation(line: 336, column: 84, scope: !659)
!667 = !DILocation(line: 241, column: 27, scope: !662, inlinedAt: !666)
!668 = !DILocation(line: 336, column: 13, scope: !619)
!669 = !DILocation(line: 239, column: 23, scope: !670, inlinedAt: !666)
!670 = distinct !DILexicalBlock(scope: !671, file: !31, line: 238, column: 29)
!671 = distinct !DILexicalBlock(scope: !662, file: !31, line: 238, column: 13)
!672 = !DILocation(line: 337, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !659, file: !31, line: 336, column: 99)
!674 = !DILocation(line: 338, column: 13, scope: !673)
!675 = !DILocation(line: 339, column: 13, scope: !673)
!676 = !DILocation(line: 342, column: 9, scope: !619)
!677 = !DILocation(line: 342, column: 30, scope: !619)
!678 = !DILocalVariable(name: "this", arg: 1, scope: !679, type: !29, flags: DIFlagArtificial | DIFlagObjectPointer)
!679 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !30, file: !31, line: 277, type: !97, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !96, retainedNodes: !680)
!680 = !{!678}
!681 = !DILocation(line: 0, scope: !679, inlinedAt: !682)
!682 = distinct !DILocation(line: 342, column: 30, scope: !619)
!683 = !DILocalVariable(name: "this", arg: 1, scope: !684, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!684 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !38, file: !8, line: 94, type: !85, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !84, retainedNodes: !685)
!685 = !{!683}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!687 = !DILocation(line: 0, scope: !684, inlinedAt: !688)
!688 = distinct !DILocation(line: 277, column: 19, scope: !679, inlinedAt: !682)
!689 = !DILocation(line: 87, column: 10, scope: !684, inlinedAt: !688)
!690 = !{!691, !692, i64 32}
!691 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !434, i64 0, !434, i64 16, !692, i64 32}
!692 = !{!"bool", !434, i64 0}
!693 = !DILocation(line: 95, column: 9, scope: !694, inlinedAt: !688)
!694 = distinct !DILexicalBlock(scope: !684, file: !8, line: 94, column: 35)
!695 = !DILocation(line: 96, column: 9, scope: !694, inlinedAt: !688)
!696 = !DILocation(line: 273, column: 27, scope: !679, inlinedAt: !682)
!697 = !{!698, !473, i64 40}
!698 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !691, i64 0, !473, i64 40, !473, i64 44, !473, i64 48}
!699 = !DILocation(line: 274, column: 27, scope: !679, inlinedAt: !682)
!700 = !{!698, !473, i64 44}
!701 = !DILocation(line: 275, column: 27, scope: !679, inlinedAt: !682)
!702 = !{!698, !473, i64 48}
!703 = !DILocalVariable(name: "this", arg: 1, scope: !704, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!704 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !38, file: !8, line: 105, type: !85, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !88, retainedNodes: !705)
!705 = !{!703}
!706 = !DILocation(line: 0, scope: !704, inlinedAt: !707)
!707 = distinct !DILocation(line: 344, column: 21, scope: !619)
!708 = !DILocation(line: 106, column: 21, scope: !704, inlinedAt: !707)
!709 = !DILocation(line: 347, column: 72, scope: !619)
!710 = !DILocation(line: 0, scope: !619)
!711 = !DILocation(line: 348, column: 18, scope: !712)
!712 = distinct !DILexicalBlock(scope: !619, file: !31, line: 348, column: 13)
!713 = !DILocation(line: 348, column: 13, scope: !619)
!714 = !DILocation(line: 349, column: 23, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !31, line: 348, column: 30)
!716 = !DILocation(line: 351, column: 9, scope: !715)
!717 = !DILocation(line: 347, column: 38, scope: !619)
!718 = !DILocation(line: 356, column: 23, scope: !719)
!719 = distinct !DILexicalBlock(scope: !712, file: !31, line: 351, column: 16)
!720 = !DILocation(line: 359, column: 60, scope: !619)
!721 = !DILocation(line: 359, column: 48, scope: !619)
!722 = !DILocalVariable(name: "addr", arg: 1, scope: !723, file: !31, line: 113, type: !173)
!723 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPjS4_S4_", scope: !634, file: !31, line: 113, type: !635, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !724)
!724 = !{!722, !725, !726}
!725 = !DILocalVariable(name: "expected", arg: 2, scope: !723, file: !31, line: 113, type: !173)
!726 = !DILocalVariable(name: "desired", arg: 3, scope: !723, file: !31, line: 113, type: !173)
!727 = !DILocation(line: 0, scope: !723, inlinedAt: !728)
!728 = distinct !DILocation(line: 360, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !619, file: !31, line: 360, column: 13)
!730 = !DILocation(line: 0, scope: !644, inlinedAt: !731)
!731 = distinct !DILocation(line: 114, column: 12, scope: !723, inlinedAt: !728)
!732 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !731)
!733 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !731)
!734 = !DILocation(line: 360, column: 13, scope: !619)
!735 = !DILocalVariable(name: "this", arg: 1, scope: !736, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!736 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !38, file: !8, line: 109, type: !85, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !89, retainedNodes: !737)
!737 = !{!735}
!738 = !DILocation(line: 0, scope: !736, inlinedAt: !739)
!739 = distinct !DILocation(line: 361, column: 25, scope: !740)
!740 = distinct !DILexicalBlock(scope: !729, file: !31, line: 360, column: 75)
!741 = !DILocation(line: 110, column: 9, scope: !736, inlinedAt: !739)
!742 = !DILocation(line: 111, column: 16, scope: !736, inlinedAt: !739)
!743 = !{i8 0, i8 2}
!744 = !DILocation(line: 111, column: 9, scope: !736, inlinedAt: !739)
!745 = !DILocation(line: 112, column: 13, scope: !746, inlinedAt: !739)
!746 = distinct !DILexicalBlock(scope: !736, file: !8, line: 111, column: 29)
!747 = distinct !{!747, !744, !748, !749}
!748 = !DILocation(line: 113, column: 9, scope: !736, inlinedAt: !739)
!749 = !{!"llvm.loop.mustprogress"}
!750 = !DILocation(line: 114, column: 9, scope: !736, inlinedAt: !739)
!751 = !DILocation(line: 363, column: 13, scope: !740)
!752 = !DILocation(line: 364, column: 9, scope: !740)
!753 = !DILocation(line: 0, scope: !729)
!754 = !DILocalVariable(name: "this", arg: 1, scope: !755, type: !29, flags: DIFlagArtificial | DIFlagObjectPointer)
!755 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !30, file: !31, line: 280, type: !97, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !100, retainedNodes: !756)
!756 = !{!754}
!757 = !DILocation(line: 0, scope: !755, inlinedAt: !758)
!758 = distinct !DILocation(line: 365, column: 5, scope: !599)
!759 = !DILocalVariable(name: "this", arg: 1, scope: !760, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!760 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !38, file: !8, line: 100, type: !85, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !87, retainedNodes: !761)
!761 = !{!759}
!762 = !DILocation(line: 0, scope: !760, inlinedAt: !763)
!763 = distinct !DILocation(line: 280, column: 51, scope: !764, inlinedAt: !758)
!764 = distinct !DILexicalBlock(scope: !755, file: !31, line: 280, column: 51)
!765 = !DILocation(line: 101, column: 9, scope: !766, inlinedAt: !763)
!766 = distinct !DILexicalBlock(scope: !760, file: !8, line: 100, column: 36)
!767 = !DILocation(line: 102, column: 9, scope: !766, inlinedAt: !763)
!768 = !DILocation(line: 365, column: 5, scope: !599)
!769 = distinct !{!769, !626, !768}
!770 = !DILocation(line: 366, column: 1, scope: !599)
!771 = !DISubprogram(name: "halide_thread_yield", scope: !27, file: !27, line: 190, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!772 = !DISubroutineType(types: !773)
!773 = !{null}
!774 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !109, file: !31, line: 368, type: !113, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !116, retainedNodes: !775)
!775 = !{!776, !777, !778, !780, !781, !782, !784, !785, !786, !787, !789, !792, !793, !796}
!776 = !DILocalVariable(name: "this", arg: 1, scope: !774, type: !602, flags: DIFlagArtificial | DIFlagObjectPointer)
!777 = !DILocalVariable(name: "expected", scope: !774, file: !31, line: 369, type: !26)
!778 = !DILocalVariable(name: "thread_queuing", scope: !779, file: !31, line: 375, type: !66)
!779 = distinct !DILexicalBlock(scope: !774, file: !31, line: 372, column: 18)
!780 = !DILocalVariable(name: "none_queued", scope: !779, file: !31, line: 377, type: !66)
!781 = !DILocalVariable(name: "desired", scope: !779, file: !31, line: 382, type: !26)
!782 = !DILocalVariable(name: "head", scope: !783, file: !31, line: 389, type: !29)
!783 = distinct !DILexicalBlock(scope: !774, file: !31, line: 388, column: 18)
!784 = !DILocalVariable(name: "current", scope: !783, file: !31, line: 390, type: !29)
!785 = !DILocalVariable(name: "tail", scope: !783, file: !31, line: 391, type: !29)
!786 = !DILocalVariable(name: "times_through", scope: !783, file: !31, line: 392, type: !161)
!787 = !DILocalVariable(name: "next", scope: !788, file: !31, line: 394, type: !29)
!788 = distinct !DILexicalBlock(scope: !783, file: !31, line: 393, column: 33)
!789 = !DILocalVariable(name: "desired", scope: !790, file: !31, line: 406, type: !26)
!790 = distinct !DILexicalBlock(scope: !791, file: !31, line: 405, column: 34)
!791 = distinct !DILexicalBlock(scope: !783, file: !31, line: 405, column: 13)
!792 = !DILocalVariable(name: "new_tail", scope: !783, file: !31, line: 414, type: !29)
!793 = !DILocalVariable(name: "continue_outer", scope: !794, file: !31, line: 416, type: !66)
!794 = distinct !DILexicalBlock(scope: !795, file: !31, line: 415, column: 34)
!795 = distinct !DILexicalBlock(scope: !783, file: !31, line: 415, column: 13)
!796 = !DILocalVariable(name: "desired", scope: !797, file: !31, line: 418, type: !26)
!797 = distinct !DILexicalBlock(scope: !794, file: !31, line: 417, column: 37)
!798 = !DILocation(line: 0, scope: !774)
!799 = !DILocation(line: 370, column: 26, scope: !774)
!800 = !DILocation(line: 370, column: 5, scope: !774)
!801 = !DILocalVariable(name: "addr", arg: 1, scope: !802, file: !31, line: 135, type: !564)
!802 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIjEEvPT_S6_", scope: !634, file: !31, line: 135, type: !803, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !652, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !564, !564}
!805 = !{!801, !806}
!806 = !DILocalVariable(name: "val", arg: 2, scope: !802, file: !31, line: 135, type: !564)
!807 = !DILocation(line: 0, scope: !802, inlinedAt: !808)
!808 = distinct !DILocation(line: 370, column: 5, scope: !774)
!809 = !DILocation(line: 372, column: 5, scope: !774)
!810 = !DILocation(line: 136, column: 10, scope: !802, inlinedAt: !808)
!811 = !DILocation(line: 375, column: 41, scope: !779)
!812 = !DILocation(line: 375, column: 31, scope: !779)
!813 = !DILocation(line: 0, scope: !779)
!814 = !DILocation(line: 378, column: 28, scope: !815)
!815 = distinct !DILexicalBlock(scope: !779, file: !31, line: 378, column: 13)
!816 = !DILocation(line: 382, column: 38, scope: !779)
!817 = !DILocation(line: 0, scope: !633, inlinedAt: !818)
!818 = distinct !DILocation(line: 383, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !779, file: !31, line: 383, column: 13)
!820 = !DILocation(line: 0, scope: !644, inlinedAt: !821)
!821 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !818)
!822 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !821)
!823 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !821)
!824 = !DILocation(line: 389, column: 72, scope: !783)
!825 = !DILocation(line: 389, column: 38, scope: !783)
!826 = !DILocation(line: 0, scope: !783)
!827 = !DILocation(line: 391, column: 47, scope: !783)
!828 = !DILocation(line: 393, column: 21, scope: !783)
!829 = !DILocation(line: 393, column: 9, scope: !783)
!830 = !DILocation(line: 394, column: 51, scope: !788)
!831 = !DILocation(line: 0, scope: !788)
!832 = !DILocation(line: 395, column: 13, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !31, line: 395, column: 13)
!834 = distinct !DILexicalBlock(scope: !788, file: !31, line: 395, column: 13)
!835 = !DILocation(line: 395, column: 13, scope: !834)
!836 = !DILocation(line: 395, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !31, line: 395, column: 13)
!838 = !DILocation(line: 396, column: 19, scope: !788)
!839 = !DILocation(line: 396, column: 24, scope: !788)
!840 = !DILocation(line: 398, column: 29, scope: !788)
!841 = distinct !{!841, !829, !842, !749}
!842 = !DILocation(line: 400, column: 9, scope: !783)
!843 = !DILocation(line: 401, column: 20, scope: !783)
!844 = !DILocation(line: 405, column: 22, scope: !791)
!845 = !DILocation(line: 405, column: 13, scope: !791)
!846 = !DILocation(line: 405, column: 13, scope: !783)
!847 = !DILocation(line: 406, column: 42, scope: !790)
!848 = !DILocation(line: 0, scope: !790)
!849 = !DILocalVariable(name: "addr", arg: 1, scope: !850, file: !31, line: 118, type: !564)
!850 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIjEEbPT_S6_S6_", scope: !634, file: !31, line: 118, type: !645, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !652, retainedNodes: !851)
!851 = !{!849, !852, !853}
!852 = !DILocalVariable(name: "expected", arg: 2, scope: !850, file: !31, line: 118, type: !564)
!853 = !DILocalVariable(name: "desired", arg: 3, scope: !850, file: !31, line: 118, type: !564)
!854 = !DILocation(line: 0, scope: !850, inlinedAt: !855)
!855 = distinct !DILocation(line: 407, column: 17, scope: !856)
!856 = distinct !DILexicalBlock(scope: !790, file: !31, line: 407, column: 17)
!857 = !DILocation(line: 0, scope: !644, inlinedAt: !858)
!858 = distinct !DILocation(line: 119, column: 12, scope: !850, inlinedAt: !855)
!859 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !858)
!860 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !858)
!861 = !DILocation(line: 407, column: 17, scope: !790)
!862 = distinct !{!862, !863, !864}
!863 = !DILocation(line: 388, column: 5, scope: !774)
!864 = !DILocation(line: 445, column: 5, scope: !774)
!865 = !DILocation(line: 414, column: 48, scope: !783)
!866 = !DILocation(line: 415, column: 22, scope: !795)
!867 = !DILocation(line: 415, column: 13, scope: !783)
!868 = !DILocation(line: 418, column: 46, scope: !797)
!869 = !DILocation(line: 0, scope: !797)
!870 = !DILocation(line: 0, scope: !850, inlinedAt: !871)
!871 = distinct !DILocation(line: 419, column: 21, scope: !872)
!872 = distinct !DILexicalBlock(scope: !797, file: !31, line: 419, column: 21)
!873 = !DILocation(line: 0, scope: !644, inlinedAt: !874)
!874 = distinct !DILocation(line: 119, column: 12, scope: !850, inlinedAt: !871)
!875 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !874)
!876 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !874)
!877 = !DILocation(line: 419, column: 21, scope: !797)
!878 = !DILocation(line: 422, column: 74, scope: !879)
!879 = distinct !DILexicalBlock(scope: !797, file: !31, line: 422, column: 21)
!880 = !DILocation(line: 422, column: 21, scope: !797)
!881 = distinct !{!881, !882, !883, !749}
!882 = !DILocation(line: 417, column: 13, scope: !794)
!883 = !DILocation(line: 428, column: 13, scope: !794)
!884 = !DILocation(line: 434, column: 24, scope: !885)
!885 = distinct !DILexicalBlock(scope: !795, file: !31, line: 433, column: 16)
!886 = !DILocalVariable(name: "addr", arg: 1, scope: !887, file: !31, line: 92, type: !173)
!887 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPjj", scope: !634, file: !31, line: 92, type: !888, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!26, !173, !26}
!890 = !{!886, !891}
!891 = !DILocalVariable(name: "val", arg: 2, scope: !887, file: !31, line: 92, type: !26)
!892 = !DILocation(line: 0, scope: !887, inlinedAt: !893)
!893 = distinct !DILocation(line: 435, column: 13, scope: !885)
!894 = !DILocation(line: 93, column: 12, scope: !887, inlinedAt: !893)
!895 = !DILocalVariable(name: "this", arg: 1, scope: !896, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!896 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !38, file: !8, line: 117, type: !85, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !90, retainedNodes: !897)
!897 = !{!895}
!898 = !DILocation(line: 0, scope: !896, inlinedAt: !899)
!899 = distinct !DILocation(line: 441, column: 22, scope: !783)
!900 = !DILocation(line: 118, column: 26, scope: !896, inlinedAt: !899)
!901 = !DILocation(line: 118, column: 9, scope: !896, inlinedAt: !899)
!902 = !DILocalVariable(name: "this", arg: 1, scope: !903, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!903 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !38, file: !8, line: 121, type: !85, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !91, retainedNodes: !904)
!904 = !{!902}
!905 = !DILocation(line: 0, scope: !903, inlinedAt: !906)
!906 = distinct !DILocation(line: 442, column: 22, scope: !783)
!907 = !DILocation(line: 122, column: 9, scope: !903, inlinedAt: !906)
!908 = !DILocation(line: 122, column: 21, scope: !903, inlinedAt: !906)
!909 = !DILocation(line: 123, column: 27, scope: !903, inlinedAt: !906)
!910 = !DILocation(line: 123, column: 9, scope: !903, inlinedAt: !906)
!911 = !DILocalVariable(name: "this", arg: 1, scope: !912, type: !686, flags: DIFlagArtificial | DIFlagObjectPointer)
!912 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !38, file: !8, line: 126, type: !85, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !92, retainedNodes: !913)
!913 = !{!911}
!914 = !DILocation(line: 0, scope: !912, inlinedAt: !915)
!915 = distinct !DILocation(line: 443, column: 22, scope: !783)
!916 = !DILocation(line: 127, column: 9, scope: !912, inlinedAt: !915)
!917 = !DILocation(line: 444, column: 9, scope: !783)
!918 = !DILocation(line: 0, scope: !794)
!919 = !DILocation(line: 446, column: 1, scope: !774)
!920 = !DISubprogram(name: "halide_print", scope: !242, file: !242, line: 97, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !15, !265}
!923 = !DISubprogram(name: "abort", scope: !27, file: !27, line: 108, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!924 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEj", scope: !32, file: !31, line: 509, type: !925, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!925 = !DISubroutineType(types: !926)
!926 = !{!927, !26}
!927 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 32)
!928 = !{!929, !930, !931}
!929 = !DILocalVariable(name: "addr", arg: 1, scope: !924, file: !31, line: 509, type: !26)
!930 = !DILocalVariable(name: "hash", scope: !924, file: !31, line: 510, type: !26)
!931 = !DILocalVariable(name: "bucket", scope: !924, file: !31, line: 515, type: !927)
!932 = !DILocation(line: 0, scope: !924)
!933 = !DILocalVariable(name: "addr", arg: 1, scope: !934, file: !31, line: 499, type: !26)
!934 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEjj", scope: !32, file: !31, line: 499, type: !935, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!26, !26, !28}
!937 = !{!933, !938}
!938 = !DILocalVariable(name: "bits", arg: 2, scope: !934, file: !31, line: 499, type: !28)
!939 = !DILocation(line: 0, scope: !934, inlinedAt: !940)
!940 = distinct !DILocation(line: 510, column: 22, scope: !924)
!941 = !DILocation(line: 505, column: 22, scope: !942, inlinedAt: !940)
!942 = distinct !DILexicalBlock(scope: !943, file: !31, line: 504, column: 12)
!943 = distinct !DILexicalBlock(scope: !934, file: !31, line: 502, column: 9)
!944 = !DILocation(line: 505, column: 47, scope: !942, inlinedAt: !940)
!945 = !DILocation(line: 515, column: 27, scope: !924)
!946 = !DILocalVariable(name: "this", arg: 1, scope: !947, type: !602, flags: DIFlagArtificial | DIFlagObjectPointer)
!947 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !109, file: !31, line: 291, type: !113, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !118, retainedNodes: !948)
!948 = !{!946, !949, !950}
!949 = !DILocalVariable(name: "expected", scope: !947, file: !31, line: 294, type: !26)
!950 = !DILocalVariable(name: "desired", scope: !947, file: !31, line: 295, type: !26)
!951 = !DILocation(line: 0, scope: !947, inlinedAt: !952)
!952 = distinct !DILocation(line: 517, column: 18, scope: !924)
!953 = !DILocation(line: 292, column: 26, scope: !947, inlinedAt: !952)
!954 = !DILocalVariable(name: "mutex", arg: 1, scope: !955, file: !31, line: 56, type: !15)
!955 = distinct !DISubprogram(name: "if_tsan_pre_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_116if_tsan_pre_lockEPv", scope: !634, file: !31, line: 56, type: !13, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !956)
!956 = !{!954}
!957 = !DILocation(line: 0, scope: !955, inlinedAt: !958)
!958 = distinct !DILocation(line: 292, column: 9, scope: !947, inlinedAt: !952)
!959 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !958)
!960 = !DILocation(line: 297, column: 47, scope: !961, inlinedAt: !952)
!961 = distinct !DILexicalBlock(scope: !947, file: !31, line: 297, column: 13)
!962 = !DILocation(line: 0, scope: !633, inlinedAt: !963)
!963 = distinct !DILocation(line: 297, column: 14, scope: !961, inlinedAt: !952)
!964 = !DILocation(line: 0, scope: !644, inlinedAt: !965)
!965 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !963)
!966 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !965)
!967 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !965)
!968 = !DILocation(line: 297, column: 13, scope: !947, inlinedAt: !952)
!969 = !DILocation(line: 517, column: 12, scope: !924)
!970 = !DILocation(line: 298, column: 13, scope: !971, inlinedAt: !952)
!971 = distinct !DILexicalBlock(scope: !961, file: !31, line: 297, column: 76)
!972 = !DILocation(line: 299, column: 9, scope: !971, inlinedAt: !952)
!973 = !DILocalVariable(name: "mutex", arg: 1, scope: !974, file: !31, line: 60, type: !15)
!974 = distinct !DISubprogram(name: "if_tsan_post_lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_117if_tsan_post_lockEPv", scope: !634, file: !31, line: 60, type: !13, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !975)
!975 = !{!973}
!976 = !DILocation(line: 0, scope: !974, inlinedAt: !977)
!977 = distinct !DILocation(line: 301, column: 9, scope: !947, inlinedAt: !952)
!978 = !DILocation(line: 61, column: 5, scope: !974, inlinedAt: !977)
!979 = !DILocation(line: 519, column: 5, scope: !924)
!980 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEjj", scope: !32, file: !31, line: 531, type: !981, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !991)
!981 = !DISubroutineType(types: !982)
!982 = !{!983, !26, !26}
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !32, file: !31, line: 522, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !984, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !983, file: !31, line: 523, baseType: !927, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !983, file: !31, line: 524, baseType: !927, size: 32, offset: 32)
!987 = !DISubprogram(name: "bucket_pair", scope: !983, file: !31, line: 526, type: !988, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !990, !927, !927}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!991 = !{!992, !993, !994, !995, !996, !999, !1002, !1003, !1005}
!992 = !DILocalVariable(name: "addr_from", arg: 1, scope: !980, file: !31, line: 531, type: !26)
!993 = !DILocalVariable(name: "addr_to", arg: 2, scope: !980, file: !31, line: 531, type: !26)
!994 = !DILocalVariable(name: "hash_from", scope: !980, file: !31, line: 533, type: !26)
!995 = !DILocalVariable(name: "hash_to", scope: !980, file: !31, line: 534, type: !26)
!996 = !DILocalVariable(name: "first", scope: !997, file: !31, line: 542, type: !927)
!997 = distinct !DILexicalBlock(scope: !998, file: !31, line: 541, column: 31)
!998 = distinct !DILexicalBlock(scope: !980, file: !31, line: 541, column: 9)
!999 = !DILocalVariable(name: "first", scope: !1000, file: !31, line: 546, type: !927)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !31, line: 545, column: 37)
!1001 = distinct !DILexicalBlock(scope: !998, file: !31, line: 545, column: 16)
!1002 = !DILocalVariable(name: "second", scope: !1000, file: !31, line: 547, type: !927)
!1003 = !DILocalVariable(name: "first", scope: !1004, file: !31, line: 552, type: !927)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !31, line: 551, column: 12)
!1005 = !DILocalVariable(name: "second", scope: !1004, file: !31, line: 553, type: !927)
!1006 = !DILocation(line: 0, scope: !980)
!1007 = !DILocation(line: 0, scope: !934, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 533, column: 27, scope: !980)
!1009 = !DILocation(line: 505, column: 22, scope: !942, inlinedAt: !1008)
!1010 = !DILocation(line: 505, column: 47, scope: !942, inlinedAt: !1008)
!1011 = !DILocation(line: 0, scope: !934, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 534, column: 25, scope: !980)
!1013 = !DILocation(line: 505, column: 22, scope: !942, inlinedAt: !1012)
!1014 = !DILocation(line: 505, column: 47, scope: !942, inlinedAt: !1012)
!1015 = !DILocation(line: 541, column: 19, scope: !998)
!1016 = !DILocation(line: 541, column: 9, scope: !980)
!1017 = !DILocation(line: 542, column: 30, scope: !997)
!1018 = !DILocation(line: 0, scope: !997)
!1019 = !DILocation(line: 0, scope: !947, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 543, column: 21, scope: !997)
!1021 = !DILocation(line: 292, column: 26, scope: !947, inlinedAt: !1020)
!1022 = !DILocation(line: 0, scope: !955, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 292, column: 9, scope: !947, inlinedAt: !1020)
!1024 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !1023)
!1025 = !DILocation(line: 297, column: 47, scope: !961, inlinedAt: !1020)
!1026 = !DILocation(line: 0, scope: !633, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 297, column: 14, scope: !961, inlinedAt: !1020)
!1028 = !DILocation(line: 0, scope: !644, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !1027)
!1030 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1029)
!1031 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1029)
!1032 = !DILocation(line: 297, column: 13, scope: !947, inlinedAt: !1020)
!1033 = !DILocation(line: 543, column: 15, scope: !997)
!1034 = !DILocation(line: 298, column: 13, scope: !971, inlinedAt: !1020)
!1035 = !DILocation(line: 299, column: 9, scope: !971, inlinedAt: !1020)
!1036 = !DILocation(line: 545, column: 26, scope: !1001)
!1037 = !DILocation(line: 545, column: 16, scope: !998)
!1038 = !DILocation(line: 546, column: 30, scope: !1000)
!1039 = !DILocation(line: 0, scope: !1000)
!1040 = !DILocation(line: 547, column: 31, scope: !1000)
!1041 = !DILocation(line: 0, scope: !947, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 548, column: 21, scope: !1000)
!1043 = !DILocation(line: 292, column: 26, scope: !947, inlinedAt: !1042)
!1044 = !DILocation(line: 0, scope: !955, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 292, column: 9, scope: !947, inlinedAt: !1042)
!1046 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !1045)
!1047 = !DILocation(line: 297, column: 47, scope: !961, inlinedAt: !1042)
!1048 = !DILocation(line: 0, scope: !633, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 297, column: 14, scope: !961, inlinedAt: !1042)
!1050 = !DILocation(line: 0, scope: !644, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !1049)
!1052 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1051)
!1053 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1051)
!1054 = !DILocation(line: 297, column: 13, scope: !947, inlinedAt: !1042)
!1055 = !DILocation(line: 548, column: 15, scope: !1000)
!1056 = !DILocation(line: 298, column: 13, scope: !971, inlinedAt: !1042)
!1057 = !DILocation(line: 299, column: 9, scope: !971, inlinedAt: !1042)
!1058 = !DILocation(line: 0, scope: !974, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 301, column: 9, scope: !947, inlinedAt: !1042)
!1060 = !DILocation(line: 61, column: 5, scope: !974, inlinedAt: !1059)
!1061 = !DILocation(line: 0, scope: !947, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 549, column: 22, scope: !1000)
!1063 = !DILocation(line: 292, column: 26, scope: !947, inlinedAt: !1062)
!1064 = !DILocation(line: 0, scope: !955, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 292, column: 9, scope: !947, inlinedAt: !1062)
!1066 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !1065)
!1067 = !DILocation(line: 297, column: 47, scope: !961, inlinedAt: !1062)
!1068 = !DILocation(line: 0, scope: !633, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 297, column: 14, scope: !961, inlinedAt: !1062)
!1070 = !DILocation(line: 0, scope: !644, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !1069)
!1072 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1071)
!1073 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1071)
!1074 = !DILocation(line: 297, column: 13, scope: !947, inlinedAt: !1062)
!1075 = !DILocation(line: 549, column: 16, scope: !1000)
!1076 = !DILocation(line: 298, column: 13, scope: !971, inlinedAt: !1062)
!1077 = !DILocation(line: 299, column: 9, scope: !971, inlinedAt: !1062)
!1078 = !DILocation(line: 552, column: 30, scope: !1004)
!1079 = !DILocation(line: 0, scope: !1004)
!1080 = !DILocation(line: 553, column: 31, scope: !1004)
!1081 = !DILocation(line: 0, scope: !947, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 554, column: 21, scope: !1004)
!1083 = !DILocation(line: 292, column: 26, scope: !947, inlinedAt: !1082)
!1084 = !DILocation(line: 0, scope: !955, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 292, column: 9, scope: !947, inlinedAt: !1082)
!1086 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !1085)
!1087 = !DILocation(line: 297, column: 47, scope: !961, inlinedAt: !1082)
!1088 = !DILocation(line: 0, scope: !633, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 297, column: 14, scope: !961, inlinedAt: !1082)
!1090 = !DILocation(line: 0, scope: !644, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !1089)
!1092 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1091)
!1093 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1091)
!1094 = !DILocation(line: 297, column: 13, scope: !947, inlinedAt: !1082)
!1095 = !DILocation(line: 554, column: 15, scope: !1004)
!1096 = !DILocation(line: 298, column: 13, scope: !971, inlinedAt: !1082)
!1097 = !DILocation(line: 299, column: 9, scope: !971, inlinedAt: !1082)
!1098 = !DILocation(line: 0, scope: !974, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 301, column: 9, scope: !947, inlinedAt: !1082)
!1100 = !DILocation(line: 61, column: 5, scope: !974, inlinedAt: !1099)
!1101 = !DILocation(line: 0, scope: !947, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 555, column: 22, scope: !1004)
!1103 = !DILocation(line: 292, column: 26, scope: !947, inlinedAt: !1102)
!1104 = !DILocation(line: 0, scope: !955, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 292, column: 9, scope: !947, inlinedAt: !1102)
!1106 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !1105)
!1107 = !DILocation(line: 297, column: 47, scope: !961, inlinedAt: !1102)
!1108 = !DILocation(line: 0, scope: !633, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 297, column: 14, scope: !961, inlinedAt: !1102)
!1110 = !DILocation(line: 0, scope: !644, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !1109)
!1112 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1111)
!1113 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1111)
!1114 = !DILocation(line: 297, column: 13, scope: !947, inlinedAt: !1102)
!1115 = !DILocation(line: 555, column: 16, scope: !1004)
!1116 = !DILocation(line: 298, column: 13, scope: !971, inlinedAt: !1102)
!1117 = !DILocation(line: 299, column: 9, scope: !971, inlinedAt: !1102)
!1118 = !DILocation(line: 0, scope: !998)
!1119 = !{!473, !473, i64 0}
!1120 = !DILocation(line: 558, column: 1, scope: !980)
!1121 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !32, file: !31, line: 560, type: !1122, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1125)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !983, size: 32)
!1125 = !{!1126}
!1126 = !DILocalVariable(name: "buckets", arg: 1, scope: !1121, file: !31, line: 560, type: !1124)
!1127 = !DILocation(line: 0, scope: !1121)
!1128 = !DILocation(line: 565, column: 18, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !31, line: 565, column: 9)
!1130 = !{!1131, !473, i64 0}
!1131 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !473, i64 0, !473, i64 4}
!1132 = !DILocation(line: 565, column: 35, scope: !1129)
!1133 = !{!1131, !473, i64 4}
!1134 = !DILocation(line: 565, column: 23, scope: !1129)
!1135 = !DILocation(line: 565, column: 9, scope: !1121)
!1136 = !DILocalVariable(name: "this", arg: 1, scope: !1137, type: !602, flags: DIFlagArtificial | DIFlagObjectPointer)
!1137 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !109, file: !31, line: 304, type: !113, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !119, retainedNodes: !1138)
!1138 = !{!1136, !1139, !1140, !1141}
!1139 = !DILocalVariable(name: "val", scope: !1137, file: !31, line: 307, type: !26)
!1140 = !DILocalVariable(name: "no_thread_queuing", scope: !1137, file: !31, line: 310, type: !66)
!1141 = !DILocalVariable(name: "some_queued", scope: !1137, file: !31, line: 312, type: !66)
!1142 = !DILocation(line: 0, scope: !1137, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 566, column: 28, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1129, file: !31, line: 565, column: 39)
!1145 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1143)
!1146 = !DILocalVariable(name: "mutex", arg: 1, scope: !1147, file: !31, line: 64, type: !15)
!1147 = distinct !DISubprogram(name: "if_tsan_pre_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_unlockEPv", scope: !634, file: !31, line: 64, type: !13, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1148 = !{!1146}
!1149 = !DILocation(line: 0, scope: !1147, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1143)
!1151 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1150)
!1152 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1143)
!1153 = !DILocalVariable(name: "addr", arg: 1, scope: !1154, file: !31, line: 130, type: !173)
!1154 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPjj", scope: !634, file: !31, line: 130, type: !888, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1155)
!1155 = !{!1153, !1156}
!1156 = !DILocalVariable(name: "val", arg: 2, scope: !1154, file: !31, line: 130, type: !26)
!1157 = !DILocation(line: 0, scope: !1154, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1143)
!1159 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1158)
!1160 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1143)
!1161 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1143)
!1162 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1143)
!1163 = distinct !DILexicalBlock(scope: !1137, file: !31, line: 313, column: 13)
!1164 = !DILocation(line: 566, column: 22, scope: !1144)
!1165 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1143)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !31, line: 313, column: 47)
!1167 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1143)
!1168 = !DILocation(line: 567, column: 30, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1129, file: !31, line: 567, column: 16)
!1170 = !DILocation(line: 567, column: 16, scope: !1129)
!1171 = !DILocation(line: 0, scope: !1137, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 568, column: 28, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !31, line: 567, column: 45)
!1174 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1172)
!1175 = !DILocation(line: 0, scope: !1147, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1172)
!1177 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1176)
!1178 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1172)
!1179 = !DILocation(line: 0, scope: !1154, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1172)
!1181 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1180)
!1182 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1172)
!1183 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1172)
!1184 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1172)
!1185 = !DILocation(line: 568, column: 22, scope: !1173)
!1186 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1172)
!1187 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1172)
!1188 = !DILocalVariable(name: "mutex", arg: 1, scope: !1189, file: !31, line: 67, type: !15)
!1189 = distinct !DISubprogram(name: "if_tsan_post_unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_unlockEPv", scope: !634, file: !31, line: 67, type: !13, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1190 = !{!1188}
!1191 = !DILocation(line: 0, scope: !1189, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1172)
!1193 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1192)
!1194 = !DILocation(line: 569, column: 17, scope: !1173)
!1195 = !DILocation(line: 0, scope: !1137, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 569, column: 26, scope: !1173)
!1197 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1196)
!1198 = !DILocation(line: 0, scope: !1147, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1196)
!1200 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1199)
!1201 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1196)
!1202 = !DILocation(line: 0, scope: !1154, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1196)
!1204 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1203)
!1205 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1196)
!1206 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1196)
!1207 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1196)
!1208 = !DILocation(line: 569, column: 20, scope: !1173)
!1209 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1196)
!1210 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1196)
!1211 = !DILocation(line: 0, scope: !1137, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 571, column: 26, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1169, file: !31, line: 570, column: 12)
!1214 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1212)
!1215 = !DILocation(line: 0, scope: !1147, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1212)
!1217 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1216)
!1218 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1212)
!1219 = !DILocation(line: 0, scope: !1154, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1212)
!1221 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1220)
!1222 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1212)
!1223 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1212)
!1224 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1212)
!1225 = !DILocation(line: 571, column: 20, scope: !1213)
!1226 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1212)
!1227 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1212)
!1228 = !DILocation(line: 0, scope: !1189, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1212)
!1230 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1229)
!1231 = !DILocation(line: 572, column: 17, scope: !1213)
!1232 = !DILocation(line: 0, scope: !1137, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 572, column: 28, scope: !1213)
!1234 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1233)
!1235 = !DILocation(line: 0, scope: !1147, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1233)
!1237 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1236)
!1238 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1233)
!1239 = !DILocation(line: 0, scope: !1154, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1233)
!1241 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1240)
!1242 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1233)
!1243 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1233)
!1244 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1233)
!1245 = !DILocation(line: 572, column: 22, scope: !1213)
!1246 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1233)
!1247 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1233)
!1248 = !DILocation(line: 0, scope: !1129)
!1249 = !DILocation(line: 574, column: 1, scope: !1121)
!1250 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 583, type: !145, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "control", arg: 1, scope: !1250, file: !31, line: 583, type: !15)
!1253 = !DILocalVariable(name: "action", arg: 2, scope: !1250, file: !31, line: 583, type: !147)
!1254 = !DILocation(line: 0, scope: !1250)
!1255 = !DILocation(line: 584, column: 5, scope: !1250)
!1256 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !32, file: !31, line: 586, type: !13, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "control", arg: 1, scope: !1256, file: !31, line: 586, type: !15)
!1259 = !DILocation(line: 0, scope: !1256)
!1260 = !DILocation(line: 586, column: 55, scope: !1256)
!1261 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !32, file: !31, line: 587, type: !159, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "control", arg: 1, scope: !1261, file: !31, line: 587, type: !15)
!1264 = !DILocalVariable(name: "unparked", arg: 2, scope: !1261, file: !31, line: 587, type: !161)
!1265 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1261, file: !31, line: 587, type: !66)
!1266 = !DILocation(line: 0, scope: !1261)
!1267 = !DILocation(line: 588, column: 5, scope: !1261)
!1268 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !32, file: !31, line: 590, type: !164, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1269 = !{!1270, !1271, !1272, !1273}
!1270 = !DILocalVariable(name: "control", arg: 1, scope: !1268, file: !31, line: 590, type: !15)
!1271 = !DILocalVariable(name: "action", arg: 2, scope: !1268, file: !31, line: 590, type: !166)
!1272 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1268, file: !31, line: 590, type: !66)
!1273 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1268, file: !31, line: 590, type: !66)
!1274 = !DILocation(line: 0, scope: !1268)
!1275 = !DILocation(line: 590, column: 128, scope: !1268)
!1276 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEjRNS2_15parking_controlE", scope: !32, file: !31, line: 605, type: !1277, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1280)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!26, !26, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !141, size: 32)
!1280 = !{!1281, !1282, !1283, !1284, !1285}
!1281 = !DILocalVariable(name: "addr", arg: 1, scope: !1276, file: !31, line: 605, type: !26)
!1282 = !DILocalVariable(name: "control", arg: 2, scope: !1276, file: !31, line: 605, type: !1279)
!1283 = !DILocalVariable(name: "queue_data", scope: !1276, file: !31, line: 606, type: !122)
!1284 = !DILocalVariable(name: "bucket", scope: !1276, file: !31, line: 608, type: !927)
!1285 = !DILocalVariable(name: "action", scope: !1276, file: !31, line: 610, type: !148)
!1286 = !DILocation(line: 0, scope: !1276)
!1287 = !DILocation(line: 606, column: 5, scope: !1276)
!1288 = !DILocation(line: 606, column: 16, scope: !1276)
!1289 = !DILocalVariable(name: "this", arg: 1, scope: !1290, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1290 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !122, file: !31, line: 455, type: !129, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !128, retainedNodes: !1291)
!1291 = !{!1289}
!1292 = !DILocation(line: 0, scope: !1290, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 606, column: 16, scope: !1276)
!1294 = !DILocation(line: 0, scope: !684, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 455, column: 19, scope: !1290, inlinedAt: !1293)
!1296 = !DILocation(line: 87, column: 10, scope: !684, inlinedAt: !1295)
!1297 = !DILocation(line: 95, column: 26, scope: !694, inlinedAt: !1295)
!1298 = !DILocation(line: 95, column: 9, scope: !694, inlinedAt: !1295)
!1299 = !DILocation(line: 96, column: 25, scope: !694, inlinedAt: !1295)
!1300 = !DILocation(line: 96, column: 9, scope: !694, inlinedAt: !1295)
!1301 = !DILocation(line: 97, column: 21, scope: !694, inlinedAt: !1295)
!1302 = !DILocation(line: 451, column: 15, scope: !1290, inlinedAt: !1293)
!1303 = !{!1304, !475, i64 40}
!1304 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !691, i64 0, !475, i64 40, !473, i64 44, !475, i64 48}
!1305 = !DILocation(line: 452, column: 17, scope: !1290, inlinedAt: !1293)
!1306 = !{!1304, !473, i64 44}
!1307 = !DILocation(line: 453, column: 15, scope: !1290, inlinedAt: !1293)
!1308 = !{!1304, !475, i64 48}
!1309 = !DILocation(line: 608, column: 27, scope: !1276)
!1310 = !DILocation(line: 610, column: 5, scope: !1276)
!1311 = !DILocation(line: 610, column: 21, scope: !1276)
!1312 = !DILocalVariable(name: "this", arg: 1, scope: !1313, type: !1315, flags: DIFlagArtificial | DIFlagObjectPointer)
!1313 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !148, file: !31, line: 580, type: !153, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !152, retainedNodes: !1314)
!1314 = !{!1312}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!1316 = !DILocation(line: 0, scope: !1313, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 610, column: 21, scope: !1276)
!1318 = !DILocation(line: 577, column: 10, scope: !1313, inlinedAt: !1317)
!1319 = !{!1320, !692, i64 0}
!1320 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !692, i64 0, !475, i64 4}
!1321 = !DILocation(line: 578, column: 15, scope: !1313, inlinedAt: !1317)
!1322 = !{!1320, !475, i64 4}
!1323 = !DILocation(line: 611, column: 18, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1276, file: !31, line: 611, column: 9)
!1325 = !{!1326, !473, i64 0}
!1326 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !473, i64 0, !473, i64 4, !473, i64 8, !473, i64 12}
!1327 = !DILocation(line: 611, column: 27, scope: !1324)
!1328 = !DILocation(line: 611, column: 10, scope: !1324)
!1329 = !DILocation(line: 611, column: 9, scope: !1276)
!1330 = !DILocation(line: 0, scope: !1137, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 612, column: 22, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !31, line: 611, column: 46)
!1333 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1331)
!1334 = !DILocation(line: 0, scope: !1147, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1331)
!1336 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1335)
!1337 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1331)
!1338 = !DILocation(line: 0, scope: !1154, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1331)
!1340 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1339)
!1341 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1331)
!1342 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1331)
!1343 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1331)
!1344 = !DILocation(line: 612, column: 16, scope: !1332)
!1345 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1331)
!1346 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1331)
!1347 = !DILocation(line: 0, scope: !1189, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1331)
!1349 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1348)
!1350 = !DILocation(line: 613, column: 23, scope: !1332)
!1351 = !DILocation(line: 613, column: 9, scope: !1332)
!1352 = !DILocation(line: 616, column: 21, scope: !1276)
!1353 = !DILocation(line: 617, column: 30, scope: !1276)
!1354 = !DILocation(line: 0, scope: !704, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 618, column: 23, scope: !1276)
!1356 = !DILocation(line: 106, column: 21, scope: !704, inlinedAt: !1355)
!1357 = !DILocation(line: 619, column: 16, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1276, file: !31, line: 619, column: 9)
!1359 = !{!1360, !473, i64 4}
!1360 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1361, i64 0, !473, i64 4, !473, i64 8}
!1361 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !475, i64 0}
!1362 = !DILocation(line: 619, column: 21, scope: !1358)
!1363 = !DILocation(line: 619, column: 9, scope: !1276)
!1364 = !DILocation(line: 0, scope: !1358)
!1365 = !DILocation(line: 624, column: 12, scope: !1276)
!1366 = !DILocation(line: 624, column: 17, scope: !1276)
!1367 = !{!1360, !473, i64 8}
!1368 = !DILocation(line: 0, scope: !1137, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 625, column: 18, scope: !1276)
!1370 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1369)
!1371 = !DILocation(line: 0, scope: !1147, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1369)
!1373 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1372)
!1374 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1369)
!1375 = !DILocation(line: 0, scope: !1154, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1369)
!1377 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1376)
!1378 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1369)
!1379 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1369)
!1380 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1369)
!1381 = !DILocation(line: 625, column: 12, scope: !1276)
!1382 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1369)
!1383 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1369)
!1384 = !DILocation(line: 0, scope: !1189, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1369)
!1386 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1385)
!1387 = !DILocation(line: 627, column: 13, scope: !1276)
!1388 = !{!1326, !473, i64 4}
!1389 = !DILocation(line: 627, column: 5, scope: !1276)
!1390 = !DILocation(line: 0, scope: !736, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 629, column: 23, scope: !1276)
!1392 = !DILocation(line: 110, column: 9, scope: !736, inlinedAt: !1391)
!1393 = !DILocation(line: 111, column: 16, scope: !736, inlinedAt: !1391)
!1394 = !DILocation(line: 111, column: 9, scope: !736, inlinedAt: !1391)
!1395 = !DILocation(line: 112, column: 13, scope: !746, inlinedAt: !1391)
!1396 = distinct !{!1396, !1394, !1397, !749}
!1397 = !DILocation(line: 113, column: 9, scope: !736, inlinedAt: !1391)
!1398 = !DILocation(line: 114, column: 9, scope: !736, inlinedAt: !1391)
!1399 = !DILocation(line: 631, column: 23, scope: !1276)
!1400 = !DILocation(line: 631, column: 5, scope: !1276)
!1401 = !DILocation(line: 634, column: 1, scope: !1276)
!1402 = !DILocalVariable(name: "this", arg: 1, scope: !1403, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1403 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !122, file: !31, line: 457, type: !129, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !132, retainedNodes: !1404)
!1404 = !{!1402}
!1405 = !DILocation(line: 0, scope: !1403, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 634, column: 1, scope: !1276)
!1407 = !DILocation(line: 0, scope: !760, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 457, column: 41, scope: !1409, inlinedAt: !1406)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !31, line: 457, column: 41)
!1410 = !DILocation(line: 101, column: 9, scope: !766, inlinedAt: !1408)
!1411 = !DILocation(line: 102, column: 9, scope: !766, inlinedAt: !1408)
!1412 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEjRNS2_15parking_controlE", scope: !32, file: !31, line: 636, type: !1277, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1422, !1425, !1426, !1429}
!1414 = !DILocalVariable(name: "addr", arg: 1, scope: !1412, file: !31, line: 636, type: !26)
!1415 = !DILocalVariable(name: "control", arg: 2, scope: !1412, file: !31, line: 636, type: !1279)
!1416 = !DILocalVariable(name: "bucket", scope: !1412, file: !31, line: 637, type: !927)
!1417 = !DILocalVariable(name: "data_location", scope: !1412, file: !31, line: 639, type: !136)
!1418 = !DILocalVariable(name: "prev", scope: !1412, file: !31, line: 640, type: !121)
!1419 = !DILocalVariable(name: "data", scope: !1412, file: !31, line: 641, type: !121)
!1420 = !DILocalVariable(name: "cur_addr", scope: !1421, file: !31, line: 643, type: !26)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !31, line: 642, column: 29)
!1422 = !DILocalVariable(name: "next", scope: !1423, file: !31, line: 646, type: !121)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !31, line: 645, column: 31)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !31, line: 645, column: 13)
!1425 = !DILocalVariable(name: "more_waiters", scope: !1423, file: !31, line: 649, type: !66)
!1426 = !DILocalVariable(name: "data2", scope: !1427, file: !31, line: 654, type: !121)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !31, line: 653, column: 20)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !31, line: 651, column: 17)
!1429 = !DILocalVariable(name: "cur_addr2", scope: !1430, file: !31, line: 656, type: !26)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !31, line: 655, column: 59)
!1431 = !DILocation(line: 0, scope: !1412)
!1432 = !DILocation(line: 637, column: 27, scope: !1412)
!1433 = !DILocation(line: 639, column: 42, scope: !1412)
!1434 = !DILocation(line: 641, column: 24, scope: !1412)
!1435 = !DILocation(line: 642, column: 5, scope: !1412)
!1436 = !DILocation(line: 639, column: 18, scope: !1412)
!1437 = !DILocation(line: 640, column: 17, scope: !1412)
!1438 = !DILocation(line: 641, column: 17, scope: !1412)
!1439 = !DILocation(line: 642, column: 17, scope: !1412)
!1440 = !DILocation(line: 644, column: 36, scope: !1421)
!1441 = !DILocation(line: 644, column: 9, scope: !1421)
!1442 = !DILocation(line: 0, scope: !1421)
!1443 = !DILocation(line: 645, column: 22, scope: !1424)
!1444 = !DILocation(line: 0, scope: !1424)
!1445 = !DILocation(line: 645, column: 13, scope: !1421)
!1446 = !DILocation(line: 0, scope: !1423)
!1447 = !DILocation(line: 647, column: 28, scope: !1423)
!1448 = !DILocation(line: 651, column: 24, scope: !1428)
!1449 = !DILocation(line: 651, column: 29, scope: !1428)
!1450 = !DILocation(line: 651, column: 17, scope: !1423)
!1451 = !DILocation(line: 0, scope: !1427)
!1452 = !DILocation(line: 655, column: 30, scope: !1427)
!1453 = !DILocation(line: 655, column: 17, scope: !1427)
!1454 = !DILocation(line: 652, column: 29, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1428, file: !31, line: 651, column: 38)
!1456 = !DILocation(line: 653, column: 13, scope: !1455)
!1457 = !DILocation(line: 657, column: 49, scope: !1430)
!1458 = !DILocation(line: 657, column: 21, scope: !1430)
!1459 = !DILocation(line: 0, scope: !1430)
!1460 = !DILocation(line: 658, column: 47, scope: !1430)
!1461 = !DILocation(line: 659, column: 36, scope: !1430)
!1462 = !DILocation(line: 655, column: 41, scope: !1427)
!1463 = distinct !{!1463, !1453, !1464, !749}
!1464 = !DILocation(line: 660, column: 17, scope: !1427)
!1465 = !DILocation(line: 663, column: 41, scope: !1423)
!1466 = !{!1326, !473, i64 8}
!1467 = !DILocation(line: 663, column: 33, scope: !1423)
!1468 = !DILocation(line: 663, column: 19, scope: !1423)
!1469 = !DILocation(line: 663, column: 31, scope: !1423)
!1470 = !DILocation(line: 0, scope: !896, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 665, column: 26, scope: !1423)
!1472 = !DILocation(line: 118, column: 26, scope: !896, inlinedAt: !1471)
!1473 = !DILocation(line: 118, column: 9, scope: !896, inlinedAt: !1471)
!1474 = !DILocation(line: 0, scope: !1137, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 666, column: 26, scope: !1423)
!1476 = !DILocation(line: 0, scope: !1147, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1475)
!1478 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1477)
!1479 = !DILocation(line: 0, scope: !1154, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1475)
!1481 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1480)
!1482 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1475)
!1483 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1475)
!1484 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1475)
!1485 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1475)
!1486 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1475)
!1487 = !DILocation(line: 0, scope: !1189, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1475)
!1489 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1488)
!1490 = !DILocation(line: 0, scope: !903, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 667, column: 26, scope: !1423)
!1492 = !DILocation(line: 122, column: 9, scope: !903, inlinedAt: !1491)
!1493 = !DILocation(line: 122, column: 21, scope: !903, inlinedAt: !1491)
!1494 = !DILocation(line: 123, column: 27, scope: !903, inlinedAt: !1491)
!1495 = !DILocation(line: 123, column: 9, scope: !903, inlinedAt: !1491)
!1496 = !DILocation(line: 0, scope: !912, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 668, column: 26, scope: !1423)
!1498 = !DILocation(line: 127, column: 9, scope: !912, inlinedAt: !1497)
!1499 = !DILocation(line: 671, column: 20, scope: !1423)
!1500 = distinct !{!1500, !1435, !1501, !749}
!1501 = !DILocation(line: 677, column: 5, scope: !1412)
!1502 = !DILocation(line: 679, column: 13, scope: !1412)
!1503 = !DILocation(line: 679, column: 5, scope: !1412)
!1504 = !DILocation(line: 0, scope: !1137, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 681, column: 18, scope: !1412)
!1506 = !DILocation(line: 0, scope: !1147, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1505)
!1508 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1507)
!1509 = !DILocation(line: 0, scope: !1154, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1505)
!1511 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1510)
!1512 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1505)
!1513 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1505)
!1514 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1505)
!1515 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1505)
!1516 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1505)
!1517 = !DILocation(line: 0, scope: !1189, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1505)
!1519 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1518)
!1520 = !DILocation(line: 684, column: 5, scope: !1412)
!1521 = !DILocation(line: 685, column: 1, scope: !1412)
!1522 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEjj", scope: !32, file: !31, line: 687, type: !1523, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!26, !26, !26}
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1534, !1536, !1537, !1538, !1540, !1541, !1546, !1548, !1550}
!1526 = !DILocalVariable(name: "addr", arg: 1, scope: !1522, file: !31, line: 687, type: !26)
!1527 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1522, file: !31, line: 687, type: !26)
!1528 = !DILocalVariable(name: "bucket", scope: !1522, file: !31, line: 688, type: !927)
!1529 = !DILocalVariable(name: "data_location", scope: !1522, file: !31, line: 690, type: !136)
!1530 = !DILocalVariable(name: "prev", scope: !1522, file: !31, line: 691, type: !121)
!1531 = !DILocalVariable(name: "data", scope: !1522, file: !31, line: 692, type: !121)
!1532 = !DILocalVariable(name: "waiters", scope: !1522, file: !31, line: 693, type: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 27, baseType: !24)
!1534 = !DILocalVariable(name: "temp_list_storage", scope: !1522, file: !31, line: 694, type: !1535)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !456)
!1536 = !DILocalVariable(name: "temp_list", scope: !1522, file: !31, line: 695, type: !136)
!1537 = !DILocalVariable(name: "max_waiters", scope: !1522, file: !31, line: 696, type: !1533)
!1538 = !DILocalVariable(name: "cur_addr", scope: !1539, file: !31, line: 699, type: !26)
!1539 = distinct !DILexicalBlock(scope: !1522, file: !31, line: 698, column: 29)
!1540 = !DILocalVariable(name: "next", scope: !1539, file: !31, line: 702, type: !121)
!1541 = !DILocalVariable(name: "temp", scope: !1542, file: !31, line: 711, type: !136)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !31, line: 710, column: 41)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !31, line: 710, column: 17)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !31, line: 703, column: 31)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !31, line: 703, column: 13)
!1546 = !DILocalVariable(name: "i", scope: !1547, file: !31, line: 713, type: !1533)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !31, line: 713, column: 17)
!1548 = !DILocalVariable(name: "i", scope: !1549, file: !31, line: 737, type: !1533)
!1549 = distinct !DILexicalBlock(scope: !1522, file: !31, line: 737, column: 5)
!1550 = !DILocalVariable(name: "i", scope: !1551, file: !31, line: 742, type: !1533)
!1551 = distinct !DILexicalBlock(scope: !1522, file: !31, line: 742, column: 5)
!1552 = !DILocation(line: 0, scope: !1522)
!1553 = !DILocation(line: 688, column: 27, scope: !1522)
!1554 = !DILocation(line: 690, column: 42, scope: !1522)
!1555 = !DILocation(line: 692, column: 24, scope: !1522)
!1556 = !DILocation(line: 694, column: 5, scope: !1522)
!1557 = !DILocation(line: 694, column: 17, scope: !1522)
!1558 = !DILocation(line: 695, column: 31, scope: !1522)
!1559 = !DILocation(line: 698, column: 17, scope: !1522)
!1560 = !DILocation(line: 698, column: 5, scope: !1522)
!1561 = !DILocation(line: 700, column: 36, scope: !1539)
!1562 = !DILocation(line: 700, column: 9, scope: !1539)
!1563 = !DILocation(line: 702, column: 34, scope: !1539)
!1564 = !DILocation(line: 0, scope: !1539)
!1565 = !DILocation(line: 703, column: 22, scope: !1545)
!1566 = !DILocation(line: 0, scope: !1545)
!1567 = !DILocation(line: 703, column: 13, scope: !1539)
!1568 = !DILocation(line: 706, column: 24, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1544, file: !31, line: 706, column: 17)
!1570 = !DILocation(line: 706, column: 29, scope: !1569)
!1571 = !DILocation(line: 706, column: 17, scope: !1544)
!1572 = !DILocation(line: 707, column: 29, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !31, line: 706, column: 38)
!1574 = !DILocation(line: 708, column: 13, scope: !1573)
!1575 = !DILocation(line: 710, column: 25, scope: !1543)
!1576 = !DILocation(line: 710, column: 17, scope: !1544)
!1577 = !DILocation(line: 0, scope: !1542)
!1578 = !DILocation(line: 712, column: 86, scope: !1542)
!1579 = !DILocation(line: 712, column: 44, scope: !1542)
!1580 = !DILocation(line: 712, column: 29, scope: !1542)
!1581 = !DILocation(line: 0, scope: !1547)
!1582 = !DILocation(line: 713, column: 38, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1547, file: !31, line: 713, column: 17)
!1584 = !DILocation(line: 713, column: 17, scope: !1547)
!1585 = !DILocation(line: 716, column: 29, scope: !1542)
!1586 = !DILocation(line: 717, column: 26, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1542, file: !31, line: 717, column: 21)
!1588 = !DILocation(line: 717, column: 21, scope: !1542)
!1589 = !DILocation(line: 714, column: 36, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !31, line: 713, column: 58)
!1591 = !DILocation(line: 714, column: 21, scope: !1590)
!1592 = !DILocation(line: 714, column: 34, scope: !1590)
!1593 = !DILocation(line: 713, column: 54, scope: !1583)
!1594 = distinct !{!1594, !1584, !1595, !749}
!1595 = !DILocation(line: 715, column: 17, scope: !1547)
!1596 = !DILocation(line: 718, column: 26, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1587, file: !31, line: 717, column: 52)
!1598 = !DILocation(line: 718, column: 21, scope: !1597)
!1599 = !DILocation(line: 719, column: 17, scope: !1597)
!1600 = !DILocation(line: 722, column: 19, scope: !1544)
!1601 = !DILocation(line: 722, column: 31, scope: !1544)
!1602 = !DILocation(line: 724, column: 30, scope: !1544)
!1603 = !DILocation(line: 724, column: 13, scope: !1544)
!1604 = !DILocation(line: 724, column: 34, scope: !1544)
!1605 = !DILocation(line: 0, scope: !896, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 725, column: 26, scope: !1544)
!1607 = !DILocation(line: 118, column: 26, scope: !896, inlinedAt: !1606)
!1608 = !DILocation(line: 118, column: 9, scope: !896, inlinedAt: !1606)
!1609 = !DILocation(line: 728, column: 9, scope: !1544)
!1610 = distinct !{!1610, !1560, !1611, !749}
!1611 = !DILocation(line: 733, column: 5, scope: !1522)
!1612 = !DILocation(line: 0, scope: !1137, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 735, column: 18, scope: !1522)
!1614 = !DILocation(line: 305, column: 28, scope: !1137, inlinedAt: !1613)
!1615 = !DILocation(line: 0, scope: !1147, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 305, column: 9, scope: !1137, inlinedAt: !1613)
!1617 = !DILocation(line: 65, column: 11, scope: !1147, inlinedAt: !1616)
!1618 = !DILocation(line: 307, column: 51, scope: !1137, inlinedAt: !1613)
!1619 = !DILocation(line: 0, scope: !1154, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 307, column: 25, scope: !1137, inlinedAt: !1613)
!1621 = !DILocation(line: 131, column: 12, scope: !1154, inlinedAt: !1620)
!1622 = !DILocation(line: 310, column: 39, scope: !1137, inlinedAt: !1613)
!1623 = !DILocation(line: 310, column: 57, scope: !1137, inlinedAt: !1613)
!1624 = !DILocation(line: 313, column: 31, scope: !1163, inlinedAt: !1613)
!1625 = !DILocation(line: 735, column: 12, scope: !1522)
!1626 = !DILocation(line: 314, column: 13, scope: !1166, inlinedAt: !1613)
!1627 = !DILocation(line: 315, column: 9, scope: !1166, inlinedAt: !1613)
!1628 = !DILocation(line: 0, scope: !1189, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 317, column: 9, scope: !1137, inlinedAt: !1613)
!1630 = !DILocation(line: 68, column: 5, scope: !1189, inlinedAt: !1629)
!1631 = !DILocation(line: 0, scope: !1549)
!1632 = !DILocation(line: 737, column: 26, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1549, file: !31, line: 737, column: 5)
!1634 = !DILocation(line: 737, column: 5, scope: !1549)
!1635 = !DILocation(line: 738, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !31, line: 737, column: 42)
!1637 = !DILocation(line: 0, scope: !903, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 738, column: 30, scope: !1636)
!1639 = !DILocation(line: 122, column: 9, scope: !903, inlinedAt: !1638)
!1640 = !DILocation(line: 122, column: 21, scope: !903, inlinedAt: !1638)
!1641 = !DILocation(line: 123, column: 27, scope: !903, inlinedAt: !1638)
!1642 = !DILocation(line: 123, column: 9, scope: !903, inlinedAt: !1638)
!1643 = !DILocation(line: 737, column: 38, scope: !1633)
!1644 = distinct !{!1644, !1634, !1645, !749}
!1645 = !DILocation(line: 739, column: 5, scope: !1549)
!1646 = !DILocation(line: 746, column: 19, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1522, file: !31, line: 746, column: 9)
!1648 = !DILocation(line: 746, column: 9, scope: !1522)
!1649 = !DILocation(line: 0, scope: !1551)
!1650 = !DILocation(line: 743, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !31, line: 742, column: 42)
!1652 = distinct !DILexicalBlock(scope: !1551, file: !31, line: 742, column: 5)
!1653 = !DILocation(line: 0, scope: !912, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 743, column: 30, scope: !1651)
!1655 = !DILocation(line: 127, column: 28, scope: !912, inlinedAt: !1654)
!1656 = !DILocation(line: 127, column: 9, scope: !912, inlinedAt: !1654)
!1657 = !DILocation(line: 742, column: 38, scope: !1652)
!1658 = !DILocation(line: 742, column: 26, scope: !1652)
!1659 = !DILocation(line: 742, column: 5, scope: !1551)
!1660 = distinct !{!1660, !1659, !1661, !749}
!1661 = !DILocation(line: 744, column: 5, scope: !1551)
!1662 = !DILocation(line: 747, column: 14, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1647, file: !31, line: 746, column: 45)
!1664 = !DILocation(line: 747, column: 9, scope: !1663)
!1665 = !DILocation(line: 748, column: 5, scope: !1663)
!1666 = !DILocation(line: 751, column: 1, scope: !1522)
!1667 = !DILocation(line: 750, column: 5, scope: !1522)
!1668 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEjjRNS2_15parking_controlEj", scope: !32, file: !31, line: 753, type: !1669, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!161, !26, !26, !1279, !26}
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1686}
!1672 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1668, file: !31, line: 753, type: !26)
!1673 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1668, file: !31, line: 753, type: !26)
!1674 = !DILocalVariable(name: "control", arg: 3, scope: !1668, file: !31, line: 753, type: !1279)
!1675 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1668, file: !31, line: 753, type: !26)
!1676 = !DILocalVariable(name: "buckets", scope: !1668, file: !31, line: 754, type: !983)
!1677 = !DILocalVariable(name: "action", scope: !1668, file: !31, line: 756, type: !148)
!1678 = !DILocalVariable(name: "data_location", scope: !1668, file: !31, line: 762, type: !136)
!1679 = !DILocalVariable(name: "prev", scope: !1668, file: !31, line: 763, type: !121)
!1680 = !DILocalVariable(name: "data", scope: !1668, file: !31, line: 764, type: !121)
!1681 = !DILocalVariable(name: "requeue", scope: !1668, file: !31, line: 765, type: !121)
!1682 = !DILocalVariable(name: "requeue_tail", scope: !1668, file: !31, line: 766, type: !121)
!1683 = !DILocalVariable(name: "wakeup", scope: !1668, file: !31, line: 767, type: !121)
!1684 = !DILocalVariable(name: "cur_addr", scope: !1685, file: !31, line: 770, type: !26)
!1685 = distinct !DILexicalBlock(scope: !1668, file: !31, line: 769, column: 29)
!1686 = !DILocalVariable(name: "next", scope: !1685, file: !31, line: 773, type: !121)
!1687 = !DILocation(line: 0, scope: !1668)
!1688 = !DILocation(line: 754, column: 5, scope: !1668)
!1689 = !DILocation(line: 754, column: 17, scope: !1668)
!1690 = !DILocation(line: 754, column: 27, scope: !1668)
!1691 = !DILocation(line: 756, column: 5, scope: !1668)
!1692 = !DILocation(line: 756, column: 21, scope: !1668)
!1693 = !DILocation(line: 0, scope: !1313, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 756, column: 21, scope: !1668)
!1695 = !DILocation(line: 577, column: 10, scope: !1313, inlinedAt: !1694)
!1696 = !DILocation(line: 578, column: 15, scope: !1313, inlinedAt: !1694)
!1697 = !DILocation(line: 757, column: 18, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1668, file: !31, line: 757, column: 9)
!1699 = !DILocation(line: 757, column: 27, scope: !1698)
!1700 = !DILocation(line: 757, column: 10, scope: !1698)
!1701 = !DILocation(line: 757, column: 9, scope: !1668)
!1702 = !DILocation(line: 758, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !31, line: 757, column: 46)
!1704 = !DILocation(line: 759, column: 9, scope: !1703)
!1705 = !DILocation(line: 762, column: 43, scope: !1668)
!1706 = !DILocation(line: 762, column: 48, scope: !1668)
!1707 = !DILocation(line: 764, column: 24, scope: !1668)
!1708 = !DILocation(line: 769, column: 17, scope: !1668)
!1709 = !DILocation(line: 769, column: 5, scope: !1668)
!1710 = !DILocation(line: 771, column: 36, scope: !1685)
!1711 = !DILocation(line: 771, column: 9, scope: !1685)
!1712 = !DILocation(line: 773, column: 34, scope: !1685)
!1713 = !DILocation(line: 0, scope: !1685)
!1714 = !DILocation(line: 774, column: 22, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1685, file: !31, line: 774, column: 13)
!1716 = !DILocation(line: 774, column: 13, scope: !1685)
!1717 = !DILocation(line: 775, column: 28, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !31, line: 774, column: 36)
!1719 = !DILocation(line: 777, column: 25, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1718, file: !31, line: 777, column: 17)
!1721 = !DILocation(line: 777, column: 30, scope: !1720)
!1722 = !DILocation(line: 777, column: 35, scope: !1720)
!1723 = !DILocation(line: 777, column: 17, scope: !1718)
!1724 = !DILocation(line: 778, column: 35, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !31, line: 777, column: 44)
!1726 = !DILocation(line: 779, column: 13, scope: !1725)
!1727 = !DILocation(line: 781, column: 35, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1718, file: !31, line: 781, column: 17)
!1729 = !DILocation(line: 784, column: 29, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !31, line: 784, column: 21)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !31, line: 783, column: 20)
!1732 = !DILocation(line: 784, column: 21, scope: !1731)
!1733 = !DILocation(line: 787, column: 35, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !31, line: 786, column: 24)
!1735 = !DILocation(line: 787, column: 40, scope: !1734)
!1736 = !DILocalVariable(name: "addr", arg: 1, scope: !1737, file: !31, line: 149, type: !173)
!1737 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPjS4_", scope: !634, file: !31, line: 149, type: !1738, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !173, !173}
!1740 = !{!1736, !1741}
!1741 = !DILocalVariable(name: "val", arg: 2, scope: !1737, file: !31, line: 149, type: !173)
!1742 = !DILocation(line: 0, scope: !1737, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 791, column: 17, scope: !1731)
!1744 = !DILocation(line: 150, column: 11, scope: !1737, inlinedAt: !1743)
!1745 = !DILocation(line: 765, column: 17, scope: !1668)
!1746 = !DILocation(line: 766, column: 17, scope: !1668)
!1747 = distinct !{!1747, !1709, !1748, !749}
!1748 = !DILocation(line: 800, column: 5, scope: !1668)
!1749 = !DILocation(line: 802, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1668, file: !31, line: 802, column: 9)
!1751 = !DILocation(line: 802, column: 9, scope: !1668)
!1752 = !DILocation(line: 803, column: 23, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !31, line: 802, column: 29)
!1754 = !DILocation(line: 803, column: 28, scope: !1753)
!1755 = !DILocation(line: 804, column: 21, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !31, line: 804, column: 13)
!1757 = !DILocation(line: 804, column: 24, scope: !1756)
!1758 = !DILocation(line: 804, column: 29, scope: !1756)
!1759 = !DILocation(line: 804, column: 13, scope: !1753)
!1760 = !DILocation(line: 807, column: 24, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !31, line: 806, column: 16)
!1762 = !DILocation(line: 807, column: 30, scope: !1761)
!1763 = !DILocation(line: 0, scope: !1756)
!1764 = !DILocation(line: 809, column: 20, scope: !1753)
!1765 = !DILocation(line: 809, column: 25, scope: !1753)
!1766 = !DILocation(line: 810, column: 5, scope: !1753)
!1767 = !DILocation(line: 812, column: 13, scope: !1668)
!1768 = !{!1326, !473, i64 12}
!1769 = !DILocation(line: 812, column: 55, scope: !1668)
!1770 = !DILocation(line: 812, column: 5, scope: !1668)
!1771 = !DILocation(line: 814, column: 9, scope: !1668)
!1772 = !DILocation(line: 815, column: 17, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !31, line: 814, column: 28)
!1774 = distinct !DILexicalBlock(scope: !1668, file: !31, line: 814, column: 9)
!1775 = !DILocation(line: 815, column: 29, scope: !1773)
!1776 = !DILocation(line: 0, scope: !896, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 816, column: 24, scope: !1773)
!1778 = !DILocation(line: 118, column: 26, scope: !896, inlinedAt: !1777)
!1779 = !DILocation(line: 118, column: 9, scope: !896, inlinedAt: !1777)
!1780 = !DILocation(line: 817, column: 9, scope: !1773)
!1781 = !DILocation(line: 0, scope: !903, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 818, column: 24, scope: !1773)
!1783 = !DILocation(line: 122, column: 9, scope: !903, inlinedAt: !1782)
!1784 = !DILocation(line: 122, column: 21, scope: !903, inlinedAt: !1782)
!1785 = !DILocation(line: 123, column: 27, scope: !903, inlinedAt: !1782)
!1786 = !DILocation(line: 123, column: 9, scope: !903, inlinedAt: !1782)
!1787 = !DILocation(line: 0, scope: !912, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 819, column: 24, scope: !1773)
!1789 = !DILocation(line: 127, column: 9, scope: !912, inlinedAt: !1788)
!1790 = !DILocation(line: 820, column: 5, scope: !1773)
!1791 = !DILocation(line: 821, column: 9, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1774, file: !31, line: 820, column: 12)
!1793 = !DILocation(line: 824, column: 30, scope: !1668)
!1794 = !DILocation(line: 824, column: 12, scope: !1668)
!1795 = !DILocation(line: 825, column: 1, scope: !1668)
!1796 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 840, type: !145, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1797 = !{!1798, !1799, !1800, !1801}
!1798 = !DILocalVariable(name: "control", arg: 1, scope: !1796, file: !31, line: 840, type: !15)
!1799 = !DILocalVariable(name: "action", arg: 2, scope: !1796, file: !31, line: 840, type: !147)
!1800 = !DILocalVariable(name: "mutex_control", scope: !1796, file: !31, line: 841, type: !137)
!1801 = !DILocalVariable(name: "result", scope: !1796, file: !31, line: 843, type: !26)
!1802 = !DILocation(line: 0, scope: !1796)
!1803 = !DILocation(line: 844, column: 40, scope: !1796)
!1804 = !{!1805, !473, i64 16}
!1805 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !473, i64 16}
!1806 = !DILocation(line: 844, column: 5, scope: !1796)
!1807 = !DILocation(line: 845, column: 19, scope: !1796)
!1808 = !DILocation(line: 845, column: 5, scope: !1796)
!1809 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !32, file: !31, line: 849, type: !159, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815}
!1811 = !DILocalVariable(name: "control", arg: 1, scope: !1809, file: !31, line: 849, type: !15)
!1812 = !DILocalVariable(name: "unparked", arg: 2, scope: !1809, file: !31, line: 849, type: !161)
!1813 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1809, file: !31, line: 849, type: !66)
!1814 = !DILocalVariable(name: "mutex_control", scope: !1809, file: !31, line: 850, type: !137)
!1815 = !DILocalVariable(name: "return_state", scope: !1809, file: !31, line: 853, type: !26)
!1816 = !DILocation(line: 0, scope: !1809)
!1817 = !DILocation(line: 853, column: 30, scope: !1809)
!1818 = !DILocation(line: 854, column: 41, scope: !1809)
!1819 = !DILocalVariable(name: "addr", arg: 1, scope: !1820, file: !31, line: 154, type: !564)
!1820 = distinct !DISubprogram(name: "atomic_store_release<unsigned int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIjEEvPT_S6_", scope: !634, file: !31, line: 154, type: !803, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !652, retainedNodes: !1821)
!1821 = !{!1819, !1822}
!1822 = !DILocalVariable(name: "val", arg: 2, scope: !1820, file: !31, line: 154, type: !564)
!1823 = !DILocation(line: 0, scope: !1820, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 854, column: 5, scope: !1809)
!1825 = !DILocation(line: 155, column: 11, scope: !1820, inlinedAt: !1824)
!1826 = !DILocation(line: 156, column: 5, scope: !1820, inlinedAt: !1824)
!1827 = !DILocation(line: 856, column: 5, scope: !1809)
!1828 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !32, file: !31, line: 968, type: !159, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834}
!1830 = !DILocalVariable(name: "control", arg: 1, scope: !1828, file: !31, line: 968, type: !15)
!1831 = !DILocalVariable(name: "unparked", arg: 2, scope: !1828, file: !31, line: 968, type: !161)
!1832 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1828, file: !31, line: 968, type: !66)
!1833 = !DILocalVariable(name: "signal_control", scope: !1828, file: !31, line: 969, type: !178)
!1834 = !DILocalVariable(name: "val", scope: !1835, file: !31, line: 972, type: !26)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !31, line: 971, column: 24)
!1836 = distinct !DILexicalBlock(scope: !1828, file: !31, line: 971, column: 9)
!1837 = !DILocation(line: 0, scope: !1828)
!1838 = !DILocation(line: 971, column: 9, scope: !1828)
!1839 = !DILocation(line: 0, scope: !1835)
!1840 = !DILocation(line: 973, column: 46, scope: !1835)
!1841 = !{!1842, !473, i64 16}
!1842 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !473, i64 16, !473, i64 20}
!1843 = !DILocation(line: 0, scope: !1737, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 973, column: 9, scope: !1835)
!1845 = !DILocation(line: 150, column: 11, scope: !1737, inlinedAt: !1844)
!1846 = !DILocation(line: 974, column: 5, scope: !1835)
!1847 = !DILocation(line: 979, column: 5, scope: !1828)
!1848 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 996, type: !145, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1849 = !{!1850, !1851, !1852, !1853}
!1850 = !DILocalVariable(name: "control", arg: 1, scope: !1848, file: !31, line: 996, type: !15)
!1851 = !DILocalVariable(name: "action", arg: 2, scope: !1848, file: !31, line: 996, type: !147)
!1852 = !DILocalVariable(name: "broadcast_control", scope: !1848, file: !31, line: 997, type: !203)
!1853 = !DILocalVariable(name: "val", scope: !1848, file: !31, line: 999, type: !26)
!1854 = !DILocation(line: 0, scope: !1848)
!1855 = !DILocation(line: 1000, column: 44, scope: !1848)
!1856 = !{!1857, !473, i64 16}
!1857 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !473, i64 16, !473, i64 20}
!1858 = !DILocation(line: 1000, column: 5, scope: !1848)
!1859 = !DILocation(line: 1004, column: 46, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1848, file: !31, line: 1004, column: 9)
!1861 = !{!1857, !473, i64 20}
!1862 = !DILocation(line: 1004, column: 16, scope: !1860)
!1863 = !DILocation(line: 1004, column: 13, scope: !1860)
!1864 = !DILocation(line: 1004, column: 9, scope: !1848)
!1865 = !DILocation(line: 0, scope: !1737, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 1009, column: 5, scope: !1848)
!1867 = !DILocation(line: 150, column: 11, scope: !1737, inlinedAt: !1866)
!1868 = !DILocalVariable(name: "this", arg: 1, scope: !1869, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1869 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !185, file: !31, line: 938, type: !196, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !195, retainedNodes: !1870)
!1870 = !{!1868, !1871, !1872}
!1871 = !DILocalVariable(name: "val", scope: !1869, file: !31, line: 939, type: !26)
!1872 = !DILocalVariable(name: "desired", scope: !1873, file: !31, line: 946, type: !26)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !31, line: 941, column: 22)
!1874 = !DILocation(line: 0, scope: !1869, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 1011, column: 52, scope: !1848)
!1876 = !DILocation(line: 940, column: 30, scope: !1869, inlinedAt: !1875)
!1877 = !DILocation(line: 940, column: 9, scope: !1869, inlinedAt: !1875)
!1878 = !DILocation(line: 941, column: 9, scope: !1869, inlinedAt: !1875)
!1879 = !DILocation(line: 942, column: 23, scope: !1880, inlinedAt: !1875)
!1880 = distinct !DILexicalBlock(scope: !1873, file: !31, line: 942, column: 17)
!1881 = !DILocation(line: 942, column: 18, scope: !1880, inlinedAt: !1875)
!1882 = !DILocation(line: 942, column: 17, scope: !1873, inlinedAt: !1875)
!1883 = !DILocation(line: 946, column: 37, scope: !1873, inlinedAt: !1875)
!1884 = !DILocation(line: 0, scope: !1873, inlinedAt: !1875)
!1885 = !DILocalVariable(name: "addr", arg: 1, scope: !1886, file: !31, line: 122, type: !173)
!1886 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPjS4_S4_", scope: !634, file: !31, line: 122, type: !635, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1887)
!1887 = !{!1885, !1888, !1889}
!1888 = !DILocalVariable(name: "expected", arg: 2, scope: !1886, file: !31, line: 122, type: !173)
!1889 = !DILocalVariable(name: "desired", arg: 3, scope: !1886, file: !31, line: 122, type: !173)
!1890 = !DILocation(line: 0, scope: !1886, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 947, column: 17, scope: !1892, inlinedAt: !1875)
!1892 = distinct !DILexicalBlock(scope: !1873, file: !31, line: 947, column: 17)
!1893 = !DILocation(line: 0, scope: !644, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 123, column: 12, scope: !1886, inlinedAt: !1891)
!1895 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1894)
!1896 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1894)
!1897 = distinct !{!1897, !1878, !1898}
!1898 = !DILocation(line: 950, column: 9, scope: !1869, inlinedAt: !1875)
!1899 = !DILocation(line: 1011, column: 12, scope: !1848)
!1900 = !DILocation(line: 1011, column: 23, scope: !1848)
!1901 = !DILocation(line: 1013, column: 5, scope: !1848)
!1902 = !DILocation(line: 1014, column: 1, scope: !1848)
!1903 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !32, file: !31, line: 1016, type: !164, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909}
!1905 = !DILocalVariable(name: "control", arg: 1, scope: !1903, file: !31, line: 1016, type: !15)
!1906 = !DILocalVariable(name: "action", arg: 2, scope: !1903, file: !31, line: 1016, type: !166)
!1907 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1903, file: !31, line: 1016, type: !66)
!1908 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1903, file: !31, line: 1016, type: !66)
!1909 = !DILocalVariable(name: "broadcast_control", scope: !1903, file: !31, line: 1017, type: !203)
!1910 = !DILocation(line: 0, scope: !1903)
!1911 = !DILocation(line: 1019, column: 16, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1903, file: !31, line: 1019, column: 9)
!1913 = !DILocation(line: 1019, column: 27, scope: !1912)
!1914 = !DILocation(line: 1020, column: 28, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !31, line: 1019, column: 45)
!1916 = !DILocalVariable(name: "this", arg: 1, scope: !1917, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1917 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !185, file: !31, line: 953, type: !189, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !198, retainedNodes: !1918)
!1918 = !{!1916}
!1919 = !DILocation(line: 0, scope: !1917, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 1020, column: 35, scope: !1915)
!1921 = !DILocation(line: 954, column: 34, scope: !1917, inlinedAt: !1920)
!1922 = !DILocalVariable(name: "addr", arg: 1, scope: !1923, file: !31, line: 145, type: !173)
!1923 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPjj", scope: !634, file: !31, line: 145, type: !888, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1924)
!1924 = !{!1922, !1925}
!1925 = !DILocalVariable(name: "val", arg: 2, scope: !1923, file: !31, line: 145, type: !26)
!1926 = !DILocation(line: 0, scope: !1923, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 954, column: 9, scope: !1917, inlinedAt: !1920)
!1928 = !DILocation(line: 146, column: 12, scope: !1923, inlinedAt: !1927)
!1929 = !DILocation(line: 1021, column: 5, scope: !1915)
!1930 = !DILocation(line: 1022, column: 1, scope: !1903)
!1931 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !32, file: !31, line: 1038, type: !145, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1932)
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DILocalVariable(name: "control", arg: 1, scope: !1931, file: !31, line: 1038, type: !15)
!1934 = !DILocalVariable(name: "action", arg: 2, scope: !1931, file: !31, line: 1038, type: !147)
!1935 = !DILocalVariable(name: "wait_control", scope: !1931, file: !31, line: 1039, type: !213)
!1936 = !DILocalVariable(name: "val", scope: !1931, file: !31, line: 1041, type: !26)
!1937 = !DILocation(line: 0, scope: !1931)
!1938 = !DILocation(line: 1042, column: 39, scope: !1931)
!1939 = !{!1940, !473, i64 16}
!1940 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !473, i64 16, !473, i64 20}
!1941 = !DILocation(line: 1042, column: 5, scope: !1931)
!1942 = !DILocation(line: 1044, column: 13, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1931, file: !31, line: 1044, column: 9)
!1944 = !DILocation(line: 0, scope: !1943)
!1945 = !{!1940, !473, i64 20}
!1946 = !DILocation(line: 1044, column: 9, scope: !1931)
!1947 = !DILocation(line: 1047, column: 20, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !31, line: 1047, column: 16)
!1949 = !DILocation(line: 1047, column: 16, scope: !1943)
!1950 = !DILocation(line: 1049, column: 16, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !31, line: 1047, column: 55)
!1952 = !DILocation(line: 1050, column: 9, scope: !1951)
!1953 = !DILocation(line: 1054, column: 1, scope: !1931)
!1954 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !32, file: !31, line: 1056, type: !13, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "control", arg: 1, scope: !1954, file: !31, line: 1056, type: !15)
!1957 = !DILocalVariable(name: "wait_control", scope: !1954, file: !31, line: 1057, type: !213)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocation(line: 1059, column: 19, scope: !1954)
!1960 = !DILocalVariable(name: "this", arg: 1, scope: !1961, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1961 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !185, file: !31, line: 929, type: !189, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !194, retainedNodes: !1962)
!1962 = !{!1960, !1963, !1964}
!1963 = !DILocalVariable(name: "expected", scope: !1961, file: !31, line: 930, type: !26)
!1964 = !DILocalVariable(name: "desired", scope: !1961, file: !31, line: 931, type: !26)
!1965 = !DILocation(line: 0, scope: !1961, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 1059, column: 26, scope: !1954)
!1967 = !DILocation(line: 933, column: 47, scope: !1968, inlinedAt: !1966)
!1968 = distinct !DILexicalBlock(scope: !1961, file: !31, line: 933, column: 13)
!1969 = !DILocation(line: 0, scope: !723, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 933, column: 14, scope: !1968, inlinedAt: !1966)
!1971 = !DILocation(line: 0, scope: !644, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 114, column: 12, scope: !723, inlinedAt: !1970)
!1973 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1972)
!1974 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1972)
!1975 = !DILocation(line: 933, column: 13, scope: !1961, inlinedAt: !1966)
!1976 = !DILocalVariable(name: "this", arg: 1, scope: !1977, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1977 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !185, file: !31, line: 906, type: !189, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !192, retainedNodes: !1978)
!1978 = !{!1976, !1979, !1980, !1981}
!1979 = !DILocalVariable(name: "expected", scope: !1977, file: !31, line: 907, type: !26)
!1980 = !DILocalVariable(name: "desired", scope: !1977, file: !31, line: 908, type: !26)
!1981 = !DILocalVariable(name: "control", scope: !1977, file: !31, line: 915, type: !138)
!1982 = !DILocation(line: 0, scope: !1977, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 934, column: 13, scope: !1984, inlinedAt: !1966)
!1984 = distinct !DILexicalBlock(scope: !1968, file: !31, line: 933, column: 76)
!1985 = !DILocalVariable(name: "addr", arg: 1, scope: !1986, file: !31, line: 109, type: !173)
!1986 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPjS4_S4_", scope: !634, file: !31, line: 109, type: !635, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1987 = !{!1985, !1988, !1989}
!1988 = !DILocalVariable(name: "expected", arg: 2, scope: !1986, file: !31, line: 109, type: !173)
!1989 = !DILocalVariable(name: "desired", arg: 3, scope: !1986, file: !31, line: 109, type: !173)
!1990 = !DILocation(line: 0, scope: !1986, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 911, column: 13, scope: !1992, inlinedAt: !1983)
!1992 = distinct !DILexicalBlock(scope: !1977, file: !31, line: 911, column: 13)
!1993 = !DILocation(line: 0, scope: !644, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 110, column: 12, scope: !1986, inlinedAt: !1991)
!1995 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !1994)
!1996 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !1994)
!1997 = !DILocation(line: 911, column: 13, scope: !1977, inlinedAt: !1983)
!1998 = !DILocation(line: 915, column: 9, scope: !1977, inlinedAt: !1983)
!1999 = !DILocation(line: 915, column: 31, scope: !1977, inlinedAt: !1983)
!2000 = !DILocalVariable(name: "this", arg: 1, scope: !2001, type: !137, flags: DIFlagArtificial | DIFlagObjectPointer)
!2001 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPj", scope: !138, file: !31, line: 832, type: !175, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !174, retainedNodes: !2002)
!2002 = !{!2000, !2003}
!2003 = !DILocalVariable(name: "lock_state", arg: 2, scope: !2001, file: !31, line: 832, type: !173)
!2004 = !DILocation(line: 0, scope: !2001, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 915, column: 31, scope: !1977, inlinedAt: !1983)
!2006 = !DILocalVariable(name: "this", arg: 1, scope: !2007, type: !2009, flags: DIFlagArtificial | DIFlagObjectPointer)
!2007 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !141, file: !31, line: 598, type: !169, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !168, retainedNodes: !2008)
!2008 = !{!2006}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!2010 = !DILocation(line: 0, scope: !2007, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 832, column: 19, scope: !2001, inlinedAt: !2005)
!2012 = !DILocation(line: 599, column: 11, scope: !2007, inlinedAt: !2011)
!2013 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2011)
!2014 = !DILocation(line: 600, column: 11, scope: !2007, inlinedAt: !2011)
!2015 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2011)
!2016 = !DILocation(line: 833, column: 11, scope: !2001, inlinedAt: !2005)
!2017 = !DILocation(line: 834, column: 18, scope: !2018, inlinedAt: !2005)
!2018 = distinct !DILexicalBlock(scope: !2001, file: !31, line: 833, column: 34)
!2019 = !DILocation(line: 835, column: 16, scope: !2018, inlinedAt: !2005)
!2020 = !DILocation(line: 916, column: 20, scope: !1977, inlinedAt: !1983)
!2021 = !DILocation(line: 916, column: 37, scope: !1977, inlinedAt: !1983)
!2022 = !DILocation(line: 916, column: 9, scope: !1977, inlinedAt: !1983)
!2023 = !DILocation(line: 917, column: 5, scope: !1977, inlinedAt: !1983)
!2024 = !DILocation(line: 1060, column: 1, scope: !1954)
!2025 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !32, file: !31, line: 1062, type: !159, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031}
!2027 = !DILocalVariable(name: "control", arg: 1, scope: !2025, file: !31, line: 1062, type: !15)
!2028 = !DILocalVariable(name: "unparked", arg: 2, scope: !2025, file: !31, line: 1062, type: !161)
!2029 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !2025, file: !31, line: 1062, type: !66)
!2030 = !DILocalVariable(name: "wait_control", scope: !2025, file: !31, line: 1063, type: !213)
!2031 = !DILocalVariable(name: "val", scope: !2032, file: !31, line: 1066, type: !26)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !31, line: 1065, column: 24)
!2033 = distinct !DILexicalBlock(scope: !2025, file: !31, line: 1065, column: 9)
!2034 = !DILocation(line: 0, scope: !2025)
!2035 = !DILocation(line: 1065, column: 9, scope: !2025)
!2036 = !DILocation(line: 0, scope: !2032)
!2037 = !DILocation(line: 1067, column: 44, scope: !2032)
!2038 = !DILocation(line: 0, scope: !1737, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 1067, column: 9, scope: !2032)
!2040 = !DILocation(line: 150, column: 11, scope: !1737, inlinedAt: !2039)
!2041 = !DILocation(line: 1068, column: 5, scope: !2032)
!2042 = !DILocation(line: 1069, column: 5, scope: !2025)
!2043 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !31, file: !31, line: 1131, type: !2044, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !240}
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "mutex", arg: 1, scope: !2043, file: !31, line: 1131, type: !240)
!2048 = !DILocalVariable(name: "fast_mutex", scope: !2043, file: !31, line: 1132, type: !184)
!2049 = !DILocation(line: 0, scope: !2043)
!2050 = !DILocalVariable(name: "this", arg: 1, scope: !2051, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!2051 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !185, file: !31, line: 920, type: !189, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !193, retainedNodes: !2052)
!2052 = !{!2050, !2053, !2054}
!2053 = !DILocalVariable(name: "expected", scope: !2051, file: !31, line: 921, type: !26)
!2054 = !DILocalVariable(name: "desired", scope: !2051, file: !31, line: 922, type: !26)
!2055 = !DILocation(line: 0, scope: !2051, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 1134, column: 17, scope: !2043)
!2057 = !DILocation(line: 924, column: 47, scope: !2058, inlinedAt: !2056)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !31, line: 924, column: 13)
!2059 = !DILocation(line: 0, scope: !633, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 924, column: 14, scope: !2058, inlinedAt: !2056)
!2061 = !DILocation(line: 0, scope: !644, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !2060)
!2063 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2062)
!2064 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2062)
!2065 = !DILocation(line: 924, column: 13, scope: !2051, inlinedAt: !2056)
!2066 = !DILocalVariable(name: "this", arg: 1, scope: !2067, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!2067 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !185, file: !31, line: 862, type: !189, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !188, retainedNodes: !2068)
!2068 = !{!2066, !2069, !2070, !2071, !2075, !2078, !2079}
!2069 = !DILocalVariable(name: "spinner", scope: !2067, file: !31, line: 864, type: !604)
!2070 = !DILocalVariable(name: "expected", scope: !2067, file: !31, line: 865, type: !26)
!2071 = !DILocalVariable(name: "desired", scope: !2072, file: !31, line: 870, type: !26)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !31, line: 869, column: 41)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !31, line: 869, column: 17)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !31, line: 868, column: 22)
!2075 = !DILocalVariable(name: "desired", scope: !2076, file: !31, line: 888, type: !26)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !31, line: 887, column: 47)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !31, line: 887, column: 17)
!2078 = !DILocalVariable(name: "control", scope: !2074, file: !31, line: 895, type: !138)
!2079 = !DILocalVariable(name: "result", scope: !2074, file: !31, line: 896, type: !26)
!2080 = !DILocation(line: 0, scope: !2067, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 925, column: 13, scope: !2082, inlinedAt: !2056)
!2082 = distinct !DILexicalBlock(scope: !2058, file: !31, line: 924, column: 76)
!2083 = !DILocation(line: 866, column: 9, scope: !2067, inlinedAt: !2081)
!2084 = !DILocation(line: 868, column: 9, scope: !2067, inlinedAt: !2081)
!2085 = !DILocation(line: 869, column: 17, scope: !2074, inlinedAt: !2081)
!2086 = !DILocation(line: 869, column: 28, scope: !2073, inlinedAt: !2081)
!2087 = !DILocation(line: 869, column: 18, scope: !2073, inlinedAt: !2081)
!2088 = !DILocation(line: 870, column: 46, scope: !2072, inlinedAt: !2081)
!2089 = !DILocation(line: 0, scope: !2072, inlinedAt: !2081)
!2090 = !DILocation(line: 0, scope: !633, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 871, column: 21, scope: !2092, inlinedAt: !2081)
!2092 = distinct !DILexicalBlock(scope: !2072, file: !31, line: 871, column: 21)
!2093 = !DILocation(line: 0, scope: !644, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !2091)
!2095 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2094)
!2096 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2094)
!2097 = !DILocation(line: 0, scope: !662, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 880, column: 25, scope: !2099, inlinedAt: !2081)
!2099 = distinct !DILexicalBlock(scope: !2074, file: !31, line: 880, column: 17)
!2100 = !DILocation(line: 238, column: 24, scope: !671, inlinedAt: !2098)
!2101 = !DILocation(line: 238, column: 13, scope: !662, inlinedAt: !2098)
!2102 = !DILocation(line: 241, column: 27, scope: !662, inlinedAt: !2098)
!2103 = !DILocation(line: 880, column: 17, scope: !2074, inlinedAt: !2081)
!2104 = !DILocation(line: 239, column: 23, scope: !670, inlinedAt: !2098)
!2105 = !DILocation(line: 881, column: 17, scope: !2106, inlinedAt: !2081)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !31, line: 880, column: 40)
!2107 = !DILocation(line: 882, column: 17, scope: !2106, inlinedAt: !2081)
!2108 = !DILocation(line: 883, column: 17, scope: !2106, inlinedAt: !2081)
!2109 = !DILocation(line: 887, column: 27, scope: !2077, inlinedAt: !2081)
!2110 = !DILocation(line: 887, column: 41, scope: !2077, inlinedAt: !2081)
!2111 = !DILocation(line: 887, column: 17, scope: !2074, inlinedAt: !2081)
!2112 = !DILocation(line: 888, column: 46, scope: !2076, inlinedAt: !2081)
!2113 = !DILocation(line: 0, scope: !2076, inlinedAt: !2081)
!2114 = !DILocation(line: 0, scope: !1886, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 889, column: 22, scope: !2116, inlinedAt: !2081)
!2116 = distinct !DILexicalBlock(scope: !2076, file: !31, line: 889, column: 21)
!2117 = !DILocation(line: 0, scope: !644, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 123, column: 12, scope: !1886, inlinedAt: !2115)
!2119 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2118)
!2120 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2118)
!2121 = !DILocation(line: 895, column: 13, scope: !2074, inlinedAt: !2081)
!2122 = !DILocation(line: 895, column: 35, scope: !2074, inlinedAt: !2081)
!2123 = !DILocation(line: 0, scope: !2001, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 895, column: 35, scope: !2074, inlinedAt: !2081)
!2125 = !DILocation(line: 0, scope: !2007, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 832, column: 19, scope: !2001, inlinedAt: !2124)
!2127 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2126)
!2128 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2126)
!2129 = !DILocation(line: 833, column: 11, scope: !2001, inlinedAt: !2124)
!2130 = !DILocation(line: 834, column: 18, scope: !2018, inlinedAt: !2124)
!2131 = !DILocation(line: 835, column: 16, scope: !2018, inlinedAt: !2124)
!2132 = !DILocation(line: 896, column: 32, scope: !2074, inlinedAt: !2081)
!2133 = !DILocation(line: 0, scope: !2074, inlinedAt: !2081)
!2134 = !DILocation(line: 897, column: 24, scope: !2135, inlinedAt: !2081)
!2135 = distinct !DILexicalBlock(scope: !2074, file: !31, line: 897, column: 17)
!2136 = !DILocation(line: 897, column: 17, scope: !2074, inlinedAt: !2081)
!2137 = !DILocation(line: 902, column: 13, scope: !2074, inlinedAt: !2081)
!2138 = !DILocation(line: 903, column: 9, scope: !2067, inlinedAt: !2081)
!2139 = distinct !{!2139, !2084, !2138}
!2140 = !DILocation(line: 1135, column: 1, scope: !2043)
!2141 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !31, file: !31, line: 1137, type: !2044, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2142)
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "mutex", arg: 1, scope: !2141, file: !31, line: 1137, type: !240)
!2144 = !DILocalVariable(name: "fast_mutex", scope: !2141, file: !31, line: 1138, type: !184)
!2145 = !DILocation(line: 0, scope: !2141)
!2146 = !DILocation(line: 0, scope: !1961, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 1140, column: 17, scope: !2141)
!2148 = !DILocation(line: 933, column: 47, scope: !1968, inlinedAt: !2147)
!2149 = !DILocation(line: 0, scope: !723, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 933, column: 14, scope: !1968, inlinedAt: !2147)
!2151 = !DILocation(line: 0, scope: !644, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 114, column: 12, scope: !723, inlinedAt: !2150)
!2153 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2152)
!2154 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2152)
!2155 = !DILocation(line: 933, column: 13, scope: !1961, inlinedAt: !2147)
!2156 = !DILocation(line: 0, scope: !1977, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 934, column: 13, scope: !1984, inlinedAt: !2147)
!2158 = !DILocation(line: 0, scope: !1986, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 911, column: 13, scope: !1992, inlinedAt: !2157)
!2160 = !DILocation(line: 0, scope: !644, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 110, column: 12, scope: !1986, inlinedAt: !2159)
!2162 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2161)
!2163 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2161)
!2164 = !DILocation(line: 911, column: 13, scope: !1977, inlinedAt: !2157)
!2165 = !DILocation(line: 915, column: 9, scope: !1977, inlinedAt: !2157)
!2166 = !DILocation(line: 915, column: 31, scope: !1977, inlinedAt: !2157)
!2167 = !DILocation(line: 0, scope: !2001, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 915, column: 31, scope: !1977, inlinedAt: !2157)
!2169 = !DILocation(line: 0, scope: !2007, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 832, column: 19, scope: !2001, inlinedAt: !2168)
!2171 = !DILocation(line: 599, column: 11, scope: !2007, inlinedAt: !2170)
!2172 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2170)
!2173 = !DILocation(line: 600, column: 11, scope: !2007, inlinedAt: !2170)
!2174 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2170)
!2175 = !DILocation(line: 833, column: 11, scope: !2001, inlinedAt: !2168)
!2176 = !DILocation(line: 834, column: 18, scope: !2018, inlinedAt: !2168)
!2177 = !DILocation(line: 835, column: 16, scope: !2018, inlinedAt: !2168)
!2178 = !DILocation(line: 916, column: 20, scope: !1977, inlinedAt: !2157)
!2179 = !DILocation(line: 916, column: 37, scope: !1977, inlinedAt: !2157)
!2180 = !DILocation(line: 916, column: 9, scope: !1977, inlinedAt: !2157)
!2181 = !DILocation(line: 917, column: 5, scope: !1977, inlinedAt: !2157)
!2182 = !DILocation(line: 1141, column: 1, scope: !2141)
!2183 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !31, file: !31, line: 1143, type: !2184, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "cond", arg: 1, scope: !2183, file: !31, line: 1143, type: !2186)
!2189 = !DILocalVariable(name: "fast_cond", scope: !2183, file: !31, line: 1144, type: !223)
!2190 = !DILocation(line: 0, scope: !2183)
!2191 = !DILocalVariable(name: "this", arg: 1, scope: !2192, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2192 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !224, file: !31, line: 1092, type: !228, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !232, retainedNodes: !2193)
!2193 = !{!2191, !2194, !2195}
!2194 = !DILocalVariable(name: "val", scope: !2192, file: !31, line: 1094, type: !26)
!2195 = !DILocalVariable(name: "control", scope: !2192, file: !31, line: 1100, type: !204)
!2196 = !DILocation(line: 0, scope: !2192, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 1146, column: 16, scope: !2183)
!2198 = !DILocation(line: 1093, column: 28, scope: !2192, inlinedAt: !2197)
!2199 = !DILocalVariable(name: "cond", arg: 1, scope: !2200, file: !31, line: 70, type: !15)
!2200 = distinct !DISubprogram(name: "if_tsan_pre_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_118if_tsan_pre_signalEPv", scope: !634, file: !31, line: 70, type: !13, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2201 = !{!2199}
!2202 = !DILocation(line: 0, scope: !2200, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 1093, column: 9, scope: !2192, inlinedAt: !2197)
!2204 = !DILocation(line: 71, column: 5, scope: !2200, inlinedAt: !2203)
!2205 = !DILocation(line: 1095, column: 30, scope: !2192, inlinedAt: !2197)
!2206 = !DILocation(line: 1095, column: 9, scope: !2192, inlinedAt: !2197)
!2207 = !DILocation(line: 1096, column: 17, scope: !2208, inlinedAt: !2197)
!2208 = distinct !DILexicalBlock(scope: !2192, file: !31, line: 1096, column: 13)
!2209 = !DILocation(line: 1096, column: 13, scope: !2192, inlinedAt: !2197)
!2210 = !DILocalVariable(name: "cond", arg: 1, scope: !2211, file: !31, line: 73, type: !15)
!2211 = distinct !DISubprogram(name: "if_tsan_post_signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119if_tsan_post_signalEPv", scope: !634, file: !31, line: 73, type: !13, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2212 = !{!2210}
!2213 = !DILocation(line: 0, scope: !2211, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 1097, column: 13, scope: !2215, inlinedAt: !2197)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !31, line: 1096, column: 23)
!2216 = !DILocation(line: 74, column: 5, scope: !2211, inlinedAt: !2214)
!2217 = !DILocation(line: 1098, column: 13, scope: !2215, inlinedAt: !2197)
!2218 = !DILocation(line: 1100, column: 9, scope: !2192, inlinedAt: !2197)
!2219 = !DILocation(line: 1100, column: 35, scope: !2192, inlinedAt: !2197)
!2220 = !DILocation(line: 1100, column: 51, scope: !2192, inlinedAt: !2197)
!2221 = !DILocalVariable(name: "this", arg: 1, scope: !2222, type: !203, flags: DIFlagArtificial | DIFlagObjectPointer)
!2222 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPjPNS2_10fast_mutexE", scope: !204, file: !31, line: 989, type: !210, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !209, retainedNodes: !2223)
!2223 = !{!2221, !2224, !2225}
!2224 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2222, file: !31, line: 989, type: !173)
!2225 = !DILocalVariable(name: "mutex", arg: 3, scope: !2222, file: !31, line: 989, type: !184)
!2226 = !DILocation(line: 0, scope: !2222, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 1100, column: 35, scope: !2192, inlinedAt: !2197)
!2228 = !DILocation(line: 0, scope: !2007, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 989, column: 19, scope: !2222, inlinedAt: !2227)
!2230 = !DILocation(line: 599, column: 11, scope: !2007, inlinedAt: !2229)
!2231 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2229)
!2232 = !DILocation(line: 600, column: 11, scope: !2007, inlinedAt: !2229)
!2233 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2229)
!2234 = !DILocation(line: 990, column: 11, scope: !2222, inlinedAt: !2227)
!2235 = !DILocation(line: 990, column: 35, scope: !2222, inlinedAt: !2227)
!2236 = !DILocation(line: 991, column: 18, scope: !2237, inlinedAt: !2227)
!2237 = distinct !DILexicalBlock(scope: !2222, file: !31, line: 990, column: 48)
!2238 = !DILocation(line: 992, column: 26, scope: !2237, inlinedAt: !2227)
!2239 = !DILocation(line: 1101, column: 24, scope: !2192, inlinedAt: !2197)
!2240 = !DILocation(line: 1101, column: 46, scope: !2192, inlinedAt: !2197)
!2241 = !DILocation(line: 1101, column: 9, scope: !2192, inlinedAt: !2197)
!2242 = !DILocation(line: 0, scope: !2211, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 1102, column: 9, scope: !2192, inlinedAt: !2197)
!2244 = !DILocation(line: 74, column: 5, scope: !2211, inlinedAt: !2243)
!2245 = !DILocation(line: 1103, column: 5, scope: !2192, inlinedAt: !2197)
!2246 = !DILocation(line: 1147, column: 1, scope: !2183)
!2247 = distinct !DISubprogram(name: "halide_cond_signal", scope: !31, file: !31, line: 1149, type: !2184, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2248 = !{!2249, !2250}
!2249 = !DILocalVariable(name: "cond", arg: 1, scope: !2247, file: !31, line: 1149, type: !2186)
!2250 = !DILocalVariable(name: "fast_cond", scope: !2247, file: !31, line: 1150, type: !223)
!2251 = !DILocation(line: 0, scope: !2247)
!2252 = !DILocalVariable(name: "this", arg: 1, scope: !2253, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2253 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !224, file: !31, line: 1078, type: !228, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !231, retainedNodes: !2254)
!2254 = !{!2252, !2255, !2256}
!2255 = !DILocalVariable(name: "val", scope: !2253, file: !31, line: 1081, type: !26)
!2256 = !DILocalVariable(name: "control", scope: !2253, file: !31, line: 1087, type: !179)
!2257 = !DILocation(line: 0, scope: !2253, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 1152, column: 16, scope: !2247)
!2259 = !DILocation(line: 1079, column: 28, scope: !2253, inlinedAt: !2258)
!2260 = !DILocation(line: 0, scope: !2200, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 1079, column: 9, scope: !2253, inlinedAt: !2258)
!2262 = !DILocation(line: 71, column: 5, scope: !2200, inlinedAt: !2261)
!2263 = !DILocation(line: 1082, column: 30, scope: !2253, inlinedAt: !2258)
!2264 = !DILocation(line: 1082, column: 9, scope: !2253, inlinedAt: !2258)
!2265 = !DILocation(line: 1083, column: 17, scope: !2266, inlinedAt: !2258)
!2266 = distinct !DILexicalBlock(scope: !2253, file: !31, line: 1083, column: 13)
!2267 = !DILocation(line: 1083, column: 13, scope: !2253, inlinedAt: !2258)
!2268 = !DILocation(line: 0, scope: !2211, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 1084, column: 13, scope: !2270, inlinedAt: !2258)
!2270 = distinct !DILexicalBlock(scope: !2266, file: !31, line: 1083, column: 23)
!2271 = !DILocation(line: 74, column: 5, scope: !2211, inlinedAt: !2269)
!2272 = !DILocation(line: 1085, column: 13, scope: !2270, inlinedAt: !2258)
!2273 = !DILocation(line: 1087, column: 9, scope: !2253, inlinedAt: !2258)
!2274 = !DILocation(line: 1087, column: 32, scope: !2253, inlinedAt: !2258)
!2275 = !DILocation(line: 1087, column: 48, scope: !2253, inlinedAt: !2258)
!2276 = !DILocalVariable(name: "this", arg: 1, scope: !2277, type: !178, flags: DIFlagArtificial | DIFlagObjectPointer)
!2277 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPjPNS2_10fast_mutexE", scope: !179, file: !31, line: 962, type: !200, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !199, retainedNodes: !2278)
!2278 = !{!2276, !2279, !2280}
!2279 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2277, file: !31, line: 962, type: !173)
!2280 = !DILocalVariable(name: "mutex", arg: 3, scope: !2277, file: !31, line: 962, type: !184)
!2281 = !DILocation(line: 0, scope: !2277, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 1087, column: 32, scope: !2253, inlinedAt: !2258)
!2283 = !DILocation(line: 0, scope: !2007, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 962, column: 19, scope: !2277, inlinedAt: !2282)
!2285 = !DILocation(line: 599, column: 11, scope: !2007, inlinedAt: !2284)
!2286 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2284)
!2287 = !DILocation(line: 600, column: 11, scope: !2007, inlinedAt: !2284)
!2288 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2284)
!2289 = !DILocation(line: 963, column: 11, scope: !2277, inlinedAt: !2282)
!2290 = !DILocation(line: 963, column: 35, scope: !2277, inlinedAt: !2282)
!2291 = !{!1842, !473, i64 20}
!2292 = !DILocation(line: 964, column: 16, scope: !2293, inlinedAt: !2282)
!2293 = distinct !DILexicalBlock(scope: !2277, file: !31, line: 963, column: 48)
!2294 = !DILocation(line: 1088, column: 20, scope: !2253, inlinedAt: !2258)
!2295 = !DILocation(line: 1088, column: 37, scope: !2253, inlinedAt: !2258)
!2296 = !DILocation(line: 1088, column: 9, scope: !2253, inlinedAt: !2258)
!2297 = !DILocation(line: 0, scope: !2211, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 1089, column: 9, scope: !2253, inlinedAt: !2258)
!2299 = !DILocation(line: 74, column: 5, scope: !2211, inlinedAt: !2298)
!2300 = !DILocation(line: 1090, column: 5, scope: !2253, inlinedAt: !2258)
!2301 = !DILocation(line: 1153, column: 1, scope: !2247)
!2302 = distinct !DISubprogram(name: "halide_cond_wait", scope: !31, file: !31, line: 1155, type: !2303, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2186, !240}
!2305 = !{!2306, !2307, !2308, !2309}
!2306 = !DILocalVariable(name: "cond", arg: 1, scope: !2302, file: !31, line: 1155, type: !2186)
!2307 = !DILocalVariable(name: "mutex", arg: 2, scope: !2302, file: !31, line: 1155, type: !240)
!2308 = !DILocalVariable(name: "fast_cond", scope: !2302, file: !31, line: 1156, type: !223)
!2309 = !DILocalVariable(name: "fast_mutex", scope: !2302, file: !31, line: 1158, type: !184)
!2310 = !DILocation(line: 0, scope: !2302)
!2311 = !DILocalVariable(name: "this", arg: 1, scope: !2312, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2312 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !224, file: !31, line: 1105, type: !234, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !233, retainedNodes: !2313)
!2313 = !{!2311, !2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "mutex", arg: 2, scope: !2312, file: !31, line: 1105, type: !184)
!2315 = !DILocalVariable(name: "control", scope: !2312, file: !31, line: 1106, type: !214)
!2316 = !DILocalVariable(name: "result", scope: !2312, file: !31, line: 1107, type: !26)
!2317 = !DILocalVariable(name: "val", scope: !2318, file: !31, line: 1114, type: !26)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !31, line: 1110, column: 16)
!2319 = distinct !DILexicalBlock(scope: !2312, file: !31, line: 1108, column: 13)
!2320 = !DILocation(line: 0, scope: !2312, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 1160, column: 16, scope: !2302)
!2322 = !DILocation(line: 1106, column: 9, scope: !2312, inlinedAt: !2321)
!2323 = !DILocation(line: 1106, column: 30, scope: !2312, inlinedAt: !2321)
!2324 = !DILocation(line: 1106, column: 39, scope: !2312, inlinedAt: !2321)
!2325 = !DILocalVariable(name: "this", arg: 1, scope: !2326, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!2326 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPjPNS2_10fast_mutexE", scope: !214, file: !31, line: 1030, type: !220, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !219, retainedNodes: !2327)
!2327 = !{!2325, !2328, !2329}
!2328 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2326, file: !31, line: 1030, type: !173)
!2329 = !DILocalVariable(name: "mutex", arg: 3, scope: !2326, file: !31, line: 1030, type: !184)
!2330 = !DILocation(line: 0, scope: !2326, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 1106, column: 30, scope: !2312, inlinedAt: !2321)
!2332 = !DILocation(line: 0, scope: !2007, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 1030, column: 19, scope: !2326, inlinedAt: !2331)
!2334 = !DILocation(line: 599, column: 11, scope: !2007, inlinedAt: !2333)
!2335 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2333)
!2336 = !DILocation(line: 600, column: 11, scope: !2007, inlinedAt: !2333)
!2337 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2333)
!2338 = !DILocation(line: 1031, column: 11, scope: !2326, inlinedAt: !2331)
!2339 = !DILocation(line: 1031, column: 35, scope: !2326, inlinedAt: !2331)
!2340 = !DILocation(line: 1032, column: 18, scope: !2341, inlinedAt: !2331)
!2341 = distinct !DILexicalBlock(scope: !2326, file: !31, line: 1031, column: 48)
!2342 = !DILocation(line: 1033, column: 22, scope: !2341, inlinedAt: !2331)
!2343 = !DILocation(line: 1034, column: 16, scope: !2341, inlinedAt: !2331)
!2344 = !DILocation(line: 1107, column: 33, scope: !2312, inlinedAt: !2321)
!2345 = !DILocation(line: 1107, column: 50, scope: !2312, inlinedAt: !2321)
!2346 = !DILocation(line: 1107, column: 28, scope: !2312, inlinedAt: !2321)
!2347 = !DILocation(line: 1108, column: 23, scope: !2319, inlinedAt: !2321)
!2348 = !DILocation(line: 1108, column: 20, scope: !2319, inlinedAt: !2321)
!2349 = !DILocation(line: 1108, column: 13, scope: !2312, inlinedAt: !2321)
!2350 = !DILocation(line: 0, scope: !2051, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1109, column: 20, scope: !2352, inlinedAt: !2321)
!2352 = distinct !DILexicalBlock(scope: !2319, file: !31, line: 1108, column: 41)
!2353 = !DILocation(line: 924, column: 47, scope: !2058, inlinedAt: !2351)
!2354 = !DILocation(line: 0, scope: !633, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 924, column: 14, scope: !2058, inlinedAt: !2351)
!2356 = !DILocation(line: 0, scope: !644, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !2355)
!2358 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2357)
!2359 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2357)
!2360 = !DILocation(line: 924, column: 13, scope: !2051, inlinedAt: !2351)
!2361 = !DILocation(line: 0, scope: !2067, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 925, column: 13, scope: !2082, inlinedAt: !2351)
!2363 = !DILocation(line: 866, column: 9, scope: !2067, inlinedAt: !2362)
!2364 = !DILocation(line: 868, column: 9, scope: !2067, inlinedAt: !2362)
!2365 = !DILocation(line: 869, column: 17, scope: !2074, inlinedAt: !2362)
!2366 = !DILocation(line: 869, column: 28, scope: !2073, inlinedAt: !2362)
!2367 = !DILocation(line: 869, column: 18, scope: !2073, inlinedAt: !2362)
!2368 = !DILocation(line: 870, column: 46, scope: !2072, inlinedAt: !2362)
!2369 = !DILocation(line: 0, scope: !2072, inlinedAt: !2362)
!2370 = !DILocation(line: 0, scope: !633, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 871, column: 21, scope: !2092, inlinedAt: !2362)
!2372 = !DILocation(line: 0, scope: !644, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 127, column: 12, scope: !633, inlinedAt: !2371)
!2374 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2373)
!2375 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2373)
!2376 = !DILocation(line: 0, scope: !662, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 880, column: 25, scope: !2099, inlinedAt: !2362)
!2378 = !DILocation(line: 238, column: 24, scope: !671, inlinedAt: !2377)
!2379 = !DILocation(line: 238, column: 13, scope: !662, inlinedAt: !2377)
!2380 = !DILocation(line: 241, column: 27, scope: !662, inlinedAt: !2377)
!2381 = !DILocation(line: 880, column: 17, scope: !2074, inlinedAt: !2362)
!2382 = !DILocation(line: 239, column: 23, scope: !670, inlinedAt: !2377)
!2383 = !DILocation(line: 881, column: 17, scope: !2106, inlinedAt: !2362)
!2384 = !DILocation(line: 882, column: 17, scope: !2106, inlinedAt: !2362)
!2385 = !DILocation(line: 883, column: 17, scope: !2106, inlinedAt: !2362)
!2386 = !DILocation(line: 887, column: 27, scope: !2077, inlinedAt: !2362)
!2387 = !DILocation(line: 887, column: 41, scope: !2077, inlinedAt: !2362)
!2388 = !DILocation(line: 887, column: 17, scope: !2074, inlinedAt: !2362)
!2389 = !DILocation(line: 888, column: 46, scope: !2076, inlinedAt: !2362)
!2390 = !DILocation(line: 0, scope: !2076, inlinedAt: !2362)
!2391 = !DILocation(line: 0, scope: !1886, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 889, column: 22, scope: !2116, inlinedAt: !2362)
!2393 = !DILocation(line: 0, scope: !644, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 123, column: 12, scope: !1886, inlinedAt: !2392)
!2395 = !DILocation(line: 104, column: 16, scope: !644, inlinedAt: !2394)
!2396 = !DILocation(line: 106, column: 19, scope: !644, inlinedAt: !2394)
!2397 = !DILocation(line: 895, column: 13, scope: !2074, inlinedAt: !2362)
!2398 = !DILocation(line: 895, column: 35, scope: !2074, inlinedAt: !2362)
!2399 = !DILocation(line: 0, scope: !2001, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 895, column: 35, scope: !2074, inlinedAt: !2362)
!2401 = !DILocation(line: 0, scope: !2007, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 832, column: 19, scope: !2001, inlinedAt: !2400)
!2403 = !DILocation(line: 599, column: 47, scope: !2007, inlinedAt: !2402)
!2404 = !DILocation(line: 600, column: 43, scope: !2007, inlinedAt: !2402)
!2405 = !DILocation(line: 833, column: 11, scope: !2001, inlinedAt: !2400)
!2406 = !DILocation(line: 834, column: 18, scope: !2018, inlinedAt: !2400)
!2407 = !DILocation(line: 835, column: 16, scope: !2018, inlinedAt: !2400)
!2408 = !DILocation(line: 896, column: 32, scope: !2074, inlinedAt: !2362)
!2409 = !DILocation(line: 0, scope: !2074, inlinedAt: !2362)
!2410 = !DILocation(line: 897, column: 24, scope: !2135, inlinedAt: !2362)
!2411 = !DILocation(line: 897, column: 17, scope: !2074, inlinedAt: !2362)
!2412 = !DILocation(line: 902, column: 13, scope: !2074, inlinedAt: !2362)
!2413 = !DILocation(line: 903, column: 9, scope: !2067, inlinedAt: !2362)
!2414 = distinct !{!2414, !2364, !2413}
!2415 = !DILocation(line: 1111, column: 30, scope: !2318, inlinedAt: !2321)
!2416 = !DILocation(line: 0, scope: !955, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 1111, column: 13, scope: !2318, inlinedAt: !2321)
!2418 = !DILocation(line: 57, column: 5, scope: !955, inlinedAt: !2417)
!2419 = !DILocation(line: 1115, column: 33, scope: !2318, inlinedAt: !2321)
!2420 = !DILocation(line: 1115, column: 13, scope: !2318, inlinedAt: !2321)
!2421 = !DILocation(line: 0, scope: !2318, inlinedAt: !2321)
!2422 = !DILocation(line: 1116, column: 13, scope: !2423, inlinedAt: !2321)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !31, line: 1116, column: 13)
!2424 = distinct !DILexicalBlock(scope: !2318, file: !31, line: 1116, column: 13)
!2425 = !DILocation(line: 1116, column: 13, scope: !2424, inlinedAt: !2321)
!2426 = !DILocation(line: 1116, column: 13, scope: !2427, inlinedAt: !2321)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !31, line: 1116, column: 13)
!2428 = !DILocation(line: 0, scope: !974, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 1118, column: 13, scope: !2318, inlinedAt: !2321)
!2430 = !DILocation(line: 61, column: 5, scope: !974, inlinedAt: !2429)
!2431 = !DILocation(line: 1120, column: 5, scope: !2312, inlinedAt: !2321)
!2432 = !DILocation(line: 1161, column: 1, scope: !2302)
!2433 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !31, file: !31, line: 1168, type: !2434, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!236, !161}
!2436 = !{!2437, !2438}
!2437 = !DILocalVariable(name: "sz", arg: 1, scope: !2433, file: !31, line: 1168, type: !161)
!2438 = !DILocalVariable(name: "array", scope: !2433, file: !31, line: 1171, type: !236)
!2439 = !DILocation(line: 0, scope: !2433)
!2440 = !DILocation(line: 1171, column: 55, scope: !2433)
!2441 = !DILocation(line: 1171, column: 33, scope: !2433)
!2442 = !DILocation(line: 1173, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2433, file: !31, line: 1173, column: 9)
!2444 = !DILocation(line: 1173, column: 9, scope: !2433)
!2445 = !DILocation(line: 1178, column: 21, scope: !2433)
!2446 = !DILocation(line: 1177, column: 36, scope: !2433)
!2447 = !DILocation(line: 1177, column: 18, scope: !2433)
!2448 = !{!2449, !473, i64 0}
!2449 = !{!"_ZTS18halide_mutex_array", !473, i64 0}
!2450 = !DILocation(line: 1179, column: 22, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2433, file: !31, line: 1179, column: 9)
!2452 = !DILocation(line: 1179, column: 9, scope: !2433)
!2453 = !DILocation(line: 1180, column: 9, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !31, line: 1179, column: 34)
!2455 = !DILocation(line: 1182, column: 9, scope: !2454)
!2456 = !DILocation(line: 1184, column: 5, scope: !2433)
!2457 = !DILocation(line: 1185, column: 5, scope: !2433)
!2458 = !DILocation(line: 1186, column: 1, scope: !2433)
!2459 = !DISubprogram(name: "halide_malloc", scope: !242, file: !242, line: 354, type: !2460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!15, !15, !24}
!2462 = !DISubprogram(name: "halide_free", scope: !242, file: !242, line: 355, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !15, !15}
!2465 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !31, file: !31, line: 1188, type: !2463, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "user_context", arg: 1, scope: !2465, file: !31, line: 1188, type: !15)
!2468 = !DILocalVariable(name: "array", arg: 2, scope: !2465, file: !31, line: 1188, type: !15)
!2469 = !DILocalVariable(name: "arr_ptr", scope: !2465, file: !31, line: 1189, type: !236)
!2470 = !DILocation(line: 0, scope: !2465)
!2471 = !DILocation(line: 1190, column: 40, scope: !2465)
!2472 = !DILocation(line: 1190, column: 5, scope: !2465)
!2473 = !DILocation(line: 1191, column: 5, scope: !2465)
!2474 = !DILocation(line: 1192, column: 1, scope: !2465)
!2475 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !31, file: !31, line: 1194, type: !2476, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!161, !236, !161}
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "array", arg: 1, scope: !2475, file: !31, line: 1194, type: !236)
!2480 = !DILocalVariable(name: "entry", arg: 2, scope: !2475, file: !31, line: 1194, type: !161)
!2481 = !DILocation(line: 0, scope: !2475)
!2482 = !DILocation(line: 1195, column: 31, scope: !2475)
!2483 = !DILocation(line: 1195, column: 24, scope: !2475)
!2484 = !DILocation(line: 1195, column: 5, scope: !2475)
!2485 = !DILocation(line: 1196, column: 5, scope: !2475)
!2486 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !31, file: !31, line: 1199, type: !2476, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2487 = !{!2488, !2489}
!2488 = !DILocalVariable(name: "array", arg: 1, scope: !2486, file: !31, line: 1199, type: !236)
!2489 = !DILocalVariable(name: "entry", arg: 2, scope: !2486, file: !31, line: 1199, type: !161)
!2490 = !DILocation(line: 0, scope: !2486)
!2491 = !DILocation(line: 1200, column: 33, scope: !2486)
!2492 = !DILocation(line: 1200, column: 26, scope: !2486)
!2493 = !DILocation(line: 1200, column: 5, scope: !2486)
!2494 = !DILocation(line: 1201, column: 5, scope: !2486)
!2495 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !33, file: !250, line: 69, type: !2496, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!161, !161}
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "threads", arg: 1, scope: !2495, file: !250, line: 69, type: !161)
!2500 = !DILocation(line: 0, scope: !2495)
!2501 = !DILocation(line: 70, column: 17, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2495, file: !250, line: 70, column: 9)
!2503 = !DILocation(line: 70, column: 9, scope: !2495)
!2504 = !DILocation(line: 72, column: 16, scope: !2502)
!2505 = !DILocation(line: 75, column: 5, scope: !2495)
!2506 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !33, file: !250, line: 78, type: !416, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "desired_num_threads", scope: !2506, file: !250, line: 79, type: !161)
!2509 = !DILocalVariable(name: "threads_str", scope: !2506, file: !250, line: 80, type: !309)
!2510 = !DILocation(line: 0, scope: !2506)
!2511 = !DILocation(line: 80, column: 25, scope: !2506)
!2512 = !DILocation(line: 81, column: 10, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2506, file: !250, line: 81, column: 9)
!2514 = !DILocation(line: 81, column: 9, scope: !2506)
!2515 = !DILocation(line: 83, column: 23, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !250, line: 81, column: 23)
!2517 = !DILocation(line: 85, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2506, file: !250, line: 85, column: 9)
!2519 = !DILocation(line: 85, column: 9, scope: !2506)
!2520 = !DILocation(line: 86, column: 31, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !250, line: 85, column: 22)
!2522 = !DILocation(line: 87, column: 5, scope: !2521)
!2523 = !DILocation(line: 88, column: 31, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !250, line: 87, column: 12)
!2525 = !DILocation(line: 0, scope: !2518)
!2526 = !DILocation(line: 90, column: 5, scope: !2506)
!2527 = !DISubprogram(name: "getenv", scope: !27, file: !27, line: 85, type: !2528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!309, !265}
!2530 = !DISubprogram(name: "atoi", scope: !27, file: !27, line: 89, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!161, !265}
!2533 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !33, file: !250, line: 197, type: !2534, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !248}
!2536 = !{!2537, !2538, !2539, !2541, !2543, !2545, !2547, !2548, !2549, !2550, !2551, !2552, !2555, !2556, !2558, !2559}
!2537 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2533, file: !250, line: 197, type: !248)
!2538 = !DILocalVariable(name: "spin_count", scope: !2533, file: !250, line: 198, type: !161)
!2539 = !DILocalVariable(name: "max_spin_count", scope: !2533, file: !250, line: 199, type: !2540)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!2541 = !DILocalVariable(name: "job", scope: !2542, file: !250, line: 202, type: !248)
!2542 = distinct !DILexicalBlock(scope: !2533, file: !250, line: 201, column: 69)
!2543 = !DILocalVariable(name: "prev_ptr", scope: !2542, file: !250, line: 203, type: !2544)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!2545 = !DILocalVariable(name: "enough_threads", scope: !2546, file: !250, line: 235, type: !66)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 229, column: 21)
!2547 = !DILocalVariable(name: "parent_job", scope: !2546, file: !250, line: 237, type: !248)
!2548 = !DILocalVariable(name: "threads_available", scope: !2546, file: !250, line: 239, type: !161)
!2549 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2546, file: !250, line: 256, type: !66)
!2550 = !DILocalVariable(name: "can_add_worker", scope: !2546, file: !250, line: 260, type: !66)
!2551 = !DILocalVariable(name: "result", scope: !2542, file: !250, line: 328, type: !161)
!2552 = !DILocalVariable(name: "total_iters", scope: !2553, file: !250, line: 336, type: !161)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !250, line: 330, column: 31)
!2554 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 330, column: 13)
!2555 = !DILocalVariable(name: "iters", scope: !2553, file: !250, line: 337, type: !161)
!2556 = !DILocalVariable(name: "myjob", scope: !2557, file: !250, line: 369, type: !249)
!2557 = distinct !DILexicalBlock(scope: !2554, file: !250, line: 367, column: 16)
!2558 = !DILocalVariable(name: "wake_owners", scope: !2542, file: !250, line: 396, type: !66)
!2559 = !DILocalVariable(name: "i", scope: !2560, file: !250, line: 402, type: !161)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !250, line: 402, column: 13)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !250, line: 399, column: 26)
!2562 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 399, column: 13)
!2563 = !DILocation(line: 0, scope: !2533)
!2564 = !DILocation(line: 63, column: 31, scope: !2565, inlinedAt: !2569)
!2565 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !249, file: !250, line: 62, type: !301, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !300, retainedNodes: !2566)
!2566 = !{!2567}
!2567 = !DILocalVariable(name: "this", arg: 1, scope: !2565, type: !2568, flags: DIFlagArtificial | DIFlagObjectPointer)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!2569 = distinct !DILocation(line: 201, column: 35, scope: !2533)
!2570 = !DILocation(line: 201, column: 5, scope: !2533)
!2571 = !DILocation(line: 198, column: 9, scope: !2533)
!2572 = !DILocation(line: 201, column: 12, scope: !2533)
!2573 = !DILocation(line: 0, scope: !2565, inlinedAt: !2569)
!2574 = !DILocation(line: 63, column: 21, scope: !2565, inlinedAt: !2569)
!2575 = !{!2576, !475, i64 24}
!2576 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2577, i64 0, !473, i64 36, !473, i64 40, !473, i64 44, !475, i64 48, !473, i64 52, !475, i64 56, !473, i64 60, !475, i64 64, !475, i64 68, !475, i64 72, !692, i64 76}
!2577 = !{!"_ZTS22halide_parallel_task_t", !473, i64 0, !473, i64 4, !473, i64 8, !473, i64 12, !475, i64 16, !475, i64 20, !475, i64 24, !475, i64 28, !692, i64 32}
!2578 = !DILocation(line: 63, column: 16, scope: !2565, inlinedAt: !2569)
!2579 = !DILocation(line: 63, column: 28, scope: !2565, inlinedAt: !2569)
!2580 = !DILocation(line: 201, column: 59, scope: !2533)
!2581 = !{!2582, !692, i64 1072}
!2582 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2583, i64 0, !475, i64 4, !475, i64 8, !473, i64 12, !475, i64 16, !475, i64 20, !475, i64 24, !2584, i64 28, !2584, i64 32, !2584, i64 36, !475, i64 40, !475, i64 44, !434, i64 48, !692, i64 1072, !692, i64 1073, !475, i64 1076}
!2583 = !{!"_ZTS12halide_mutex", !434, i64 0}
!2584 = !{!"_ZTS11halide_cond", !434, i64 0}
!2585 = !{!2576, !475, i64 64}
!2586 = !DILocation(line: 202, column: 32, scope: !2542)
!2587 = !{!2582, !473, i64 12}
!2588 = !DILocation(line: 0, scope: !2542)
!2589 = !DILocation(line: 206, column: 28, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !250, line: 206, column: 17)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !250, line: 205, column: 24)
!2592 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 205, column: 13)
!2593 = !{!2576, !475, i64 68}
!2594 = !DILocation(line: 206, column: 40, scope: !2590)
!2595 = !DILocation(line: 206, column: 17, scope: !2591)
!2596 = !DILocation(line: 207, column: 32, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !250, line: 207, column: 21)
!2598 = distinct !DILexicalBlock(scope: !2590, file: !250, line: 206, column: 46)
!2599 = !DILocation(line: 207, column: 47, scope: !2597)
!2600 = !DILocation(line: 207, column: 21, scope: !2598)
!2601 = !DILocation(line: 208, column: 32, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2597, file: !250, line: 207, column: 53)
!2603 = !DILocation(line: 208, column: 21, scope: !2602)
!2604 = !DILocation(line: 209, column: 42, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !250, line: 208, column: 46)
!2606 = !DILocation(line: 210, column: 36, scope: !2605)
!2607 = !{!2576, !473, i64 40}
!2608 = distinct !{!2608, !2603, !2609, !749}
!2609 = !DILocation(line: 211, column: 21, scope: !2602)
!2610 = !DILocation(line: 212, column: 38, scope: !2602)
!2611 = !DILocation(line: 212, column: 31, scope: !2602)
!2612 = !DILocation(line: 213, column: 38, scope: !2602)
!2613 = !DILocation(line: 214, column: 21, scope: !2602)
!2614 = !DILocation(line: 216, column: 35, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2590, file: !250, line: 216, column: 24)
!2616 = !{!2576, !473, i64 52}
!2617 = !DILocation(line: 216, column: 24, scope: !2615)
!2618 = !DILocation(line: 216, column: 46, scope: !2615)
!2619 = !DILocation(line: 216, column: 72, scope: !2615)
!2620 = !DILocation(line: 216, column: 84, scope: !2615)
!2621 = !DILocation(line: 216, column: 24, scope: !2590)
!2622 = !DILocation(line: 217, column: 40, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2615, file: !250, line: 216, column: 90)
!2624 = !DILocation(line: 221, column: 17, scope: !2623)
!2625 = !DILocation(line: 222, column: 17, scope: !2623)
!2626 = !DILocation(line: 229, column: 16, scope: !2542)
!2627 = !DILocation(line: 229, column: 9, scope: !2542)
!2628 = !DILocation(line: 240, column: 17, scope: !2546)
!2629 = !DILocation(line: 237, column: 37, scope: !2546)
!2630 = !DILocation(line: 0, scope: !2546)
!2631 = !DILocation(line: 240, column: 28, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2546, file: !250, line: 240, column: 17)
!2633 = !DILocation(line: 244, column: 33, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !250, line: 244, column: 21)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !250, line: 243, column: 20)
!2636 = !DILocation(line: 244, column: 48, scope: !2634)
!2637 = !DILocation(line: 0, scope: !2634)
!2638 = !{!2576, !475, i64 28}
!2639 = !DILocation(line: 244, column: 21, scope: !2635)
!2640 = !DILocation(line: 247, column: 68, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2634, file: !250, line: 246, column: 24)
!2642 = !DILocation(line: 247, column: 113, scope: !2641)
!2643 = !DILocation(line: 245, column: 84, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2634, file: !250, line: 244, column: 54)
!2645 = !DILocation(line: 246, column: 17, scope: !2644)
!2646 = !DILocation(line: 242, column: 49, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2632, file: !250, line: 240, column: 40)
!2648 = !{!2582, !475, i64 16}
!2649 = !DILocation(line: 242, column: 65, scope: !2647)
!2650 = !DILocation(line: 243, column: 13, scope: !2647)
!2651 = !DILocation(line: 0, scope: !2632)
!2652 = !DILocation(line: 250, column: 61, scope: !2546)
!2653 = !DILocation(line: 250, column: 48, scope: !2546)
!2654 = !DILocation(line: 260, column: 47, scope: !2546)
!2655 = !{!2576, !692, i64 32}
!2656 = !DILocation(line: 260, column: 54, scope: !2546)
!2657 = !DILocation(line: 260, column: 63, scope: !2546)
!2658 = !DILocation(line: 260, column: 78, scope: !2546)
!2659 = !DILocation(line: 265, column: 32, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2546, file: !250, line: 265, column: 17)
!2661 = !DILocalVariable(name: "this", arg: 1, scope: !2662, type: !248, flags: DIFlagArtificial | DIFlagObjectPointer)
!2662 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !249, file: !250, line: 46, type: !297, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !296, retainedNodes: !2663)
!2663 = !{!2661}
!2664 = !DILocation(line: 0, scope: !2662, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 266, column: 26, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !250, line: 266, column: 21)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !250, line: 265, column: 80)
!2668 = !DILocation(line: 47, column: 16, scope: !2669, inlinedAt: !2665)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !250, line: 47, column: 9)
!2670 = distinct !DILexicalBlock(scope: !2662, file: !250, line: 47, column: 9)
!2671 = !{!2576, !475, i64 72}
!2672 = !DILocation(line: 47, column: 38, scope: !2669, inlinedAt: !2665)
!2673 = !{!2576, !475, i64 16}
!2674 = !DILocation(line: 47, column: 31, scope: !2669, inlinedAt: !2665)
!2675 = !DILocation(line: 47, column: 9, scope: !2670, inlinedAt: !2665)
!2676 = !DILocation(line: 48, column: 60, scope: !2677, inlinedAt: !2665)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !250, line: 48, column: 17)
!2678 = distinct !DILexicalBlock(scope: !2669, file: !250, line: 47, column: 72)
!2679 = !{!2576, !473, i64 12}
!2680 = !DILocation(line: 48, column: 87, scope: !2677, inlinedAt: !2665)
!2681 = !{!2682, !473, i64 0}
!2682 = !{!"_ZTS26halide_semaphore_acquire_t", !473, i64 0, !475, i64 4}
!2683 = !DILocation(line: 49, column: 87, scope: !2677, inlinedAt: !2665)
!2684 = !{!2682, !475, i64 4}
!2685 = !DILocation(line: 48, column: 18, scope: !2677, inlinedAt: !2665)
!2686 = !DILocation(line: 48, column: 17, scope: !2678, inlinedAt: !2665)
!2687 = !DILocation(line: 47, column: 68, scope: !2669, inlinedAt: !2665)
!2688 = distinct !{!2688, !2675, !2689, !749}
!2689 = !DILocation(line: 56, column: 9, scope: !2670, inlinedAt: !2665)
!2690 = !DILocation(line: 272, column: 31, scope: !2546)
!2691 = !DILocation(line: 273, column: 24, scope: !2546)
!2692 = !DILocation(line: 256, column: 66, scope: !2546)
!2693 = !{!2576, !473, i64 44}
!2694 = !DILocation(line: 256, column: 89, scope: !2546)
!2695 = !DILocation(line: 256, column: 75, scope: !2546)
!2696 = !DILocation(line: 278, column: 17, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !250, line: 276, column: 19)
!2698 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 276, column: 13)
!2699 = !DILocation(line: 279, column: 31, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !250, line: 279, column: 21)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !250, line: 278, column: 28)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !250, line: 278, column: 17)
!2703 = !DILocation(line: 279, column: 34, scope: !2700)
!2704 = !DILocation(line: 279, column: 21, scope: !2701)
!2705 = !DILocation(line: 281, column: 21, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !250, line: 279, column: 52)
!2707 = !DILocation(line: 282, column: 21, scope: !2706)
!2708 = !DILocation(line: 283, column: 21, scope: !2706)
!2709 = !DILocation(line: 284, column: 17, scope: !2706)
!2710 = !DILocation(line: 285, column: 47, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2700, file: !250, line: 284, column: 24)
!2712 = !{!2582, !475, i64 44}
!2713 = !DILocation(line: 286, column: 50, scope: !2711)
!2714 = !{!2576, !692, i64 76}
!2715 = !DILocation(line: 287, column: 21, scope: !2711)
!2716 = !DILocation(line: 288, column: 50, scope: !2711)
!2717 = !DILocation(line: 289, column: 47, scope: !2711)
!2718 = !DILocation(line: 292, column: 44, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2702, file: !250, line: 291, column: 20)
!2720 = !{!2582, !475, i64 40}
!2721 = !DILocation(line: 293, column: 32, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !250, line: 293, column: 21)
!2723 = !{!2582, !475, i64 20}
!2724 = !DILocation(line: 293, column: 57, scope: !2722)
!2725 = !{!2582, !475, i64 24}
!2726 = !DILocation(line: 293, column: 44, scope: !2722)
!2727 = !DILocation(line: 293, column: 21, scope: !2719)
!2728 = !DILocation(line: 295, column: 43, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2722, file: !250, line: 293, column: 77)
!2730 = !DILocation(line: 296, column: 21, scope: !2729)
!2731 = !DILocation(line: 297, column: 43, scope: !2729)
!2732 = !DILocation(line: 298, column: 17, scope: !2729)
!2733 = !DILocation(line: 298, column: 38, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2722, file: !250, line: 298, column: 28)
!2735 = !DILocation(line: 298, column: 41, scope: !2734)
!2736 = !DILocation(line: 298, column: 28, scope: !2722)
!2737 = !DILocation(line: 300, column: 21, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !250, line: 298, column: 59)
!2739 = !DILocation(line: 301, column: 21, scope: !2738)
!2740 = !DILocation(line: 302, column: 21, scope: !2738)
!2741 = !DILocation(line: 303, column: 17, scope: !2738)
!2742 = !DILocation(line: 304, column: 21, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2734, file: !250, line: 303, column: 24)
!2744 = !DILocation(line: 306, column: 44, scope: !2719)
!2745 = !DILocation(line: 58, column: 24, scope: !2662, inlinedAt: !2665)
!2746 = !DILocation(line: 318, column: 14, scope: !2542)
!2747 = !DILocation(line: 318, column: 28, scope: !2542)
!2748 = !DILocation(line: 320, column: 18, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 320, column: 13)
!2750 = !DILocation(line: 320, column: 29, scope: !2749)
!2751 = !DILocation(line: 0, scope: !2749)
!2752 = !DILocation(line: 320, column: 13, scope: !2542)
!2753 = !DILocation(line: 330, column: 23, scope: !2554)
!2754 = !DILocation(line: 330, column: 13, scope: !2542)
!2755 = !DILocation(line: 332, column: 30, scope: !2553)
!2756 = !DILocation(line: 332, column: 23, scope: !2553)
!2757 = !DILocation(line: 335, column: 13, scope: !2553)
!2758 = !DILocation(line: 0, scope: !2553)
!2759 = !DILocation(line: 338, column: 13, scope: !2553)
!2760 = !DILocation(line: 340, column: 35, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2553, file: !250, line: 338, column: 33)
!2762 = !DILocation(line: 340, column: 42, scope: !2761)
!2763 = !DILocation(line: 340, column: 57, scope: !2761)
!2764 = !DILocation(line: 340, column: 65, scope: !2761)
!2765 = !DILocation(line: 47, column: 16, scope: !2669, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 341, column: 29, scope: !2761)
!2767 = !DILocation(line: 47, column: 38, scope: !2669, inlinedAt: !2766)
!2768 = !DILocation(line: 340, column: 17, scope: !2761)
!2769 = !DILocation(line: 0, scope: !2662, inlinedAt: !2766)
!2770 = !DILocation(line: 47, column: 31, scope: !2669, inlinedAt: !2766)
!2771 = !DILocation(line: 47, column: 9, scope: !2670, inlinedAt: !2766)
!2772 = !DILocation(line: 48, column: 60, scope: !2677, inlinedAt: !2766)
!2773 = !DILocation(line: 48, column: 87, scope: !2677, inlinedAt: !2766)
!2774 = !DILocation(line: 49, column: 87, scope: !2677, inlinedAt: !2766)
!2775 = !DILocation(line: 48, column: 18, scope: !2677, inlinedAt: !2766)
!2776 = !DILocation(line: 48, column: 17, scope: !2678, inlinedAt: !2766)
!2777 = !DILocation(line: 47, column: 68, scope: !2669, inlinedAt: !2766)
!2778 = distinct !{!2778, !2771, !2779, !749}
!2779 = !DILocation(line: 56, column: 9, scope: !2670, inlinedAt: !2766)
!2780 = !DILocation(line: 58, column: 24, scope: !2662, inlinedAt: !2766)
!2781 = !DILocation(line: 342, column: 26, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2761, file: !250, line: 341, column: 46)
!2783 = distinct !{!2783, !2768, !2784, !749}
!2784 = !DILocation(line: 343, column: 17, scope: !2761)
!2785 = !DILocation(line: 344, column: 27, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2761, file: !250, line: 344, column: 21)
!2787 = !DILocation(line: 344, column: 21, scope: !2761)
!2788 = !DILocation(line: 349, column: 51, scope: !2761)
!2789 = !{!2576, !473, i64 60}
!2790 = !DILocation(line: 349, column: 75, scope: !2761)
!2791 = !{!2576, !473, i64 0}
!2792 = !DILocation(line: 350, column: 56, scope: !2761)
!2793 = !{!2576, !475, i64 20}
!2794 = !DILocation(line: 350, column: 60, scope: !2761)
!2795 = !DILocation(line: 351, column: 56, scope: !2761)
!2796 = !{!2576, !473, i64 4}
!2797 = !DILocation(line: 349, column: 26, scope: !2761)
!2798 = !DILocation(line: 352, column: 29, scope: !2761)
!2799 = !DILocation(line: 338, column: 27, scope: !2553)
!2800 = distinct !{!2800, !2759, !2801, !749}
!2801 = !DILocation(line: 354, column: 13, scope: !2553)
!2802 = !DILocation(line: 355, column: 13, scope: !2553)
!2803 = !DILocation(line: 357, column: 27, scope: !2553)
!2804 = !DILocation(line: 358, column: 30, scope: !2553)
!2805 = !DILocation(line: 361, column: 17, scope: !2553)
!2806 = !DILocation(line: 362, column: 34, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !250, line: 361, column: 30)
!2808 = distinct !DILexicalBlock(scope: !2553, file: !250, line: 361, column: 17)
!2809 = !DILocation(line: 399, column: 13, scope: !2542)
!2810 = !DILocation(line: 363, column: 41, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !250, line: 363, column: 24)
!2812 = !DILocation(line: 363, column: 24, scope: !2808)
!2813 = !DILocation(line: 364, column: 44, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !250, line: 363, column: 46)
!2815 = !DILocation(line: 364, column: 31, scope: !2814)
!2816 = !DILocation(line: 365, column: 33, scope: !2814)
!2817 = !DILocation(line: 366, column: 13, scope: !2814)
!2818 = !DILocation(line: 369, column: 26, scope: !2557)
!2819 = !{i64 0, i64 4, !1119, i64 4, i64 4, !1119, i64 8, i64 4, !1119, i64 12, i64 4, !1119, i64 16, i64 4, !585, i64 20, i64 4, !585, i64 24, i64 4, !585, i64 28, i64 4, !585, i64 32, i64 1, !2820, i64 36, i64 4, !1119, i64 40, i64 4, !1119, i64 44, i64 4, !1119, i64 48, i64 4, !585, i64 52, i64 4, !1119, i64 56, i64 4, !585, i64 60, i64 4, !1119, i64 64, i64 4, !585, i64 68, i64 4, !585, i64 72, i64 4, !585, i64 76, i64 1, !2820}
!2820 = !{!692, !692, i64 0}
!2821 = !DILocation(line: 0, scope: !2557)
!2822 = !{i64 0, i64 4, !1119, i64 4, i64 4, !1119, i64 8, i64 4, !1119, i64 12, i64 4, !585, i64 16, i64 4, !585, i64 20, i64 4, !585, i64 24, i64 4, !585, i64 28, i64 1, !2820, i64 32, i64 4, !1119, i64 36, i64 4, !1119, i64 40, i64 4, !1119, i64 44, i64 4, !585, i64 48, i64 4, !1119, i64 52, i64 4, !585, i64 56, i64 4, !1119, i64 60, i64 4, !585, i64 64, i64 4, !585, i64 68, i64 4, !585, i64 72, i64 1, !2820}
!2823 = !{i64 0, i64 4, !1119, i64 4, i64 4, !1119, i64 8, i64 4, !1119, i64 12, i64 4, !585, i64 16, i64 4, !1119, i64 20, i64 4, !585, i64 24, i64 4, !1119, i64 28, i64 4, !585, i64 32, i64 4, !585, i64 36, i64 4, !585, i64 40, i64 1, !2820}
!2824 = !{i64 0, i64 4, !1119, i64 4, i64 4, !585, i64 8, i64 4, !585, i64 12, i64 4, !585, i64 16, i64 1, !2820}
!2825 = !DILocation(line: 370, column: 26, scope: !2557)
!2826 = !DILocation(line: 371, column: 23, scope: !2557)
!2827 = !DILocation(line: 371, column: 29, scope: !2557)
!2828 = !DILocation(line: 375, column: 34, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2557, file: !250, line: 375, column: 17)
!2830 = !DILocation(line: 375, column: 17, scope: !2557)
!2831 = !DILocation(line: 376, column: 34, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !250, line: 375, column: 40)
!2833 = !DILocation(line: 376, column: 27, scope: !2832)
!2834 = !DILocation(line: 377, column: 13, scope: !2832)
!2835 = !DILocation(line: 380, column: 13, scope: !2557)
!2836 = !DILocation(line: 381, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2557, file: !250, line: 381, column: 17)
!2838 = !DILocation(line: 381, column: 17, scope: !2557)
!2839 = !DILocation(line: 382, column: 26, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2837, file: !250, line: 381, column: 32)
!2841 = !DILocation(line: 384, column: 13, scope: !2840)
!2842 = !DILocation(line: 387, column: 66, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2837, file: !250, line: 384, column: 20)
!2844 = !DILocation(line: 385, column: 26, scope: !2843)
!2845 = !DILocation(line: 0, scope: !2837)
!2846 = !DILocation(line: 389, column: 13, scope: !2557)
!2847 = !DILocation(line: 399, column: 20, scope: !2562)
!2848 = !DILocation(line: 400, column: 18, scope: !2561)
!2849 = !DILocation(line: 400, column: 30, scope: !2561)
!2850 = !DILocation(line: 0, scope: !2560)
!2851 = !DILocation(line: 402, column: 38, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2560, file: !250, line: 402, column: 13)
!2853 = !{!2576, !475, i64 48}
!2854 = !DILocation(line: 402, column: 31, scope: !2852)
!2855 = !DILocation(line: 402, column: 13, scope: !2560)
!2856 = !DILocation(line: 410, column: 9, scope: !2561)
!2857 = !DILocation(line: 404, column: 38, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !250, line: 404, column: 21)
!2859 = distinct !DILexicalBlock(scope: !2852, file: !250, line: 402, column: 58)
!2860 = !DILocation(line: 404, column: 50, scope: !2858)
!2861 = !DILocation(line: 404, column: 21, scope: !2859)
!2862 = !DILocation(line: 405, column: 50, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !250, line: 404, column: 56)
!2864 = !DILocation(line: 406, column: 42, scope: !2863)
!2865 = !DILocation(line: 406, column: 57, scope: !2863)
!2866 = !DILocation(line: 406, column: 62, scope: !2863)
!2867 = !DILocation(line: 406, column: 82, scope: !2863)
!2868 = !DILocation(line: 0, scope: !2863)
!2869 = !DILocation(line: 406, column: 36, scope: !2863)
!2870 = !DILocation(line: 406, column: 33, scope: !2863)
!2871 = !DILocation(line: 407, column: 17, scope: !2863)
!2872 = !DILocation(line: 402, column: 54, scope: !2852)
!2873 = distinct !{!2873, !2855, !2874, !749}
!2874 = !DILocation(line: 409, column: 13, scope: !2560)
!2875 = !DILocation(line: 412, column: 18, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 412, column: 13)
!2877 = !DILocation(line: 412, column: 29, scope: !2876)
!2878 = !DILocation(line: 0, scope: !2876)
!2879 = !DILocation(line: 412, column: 13, scope: !2542)
!2880 = !DILocation(line: 421, column: 28, scope: !2542)
!2881 = !DILocation(line: 425, column: 25, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2542, file: !250, line: 425, column: 13)
!2883 = !DILocation(line: 426, column: 34, scope: !2882)
!2884 = !DILocation(line: 426, column: 39, scope: !2882)
!2885 = distinct !{!2885, !2570, !2886, !749}
!2886 = !DILocation(line: 430, column: 5, scope: !2533)
!2887 = !DILocation(line: 426, column: 53, scope: !2882)
!2888 = !DILocation(line: 426, column: 60, scope: !2882)
!2889 = !DILocation(line: 426, column: 65, scope: !2882)
!2890 = !DILocation(line: 426, column: 73, scope: !2882)
!2891 = !DILocation(line: 426, column: 85, scope: !2882)
!2892 = !DILocation(line: 426, column: 91, scope: !2882)
!2893 = !DILocation(line: 426, column: 99, scope: !2882)
!2894 = !DILocation(line: 425, column: 13, scope: !2542)
!2895 = !DILocation(line: 428, column: 13, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2882, file: !250, line: 426, column: 119)
!2897 = !DILocation(line: 429, column: 9, scope: !2896)
!2898 = !DILocation(line: 431, column: 1, scope: !2533)
!2899 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !250, file: !250, line: 797, type: !371, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2900)
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906}
!2901 = !DILocalVariable(name: "user_context", arg: 1, scope: !2899, file: !250, line: 797, type: !15)
!2902 = !DILocalVariable(name: "f", arg: 2, scope: !2899, file: !250, line: 797, type: !256)
!2903 = !DILocalVariable(name: "min", arg: 3, scope: !2899, file: !250, line: 798, type: !161)
!2904 = !DILocalVariable(name: "size", arg: 4, scope: !2899, file: !250, line: 798, type: !161)
!2905 = !DILocalVariable(name: "closure", arg: 5, scope: !2899, file: !250, line: 798, type: !260)
!2906 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2899, file: !250, line: 798, type: !15)
!2907 = !DILocation(line: 0, scope: !2899)
!2908 = !DILocation(line: 799, column: 12, scope: !2899)
!2909 = !DILocation(line: 799, column: 5, scope: !2899)
!2910 = distinct !DISubprogram(name: "halide_do_task", scope: !250, file: !250, line: 787, type: !365, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2911)
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DILocalVariable(name: "user_context", arg: 1, scope: !2910, file: !250, line: 787, type: !15)
!2913 = !DILocalVariable(name: "f", arg: 2, scope: !2910, file: !250, line: 787, type: !282)
!2914 = !DILocalVariable(name: "idx", arg: 3, scope: !2910, file: !250, line: 787, type: !161)
!2915 = !DILocalVariable(name: "closure", arg: 4, scope: !2910, file: !250, line: 788, type: !260)
!2916 = !DILocation(line: 0, scope: !2910)
!2917 = !DILocation(line: 789, column: 14, scope: !2910)
!2918 = !DILocation(line: 789, column: 12, scope: !2910)
!2919 = !DILocation(line: 789, column: 5, scope: !2910)
!2920 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !33, file: !250, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !250, line: 433, type: !15)
!2923 = !DILocation(line: 0, scope: !2920)
!2924 = !DILocation(line: 434, column: 5, scope: !2920)
!2925 = !DILocation(line: 435, column: 34, scope: !2920)
!2926 = !DILocation(line: 435, column: 5, scope: !2920)
!2927 = !DILocation(line: 436, column: 5, scope: !2920)
!2928 = !DILocation(line: 437, column: 1, scope: !2920)
!2929 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !33, file: !250, line: 439, type: !2930, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !161, !248, !248}
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2943, !2945}
!2933 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2929, file: !250, line: 439, type: !161)
!2934 = !DILocalVariable(name: "jobs", arg: 2, scope: !2929, file: !250, line: 439, type: !248)
!2935 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2929, file: !250, line: 439, type: !248)
!2936 = !DILocalVariable(name: "min_threads", scope: !2929, file: !250, line: 457, type: !161)
!2937 = !DILocalVariable(name: "workers_to_wake", scope: !2929, file: !250, line: 461, type: !161)
!2938 = !DILocalVariable(name: "stealable_jobs", scope: !2929, file: !250, line: 465, type: !66)
!2939 = !DILocalVariable(name: "job_has_acquires", scope: !2929, file: !250, line: 467, type: !66)
!2940 = !DILocalVariable(name: "job_may_block", scope: !2929, file: !250, line: 468, type: !66)
!2941 = !DILocalVariable(name: "i", scope: !2942, file: !250, line: 469, type: !161)
!2942 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 469, column: 5)
!2943 = !DILocalVariable(name: "i", scope: !2944, file: !250, line: 527, type: !161)
!2944 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 527, column: 5)
!2945 = !DILocalVariable(name: "nested_parallelism", scope: !2929, file: !250, line: 537, type: !66)
!2946 = !DILocation(line: 0, scope: !2929)
!2947 = !DILocation(line: 440, column: 21, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 440, column: 9)
!2949 = !{!2582, !692, i64 1073}
!2950 = !DILocation(line: 440, column: 9, scope: !2929)
!2951 = !DILocalVariable(name: "bytes", scope: !2952, file: !250, line: 148, type: !265)
!2952 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !325, file: !250, line: 146, type: !355, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !354, retainedNodes: !2953)
!2953 = !{!2954, !2951, !2956}
!2954 = !DILocalVariable(name: "this", arg: 1, scope: !2952, type: !2955, flags: DIFlagArtificial | DIFlagObjectPointer)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!2956 = !DILocalVariable(name: "limit", scope: !2952, file: !250, line: 149, type: !265)
!2957 = !DILocation(line: 0, scope: !2952, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 441, column: 20, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2948, file: !250, line: 440, column: 34)
!2960 = !DILocation(line: 150, column: 33, scope: !2952, inlinedAt: !2958)
!2961 = !DILocation(line: 150, column: 40, scope: !2952, inlinedAt: !2958)
!2962 = !DILocation(line: 150, column: 9, scope: !2952, inlinedAt: !2958)
!2963 = !DILocation(line: 151, column: 18, scope: !2964, inlinedAt: !2958)
!2964 = distinct !DILexicalBlock(scope: !2952, file: !250, line: 150, column: 46)
!2965 = !DILocation(line: 150, column: 22, scope: !2952, inlinedAt: !2958)
!2966 = !DILocation(line: 150, column: 30, scope: !2952, inlinedAt: !2958)
!2967 = distinct !{!2967, !2962, !2968, !749}
!2968 = !DILocation(line: 152, column: 9, scope: !2952, inlinedAt: !2958)
!2969 = !DILocation(line: 153, column: 9, scope: !2970, inlinedAt: !2958)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !250, line: 153, column: 9)
!2971 = distinct !DILexicalBlock(scope: !2952, file: !250, line: 153, column: 9)
!2972 = !DILocation(line: 153, column: 9, scope: !2971, inlinedAt: !2958)
!2973 = !DILocation(line: 153, column: 9, scope: !2974, inlinedAt: !2958)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !250, line: 153, column: 9)
!2975 = !DILocation(line: 446, column: 25, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2959, file: !250, line: 446, column: 13)
!2977 = !{!2582, !475, i64 4}
!2978 = !DILocation(line: 446, column: 14, scope: !2976)
!2979 = !DILocation(line: 446, column: 13, scope: !2959)
!2980 = !DILocation(line: 447, column: 50, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !250, line: 446, column: 50)
!2982 = !DILocation(line: 447, column: 48, scope: !2981)
!2983 = !DILocation(line: 448, column: 9, scope: !2981)
!2984 = !DILocation(line: 449, column: 75, scope: !2959)
!2985 = !DILocation(line: 449, column: 46, scope: !2959)
!2986 = !DILocation(line: 449, column: 44, scope: !2959)
!2987 = !DILocation(line: 450, column: 32, scope: !2959)
!2988 = !DILocation(line: 451, column: 5, scope: !2959)
!2989 = !DILocation(line: 0, scope: !2942)
!2990 = !DILocation(line: 469, column: 23, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2942, file: !250, line: 469, column: 5)
!2992 = !DILocation(line: 469, column: 5, scope: !2942)
!2993 = !DILocation(line: 457, column: 9, scope: !2929)
!2994 = !DILocation(line: 487, column: 21, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 487, column: 9)
!2996 = !DILocation(line: 487, column: 9, scope: !2929)
!2997 = !DILocation(line: 470, column: 26, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !250, line: 470, column: 13)
!2999 = distinct !DILexicalBlock(scope: !2991, file: !250, line: 469, column: 40)
!3000 = !DILocation(line: 470, column: 38, scope: !2998)
!3001 = !DILocation(line: 470, column: 13, scope: !2999)
!3002 = !DILocation(line: 476, column: 26, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !250, line: 476, column: 13)
!3004 = !DILocation(line: 476, column: 41, scope: !3003)
!3005 = !DILocation(line: 476, column: 13, scope: !2999)
!3006 = !DILocation(line: 480, column: 26, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2999, file: !250, line: 480, column: 13)
!3008 = !DILocation(line: 480, column: 13, scope: !2999)
!3009 = !DILocation(line: 481, column: 28, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !250, line: 480, column: 34)
!3011 = !DILocation(line: 482, column: 9, scope: !3010)
!3012 = !DILocation(line: 483, column: 45, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3007, file: !250, line: 482, column: 16)
!3014 = !DILocation(line: 483, column: 29, scope: !3013)
!3015 = !DILocation(line: 0, scope: !3007)
!3016 = !DILocation(line: 469, column: 36, scope: !2991)
!3017 = distinct !{!3017, !2992, !3018, !749}
!3018 = !DILocation(line: 485, column: 5, scope: !2942)
!3019 = !DILocation(line: 497, column: 30, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !250, line: 497, column: 13)
!3021 = distinct !DILexicalBlock(scope: !2995, file: !250, line: 487, column: 33)
!3022 = !DILocation(line: 503, column: 27, scope: !3021)
!3023 = !DILocation(line: 503, column: 43, scope: !3021)
!3024 = !DILocation(line: 503, column: 57, scope: !3021)
!3025 = !DILocation(line: 504, column: 58, scope: !3021)
!3026 = !DILocation(line: 504, column: 82, scope: !3021)
!3027 = !DILocation(line: 504, column: 45, scope: !3021)
!3028 = !DILocation(line: 504, column: 87, scope: !3021)
!3029 = !DILocation(line: 505, column: 45, scope: !3021)
!3030 = !DILocation(line: 505, column: 63, scope: !3021)
!3031 = !{!2582, !475, i64 1076}
!3032 = !DILocation(line: 505, column: 50, scope: !3021)
!3033 = !DILocation(line: 505, column: 80, scope: !3021)
!3034 = !DILocation(line: 503, column: 9, scope: !3021)
!3035 = !DILocation(line: 508, column: 35, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3021, file: !250, line: 505, column: 96)
!3037 = !DILocation(line: 510, column: 17, scope: !3036)
!3038 = !DILocation(line: 509, column: 58, scope: !3036)
!3039 = !DILocation(line: 509, column: 13, scope: !3036)
!3040 = !DILocation(line: 509, column: 62, scope: !3036)
!3041 = distinct !{!3041, !3034, !3042, !749}
!3042 = !DILocation(line: 511, column: 9, scope: !3021)
!3043 = !DILocation(line: 513, column: 30, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3021, file: !250, line: 513, column: 13)
!3045 = !DILocation(line: 514, column: 40, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !250, line: 513, column: 48)
!3047 = !DILocation(line: 515, column: 9, scope: !3046)
!3048 = !DILocation(line: 518, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !250, line: 518, column: 9)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !250, line: 518, column: 9)
!3051 = distinct !DILexicalBlock(scope: !2995, file: !250, line: 516, column: 12)
!3052 = !{!2576, !475, i64 56}
!3053 = !DILocation(line: 518, column: 9, scope: !3050)
!3054 = !DILocation(line: 518, column: 9, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3049, file: !250, line: 518, column: 9)
!3056 = !DILocation(line: 521, column: 30, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3051, file: !250, line: 521, column: 13)
!3058 = !DILocation(line: 522, column: 42, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3057, file: !250, line: 521, column: 48)
!3060 = !DILocation(line: 523, column: 9, scope: !3059)
!3061 = !DILocation(line: 0, scope: !2944)
!3062 = !DILocation(line: 527, column: 5, scope: !2944)
!3063 = !DILocation(line: 0, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !250, line: 527, column: 45)
!3065 = distinct !DILexicalBlock(scope: !2944, file: !250, line: 527, column: 5)
!3066 = !DILocation(line: 538, column: 20, scope: !2929)
!3067 = !DILocation(line: 538, column: 9, scope: !2929)
!3068 = !DILocation(line: 538, column: 36, scope: !2929)
!3069 = !DILocation(line: 542, column: 28, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 542, column: 9)
!3071 = !DILocation(line: 0, scope: !3070)
!3072 = !DILocation(line: 550, column: 5, scope: !2929)
!3073 = !DILocation(line: 551, column: 20, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 551, column: 9)
!3075 = !DILocation(line: 551, column: 52, scope: !3074)
!3076 = !DILocation(line: 551, column: 39, scope: !3074)
!3077 = !DILocation(line: 551, column: 9, scope: !2929)
!3078 = !DILocation(line: 530, column: 39, scope: !3064)
!3079 = !DILocation(line: 530, column: 9, scope: !3064)
!3080 = !DILocation(line: 530, column: 17, scope: !3064)
!3081 = !DILocation(line: 530, column: 26, scope: !3064)
!3082 = !DILocation(line: 531, column: 17, scope: !3064)
!3083 = !DILocation(line: 531, column: 26, scope: !3064)
!3084 = !DILocation(line: 532, column: 17, scope: !3064)
!3085 = !DILocation(line: 532, column: 31, scope: !3064)
!3086 = !DILocation(line: 533, column: 17, scope: !3064)
!3087 = !DILocation(line: 533, column: 34, scope: !3064)
!3088 = !DILocation(line: 527, column: 34, scope: !3065)
!3089 = distinct !{!3089, !3062, !3090, !749}
!3090 = !DILocation(line: 535, column: 5, scope: !2944)
!3091 = !DILocation(line: 552, column: 9, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3074, file: !250, line: 551, column: 65)
!3093 = !DILocation(line: 553, column: 13, scope: !3092)
!3094 = !DILocation(line: 554, column: 13, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !250, line: 553, column: 29)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !250, line: 553, column: 13)
!3097 = !DILocation(line: 555, column: 9, scope: !3095)
!3098 = !DILocation(line: 558, column: 26, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2929, file: !250, line: 558, column: 9)
!3100 = !DILocation(line: 559, column: 13, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !250, line: 558, column: 44)
!3102 = !DILocation(line: 0, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3101, file: !250, line: 559, column: 13)
!3104 = !DILocation(line: 565, column: 1, scope: !2929)
!3105 = distinct !DISubprogram(name: "halide_default_do_task", scope: !250, file: !250, line: 589, type: !365, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DILocalVariable(name: "user_context", arg: 1, scope: !3105, file: !250, line: 589, type: !15)
!3108 = !DILocalVariable(name: "f", arg: 2, scope: !3105, file: !250, line: 589, type: !282)
!3109 = !DILocalVariable(name: "idx", arg: 3, scope: !3105, file: !250, line: 589, type: !161)
!3110 = !DILocalVariable(name: "closure", arg: 4, scope: !3105, file: !250, line: 590, type: !260)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 591, column: 12, scope: !3105)
!3113 = !DILocation(line: 591, column: 5, scope: !3105)
!3114 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !250, file: !250, line: 594, type: !371, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121}
!3116 = !DILocalVariable(name: "user_context", arg: 1, scope: !3114, file: !250, line: 594, type: !15)
!3117 = !DILocalVariable(name: "f", arg: 2, scope: !3114, file: !250, line: 594, type: !256)
!3118 = !DILocalVariable(name: "min", arg: 3, scope: !3114, file: !250, line: 595, type: !161)
!3119 = !DILocalVariable(name: "extent", arg: 4, scope: !3114, file: !250, line: 595, type: !161)
!3120 = !DILocalVariable(name: "closure", arg: 5, scope: !3114, file: !250, line: 595, type: !260)
!3121 = !DILocalVariable(name: "task_parent", arg: 6, scope: !3114, file: !250, line: 596, type: !15)
!3122 = !DILocation(line: 0, scope: !3114)
!3123 = !DILocation(line: 597, column: 12, scope: !3114)
!3124 = !DILocation(line: 597, column: 5, scope: !3114)
!3125 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !250, file: !250, line: 600, type: !377, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132}
!3127 = !DILocalVariable(name: "user_context", arg: 1, scope: !3125, file: !250, line: 600, type: !15)
!3128 = !DILocalVariable(name: "f", arg: 2, scope: !3125, file: !250, line: 600, type: !282)
!3129 = !DILocalVariable(name: "min", arg: 3, scope: !3125, file: !250, line: 601, type: !161)
!3130 = !DILocalVariable(name: "size", arg: 4, scope: !3125, file: !250, line: 601, type: !161)
!3131 = !DILocalVariable(name: "closure", arg: 5, scope: !3125, file: !250, line: 601, type: !260)
!3132 = !DILocalVariable(name: "job", scope: !3125, file: !250, line: 606, type: !249)
!3133 = !DILocation(line: 0, scope: !3125)
!3134 = !DILocation(line: 602, column: 14, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3125, file: !250, line: 602, column: 9)
!3136 = !DILocation(line: 602, column: 9, scope: !3125)
!3137 = !DILocation(line: 606, column: 5, scope: !3125)
!3138 = !DILocation(line: 606, column: 10, scope: !3125)
!3139 = !DILocation(line: 607, column: 14, scope: !3125)
!3140 = !DILocation(line: 607, column: 17, scope: !3125)
!3141 = !DILocation(line: 608, column: 14, scope: !3125)
!3142 = !DILocation(line: 608, column: 18, scope: !3125)
!3143 = !DILocation(line: 609, column: 14, scope: !3125)
!3144 = !DILocation(line: 609, column: 21, scope: !3125)
!3145 = !DILocation(line: 610, column: 14, scope: !3125)
!3146 = !DILocation(line: 610, column: 21, scope: !3125)
!3147 = !DILocation(line: 611, column: 14, scope: !3125)
!3148 = !DILocation(line: 611, column: 25, scope: !3125)
!3149 = !DILocation(line: 612, column: 14, scope: !3125)
!3150 = !DILocation(line: 612, column: 29, scope: !3125)
!3151 = !DILocation(line: 613, column: 14, scope: !3125)
!3152 = !DILocation(line: 613, column: 22, scope: !3125)
!3153 = !DILocation(line: 614, column: 14, scope: !3125)
!3154 = !DILocation(line: 614, column: 26, scope: !3125)
!3155 = !DILocation(line: 615, column: 14, scope: !3125)
!3156 = !DILocation(line: 615, column: 19, scope: !3125)
!3157 = !{!2576, !473, i64 8}
!3158 = !DILocation(line: 616, column: 9, scope: !3125)
!3159 = !DILocation(line: 616, column: 17, scope: !3125)
!3160 = !{!2576, !473, i64 36}
!3161 = !DILocation(line: 617, column: 9, scope: !3125)
!3162 = !DILocation(line: 617, column: 22, scope: !3125)
!3163 = !DILocation(line: 618, column: 9, scope: !3125)
!3164 = !DILocation(line: 618, column: 21, scope: !3125)
!3165 = !DILocation(line: 619, column: 9, scope: !3125)
!3166 = !DILocation(line: 619, column: 24, scope: !3125)
!3167 = !DILocation(line: 620, column: 9, scope: !3125)
!3168 = !DILocation(line: 620, column: 24, scope: !3125)
!3169 = !DILocation(line: 621, column: 9, scope: !3125)
!3170 = !DILocation(line: 621, column: 27, scope: !3125)
!3171 = !DILocation(line: 622, column: 9, scope: !3125)
!3172 = !DILocation(line: 622, column: 18, scope: !3125)
!3173 = !DILocation(line: 623, column: 9, scope: !3125)
!3174 = !DILocation(line: 623, column: 23, scope: !3125)
!3175 = !DILocation(line: 624, column: 9, scope: !3125)
!3176 = !DILocation(line: 624, column: 20, scope: !3125)
!3177 = !DILocation(line: 625, column: 5, scope: !3125)
!3178 = !DILocation(line: 626, column: 5, scope: !3125)
!3179 = !DILocation(line: 627, column: 5, scope: !3125)
!3180 = !DILocation(line: 628, column: 5, scope: !3125)
!3181 = !DILocation(line: 629, column: 16, scope: !3125)
!3182 = !DILocation(line: 630, column: 1, scope: !3125)
!3183 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !250, file: !250, line: 632, type: !383, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3192, !3193}
!3185 = !DILocalVariable(name: "user_context", arg: 1, scope: !3183, file: !250, line: 632, type: !15)
!3186 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3183, file: !250, line: 632, type: !161)
!3187 = !DILocalVariable(name: "tasks", arg: 3, scope: !3183, file: !250, line: 633, type: !385)
!3188 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3183, file: !250, line: 634, type: !15)
!3189 = !DILocalVariable(name: "jobs", scope: !3183, file: !250, line: 635, type: !248)
!3190 = !DILocalVariable(name: "i", scope: !3191, file: !250, line: 637, type: !161)
!3191 = distinct !DILexicalBlock(scope: !3183, file: !250, line: 637, column: 5)
!3192 = !DILocalVariable(name: "exit_status", scope: !3183, file: !250, line: 659, type: !161)
!3193 = !DILocalVariable(name: "i", scope: !3194, file: !250, line: 660, type: !161)
!3194 = distinct !DILexicalBlock(scope: !3183, file: !250, line: 660, column: 5)
!3195 = !DILocation(line: 0, scope: !3183)
!3196 = !DILocation(line: 635, column: 56, scope: !3183)
!3197 = !DILocation(line: 635, column: 26, scope: !3183)
!3198 = !DILocation(line: 635, column: 18, scope: !3183)
!3199 = !DILocation(line: 0, scope: !3191)
!3200 = !DILocation(line: 637, column: 23, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3191, file: !250, line: 637, column: 5)
!3202 = !DILocation(line: 637, column: 5, scope: !3191)
!3203 = !DILocation(line: 653, column: 19, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3183, file: !250, line: 653, column: 9)
!3205 = !DILocation(line: 653, column: 9, scope: !3183)
!3206 = !DILocation(line: 638, column: 20, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !250, line: 638, column: 13)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !250, line: 637, column: 41)
!3209 = !{!2577, !475, i64 24}
!3210 = !DILocation(line: 638, column: 27, scope: !3207)
!3211 = !DILocation(line: 638, column: 13, scope: !3208)
!3212 = !DILocation(line: 640, column: 22, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3207, file: !250, line: 638, column: 33)
!3214 = !DILocation(line: 641, column: 13, scope: !3213)
!3215 = !DILocation(line: 643, column: 30, scope: !3208)
!3216 = !DILocation(line: 643, column: 9, scope: !3208)
!3217 = !DILocation(line: 643, column: 22, scope: !3208)
!3218 = !{i64 0, i64 4, !1119, i64 4, i64 4, !1119, i64 8, i64 4, !1119, i64 12, i64 4, !1119, i64 16, i64 4, !585, i64 20, i64 4, !585, i64 24, i64 4, !585, i64 28, i64 4, !585, i64 32, i64 1, !2820}
!3219 = !DILocation(line: 644, column: 17, scope: !3208)
!3220 = !DILocation(line: 644, column: 25, scope: !3208)
!3221 = !DILocation(line: 645, column: 17, scope: !3208)
!3222 = !DILocation(line: 645, column: 30, scope: !3208)
!3223 = !DILocation(line: 646, column: 17, scope: !3208)
!3224 = !DILocation(line: 646, column: 29, scope: !3208)
!3225 = !DILocation(line: 647, column: 17, scope: !3208)
!3226 = !DILocation(line: 647, column: 32, scope: !3208)
!3227 = !DILocation(line: 648, column: 17, scope: !3208)
!3228 = !DILocation(line: 648, column: 32, scope: !3208)
!3229 = !DILocation(line: 649, column: 17, scope: !3208)
!3230 = !DILocation(line: 649, column: 35, scope: !3208)
!3231 = !DILocation(line: 650, column: 17, scope: !3208)
!3232 = !DILocation(line: 650, column: 28, scope: !3208)
!3233 = !DILocation(line: 651, column: 5, scope: !3208)
!3234 = !DILocation(line: 637, column: 37, scope: !3201)
!3235 = distinct !{!3235, !3202, !3236, !749}
!3236 = !DILocation(line: 651, column: 5, scope: !3191)
!3237 = !DILocation(line: 657, column: 5, scope: !3183)
!3238 = !DILocation(line: 658, column: 50, scope: !3183)
!3239 = !DILocation(line: 658, column: 5, scope: !3183)
!3240 = !DILocation(line: 0, scope: !3194)
!3241 = !DILocation(line: 660, column: 23, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3194, file: !250, line: 660, column: 5)
!3243 = !DILocation(line: 660, column: 5, scope: !3194)
!3244 = !DILocation(line: 668, column: 5, scope: !3183)
!3245 = !DILocation(line: 663, column: 43, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !250, line: 660, column: 41)
!3247 = !DILocation(line: 663, column: 9, scope: !3246)
!3248 = !DILocation(line: 664, column: 21, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3246, file: !250, line: 664, column: 13)
!3250 = !DILocation(line: 664, column: 33, scope: !3249)
!3251 = !DILocation(line: 664, column: 13, scope: !3246)
!3252 = !DILocation(line: 660, column: 37, scope: !3242)
!3253 = distinct !{!3253, !3243, !3254, !749}
!3254 = !DILocation(line: 667, column: 5, scope: !3194)
!3255 = !DILocation(line: 670, column: 1, scope: !3183)
!3256 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !250, file: !250, line: 715, type: !390, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3257)
!3257 = !{!3258, !3259, !3260}
!3258 = !DILocalVariable(name: "s", arg: 1, scope: !3256, file: !250, line: 715, type: !273)
!3259 = !DILocalVariable(name: "n", arg: 2, scope: !3256, file: !250, line: 715, type: !161)
!3260 = !DILocalVariable(name: "sem", scope: !3256, file: !250, line: 716, type: !305)
!3261 = !DILocation(line: 0, scope: !3256)
!3262 = !DILocation(line: 717, column: 76, scope: !3256)
!3263 = !DILocalVariable(name: "addr", arg: 1, scope: !3264, file: !31, line: 154, type: !597)
!3264 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !634, file: !31, line: 154, type: !3265, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3269, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{null, !597, !597}
!3267 = !{!3263, !3268}
!3268 = !DILocalVariable(name: "val", arg: 2, scope: !3264, file: !31, line: 154, type: !597)
!3269 = !{!3270}
!3270 = !DITemplateTypeParameter(name: "T", type: !161)
!3271 = !DILocation(line: 0, scope: !3264, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 717, column: 5, scope: !3256)
!3273 = !DILocation(line: 155, column: 11, scope: !3264, inlinedAt: !3272)
!3274 = !DILocation(line: 156, column: 5, scope: !3264, inlinedAt: !3272)
!3275 = !DILocation(line: 718, column: 5, scope: !3256)
!3276 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !250, file: !250, line: 735, type: !396, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282}
!3278 = !DILocalVariable(name: "s", arg: 1, scope: !3276, file: !250, line: 735, type: !273)
!3279 = !DILocalVariable(name: "n", arg: 2, scope: !3276, file: !250, line: 735, type: !161)
!3280 = !DILocalVariable(name: "sem", scope: !3276, file: !250, line: 739, type: !305)
!3281 = !DILocalVariable(name: "expected", scope: !3276, file: !250, line: 741, type: !161)
!3282 = !DILocalVariable(name: "desired", scope: !3276, file: !250, line: 742, type: !161)
!3283 = !DILocation(line: 0, scope: !3276)
!3284 = !DILocation(line: 736, column: 11, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3276, file: !250, line: 736, column: 9)
!3286 = !DILocation(line: 736, column: 9, scope: !3276)
!3287 = !DILocation(line: 743, column: 75, scope: !3276)
!3288 = !DILocalVariable(name: "addr", arg: 1, scope: !3289, file: !31, line: 140, type: !597)
!3289 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !634, file: !31, line: 140, type: !3265, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3269, retainedNodes: !3290)
!3290 = !{!3288, !3291}
!3291 = !DILocalVariable(name: "val", arg: 2, scope: !3289, file: !31, line: 140, type: !597)
!3292 = !DILocation(line: 0, scope: !3289, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 743, column: 5, scope: !3276)
!3294 = !DILocation(line: 141, column: 5, scope: !3289, inlinedAt: !3293)
!3295 = !DILocation(line: 142, column: 12, scope: !3289, inlinedAt: !3293)
!3296 = !DILocation(line: 744, column: 5, scope: !3276)
!3297 = !DILocation(line: 745, column: 28, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3276, file: !250, line: 744, column: 8)
!3299 = !DILocation(line: 746, column: 22, scope: !3276)
!3300 = !DILocation(line: 746, column: 27, scope: !3276)
!3301 = !DILocalVariable(name: "addr", arg: 1, scope: !3302, file: !31, line: 118, type: !597)
!3302 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !634, file: !31, line: 118, type: !3303, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3269, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!66, !597, !597, !597}
!3305 = !{!3301, !3306, !3307}
!3306 = !DILocalVariable(name: "expected", arg: 2, scope: !3302, file: !31, line: 118, type: !597)
!3307 = !DILocalVariable(name: "desired", arg: 3, scope: !3302, file: !31, line: 118, type: !597)
!3308 = !DILocation(line: 0, scope: !3302, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 747, column: 15, scope: !3276)
!3310 = !DILocalVariable(name: "addr", arg: 1, scope: !3311, file: !31, line: 102, type: !597)
!3311 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_141cas_strong_sequentially_consistent_helperIiEEbPT_S6_S6_", scope: !634, file: !31, line: 102, type: !3303, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3269, retainedNodes: !3312)
!3312 = !{!3310, !3313, !3314, !3315, !3316}
!3313 = !DILocalVariable(name: "expected", arg: 2, scope: !3311, file: !31, line: 102, type: !597)
!3314 = !DILocalVariable(name: "desired", arg: 3, scope: !3311, file: !31, line: 102, type: !597)
!3315 = !DILocalVariable(name: "oldval", scope: !3311, file: !31, line: 103, type: !161)
!3316 = !DILocalVariable(name: "gotval", scope: !3311, file: !31, line: 104, type: !161)
!3317 = !DILocation(line: 0, scope: !3311, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 119, column: 12, scope: !3302, inlinedAt: !3309)
!3319 = !DILocation(line: 104, column: 16, scope: !3311, inlinedAt: !3318)
!3320 = !DILocation(line: 106, column: 19, scope: !3311, inlinedAt: !3318)
!3321 = !DILocation(line: 746, column: 5, scope: !3298)
!3322 = distinct !{!3322, !3296, !3323, !749}
!3323 = !DILocation(line: 747, column: 123, scope: !3276)
!3324 = !DILocation(line: 749, column: 1, scope: !3276)
!3325 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !250, file: !250, line: 721, type: !390, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3326 = !{!3327, !3328, !3329, !3330}
!3327 = !DILocalVariable(name: "s", arg: 1, scope: !3325, file: !250, line: 721, type: !273)
!3328 = !DILocalVariable(name: "n", arg: 2, scope: !3325, file: !250, line: 721, type: !161)
!3329 = !DILocalVariable(name: "sem", scope: !3325, file: !250, line: 722, type: !305)
!3330 = !DILocalVariable(name: "old_val", scope: !3325, file: !250, line: 723, type: !161)
!3331 = !DILocation(line: 0, scope: !3325)
!3332 = !DILocation(line: 723, column: 102, scope: !3325)
!3333 = !DILocalVariable(name: "addr", arg: 1, scope: !3334, file: !31, line: 97, type: !597)
!3334 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !634, file: !31, line: 97, type: !3335, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3269, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!161, !597, !161}
!3337 = !{!3333, !3338}
!3338 = !DILocalVariable(name: "val", arg: 2, scope: !3334, file: !31, line: 97, type: !161)
!3339 = !DILocation(line: 0, scope: !3334, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 723, column: 19, scope: !3325)
!3341 = !DILocation(line: 98, column: 12, scope: !3334, inlinedAt: !3340)
!3342 = !DILocation(line: 725, column: 17, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3325, file: !250, line: 725, column: 9)
!3344 = !DILocation(line: 725, column: 22, scope: !3343)
!3345 = !DILocation(line: 727, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !250, line: 725, column: 33)
!3347 = !DILocation(line: 728, column: 9, scope: !3346)
!3348 = !DILocation(line: 729, column: 9, scope: !3346)
!3349 = !DILocation(line: 730, column: 9, scope: !3346)
!3350 = !DILocation(line: 731, column: 5, scope: !3346)
!3351 = !DILocation(line: 732, column: 20, scope: !3325)
!3352 = !DILocation(line: 732, column: 5, scope: !3325)
!3353 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !9, file: !250, line: 584, type: !772, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3354 = !DILocation(line: 585, column: 5, scope: !3353)
!3355 = !DILocation(line: 586, column: 1, scope: !3353)
!3356 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !250, file: !250, line: 689, type: !772, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3357)
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "i", scope: !3359, file: !250, line: 702, type: !161)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !250, line: 702, column: 9)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !250, line: 690, column: 33)
!3361 = distinct !DILexicalBlock(scope: !3356, file: !250, line: 690, column: 9)
!3362 = !DILocation(line: 690, column: 20, scope: !3361)
!3363 = !DILocation(line: 690, column: 9, scope: !3356)
!3364 = !DILocation(line: 693, column: 9, scope: !3360)
!3365 = !DILocation(line: 695, column: 29, scope: !3360)
!3366 = !DILocation(line: 696, column: 9, scope: !3360)
!3367 = !DILocation(line: 697, column: 9, scope: !3360)
!3368 = !DILocation(line: 698, column: 9, scope: !3360)
!3369 = !DILocation(line: 699, column: 9, scope: !3360)
!3370 = !DILocation(line: 0, scope: !3359)
!3371 = !DILocation(line: 702, column: 40, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3359, file: !250, line: 702, column: 9)
!3373 = !DILocation(line: 702, column: 27, scope: !3372)
!3374 = !DILocation(line: 702, column: 9, scope: !3359)
!3375 = !DILocalVariable(name: "this", arg: 1, scope: !3376, type: !3380, flags: DIFlagArtificial | DIFlagObjectPointer)
!3376 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !325, file: !250, line: 158, type: !358, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !357, retainedNodes: !3377)
!3377 = !{!3375, !3378, !3379}
!3378 = !DILocalVariable(name: "bytes", scope: !3376, file: !250, line: 160, type: !309)
!3379 = !DILocalVariable(name: "limit", scope: !3376, file: !250, line: 161, type: !309)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 32)
!3381 = !DILocation(line: 0, scope: !3376, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 707, column: 20, scope: !3360)
!3383 = !DILocation(line: 162, column: 9, scope: !3376, inlinedAt: !3382)
!3384 = !DILocation(line: 708, column: 5, scope: !3360)
!3385 = !DILocation(line: 703, column: 32, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3372, file: !250, line: 702, column: 62)
!3387 = !DILocation(line: 703, column: 13, scope: !3386)
!3388 = !DILocation(line: 702, column: 58, scope: !3372)
!3389 = distinct !{!3389, !3374, !3390, !749}
!3390 = !DILocation(line: 704, column: 9, scope: !3359)
!3391 = !DILocation(line: 709, column: 1, scope: !3356)
!3392 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !250, file: !250, line: 672, type: !2496, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3393)
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3392, file: !250, line: 672, type: !161)
!3395 = !DILocalVariable(name: "old", scope: !3392, file: !250, line: 683, type: !161)
!3396 = !DILocation(line: 0, scope: !3392)
!3397 = !DILocation(line: 673, column: 11, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3392, file: !250, line: 673, column: 9)
!3399 = !DILocation(line: 673, column: 9, scope: !3392)
!3400 = !DILocation(line: 674, column: 9, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !250, line: 673, column: 16)
!3402 = !DILocation(line: 679, column: 5, scope: !3392)
!3403 = !DILocation(line: 680, column: 9, scope: !3392)
!3404 = !DILocation(line: 680, column: 11, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3392, file: !250, line: 680, column: 9)
!3406 = !DILocation(line: 681, column: 13, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3405, file: !250, line: 680, column: 17)
!3408 = !DILocation(line: 682, column: 5, scope: !3407)
!3409 = !DILocation(line: 683, column: 26, scope: !3392)
!3410 = !DILocation(line: 684, column: 42, scope: !3392)
!3411 = !DILocation(line: 684, column: 40, scope: !3392)
!3412 = !DILocation(line: 685, column: 5, scope: !3392)
!3413 = !DILocation(line: 686, column: 5, scope: !3392)
!3414 = !DISubprogram(name: "halide_error", scope: !242, file: !242, line: 111, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3415 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !250, file: !250, line: 751, type: !3416, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!363, !363}
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "f", arg: 1, scope: !3415, file: !250, line: 751, type: !363)
!3420 = !DILocalVariable(name: "result", scope: !3415, file: !250, line: 752, type: !363)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 752, column: 31, scope: !3415)
!3423 = !DILocation(line: 753, column: 20, scope: !3415)
!3424 = !DILocation(line: 754, column: 5, scope: !3415)
!3425 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !250, file: !250, line: 757, type: !3426, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!369, !369}
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "f", arg: 1, scope: !3425, file: !250, line: 757, type: !369)
!3430 = !DILocalVariable(name: "result", scope: !3425, file: !250, line: 758, type: !369)
!3431 = !DILocation(line: 0, scope: !3425)
!3432 = !DILocation(line: 758, column: 36, scope: !3425)
!3433 = !DILocation(line: 759, column: 25, scope: !3425)
!3434 = !DILocation(line: 760, column: 5, scope: !3425)
!3435 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !250, file: !250, line: 763, type: !3436, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!375, !375}
!3438 = !{!3439, !3440}
!3439 = !DILocalVariable(name: "f", arg: 1, scope: !3435, file: !250, line: 763, type: !375)
!3440 = !DILocalVariable(name: "result", scope: !3435, file: !250, line: 764, type: !375)
!3441 = !DILocation(line: 0, scope: !3435)
!3442 = !DILocation(line: 764, column: 34, scope: !3435)
!3443 = !DILocation(line: 765, column: 23, scope: !3435)
!3444 = !DILocation(line: 766, column: 5, scope: !3435)
!3445 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !250, file: !250, line: 769, type: !3446, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !375, !363, !369, !381, !388, !394, !400}
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3449 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3445, file: !250, line: 770, type: !375)
!3450 = !DILocalVariable(name: "do_task", arg: 2, scope: !3445, file: !250, line: 771, type: !363)
!3451 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3445, file: !250, line: 772, type: !369)
!3452 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3445, file: !250, line: 773, type: !381)
!3453 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3445, file: !250, line: 774, type: !388)
!3454 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3445, file: !250, line: 775, type: !394)
!3455 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3445, file: !250, line: 776, type: !400)
!3456 = !DILocation(line: 0, scope: !3445)
!3457 = !DILocation(line: 778, column: 23, scope: !3445)
!3458 = !DILocation(line: 779, column: 20, scope: !3445)
!3459 = !DILocation(line: 780, column: 25, scope: !3445)
!3460 = !DILocation(line: 781, column: 30, scope: !3445)
!3461 = !DILocation(line: 782, column: 27, scope: !3445)
!3462 = !DILocation(line: 783, column: 34, scope: !3445)
!3463 = !DILocation(line: 784, column: 30, scope: !3445)
!3464 = !DILocation(line: 785, column: 1, scope: !3445)
!3465 = distinct !DISubprogram(name: "halide_do_par_for", scope: !250, file: !250, line: 792, type: !377, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471}
!3467 = !DILocalVariable(name: "user_context", arg: 1, scope: !3465, file: !250, line: 792, type: !15)
!3468 = !DILocalVariable(name: "f", arg: 2, scope: !3465, file: !250, line: 792, type: !282)
!3469 = !DILocalVariable(name: "min", arg: 3, scope: !3465, file: !250, line: 793, type: !161)
!3470 = !DILocalVariable(name: "size", arg: 4, scope: !3465, file: !250, line: 793, type: !161)
!3471 = !DILocalVariable(name: "closure", arg: 5, scope: !3465, file: !250, line: 793, type: !260)
!3472 = !DILocation(line: 0, scope: !3465)
!3473 = !DILocation(line: 794, column: 14, scope: !3465)
!3474 = !DILocation(line: 794, column: 12, scope: !3465)
!3475 = !DILocation(line: 794, column: 5, scope: !3465)
!3476 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !250, file: !250, line: 802, type: !383, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3477)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "user_context", arg: 1, scope: !3476, file: !250, line: 802, type: !15)
!3479 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3476, file: !250, line: 802, type: !161)
!3480 = !DILocalVariable(name: "tasks", arg: 3, scope: !3476, file: !250, line: 803, type: !385)
!3481 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3476, file: !250, line: 804, type: !15)
!3482 = !DILocation(line: 0, scope: !3476)
!3483 = !DILocation(line: 805, column: 12, scope: !3476)
!3484 = !DILocation(line: 805, column: 5, scope: !3476)
!3485 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !250, file: !250, line: 808, type: !390, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "sema", arg: 1, scope: !3485, file: !250, line: 808, type: !273)
!3488 = !DILocalVariable(name: "count", arg: 2, scope: !3485, file: !250, line: 808, type: !161)
!3489 = !DILocation(line: 0, scope: !3485)
!3490 = !DILocation(line: 809, column: 12, scope: !3485)
!3491 = !DILocation(line: 809, column: 5, scope: !3485)
!3492 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !250, file: !250, line: 812, type: !390, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3493)
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "sema", arg: 1, scope: !3492, file: !250, line: 812, type: !273)
!3495 = !DILocalVariable(name: "count", arg: 2, scope: !3492, file: !250, line: 812, type: !161)
!3496 = !DILocation(line: 0, scope: !3492)
!3497 = !DILocation(line: 813, column: 12, scope: !3492)
!3498 = !DILocation(line: 813, column: 5, scope: !3492)
!3499 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !250, file: !250, line: 816, type: !396, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "sema", arg: 1, scope: !3499, file: !250, line: 816, type: !273)
!3502 = !DILocalVariable(name: "count", arg: 2, scope: !3499, file: !250, line: 816, type: !161)
!3503 = !DILocation(line: 0, scope: !3499)
!3504 = !DILocation(line: 817, column: 12, scope: !3499)
!3505 = !DILocation(line: 817, column: 5, scope: !3499)
!3506 = !DISubprogram(name: "qurt_mutex_init", scope: !23, file: !23, line: 226, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!3510 = !DISubprogram(name: "qurt_cond_init", scope: !23, file: !23, line: 231, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!3514 = !DISubprogram(name: "qurt_mutex_lock", scope: !23, file: !23, line: 228, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3515 = !DISubprogram(name: "qurt_cond_wait", scope: !23, file: !23, line: 234, type: !3516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !3513, !3509}
!3518 = !DISubprogram(name: "qurt_mutex_unlock", scope: !23, file: !23, line: 229, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3519 = !DISubprogram(name: "qurt_cond_destroy", scope: !23, file: !23, line: 232, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3520 = !DISubprogram(name: "qurt_mutex_destroy", scope: !23, file: !23, line: 227, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3521 = !DISubprogram(name: "qurt_cond_signal", scope: !23, file: !23, line: 233, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
