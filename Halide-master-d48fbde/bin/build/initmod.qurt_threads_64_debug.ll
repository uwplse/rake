; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_threads.cpp"
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
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !412 {
  ret i32 4, !dbg !415
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_default_thread_priority(i32 %0) local_unnamed_addr #0 !dbg !416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !420, metadata !DIExpression()), !dbg !421
  %2 = icmp sgt i32 %0, 255, !dbg !422
  br i1 %2, label %5, label %3, !dbg !424

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 1, !dbg !425
  br i1 %4, label %8, label %5, !dbg !427

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %0, %3 ], [ 255, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !420, metadata !DIExpression()), !dbg !421
  %7 = trunc i32 %6 to i16, !dbg !428
  store i16 %7, i16* @halide_qurt_default_thread_priority, align 2, !dbg !429, !tbaa !430
  br label %8, !dbg !434

8:                                                ; preds = %3, %5
  ret void, !dbg !434
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i16 @halide_get_default_thread_priority() local_unnamed_addr #0 !dbg !435 {
  %1 = load i16, i16* @halide_qurt_default_thread_priority, align 2, !dbg !438, !tbaa !430
  ret i16 %1, !dbg !439
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #2 !dbg !440 {
  %3 = alloca %struct._qurt_thread_attr, align 8
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !444, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i8* %1, metadata !445, metadata !DIExpression()), !dbg !464
  %4 = tail call zeroext i16 @halide_get_default_thread_priority() #6, !dbg !465
  call void @llvm.dbg.value(metadata i16 %4, metadata !446, metadata !DIExpression()), !dbg !464
  %5 = tail call i8* @malloc(i64 32) #7, !dbg !466
  call void @llvm.dbg.value(metadata i8* %5, metadata !447, metadata !DIExpression()), !dbg !464
  %6 = bitcast i8* %5 to void (i8*)**, !dbg !467
  store void (i8*)* %0, void (i8*)** %6, align 8, !dbg !468, !tbaa !469
  %7 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !474
  %8 = bitcast i8* %7 to i8**, !dbg !474
  store i8* %1, i8** %8, align 8, !dbg !475, !tbaa !476
  %9 = tail call i8* @memalign(i64 128, i64 262144) #7, !dbg !477
  %10 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !478
  %11 = bitcast i8* %10 to i8**, !dbg !478
  store i8* %9, i8** %11, align 8, !dbg !479, !tbaa !480
  %12 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !481
  %13 = tail call i8* @memset(i8* nonnull %12, i32 0, i64 4) #7, !dbg !482
  %14 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 0, i64 0, !dbg !483
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #8, !dbg !483
  call void @llvm.dbg.declare(metadata %struct._qurt_thread_attr* %3, metadata !448, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !485, metadata !DIExpression()), !dbg !491
  store i8 0, i8* %14, align 8, !dbg !493, !tbaa !494
  %15 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 1, !dbg !495
  store i8 0, i8* %15, align 8, !dbg !496, !tbaa !497
  %16 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 3, !dbg !499
  %17 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 4, !dbg !500
  store i8 0, i8* %17, align 4, !dbg !501, !tbaa !502
  %18 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 2, !dbg !503
  store i8 -1, i8* %18, align 1, !dbg !504, !tbaa !505
  %19 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 5, !dbg !506
  store i8 -1, i8* %19, align 1, !dbg !507, !tbaa !508
  %20 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 6, !dbg !509
  store i16 -2, i16* %20, align 2, !dbg !510, !tbaa !511
  %21 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 7, !dbg !512
  %22 = getelementptr inbounds %struct._qurt_thread_attr, %struct._qurt_thread_attr* %3, i64 0, i32 8, !dbg !513
  %23 = load i8*, i8** %11, align 8, !dbg !514, !tbaa !480
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !515, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i8* %23, metadata !520, metadata !DIExpression()), !dbg !521
  store i8* %23, i8** %22, align 8, !dbg !523, !tbaa !524
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !525, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 262144, metadata !530, metadata !DIExpression()), !dbg !531
  store i32 262144, i32* %21, align 8, !dbg !533, !tbaa !534
  call void @llvm.dbg.value(metadata %struct._qurt_thread_attr* %3, metadata !535, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i16 %4, metadata !540, metadata !DIExpression()), !dbg !541
  store i16 %4, i16* %16, align 2, !dbg !543, !tbaa !544
  %24 = bitcast i8* %12 to i32*, !dbg !545
  %25 = call i32 @qurt_thread_create(i32* nonnull %24, %struct._qurt_thread_attr* nonnull %3, void (i8*)* nonnull @_ZN12_GLOBAL__N_119spawn_thread_helperEPv, i8* %5) #7, !dbg !546
  %26 = bitcast i8* %5 to %struct.halide_thread*, !dbg !547
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #8, !dbg !548
  ret %struct.halide_thread* %26, !dbg !549
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !550 dso_local i8* @malloc(i64) local_unnamed_addr #4

declare !dbg !554 dso_local i8* @memalign(i64, i64) local_unnamed_addr #4

declare !dbg !557 dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

declare !dbg !560 dso_local i32 @qurt_thread_create(i32*, %struct._qurt_thread_attr*, void (i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define internal void @_ZN12_GLOBAL__N_119spawn_thread_helperEPv(i8* nocapture readonly %0) #2 !dbg !565 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !567, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i8* %0, metadata !568, metadata !DIExpression()), !dbg !569
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !570
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !570, !tbaa !469
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !571
  %5 = bitcast i8* %4 to i8**, !dbg !571
  %6 = load i8*, i8** %5, align 8, !dbg !571, !tbaa !476
  tail call void %3(i8* %6) #7, !dbg !572
  ret void, !dbg !573
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #2 !dbg !574 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !578, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !579, metadata !DIExpression()), !dbg !581
  %3 = bitcast i32* %2 to i8*, !dbg !582
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !582
  call void @llvm.dbg.value(metadata i32 0, metadata !580, metadata !DIExpression()), !dbg !581
  store i32 0, i32* %2, align 4, !dbg !583, !tbaa !584
  %4 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i64 6, i32 0, !dbg !585
  %5 = load i32, i32* %4, align 8, !dbg !585, !tbaa !586
  call void @llvm.dbg.value(metadata i32* %2, metadata !580, metadata !DIExpression(DW_OP_deref)), !dbg !581
  %6 = call i32 @qurt_thread_join(i32 %5, i32* nonnull %2) #7, !dbg !587
  %7 = getelementptr inbounds %struct.halide_thread, %struct.halide_thread* %0, i64 4, !dbg !588
  %8 = bitcast %struct.halide_thread* %7 to i8**, !dbg !588
  %9 = load i8*, i8** %8, align 8, !dbg !588, !tbaa !480
  call void @free(i8* %9) #7, !dbg !589
  %10 = bitcast %struct.halide_thread* %0 to i8*, !dbg !590
  call void @free(i8* %10) #7, !dbg !591
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !592
  ret void, !dbg !592
}

declare !dbg !593 dso_local i32 @qurt_thread_join(i32, i32*) local_unnamed_addr #4

declare !dbg !597 dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #5 align 2 !dbg !598 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !600, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 40, metadata !602, metadata !DIExpression()), !dbg !622
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !623
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !634
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !636
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13, !dbg !637

13:                                               ; preds = %64, %1
  %14 = phi i64 [ %4, %1 ], [ %65, %64 ]
  %15 = phi i32 [ 40, %1 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %14, metadata !614, metadata !DIExpression()), !dbg !622
  %16 = and i64 %14, 1, !dbg !638
  %17 = icmp eq i64 %16, 0, !dbg !639
  br i1 %17, label %18, label %29, !dbg !640

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !614, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %19, metadata !614, metadata !DIExpression()), !dbg !622
  %20 = or i64 %19, 1, !dbg !641
  call void @llvm.dbg.value(metadata i64 %20, metadata !615, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata i64* %3, metadata !643, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()), !dbg !650
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic, !dbg !653
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !653
  br i1 %22, label %67, label %23, !dbg !653

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !653
  call void @llvm.dbg.value(metadata i32 %15, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %24, metadata !614, metadata !DIExpression()), !dbg !622
  %25 = and i64 %24, 1, !dbg !638
  %26 = icmp eq i64 %25, 0, !dbg !639
  br i1 %26, label %18, label %27, !dbg !640

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0, !dbg !653
  br label %29, !dbg !654

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ], !dbg !622
  %31 = icmp ugt i64 %30, 3, !dbg !654
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32, !dbg !656
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !657, metadata !DIExpression()), !dbg !661
  br i1 %33, label %34, label %39, !dbg !656

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %15, metadata !602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !622
  %35 = icmp sgt i32 %15, 1, !dbg !663
  br i1 %35, label %36, label %39, !dbg !664

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1, !dbg !665
  call void @llvm.dbg.value(metadata i32 %37, metadata !602, metadata !DIExpression()), !dbg !622
  call void @halide_thread_yield() #7, !dbg !668
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !670
  %38 = load atomic i64, i64* %3 monotonic, align 8, !dbg !672
  br label %64, !dbg !673

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ], !dbg !622
  call void @llvm.dbg.value(metadata i32 %40, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !674
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !619, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !676, metadata !DIExpression()) #8, !dbg !679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !681, metadata !DIExpression()) #8, !dbg !685
  store i8 0, i8* %6, align 8, !dbg !687, !tbaa !688
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !691
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !693
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !694, !tbaa !695
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !dbg !697, !tbaa !698
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !699, !tbaa !700
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !701, metadata !DIExpression()), !dbg !704
  store i8 1, i8* %6, align 8, !dbg !706, !tbaa !688
  call void @llvm.dbg.value(metadata i64 %30, metadata !614, metadata !DIExpression()), !dbg !622
  %41 = and i64 %30, -4, !dbg !707
  call void @llvm.dbg.value(metadata i64 %41, metadata !620, metadata !DIExpression()), !dbg !708
  %42 = icmp eq i64 %41, 0, !dbg !709
  br i1 %42, label %43, label %44, !dbg !711

43:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !712, !tbaa !700
  br label %46, !dbg !714

44:                                               ; preds = %39
  %45 = inttoptr i64 %41 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !715
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, metadata !620, metadata !DIExpression()), !dbg !708
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !716, !tbaa !695
  br label %46

46:                                               ; preds = %44, %43
  call void @llvm.dbg.value(metadata i64 %30, metadata !614, metadata !DIExpression()), !dbg !622
  %47 = and i64 %30, 3, !dbg !718
  %48 = or i64 %47, %12, !dbg !719
  call void @llvm.dbg.value(metadata i64 %48, metadata !621, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64* %3, metadata !720, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64* undef, metadata !723, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64* undef, metadata !724, metadata !DIExpression()), !dbg !725
  %49 = cmpxchg weak i64* %3, i64 %30, i64 %48 release monotonic, !dbg !728
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !728
  br i1 %50, label %53, label %51, !dbg !728

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !728
  br label %61

53:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !729, metadata !DIExpression()) #8, !dbg !732
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !735
  %54 = load i8, i8* %6, align 8, !dbg !736, !tbaa !688, !range !737
  %55 = icmp eq i8 %54, 0, !dbg !736
  br i1 %55, label %59, label %56, !dbg !738

56:                                               ; preds = %53, %56
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !739
  %57 = load i8, i8* %6, align 8, !dbg !736, !tbaa !688, !range !737
  %58 = icmp eq i8 %57, 0, !dbg !736
  br i1 %58, label %59, label %56, !dbg !738, !llvm.loop !741

59:                                               ; preds = %56, %53
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !744
  call void @llvm.dbg.value(metadata i32 40, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !745
  %60 = load atomic i64, i64* %3 monotonic, align 8, !dbg !747
  br label %61, !dbg !748

61:                                               ; preds = %51, %59
  %62 = phi i64 [ %60, %59 ], [ %52, %51 ], !dbg !622
  %63 = phi i32 [ 40, %59 ], [ %40, %51 ], !dbg !622
  call void @llvm.dbg.value(metadata i32 %63, metadata !602, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !749, metadata !DIExpression()) #8, !dbg !752
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !754, metadata !DIExpression()) #8, !dbg !757
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !760
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !762
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !763
  br label %64, !dbg !637

64:                                               ; preds = %61, %36
  %65 = phi i64 [ %38, %36 ], [ %62, %61 ]
  %66 = phi i32 [ %37, %36 ], [ %63, %61 ]
  br label %13, !dbg !622, !llvm.loop !764

67:                                               ; preds = %18
  ret void, !dbg !765
}

declare !dbg !766 dso_local void @halide_thread_yield() local_unnamed_addr #4

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #5 align 2 !dbg !769 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !771, metadata !DIExpression()), !dbg !793
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !794
  call void @llvm.dbg.value(metadata i64* %2, metadata !624, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !795
  %3 = load atomic i64, i64* %2 monotonic, align 8, !dbg !797
  br label %4, !dbg !798

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ], !dbg !797
  call void @llvm.dbg.value(metadata i64 %5, metadata !772, metadata !DIExpression()), !dbg !793
  %6 = and i64 %5, 2, !dbg !799
  %7 = icmp ne i64 %6, 0, !dbg !800
  call void @llvm.dbg.value(metadata i1 %7, metadata !773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !801
  call void @llvm.dbg.value(metadata i1 undef, metadata !775, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !801
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7, !dbg !802
  call void @llvm.dbg.value(metadata i1 %8, metadata !775, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !801
  br i1 %9, label %62, label %10, !dbg !802

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !772, metadata !DIExpression()), !dbg !793
  %11 = or i64 %5, 2, !dbg !804
  call void @llvm.dbg.value(metadata i64 %11, metadata !776, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i64* %2, metadata !643, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()), !dbg !805
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic, !dbg !808
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !808
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %60
  %16 = phi { i64, i1 } [ %61, %60 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !797
  call void @llvm.dbg.value(metadata i64 %17, metadata !772, metadata !DIExpression()), !dbg !793
  %18 = and i64 %17, -4, !dbg !809
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !810
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !777, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !779, metadata !DIExpression()), !dbg !811
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3, !dbg !812
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !780, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i32 0, metadata !781, metadata !DIExpression()), !dbg !811
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !811, !tbaa !700
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !779, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i32 undef, metadata !781, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, metadata !780, metadata !DIExpression()), !dbg !811
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null, !dbg !813
  br i1 %22, label %23, label %34, !dbg !814

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, metadata !779, metadata !DIExpression()), !dbg !811
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1, !dbg !815
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !dbg !815, !tbaa !695
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !782, metadata !DIExpression()), !dbg !816
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null, !dbg !817
  br i1 %27, label %28, label %29, !dbg !820

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0)) #7, !dbg !821
  tail call void @abort() #7, !dbg !821
  br label %29, !dbg !821

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2, !dbg !823
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !824, !tbaa !698
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !779, metadata !DIExpression()), !dbg !811
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3, !dbg !825
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !780, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i32 undef, metadata !781, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !811
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !dbg !811, !tbaa !700
  call void @llvm.dbg.value(metadata i32 undef, metadata !781, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, metadata !780, metadata !DIExpression()), !dbg !811
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null, !dbg !813
  br i1 %33, label %23, label %34, !dbg !814, !llvm.loop !826

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ], !dbg !811
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !828, !tbaa !700
  call void @llvm.dbg.value(metadata i64 %17, metadata !772, metadata !DIExpression()), !dbg !793
  %36 = and i64 %17, 1, !dbg !829
  %37 = icmp eq i64 %36, 0, !dbg !830
  br i1 %37, label %42, label %38, !dbg !831

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %17, metadata !772, metadata !DIExpression()), !dbg !793
  %39 = and i64 %17, -3, !dbg !832
  call void @llvm.dbg.value(metadata i64 %39, metadata !784, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i64* %2, metadata !834, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64* undef, metadata !839, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64* undef, metadata !840, metadata !DIExpression()), !dbg !841
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic, !dbg !844
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !844
  br i1 %41, label %62, label %60, !dbg !844, !llvm.loop !845

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2, !dbg !848
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !dbg !848, !tbaa !698
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !787, metadata !DIExpression()), !dbg !811
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !849
  br i1 %45, label %46, label %54, !dbg !850

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !788, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i64 %47, metadata !772, metadata !DIExpression()), !dbg !793
  %48 = and i64 %47, 1, !dbg !852
  call void @llvm.dbg.value(metadata i64 %48, metadata !791, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata i64* %2, metadata !834, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64* undef, metadata !839, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64* undef, metadata !840, metadata !DIExpression()), !dbg !854
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic, !dbg !857
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !857
  br i1 %50, label %56, label %51, !dbg !857

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !857
  call void @llvm.dbg.value(metadata i64 %52, metadata !772, metadata !DIExpression()), !dbg !793
  %53 = icmp ult i64 %52, 4, !dbg !858
  br i1 %53, label %46, label %60, !dbg !860, !llvm.loop !861

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !864, !tbaa !700
  call void @llvm.dbg.value(metadata i64* %2, metadata !866, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata i64 -3, metadata !871, metadata !DIExpression()), !dbg !872
  %55 = atomicrmw and i64* %2, i64 -3 release, !dbg !874
  br label %56

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !875, metadata !DIExpression()) #8, !dbg !878
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0, !dbg !880
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !881
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !882, metadata !DIExpression()) #8, !dbg !885
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2, !dbg !887
  store i8 0, i8* %58, align 8, !dbg !888, !tbaa !688
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1, !dbg !889
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %59) #7, !dbg !890
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !891, metadata !DIExpression()) #8, !dbg !894
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %57) #7, !dbg !896
  br label %62, !dbg !897

60:                                               ; preds = %51, %38
  %61 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire, !dbg !811
  br label %15

62:                                               ; preds = %4, %38, %56
  ret void, !dbg !898
}

declare !dbg !899 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #4

declare !dbg !902 dso_local void @abort() local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) local_unnamed_addr #2 !dbg !903 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !908, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %0, metadata !912, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i32 10, metadata !918, metadata !DIExpression()), !dbg !919
  %2 = mul i64 %0, -7046029254386353131, !dbg !921
  %3 = lshr i64 %2, 54, !dbg !924
  call void @llvm.dbg.value(metadata i64 %3, metadata !909, metadata !DIExpression()), !dbg !911
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3, !dbg !925
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !926, metadata !DIExpression()) #8, !dbg !931
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()) #8, !dbg !931
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()) #8, !dbg !931
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !933
  call void @llvm.dbg.value(metadata i64* %5, metadata !643, metadata !DIExpression()) #8, !dbg !935
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !935
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !935
  %6 = cmpxchg weak i64* %5, i64 0, i64 1 acquire monotonic, !dbg !937
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !937
  br i1 %7, label %10, label %8, !dbg !938

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !939
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %9, metadata !926, metadata !DIExpression()) #8, !dbg !931
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %9) #7, !dbg !940
  br label %10, !dbg !942

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !943
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #5 !dbg !944 {
  call void @llvm.dbg.value(metadata i64 %1, metadata !956, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %2, metadata !957, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %1, metadata !912, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 10, metadata !918, metadata !DIExpression()), !dbg !971
  %4 = mul i64 %1, -7046029254386353131, !dbg !973
  %5 = lshr i64 %4, 54, !dbg !974
  call void @llvm.dbg.value(metadata i64 %5, metadata !958, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %2, metadata !912, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 10, metadata !918, metadata !DIExpression()), !dbg !975
  %6 = mul i64 %2, -7046029254386353131, !dbg !977
  %7 = lshr i64 %6, 54, !dbg !978
  call void @llvm.dbg.value(metadata i64 %7, metadata !959, metadata !DIExpression()), !dbg !970
  %8 = icmp eq i64 %5, %7, !dbg !979
  br i1 %8, label %9, label %16, !dbg !980

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !981
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !960, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !926, metadata !DIExpression()) #8, !dbg !983
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()) #8, !dbg !983
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()) #8, !dbg !983
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0, !dbg !985
  call void @llvm.dbg.value(metadata i64* %11, metadata !643, metadata !DIExpression()) #8, !dbg !986
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !986
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !986
  %12 = cmpxchg weak i64* %11, i64 0, i64 1 acquire monotonic, !dbg !988
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !988
  br i1 %13, label %46, label %14, !dbg !989

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, !dbg !990
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !926, metadata !DIExpression()) #8, !dbg !983
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #7, !dbg !991
  br label %46, !dbg !992

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %7, !dbg !993
  br i1 %17, label %18, label %32, !dbg !994

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !995
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !963, metadata !DIExpression()), !dbg !996
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !997
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !966, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !926, metadata !DIExpression()) #8, !dbg !998
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()) #8, !dbg !998
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()) #8, !dbg !998
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, i32 0, !dbg !1000
  call void @llvm.dbg.value(metadata i64* %21, metadata !643, metadata !DIExpression()) #8, !dbg !1001
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1001
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1001
  %22 = cmpxchg weak i64* %21, i64 0, i64 1 acquire monotonic, !dbg !1003
  %23 = extractvalue { i64, i1 } %22, 1, !dbg !1003
  br i1 %23, label %26, label %24, !dbg !1004

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, !dbg !1005
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %25, metadata !926, metadata !DIExpression()) #8, !dbg !998
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %25) #7, !dbg !1006
  br label %26, !dbg !1007

26:                                               ; preds = %18, %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !926, metadata !DIExpression()) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()) #8, !dbg !1008
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0, !dbg !1010
  call void @llvm.dbg.value(metadata i64* %27, metadata !643, metadata !DIExpression()) #8, !dbg !1011
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1011
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1011
  %28 = cmpxchg weak i64* %27, i64 0, i64 1 acquire monotonic, !dbg !1013
  %29 = extractvalue { i64, i1 } %28, 1, !dbg !1013
  br i1 %29, label %46, label %30, !dbg !1014

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, !dbg !1015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !926, metadata !DIExpression()) #8, !dbg !1008
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %31) #7, !dbg !1016
  br label %46, !dbg !1017

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !967, metadata !DIExpression()), !dbg !1019
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @_ZN6Halide7Runtime8Internal15Synchronization13table_storageE to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !1020
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !969, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !926, metadata !DIExpression()) #8, !dbg !1021
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()) #8, !dbg !1021
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()) #8, !dbg !1021
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, i32 0, !dbg !1023
  call void @llvm.dbg.value(metadata i64* %35, metadata !643, metadata !DIExpression()) #8, !dbg !1024
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1024
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1024
  %36 = cmpxchg weak i64* %35, i64 0, i64 1 acquire monotonic, !dbg !1026
  %37 = extractvalue { i64, i1 } %36, 1, !dbg !1026
  br i1 %37, label %40, label %38, !dbg !1027

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, !dbg !1028
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %39, metadata !926, metadata !DIExpression()) #8, !dbg !1021
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %39) #7, !dbg !1029
  br label %40, !dbg !1030

40:                                               ; preds = %32, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !926, metadata !DIExpression()) #8, !dbg !1031
  call void @llvm.dbg.value(metadata i64 0, metadata !929, metadata !DIExpression()) #8, !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !930, metadata !DIExpression()) #8, !dbg !1031
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, i32 0, !dbg !1033
  call void @llvm.dbg.value(metadata i64* %41, metadata !643, metadata !DIExpression()) #8, !dbg !1034
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1034
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1034
  %42 = cmpxchg weak i64* %41, i64 0, i64 1 acquire monotonic, !dbg !1036
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !1036
  br i1 %43, label %46, label %44, !dbg !1037

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, !dbg !1038
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !926, metadata !DIExpression()) #8, !dbg !1031
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #7, !dbg !1039
  br label %46, !dbg !1040

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !1041
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 8, !dbg !1041, !tbaa !1042
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !1041
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 8, !dbg !1041, !tbaa !1042
  ret void, !dbg !1043
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 !dbg !1044 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !1049, metadata !DIExpression()), !dbg !1050
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !1051
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !1051, !tbaa !1053
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !1055
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !1055, !tbaa !1056
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1057
  br i1 %6, label %7, label %16, !dbg !1058

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1059, metadata !DIExpression()) #8, !dbg !1065
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !1068
  call void @llvm.dbg.value(metadata i64* %8, metadata !1069, metadata !DIExpression()) #8, !dbg !1073
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1073
  %9 = atomicrmw and i64* %8, i64 -2 release, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %9, metadata !1062, metadata !DIExpression()) #8, !dbg !1065
  %10 = and i64 %9, 2, !dbg !1076
  %11 = icmp ne i64 %10, 0, !dbg !1077
  call void @llvm.dbg.value(metadata i1 %11, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1065
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1065
  %12 = icmp ult i64 %9, 4
  %13 = or i1 %12, %11, !dbg !1078
  call void @llvm.dbg.value(metadata i1 %12, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1065
  br i1 %13, label %56, label %14, !dbg !1078

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !1080
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !1059, metadata !DIExpression()) #8, !dbg !1065
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #7, !dbg !1081
  br label %56, !dbg !1083

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !1084
  br i1 %17, label %18, label %37, !dbg !1086

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1059, metadata !DIExpression()) #8, !dbg !1087
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !1090
  call void @llvm.dbg.value(metadata i64* %19, metadata !1069, metadata !DIExpression()) #8, !dbg !1091
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1091
  %20 = atomicrmw and i64* %19, i64 -2 release, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %20, metadata !1062, metadata !DIExpression()) #8, !dbg !1087
  %21 = and i64 %20, 2, !dbg !1094
  %22 = icmp ne i64 %21, 0, !dbg !1095
  call void @llvm.dbg.value(metadata i1 %22, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1087
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1087
  %23 = icmp ult i64 %20, 4
  %24 = or i1 %23, %22, !dbg !1096
  call void @llvm.dbg.value(metadata i1 %23, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1087
  br i1 %24, label %27, label %25, !dbg !1096

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !1097
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %26, metadata !1059, metadata !DIExpression()) #8, !dbg !1087
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %26) #7, !dbg !1098
  br label %27, !dbg !1099

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !1100, !tbaa !1056
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, metadata !1059, metadata !DIExpression()) #8, !dbg !1101
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, i32 0, !dbg !1103
  call void @llvm.dbg.value(metadata i64* %29, metadata !1069, metadata !DIExpression()) #8, !dbg !1104
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1104
  %30 = atomicrmw and i64* %29, i64 -2 release, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %30, metadata !1062, metadata !DIExpression()) #8, !dbg !1101
  %31 = and i64 %30, 2, !dbg !1107
  %32 = icmp ne i64 %31, 0, !dbg !1108
  call void @llvm.dbg.value(metadata i1 %32, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1101
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1101
  %33 = icmp ult i64 %30, 4
  %34 = or i1 %33, %32, !dbg !1109
  call void @llvm.dbg.value(metadata i1 %33, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1101
  br i1 %34, label %56, label %35, !dbg !1109

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, !dbg !1110
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %36, metadata !1059, metadata !DIExpression()) #8, !dbg !1101
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %36) #7, !dbg !1111
  br label %56, !dbg !1112

37:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !1059, metadata !DIExpression()) #8, !dbg !1113
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0, !dbg !1116
  call void @llvm.dbg.value(metadata i64* %38, metadata !1069, metadata !DIExpression()) #8, !dbg !1117
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1117
  %39 = atomicrmw and i64* %38, i64 -2 release, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %39, metadata !1062, metadata !DIExpression()) #8, !dbg !1113
  %40 = and i64 %39, 2, !dbg !1120
  %41 = icmp ne i64 %40, 0, !dbg !1121
  call void @llvm.dbg.value(metadata i1 %41, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1113
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1113
  %42 = icmp ult i64 %39, 4
  %43 = or i1 %42, %41, !dbg !1122
  call void @llvm.dbg.value(metadata i1 %42, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1113
  br i1 %43, label %46, label %44, !dbg !1122

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, !dbg !1123
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !1059, metadata !DIExpression()) #8, !dbg !1113
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #7, !dbg !1124
  br label %46, !dbg !1125

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !1126, !tbaa !1053
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, metadata !1059, metadata !DIExpression()) #8, !dbg !1127
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, i32 0, !dbg !1129
  call void @llvm.dbg.value(metadata i64* %48, metadata !1069, metadata !DIExpression()) #8, !dbg !1130
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1130
  %49 = atomicrmw and i64* %48, i64 -2 release, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %49, metadata !1062, metadata !DIExpression()) #8, !dbg !1127
  %50 = and i64 %49, 2, !dbg !1133
  %51 = icmp ne i64 %50, 0, !dbg !1134
  call void @llvm.dbg.value(metadata i1 %51, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1127
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1127
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51, !dbg !1135
  call void @llvm.dbg.value(metadata i1 %52, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1127
  br i1 %53, label %56, label %54, !dbg !1135

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, !dbg !1136
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %55, metadata !1059, metadata !DIExpression()) #8, !dbg !1127
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %55) #7, !dbg !1137
  br label %56, !dbg !1138

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void, !dbg !1139
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #0 !dbg !1140 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1142, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1143, metadata !DIExpression()), !dbg !1144
  ret i1 true, !dbg !1145
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv(i8* %0) #0 !dbg !1146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1148, metadata !DIExpression()), !dbg !1149
  ret void, !dbg !1150
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1153, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i32 %1, metadata !1154, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i1 %2, metadata !1155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1156
  ret i64 0, !dbg !1157
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i1 %2, metadata !1162, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1164
  call void @llvm.dbg.value(metadata i1 %3, metadata !1163, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1164
  ret void, !dbg !1165
}

; Function Attrs: nounwind
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 !dbg !1166 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1171, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1172, metadata !DIExpression()), !dbg !1176
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !1177
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1173, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1179, metadata !DIExpression()) #8, !dbg !1182
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !681, metadata !DIExpression()) #8, !dbg !1184
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2, !dbg !1186
  store i8 0, i8* %6, align 8, !dbg !1186, !tbaa !688
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0, !dbg !1187
  call void @qurt_mutex_init(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1188
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1, !dbg !1189
  call void @qurt_cond_init(%union.qurt_cond_t* nonnull %8) #7, !dbg !1190
  store i8 0, i8* %6, align 8, !dbg !1191, !tbaa !688
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1, !dbg !1192
  store i64 0, i64* %9, align 8, !dbg !1192, !tbaa !1193
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2, !dbg !1196
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1196, !tbaa !1197
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3, !dbg !1198
  store i64 0, i64* %11, align 8, !dbg !1198, !tbaa !1199
  %12 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #6, !dbg !1200
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1174, metadata !DIExpression()), !dbg !1176
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0, !dbg !1201
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !1201
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1175, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1203, metadata !DIExpression()), !dbg !1207
  store i8 0, i8* %13, align 8, !dbg !1209, !tbaa !1210
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2, !dbg !1212
  store i64 0, i64* %14, align 8, !dbg !1212, !tbaa !1213
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0, !dbg !1214
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 8, !dbg !1214, !tbaa !1216
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1218
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #7, !dbg !1219
  br i1 %18, label %28, label %19, !dbg !1220

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1059, metadata !DIExpression()) #8, !dbg !1221
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1224
  call void @llvm.dbg.value(metadata i64* %20, metadata !1069, metadata !DIExpression()) #8, !dbg !1225
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1225
  %21 = atomicrmw and i64* %20, i64 -2 release, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %21, metadata !1062, metadata !DIExpression()) #8, !dbg !1221
  %22 = and i64 %21, 2, !dbg !1228
  %23 = icmp ne i64 %22, 0, !dbg !1229
  call void @llvm.dbg.value(metadata i1 %23, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1221
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1221
  %24 = icmp ult i64 %21, 4
  %25 = or i1 %24, %23, !dbg !1230
  call void @llvm.dbg.value(metadata i1 %24, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1221
  br i1 %25, label %54, label %26, !dbg !1230

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !1059, metadata !DIExpression()) #8, !dbg !1221
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %27) #7, !dbg !1232
  br label %54, !dbg !1233

28:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1234, !tbaa !1197
  store i64 %0, i64* %9, align 8, !dbg !1235, !tbaa !1193
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !701, metadata !DIExpression()), !dbg !1236
  store i8 1, i8* %6, align 8, !dbg !1238, !tbaa !688
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 1, !dbg !1239
  %30 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %29, align 8, !dbg !1239, !tbaa !1241
  %31 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, null, !dbg !1244
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1245
  %33 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, align 8, !dbg !1245
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %33, i64 0, i32 2, !dbg !1245
  %35 = select i1 %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, !dbg !1245
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1246, !tbaa !1042
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1247
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 8, !dbg !1248, !tbaa !1249
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1059, metadata !DIExpression()) #8, !dbg !1250
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1252
  call void @llvm.dbg.value(metadata i64* %37, metadata !1069, metadata !DIExpression()) #8, !dbg !1253
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1253
  %38 = atomicrmw and i64* %37, i64 -2 release, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %38, metadata !1062, metadata !DIExpression()) #8, !dbg !1250
  %39 = and i64 %38, 2, !dbg !1256
  %40 = icmp ne i64 %39, 0, !dbg !1257
  call void @llvm.dbg.value(metadata i1 %40, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1250
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1250
  %41 = icmp ult i64 %38, 4
  %42 = or i1 %41, %40, !dbg !1258
  call void @llvm.dbg.value(metadata i1 %41, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1250
  br i1 %42, label %45, label %43, !dbg !1258

43:                                               ; preds = %28
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %44, metadata !1059, metadata !DIExpression()) #8, !dbg !1250
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %44) #7, !dbg !1260
  br label %45, !dbg !1261

45:                                               ; preds = %28, %43
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1, !dbg !1262
  %47 = load void (i8*)*, void (i8*)** %46, align 8, !dbg !1262, !tbaa !1263
  call void %47(i8* nonnull %17) #7, !dbg !1264
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !729, metadata !DIExpression()) #8, !dbg !1265
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1267
  %48 = load i8, i8* %6, align 8, !dbg !1268, !tbaa !688, !range !737
  %49 = icmp eq i8 %48, 0, !dbg !1268
  br i1 %49, label %53, label %50, !dbg !1269

50:                                               ; preds = %45, %50
  call void @qurt_cond_wait(%union.qurt_cond_t* nonnull %8, %union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1270
  %51 = load i8, i8* %6, align 8, !dbg !1268, !tbaa !688, !range !737
  %52 = icmp eq i8 %51, 0, !dbg !1268
  br i1 %52, label %53, label %50, !dbg !1269, !llvm.loop !1271

53:                                               ; preds = %50, %45
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1273
  br label %54, !dbg !1274

54:                                               ; preds = %26, %19, %53
  %55 = phi i64* [ %11, %53 ], [ %14, %19 ], [ %14, %26 ]
  %56 = load i64, i64* %55, align 8, !dbg !1176, !tbaa !1275
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !1276
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1277, metadata !DIExpression()) #8, !dbg !1280
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !754, metadata !DIExpression()) #8, !dbg !1282
  call void @qurt_cond_destroy(%union.qurt_cond_t* nonnull %8) #7, !dbg !1285
  call void @qurt_mutex_destroy(%union.qurt_mutex_aligned8* nonnull %7) #7, !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !1276
  ret i64 %56, !dbg !1276
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 !dbg !1287 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1289, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1290, metadata !DIExpression()), !dbg !1306
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #6, !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1291, metadata !DIExpression()), !dbg !1306
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1, !dbg !1308
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1292, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1293, metadata !DIExpression()), !dbg !1306
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !dbg !1309, !tbaa !1042
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1294, metadata !DIExpression()), !dbg !1306
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %11, !dbg !1310

11:                                               ; preds = %57, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %58, %57 ], !dbg !1311
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %59, %57 ], !dbg !1312
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %60, %57 ], !dbg !1313
  %15 = phi i64 [ undef, %2 ], [ %61, %57 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1294, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1293, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, metadata !1292, metadata !DIExpression()), !dbg !1306
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null, !dbg !1314
  br i1 %16, label %62, label %17, !dbg !1310

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1315
  call void @llvm.dbg.value(metadata i64* %18, metadata !624, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1316
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %19, metadata !1295, metadata !DIExpression()), !dbg !1319
  %20 = icmp eq i64 %19, %0, !dbg !1320
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1321
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 8, !dbg !1321, !tbaa !1197
  br i1 %20, label %23, label %57, !dbg !1322

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1297, metadata !DIExpression()), !dbg !1323
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1324, !tbaa !1042
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression()), !dbg !1323
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1325, !tbaa !1249
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1326
  br i1 %25, label %28, label %26, !dbg !1327

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1301, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression()), !dbg !1323
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1329
  br i1 %27, label %40, label %29, !dbg !1330

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1331, !tbaa !1249
  br label %40, !dbg !1333

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, metadata !1301, metadata !DIExpression()), !dbg !1328
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64* %31, metadata !624, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1335
  %32 = load atomic i64, i64* %31 monotonic, align 8, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %32, metadata !1304, metadata !DIExpression()), !dbg !1338
  %33 = icmp eq i64 %32, %0, !dbg !1339
  call void @llvm.dbg.value(metadata i1 %33, metadata !1300, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1323
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 2, !dbg !1340
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !dbg !1340, !tbaa !1197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, metadata !1301, metadata !DIExpression()), !dbg !1328
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1329
  %37 = or i1 %33, %36, !dbg !1341
  br i1 %37, label %38, label %29, !dbg !1330, !llvm.loop !1342

38:                                               ; preds = %29
  %39 = zext i1 %33 to i8, !dbg !1344
  call void @llvm.dbg.value(metadata i8 %39, metadata !1300, metadata !DIExpression()), !dbg !1323
  br label %40, !dbg !1345

40:                                               ; preds = %38, %26, %28
  %41 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %39, %38 ], !dbg !1346
  call void @llvm.dbg.value(metadata i8 %41, metadata !1300, metadata !DIExpression()), !dbg !1323
  %42 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1345, !tbaa !1347
  %43 = icmp ne i8 %41, 0, !dbg !1348
  %44 = tail call i64 %42(i8* nonnull %8, i32 1, i1 zeroext %43) #7, !dbg !1349
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1350
  store i64 %44, i64* %45, align 8, !dbg !1351, !tbaa !1199
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !875, metadata !DIExpression()) #8, !dbg !1352
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1354
  tail call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %46) #7, !dbg !1355
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1059, metadata !DIExpression()) #8, !dbg !1356
  call void @llvm.dbg.value(metadata i64* %9, metadata !1069, metadata !DIExpression()) #8, !dbg !1358
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1358
  %47 = atomicrmw and i64* %9, i64 -2 release, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %47, metadata !1062, metadata !DIExpression()) #8, !dbg !1356
  %48 = and i64 %47, 2, !dbg !1361
  %49 = icmp ne i64 %48, 0, !dbg !1362
  call void @llvm.dbg.value(metadata i1 %49, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1356
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1356
  %50 = icmp ult i64 %47, 4
  %51 = or i1 %50, %49, !dbg !1363
  call void @llvm.dbg.value(metadata i1 %50, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1356
  br i1 %51, label %53, label %52, !dbg !1363

52:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !1059, metadata !DIExpression()) #8, !dbg !1356
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #7, !dbg !1364
  br label %53, !dbg !1365

53:                                               ; preds = %40, %52
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !882, metadata !DIExpression()) #8, !dbg !1366
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 2, !dbg !1368
  store i8 0, i8* %54, align 8, !dbg !1369, !tbaa !688
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 1, !dbg !1370
  tail call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %55) #7, !dbg !1371
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !891, metadata !DIExpression()) #8, !dbg !1372
  tail call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %46) #7, !dbg !1374
  %56 = zext i8 %41 to i64
  br label %57

57:                                               ; preds = %17, %53
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %53 ], [ %21, %17 ], !dbg !1306
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %53 ], [ %14, %17 ], !dbg !1306
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %53 ], [ %22, %17 ], !dbg !1306
  %61 = phi i64 [ %56, %53 ], [ %15, %17 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1294, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1293, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, metadata !1292, metadata !DIExpression()), !dbg !1306
  br i1 %20, label %71, label %11, !llvm.loop !1375

62:                                               ; preds = %11
  %63 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1377, !tbaa !1347
  %64 = tail call i64 %63(i8* nonnull %8, i32 0, i1 zeroext false) #7, !dbg !1378
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1059, metadata !DIExpression()) #8, !dbg !1379
  call void @llvm.dbg.value(metadata i64* %9, metadata !1069, metadata !DIExpression()) #8, !dbg !1381
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1381
  %65 = atomicrmw and i64* %9, i64 -2 release, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %65, metadata !1062, metadata !DIExpression()) #8, !dbg !1379
  %66 = and i64 %65, 2, !dbg !1384
  %67 = icmp ne i64 %66, 0, !dbg !1385
  call void @llvm.dbg.value(metadata i1 %67, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1379
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1379
  %68 = icmp ult i64 %65, 4
  %69 = or i1 %68, %67, !dbg !1386
  call void @llvm.dbg.value(metadata i1 %68, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1379
  br i1 %69, label %71, label %70, !dbg !1386

70:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !1059, metadata !DIExpression()) #8, !dbg !1379
  tail call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #7, !dbg !1387
  br label %71, !dbg !1388

71:                                               ; preds = %57, %70, %62
  %72 = phi i64 [ 0, %62 ], [ 0, %70 ], [ %61, %57 ], !dbg !1306
  ret i64 %72, !dbg !1389
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy(i64 %0, i64 %1) local_unnamed_addr #2 !dbg !1390 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1394, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %1, metadata !1395, metadata !DIExpression()), !dbg !1420
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy(i64 %0) #6, !dbg !1421
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1396, metadata !DIExpression()), !dbg !1420
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1, !dbg !1422
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1397, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1398, metadata !DIExpression()), !dbg !1420
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1423, !tbaa !1042
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1399, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1420
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1424
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #8, !dbg !1424
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1402, metadata !DIExpression()), !dbg !1425
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0, !dbg !1426
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1404, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 16, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1398, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1399, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1420
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1427
  br i1 %9, label %59, label %10, !dbg !1428

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12, !dbg !1428

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i64 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i64 [ 0, %10 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1398, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1399, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %15, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1404, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %17, metadata !1400, metadata !DIExpression()), !dbg !1420
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64* %18, metadata !624, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1430
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1432
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1433
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !dbg !1433, !tbaa !1197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1408, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %19, metadata !1406, metadata !DIExpression()), !dbg !1434
  %22 = icmp eq i64 %19, %0, !dbg !1435
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1436, !tbaa !1042
  br i1 %22, label %23, label %53, !dbg !1437

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1438, !tbaa !1249
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1440
  br i1 %25, label %26, label %27, !dbg !1441

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1442, !tbaa !1249
  br label %27, !dbg !1444

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15, !dbg !1445
  br i1 %28, label %29, label %46, !dbg !1446

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1409, metadata !DIExpression()), !dbg !1447
  %30 = shl i64 %15, 4, !dbg !1448
  %31 = call i8* @malloc(i64 %30) #7, !dbg !1449
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1404, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 0, metadata !1414, metadata !DIExpression()), !dbg !1451
  %33 = icmp eq i64 %15, 0, !dbg !1452
  br i1 %33, label %34, label %37, !dbg !1454

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %35, metadata !1405, metadata !DIExpression()), !dbg !1420
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1456
  br i1 %36, label %46, label %44, !dbg !1458

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1414, metadata !DIExpression()), !dbg !1451
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38, !dbg !1459
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1459, !tbaa !1042
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38, !dbg !1461
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1462, !tbaa !1042
  %42 = add nuw i64 %38, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %42, metadata !1414, metadata !DIExpression()), !dbg !1451
  %43 = icmp eq i64 %42, %15, !dbg !1452
  br i1 %43, label %34, label %37, !dbg !1454, !llvm.loop !1464

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1466
  call void @free(i8* %45) #7, !dbg !1468
  br label %46, !dbg !1469

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1420
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1420
  call void @llvm.dbg.value(metadata i64 %48, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1404, metadata !DIExpression()), !dbg !1420
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1470
  store i64 %1, i64* %49, align 8, !dbg !1471, !tbaa !1199
  %50 = add i64 %17, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %50, metadata !1400, metadata !DIExpression()), !dbg !1420
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17, !dbg !1473
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !dbg !1474, !tbaa !1042
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !875, metadata !DIExpression()) #8, !dbg !1475
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1477
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %52) #7, !dbg !1478
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1399, metadata !DIExpression()), !dbg !1420
  br label %53, !dbg !1479

53:                                               ; preds = %12, %46
  %54 = phi i64 [ %50, %46 ], [ %17, %12 ], !dbg !1420
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1420
  %56 = phi i64 [ %48, %46 ], [ %15, %12 ], !dbg !1420
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1398, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1399, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %56, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1404, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %54, metadata !1400, metadata !DIExpression()), !dbg !1420
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1427
  br i1 %58, label %59, label %12, !dbg !1428, !llvm.loop !1480

59:                                               ; preds = %53, %2
  %60 = phi i64 [ 0, %2 ], [ %54, %53 ], !dbg !1420
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ], !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1059, metadata !DIExpression()) #8, !dbg !1482
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !1484
  call void @llvm.dbg.value(metadata i64* %62, metadata !1069, metadata !DIExpression()) #8, !dbg !1485
  call void @llvm.dbg.value(metadata i64 -2, metadata !1072, metadata !DIExpression()) #8, !dbg !1485
  %63 = atomicrmw and i64* %62, i64 -2 release, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %63, metadata !1062, metadata !DIExpression()) #8, !dbg !1482
  %64 = and i64 %63, 2, !dbg !1488
  %65 = icmp ne i64 %64, 0, !dbg !1489
  call void @llvm.dbg.value(metadata i1 %65, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1482
  call void @llvm.dbg.value(metadata i1 undef, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1482
  %66 = icmp ult i64 %63, 4
  %67 = or i1 %66, %65, !dbg !1490
  call void @llvm.dbg.value(metadata i1 %66, metadata !1064, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1482
  br i1 %67, label %70, label %68, !dbg !1490

68:                                               ; preds = %59
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !1491
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %69, metadata !1059, metadata !DIExpression()) #8, !dbg !1482
  call void @_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %69) #7, !dbg !1492
  br label %70, !dbg !1493

70:                                               ; preds = %59, %68
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1494
  %71 = icmp eq i64 %60, 0, !dbg !1495
  br i1 %71, label %81, label %73, !dbg !1497

72:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 0, metadata !1418, metadata !DIExpression()), !dbg !1498
  br i1 %71, label %81, label %83, !dbg !1499

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %79, %73 ], [ 0, %70 ]
  call void @llvm.dbg.value(metadata i64 %74, metadata !1416, metadata !DIExpression()), !dbg !1494
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %74, !dbg !1500
  %76 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %75, align 8, !dbg !1500, !tbaa !1042
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, metadata !882, metadata !DIExpression()) #8, !dbg !1502
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i64 0, i32 0, i32 2, !dbg !1504
  store i8 0, i8* %77, align 8, !dbg !1505, !tbaa !688
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i64 0, i32 0, i32 1, !dbg !1506
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %78) #7, !dbg !1507
  %79 = add nuw i64 %74, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %79, metadata !1416, metadata !DIExpression()), !dbg !1494
  %80 = icmp eq i64 %79, %60, !dbg !1495
  br i1 %80, label %72, label %73, !dbg !1497, !llvm.loop !1509

81:                                               ; preds = %83, %70, %72
  %82 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8, !dbg !1511
  br i1 %82, label %92, label %90, !dbg !1513

83:                                               ; preds = %72, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !1418, metadata !DIExpression()), !dbg !1498
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %84, !dbg !1514
  %86 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %85, align 8, !dbg !1514, !tbaa !1042
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %86, metadata !891, metadata !DIExpression()) #8, !dbg !1517
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %86, i64 0, i32 0, i32 0, !dbg !1519
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %87) #7, !dbg !1520
  %88 = add nuw i64 %84, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %88, metadata !1418, metadata !DIExpression()), !dbg !1498
  %89 = icmp eq i64 %88, %60, !dbg !1522
  br i1 %89, label %81, label %83, !dbg !1499, !llvm.loop !1523

90:                                               ; preds = %81
  %91 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*, !dbg !1525
  call void @free(i8* %91) #7, !dbg !1527
  br label %92, !dbg !1528

92:                                               ; preds = %90, %81
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #8, !dbg !1529
  ret i64 %60, !dbg !1530
}

; Function Attrs: nounwind
define weak dso_local i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #5 !dbg !1531 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !1535, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %1, metadata !1536, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1537, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %3, metadata !1538, metadata !DIExpression()), !dbg !1550
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1551
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !1551
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1539, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %1, metadata !1536, metadata !DIExpression()), !dbg !1550
  call void @_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #6, !dbg !1553
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !1554
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1540, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1203, metadata !DIExpression()), !dbg !1556
  store i8 0, i8* %8, align 8, !dbg !1558, !tbaa !1210
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2, !dbg !1559
  store i64 0, i64* %9, align 8, !dbg !1559, !tbaa !1213
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0, !dbg !1560
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !dbg !1560, !tbaa !1216
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1562
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #7, !dbg !1563
  br i1 %13, label %15, label %14, !dbg !1564

14:                                               ; preds = %4
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #6, !dbg !1565
  br label %91, !dbg !1567

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0, !dbg !1568
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1568, !tbaa !1053
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1, !dbg !1569
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1541, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1542, metadata !DIExpression()), !dbg !1550
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !dbg !1570, !tbaa !1042
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1543, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1544, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1545, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1542, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1541, metadata !DIExpression()), !dbg !1550
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1571
  br i1 %20, label %73, label %21, !dbg !1572

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1545, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, metadata !1544, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1543, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1542, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, metadata !1541, metadata !DIExpression()), !dbg !1550
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1, !dbg !1573
  call void @llvm.dbg.value(metadata i64* %28, metadata !624, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1574
  %29 = load atomic i64, i64* %28 monotonic, align 8, !dbg !1576
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2, !dbg !1577
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !dbg !1577, !tbaa !1197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1549, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i64 %29, metadata !1547, metadata !DIExpression()), !dbg !1578
  %32 = icmp eq i64 %29, %0, !dbg !1579
  br i1 %32, label %33, label %50, !dbg !1581

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !dbg !1582, !tbaa !1042
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1584, !tbaa !1053
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2, !dbg !1586
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1586, !tbaa !1249
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25, !dbg !1587
  br i1 %37, label %38, label %39, !dbg !1588

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1589, !tbaa !1249
  br label %39, !dbg !1591

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !dbg !1592, !tbaa !1210, !range !737
  %41 = icmp ne i8 %40, 0, !dbg !1592
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null
  %43 = and i1 %42, %41, !dbg !1594
  br i1 %43, label %50, label %44, !dbg !1594

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null, !dbg !1595
  br i1 %45, label %48, label %46, !dbg !1598

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2, !dbg !1599
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !dbg !1601, !tbaa !1197
  br label %48

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ], !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1544, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1545, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64* %28, metadata !1602, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i64* undef, metadata !1607, metadata !DIExpression()), !dbg !1608
  store atomic i64 %1, i64* %28 monotonic, align 8, !dbg !1610
  br label %50

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ], !dbg !1550
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ], !dbg !1550
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ], !dbg !1611
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ], !dbg !1612
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ], !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1545, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1544, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1543, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1542, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1541, metadata !DIExpression()), !dbg !1550
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null, !dbg !1571
  br i1 %56, label %57, label %21, !dbg !1572, !llvm.loop !1613

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null, !dbg !1615
  br i1 %58, label %73, label %59, !dbg !1617

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2, !dbg !1618
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !dbg !1620, !tbaa !1197
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1, !dbg !1621
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !dbg !1621, !tbaa !1056
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1, !dbg !1623
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !dbg !1623, !tbaa !1241
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null, !dbg !1624
  br i1 %65, label %70, label %66, !dbg !1625

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1626
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !dbg !1626, !tbaa !1249
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2, !dbg !1628
  br label %70

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !dbg !1629, !tbaa !1042
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1630
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !dbg !1631, !tbaa !1249
  br label %73, !dbg !1632

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3, !dbg !1633
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !dbg !1633, !tbaa !1634
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null, !dbg !1635
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #7, !dbg !1636
  br i1 %78, label %79, label %84, !dbg !1637

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3, !dbg !1638
  store i64 %3, i64* %80, align 8, !dbg !1641, !tbaa !1199
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !875, metadata !DIExpression()) #8, !dbg !1642
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0, !dbg !1644
  call void @qurt_mutex_lock(%union.qurt_mutex_aligned8* nonnull %81) #7, !dbg !1645
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #6, !dbg !1646
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !882, metadata !DIExpression()) #8, !dbg !1647
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2, !dbg !1649
  store i8 0, i8* %82, align 8, !dbg !1650, !tbaa !688
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1, !dbg !1651
  call void @qurt_cond_signal(%union.qurt_cond_t* nonnull %83) #7, !dbg !1652
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !891, metadata !DIExpression()) #8, !dbg !1653
  call void @qurt_mutex_unlock(%union.qurt_mutex_aligned8* nonnull %81) #7, !dbg !1655
  br label %85, !dbg !1656

84:                                               ; preds = %73
  call void @_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #6, !dbg !1657
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i8, i8* %8, align 8, !dbg !1659
  %87 = and i8 %86, 1, !dbg !1659
  %88 = icmp ne i8 %87, 0, !dbg !1659
  %89 = and i1 %78, %88, !dbg !1659
  %90 = zext i1 %89 to i32, !dbg !1660
  br label %91

91:                                               ; preds = %85, %14
  %92 = phi i32 [ %90, %85 ], [ 0, %14 ], !dbg !1550
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !1661
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !1661
  ret i32 %92, !dbg !1661
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #0 !dbg !1662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1664, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8* %0, metadata !1666, metadata !DIExpression()), !dbg !1668
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1669
  %4 = bitcast i8* %3 to i64**, !dbg !1669
  %5 = load i64*, i64** %4, align 8, !dbg !1669, !tbaa !1670
  call void @llvm.dbg.value(metadata i64* %5, metadata !624, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1672
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %6, metadata !1667, metadata !DIExpression()), !dbg !1668
  %7 = icmp eq i64 %6, 3, !dbg !1675
  ret i1 %7, !dbg !1676
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1677 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1679, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %1, metadata !1680, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i1 %2, metadata !1681, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1684
  call void @llvm.dbg.value(metadata i8* %0, metadata !1682, metadata !DIExpression()), !dbg !1684
  %4 = select i1 %2, i64 2, i64 0, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %4, metadata !1683, metadata !DIExpression()), !dbg !1684
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1686
  %6 = bitcast i8* %5 to i64**, !dbg !1686
  %7 = load i64*, i64** %6, align 8, !dbg !1686, !tbaa !1670
  call void @llvm.dbg.value(metadata i64* %7, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64* undef, metadata !1690, metadata !DIExpression()), !dbg !1691
  store atomic i64 %4, i64* %7 release, align 8, !dbg !1693
  ret i64 0, !dbg !1694
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1695 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1697, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %1, metadata !1698, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i1 %2, metadata !1699, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %0, metadata !1700, metadata !DIExpression()), !dbg !1704
  br i1 %2, label %8, label %4, !dbg !1705

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1700, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1701, metadata !DIExpression()), !dbg !1706
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1707
  %6 = bitcast i8* %5 to i64**, !dbg !1707
  %7 = load i64*, i64** %6, align 8, !dbg !1707, !tbaa !1708
  call void @llvm.dbg.value(metadata i64* %7, metadata !1602, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64* undef, metadata !1607, metadata !DIExpression()), !dbg !1710
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1712
  br label %8, !dbg !1713

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1714
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1717, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1718, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %0, metadata !1719, metadata !DIExpression()), !dbg !1721
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1722
  %4 = bitcast i8* %3 to i64**, !dbg !1722
  %5 = load i64*, i64** %4, align 8, !dbg !1722, !tbaa !1723
  call void @llvm.dbg.value(metadata i64* %5, metadata !624, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1725
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %6, metadata !1720, metadata !DIExpression()), !dbg !1721
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1728
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1728
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1728, !tbaa !1730
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64, !dbg !1731
  %11 = icmp eq i64 %6, %10, !dbg !1732
  br i1 %11, label %12, label %30, !dbg !1733

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1720, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64* %5, metadata !1602, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64* undef, metadata !1607, metadata !DIExpression()), !dbg !1734
  store atomic i64 0, i64* %5 monotonic, align 8, !dbg !1736
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1737, !tbaa !1730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, metadata !1738, metadata !DIExpression()), !dbg !1744
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0, !dbg !1746
  call void @llvm.dbg.value(metadata i64* %14, metadata !624, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1747
  %15 = load atomic i64, i64* %14 monotonic, align 8, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %15, metadata !1741, metadata !DIExpression()), !dbg !1744
  %16 = and i64 %15, 1, !dbg !1750
  %17 = icmp eq i64 %16, 0, !dbg !1752
  br i1 %17, label %27, label %18, !dbg !1753

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i64 %19, metadata !1741, metadata !DIExpression()), !dbg !1744
  %20 = or i64 %19, 2, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %20, metadata !1742, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64* %14, metadata !1756, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i64* undef, metadata !1759, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i64* undef, metadata !1760, metadata !DIExpression()), !dbg !1761
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic, !dbg !1764
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1764
  br i1 %22, label %27, label %23, !dbg !1764

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %24, metadata !1741, metadata !DIExpression()), !dbg !1744
  %25 = and i64 %24, 1, !dbg !1750
  %26 = icmp eq i64 %25, 0, !dbg !1752
  br i1 %26, label %27, label %18, !dbg !1753

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1765
  store i8 %28, i8* %29, align 8, !dbg !1766, !tbaa !1210
  br label %30, !dbg !1767

30:                                               ; preds = %2, %27
  ret i1 %11, !dbg !1768
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #0 !dbg !1769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1771, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1772, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i1 %2, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1776
  call void @llvm.dbg.value(metadata i1 %3, metadata !1774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1776
  call void @llvm.dbg.value(metadata i8* %0, metadata !1775, metadata !DIExpression()), !dbg !1776
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1777
  %6 = load i8, i8* %5, align 8, !dbg !1777, !tbaa !1210, !range !737
  %7 = icmp ne i8 %6, 0, !dbg !1777
  %8 = and i1 %7, %3, !dbg !1779
  br i1 %8, label %9, label %15, !dbg !1779

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1780
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1780
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !dbg !1780, !tbaa !1730
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1782, metadata !DIExpression()), !dbg !1785
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0, !dbg !1787
  call void @llvm.dbg.value(metadata i64* %13, metadata !1788, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i64 2, metadata !1791, metadata !DIExpression()), !dbg !1792
  %14 = atomicrmw or i64* %13, i64 2 monotonic, !dbg !1794
  br label %15, !dbg !1795

15:                                               ; preds = %4, %9
  ret void, !dbg !1796
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #0 !dbg !1797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1799, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %0, metadata !1801, metadata !DIExpression()), !dbg !1803
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1804
  %4 = bitcast i8* %3 to i64**, !dbg !1804
  %5 = load i64*, i64** %4, align 8, !dbg !1804, !tbaa !1805
  call void @llvm.dbg.value(metadata i64* %5, metadata !624, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()), !dbg !1807
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %6, metadata !1802, metadata !DIExpression()), !dbg !1803
  %7 = icmp eq i64 %6, 0, !dbg !1810
  %8 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1812
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1812
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !dbg !1812, !tbaa !1813
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64, !dbg !1812
  br i1 %7, label %12, label %13, !dbg !1814

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %11, metadata !1802, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64* %5, metadata !1602, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i64* undef, metadata !1607, metadata !DIExpression()), !dbg !1815
  store atomic i64 %11, i64* %5 monotonic, align 8, !dbg !1818
  br label %17, !dbg !1819

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11, !dbg !1820
  br i1 %14, label %17, label %15, !dbg !1822

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2, !dbg !1823
  store i64 %11, i64* %16, align 8, !dbg !1825, !tbaa !1213
  br label %17, !dbg !1826

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ], !dbg !1803
  ret i1 %18, !dbg !1827
}

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv(i8* %0) #5 !dbg !1828 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1830, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %0, metadata !1831, metadata !DIExpression()), !dbg !1832
  %3 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1833
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1833
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !dbg !1833, !tbaa !1813
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1834, metadata !DIExpression()) #8, !dbg !1839
  call void @llvm.dbg.value(metadata i64 1, metadata !1837, metadata !DIExpression()) #8, !dbg !1839
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression()) #8, !dbg !1839
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0, !dbg !1841
  call void @llvm.dbg.value(metadata i64* %6, metadata !720, metadata !DIExpression()) #8, !dbg !1843
  call void @llvm.dbg.value(metadata i64* undef, metadata !723, metadata !DIExpression()) #8, !dbg !1843
  call void @llvm.dbg.value(metadata i64* undef, metadata !724, metadata !DIExpression()) #8, !dbg !1843
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic, !dbg !1845
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1845
  br i1 %8, label %22, label %9, !dbg !1846

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1847, metadata !DIExpression()) #8, !dbg !1853
  call void @llvm.dbg.value(metadata i64 1, metadata !1850, metadata !DIExpression()) #8, !dbg !1853
  call void @llvm.dbg.value(metadata i64 0, metadata !1851, metadata !DIExpression()) #8, !dbg !1853
  call void @llvm.dbg.value(metadata i64* %6, metadata !1856, metadata !DIExpression()) #8, !dbg !1861
  call void @llvm.dbg.value(metadata i64* undef, metadata !1859, metadata !DIExpression()) #8, !dbg !1861
  call void @llvm.dbg.value(metadata i64* undef, metadata !1860, metadata !DIExpression()) #8, !dbg !1861
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic, !dbg !1864
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !1864
  br i1 %11, label %22, label %12, !dbg !1865

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1866
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #8, !dbg !1866
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1852, metadata !DIExpression()) #8, !dbg !1867
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1868, metadata !DIExpression()) #8, !dbg !1872
  call void @llvm.dbg.value(metadata i64* %6, metadata !1871, metadata !DIExpression()) #8, !dbg !1872
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1874, metadata !DIExpression()) #8, !dbg !1878
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1880
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1881
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %15, align 8, !dbg !1881, !tbaa !1263
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1882
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1883
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !dbg !1883, !tbaa !1634
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1884
  store i64* %6, i64** %18, align 8, !dbg !1884, !tbaa !1670
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !dbg !1885, !tbaa !1216
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %16, align 8, !dbg !1887, !tbaa !1347
  %19 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64, !dbg !1888
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1889
  %21 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %19, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %20) #7, !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #8, !dbg !1891
  br label %22, !dbg !1891

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1892
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib(i8* %0, i32 %1, i1 zeroext %2) #0 !dbg !1893 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1895, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %1, metadata !1896, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i1 %2, metadata !1897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %0, metadata !1898, metadata !DIExpression()), !dbg !1902
  br i1 %2, label %8, label %4, !dbg !1903

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1898, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 0, metadata !1899, metadata !DIExpression()), !dbg !1904
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1905
  %6 = bitcast i8* %5 to i64**, !dbg !1905
  %7 = load i64*, i64** %6, align 8, !dbg !1905, !tbaa !1805
  call void @llvm.dbg.value(metadata i64* %7, metadata !1602, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64* undef, metadata !1607, metadata !DIExpression()), !dbg !1906
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1908
  br label %8, !dbg !1909

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1910
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !1911 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1915, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1916, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1918, metadata !DIExpression()) #8, !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1921, metadata !DIExpression()) #8, !dbg !1923
  call void @llvm.dbg.value(metadata i64 1, metadata !1922, metadata !DIExpression()) #8, !dbg !1923
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1925
  call void @llvm.dbg.value(metadata i64* %3, metadata !643, metadata !DIExpression()) #8, !dbg !1927
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1927
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1927
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic, !dbg !1929
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1929
  br i1 %5, label %59, label %6, !dbg !1930

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1918, metadata !DIExpression()) #8, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1916, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1931, metadata !DIExpression()) #8, !dbg !1945
  call void @llvm.dbg.value(metadata i32 40, metadata !1934, metadata !DIExpression()) #8, !dbg !1945
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()) #8, !dbg !1948
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !1948
  %7 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1950
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = ptrtoint %struct.halide_mutex* %0 to i64
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  br label %16, !dbg !1951

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1934, metadata !DIExpression()) #8, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %17, metadata !1935, metadata !DIExpression()) #8, !dbg !1945
  %19 = and i64 %17, 1, !dbg !1952
  %20 = icmp eq i64 %19, 0, !dbg !1953
  br i1 %20, label %21, label %32, !dbg !1954

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1935, metadata !DIExpression()) #8, !dbg !1945
  %23 = or i64 %22, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %23, metadata !1936, metadata !DIExpression()) #8, !dbg !1956
  call void @llvm.dbg.value(metadata i64* %3, metadata !643, metadata !DIExpression()) #8, !dbg !1957
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !1957
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !1957
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic, !dbg !1960
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !1960
  br i1 %25, label %59, label %26, !dbg !1960

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %18, metadata !1934, metadata !DIExpression()) #8, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %27, metadata !1935, metadata !DIExpression()) #8, !dbg !1945
  %28 = and i64 %27, 1, !dbg !1952
  %29 = icmp eq i64 %28, 0, !dbg !1953
  br i1 %29, label %21, label %30, !dbg !1954

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0, !dbg !1960
  br label %32, !dbg !1961

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ], !dbg !1945
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !657, metadata !DIExpression()) #8, !dbg !1964
  %34 = icmp sgt i32 %18, 0, !dbg !1961
  br i1 %34, label %35, label %40, !dbg !1965

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %18, metadata !1934, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !1945
  %36 = icmp eq i32 %18, 1, !dbg !1966
  br i1 %36, label %40, label %37, !dbg !1967

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %38, metadata !1934, metadata !DIExpression()) #8, !dbg !1945
  call void @halide_thread_yield() #7, !dbg !1969
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()) #8, !dbg !1971
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !1971
  %39 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1973
  br label %55, !dbg !1974

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !1935, metadata !DIExpression()) #8, !dbg !1945
  %42 = and i64 %33, 2, !dbg !1975
  %43 = icmp eq i64 %42, 0, !dbg !1976
  br i1 %43, label %44, label %50, !dbg !1977

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %33, metadata !1935, metadata !DIExpression()) #8, !dbg !1945
  %45 = or i64 %33, 2, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %45, metadata !1940, metadata !DIExpression()) #8, !dbg !1979
  call void @llvm.dbg.value(metadata i64* %3, metadata !1756, metadata !DIExpression()) #8, !dbg !1980
  call void @llvm.dbg.value(metadata i64* undef, metadata !1759, metadata !DIExpression()) #8, !dbg !1980
  call void @llvm.dbg.value(metadata i64* undef, metadata !1760, metadata !DIExpression()) #8, !dbg !1980
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic, !dbg !1983
  %47 = extractvalue { i64, i1 } %46, 1, !dbg !1983
  br i1 %47, label %50, label %48, !dbg !1983

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0, !dbg !1983
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #8, !dbg !1984
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1943, metadata !DIExpression()) #8, !dbg !1985
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1868, metadata !DIExpression()) #8, !dbg !1986
  call void @llvm.dbg.value(metadata i64* %3, metadata !1871, metadata !DIExpression()) #8, !dbg !1986
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1874, metadata !DIExpression()) #8, !dbg !1988
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !1990, !tbaa !1263
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1991, !tbaa !1634
  store i64* %3, i64** %13, align 8, !dbg !1992, !tbaa !1670
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1993, !tbaa !1216
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !1994, !tbaa !1347
  %51 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #7, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %51, metadata !1944, metadata !DIExpression()) #8, !dbg !1996
  %52 = icmp eq i64 %51, %14, !dbg !1997
  br i1 %52, label %58, label %53, !dbg !1999

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 40, metadata !1934, metadata !DIExpression()) #8, !dbg !1945
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()) #8, !dbg !2000
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2000
  %54 = load atomic i64, i64* %3 monotonic, align 8, !dbg !2002
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #8, !dbg !2003
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16, !dbg !1945, !llvm.loop !2004

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #8, !dbg !2003
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void, !dbg !2005
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #5 !dbg !2006 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2008, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !2009, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1834, metadata !DIExpression()) #8, !dbg !2011
  call void @llvm.dbg.value(metadata i64 1, metadata !1837, metadata !DIExpression()) #8, !dbg !2011
  call void @llvm.dbg.value(metadata i64 0, metadata !1838, metadata !DIExpression()) #8, !dbg !2011
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !2013
  call void @llvm.dbg.value(metadata i64* %3, metadata !720, metadata !DIExpression()) #8, !dbg !2014
  call void @llvm.dbg.value(metadata i64* undef, metadata !723, metadata !DIExpression()) #8, !dbg !2014
  call void @llvm.dbg.value(metadata i64* undef, metadata !724, metadata !DIExpression()) #8, !dbg !2014
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic, !dbg !2016
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !2016
  br i1 %5, label %19, label %6, !dbg !2017

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1847, metadata !DIExpression()) #8, !dbg !2018
  call void @llvm.dbg.value(metadata i64 1, metadata !1850, metadata !DIExpression()) #8, !dbg !2018
  call void @llvm.dbg.value(metadata i64 0, metadata !1851, metadata !DIExpression()) #8, !dbg !2018
  call void @llvm.dbg.value(metadata i64* %3, metadata !1856, metadata !DIExpression()) #8, !dbg !2020
  call void @llvm.dbg.value(metadata i64* undef, metadata !1859, metadata !DIExpression()) #8, !dbg !2020
  call void @llvm.dbg.value(metadata i64* undef, metadata !1860, metadata !DIExpression()) #8, !dbg !2020
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic, !dbg !2022
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2022
  br i1 %8, label %19, label %9, !dbg !2023

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #8, !dbg !2024
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1852, metadata !DIExpression()) #8, !dbg !2025
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1868, metadata !DIExpression()) #8, !dbg !2026
  call void @llvm.dbg.value(metadata i64* %3, metadata !1871, metadata !DIExpression()) #8, !dbg !2026
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1874, metadata !DIExpression()) #8, !dbg !2028
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2030
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2031
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %12, align 8, !dbg !2031, !tbaa !1263
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2032
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2033
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !2033, !tbaa !1634
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !2034
  store i64* %3, i64** %15, align 8, !dbg !2034, !tbaa !1670
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !2035, !tbaa !1216
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %13, align 8, !dbg !2036, !tbaa !1347
  %16 = ptrtoint %struct.halide_mutex* %0 to i64, !dbg !2037
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !2038
  %18 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17) #7, !dbg !2039
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #8, !dbg !2040
  br label %19, !dbg !2040

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !2041
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2042 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2050, metadata !DIExpression()) #8, !dbg !2055
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2057
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()) #8, !dbg !2058
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2058
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %4, metadata !2053, metadata !DIExpression()) #8, !dbg !2055
  %5 = icmp eq i64 %4, 0, !dbg !2061
  br i1 %5, label %18, label %6, !dbg !2063

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2050, metadata !DIExpression()) #8, !dbg !2055
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #8, !dbg !2064
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2054, metadata !DIExpression()) #8, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %4, metadata !2053, metadata !DIExpression()) #8, !dbg !2055
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2066
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !2067, metadata !DIExpression()) #8, !dbg !2072
  call void @llvm.dbg.value(metadata i64* %3, metadata !2070, metadata !DIExpression()) #8, !dbg !2072
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !2071, metadata !DIExpression()) #8, !dbg !2072
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1874, metadata !DIExpression()) #8, !dbg !2074
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2076
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2077
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !2077, !tbaa !1263
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2078
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !2078, !tbaa !1347
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2079
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1, !dbg !2080
  store i64* %3, i64** %13, align 8, !dbg !2080, !tbaa !1723
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2, !dbg !2081
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !dbg !2081, !tbaa !1730
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !2082, !tbaa !1216
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !2084, !tbaa !1634
  %15 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2085
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, !dbg !2086
  %17 = call i32 @_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy(i64 %15, i64 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16, i64 0) #7, !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #8, !dbg !2088
  br label %18, !dbg !2088

18:                                               ; preds = %1, %6
  ret void, !dbg !2089
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #5 !dbg !2090 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2095, metadata !DIExpression()) #8, !dbg !2100
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2102
  call void @llvm.dbg.value(metadata i64* %3, metadata !624, metadata !DIExpression()) #8, !dbg !2103
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2103
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %4, metadata !2098, metadata !DIExpression()) #8, !dbg !2100
  %5 = icmp eq i64 %4, 0, !dbg !2106
  br i1 %5, label %18, label %6, !dbg !2108

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2095, metadata !DIExpression()) #8, !dbg !2100
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2093, metadata !DIExpression()), !dbg !2094
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !2109
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #8, !dbg !2109
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2099, metadata !DIExpression()) #8, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %4, metadata !2098, metadata !DIExpression()) #8, !dbg !2100
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !2111
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !2112, metadata !DIExpression()) #8, !dbg !2117
  call void @llvm.dbg.value(metadata i64* %3, metadata !2115, metadata !DIExpression()) #8, !dbg !2117
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !2116, metadata !DIExpression()) #8, !dbg !2117
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1874, metadata !DIExpression()) #8, !dbg !2119
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !2121
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !2121, !tbaa !1216
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !2122
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %10, align 8, !dbg !2122, !tbaa !1263
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !2123
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !2124
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !2124, !tbaa !1634
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1, !dbg !2125
  store i64* %3, i64** %13, align 8, !dbg !2125, !tbaa !1708
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2, !dbg !2126
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !dbg !2126, !tbaa !2127
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %11, align 8, !dbg !2128, !tbaa !1347
  %15 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2130
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, !dbg !2131
  %17 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16) #7, !dbg !2132
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #8, !dbg !2133
  br label %18, !dbg !2133

18:                                               ; preds = %1, %6
  ret void, !dbg !2134
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #5 !dbg !2135 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2139, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !2144, metadata !DIExpression()) #8, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2147, metadata !DIExpression()) #8, !dbg !2153
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !2155
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #8, !dbg !2155
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2148, metadata !DIExpression()) #8, !dbg !2156
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !2158, metadata !DIExpression()) #8, !dbg !2163
  call void @llvm.dbg.value(metadata i64* %6, metadata !2161, metadata !DIExpression()) #8, !dbg !2163
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2162, metadata !DIExpression()) #8, !dbg !2163
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1874, metadata !DIExpression()) #8, !dbg !2165
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0, !dbg !2167
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1, !dbg !2168
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2, !dbg !2169
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3, !dbg !2170
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !dbg !2170, !tbaa !1634
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1, !dbg !2171
  store i64* %6, i64** %11, align 8, !dbg !2171, !tbaa !1805
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2, !dbg !2172
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !2172
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !dbg !2172, !tbaa !1813
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !dbg !2173, !tbaa !1216
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv, void (i8*)** %8, align 8, !dbg !2175, !tbaa !1263
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %9, align 8, !dbg !2176, !tbaa !1347
  %14 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !2177
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, !dbg !2178
  %16 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %14, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #7, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %16, metadata !2149, metadata !DIExpression()) #8, !dbg !2153
  %17 = ptrtoint %struct.halide_mutex* %1 to i64, !dbg !2180
  %18 = icmp eq i64 %16, %17, !dbg !2181
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2182
  br i1 %18, label %75, label %20, !dbg !2183

20:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1918, metadata !DIExpression()) #8, !dbg !2184
  call void @llvm.dbg.value(metadata i64 0, metadata !1921, metadata !DIExpression()) #8, !dbg !2184
  call void @llvm.dbg.value(metadata i64 1, metadata !1922, metadata !DIExpression()) #8, !dbg !2184
  call void @llvm.dbg.value(metadata i64* %19, metadata !643, metadata !DIExpression()) #8, !dbg !2187
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2187
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2187
  %21 = cmpxchg weak i64* %19, i64 0, i64 1 acquire monotonic, !dbg !2189
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !2189
  br i1 %22, label %80, label %23, !dbg !2190

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1931, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata i32 40, metadata !1934, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata i64* %19, metadata !624, metadata !DIExpression()) #8, !dbg !2193
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2193
  %24 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2195
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32, !dbg !2196

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !1934, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %33, metadata !1935, metadata !DIExpression()) #8, !dbg !2191
  %35 = and i64 %33, 1, !dbg !2197
  %36 = icmp eq i64 %35, 0, !dbg !2198
  br i1 %36, label %37, label %48, !dbg !2199

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1935, metadata !DIExpression()) #8, !dbg !2191
  %39 = or i64 %38, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %39, metadata !1936, metadata !DIExpression()) #8, !dbg !2201
  call void @llvm.dbg.value(metadata i64* %19, metadata !643, metadata !DIExpression()) #8, !dbg !2202
  call void @llvm.dbg.value(metadata i64* undef, metadata !648, metadata !DIExpression()) #8, !dbg !2202
  call void @llvm.dbg.value(metadata i64* undef, metadata !649, metadata !DIExpression()) #8, !dbg !2202
  %40 = cmpxchg weak i64* %19, i64 %38, i64 %39 acquire monotonic, !dbg !2204
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !2204
  br i1 %41, label %80, label %42, !dbg !2204

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %34, metadata !1934, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %43, metadata !1935, metadata !DIExpression()) #8, !dbg !2191
  %44 = and i64 %43, 1, !dbg !2197
  %45 = icmp eq i64 %44, 0, !dbg !2198
  br i1 %45, label %37, label %46, !dbg !2199

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0, !dbg !2204
  br label %48, !dbg !2205

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ], !dbg !2191
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !657, metadata !DIExpression()) #8, !dbg !2207
  %50 = icmp sgt i32 %34, 0, !dbg !2205
  br i1 %50, label %51, label %56, !dbg !2208

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %34, metadata !1934, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #8, !dbg !2191
  %52 = icmp eq i32 %34, 1, !dbg !2209
  br i1 %52, label %56, label %53, !dbg !2210

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %54, metadata !1934, metadata !DIExpression()) #8, !dbg !2191
  call void @halide_thread_yield() #7, !dbg !2212
  call void @llvm.dbg.value(metadata i64* %19, metadata !624, metadata !DIExpression()) #8, !dbg !2213
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2213
  %55 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2215
  br label %71, !dbg !2216

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1935, metadata !DIExpression()) #8, !dbg !2191
  %58 = and i64 %49, 2, !dbg !2217
  %59 = icmp eq i64 %58, 0, !dbg !2218
  br i1 %59, label %60, label %66, !dbg !2219

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %49, metadata !1935, metadata !DIExpression()) #8, !dbg !2191
  %61 = or i64 %49, 2, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %61, metadata !1940, metadata !DIExpression()) #8, !dbg !2221
  call void @llvm.dbg.value(metadata i64* %19, metadata !1756, metadata !DIExpression()) #8, !dbg !2222
  call void @llvm.dbg.value(metadata i64* undef, metadata !1759, metadata !DIExpression()) #8, !dbg !2222
  call void @llvm.dbg.value(metadata i64* undef, metadata !1760, metadata !DIExpression()) #8, !dbg !2222
  %62 = cmpxchg weak i64* %19, i64 %49, i64 %61 monotonic monotonic, !dbg !2224
  %63 = extractvalue { i64, i1 } %62, 1, !dbg !2224
  br i1 %63, label %66, label %64, !dbg !2224

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0, !dbg !2224
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #8, !dbg !2225
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1943, metadata !DIExpression()) #8, !dbg !2226
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1868, metadata !DIExpression()) #8, !dbg !2227
  call void @llvm.dbg.value(metadata i64* %19, metadata !1871, metadata !DIExpression()) #8, !dbg !2227
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1874, metadata !DIExpression()) #8, !dbg !2229
  store void (i8*)* @_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv, void (i8*)** %27, align 8, !dbg !2231, !tbaa !1263
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !dbg !2232, !tbaa !1634
  store i64* %19, i64** %30, align 8, !dbg !2233, !tbaa !1670
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !dbg !2234, !tbaa !1216
  store i64 (i8*, i32, i1)* @_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib, i64 (i8*, i32, i1)** %28, align 8, !dbg !2235, !tbaa !1347
  %67 = call i64 @_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %67, metadata !1944, metadata !DIExpression()) #8, !dbg !2237
  %68 = icmp eq i64 %67, %17, !dbg !2238
  br i1 %68, label %74, label %69, !dbg !2239

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 40, metadata !1934, metadata !DIExpression()) #8, !dbg !2191
  call void @llvm.dbg.value(metadata i64* %19, metadata !624, metadata !DIExpression()) #8, !dbg !2240
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2240
  %70 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2242
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #8, !dbg !2243
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32, !dbg !2191, !llvm.loop !2244

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #8, !dbg !2243
  br label %80

75:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2162, metadata !DIExpression()) #8, !dbg !2163
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2147, metadata !DIExpression()) #8, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64* %19, metadata !624, metadata !DIExpression()) #8, !dbg !2245
  call void @llvm.dbg.value(metadata i64* undef, metadata !631, metadata !DIExpression()) #8, !dbg !2245
  %76 = load atomic i64, i64* %19 monotonic, align 8, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %76, metadata !2150, metadata !DIExpression()) #8, !dbg !2248
  %77 = and i64 %76, 1, !dbg !2249
  %78 = icmp eq i64 %77, 0, !dbg !2249
  br i1 %78, label %79, label %80, !dbg !2252

79:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !2253
  call void @abort() #7, !dbg !2253
  br label %80, !dbg !2253

80:                                               ; preds = %37, %20, %74, %75, %79
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #8, !dbg !2255
  ret void, !dbg !2256
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #2 !dbg !2257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2263
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #7, !dbg !2264
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2265
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2262, metadata !DIExpression()), !dbg !2263
  %4 = icmp eq i8* %2, null, !dbg !2266
  br i1 %4, label %14, label %5, !dbg !2268

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !2269
  %7 = shl nsw i64 %6, 3, !dbg !2270
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #7, !dbg !2271
  %9 = bitcast i8* %2 to i8**, !dbg !2272
  store i8* %8, i8** %9, align 8, !dbg !2272, !tbaa !2273
  %10 = icmp eq i8* %8, null, !dbg !2275
  br i1 %10, label %11, label %12, !dbg !2277

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #7, !dbg !2278
  br label %14, !dbg !2280

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #7, !dbg !2281
  br label %14, !dbg !2282

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ], !dbg !2263
  ret %struct.halide_mutex_array* %15, !dbg !2283
}

declare !dbg !2284 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #4

declare !dbg !2287 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !2290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %1, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8* %1, metadata !2294, metadata !DIExpression()), !dbg !2295
  %3 = bitcast i8* %1 to i8**, !dbg !2296
  %4 = load i8*, i8** %3, align 8, !dbg !2296, !tbaa !2273
  tail call void @halide_free(i8* %0, i8* %4) #7, !dbg !2297
  tail call void @halide_free(i8* %0, i8* %1) #7, !dbg !2298
  ret void, !dbg !2299
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2300 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %1, metadata !2305, metadata !DIExpression()), !dbg !2306
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2307
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2307, !tbaa !2273
  %5 = sext i32 %1 to i64, !dbg !2308
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2308
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #6, !dbg !2309
  ret i32 0, !dbg !2310
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #2 !dbg !2311 {
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %1, metadata !2314, metadata !DIExpression()), !dbg !2315
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2316
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2316, !tbaa !2273
  %5 = sext i32 %1 to i64, !dbg !2317
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2317
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #6, !dbg !2318
  ret i32 0, !dbg !2319
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %0) local_unnamed_addr #0 !dbg !2320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2324, metadata !DIExpression()), !dbg !2325
  %2 = icmp sgt i32 %0, 256, !dbg !2326
  br i1 %2, label %6, label %3, !dbg !2328

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2329
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2329
  ret i32 %5, !dbg !2329

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2324, metadata !DIExpression()), !dbg !2325
  ret i32 256, !dbg !2330
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() local_unnamed_addr #2 !dbg !2331 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2333, metadata !DIExpression()), !dbg !2335
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %1, metadata !2334, metadata !DIExpression()), !dbg !2335
  %2 = icmp eq i8* %1, null, !dbg !2337
  br i1 %2, label %3, label %6, !dbg !2339

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2340
  call void @llvm.dbg.value(metadata i8* %4, metadata !2334, metadata !DIExpression()), !dbg !2335
  %5 = icmp eq i8* %4, null, !dbg !2342
  br i1 %5, label %9, label %6, !dbg !2344

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #7, !dbg !2345
  call void @llvm.dbg.value(metadata i32 %8, metadata !2333, metadata !DIExpression()), !dbg !2335
  br label %11, !dbg !2347

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #6, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %10, metadata !2333, metadata !DIExpression()), !dbg !2335
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2350
  call void @llvm.dbg.value(metadata i32 %12, metadata !2333, metadata !DIExpression()), !dbg !2335
  ret i32 %12, !dbg !2351
}

declare !dbg !2352 dso_local i8* @getenv(i8*) local_unnamed_addr #4

declare !dbg !2355 dso_local i32 @atoi(i8*) local_unnamed_addr #4

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #2 !dbg !2358 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2362, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 0, metadata !2363, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 40, metadata !2364, metadata !DIExpression()), !dbg !2388
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8, !dbg !2389
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10, !dbg !2395

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ], !dbg !2396
  call void @llvm.dbg.value(metadata i32 %11, metadata !2363, metadata !DIExpression()), !dbg !2388
  br i1 %3, label %15, label %12, !dbg !2397

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2392, metadata !DIExpression()), !dbg !2398
  %13 = load i32, i32* %4, align 8, !dbg !2399, !tbaa !2400
  %14 = icmp eq i32 %13, 0, !dbg !2403
  br i1 %14, label %18, label %21, !dbg !2404

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !2405, !tbaa !2406, !range !737
  %17 = icmp eq i8 %16, 0, !dbg !2405
  br i1 %17, label %48, label %417, !dbg !2395

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !dbg !2389, !tbaa !2410
  %20 = icmp eq i32 %19, 0, !dbg !2389
  br i1 %20, label %417, label %21, !dbg !2395

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2411, !tbaa !2412
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2366, metadata !DIExpression()), !dbg !2413
  %23 = load i32, i32* %5, align 4, !dbg !2414, !tbaa !2418
  %24 = icmp eq i32 %23, 0, !dbg !2419
  br i1 %24, label %38, label %25, !dbg !2420

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !dbg !2421, !tbaa !2410
  %27 = icmp eq i32 %26, 0, !dbg !2424
  br i1 %27, label %28, label %46, !dbg !2425

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2368, metadata !DIExpression()), !dbg !2413
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2426
  br i1 %29, label %35, label %30, !dbg !2428

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2366, metadata !DIExpression()), !dbg !2413
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2, !dbg !2429
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2368, metadata !DIExpression()), !dbg !2413
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !dbg !2431, !tbaa !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2366, metadata !DIExpression()), !dbg !2413
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2426
  br i1 %34, label %35, label %30, !dbg !2428, !llvm.loop !2433

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %28 ], [ %32, %30 ], !dbg !2413
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !dbg !2435, !tbaa !2432
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !dbg !2436, !tbaa !1042
  store i32 0, i32* %4, align 8, !dbg !2437, !tbaa !2400
  br label %402, !dbg !2438

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !dbg !2439, !tbaa !2441
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2442
  br i1 %40, label %46, label %41, !dbg !2443

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9, !dbg !2444
  %43 = load i32, i32* %42, align 4, !dbg !2444, !tbaa !2418
  %44 = icmp eq i32 %43, 0, !dbg !2445
  br i1 %44, label %46, label %45, !dbg !2446

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2447, !tbaa !2418
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !2449
  br label %402, !dbg !2450

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2368, metadata !DIExpression()), !dbg !2413
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2451
  br i1 %47, label %196, label %51, !dbg !2452

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2411, !tbaa !2412
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), metadata !2368, metadata !DIExpression()), !dbg !2413
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2451
  br i1 %50, label %206, label %52, !dbg !2452

51:                                               ; preds = %46
  br i1 %3, label %52, label %121, !dbg !2452

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2453

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2368, metadata !DIExpression()), !dbg !2413
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5, !dbg !2454
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !dbg !2454, !tbaa !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2372, metadata !DIExpression()), !dbg !2455
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2456
  br i1 %59, label %75, label %60, !dbg !2453

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8, !dbg !2458
  %62 = load i32, i32* %61, align 8, !dbg !2458, !tbaa !2410
  %63 = icmp eq i32 %62, 0, !dbg !2461
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7, !dbg !2462
  %65 = load i32, i32* %64, align 4, !dbg !2462, !tbaa !2463
  br i1 %63, label %71, label %66, !dbg !2464

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2465
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2467
  %69 = load i32, i32* %68, align 8, !dbg !2467, !tbaa !2468
  %70 = sub nsw i32 %67, %69, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %70, metadata !2373, metadata !DIExpression()), !dbg !2455
  br label %80

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2470
  %73 = load i32, i32* %72, align 8, !dbg !2470, !tbaa !2468
  %74 = sub nsw i32 %65, %73, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %74, metadata !2373, metadata !DIExpression()), !dbg !2455
  br label %80, !dbg !2473

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2474, !tbaa !2476
  %77 = add nsw i32 %76, 1, !dbg !2477
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2478, !tbaa !2479
  %79 = sub i32 %77, %78, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %79, metadata !2373, metadata !DIExpression()), !dbg !2455
  br label %80, !dbg !2481

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ], !dbg !2482
  call void @llvm.dbg.value(metadata i32 %81, metadata !2373, metadata !DIExpression()), !dbg !2455
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7, !dbg !2483
  %83 = load i32, i32* %82, align 4, !dbg !2483, !tbaa !2463
  %84 = icmp sge i32 %81, %83, !dbg !2484
  call void @llvm.dbg.value(metadata i1 %84, metadata !2370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  call void @llvm.dbg.value(metadata i1 true, metadata !2374, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8, !dbg !2485
  %86 = load i8, i8* %85, align 8, !dbg !2485, !tbaa !2486, !range !737
  %87 = icmp eq i8 %86, 0, !dbg !2485
  br i1 %87, label %92, label %88, !dbg !2487

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8, !dbg !2488
  %90 = load i32, i32* %89, align 8, !dbg !2488, !tbaa !2410
  %91 = icmp eq i32 %90, 0, !dbg !2489
  br label %92, !dbg !2487

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i1 %93, metadata !2375, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  %94 = and i1 %93, %84, !dbg !2490
  br i1 %94, label %95, label %117, !dbg !2490

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2492, metadata !DIExpression()) #8, !dbg !2495
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10, !dbg !2499
  %97 = load i32, i32* %96, align 8, !dbg !2499, !tbaa !2502
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4, !dbg !2503
  %99 = load i32, i32* %98, align 8, !dbg !2503, !tbaa !2504
  %100 = icmp slt i32 %97, %99, !dbg !2505
  br i1 %100, label %101, label %225, !dbg !2506

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103, !dbg !2506

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !dbg !2507, !tbaa !2510
  %106 = sext i32 %104 to i64, !dbg !2511
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0, !dbg !2512
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 8, !dbg !2512, !tbaa !2513
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1, !dbg !2515
  %110 = load i32, i32* %109, align 8, !dbg !2515, !tbaa !2516
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %110) #7, !dbg !2517
  br i1 %111, label %112, label %117, !dbg !2518

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !dbg !2519, !tbaa !2502
  %114 = add nsw i32 %113, 1, !dbg !2519
  store i32 %114, i32* %96, align 8, !dbg !2519, !tbaa !2502
  %115 = load i32, i32* %98, align 8, !dbg !2503, !tbaa !2504
  %116 = icmp slt i32 %114, %115, !dbg !2505
  br i1 %116, label %103, label %225, !dbg !2506, !llvm.loop !2520

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2, !dbg !2522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %118, metadata !2368, metadata !DIExpression()), !dbg !2413
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !dbg !2523, !tbaa !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %119, metadata !2366, metadata !DIExpression()), !dbg !2413
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null, !dbg !2451
  br i1 %120, label %196, label %54, !dbg !2452

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %123, metadata !2368, metadata !DIExpression()), !dbg !2413
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5, !dbg !2454
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !dbg !2454, !tbaa !2441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %125, metadata !2372, metadata !DIExpression()), !dbg !2455
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null, !dbg !2456
  br i1 %126, label %127, label %132, !dbg !2453

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2474, !tbaa !2476
  %129 = add nsw i32 %128, 1, !dbg !2477
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2478, !tbaa !2479
  %131 = sub i32 %129, %130, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %131, metadata !2373, metadata !DIExpression()), !dbg !2455
  br label %147, !dbg !2481

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8, !dbg !2458
  %134 = load i32, i32* %133, align 8, !dbg !2458, !tbaa !2410
  %135 = icmp eq i32 %134, 0, !dbg !2461
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7, !dbg !2462
  %137 = load i32, i32* %136, align 4, !dbg !2462, !tbaa !2463
  br i1 %135, label %138, label %142, !dbg !2464

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2470
  %140 = load i32, i32* %139, align 8, !dbg !2470, !tbaa !2468
  %141 = sub nsw i32 %137, %140, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %141, metadata !2373, metadata !DIExpression()), !dbg !2455
  br label %147, !dbg !2473

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134, !dbg !2465
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2467
  %145 = load i32, i32* %144, align 8, !dbg !2467, !tbaa !2468
  %146 = sub nsw i32 %143, %145, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %146, metadata !2373, metadata !DIExpression()), !dbg !2455
  br label %147

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ], !dbg !2482
  call void @llvm.dbg.value(metadata i32 %148, metadata !2373, metadata !DIExpression()), !dbg !2455
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7, !dbg !2483
  %150 = load i32, i32* %149, align 4, !dbg !2483, !tbaa !2463
  %151 = icmp slt i32 %148, %150, !dbg !2484
  call void @llvm.dbg.value(metadata i1 %151, metadata !2370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3, !dbg !2524
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !dbg !2524, !tbaa !2525
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !dbg !2526, !tbaa !2525
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154, !dbg !2527
  %156 = icmp ne i32 %150, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2374, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8, !dbg !2485
  %158 = load i8, i8* %157, align 8, !dbg !2485, !tbaa !2486, !range !737
  %159 = icmp eq i8 %158, 0, !dbg !2485
  br i1 %159, label %164, label %160, !dbg !2487

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8, !dbg !2488
  %162 = load i32, i32* %161, align 8, !dbg !2488, !tbaa !2410
  %163 = icmp eq i32 %162, 0, !dbg !2489
  br label %164, !dbg !2487

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  call void @llvm.dbg.value(metadata i1 %165, metadata !2375, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2455
  %166 = and i1 %156, %155, !dbg !2490
  %167 = or i1 %151, %166, !dbg !2490
  %168 = xor i1 %165, true, !dbg !2490
  %169 = or i1 %167, %168, !dbg !2490
  br i1 %169, label %192, label %170, !dbg !2490

170:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2492, metadata !DIExpression()) #8, !dbg !2495
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10, !dbg !2499
  %172 = load i32, i32* %171, align 8, !dbg !2499, !tbaa !2502
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4, !dbg !2503
  %174 = load i32, i32* %173, align 8, !dbg !2503, !tbaa !2504
  %175 = icmp slt i32 %172, %174, !dbg !2505
  br i1 %175, label %176, label %225, !dbg !2506

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178, !dbg !2506

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !dbg !2507, !tbaa !2510
  %181 = sext i32 %179 to i64, !dbg !2511
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0, !dbg !2512
  %183 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %182, align 8, !dbg !2512, !tbaa !2513
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1, !dbg !2515
  %185 = load i32, i32* %184, align 8, !dbg !2515, !tbaa !2516
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %183, i32 %185) #7, !dbg !2517
  br i1 %186, label %187, label %192, !dbg !2518

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !dbg !2519, !tbaa !2502
  %189 = add nsw i32 %188, 1, !dbg !2519
  store i32 %189, i32* %171, align 8, !dbg !2519, !tbaa !2502
  %190 = load i32, i32* %173, align 8, !dbg !2503, !tbaa !2504
  %191 = icmp slt i32 %189, %190, !dbg !2505
  br i1 %191, label %178, label %225, !dbg !2506, !llvm.loop !2520

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2, !dbg !2522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %193, metadata !2368, metadata !DIExpression()), !dbg !2413
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !dbg !2523, !tbaa !2432
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %194, metadata !2366, metadata !DIExpression()), !dbg !2413
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null, !dbg !2451
  br i1 %195, label %196, label %121, !dbg !2452

196:                                              ; preds = %192, %117, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2368, metadata !DIExpression()), !dbg !2413
  br i1 %3, label %206, label %197, !dbg !2528

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %198, metadata !2363, metadata !DIExpression()), !dbg !2388
  %199 = icmp slt i32 %11, 40, !dbg !2535
  br i1 %199, label %200, label %201, !dbg !2536

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2537
  tail call void @halide_thread_yield() #7, !dbg !2539
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2540
  br label %402, !dbg !2541

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2542, !tbaa !2544
  %203 = add nsw i32 %202, 1, !dbg !2542
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2542, !tbaa !2544
  store i8 1, i8* %8, align 4, !dbg !2545, !tbaa !2546
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2547
  store i8 0, i8* %8, align 4, !dbg !2548, !tbaa !2546
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2549, !tbaa !2544
  %205 = add nsw i32 %204, -1, !dbg !2549
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2549, !tbaa !2544
  br label %402

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2550, !tbaa !2552
  %208 = add nsw i32 %207, 1, !dbg !2550
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2550, !tbaa !2552
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2553, !tbaa !2555
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2556, !tbaa !2557
  %211 = icmp sgt i32 %209, %210, !dbg !2558
  br i1 %211, label %212, label %216, !dbg !2559

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1, !dbg !2560
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2560, !tbaa !2555
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2562
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2563, !tbaa !2555
  %215 = add nsw i32 %214, 1, !dbg !2563
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2563, !tbaa !2555
  br label %221, !dbg !2564

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %217, metadata !2363, metadata !DIExpression()), !dbg !2388
  %218 = icmp slt i32 %11, 40, !dbg !2567
  br i1 %218, label %219, label %220, !dbg !2568

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2569
  tail call void @halide_thread_yield() #7, !dbg !2571
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2572
  br label %221, !dbg !2573

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2574
  br label %221

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ], !dbg !2388
  call void @llvm.dbg.value(metadata i32 %222, metadata !2363, metadata !DIExpression()), !dbg !2388
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2576, !tbaa !2552
  %224 = add nsw i32 %223, -1, !dbg !2576
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2576, !tbaa !2552
  br label %402

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !dbg !2577, !tbaa !2502
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2366, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %227, metadata !2368, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2363, metadata !DIExpression()), !dbg !2388
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8, !dbg !2578
  %230 = load i32, i32* %229, align 8, !dbg !2579, !tbaa !2410
  %231 = add nsw i32 %230, 1, !dbg !2579
  store i32 %231, i32* %229, align 8, !dbg !2579, !tbaa !2410
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5, !dbg !2580
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2580, !tbaa !2441
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null, !dbg !2582
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2583
  %236 = load i32, i32* %235, align 4, !dbg !2583, !tbaa !2463
  br i1 %234, label %237, label %240, !dbg !2584

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2585, !tbaa !2479
  %239 = add nsw i32 %238, %236, !dbg !2585
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2585, !tbaa !2479
  br label %244, !dbg !2587

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6, !dbg !2588
  %242 = load i32, i32* %241, align 8, !dbg !2590, !tbaa !2468
  %243 = add nsw i32 %242, %236, !dbg !2590
  store i32 %243, i32* %241, align 8, !dbg !2590, !tbaa !2468
  br label %244

244:                                              ; preds = %240, %237
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()), !dbg !2413
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8, !dbg !2591
  %246 = load i8, i8* %245, align 8, !dbg !2591, !tbaa !2486, !range !737
  %247 = icmp eq i8 %246, 0, !dbg !2591
  br i1 %247, label %323, label %248, !dbg !2592

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2593
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2593, !tbaa !2432
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2594, !tbaa !1042
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 1, metadata !2380, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()), !dbg !2413
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %259 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  br label %260, !dbg !2597

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2377, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %261, metadata !2380, metadata !DIExpression()), !dbg !2596
  %263 = load i32, i32* %251, align 8, !dbg !2598, !tbaa !2400
  %264 = sub nsw i32 %263, %262, !dbg !2600
  %265 = icmp sgt i32 %264, %261, !dbg !2601
  br i1 %265, label %266, label %297, !dbg !2602

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !dbg !2603, !tbaa !2502
  %268 = load i32, i32* %253, align 8, !dbg !2605, !tbaa !2504
  br label %269, !dbg !2606

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ], !dbg !2605
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ], !dbg !2603
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  call void @llvm.dbg.value(metadata i32 %273, metadata !2380, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2492, metadata !DIExpression()) #8, !dbg !2607
  %274 = icmp slt i32 %272, %271, !dbg !2608
  br i1 %274, label %275, label %291, !dbg !2609

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !dbg !2610, !tbaa !2510
  %278 = sext i32 %276 to i64, !dbg !2611
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0, !dbg !2612
  %280 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %279, align 8, !dbg !2612, !tbaa !2513
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1, !dbg !2613
  %282 = load i32, i32* %281, align 8, !dbg !2613, !tbaa !2516
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %280, i32 %282) #7, !dbg !2614
  br i1 %283, label %284, label %297, !dbg !2615

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !dbg !2616, !tbaa !2502
  %286 = add nsw i32 %285, 1, !dbg !2616
  store i32 %286, i32* %252, align 8, !dbg !2616, !tbaa !2502
  %287 = load i32, i32* %253, align 8, !dbg !2605, !tbaa !2504
  %288 = icmp slt i32 %286, %287, !dbg !2608
  br i1 %288, label %275, label %289, !dbg !2609, !llvm.loop !2617

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !dbg !2598, !tbaa !2400
  br label %291, !dbg !2619

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ], !dbg !2598
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !dbg !2619, !tbaa !2502
  %294 = add nuw nsw i32 %273, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %294, metadata !2380, metadata !DIExpression()), !dbg !2596
  %295 = sub nsw i32 %292, %262, !dbg !2600
  %296 = icmp sgt i32 %295, %294, !dbg !2601
  br i1 %296, label %269, label %300, !dbg !2602, !llvm.loop !2622

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0, !dbg !2624
  br i1 %299, label %310, label %300, !dbg !2626

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %255, align 8, !dbg !2627, !tbaa !2628
  %303 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %256, align 8, !dbg !2629, !tbaa !2630
  %304 = load i32, i32* %257, align 4, !dbg !2631, !tbaa !2632
  %305 = add nsw i32 %304, %262, !dbg !2633
  %306 = load i8*, i8** %258, align 8, !dbg !2634, !tbaa !2635
  %307 = tail call i32 @halide_do_loop_task(i8* %302, i32 (i8*, i32, i32, i8*, i8*)* %303, i32 %305, i32 %301, i8* %306, i8* nonnull %259) #6, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %307, metadata !2376, metadata !DIExpression()), !dbg !2413
  %308 = add nuw nsw i32 %301, %262, !dbg !2637
  call void @llvm.dbg.value(metadata i32 0, metadata !2380, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %308, metadata !2377, metadata !DIExpression()), !dbg !2596
  %309 = icmp eq i32 %307, 0, !dbg !2638
  br i1 %309, label %260, label %310, !dbg !2597, !llvm.loop !2639

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ], !dbg !2413
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ], !dbg !2596
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2641
  %314 = load i32, i32* %257, align 4, !dbg !2642, !tbaa !2632
  %315 = add nsw i32 %314, %313, !dbg !2642
  store i32 %315, i32* %257, align 4, !dbg !2642, !tbaa !2632
  %316 = load i32, i32* %251, align 8, !dbg !2643, !tbaa !2400
  %317 = sub nsw i32 %316, %313, !dbg !2643
  store i32 %317, i32* %251, align 8, !dbg !2643, !tbaa !2400
  br i1 %311, label %319, label %318, !dbg !2644

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !dbg !2645, !tbaa !2400
  call void @llvm.dbg.value(metadata i32 %350, metadata !2376, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 0, metadata !2383, metadata !DIExpression()), !dbg !2413
  br label %352, !dbg !2648

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0, !dbg !2649
  br i1 %320, label %321, label %382, !dbg !2651

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2652, !tbaa !2412
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2654, !tbaa !2432
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2655, !tbaa !2412
  br label %382, !dbg !2656

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0, !dbg !2657
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !dbg !2657, !tbaa.struct !2658
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %325, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2660
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1, !dbg !2657
  %327 = load i8*, i8** %326, align 8, !dbg !2657, !tbaa.struct !2661
  call void @llvm.dbg.value(metadata i8* %327, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2660
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5, !dbg !2657
  %329 = load i32, i32* %328, align 4, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %329, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2660
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1, !dbg !2657
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !dbg !2657, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %331, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !2660
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7, !dbg !2657
  %333 = load i8*, i8** %332, align 8, !dbg !2657, !tbaa.struct !2663
  call void @llvm.dbg.value(metadata i8* %333, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !2660
  %334 = add nsw i32 %329, 1, !dbg !2664
  store i32 %334, i32* %328, align 4, !dbg !2664, !tbaa !2632
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2665
  %336 = load i32, i32* %335, align 8, !dbg !2666, !tbaa !2400
  %337 = add nsw i32 %336, -1, !dbg !2666
  store i32 %337, i32* %335, align 8, !dbg !2666, !tbaa !2400
  %338 = icmp eq i32 %337, 0, !dbg !2667
  br i1 %338, label %339, label %342, !dbg !2669

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2670
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !dbg !2670, !tbaa !2432
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2672, !tbaa !1042
  br label %342, !dbg !2673

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2674
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null, !dbg !2675
  br i1 %343, label %346, label %344, !dbg !2677

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #6, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %345, metadata !2376, metadata !DIExpression()), !dbg !2413
  br label %349, !dbg !2680

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*, !dbg !2681
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #6, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %348, metadata !2376, metadata !DIExpression()), !dbg !2413
  br label %349

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ], !dbg !2684
  call void @llvm.dbg.value(metadata i32 %350, metadata !2376, metadata !DIExpression()), !dbg !2413
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2685
  call void @llvm.dbg.value(metadata i8 0, metadata !2383, metadata !DIExpression()), !dbg !2413
  %351 = icmp eq i32 %350, 0, !dbg !2686
  br i1 %351, label %382, label %352, !dbg !2648

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2687
  store i32 %353, i32* %354, align 4, !dbg !2688, !tbaa !2418
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 0, metadata !2383, metadata !DIExpression()), !dbg !2413
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4, !dbg !2690
  %356 = load i32, i32* %355, align 8, !dbg !2690, !tbaa !2692
  %357 = icmp sgt i32 %356, 0, !dbg !2693
  br i1 %357, label %358, label %382, !dbg !2694

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !2525
  %361 = zext i32 %356 to i64, !dbg !2693
  br label %362, !dbg !2694

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !2384, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8 %364, metadata !2383, metadata !DIExpression()), !dbg !2413
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9, !dbg !2695
  %366 = load i32, i32* %365, align 4, !dbg !2695, !tbaa !2418
  %367 = icmp eq i32 %366, 0, !dbg !2698
  br i1 %367, label %368, label %378, !dbg !2699

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !dbg !2700, !tbaa !2418
  %369 = load i32, i32* %229, align 8, !dbg !2702, !tbaa !2410
  %370 = icmp eq i32 %369, 0, !dbg !2703
  br i1 %370, label %371, label %374, !dbg !2704

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11, !dbg !2705
  %373 = load i8, i8* %372, align 4, !dbg !2705, !tbaa !2546, !range !737
  br label %374

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ], !dbg !2706
  %376 = and i8 %364, 1, !dbg !2707
  %377 = or i8 %375, %376, !dbg !2707
  call void @llvm.dbg.value(metadata i8 %377, metadata !2383, metadata !DIExpression()), !dbg !2413
  br label %378, !dbg !2708

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ], !dbg !2413
  call void @llvm.dbg.value(metadata i8 %379, metadata !2383, metadata !DIExpression()), !dbg !2413
  %380 = add nuw nsw i64 %363, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %380, metadata !2384, metadata !DIExpression()), !dbg !2689
  %381 = icmp eq i64 %380, %361, !dbg !2693
  br i1 %381, label %382, label %362, !dbg !2694, !llvm.loop !2710

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ], !dbg !2712
  call void @llvm.dbg.value(metadata i8 %383, metadata !2383, metadata !DIExpression()), !dbg !2413
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2713, !tbaa !2441
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null, !dbg !2715
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2716
  %387 = load i32, i32* %386, align 4, !dbg !2716, !tbaa !2463
  br i1 %385, label %388, label %391, !dbg !2717

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2718, !tbaa !2479
  %390 = sub nsw i32 %389, %387, !dbg !2718
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2718, !tbaa !2479
  br label %395, !dbg !2720

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6, !dbg !2721
  %393 = load i32, i32* %392, align 8, !dbg !2723, !tbaa !2468
  %394 = sub nsw i32 %393, %387, !dbg !2723
  store i32 %394, i32* %392, align 8, !dbg !2723, !tbaa !2468
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !dbg !2724, !tbaa !2410
  %397 = add nsw i32 %396, -1, !dbg !2724
  store i32 %397, i32* %229, align 8, !dbg !2724, !tbaa !2410
  %398 = and i8 %383, 1, !dbg !2725
  %399 = icmp eq i8 %398, 0, !dbg !2725
  br i1 %399, label %400, label %416, !dbg !2727

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0, !dbg !2728
  br i1 %401, label %404, label %402, !dbg !2729

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !dbg !2388, !llvm.loop !2730

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2732
  %406 = load i32, i32* %405, align 8, !dbg !2732, !tbaa !2400
  %407 = icmp eq i32 %406, 0, !dbg !2733
  br i1 %407, label %412, label %408, !dbg !2734

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2735
  %410 = load i32, i32* %409, align 4, !dbg !2735, !tbaa !2418
  %411 = icmp eq i32 %410, 0, !dbg !2736
  br i1 %411, label %402, label %412, !dbg !2737

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11, !dbg !2738
  %414 = load i8, i8* %413, align 4, !dbg !2738, !tbaa !2546, !range !737
  %415 = icmp eq i8 %414, 0, !dbg !2738
  br i1 %415, label %402, label %416, !dbg !2739

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !2740
  br label %402, !dbg !2742

417:                                              ; preds = %15, %18
  ret void, !dbg !2743
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #2 !dbg !2744 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2746, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2747, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %2, metadata !2748, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %3, metadata !2749, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %4, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %5, metadata !2751, metadata !DIExpression()), !dbg !2752
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !2753, !tbaa !1042
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !2753
  ret i32 %8, !dbg !2754
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #2 !dbg !2755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2758, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %2, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %3, metadata !2760, metadata !DIExpression()), !dbg !2761
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !2762, !tbaa !1042
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #7, !dbg !2763
  ret i32 %6, !dbg !2764
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal13worker_threadEPv(i8* %0) #2 !dbg !2765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()), !dbg !2768
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2769
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2770
  tail call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* %2) #6, !dbg !2771
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !2772
  ret void, !dbg !2773
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #2 !dbg !2774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2779, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2780, metadata !DIExpression()), !dbg !2791
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2792, !tbaa !2794, !range !737
  %5 = icmp eq i8 %4, 0, !dbg !2792
  br i1 %5, label %6, label %25, !dbg !2795

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2796, metadata !DIExpression()) #8, !dbg !2802
  %8 = load i8, i8* %7, align 1, !dbg !2805, !tbaa !494
  %9 = icmp eq i8 %8, 0, !dbg !2806
  br i1 %9, label %10, label %13, !dbg !2807

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %11, metadata !2796, metadata !DIExpression()) #8, !dbg !2802
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2810
  br i1 %12, label %13, label %6, !dbg !2811, !llvm.loop !2812

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2802
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 1) to i8*), !dbg !2814
  br i1 %15, label %17, label %16, !dbg !2817

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !2818
  tail call void @abort() #7, !dbg !2818
  br label %17, !dbg !2818

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2820, !tbaa !2822
  %19 = icmp eq i32 %18, 0, !dbg !2823
  br i1 %19, label %20, label %22, !dbg !2824

20:                                               ; preds = %17
  %21 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !2825
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2827, !tbaa !2822
  br label %22, !dbg !2828

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2829
  %24 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %23) #6, !dbg !2830
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2831, !tbaa !2822
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !2832, !tbaa !2794
  br label %25, !dbg !2833

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2781, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 -1, metadata !2782, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 0, metadata !2783, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 0, metadata !2784, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 0, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2786, metadata !DIExpression()), !dbg !2834
  %26 = icmp sgt i32 %0, 0, !dbg !2835
  br i1 %26, label %27, label %31, !dbg !2837

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64, !dbg !2835
  br label %38, !dbg !2837

29:                                               ; preds = %64
  %30 = and i8 %49, 1, !dbg !2838
  br label %31, !dbg !2838

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ], !dbg !2791
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ], !dbg !2791
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ], !dbg !2840
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ], !dbg !2841
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2838
  br i1 %37, label %68, label %100, !dbg !2842

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !2781, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %39, metadata !2786, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 %41, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %42, metadata !2784, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %43, metadata !2783, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %44, metadata !2782, metadata !DIExpression()), !dbg !2791
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7, !dbg !2843
  %46 = load i32, i32* %45, align 4, !dbg !2843, !tbaa !2463
  %47 = icmp eq i32 %46, 0, !dbg !2846
  %48 = add i32 %46, %40, !dbg !2847
  %49 = select i1 %47, i8 1, i8 %43, !dbg !2847
  %50 = select i1 %47, i8 %41, i8 1, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %48, metadata !2781, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %50, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %49, metadata !2783, metadata !DIExpression()), !dbg !2791
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4, !dbg !2848
  %52 = load i32, i32* %51, align 8, !dbg !2848, !tbaa !2504
  %53 = icmp eq i32 %52, 0, !dbg !2850
  %54 = select i1 %53, i8 %42, i8 1, !dbg !2851
  call void @llvm.dbg.value(metadata i8 %54, metadata !2784, metadata !DIExpression()), !dbg !2791
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8, !dbg !2852
  %56 = load i8, i8* %55, align 8, !dbg !2852, !tbaa !2486, !range !737
  %57 = icmp eq i8 %56, 0, !dbg !2852
  br i1 %57, label %60, label %58, !dbg !2854

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %59, metadata !2782, metadata !DIExpression()), !dbg !2791
  br label %64, !dbg !2857

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6, !dbg !2858
  %62 = load i32, i32* %61, align 8, !dbg !2858, !tbaa !2400
  %63 = add nsw i32 %62, %44, !dbg !2860
  call void @llvm.dbg.value(metadata i32 %63, metadata !2782, metadata !DIExpression()), !dbg !2791
  br label %64

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ], !dbg !2861
  call void @llvm.dbg.value(metadata i32 %65, metadata !2782, metadata !DIExpression()), !dbg !2791
  %66 = add nuw nsw i64 %39, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %48, metadata !2781, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %66, metadata !2786, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 %50, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %54, metadata !2784, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8 %49, metadata !2783, metadata !DIExpression()), !dbg !2791
  %67 = icmp eq i64 %66, %28, !dbg !2835
  br i1 %67, label %29, label %38, !dbg !2837, !llvm.loop !2863

68:                                               ; preds = %31
  %69 = or i8 %35, %34, !dbg !2865
  %70 = and i8 %69, 1, !dbg !2865
  %71 = icmp eq i8 %70, 0, !dbg !2865
  %72 = xor i1 %71, true, !dbg !2865
  %73 = zext i1 %72 to i32, !dbg !2865
  %74 = add nsw i32 %36, %73, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %74, metadata !2781, metadata !DIExpression()), !dbg !2791
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2868, !tbaa !2476
  %76 = icmp slt i32 %75, 256, !dbg !2869
  br i1 %76, label %77, label %96, !dbg !2870

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !2871, !tbaa !2822
  %80 = add nsw i32 %79, -1, !dbg !2872
  %81 = icmp slt i32 %78, %80, !dbg !2873
  br i1 %81, label %87, label %82, !dbg !2874

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1, !dbg !2875
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2876, !tbaa !2479
  %85 = sub i32 %83, %84, !dbg !2877
  %86 = icmp slt i32 %85, %74, !dbg !2878
  br i1 %86, label %87, label %96, !dbg !2879

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2880, !tbaa !2555
  %89 = add nsw i32 %88, 1, !dbg !2880
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2880, !tbaa !2555
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @_ZN6Halide7Runtime8Internal13worker_threadEPv, i8* null) #6, !dbg !2882
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2883, !tbaa !2476
  %92 = add nsw i32 %91, 1, !dbg !2883
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2883, !tbaa !2476
  %93 = sext i32 %91 to i64, !dbg !2884
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %93, !dbg !2884
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !dbg !2885, !tbaa !1042
  %95 = icmp slt i32 %91, 255, !dbg !2869
  br i1 %95, label %77, label %96, !dbg !2870, !llvm.loop !2886

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97, !dbg !2888

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2890, !tbaa !2479
  %99 = add nsw i32 %98, 1, !dbg !2890
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2890, !tbaa !2479
  br label %118, !dbg !2892

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7, !dbg !2893
  %102 = load i32, i32* %101, align 4, !dbg !2893, !tbaa !2463
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8, !dbg !2893
  %104 = load i32, i32* %103, align 8, !dbg !2893, !tbaa !2410
  %105 = mul nsw i32 %104, %102, !dbg !2893
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2893
  %107 = load i32, i32* %106, align 8, !dbg !2893, !tbaa !2468
  %108 = sub nsw i32 %105, %107, !dbg !2893
  %109 = icmp sgt i32 %36, %108, !dbg !2893
  br i1 %109, label %110, label %111, !dbg !2897

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !2898
  tail call void @abort() #7, !dbg !2898
  br label %111, !dbg !2898

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34, !dbg !2900
  %113 = and i8 %112, 1, !dbg !2900
  %114 = icmp eq i8 %113, 0, !dbg !2900
  br i1 %114, label %118, label %115, !dbg !2900

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !dbg !2902, !tbaa !2468
  %117 = add nsw i32 %116, 1, !dbg !2902
  store i32 %117, i32* %106, align 8, !dbg !2902, !tbaa !2468
  br label %118, !dbg !2904

118:                                              ; preds = %111, %96, %115, %97
  call void @llvm.dbg.value(metadata i32 %0, metadata !2788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2905
  br i1 %26, label %119, label %123, !dbg !2906

119:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %0, metadata !2788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2905
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !tbaa !2412
  %121 = zext i32 %0 to i64, !dbg !2906
  br label %136, !dbg !2906

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 3), align 8, !dbg !2907, !tbaa !2412
  br label %123, !dbg !2906

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 12), align 4, !dbg !2910, !tbaa !2544
  %125 = icmp ne i32 %124, 0, !dbg !2911
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 11), align 8, !dbg !2912
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !2912
  %128 = icmp slt i32 %126, %127, !dbg !2912
  %129 = or i1 %125, %128, !dbg !2912
  call void @llvm.dbg.value(metadata i1 %129, metadata !2790, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2791
  %130 = icmp sgt i32 %32, %126
  %131 = or i1 %130, %129, !dbg !2913
  %132 = select i1 %131, i32 %127, i32 %32, !dbg !2913
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2915, !tbaa !2557
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #6, !dbg !2916
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 6), align 8, !dbg !2917, !tbaa !2557
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 5), align 4, !dbg !2919, !tbaa !2555
  %135 = icmp sgt i32 %133, %134, !dbg !2920
  br i1 %135, label %146, label %149, !dbg !2921

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ], !dbg !2922
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ], !dbg !2922
  %139 = add nsw i64 %137, -1, !dbg !2905
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, !dbg !2923
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2, !dbg !2924
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !dbg !2925, !tbaa !2432
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3, !dbg !2926
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !dbg !2927, !tbaa !2525
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4, !dbg !2928
  store i32 %0, i32* %143, align 8, !dbg !2929, !tbaa !2692
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6, !dbg !2930
  store i32 0, i32* %144, align 8, !dbg !2931, !tbaa !2468
  call void @llvm.dbg.value(metadata i64 %139, metadata !2788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2905
  %145 = icmp sgt i64 %137, 1, !dbg !2932
  br i1 %145, label %136, label %122, !dbg !2906, !llvm.loop !2933

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #6, !dbg !2935
  %147 = icmp eq i8 %33, 0, !dbg !2937
  br i1 %147, label %149, label %148, !dbg !2939

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !2940
  br label %149, !dbg !2942

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34, !dbg !2943
  %151 = and i8 %150, 1, !dbg !2943
  %152 = icmp eq i8 %151, 0, !dbg !2943
  br i1 %152, label %161, label %153, !dbg !2943

153:                                              ; preds = %149
  br i1 %37, label %158, label %154, !dbg !2945

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2947
  %156 = load i32, i32* %155, align 8, !dbg !2950, !tbaa !2468
  %157 = add nsw i32 %156, -1, !dbg !2950
  store i32 %157, i32* %155, align 8, !dbg !2950, !tbaa !2468
  br label %161, !dbg !2951

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2952, !tbaa !2479
  %160 = add nsw i32 %159, -1, !dbg !2952
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 16), align 4, !dbg !2952, !tbaa !2479
  br label %161

161:                                              ; preds = %149, %154, %158
  ret void, !dbg !2954
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #2 !dbg !2955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2957, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %2, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %3, metadata !2960, metadata !DIExpression()), !dbg !2961
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #7, !dbg !2962
  ret i32 %5, !dbg !2963
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #2 !dbg !2964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2967, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %2, metadata !2968, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 %3, metadata !2969, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %4, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %5, metadata !2971, metadata !DIExpression()), !dbg !2972
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #7, !dbg !2973
  ret i32 %7, !dbg !2974
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #2 !dbg !2975 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2977, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2978, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %2, metadata !2979, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %3, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %4, metadata !2981, metadata !DIExpression()), !dbg !2983
  %7 = icmp slt i32 %3, 1, !dbg !2984
  br i1 %7, label %29, label %8, !dbg !2986

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #8, !dbg !2987
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2982, metadata !DIExpression()), !dbg !2988
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0, !dbg !2989
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !dbg !2990, !tbaa !2630
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5, !dbg !2991
  store i32 %2, i32* %11, align 4, !dbg !2992, !tbaa !2632
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6, !dbg !2993
  store i32 %3, i32* %12, align 8, !dbg !2994, !tbaa !2400
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8, !dbg !2995
  store i8 0, i8* %13, align 8, !dbg !2996, !tbaa !2486
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3, !dbg !2997
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !dbg !2998, !tbaa !2510
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4, !dbg !2999
  store i32 0, i32* %15, align 8, !dbg !3000, !tbaa !2504
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1, !dbg !3001
  store i8* %4, i8** %16, align 8, !dbg !3002, !tbaa !2635
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7, !dbg !3003
  store i32 0, i32* %17, align 4, !dbg !3004, !tbaa !2463
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2, !dbg !3005
  store i8* null, i8** %18, align 8, !dbg !3006, !tbaa !3007
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1, !dbg !3008
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !dbg !3009, !tbaa !3010
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7, !dbg !3011
  store i8* %0, i8** %20, align 8, !dbg !3012, !tbaa !2628
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9, !dbg !3013
  store i32 0, i32* %21, align 4, !dbg !3014, !tbaa !2418
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8, !dbg !3015
  store i32 0, i32* %22, align 8, !dbg !3016, !tbaa !2410
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10, !dbg !3017
  store i32 0, i32* %23, align 8, !dbg !3018, !tbaa !2502
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11, !dbg !3019
  store i8 0, i8* %24, align 4, !dbg !3020, !tbaa !2546
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3, !dbg !3021
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !dbg !3022, !tbaa !2525
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4, !dbg !3023
  store i32 0, i32* %26, align 8, !dbg !3024, !tbaa !2692
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5, !dbg !3025
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !dbg !3026, !tbaa !2441
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3027
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #6, !dbg !3028
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #6, !dbg !3029
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3030
  %28 = load i32, i32* %21, align 4, !dbg !3031, !tbaa !2418
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #8, !dbg !3032
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2983
  ret i32 %30, !dbg !3032
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #2 !dbg !3033 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %1, metadata !3036, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3037, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %3, metadata !3038, metadata !DIExpression()), !dbg !3045
  %5 = sext i32 %1 to i64, !dbg !3046
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8, !dbg !3047
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !3039, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %1, metadata !3036, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3037, metadata !DIExpression()), !dbg !3045
  %7 = icmp sgt i32 %1, 0, !dbg !3049
  br i1 %7, label %11, label %8, !dbg !3051

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %35, %33 ]
  %10 = icmp eq i32 %9, 0, !dbg !3052
  br i1 %10, label %56, label %39, !dbg !3054

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi i32 [ %35, %33 ], [ %1, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %34, %33 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !3040, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 %13, metadata !3036, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %14, metadata !3037, metadata !DIExpression()), !dbg !3045
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 0, i32 6, !dbg !3055
  %16 = load i32, i32* %15, align 8, !dbg !3055, !tbaa !3058
  %17 = icmp slt i32 %16, 1, !dbg !3059
  br i1 %17, label %18, label %20, !dbg !3060

18:                                               ; preds = %11
  %19 = add nsw i32 %13, -1, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %19, metadata !3036, metadata !DIExpression()), !dbg !3045
  br label %33, !dbg !3063

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i64 1, !dbg !3064
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %21, metadata !3037, metadata !DIExpression()), !dbg !3045
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, !dbg !3065
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*, !dbg !3066
  %24 = bitcast %struct.halide_parallel_task_t* %14 to i8*, !dbg !3066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !dbg !3066, !tbaa.struct !3067
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1, !dbg !3068
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !dbg !3069, !tbaa !3010
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7, !dbg !3070
  store i8* %0, i8** %26, align 8, !dbg !3071, !tbaa !2628
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9, !dbg !3072
  store i32 0, i32* %27, align 4, !dbg !3073, !tbaa !2418
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8, !dbg !3074
  store i32 0, i32* %28, align 8, !dbg !3075, !tbaa !2410
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10, !dbg !3076
  store i32 0, i32* %29, align 8, !dbg !3077, !tbaa !2502
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11, !dbg !3078
  store i8 0, i8* %30, align 4, !dbg !3079, !tbaa !2546
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5, !dbg !3080
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**, !dbg !3081
  store i8* %3, i8** %32, align 8, !dbg !3081, !tbaa !2441
  br label %33, !dbg !3082

33:                                               ; preds = %20, %18
  %34 = phi %struct.halide_parallel_task_t* [ %14, %18 ], [ %21, %20 ]
  %35 = phi i32 [ %19, %18 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !3036, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %34, metadata !3037, metadata !DIExpression()), !dbg !3045
  %36 = add nuw nsw i64 %12, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %36, metadata !3040, metadata !DIExpression()), !dbg !3048
  %37 = sext i32 %35 to i64, !dbg !3049
  %38 = icmp slt i64 %36, %37, !dbg !3049
  br i1 %38, label %11, label %8, !dbg !3051, !llvm.loop !3084

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3086
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !3087
  call void @_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #6, !dbg !3088
  call void @llvm.dbg.value(metadata i32 0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !3043, metadata !DIExpression()), !dbg !3089
  %41 = icmp sgt i32 %9, 0, !dbg !3090
  br i1 %41, label %42, label %44, !dbg !3092

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64, !dbg !3090
  br label %46, !dbg !3092

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ], !dbg !3045
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3093
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !3043, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %48, metadata !3042, metadata !DIExpression()), !dbg !3045
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, !dbg !3094
  call void @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #6, !dbg !3096
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9, !dbg !3097
  %51 = load i32, i32* %50, align 4, !dbg !3097, !tbaa !2418
  %52 = icmp eq i32 %51, 0, !dbg !3099
  %53 = select i1 %52, i32 %48, i32 %51, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %53, metadata !3042, metadata !DIExpression()), !dbg !3045
  %54 = add nuw nsw i64 %47, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %54, metadata !3043, metadata !DIExpression()), !dbg !3089
  %55 = icmp eq i64 %54, %43, !dbg !3090
  br i1 %55, label %44, label %46, !dbg !3092, !llvm.loop !3102

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ], !dbg !3045
  ret i32 %57, !dbg !3104
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !3105 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3107, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %1, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3111
  call void @llvm.dbg.value(metadata i32* %3, metadata !3112, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32* undef, metadata !3117, metadata !DIExpression()), !dbg !3120
  store atomic i32 %1, i32* %3 release, align 4, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3108, metadata !DIExpression()), !dbg !3110
  ret i32 %1, !dbg !3123
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3124 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3126, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %1, metadata !3127, metadata !DIExpression()), !dbg !3131
  %3 = icmp eq i32 %1, 0, !dbg !3132
  br i1 %3, label %20, label %4, !dbg !3134

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3128, metadata !DIExpression()), !dbg !3131
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3135
  call void @llvm.dbg.value(metadata i32* %5, metadata !3136, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i32* undef, metadata !3139, metadata !DIExpression()), !dbg !3140
  %6 = load atomic i32, i32* %5 acquire, align 4, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %6, metadata !3129, metadata !DIExpression()), !dbg !3131
  %7 = sub nsw i32 %6, %1, !dbg !3143
  call void @llvm.dbg.value(metadata i32 %7, metadata !3130, metadata !DIExpression()), !dbg !3131
  %8 = icmp sgt i32 %7, -1, !dbg !3145
  br i1 %8, label %9, label %20, !dbg !3146

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3129, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i32* %5, metadata !3147, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32* undef, metadata !3152, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32* undef, metadata !3153, metadata !DIExpression()), !dbg !3154
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic, !dbg !3156
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !3156
  br i1 %13, label %18, label %14, !dbg !3156

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0, !dbg !3156
  call void @llvm.dbg.value(metadata i32 %15, metadata !3129, metadata !DIExpression()), !dbg !3131
  %16 = sub nsw i32 %15, %1, !dbg !3143
  call void @llvm.dbg.value(metadata i32 %16, metadata !3130, metadata !DIExpression()), !dbg !3131
  %17 = icmp sgt i32 %16, -1, !dbg !3145
  br i1 %17, label %9, label %18, !dbg !3146

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1, !dbg !3156
  br label %20, !dbg !3157

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ], !dbg !3131
  ret i1 %21, !dbg !3157
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #2 !dbg !3158 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3160, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 %1, metadata !3161, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3162, metadata !DIExpression()), !dbg !3164
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !3165
  call void @llvm.dbg.value(metadata i32* %3, metadata !3166, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 %1, metadata !3171, metadata !DIExpression()), !dbg !3172
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %4, metadata !3163, metadata !DIExpression()), !dbg !3164
  %5 = icmp eq i32 %4, 0, !dbg !3175
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5, !dbg !3177
  br i1 %7, label %8, label %9, !dbg !3177

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3178
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #6, !dbg !3180
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !3181
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3182
  br label %9, !dbg !3183

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !3184
  ret i32 %10, !dbg !3185
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #2 !dbg !3186 {
  tail call void @halide_shutdown_thread_pool() #6, !dbg !3187
  ret void, !dbg !3188
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #2 !dbg !3189 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 15), align 1, !dbg !3195, !tbaa !2794, !range !737
  %2 = icmp eq i8 %1, 0, !dbg !3195
  br i1 %2, label %16, label %3, !dbg !3196

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3197
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 14), align 8, !dbg !3198, !tbaa !2406
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 10)) #6, !dbg !3199
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 8)) #6, !dbg !3200
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 9)) #6, !dbg !3201
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3202
  call void @llvm.dbg.value(metadata i32 0, metadata !3191, metadata !DIExpression()), !dbg !3203
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3204, !tbaa !2476
  %5 = icmp sgt i32 %4, 0, !dbg !3206
  br i1 %5, label %8, label %6, !dbg !3207

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3208, metadata !DIExpression()) #8, !dbg !3214
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), metadata !3211, metadata !DIExpression()) #8, !dbg !3214
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, metadata !3212, metadata !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value)) #8, !dbg !3214
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 2) to i8*), i32 0, i64 2116) #7, !dbg !3216
  br label %16, !dbg !3217

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3191, metadata !DIExpression()), !dbg !3203
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 13, i64 %9, !dbg !3218
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !dbg !3218, !tbaa !1042
  tail call void @halide_join_thread(%struct.halide_thread* %11) #6, !dbg !3220
  %12 = add nuw nsw i64 %9, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %12, metadata !3191, metadata !DIExpression()), !dbg !3203
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 4), align 8, !dbg !3204, !tbaa !2476
  %14 = sext i32 %13 to i64, !dbg !3206
  %15 = icmp slt i64 %12, %14, !dbg !3206
  br i1 %15, label %8, label %6, !dbg !3207, !llvm.loop !3222

16:                                               ; preds = %6, %0
  ret void, !dbg !3224
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #2 !dbg !3225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3227, metadata !DIExpression()), !dbg !3229
  %2 = icmp slt i32 %0, 0, !dbg !3230
  br i1 %2, label %3, label %4, !dbg !3232

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !3233
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3235
  br label %8, !dbg !3236

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3235
  %5 = icmp eq i32 %0, 0, !dbg !3237
  br i1 %5, label %6, label %8, !dbg !3236

6:                                                ; preds = %4
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv() #6, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %7, metadata !3227, metadata !DIExpression()), !dbg !3229
  br label %8, !dbg !3241

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3227, metadata !DIExpression()), !dbg !3229
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3242, !tbaa !2822
  call void @llvm.dbg.value(metadata i32 %10, metadata !3228, metadata !DIExpression()), !dbg !3229
  %11 = tail call i32 @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(i32 %9) #6, !dbg !3243
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 1), align 8, !dbg !3244, !tbaa !2822
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @_ZN6Halide7Runtime8Internal10work_queueE, i64 0, i32 0)) #6, !dbg !3245
  ret i32 %10, !dbg !3246
}

declare !dbg !3247 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3248 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !3252, metadata !DIExpression()), !dbg !3254
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3255, !tbaa !1042
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !3253, metadata !DIExpression()), !dbg !3254
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3256, !tbaa !1042
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !3257
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #0 !dbg !3258 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3265, !tbaa !1042
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3263, metadata !DIExpression()), !dbg !3264
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3266, !tbaa !1042
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !3267
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #0 !dbg !3268 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3275, !tbaa !1042
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3276, !tbaa !1042
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !3277
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #0 !dbg !3278 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !3282, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !3283, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !3284, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !3285, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !3286, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !3288, metadata !DIExpression()), !dbg !3289
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3290, !tbaa !1042
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @_ZN6Halide7Runtime8Internal14custom_do_taskE, align 8, !dbg !3291, !tbaa !1042
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @_ZN6Halide7Runtime8Internal19custom_do_loop_taskE, align 8, !dbg !3292, !tbaa !1042
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3293, !tbaa !1042
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3294, !tbaa !1042
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3295, !tbaa !1042
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3296, !tbaa !1042
  ret void, !dbg !3297
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #2 !dbg !3298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !3301, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %2, metadata !3302, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 %3, metadata !3303, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %4, metadata !3304, metadata !DIExpression()), !dbg !3305
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @_ZN6Halide7Runtime8Internal17custom_do_par_forE, align 8, !dbg !3306, !tbaa !1042
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #7, !dbg !3307
  ret i32 %7, !dbg !3308
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #2 !dbg !3309 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 %1, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %3, metadata !3314, metadata !DIExpression()), !dbg !3315
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @_ZN6Halide7Runtime8Internal24custom_do_parallel_tasksE, align 8, !dbg !3316, !tbaa !1042
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #7, !dbg !3316
  ret i32 %6, !dbg !3317
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3318 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %1, metadata !3321, metadata !DIExpression()), !dbg !3322
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal21custom_semaphore_initE, align 8, !dbg !3323, !tbaa !1042
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3323
  ret i32 %4, !dbg !3324
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3325 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %1, metadata !3328, metadata !DIExpression()), !dbg !3329
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal24custom_semaphore_releaseE, align 8, !dbg !3330, !tbaa !1042
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3330
  ret i32 %4, !dbg !3331
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #2 !dbg !3332 {
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %1, metadata !3335, metadata !DIExpression()), !dbg !3336
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @_ZN6Halide7Runtime8Internal28custom_semaphore_try_acquireE, align 8, !dbg !3337, !tbaa !1042
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #7, !dbg !3337
  ret i1 %4, !dbg !3338
}

declare !dbg !3339 dso_local void @qurt_mutex_init(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3343 dso_local void @qurt_cond_init(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3347 dso_local void @qurt_mutex_lock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3348 dso_local void @qurt_cond_wait(%union.qurt_cond_t*, %union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3351 dso_local void @qurt_mutex_unlock(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3352 dso_local void @qurt_cond_destroy(%union.qurt_cond_t*) local_unnamed_addr #4

declare !dbg !3353 dso_local void @qurt_mutex_destroy(%union.qurt_mutex_aligned8*) local_unnamed_addr #4

declare !dbg !3354 dso_local void @qurt_cond_signal(%union.qurt_cond_t*) local_unnamed_addr #4

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
!310 = !{!0, !311, !314, !316, !321, !323, !361, !367, !373, !379, !386, !392, !398}
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
!401 = !{!402, !403, !405}
!402 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !34, file: !27, line: 225)
!403 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !404, file: !8, line: 7)
!404 = !DINamespace(name: "Qurt", scope: !34)
!405 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !2, entity: !34, file: !250, line: 579)
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
!428 = !DILocation(line: 45, column: 43, scope: !416)
!429 = !DILocation(line: 45, column: 41, scope: !416)
!430 = !{!431, !431, i64 0}
!431 = !{!"short", !432, i64 0}
!432 = !{!"omnipotent char", !433, i64 0}
!433 = !{!"Simple C++ TBAA"}
!434 = !DILocation(line: 46, column: 1, scope: !416)
!435 = distinct !DISubprogram(name: "halide_get_default_thread_priority", scope: !8, file: !8, line: 48, type: !436, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{!406}
!438 = !DILocation(line: 49, column: 12, scope: !435)
!439 = !DILocation(line: 49, column: 5, scope: !435)
!440 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !8, file: !8, line: 52, type: !441, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!25, !12, !15}
!443 = !{!444, !445, !446, !447, !448}
!444 = !DILocalVariable(name: "f", arg: 1, scope: !440, file: !8, line: 52, type: !12)
!445 = !DILocalVariable(name: "closure", arg: 2, scope: !440, file: !8, line: 52, type: !15)
!446 = !DILocalVariable(name: "priority", scope: !440, file: !8, line: 53, type: !406)
!447 = !DILocalVariable(name: "t", scope: !440, file: !8, line: 54, type: !6)
!448 = !DILocalVariable(name: "thread_attr", scope: !440, file: !8, line: 59, type: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_thread_attr_t", file: !23, line: 67, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_qurt_thread_attr", file: !23, line: 52, size: 320, flags: DIFlagTypePassByValue, elements: !451, identifier: "_ZTS17_qurt_thread_attr")
!451 = !{!452, !456, !457, !458, !459, !460, !461, !462, !463}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !450, file: !23, line: 54, baseType: !453, size: 128)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tcb_partition", scope: !450, file: !23, line: 55, baseType: !262, size: 8, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !450, file: !23, line: 57, baseType: !262, size: 8, offset: 136)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !450, file: !23, line: 59, baseType: !407, size: 16, offset: 144)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "asid", scope: !450, file: !23, line: 60, baseType: !262, size: 8, offset: 160)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_priority", scope: !450, file: !23, line: 61, baseType: !262, size: 8, offset: 168)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "timetest_id", scope: !450, file: !23, line: 62, baseType: !407, size: 16, offset: 176)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !450, file: !23, line: 63, baseType: !24, size: 32, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "stack_addr", scope: !450, file: !23, line: 64, baseType: !15, size: 64, offset: 256)
!464 = !DILocation(line: 0, scope: !440)
!465 = !DILocation(line: 53, column: 25, scope: !440)
!466 = !DILocation(line: 54, column: 43, scope: !440)
!467 = !DILocation(line: 55, column: 8, scope: !440)
!468 = !DILocation(line: 55, column: 10, scope: !440)
!469 = !{!470, !471, i64 0}
!470 = !{!"_ZTSN12_GLOBAL__N_114spawned_threadE", !471, i64 0, !471, i64 8, !471, i64 16, !472, i64 24}
!471 = !{!"any pointer", !432, i64 0}
!472 = !{!"_ZTS13halide_thread", !473, i64 0}
!473 = !{!"int", !432, i64 0}
!474 = !DILocation(line: 56, column: 8, scope: !440)
!475 = !DILocation(line: 56, column: 16, scope: !440)
!476 = !{!470, !471, i64 8}
!477 = !DILocation(line: 57, column: 16, scope: !440)
!478 = !DILocation(line: 57, column: 8, scope: !440)
!479 = !DILocation(line: 57, column: 14, scope: !440)
!480 = !{!470, !471, i64 16}
!481 = !DILocation(line: 58, column: 16, scope: !440)
!482 = !DILocation(line: 58, column: 5, scope: !440)
!483 = !DILocation(line: 59, column: 5, scope: !440)
!484 = !DILocation(line: 59, column: 24, scope: !440)
!485 = !DILocalVariable(name: "attr", arg: 1, scope: !486, file: !23, line: 96, type: !489)
!486 = distinct !DISubprogram(name: "qurt_thread_attr_init", linkageName: "_ZL21qurt_thread_attr_initP17_qurt_thread_attr", scope: !23, file: !23, line: 96, type: !487, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!490 = !{!485}
!491 = !DILocation(line: 0, scope: !486, inlinedAt: !492)
!492 = distinct !DILocation(line: 60, column: 5, scope: !440)
!493 = !DILocation(line: 98, column: 19, scope: !486, inlinedAt: !492)
!494 = !{!432, !432, i64 0}
!495 = !DILocation(line: 99, column: 11, scope: !486, inlinedAt: !492)
!496 = !DILocation(line: 99, column: 25, scope: !486, inlinedAt: !492)
!497 = !{!498, !432, i64 16}
!498 = !{!"_ZTS17_qurt_thread_attr", !432, i64 0, !432, i64 16, !432, i64 17, !431, i64 18, !432, i64 20, !432, i64 21, !431, i64 22, !473, i64 24, !471, i64 32}
!499 = !DILocation(line: 100, column: 11, scope: !486, inlinedAt: !492)
!500 = !DILocation(line: 101, column: 11, scope: !486, inlinedAt: !492)
!501 = !DILocation(line: 101, column: 16, scope: !486, inlinedAt: !492)
!502 = !{!498, !432, i64 20}
!503 = !DILocation(line: 102, column: 11, scope: !486, inlinedAt: !492)
!504 = !DILocation(line: 102, column: 20, scope: !486, inlinedAt: !492)
!505 = !{!498, !432, i64 17}
!506 = !DILocation(line: 103, column: 11, scope: !486, inlinedAt: !492)
!507 = !DILocation(line: 103, column: 24, scope: !486, inlinedAt: !492)
!508 = !{!498, !432, i64 21}
!509 = !DILocation(line: 104, column: 11, scope: !486, inlinedAt: !492)
!510 = !DILocation(line: 104, column: 23, scope: !486, inlinedAt: !492)
!511 = !{!498, !431, i64 22}
!512 = !DILocation(line: 105, column: 11, scope: !486, inlinedAt: !492)
!513 = !DILocation(line: 106, column: 11, scope: !486, inlinedAt: !492)
!514 = !DILocation(line: 61, column: 54, scope: !440)
!515 = !DILocalVariable(name: "attr", arg: 1, scope: !516, file: !23, line: 152, type: !489)
!516 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_addr", linkageName: "_ZL31qurt_thread_attr_set_stack_addrP17_qurt_thread_attrPv", scope: !23, file: !23, line: 152, type: !517, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !489, !15}
!519 = !{!515, !520}
!520 = !DILocalVariable(name: "stack_addr", arg: 2, scope: !516, file: !23, line: 152, type: !15)
!521 = !DILocation(line: 0, scope: !516, inlinedAt: !522)
!522 = distinct !DILocation(line: 61, column: 5, scope: !440)
!523 = !DILocation(line: 153, column: 22, scope: !516, inlinedAt: !522)
!524 = !{!498, !471, i64 32}
!525 = !DILocalVariable(name: "attr", arg: 1, scope: !526, file: !23, line: 127, type: !489)
!526 = distinct !DISubprogram(name: "qurt_thread_attr_set_stack_size", linkageName: "_ZL31qurt_thread_attr_set_stack_sizeP17_qurt_thread_attrj", scope: !23, file: !23, line: 127, type: !527, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !489, !24}
!529 = !{!525, !530}
!530 = !DILocalVariable(name: "stack_size", arg: 2, scope: !526, file: !23, line: 127, type: !24)
!531 = !DILocation(line: 0, scope: !526, inlinedAt: !532)
!532 = distinct !DILocation(line: 62, column: 5, scope: !440)
!533 = !DILocation(line: 128, column: 22, scope: !526, inlinedAt: !532)
!534 = !{!498, !473, i64 24}
!535 = !DILocalVariable(name: "attr", arg: 1, scope: !536, file: !23, line: 170, type: !489)
!536 = distinct !DISubprogram(name: "qurt_thread_attr_set_priority", linkageName: "_ZL29qurt_thread_attr_set_priorityP17_qurt_thread_attrt", scope: !23, file: !23, line: 170, type: !537, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !489, !407}
!539 = !{!535, !540}
!540 = !DILocalVariable(name: "priority", arg: 2, scope: !536, file: !23, line: 170, type: !407)
!541 = !DILocation(line: 0, scope: !536, inlinedAt: !542)
!542 = distinct !DILocation(line: 63, column: 5, scope: !440)
!543 = !DILocation(line: 171, column: 20, scope: !536, inlinedAt: !542)
!544 = !{!498, !431, i64 18}
!545 = !DILocation(line: 64, column: 35, scope: !440)
!546 = !DILocation(line: 64, column: 5, scope: !440)
!547 = !DILocation(line: 65, column: 12, scope: !440)
!548 = !DILocation(line: 66, column: 1, scope: !440)
!549 = !DILocation(line: 65, column: 5, scope: !440)
!550 = !DISubprogram(name: "malloc", scope: !27, file: !27, line: 87, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!551 = !DISubroutineType(types: !552)
!552 = !{!15, !553}
!553 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!554 = !DISubprogram(name: "memalign", scope: !8, file: !8, line: 28, type: !555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!555 = !DISubroutineType(types: !556)
!556 = !{!15, !553, !553}
!557 = !DISubprogram(name: "memset", scope: !27, file: !27, line: 96, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!558 = !DISubroutineType(types: !559)
!559 = !{!15, !15, !161, !553}
!560 = !DISubprogram(name: "qurt_thread_create", scope: !23, file: !23, line: 175, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!561 = !DISubroutineType(types: !562)
!562 = !{!161, !563, !564, !12, !15}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!565 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "_ZN12_GLOBAL__N_119spawn_thread_helperEPv", scope: !9, file: !8, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!566 = !{!567, !568}
!567 = !DILocalVariable(name: "arg", arg: 1, scope: !565, file: !8, line: 20, type: !15)
!568 = !DILocalVariable(name: "t", scope: !565, file: !8, line: 21, type: !6)
!569 = !DILocation(line: 0, scope: !565)
!570 = !DILocation(line: 22, column: 8, scope: !565)
!571 = !DILocation(line: 22, column: 13, scope: !565)
!572 = !DILocation(line: 22, column: 5, scope: !565)
!573 = !DILocation(line: 23, column: 1, scope: !565)
!574 = distinct !DISubprogram(name: "halide_join_thread", scope: !8, file: !8, line: 68, type: !575, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !25}
!577 = !{!578, !579, !580}
!578 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !574, file: !8, line: 68, type: !25)
!579 = !DILocalVariable(name: "t", scope: !574, file: !8, line: 69, type: !6)
!580 = !DILocalVariable(name: "ret", scope: !574, file: !8, line: 70, type: !161)
!581 = !DILocation(line: 0, scope: !574)
!582 = !DILocation(line: 70, column: 5, scope: !574)
!583 = !DILocation(line: 70, column: 9, scope: !574)
!584 = !{!473, !473, i64 0}
!585 = !DILocation(line: 71, column: 32, scope: !574)
!586 = !{!470, !473, i64 24}
!587 = !DILocation(line: 71, column: 5, scope: !574)
!588 = !DILocation(line: 72, column: 13, scope: !574)
!589 = !DILocation(line: 72, column: 5, scope: !574)
!590 = !DILocation(line: 73, column: 10, scope: !574)
!591 = !DILocation(line: 73, column: 5, scope: !574)
!592 = !DILocation(line: 74, column: 1, scope: !574)
!593 = !DISubprogram(name: "qurt_thread_join", scope: !23, file: !23, line: 194, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{!161, !24, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!597 = !DISubprogram(name: "free", scope: !27, file: !27, line: 86, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!598 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock9lock_fullEv", scope: !109, file: !32, line: 321, type: !113, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !112, retainedNodes: !599)
!599 = !{!600, !602, !614, !615, !619, !620, !621}
!600 = !DILocalVariable(name: "this", arg: 1, scope: !598, type: !601, flags: DIFlagArtificial | DIFlagObjectPointer)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!602 = !DILocalVariable(name: "spinner", scope: !598, file: !32, line: 322, type: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !33, file: !32, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !604, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization12spin_controlE")
!604 = !{!605, !606, !610, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !603, file: !32, line: 231, baseType: !161, size: 32)
!606 = !DISubprogram(name: "spin_control", scope: !603, file: !32, line: 235, type: !607, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!610 = !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !603, file: !32, line: 237, type: !611, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubroutineType(types: !612)
!612 = !{!66, !609}
!613 = !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control5resetEv", scope: !603, file: !32, line: 244, type: !607, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DILocalVariable(name: "expected", scope: !598, file: !32, line: 323, type: !26)
!615 = !DILocalVariable(name: "desired", scope: !616, file: !32, line: 328, type: !26)
!616 = distinct !DILexicalBlock(scope: !617, file: !32, line: 327, column: 37)
!617 = distinct !DILexicalBlock(scope: !618, file: !32, line: 327, column: 13)
!618 = distinct !DILexicalBlock(scope: !598, file: !32, line: 326, column: 18)
!619 = !DILocalVariable(name: "node", scope: !618, file: !32, line: 342, type: !31)
!620 = !DILocalVariable(name: "head", scope: !618, file: !32, line: 347, type: !30)
!621 = !DILocalVariable(name: "desired", scope: !618, file: !32, line: 359, type: !26)
!622 = !DILocation(line: 0, scope: !598)
!623 = !DILocation(line: 324, column: 26, scope: !598)
!624 = !DILocalVariable(name: "addr", arg: 1, scope: !625, file: !32, line: 200, type: !629)
!625 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_relaxedIyEEvPT_S6_", scope: !626, file: !32, line: 200, type: !627, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !632, retainedNodes: !630)
!626 = !DINamespace(scope: !33)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !629, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!630 = !{!624, !631}
!631 = !DILocalVariable(name: "val", arg: 2, scope: !625, file: !32, line: 200, type: !629)
!632 = !{!633}
!633 = !DITemplateTypeParameter(name: "T", type: !29)
!634 = !DILocation(line: 0, scope: !625, inlinedAt: !635)
!635 = distinct !DILocation(line: 324, column: 5, scope: !598)
!636 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !635)
!637 = !DILocation(line: 326, column: 5, scope: !598)
!638 = !DILocation(line: 327, column: 24, scope: !617)
!639 = !DILocation(line: 327, column: 14, scope: !617)
!640 = !DILocation(line: 327, column: 13, scope: !618)
!641 = !DILocation(line: 328, column: 42, scope: !616)
!642 = !DILocation(line: 0, scope: !616)
!643 = !DILocalVariable(name: "addr", arg: 1, scope: !644, file: !32, line: 191, type: !173)
!644 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_acquire_relaxedEPyS4_S4_", scope: !626, file: !32, line: 191, type: !645, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{!66, !173, !173, !173}
!647 = !{!643, !648, !649}
!648 = !DILocalVariable(name: "expected", arg: 2, scope: !644, file: !32, line: 191, type: !173)
!649 = !DILocalVariable(name: "desired", arg: 3, scope: !644, file: !32, line: 191, type: !173)
!650 = !DILocation(line: 0, scope: !644, inlinedAt: !651)
!651 = distinct !DILocation(line: 330, column: 17, scope: !652)
!652 = distinct !DILexicalBlock(scope: !616, file: !32, line: 330, column: 17)
!653 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !651)
!654 = !DILocation(line: 336, column: 67, scope: !655)
!655 = distinct !DILexicalBlock(scope: !618, file: !32, line: 336, column: 13)
!656 = !DILocation(line: 336, column: 73, scope: !655)
!657 = !DILocalVariable(name: "this", arg: 1, scope: !658, type: !660, flags: DIFlagArtificial | DIFlagObjectPointer)
!658 = distinct !DISubprogram(name: "should_spin", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12spin_control11should_spinEv", scope: !603, file: !32, line: 237, type: !611, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !610, retainedNodes: !659)
!659 = !{!657}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!661 = !DILocation(line: 0, scope: !658, inlinedAt: !662)
!662 = distinct !DILocation(line: 336, column: 84, scope: !655)
!663 = !DILocation(line: 241, column: 27, scope: !658, inlinedAt: !662)
!664 = !DILocation(line: 336, column: 13, scope: !618)
!665 = !DILocation(line: 239, column: 23, scope: !666, inlinedAt: !662)
!666 = distinct !DILexicalBlock(scope: !667, file: !32, line: 238, column: 29)
!667 = distinct !DILexicalBlock(scope: !658, file: !32, line: 238, column: 13)
!668 = !DILocation(line: 337, column: 13, scope: !669)
!669 = distinct !DILexicalBlock(scope: !655, file: !32, line: 336, column: 99)
!670 = !DILocation(line: 0, scope: !625, inlinedAt: !671)
!671 = distinct !DILocation(line: 338, column: 13, scope: !669)
!672 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !671)
!673 = !DILocation(line: 339, column: 13, scope: !669)
!674 = !DILocation(line: 342, column: 9, scope: !618)
!675 = !DILocation(line: 342, column: 30, scope: !618)
!676 = !DILocalVariable(name: "this", arg: 1, scope: !677, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!677 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataC2Ev", scope: !31, file: !32, line: 277, type: !97, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !96, retainedNodes: !678)
!678 = !{!676}
!679 = !DILocation(line: 0, scope: !677, inlinedAt: !680)
!680 = distinct !DILocation(line: 342, column: 30, scope: !618)
!681 = !DILocalVariable(name: "this", arg: 1, scope: !682, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!682 = distinct !DISubprogram(name: "thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerC2Ev", scope: !39, file: !8, line: 94, type: !85, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !84, retainedNodes: !683)
!683 = !{!681}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!685 = !DILocation(line: 0, scope: !682, inlinedAt: !686)
!686 = distinct !DILocation(line: 277, column: 19, scope: !677, inlinedAt: !680)
!687 = !DILocation(line: 87, column: 10, scope: !682, inlinedAt: !686)
!688 = !{!689, !690, i64 32}
!689 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization13thread_parkerE", !432, i64 0, !432, i64 16, !690, i64 32}
!690 = !{!"bool", !432, i64 0}
!691 = !DILocation(line: 95, column: 9, scope: !692, inlinedAt: !686)
!692 = distinct !DILexicalBlock(scope: !682, file: !8, line: 94, column: 35)
!693 = !DILocation(line: 96, column: 9, scope: !692, inlinedAt: !686)
!694 = !DILocation(line: 273, column: 27, scope: !677, inlinedAt: !680)
!695 = !{!696, !471, i64 40}
!696 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataE", !689, i64 0, !471, i64 40, !471, i64 48, !471, i64 56}
!697 = !DILocation(line: 274, column: 27, scope: !677, inlinedAt: !680)
!698 = !{!696, !471, i64 48}
!699 = !DILocation(line: 275, column: 27, scope: !677, inlinedAt: !680)
!700 = !{!696, !471, i64 56}
!701 = !DILocalVariable(name: "this", arg: 1, scope: !702, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!702 = distinct !DISubprogram(name: "prepare_park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12prepare_parkEv", scope: !39, file: !8, line: 105, type: !85, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !88, retainedNodes: !703)
!703 = !{!701}
!704 = !DILocation(line: 0, scope: !702, inlinedAt: !705)
!705 = distinct !DILocation(line: 344, column: 21, scope: !618)
!706 = !DILocation(line: 106, column: 21, scope: !702, inlinedAt: !705)
!707 = !DILocation(line: 347, column: 72, scope: !618)
!708 = !DILocation(line: 0, scope: !618)
!709 = !DILocation(line: 348, column: 18, scope: !710)
!710 = distinct !DILexicalBlock(scope: !618, file: !32, line: 348, column: 13)
!711 = !DILocation(line: 348, column: 13, scope: !618)
!712 = !DILocation(line: 349, column: 23, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !32, line: 348, column: 30)
!714 = !DILocation(line: 351, column: 9, scope: !713)
!715 = !DILocation(line: 347, column: 38, scope: !618)
!716 = !DILocation(line: 356, column: 23, scope: !717)
!717 = distinct !DILexicalBlock(scope: !710, file: !32, line: 351, column: 16)
!718 = !DILocation(line: 359, column: 60, scope: !618)
!719 = !DILocation(line: 359, column: 48, scope: !618)
!720 = !DILocalVariable(name: "addr", arg: 1, scope: !721, file: !32, line: 183, type: !173)
!721 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_release_relaxedEPyS4_S4_", scope: !626, file: !32, line: 183, type: !645, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!722 = !{!720, !723, !724}
!723 = !DILocalVariable(name: "expected", arg: 2, scope: !721, file: !32, line: 183, type: !173)
!724 = !DILocalVariable(name: "desired", arg: 3, scope: !721, file: !32, line: 183, type: !173)
!725 = !DILocation(line: 0, scope: !721, inlinedAt: !726)
!726 = distinct !DILocation(line: 360, column: 13, scope: !727)
!727 = distinct !DILexicalBlock(scope: !618, file: !32, line: 360, column: 13)
!728 = !DILocation(line: 184, column: 12, scope: !721, inlinedAt: !726)
!729 = !DILocalVariable(name: "this", arg: 1, scope: !730, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!730 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker4parkEv", scope: !39, file: !8, line: 109, type: !85, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !89, retainedNodes: !731)
!731 = !{!729}
!732 = !DILocation(line: 0, scope: !730, inlinedAt: !733)
!733 = distinct !DILocation(line: 361, column: 25, scope: !734)
!734 = distinct !DILexicalBlock(scope: !727, file: !32, line: 360, column: 75)
!735 = !DILocation(line: 110, column: 9, scope: !730, inlinedAt: !733)
!736 = !DILocation(line: 111, column: 16, scope: !730, inlinedAt: !733)
!737 = !{i8 0, i8 2}
!738 = !DILocation(line: 111, column: 9, scope: !730, inlinedAt: !733)
!739 = !DILocation(line: 112, column: 13, scope: !740, inlinedAt: !733)
!740 = distinct !DILexicalBlock(scope: !730, file: !8, line: 111, column: 29)
!741 = distinct !{!741, !738, !742, !743}
!742 = !DILocation(line: 113, column: 9, scope: !730, inlinedAt: !733)
!743 = !{!"llvm.loop.mustprogress"}
!744 = !DILocation(line: 114, column: 9, scope: !730, inlinedAt: !733)
!745 = !DILocation(line: 0, scope: !625, inlinedAt: !746)
!746 = distinct !DILocation(line: 363, column: 13, scope: !734)
!747 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !746)
!748 = !DILocation(line: 364, column: 9, scope: !734)
!749 = !DILocalVariable(name: "this", arg: 1, scope: !750, type: !30, flags: DIFlagArtificial | DIFlagObjectPointer)
!750 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20word_lock_queue_dataD2Ev", scope: !31, file: !32, line: 280, type: !97, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !100, retainedNodes: !751)
!751 = !{!749}
!752 = !DILocation(line: 0, scope: !750, inlinedAt: !753)
!753 = distinct !DILocation(line: 365, column: 5, scope: !598)
!754 = !DILocalVariable(name: "this", arg: 1, scope: !755, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!755 = distinct !DISubprogram(name: "~thread_parker", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parkerD2Ev", scope: !39, file: !8, line: 100, type: !85, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !87, retainedNodes: !756)
!756 = !{!754}
!757 = !DILocation(line: 0, scope: !755, inlinedAt: !758)
!758 = distinct !DILocation(line: 280, column: 51, scope: !759, inlinedAt: !753)
!759 = distinct !DILexicalBlock(scope: !750, file: !32, line: 280, column: 51)
!760 = !DILocation(line: 101, column: 9, scope: !761, inlinedAt: !758)
!761 = distinct !DILexicalBlock(scope: !755, file: !8, line: 100, column: 36)
!762 = !DILocation(line: 102, column: 9, scope: !761, inlinedAt: !758)
!763 = !DILocation(line: 365, column: 5, scope: !598)
!764 = distinct !{!764, !637, !763}
!765 = !DILocation(line: 366, column: 1, scope: !598)
!766 = !DISubprogram(name: "halide_thread_yield", scope: !27, file: !27, line: 190, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!767 = !DISubroutineType(types: !768)
!768 = !{null}
!769 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock11unlock_fullEv", scope: !109, file: !32, line: 368, type: !113, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !116, retainedNodes: !770)
!770 = !{!771, !772, !773, !775, !776, !777, !779, !780, !781, !782, !784, !787, !788, !791}
!771 = !DILocalVariable(name: "this", arg: 1, scope: !769, type: !601, flags: DIFlagArtificial | DIFlagObjectPointer)
!772 = !DILocalVariable(name: "expected", scope: !769, file: !32, line: 369, type: !26)
!773 = !DILocalVariable(name: "thread_queuing", scope: !774, file: !32, line: 375, type: !66)
!774 = distinct !DILexicalBlock(scope: !769, file: !32, line: 372, column: 18)
!775 = !DILocalVariable(name: "none_queued", scope: !774, file: !32, line: 377, type: !66)
!776 = !DILocalVariable(name: "desired", scope: !774, file: !32, line: 382, type: !26)
!777 = !DILocalVariable(name: "head", scope: !778, file: !32, line: 389, type: !30)
!778 = distinct !DILexicalBlock(scope: !769, file: !32, line: 388, column: 18)
!779 = !DILocalVariable(name: "current", scope: !778, file: !32, line: 390, type: !30)
!780 = !DILocalVariable(name: "tail", scope: !778, file: !32, line: 391, type: !30)
!781 = !DILocalVariable(name: "times_through", scope: !778, file: !32, line: 392, type: !161)
!782 = !DILocalVariable(name: "next", scope: !783, file: !32, line: 394, type: !30)
!783 = distinct !DILexicalBlock(scope: !778, file: !32, line: 393, column: 33)
!784 = !DILocalVariable(name: "desired", scope: !785, file: !32, line: 406, type: !26)
!785 = distinct !DILexicalBlock(scope: !786, file: !32, line: 405, column: 34)
!786 = distinct !DILexicalBlock(scope: !778, file: !32, line: 405, column: 13)
!787 = !DILocalVariable(name: "new_tail", scope: !778, file: !32, line: 414, type: !30)
!788 = !DILocalVariable(name: "continue_outer", scope: !789, file: !32, line: 416, type: !66)
!789 = distinct !DILexicalBlock(scope: !790, file: !32, line: 415, column: 34)
!790 = distinct !DILexicalBlock(scope: !778, file: !32, line: 415, column: 13)
!791 = !DILocalVariable(name: "desired", scope: !792, file: !32, line: 418, type: !26)
!792 = distinct !DILexicalBlock(scope: !789, file: !32, line: 417, column: 37)
!793 = !DILocation(line: 0, scope: !769)
!794 = !DILocation(line: 370, column: 26, scope: !769)
!795 = !DILocation(line: 0, scope: !625, inlinedAt: !796)
!796 = distinct !DILocation(line: 370, column: 5, scope: !769)
!797 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !796)
!798 = !DILocation(line: 372, column: 5, scope: !769)
!799 = !DILocation(line: 375, column: 41, scope: !774)
!800 = !DILocation(line: 375, column: 31, scope: !774)
!801 = !DILocation(line: 0, scope: !774)
!802 = !DILocation(line: 378, column: 28, scope: !803)
!803 = distinct !DILexicalBlock(scope: !774, file: !32, line: 378, column: 13)
!804 = !DILocation(line: 382, column: 38, scope: !774)
!805 = !DILocation(line: 0, scope: !644, inlinedAt: !806)
!806 = distinct !DILocation(line: 383, column: 13, scope: !807)
!807 = distinct !DILexicalBlock(scope: !774, file: !32, line: 383, column: 13)
!808 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !806)
!809 = !DILocation(line: 389, column: 72, scope: !778)
!810 = !DILocation(line: 389, column: 38, scope: !778)
!811 = !DILocation(line: 0, scope: !778)
!812 = !DILocation(line: 391, column: 47, scope: !778)
!813 = !DILocation(line: 393, column: 21, scope: !778)
!814 = !DILocation(line: 393, column: 9, scope: !778)
!815 = !DILocation(line: 394, column: 51, scope: !783)
!816 = !DILocation(line: 0, scope: !783)
!817 = !DILocation(line: 395, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !32, line: 395, column: 13)
!819 = distinct !DILexicalBlock(scope: !783, file: !32, line: 395, column: 13)
!820 = !DILocation(line: 395, column: 13, scope: !819)
!821 = !DILocation(line: 395, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !32, line: 395, column: 13)
!823 = !DILocation(line: 396, column: 19, scope: !783)
!824 = !DILocation(line: 396, column: 24, scope: !783)
!825 = !DILocation(line: 398, column: 29, scope: !783)
!826 = distinct !{!826, !814, !827, !743}
!827 = !DILocation(line: 400, column: 9, scope: !778)
!828 = !DILocation(line: 401, column: 20, scope: !778)
!829 = !DILocation(line: 405, column: 22, scope: !786)
!830 = !DILocation(line: 405, column: 13, scope: !786)
!831 = !DILocation(line: 405, column: 13, scope: !778)
!832 = !DILocation(line: 406, column: 42, scope: !785)
!833 = !DILocation(line: 0, scope: !785)
!834 = !DILocalVariable(name: "addr", arg: 1, scope: !835, file: !32, line: 179, type: !629)
!835 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIyEEbPT_S6_S6_", scope: !626, file: !32, line: 179, type: !836, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !632, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!66, !629, !629, !629}
!838 = !{!834, !839, !840}
!839 = !DILocalVariable(name: "expected", arg: 2, scope: !835, file: !32, line: 179, type: !629)
!840 = !DILocalVariable(name: "desired", arg: 3, scope: !835, file: !32, line: 179, type: !629)
!841 = !DILocation(line: 0, scope: !835, inlinedAt: !842)
!842 = distinct !DILocation(line: 407, column: 17, scope: !843)
!843 = distinct !DILexicalBlock(scope: !785, file: !32, line: 407, column: 17)
!844 = !DILocation(line: 180, column: 12, scope: !835, inlinedAt: !842)
!845 = distinct !{!845, !846, !847}
!846 = !DILocation(line: 388, column: 5, scope: !769)
!847 = !DILocation(line: 445, column: 5, scope: !769)
!848 = !DILocation(line: 414, column: 48, scope: !778)
!849 = !DILocation(line: 415, column: 22, scope: !790)
!850 = !DILocation(line: 415, column: 13, scope: !778)
!851 = !DILocation(line: 0, scope: !789)
!852 = !DILocation(line: 418, column: 46, scope: !792)
!853 = !DILocation(line: 0, scope: !792)
!854 = !DILocation(line: 0, scope: !835, inlinedAt: !855)
!855 = distinct !DILocation(line: 419, column: 21, scope: !856)
!856 = distinct !DILexicalBlock(scope: !792, file: !32, line: 419, column: 21)
!857 = !DILocation(line: 180, column: 12, scope: !835, inlinedAt: !855)
!858 = !DILocation(line: 422, column: 74, scope: !859)
!859 = distinct !DILexicalBlock(scope: !792, file: !32, line: 422, column: 21)
!860 = !DILocation(line: 422, column: 21, scope: !792)
!861 = distinct !{!861, !862, !863, !743}
!862 = !DILocation(line: 417, column: 13, scope: !789)
!863 = !DILocation(line: 428, column: 13, scope: !789)
!864 = !DILocation(line: 434, column: 24, scope: !865)
!865 = distinct !DILexicalBlock(scope: !790, file: !32, line: 433, column: 16)
!866 = !DILocalVariable(name: "addr", arg: 1, scope: !867, file: !32, line: 165, type: !173)
!867 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_and_fetch_releaseEPyy", scope: !626, file: !32, line: 165, type: !868, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!26, !173, !26}
!870 = !{!866, !871}
!871 = !DILocalVariable(name: "val", arg: 2, scope: !867, file: !32, line: 165, type: !26)
!872 = !DILocation(line: 0, scope: !867, inlinedAt: !873)
!873 = distinct !DILocation(line: 435, column: 13, scope: !865)
!874 = !DILocation(line: 166, column: 12, scope: !867, inlinedAt: !873)
!875 = !DILocalVariable(name: "this", arg: 1, scope: !876, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!876 = distinct !DISubprogram(name: "unpark_start", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker12unpark_startEv", scope: !39, file: !8, line: 117, type: !85, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !90, retainedNodes: !877)
!877 = !{!875}
!878 = !DILocation(line: 0, scope: !876, inlinedAt: !879)
!879 = distinct !DILocation(line: 441, column: 22, scope: !778)
!880 = !DILocation(line: 118, column: 26, scope: !876, inlinedAt: !879)
!881 = !DILocation(line: 118, column: 9, scope: !876, inlinedAt: !879)
!882 = !DILocalVariable(name: "this", arg: 1, scope: !883, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!883 = distinct !DISubprogram(name: "unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker6unparkEv", scope: !39, file: !8, line: 121, type: !85, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !91, retainedNodes: !884)
!884 = !{!882}
!885 = !DILocation(line: 0, scope: !883, inlinedAt: !886)
!886 = distinct !DILocation(line: 442, column: 22, scope: !778)
!887 = !DILocation(line: 122, column: 9, scope: !883, inlinedAt: !886)
!888 = !DILocation(line: 122, column: 21, scope: !883, inlinedAt: !886)
!889 = !DILocation(line: 123, column: 27, scope: !883, inlinedAt: !886)
!890 = !DILocation(line: 123, column: 9, scope: !883, inlinedAt: !886)
!891 = !DILocalVariable(name: "this", arg: 1, scope: !892, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!892 = distinct !DISubprogram(name: "unpark_finish", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization13thread_parker13unpark_finishEv", scope: !39, file: !8, line: 126, type: !85, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !92, retainedNodes: !893)
!893 = !{!891}
!894 = !DILocation(line: 0, scope: !892, inlinedAt: !895)
!895 = distinct !DILocation(line: 443, column: 22, scope: !778)
!896 = !DILocation(line: 127, column: 9, scope: !892, inlinedAt: !895)
!897 = !DILocation(line: 444, column: 9, scope: !778)
!898 = !DILocation(line: 446, column: 1, scope: !769)
!899 = !DISubprogram(name: "halide_print", scope: !242, file: !242, line: 97, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !15, !265}
!902 = !DISubprogram(name: "abort", scope: !27, file: !27, line: 108, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!903 = distinct !DISubprogram(name: "lock_bucket", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization11lock_bucketEy", scope: !33, file: !32, line: 509, type: !904, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!904 = !DISubroutineType(types: !905)
!905 = !{!906, !26}
!906 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !106, size: 64)
!907 = !{!908, !909, !910}
!908 = !DILocalVariable(name: "addr", arg: 1, scope: !903, file: !32, line: 509, type: !26)
!909 = !DILocalVariable(name: "hash", scope: !903, file: !32, line: 510, type: !26)
!910 = !DILocalVariable(name: "bucket", scope: !903, file: !32, line: 515, type: !906)
!911 = !DILocation(line: 0, scope: !903)
!912 = !DILocalVariable(name: "addr", arg: 1, scope: !913, file: !32, line: 499, type: !26)
!913 = distinct !DISubprogram(name: "addr_hash", linkageName: "_ZN6Halide7Runtime8Internal15SynchronizationL9addr_hashEyj", scope: !33, file: !32, line: 499, type: !914, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!914 = !DISubroutineType(types: !915)
!915 = !{!26, !26, !916}
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 12, baseType: !24)
!917 = !{!912, !918}
!918 = !DILocalVariable(name: "bits", arg: 2, scope: !913, file: !32, line: 499, type: !916)
!919 = !DILocation(line: 0, scope: !913, inlinedAt: !920)
!920 = distinct !DILocation(line: 510, column: 22, scope: !903)
!921 = !DILocation(line: 503, column: 22, scope: !922, inlinedAt: !920)
!922 = distinct !DILexicalBlock(scope: !923, file: !32, line: 502, column: 33)
!923 = distinct !DILexicalBlock(scope: !913, file: !32, line: 502, column: 9)
!924 = !DILocation(line: 503, column: 55, scope: !922, inlinedAt: !920)
!925 = !DILocation(line: 515, column: 27, scope: !903)
!926 = !DILocalVariable(name: "this", arg: 1, scope: !927, type: !601, flags: DIFlagArtificial | DIFlagObjectPointer)
!927 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock4lockEv", scope: !109, file: !32, line: 291, type: !113, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !118, retainedNodes: !928)
!928 = !{!926, !929, !930}
!929 = !DILocalVariable(name: "expected", scope: !927, file: !32, line: 294, type: !26)
!930 = !DILocalVariable(name: "desired", scope: !927, file: !32, line: 295, type: !26)
!931 = !DILocation(line: 0, scope: !927, inlinedAt: !932)
!932 = distinct !DILocation(line: 517, column: 18, scope: !903)
!933 = !DILocation(line: 297, column: 47, scope: !934, inlinedAt: !932)
!934 = distinct !DILexicalBlock(scope: !927, file: !32, line: 297, column: 13)
!935 = !DILocation(line: 0, scope: !644, inlinedAt: !936)
!936 = distinct !DILocation(line: 297, column: 14, scope: !934, inlinedAt: !932)
!937 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !936)
!938 = !DILocation(line: 297, column: 13, scope: !927, inlinedAt: !932)
!939 = !DILocation(line: 517, column: 12, scope: !903)
!940 = !DILocation(line: 298, column: 13, scope: !941, inlinedAt: !932)
!941 = distinct !DILexicalBlock(scope: !934, file: !32, line: 297, column: 76)
!942 = !DILocation(line: 299, column: 9, scope: !941, inlinedAt: !932)
!943 = !DILocation(line: 519, column: 5, scope: !903)
!944 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization16lock_bucket_pairEyy", scope: !33, file: !32, line: 531, type: !945, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!945 = !DISubroutineType(types: !946)
!946 = !{!947, !26, !26}
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !33, file: !32, line: 522, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !948, identifier: "_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE")
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !947, file: !32, line: 523, baseType: !906, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !947, file: !32, line: 524, baseType: !906, size: 64, offset: 64)
!951 = !DISubprogram(name: "bucket_pair", scope: !947, file: !32, line: 526, type: !952, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !954, !906, !906}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!955 = !{!956, !957, !958, !959, !960, !963, !966, !967, !969}
!956 = !DILocalVariable(name: "addr_from", arg: 1, scope: !944, file: !32, line: 531, type: !26)
!957 = !DILocalVariable(name: "addr_to", arg: 2, scope: !944, file: !32, line: 531, type: !26)
!958 = !DILocalVariable(name: "hash_from", scope: !944, file: !32, line: 533, type: !26)
!959 = !DILocalVariable(name: "hash_to", scope: !944, file: !32, line: 534, type: !26)
!960 = !DILocalVariable(name: "first", scope: !961, file: !32, line: 542, type: !906)
!961 = distinct !DILexicalBlock(scope: !962, file: !32, line: 541, column: 31)
!962 = distinct !DILexicalBlock(scope: !944, file: !32, line: 541, column: 9)
!963 = !DILocalVariable(name: "first", scope: !964, file: !32, line: 546, type: !906)
!964 = distinct !DILexicalBlock(scope: !965, file: !32, line: 545, column: 37)
!965 = distinct !DILexicalBlock(scope: !962, file: !32, line: 545, column: 16)
!966 = !DILocalVariable(name: "second", scope: !964, file: !32, line: 547, type: !906)
!967 = !DILocalVariable(name: "first", scope: !968, file: !32, line: 552, type: !906)
!968 = distinct !DILexicalBlock(scope: !965, file: !32, line: 551, column: 12)
!969 = !DILocalVariable(name: "second", scope: !968, file: !32, line: 553, type: !906)
!970 = !DILocation(line: 0, scope: !944)
!971 = !DILocation(line: 0, scope: !913, inlinedAt: !972)
!972 = distinct !DILocation(line: 533, column: 27, scope: !944)
!973 = !DILocation(line: 503, column: 22, scope: !922, inlinedAt: !972)
!974 = !DILocation(line: 503, column: 55, scope: !922, inlinedAt: !972)
!975 = !DILocation(line: 0, scope: !913, inlinedAt: !976)
!976 = distinct !DILocation(line: 534, column: 25, scope: !944)
!977 = !DILocation(line: 503, column: 22, scope: !922, inlinedAt: !976)
!978 = !DILocation(line: 503, column: 55, scope: !922, inlinedAt: !976)
!979 = !DILocation(line: 541, column: 19, scope: !962)
!980 = !DILocation(line: 541, column: 9, scope: !944)
!981 = !DILocation(line: 542, column: 30, scope: !961)
!982 = !DILocation(line: 0, scope: !961)
!983 = !DILocation(line: 0, scope: !927, inlinedAt: !984)
!984 = distinct !DILocation(line: 543, column: 21, scope: !961)
!985 = !DILocation(line: 297, column: 47, scope: !934, inlinedAt: !984)
!986 = !DILocation(line: 0, scope: !644, inlinedAt: !987)
!987 = distinct !DILocation(line: 297, column: 14, scope: !934, inlinedAt: !984)
!988 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !987)
!989 = !DILocation(line: 297, column: 13, scope: !927, inlinedAt: !984)
!990 = !DILocation(line: 543, column: 15, scope: !961)
!991 = !DILocation(line: 298, column: 13, scope: !941, inlinedAt: !984)
!992 = !DILocation(line: 299, column: 9, scope: !941, inlinedAt: !984)
!993 = !DILocation(line: 545, column: 26, scope: !965)
!994 = !DILocation(line: 545, column: 16, scope: !962)
!995 = !DILocation(line: 546, column: 30, scope: !964)
!996 = !DILocation(line: 0, scope: !964)
!997 = !DILocation(line: 547, column: 31, scope: !964)
!998 = !DILocation(line: 0, scope: !927, inlinedAt: !999)
!999 = distinct !DILocation(line: 548, column: 21, scope: !964)
!1000 = !DILocation(line: 297, column: 47, scope: !934, inlinedAt: !999)
!1001 = !DILocation(line: 0, scope: !644, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 297, column: 14, scope: !934, inlinedAt: !999)
!1003 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !1002)
!1004 = !DILocation(line: 297, column: 13, scope: !927, inlinedAt: !999)
!1005 = !DILocation(line: 548, column: 15, scope: !964)
!1006 = !DILocation(line: 298, column: 13, scope: !941, inlinedAt: !999)
!1007 = !DILocation(line: 299, column: 9, scope: !941, inlinedAt: !999)
!1008 = !DILocation(line: 0, scope: !927, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 549, column: 22, scope: !964)
!1010 = !DILocation(line: 297, column: 47, scope: !934, inlinedAt: !1009)
!1011 = !DILocation(line: 0, scope: !644, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 297, column: 14, scope: !934, inlinedAt: !1009)
!1013 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !1012)
!1014 = !DILocation(line: 297, column: 13, scope: !927, inlinedAt: !1009)
!1015 = !DILocation(line: 549, column: 16, scope: !964)
!1016 = !DILocation(line: 298, column: 13, scope: !941, inlinedAt: !1009)
!1017 = !DILocation(line: 299, column: 9, scope: !941, inlinedAt: !1009)
!1018 = !DILocation(line: 552, column: 30, scope: !968)
!1019 = !DILocation(line: 0, scope: !968)
!1020 = !DILocation(line: 553, column: 31, scope: !968)
!1021 = !DILocation(line: 0, scope: !927, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 554, column: 21, scope: !968)
!1023 = !DILocation(line: 297, column: 47, scope: !934, inlinedAt: !1022)
!1024 = !DILocation(line: 0, scope: !644, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 297, column: 14, scope: !934, inlinedAt: !1022)
!1026 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !1025)
!1027 = !DILocation(line: 297, column: 13, scope: !927, inlinedAt: !1022)
!1028 = !DILocation(line: 554, column: 15, scope: !968)
!1029 = !DILocation(line: 298, column: 13, scope: !941, inlinedAt: !1022)
!1030 = !DILocation(line: 299, column: 9, scope: !941, inlinedAt: !1022)
!1031 = !DILocation(line: 0, scope: !927, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 555, column: 22, scope: !968)
!1033 = !DILocation(line: 297, column: 47, scope: !934, inlinedAt: !1032)
!1034 = !DILocation(line: 0, scope: !644, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 297, column: 14, scope: !934, inlinedAt: !1032)
!1036 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !1035)
!1037 = !DILocation(line: 297, column: 13, scope: !927, inlinedAt: !1032)
!1038 = !DILocation(line: 555, column: 16, scope: !968)
!1039 = !DILocation(line: 298, column: 13, scope: !941, inlinedAt: !1032)
!1040 = !DILocation(line: 299, column: 9, scope: !941, inlinedAt: !1032)
!1041 = !DILocation(line: 0, scope: !962)
!1042 = !{!471, !471, i64 0}
!1043 = !DILocation(line: 558, column: 1, scope: !944)
!1044 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization18unlock_bucket_pairERNS2_11bucket_pairE", scope: !33, file: !32, line: 560, type: !1045, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !947, size: 64)
!1048 = !{!1049}
!1049 = !DILocalVariable(name: "buckets", arg: 1, scope: !1044, file: !32, line: 560, type: !1047)
!1050 = !DILocation(line: 0, scope: !1044)
!1051 = !DILocation(line: 565, column: 18, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1044, file: !32, line: 565, column: 9)
!1053 = !{!1054, !471, i64 0}
!1054 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11bucket_pairE", !471, i64 0, !471, i64 8}
!1055 = !DILocation(line: 565, column: 35, scope: !1052)
!1056 = !{!1054, !471, i64 8}
!1057 = !DILocation(line: 565, column: 23, scope: !1052)
!1058 = !DILocation(line: 565, column: 9, scope: !1044)
!1059 = !DILocalVariable(name: "this", arg: 1, scope: !1060, type: !601, flags: DIFlagArtificial | DIFlagObjectPointer)
!1060 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9word_lock6unlockEv", scope: !109, file: !32, line: 304, type: !113, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !119, retainedNodes: !1061)
!1061 = !{!1059, !1062, !1063, !1064}
!1062 = !DILocalVariable(name: "val", scope: !1060, file: !32, line: 307, type: !26)
!1063 = !DILocalVariable(name: "no_thread_queuing", scope: !1060, file: !32, line: 310, type: !66)
!1064 = !DILocalVariable(name: "some_queued", scope: !1060, file: !32, line: 312, type: !66)
!1065 = !DILocation(line: 0, scope: !1060, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 566, column: 28, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1052, file: !32, line: 565, column: 39)
!1068 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1066)
!1069 = !DILocalVariable(name: "addr", arg: 1, scope: !1070, file: !32, line: 195, type: !173)
!1070 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_124atomic_fetch_and_releaseEPyy", scope: !626, file: !32, line: 195, type: !868, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1071 = !{!1069, !1072}
!1072 = !DILocalVariable(name: "val", arg: 2, scope: !1070, file: !32, line: 195, type: !26)
!1073 = !DILocation(line: 0, scope: !1070, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1066)
!1075 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1074)
!1076 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1066)
!1077 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1066)
!1078 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1066)
!1079 = distinct !DILexicalBlock(scope: !1060, file: !32, line: 313, column: 13)
!1080 = !DILocation(line: 566, column: 22, scope: !1067)
!1081 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1066)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !32, line: 313, column: 47)
!1083 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1066)
!1084 = !DILocation(line: 567, column: 30, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1052, file: !32, line: 567, column: 16)
!1086 = !DILocation(line: 567, column: 16, scope: !1052)
!1087 = !DILocation(line: 0, scope: !1060, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 568, column: 28, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !32, line: 567, column: 45)
!1090 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1088)
!1091 = !DILocation(line: 0, scope: !1070, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1088)
!1093 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1092)
!1094 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1088)
!1095 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1088)
!1096 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1088)
!1097 = !DILocation(line: 568, column: 22, scope: !1089)
!1098 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1088)
!1099 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1088)
!1100 = !DILocation(line: 569, column: 17, scope: !1089)
!1101 = !DILocation(line: 0, scope: !1060, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 569, column: 26, scope: !1089)
!1103 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1102)
!1104 = !DILocation(line: 0, scope: !1070, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1102)
!1106 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1105)
!1107 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1102)
!1108 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1102)
!1109 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1102)
!1110 = !DILocation(line: 569, column: 20, scope: !1089)
!1111 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1102)
!1112 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1102)
!1113 = !DILocation(line: 0, scope: !1060, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 571, column: 26, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1085, file: !32, line: 570, column: 12)
!1116 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1114)
!1117 = !DILocation(line: 0, scope: !1070, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1114)
!1119 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1118)
!1120 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1114)
!1121 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1114)
!1122 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1114)
!1123 = !DILocation(line: 571, column: 20, scope: !1115)
!1124 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1114)
!1125 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1114)
!1126 = !DILocation(line: 572, column: 17, scope: !1115)
!1127 = !DILocation(line: 0, scope: !1060, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 572, column: 28, scope: !1115)
!1129 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1128)
!1130 = !DILocation(line: 0, scope: !1070, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1128)
!1132 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1131)
!1133 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1128)
!1134 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1128)
!1135 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1128)
!1136 = !DILocation(line: 572, column: 22, scope: !1115)
!1137 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1128)
!1138 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1128)
!1139 = !DILocation(line: 574, column: 1, scope: !1044)
!1140 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization24parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 583, type: !145, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1141 = !{!1142, !1143}
!1142 = !DILocalVariable(name: "control", arg: 1, scope: !1140, file: !32, line: 583, type: !15)
!1143 = !DILocalVariable(name: "action", arg: 2, scope: !1140, file: !32, line: 583, type: !147)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 584, column: 5, scope: !1140)
!1146 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28parking_control_before_sleepEPv", scope: !33, file: !32, line: 586, type: !13, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1147)
!1147 = !{!1148}
!1148 = !DILocalVariable(name: "control", arg: 1, scope: !1146, file: !32, line: 586, type: !15)
!1149 = !DILocation(line: 0, scope: !1146)
!1150 = !DILocation(line: 586, column: 55, scope: !1146)
!1151 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22parking_control_unparkEPvib", scope: !33, file: !32, line: 587, type: !159, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DILocalVariable(name: "control", arg: 1, scope: !1151, file: !32, line: 587, type: !15)
!1154 = !DILocalVariable(name: "unparked", arg: 2, scope: !1151, file: !32, line: 587, type: !161)
!1155 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1151, file: !32, line: 587, type: !66)
!1156 = !DILocation(line: 0, scope: !1151)
!1157 = !DILocation(line: 588, column: 5, scope: !1151)
!1158 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization32parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !33, file: !32, line: 590, type: !164, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DILocalVariable(name: "control", arg: 1, scope: !1158, file: !32, line: 590, type: !15)
!1161 = !DILocalVariable(name: "action", arg: 2, scope: !1158, file: !32, line: 590, type: !166)
!1162 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1158, file: !32, line: 590, type: !66)
!1163 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1158, file: !32, line: 590, type: !66)
!1164 = !DILocation(line: 0, scope: !1158)
!1165 = !DILocation(line: 590, column: 128, scope: !1158)
!1166 = distinct !DISubprogram(name: "park", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization4parkEyRNS2_15parking_controlE", scope: !33, file: !32, line: 605, type: !1167, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!26, !26, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !141, size: 64)
!1170 = !{!1171, !1172, !1173, !1174, !1175}
!1171 = !DILocalVariable(name: "addr", arg: 1, scope: !1166, file: !32, line: 605, type: !26)
!1172 = !DILocalVariable(name: "control", arg: 2, scope: !1166, file: !32, line: 605, type: !1169)
!1173 = !DILocalVariable(name: "queue_data", scope: !1166, file: !32, line: 606, type: !122)
!1174 = !DILocalVariable(name: "bucket", scope: !1166, file: !32, line: 608, type: !906)
!1175 = !DILocalVariable(name: "action", scope: !1166, file: !32, line: 610, type: !148)
!1176 = !DILocation(line: 0, scope: !1166)
!1177 = !DILocation(line: 606, column: 5, scope: !1166)
!1178 = !DILocation(line: 606, column: 16, scope: !1166)
!1179 = !DILocalVariable(name: "this", arg: 1, scope: !1180, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1180 = distinct !DISubprogram(name: "queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataC2Ev", scope: !122, file: !32, line: 455, type: !129, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !128, retainedNodes: !1181)
!1181 = !{!1179}
!1182 = !DILocation(line: 0, scope: !1180, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 606, column: 16, scope: !1166)
!1184 = !DILocation(line: 0, scope: !682, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 455, column: 19, scope: !1180, inlinedAt: !1183)
!1186 = !DILocation(line: 87, column: 10, scope: !682, inlinedAt: !1185)
!1187 = !DILocation(line: 95, column: 26, scope: !692, inlinedAt: !1185)
!1188 = !DILocation(line: 95, column: 9, scope: !692, inlinedAt: !1185)
!1189 = !DILocation(line: 96, column: 25, scope: !692, inlinedAt: !1185)
!1190 = !DILocation(line: 96, column: 9, scope: !692, inlinedAt: !1185)
!1191 = !DILocation(line: 97, column: 21, scope: !692, inlinedAt: !1185)
!1192 = !DILocation(line: 451, column: 15, scope: !1180, inlinedAt: !1183)
!1193 = !{!1194, !1195, i64 40}
!1194 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization10queue_dataE", !689, i64 0, !1195, i64 40, !471, i64 48, !1195, i64 56}
!1195 = !{!"long long", !432, i64 0}
!1196 = !DILocation(line: 452, column: 17, scope: !1180, inlinedAt: !1183)
!1197 = !{!1194, !471, i64 48}
!1198 = !DILocation(line: 453, column: 15, scope: !1180, inlinedAt: !1183)
!1199 = !{!1194, !1195, i64 56}
!1200 = !DILocation(line: 608, column: 27, scope: !1166)
!1201 = !DILocation(line: 610, column: 5, scope: !1166)
!1202 = !DILocation(line: 610, column: 21, scope: !1166)
!1203 = !DILocalVariable(name: "this", arg: 1, scope: !1204, type: !1206, flags: DIFlagArtificial | DIFlagObjectPointer)
!1204 = distinct !DISubprogram(name: "validate_action", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15validate_actionC2Ev", scope: !148, file: !32, line: 580, type: !153, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !152, retainedNodes: !1205)
!1205 = !{!1203}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1207 = !DILocation(line: 0, scope: !1204, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 610, column: 21, scope: !1166)
!1209 = !DILocation(line: 577, column: 10, scope: !1204, inlinedAt: !1208)
!1210 = !{!1211, !690, i64 0}
!1211 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15validate_actionE", !690, i64 0, !1195, i64 8}
!1212 = !DILocation(line: 578, column: 15, scope: !1204, inlinedAt: !1208)
!1213 = !{!1211, !1195, i64 8}
!1214 = !DILocation(line: 611, column: 18, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1166, file: !32, line: 611, column: 9)
!1216 = !{!1217, !471, i64 0}
!1217 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization15parking_controlE", !471, i64 0, !471, i64 8, !471, i64 16, !471, i64 24}
!1218 = !DILocation(line: 611, column: 27, scope: !1215)
!1219 = !DILocation(line: 611, column: 10, scope: !1215)
!1220 = !DILocation(line: 611, column: 9, scope: !1166)
!1221 = !DILocation(line: 0, scope: !1060, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 612, column: 22, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1215, file: !32, line: 611, column: 46)
!1224 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1222)
!1225 = !DILocation(line: 0, scope: !1070, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1222)
!1227 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1226)
!1228 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1222)
!1229 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1222)
!1230 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1222)
!1231 = !DILocation(line: 612, column: 16, scope: !1223)
!1232 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1222)
!1233 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1222)
!1234 = !DILocation(line: 616, column: 21, scope: !1166)
!1235 = !DILocation(line: 617, column: 30, scope: !1166)
!1236 = !DILocation(line: 0, scope: !702, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 618, column: 23, scope: !1166)
!1238 = !DILocation(line: 106, column: 21, scope: !702, inlinedAt: !1237)
!1239 = !DILocation(line: 619, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1166, file: !32, line: 619, column: 9)
!1241 = !{!1242, !471, i64 8}
!1242 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization11hash_bucketE", !1243, i64 0, !471, i64 8, !471, i64 16}
!1243 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization9word_lockE", !1195, i64 0}
!1244 = !DILocation(line: 619, column: 21, scope: !1240)
!1245 = !DILocation(line: 619, column: 9, scope: !1166)
!1246 = !DILocation(line: 0, scope: !1240)
!1247 = !DILocation(line: 624, column: 12, scope: !1166)
!1248 = !DILocation(line: 624, column: 17, scope: !1166)
!1249 = !{!1242, !471, i64 16}
!1250 = !DILocation(line: 0, scope: !1060, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 625, column: 18, scope: !1166)
!1252 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1251)
!1253 = !DILocation(line: 0, scope: !1070, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1251)
!1255 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1254)
!1256 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1251)
!1257 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1251)
!1258 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1251)
!1259 = !DILocation(line: 625, column: 12, scope: !1166)
!1260 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1251)
!1261 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1251)
!1262 = !DILocation(line: 627, column: 13, scope: !1166)
!1263 = !{!1217, !471, i64 8}
!1264 = !DILocation(line: 627, column: 5, scope: !1166)
!1265 = !DILocation(line: 0, scope: !730, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 629, column: 23, scope: !1166)
!1267 = !DILocation(line: 110, column: 9, scope: !730, inlinedAt: !1266)
!1268 = !DILocation(line: 111, column: 16, scope: !730, inlinedAt: !1266)
!1269 = !DILocation(line: 111, column: 9, scope: !730, inlinedAt: !1266)
!1270 = !DILocation(line: 112, column: 13, scope: !740, inlinedAt: !1266)
!1271 = distinct !{!1271, !1269, !1272, !743}
!1272 = !DILocation(line: 113, column: 9, scope: !730, inlinedAt: !1266)
!1273 = !DILocation(line: 114, column: 9, scope: !730, inlinedAt: !1266)
!1274 = !DILocation(line: 631, column: 5, scope: !1166)
!1275 = !{!1195, !1195, i64 0}
!1276 = !DILocation(line: 634, column: 1, scope: !1166)
!1277 = !DILocalVariable(name: "this", arg: 1, scope: !1278, type: !121, flags: DIFlagArtificial | DIFlagObjectPointer)
!1278 = distinct !DISubprogram(name: "~queue_data", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10queue_dataD2Ev", scope: !122, file: !32, line: 457, type: !129, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !132, retainedNodes: !1279)
!1279 = !{!1277}
!1280 = !DILocation(line: 0, scope: !1278, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 634, column: 1, scope: !1166)
!1282 = !DILocation(line: 0, scope: !755, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 457, column: 41, scope: !1284, inlinedAt: !1281)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !32, line: 457, column: 41)
!1285 = !DILocation(line: 101, column: 9, scope: !761, inlinedAt: !1283)
!1286 = !DILocation(line: 102, column: 9, scope: !761, inlinedAt: !1283)
!1287 = distinct !DISubprogram(name: "unpark_one", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_oneEyRNS2_15parking_controlE", scope: !33, file: !32, line: 636, type: !1167, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1297, !1300, !1301, !1304}
!1289 = !DILocalVariable(name: "addr", arg: 1, scope: !1287, file: !32, line: 636, type: !26)
!1290 = !DILocalVariable(name: "control", arg: 2, scope: !1287, file: !32, line: 636, type: !1169)
!1291 = !DILocalVariable(name: "bucket", scope: !1287, file: !32, line: 637, type: !906)
!1292 = !DILocalVariable(name: "data_location", scope: !1287, file: !32, line: 639, type: !136)
!1293 = !DILocalVariable(name: "prev", scope: !1287, file: !32, line: 640, type: !121)
!1294 = !DILocalVariable(name: "data", scope: !1287, file: !32, line: 641, type: !121)
!1295 = !DILocalVariable(name: "cur_addr", scope: !1296, file: !32, line: 643, type: !26)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !32, line: 642, column: 29)
!1297 = !DILocalVariable(name: "next", scope: !1298, file: !32, line: 646, type: !121)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !32, line: 645, column: 31)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !32, line: 645, column: 13)
!1300 = !DILocalVariable(name: "more_waiters", scope: !1298, file: !32, line: 649, type: !66)
!1301 = !DILocalVariable(name: "data2", scope: !1302, file: !32, line: 654, type: !121)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !32, line: 653, column: 20)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !32, line: 651, column: 17)
!1304 = !DILocalVariable(name: "cur_addr2", scope: !1305, file: !32, line: 656, type: !26)
!1305 = distinct !DILexicalBlock(scope: !1302, file: !32, line: 655, column: 59)
!1306 = !DILocation(line: 0, scope: !1287)
!1307 = !DILocation(line: 637, column: 27, scope: !1287)
!1308 = !DILocation(line: 639, column: 42, scope: !1287)
!1309 = !DILocation(line: 641, column: 24, scope: !1287)
!1310 = !DILocation(line: 642, column: 5, scope: !1287)
!1311 = !DILocation(line: 639, column: 18, scope: !1287)
!1312 = !DILocation(line: 640, column: 17, scope: !1287)
!1313 = !DILocation(line: 641, column: 17, scope: !1287)
!1314 = !DILocation(line: 642, column: 17, scope: !1287)
!1315 = !DILocation(line: 644, column: 36, scope: !1296)
!1316 = !DILocation(line: 0, scope: !625, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 644, column: 9, scope: !1296)
!1318 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1317)
!1319 = !DILocation(line: 0, scope: !1296)
!1320 = !DILocation(line: 645, column: 22, scope: !1299)
!1321 = !DILocation(line: 0, scope: !1299)
!1322 = !DILocation(line: 645, column: 13, scope: !1296)
!1323 = !DILocation(line: 0, scope: !1298)
!1324 = !DILocation(line: 647, column: 28, scope: !1298)
!1325 = !DILocation(line: 651, column: 24, scope: !1303)
!1326 = !DILocation(line: 651, column: 29, scope: !1303)
!1327 = !DILocation(line: 651, column: 17, scope: !1298)
!1328 = !DILocation(line: 0, scope: !1302)
!1329 = !DILocation(line: 655, column: 30, scope: !1302)
!1330 = !DILocation(line: 655, column: 17, scope: !1302)
!1331 = !DILocation(line: 652, column: 29, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1303, file: !32, line: 651, column: 38)
!1333 = !DILocation(line: 653, column: 13, scope: !1332)
!1334 = !DILocation(line: 657, column: 49, scope: !1305)
!1335 = !DILocation(line: 0, scope: !625, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 657, column: 21, scope: !1305)
!1337 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1336)
!1338 = !DILocation(line: 0, scope: !1305)
!1339 = !DILocation(line: 658, column: 47, scope: !1305)
!1340 = !DILocation(line: 659, column: 36, scope: !1305)
!1341 = !DILocation(line: 655, column: 41, scope: !1302)
!1342 = distinct !{!1342, !1330, !1343, !743}
!1343 = !DILocation(line: 660, column: 17, scope: !1302)
!1344 = !DILocation(line: 658, column: 34, scope: !1305)
!1345 = !DILocation(line: 663, column: 41, scope: !1298)
!1346 = !DILocation(line: 649, column: 18, scope: !1298)
!1347 = !{!1217, !471, i64 16}
!1348 = !DILocation(line: 663, column: 61, scope: !1298)
!1349 = !DILocation(line: 663, column: 33, scope: !1298)
!1350 = !DILocation(line: 663, column: 19, scope: !1298)
!1351 = !DILocation(line: 663, column: 31, scope: !1298)
!1352 = !DILocation(line: 0, scope: !876, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 665, column: 26, scope: !1298)
!1354 = !DILocation(line: 118, column: 26, scope: !876, inlinedAt: !1353)
!1355 = !DILocation(line: 118, column: 9, scope: !876, inlinedAt: !1353)
!1356 = !DILocation(line: 0, scope: !1060, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 666, column: 26, scope: !1298)
!1358 = !DILocation(line: 0, scope: !1070, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1357)
!1360 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1359)
!1361 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1357)
!1362 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1357)
!1363 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1357)
!1364 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1357)
!1365 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1357)
!1366 = !DILocation(line: 0, scope: !883, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 667, column: 26, scope: !1298)
!1368 = !DILocation(line: 122, column: 9, scope: !883, inlinedAt: !1367)
!1369 = !DILocation(line: 122, column: 21, scope: !883, inlinedAt: !1367)
!1370 = !DILocation(line: 123, column: 27, scope: !883, inlinedAt: !1367)
!1371 = !DILocation(line: 123, column: 9, scope: !883, inlinedAt: !1367)
!1372 = !DILocation(line: 0, scope: !892, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 668, column: 26, scope: !1298)
!1374 = !DILocation(line: 127, column: 9, scope: !892, inlinedAt: !1373)
!1375 = distinct !{!1375, !1310, !1376, !743}
!1376 = !DILocation(line: 677, column: 5, scope: !1287)
!1377 = !DILocation(line: 679, column: 13, scope: !1287)
!1378 = !DILocation(line: 679, column: 5, scope: !1287)
!1379 = !DILocation(line: 0, scope: !1060, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 681, column: 18, scope: !1287)
!1381 = !DILocation(line: 0, scope: !1070, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1380)
!1383 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1382)
!1384 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1380)
!1385 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1380)
!1386 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1380)
!1387 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1380)
!1388 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1380)
!1389 = !DILocation(line: 685, column: 1, scope: !1287)
!1390 = distinct !DISubprogram(name: "unpark_all", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10unpark_allEyy", scope: !33, file: !32, line: 687, type: !1391, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!26, !26, !26}
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1402, !1404, !1405, !1406, !1408, !1409, !1414, !1416, !1418}
!1394 = !DILocalVariable(name: "addr", arg: 1, scope: !1390, file: !32, line: 687, type: !26)
!1395 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1390, file: !32, line: 687, type: !26)
!1396 = !DILocalVariable(name: "bucket", scope: !1390, file: !32, line: 688, type: !906)
!1397 = !DILocalVariable(name: "data_location", scope: !1390, file: !32, line: 690, type: !136)
!1398 = !DILocalVariable(name: "prev", scope: !1390, file: !32, line: 691, type: !121)
!1399 = !DILocalVariable(name: "data", scope: !1390, file: !32, line: 692, type: !121)
!1400 = !DILocalVariable(name: "waiters", scope: !1390, file: !32, line: 693, type: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 27, baseType: !553)
!1402 = !DILocalVariable(name: "temp_list_storage", scope: !1390, file: !32, line: 694, type: !1403)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !454)
!1404 = !DILocalVariable(name: "temp_list", scope: !1390, file: !32, line: 695, type: !136)
!1405 = !DILocalVariable(name: "max_waiters", scope: !1390, file: !32, line: 696, type: !1401)
!1406 = !DILocalVariable(name: "cur_addr", scope: !1407, file: !32, line: 699, type: !26)
!1407 = distinct !DILexicalBlock(scope: !1390, file: !32, line: 698, column: 29)
!1408 = !DILocalVariable(name: "next", scope: !1407, file: !32, line: 702, type: !121)
!1409 = !DILocalVariable(name: "temp", scope: !1410, file: !32, line: 711, type: !136)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !32, line: 710, column: 41)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !32, line: 710, column: 17)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !32, line: 703, column: 31)
!1413 = distinct !DILexicalBlock(scope: !1407, file: !32, line: 703, column: 13)
!1414 = !DILocalVariable(name: "i", scope: !1415, file: !32, line: 713, type: !1401)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !32, line: 713, column: 17)
!1416 = !DILocalVariable(name: "i", scope: !1417, file: !32, line: 737, type: !1401)
!1417 = distinct !DILexicalBlock(scope: !1390, file: !32, line: 737, column: 5)
!1418 = !DILocalVariable(name: "i", scope: !1419, file: !32, line: 742, type: !1401)
!1419 = distinct !DILexicalBlock(scope: !1390, file: !32, line: 742, column: 5)
!1420 = !DILocation(line: 0, scope: !1390)
!1421 = !DILocation(line: 688, column: 27, scope: !1390)
!1422 = !DILocation(line: 690, column: 42, scope: !1390)
!1423 = !DILocation(line: 692, column: 24, scope: !1390)
!1424 = !DILocation(line: 694, column: 5, scope: !1390)
!1425 = !DILocation(line: 694, column: 17, scope: !1390)
!1426 = !DILocation(line: 695, column: 31, scope: !1390)
!1427 = !DILocation(line: 698, column: 17, scope: !1390)
!1428 = !DILocation(line: 698, column: 5, scope: !1390)
!1429 = !DILocation(line: 700, column: 36, scope: !1407)
!1430 = !DILocation(line: 0, scope: !625, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 700, column: 9, scope: !1407)
!1432 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1431)
!1433 = !DILocation(line: 702, column: 34, scope: !1407)
!1434 = !DILocation(line: 0, scope: !1407)
!1435 = !DILocation(line: 703, column: 22, scope: !1413)
!1436 = !DILocation(line: 0, scope: !1413)
!1437 = !DILocation(line: 703, column: 13, scope: !1407)
!1438 = !DILocation(line: 706, column: 24, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1412, file: !32, line: 706, column: 17)
!1440 = !DILocation(line: 706, column: 29, scope: !1439)
!1441 = !DILocation(line: 706, column: 17, scope: !1412)
!1442 = !DILocation(line: 707, column: 29, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !32, line: 706, column: 38)
!1444 = !DILocation(line: 708, column: 13, scope: !1443)
!1445 = !DILocation(line: 710, column: 25, scope: !1411)
!1446 = !DILocation(line: 710, column: 17, scope: !1412)
!1447 = !DILocation(line: 0, scope: !1410)
!1448 = !DILocation(line: 712, column: 86, scope: !1410)
!1449 = !DILocation(line: 712, column: 44, scope: !1410)
!1450 = !DILocation(line: 712, column: 29, scope: !1410)
!1451 = !DILocation(line: 0, scope: !1415)
!1452 = !DILocation(line: 713, column: 38, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1415, file: !32, line: 713, column: 17)
!1454 = !DILocation(line: 713, column: 17, scope: !1415)
!1455 = !DILocation(line: 716, column: 29, scope: !1410)
!1456 = !DILocation(line: 717, column: 26, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1410, file: !32, line: 717, column: 21)
!1458 = !DILocation(line: 717, column: 21, scope: !1410)
!1459 = !DILocation(line: 714, column: 36, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1453, file: !32, line: 713, column: 58)
!1461 = !DILocation(line: 714, column: 21, scope: !1460)
!1462 = !DILocation(line: 714, column: 34, scope: !1460)
!1463 = !DILocation(line: 713, column: 54, scope: !1453)
!1464 = distinct !{!1464, !1454, !1465, !743}
!1465 = !DILocation(line: 715, column: 17, scope: !1415)
!1466 = !DILocation(line: 718, column: 26, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1457, file: !32, line: 717, column: 52)
!1468 = !DILocation(line: 718, column: 21, scope: !1467)
!1469 = !DILocation(line: 719, column: 17, scope: !1467)
!1470 = !DILocation(line: 722, column: 19, scope: !1412)
!1471 = !DILocation(line: 722, column: 31, scope: !1412)
!1472 = !DILocation(line: 724, column: 30, scope: !1412)
!1473 = !DILocation(line: 724, column: 13, scope: !1412)
!1474 = !DILocation(line: 724, column: 34, scope: !1412)
!1475 = !DILocation(line: 0, scope: !876, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 725, column: 26, scope: !1412)
!1477 = !DILocation(line: 118, column: 26, scope: !876, inlinedAt: !1476)
!1478 = !DILocation(line: 118, column: 9, scope: !876, inlinedAt: !1476)
!1479 = !DILocation(line: 728, column: 9, scope: !1412)
!1480 = distinct !{!1480, !1428, !1481, !743}
!1481 = !DILocation(line: 733, column: 5, scope: !1390)
!1482 = !DILocation(line: 0, scope: !1060, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 735, column: 18, scope: !1390)
!1484 = !DILocation(line: 307, column: 51, scope: !1060, inlinedAt: !1483)
!1485 = !DILocation(line: 0, scope: !1070, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 307, column: 25, scope: !1060, inlinedAt: !1483)
!1487 = !DILocation(line: 196, column: 12, scope: !1070, inlinedAt: !1486)
!1488 = !DILocation(line: 310, column: 39, scope: !1060, inlinedAt: !1483)
!1489 = !DILocation(line: 310, column: 57, scope: !1060, inlinedAt: !1483)
!1490 = !DILocation(line: 313, column: 31, scope: !1079, inlinedAt: !1483)
!1491 = !DILocation(line: 735, column: 12, scope: !1390)
!1492 = !DILocation(line: 314, column: 13, scope: !1082, inlinedAt: !1483)
!1493 = !DILocation(line: 315, column: 9, scope: !1082, inlinedAt: !1483)
!1494 = !DILocation(line: 0, scope: !1417)
!1495 = !DILocation(line: 737, column: 26, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1417, file: !32, line: 737, column: 5)
!1497 = !DILocation(line: 737, column: 5, scope: !1417)
!1498 = !DILocation(line: 0, scope: !1419)
!1499 = !DILocation(line: 742, column: 5, scope: !1419)
!1500 = !DILocation(line: 738, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !32, line: 737, column: 42)
!1502 = !DILocation(line: 0, scope: !883, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 738, column: 30, scope: !1501)
!1504 = !DILocation(line: 122, column: 9, scope: !883, inlinedAt: !1503)
!1505 = !DILocation(line: 122, column: 21, scope: !883, inlinedAt: !1503)
!1506 = !DILocation(line: 123, column: 27, scope: !883, inlinedAt: !1503)
!1507 = !DILocation(line: 123, column: 9, scope: !883, inlinedAt: !1503)
!1508 = !DILocation(line: 737, column: 38, scope: !1496)
!1509 = distinct !{!1509, !1497, !1510, !743}
!1510 = !DILocation(line: 739, column: 5, scope: !1417)
!1511 = !DILocation(line: 746, column: 19, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1390, file: !32, line: 746, column: 9)
!1513 = !DILocation(line: 746, column: 9, scope: !1390)
!1514 = !DILocation(line: 743, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !32, line: 742, column: 42)
!1516 = distinct !DILexicalBlock(scope: !1419, file: !32, line: 742, column: 5)
!1517 = !DILocation(line: 0, scope: !892, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 743, column: 30, scope: !1515)
!1519 = !DILocation(line: 127, column: 28, scope: !892, inlinedAt: !1518)
!1520 = !DILocation(line: 127, column: 9, scope: !892, inlinedAt: !1518)
!1521 = !DILocation(line: 742, column: 38, scope: !1516)
!1522 = !DILocation(line: 742, column: 26, scope: !1516)
!1523 = distinct !{!1523, !1499, !1524, !743}
!1524 = !DILocation(line: 744, column: 5, scope: !1419)
!1525 = !DILocation(line: 747, column: 14, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1512, file: !32, line: 746, column: 45)
!1527 = !DILocation(line: 747, column: 9, scope: !1526)
!1528 = !DILocation(line: 748, column: 5, scope: !1526)
!1529 = !DILocation(line: 751, column: 1, scope: !1390)
!1530 = !DILocation(line: 750, column: 5, scope: !1390)
!1531 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization14unpark_requeueEyyRNS2_15parking_controlEy", scope: !33, file: !32, line: 753, type: !1532, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1534)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!161, !26, !26, !1169, !26}
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1549}
!1535 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1531, file: !32, line: 753, type: !26)
!1536 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1531, file: !32, line: 753, type: !26)
!1537 = !DILocalVariable(name: "control", arg: 3, scope: !1531, file: !32, line: 753, type: !1169)
!1538 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1531, file: !32, line: 753, type: !26)
!1539 = !DILocalVariable(name: "buckets", scope: !1531, file: !32, line: 754, type: !947)
!1540 = !DILocalVariable(name: "action", scope: !1531, file: !32, line: 756, type: !148)
!1541 = !DILocalVariable(name: "data_location", scope: !1531, file: !32, line: 762, type: !136)
!1542 = !DILocalVariable(name: "prev", scope: !1531, file: !32, line: 763, type: !121)
!1543 = !DILocalVariable(name: "data", scope: !1531, file: !32, line: 764, type: !121)
!1544 = !DILocalVariable(name: "requeue", scope: !1531, file: !32, line: 765, type: !121)
!1545 = !DILocalVariable(name: "requeue_tail", scope: !1531, file: !32, line: 766, type: !121)
!1546 = !DILocalVariable(name: "wakeup", scope: !1531, file: !32, line: 767, type: !121)
!1547 = !DILocalVariable(name: "cur_addr", scope: !1548, file: !32, line: 770, type: !26)
!1548 = distinct !DILexicalBlock(scope: !1531, file: !32, line: 769, column: 29)
!1549 = !DILocalVariable(name: "next", scope: !1548, file: !32, line: 773, type: !121)
!1550 = !DILocation(line: 0, scope: !1531)
!1551 = !DILocation(line: 754, column: 5, scope: !1531)
!1552 = !DILocation(line: 754, column: 17, scope: !1531)
!1553 = !DILocation(line: 754, column: 27, scope: !1531)
!1554 = !DILocation(line: 756, column: 5, scope: !1531)
!1555 = !DILocation(line: 756, column: 21, scope: !1531)
!1556 = !DILocation(line: 0, scope: !1204, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 756, column: 21, scope: !1531)
!1558 = !DILocation(line: 577, column: 10, scope: !1204, inlinedAt: !1557)
!1559 = !DILocation(line: 578, column: 15, scope: !1204, inlinedAt: !1557)
!1560 = !DILocation(line: 757, column: 18, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1531, file: !32, line: 757, column: 9)
!1562 = !DILocation(line: 757, column: 27, scope: !1561)
!1563 = !DILocation(line: 757, column: 10, scope: !1561)
!1564 = !DILocation(line: 757, column: 9, scope: !1531)
!1565 = !DILocation(line: 758, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !32, line: 757, column: 46)
!1567 = !DILocation(line: 759, column: 9, scope: !1566)
!1568 = !DILocation(line: 762, column: 43, scope: !1531)
!1569 = !DILocation(line: 762, column: 48, scope: !1531)
!1570 = !DILocation(line: 764, column: 24, scope: !1531)
!1571 = !DILocation(line: 769, column: 17, scope: !1531)
!1572 = !DILocation(line: 769, column: 5, scope: !1531)
!1573 = !DILocation(line: 771, column: 36, scope: !1548)
!1574 = !DILocation(line: 0, scope: !625, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 771, column: 9, scope: !1548)
!1576 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1575)
!1577 = !DILocation(line: 773, column: 34, scope: !1548)
!1578 = !DILocation(line: 0, scope: !1548)
!1579 = !DILocation(line: 774, column: 22, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1548, file: !32, line: 774, column: 13)
!1581 = !DILocation(line: 774, column: 13, scope: !1548)
!1582 = !DILocation(line: 775, column: 28, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !32, line: 774, column: 36)
!1584 = !DILocation(line: 777, column: 25, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !32, line: 777, column: 17)
!1586 = !DILocation(line: 777, column: 30, scope: !1585)
!1587 = !DILocation(line: 777, column: 35, scope: !1585)
!1588 = !DILocation(line: 777, column: 17, scope: !1583)
!1589 = !DILocation(line: 778, column: 35, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !32, line: 777, column: 44)
!1591 = !DILocation(line: 779, column: 13, scope: !1590)
!1592 = !DILocation(line: 781, column: 24, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1583, file: !32, line: 781, column: 17)
!1594 = !DILocation(line: 781, column: 35, scope: !1593)
!1595 = !DILocation(line: 784, column: 29, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !32, line: 784, column: 21)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !32, line: 783, column: 20)
!1598 = !DILocation(line: 784, column: 21, scope: !1597)
!1599 = !DILocation(line: 787, column: 35, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !32, line: 786, column: 24)
!1601 = !DILocation(line: 787, column: 40, scope: !1600)
!1602 = !DILocalVariable(name: "addr", arg: 1, scope: !1603, file: !32, line: 213, type: !173)
!1603 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_relaxedEPyS4_", scope: !626, file: !32, line: 213, type: !1604, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !173, !173}
!1606 = !{!1602, !1607}
!1607 = !DILocalVariable(name: "val", arg: 2, scope: !1603, file: !32, line: 213, type: !173)
!1608 = !DILocation(line: 0, scope: !1603, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 791, column: 17, scope: !1597)
!1610 = !DILocation(line: 214, column: 5, scope: !1603, inlinedAt: !1609)
!1611 = !DILocation(line: 765, column: 17, scope: !1531)
!1612 = !DILocation(line: 766, column: 17, scope: !1531)
!1613 = distinct !{!1613, !1572, !1614, !743}
!1614 = !DILocation(line: 800, column: 5, scope: !1531)
!1615 = !DILocation(line: 802, column: 17, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1531, file: !32, line: 802, column: 9)
!1617 = !DILocation(line: 802, column: 9, scope: !1531)
!1618 = !DILocation(line: 803, column: 23, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !32, line: 802, column: 29)
!1620 = !DILocation(line: 803, column: 28, scope: !1619)
!1621 = !DILocation(line: 804, column: 21, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !32, line: 804, column: 13)
!1623 = !DILocation(line: 804, column: 24, scope: !1622)
!1624 = !DILocation(line: 804, column: 29, scope: !1622)
!1625 = !DILocation(line: 804, column: 13, scope: !1619)
!1626 = !DILocation(line: 807, column: 24, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !32, line: 806, column: 16)
!1628 = !DILocation(line: 807, column: 30, scope: !1627)
!1629 = !DILocation(line: 0, scope: !1622)
!1630 = !DILocation(line: 809, column: 20, scope: !1619)
!1631 = !DILocation(line: 809, column: 25, scope: !1619)
!1632 = !DILocation(line: 810, column: 5, scope: !1619)
!1633 = !DILocation(line: 812, column: 13, scope: !1531)
!1634 = !{!1217, !471, i64 24}
!1635 = !DILocation(line: 812, column: 55, scope: !1531)
!1636 = !DILocation(line: 812, column: 5, scope: !1531)
!1637 = !DILocation(line: 814, column: 9, scope: !1531)
!1638 = !DILocation(line: 815, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !32, line: 814, column: 28)
!1640 = distinct !DILexicalBlock(scope: !1531, file: !32, line: 814, column: 9)
!1641 = !DILocation(line: 815, column: 29, scope: !1639)
!1642 = !DILocation(line: 0, scope: !876, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 816, column: 24, scope: !1639)
!1644 = !DILocation(line: 118, column: 26, scope: !876, inlinedAt: !1643)
!1645 = !DILocation(line: 118, column: 9, scope: !876, inlinedAt: !1643)
!1646 = !DILocation(line: 817, column: 9, scope: !1639)
!1647 = !DILocation(line: 0, scope: !883, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 818, column: 24, scope: !1639)
!1649 = !DILocation(line: 122, column: 9, scope: !883, inlinedAt: !1648)
!1650 = !DILocation(line: 122, column: 21, scope: !883, inlinedAt: !1648)
!1651 = !DILocation(line: 123, column: 27, scope: !883, inlinedAt: !1648)
!1652 = !DILocation(line: 123, column: 9, scope: !883, inlinedAt: !1648)
!1653 = !DILocation(line: 0, scope: !892, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 819, column: 24, scope: !1639)
!1655 = !DILocation(line: 127, column: 9, scope: !892, inlinedAt: !1654)
!1656 = !DILocation(line: 820, column: 5, scope: !1639)
!1657 = !DILocation(line: 821, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1640, file: !32, line: 820, column: 12)
!1659 = !DILocation(line: 824, column: 30, scope: !1531)
!1660 = !DILocation(line: 824, column: 12, scope: !1531)
!1661 = !DILocation(line: 825, column: 1, scope: !1531)
!1662 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization30mutex_parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 840, type: !145, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1663)
!1663 = !{!1664, !1665, !1666, !1667}
!1664 = !DILocalVariable(name: "control", arg: 1, scope: !1662, file: !32, line: 840, type: !15)
!1665 = !DILocalVariable(name: "action", arg: 2, scope: !1662, file: !32, line: 840, type: !147)
!1666 = !DILocalVariable(name: "mutex_control", scope: !1662, file: !32, line: 841, type: !137)
!1667 = !DILocalVariable(name: "result", scope: !1662, file: !32, line: 843, type: !26)
!1668 = !DILocation(line: 0, scope: !1662)
!1669 = !DILocation(line: 844, column: 40, scope: !1662)
!1670 = !{!1671, !471, i64 32}
!1671 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlE", !471, i64 32}
!1672 = !DILocation(line: 0, scope: !625, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 844, column: 5, scope: !1662)
!1674 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1673)
!1675 = !DILocation(line: 845, column: 19, scope: !1662)
!1676 = !DILocation(line: 845, column: 5, scope: !1662)
!1677 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization28mutex_parking_control_unparkEPvib", scope: !33, file: !32, line: 849, type: !159, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683}
!1679 = !DILocalVariable(name: "control", arg: 1, scope: !1677, file: !32, line: 849, type: !15)
!1680 = !DILocalVariable(name: "unparked", arg: 2, scope: !1677, file: !32, line: 849, type: !161)
!1681 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1677, file: !32, line: 849, type: !66)
!1682 = !DILocalVariable(name: "mutex_control", scope: !1677, file: !32, line: 850, type: !137)
!1683 = !DILocalVariable(name: "return_state", scope: !1677, file: !32, line: 853, type: !26)
!1684 = !DILocation(line: 0, scope: !1677)
!1685 = !DILocation(line: 853, column: 30, scope: !1677)
!1686 = !DILocation(line: 854, column: 41, scope: !1677)
!1687 = !DILocalVariable(name: "addr", arg: 1, scope: !1688, file: !32, line: 218, type: !629)
!1688 = distinct !DISubprogram(name: "atomic_store_release<unsigned long long>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIyEEvPT_S6_", scope: !626, file: !32, line: 218, type: !627, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !632, retainedNodes: !1689)
!1689 = !{!1687, !1690}
!1690 = !DILocalVariable(name: "val", arg: 2, scope: !1688, file: !32, line: 218, type: !629)
!1691 = !DILocation(line: 0, scope: !1688, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 854, column: 5, scope: !1677)
!1693 = !DILocation(line: 219, column: 5, scope: !1688, inlinedAt: !1692)
!1694 = !DILocation(line: 856, column: 5, scope: !1677)
!1695 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29signal_parking_control_unparkEPvib", scope: !33, file: !32, line: 968, type: !159, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701}
!1697 = !DILocalVariable(name: "control", arg: 1, scope: !1695, file: !32, line: 968, type: !15)
!1698 = !DILocalVariable(name: "unparked", arg: 2, scope: !1695, file: !32, line: 968, type: !161)
!1699 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1695, file: !32, line: 968, type: !66)
!1700 = !DILocalVariable(name: "signal_control", scope: !1695, file: !32, line: 969, type: !178)
!1701 = !DILocalVariable(name: "val", scope: !1702, file: !32, line: 972, type: !26)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !32, line: 971, column: 24)
!1703 = distinct !DILexicalBlock(scope: !1695, file: !32, line: 971, column: 9)
!1704 = !DILocation(line: 0, scope: !1695)
!1705 = !DILocation(line: 971, column: 9, scope: !1695)
!1706 = !DILocation(line: 0, scope: !1702)
!1707 = !DILocation(line: 973, column: 46, scope: !1702)
!1708 = !{!1709, !471, i64 32}
!1709 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization22signal_parking_controlE", !471, i64 32, !471, i64 40}
!1710 = !DILocation(line: 0, scope: !1603, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 973, column: 9, scope: !1702)
!1712 = !DILocation(line: 214, column: 5, scope: !1603, inlinedAt: !1711)
!1713 = !DILocation(line: 974, column: 5, scope: !1702)
!1714 = !DILocation(line: 979, column: 5, scope: !1695)
!1715 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization34broadcast_parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 996, type: !145, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1716 = !{!1717, !1718, !1719, !1720}
!1717 = !DILocalVariable(name: "control", arg: 1, scope: !1715, file: !32, line: 996, type: !15)
!1718 = !DILocalVariable(name: "action", arg: 2, scope: !1715, file: !32, line: 996, type: !147)
!1719 = !DILocalVariable(name: "broadcast_control", scope: !1715, file: !32, line: 997, type: !203)
!1720 = !DILocalVariable(name: "val", scope: !1715, file: !32, line: 999, type: !26)
!1721 = !DILocation(line: 0, scope: !1715)
!1722 = !DILocation(line: 1000, column: 44, scope: !1715)
!1723 = !{!1724, !471, i64 32}
!1724 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlE", !471, i64 32, !471, i64 40}
!1725 = !DILocation(line: 0, scope: !625, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 1000, column: 5, scope: !1715)
!1727 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1726)
!1728 = !DILocation(line: 1004, column: 46, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1715, file: !32, line: 1004, column: 9)
!1730 = !{!1724, !471, i64 40}
!1731 = !DILocation(line: 1004, column: 16, scope: !1729)
!1732 = !DILocation(line: 1004, column: 13, scope: !1729)
!1733 = !DILocation(line: 1004, column: 9, scope: !1715)
!1734 = !DILocation(line: 0, scope: !1603, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 1009, column: 5, scope: !1715)
!1736 = !DILocation(line: 214, column: 5, scope: !1603, inlinedAt: !1735)
!1737 = !DILocation(line: 1011, column: 45, scope: !1715)
!1738 = !DILocalVariable(name: "this", arg: 1, scope: !1739, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1739 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex21make_parked_if_lockedEv", scope: !185, file: !32, line: 938, type: !196, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !195, retainedNodes: !1740)
!1740 = !{!1738, !1741, !1742}
!1741 = !DILocalVariable(name: "val", scope: !1739, file: !32, line: 939, type: !26)
!1742 = !DILocalVariable(name: "desired", scope: !1743, file: !32, line: 946, type: !26)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !32, line: 941, column: 22)
!1744 = !DILocation(line: 0, scope: !1739, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 1011, column: 52, scope: !1715)
!1746 = !DILocation(line: 940, column: 30, scope: !1739, inlinedAt: !1745)
!1747 = !DILocation(line: 0, scope: !625, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 940, column: 9, scope: !1739, inlinedAt: !1745)
!1749 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1748)
!1750 = !DILocation(line: 942, column: 23, scope: !1751, inlinedAt: !1745)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !32, line: 942, column: 17)
!1752 = !DILocation(line: 942, column: 18, scope: !1751, inlinedAt: !1745)
!1753 = !DILocation(line: 942, column: 17, scope: !1743, inlinedAt: !1745)
!1754 = !DILocation(line: 946, column: 37, scope: !1743, inlinedAt: !1745)
!1755 = !DILocation(line: 0, scope: !1743, inlinedAt: !1745)
!1756 = !DILocalVariable(name: "addr", arg: 1, scope: !1757, file: !32, line: 187, type: !173)
!1757 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_131atomic_cas_weak_relaxed_relaxedEPyS4_S4_", scope: !626, file: !32, line: 187, type: !645, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1758 = !{!1756, !1759, !1760}
!1759 = !DILocalVariable(name: "expected", arg: 2, scope: !1757, file: !32, line: 187, type: !173)
!1760 = !DILocalVariable(name: "desired", arg: 3, scope: !1757, file: !32, line: 187, type: !173)
!1761 = !DILocation(line: 0, scope: !1757, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 947, column: 17, scope: !1763, inlinedAt: !1745)
!1763 = distinct !DILexicalBlock(scope: !1743, file: !32, line: 947, column: 17)
!1764 = !DILocation(line: 188, column: 12, scope: !1757, inlinedAt: !1762)
!1765 = !DILocation(line: 1011, column: 12, scope: !1715)
!1766 = !DILocation(line: 1011, column: 23, scope: !1715)
!1767 = !DILocation(line: 1013, column: 5, scope: !1715)
!1768 = !DILocation(line: 1014, column: 1, scope: !1715)
!1769 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization42broadcast_parking_control_requeue_callbackEPvRKNS2_15validate_actionEbb", scope: !33, file: !32, line: 1016, type: !164, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775}
!1771 = !DILocalVariable(name: "control", arg: 1, scope: !1769, file: !32, line: 1016, type: !15)
!1772 = !DILocalVariable(name: "action", arg: 2, scope: !1769, file: !32, line: 1016, type: !166)
!1773 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1769, file: !32, line: 1016, type: !66)
!1774 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1769, file: !32, line: 1016, type: !66)
!1775 = !DILocalVariable(name: "broadcast_control", scope: !1769, file: !32, line: 1017, type: !203)
!1776 = !DILocation(line: 0, scope: !1769)
!1777 = !DILocation(line: 1019, column: 16, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1769, file: !32, line: 1019, column: 9)
!1779 = !DILocation(line: 1019, column: 27, scope: !1778)
!1780 = !DILocation(line: 1020, column: 28, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1778, file: !32, line: 1019, column: 45)
!1782 = !DILocalVariable(name: "this", arg: 1, scope: !1783, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1783 = distinct !DISubprogram(name: "make_parked", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11make_parkedEv", scope: !185, file: !32, line: 953, type: !189, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !198, retainedNodes: !1784)
!1784 = !{!1782}
!1785 = !DILocation(line: 0, scope: !1783, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 1020, column: 35, scope: !1781)
!1787 = !DILocation(line: 954, column: 34, scope: !1783, inlinedAt: !1786)
!1788 = !DILocalVariable(name: "addr", arg: 1, scope: !1789, file: !32, line: 209, type: !173)
!1789 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_123atomic_or_fetch_relaxedEPyy", scope: !626, file: !32, line: 209, type: !868, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1790 = !{!1788, !1791}
!1791 = !DILocalVariable(name: "val", arg: 2, scope: !1789, file: !32, line: 209, type: !26)
!1792 = !DILocation(line: 0, scope: !1789, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 954, column: 9, scope: !1783, inlinedAt: !1786)
!1794 = !DILocation(line: 210, column: 12, scope: !1789, inlinedAt: !1793)
!1795 = !DILocation(line: 1021, column: 5, scope: !1781)
!1796 = !DILocation(line: 1022, column: 1, scope: !1769)
!1797 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization29wait_parking_control_validateEPvRNS2_15validate_actionE", scope: !33, file: !32, line: 1038, type: !145, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1798 = !{!1799, !1800, !1801, !1802}
!1799 = !DILocalVariable(name: "control", arg: 1, scope: !1797, file: !32, line: 1038, type: !15)
!1800 = !DILocalVariable(name: "action", arg: 2, scope: !1797, file: !32, line: 1038, type: !147)
!1801 = !DILocalVariable(name: "wait_control", scope: !1797, file: !32, line: 1039, type: !213)
!1802 = !DILocalVariable(name: "val", scope: !1797, file: !32, line: 1041, type: !26)
!1803 = !DILocation(line: 0, scope: !1797)
!1804 = !DILocation(line: 1042, column: 39, scope: !1797)
!1805 = !{!1806, !471, i64 32}
!1806 = !{!"_ZTSN6Halide7Runtime8Internal15Synchronization20wait_parking_controlE", !471, i64 32, !471, i64 40}
!1807 = !DILocation(line: 0, scope: !625, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 1042, column: 5, scope: !1797)
!1809 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1808)
!1810 = !DILocation(line: 1044, column: 13, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1797, file: !32, line: 1044, column: 9)
!1812 = !DILocation(line: 0, scope: !1811)
!1813 = !{!1806, !471, i64 40}
!1814 = !DILocation(line: 1044, column: 9, scope: !1797)
!1815 = !DILocation(line: 0, scope: !1603, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 1046, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !32, line: 1044, column: 19)
!1818 = !DILocation(line: 214, column: 5, scope: !1603, inlinedAt: !1816)
!1819 = !DILocation(line: 1047, column: 5, scope: !1817)
!1820 = !DILocation(line: 1047, column: 20, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !32, line: 1047, column: 16)
!1822 = !DILocation(line: 1047, column: 16, scope: !1811)
!1823 = !DILocation(line: 1049, column: 16, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !32, line: 1047, column: 55)
!1825 = !DILocation(line: 1049, column: 36, scope: !1824)
!1826 = !DILocation(line: 1050, column: 9, scope: !1824)
!1827 = !DILocation(line: 1054, column: 1, scope: !1797)
!1828 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization33wait_parking_control_before_sleepEPv", scope: !33, file: !32, line: 1056, type: !13, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "control", arg: 1, scope: !1828, file: !32, line: 1056, type: !15)
!1831 = !DILocalVariable(name: "wait_control", scope: !1828, file: !32, line: 1057, type: !213)
!1832 = !DILocation(line: 0, scope: !1828)
!1833 = !DILocation(line: 1059, column: 19, scope: !1828)
!1834 = !DILocalVariable(name: "this", arg: 1, scope: !1835, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1835 = distinct !DISubprogram(name: "unlock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex6unlockEv", scope: !185, file: !32, line: 929, type: !189, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !194, retainedNodes: !1836)
!1836 = !{!1834, !1837, !1838}
!1837 = !DILocalVariable(name: "expected", scope: !1835, file: !32, line: 930, type: !26)
!1838 = !DILocalVariable(name: "desired", scope: !1835, file: !32, line: 931, type: !26)
!1839 = !DILocation(line: 0, scope: !1835, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 1059, column: 26, scope: !1828)
!1841 = !DILocation(line: 933, column: 47, scope: !1842, inlinedAt: !1840)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !32, line: 933, column: 13)
!1843 = !DILocation(line: 0, scope: !721, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 933, column: 14, scope: !1842, inlinedAt: !1840)
!1845 = !DILocation(line: 184, column: 12, scope: !721, inlinedAt: !1844)
!1846 = !DILocation(line: 933, column: 13, scope: !1835, inlinedAt: !1840)
!1847 = !DILocalVariable(name: "this", arg: 1, scope: !1848, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1848 = distinct !DISubprogram(name: "unlock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex11unlock_fullEv", scope: !185, file: !32, line: 906, type: !189, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !192, retainedNodes: !1849)
!1849 = !{!1847, !1850, !1851, !1852}
!1850 = !DILocalVariable(name: "expected", scope: !1848, file: !32, line: 907, type: !26)
!1851 = !DILocalVariable(name: "desired", scope: !1848, file: !32, line: 908, type: !26)
!1852 = !DILocalVariable(name: "control", scope: !1848, file: !32, line: 915, type: !138)
!1853 = !DILocation(line: 0, scope: !1848, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 934, column: 13, scope: !1855, inlinedAt: !1840)
!1855 = distinct !DILexicalBlock(scope: !1842, file: !32, line: 933, column: 76)
!1856 = !DILocalVariable(name: "addr", arg: 1, scope: !1857, file: !32, line: 174, type: !173)
!1857 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_133atomic_cas_strong_release_relaxedEPyS4_S4_", scope: !626, file: !32, line: 174, type: !645, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1858 = !{!1856, !1859, !1860}
!1859 = !DILocalVariable(name: "expected", arg: 2, scope: !1857, file: !32, line: 174, type: !173)
!1860 = !DILocalVariable(name: "desired", arg: 3, scope: !1857, file: !32, line: 174, type: !173)
!1861 = !DILocation(line: 0, scope: !1857, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 911, column: 13, scope: !1863, inlinedAt: !1854)
!1863 = distinct !DILexicalBlock(scope: !1848, file: !32, line: 911, column: 13)
!1864 = !DILocation(line: 175, column: 12, scope: !1857, inlinedAt: !1862)
!1865 = !DILocation(line: 911, column: 13, scope: !1848, inlinedAt: !1854)
!1866 = !DILocation(line: 915, column: 9, scope: !1848, inlinedAt: !1854)
!1867 = !DILocation(line: 915, column: 31, scope: !1848, inlinedAt: !1854)
!1868 = !DILocalVariable(name: "this", arg: 1, scope: !1869, type: !137, flags: DIFlagArtificial | DIFlagObjectPointer)
!1869 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization21mutex_parking_controlC2EPy", scope: !138, file: !32, line: 832, type: !175, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !174, retainedNodes: !1870)
!1870 = !{!1868, !1871}
!1871 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1869, file: !32, line: 832, type: !173)
!1872 = !DILocation(line: 0, scope: !1869, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 915, column: 31, scope: !1848, inlinedAt: !1854)
!1874 = !DILocalVariable(name: "this", arg: 1, scope: !1875, type: !1877, flags: DIFlagArtificial | DIFlagObjectPointer)
!1875 = distinct !DISubprogram(name: "parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization15parking_controlC2Ev", scope: !141, file: !32, line: 598, type: !169, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !168, retainedNodes: !1876)
!1876 = !{!1874}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!1878 = !DILocation(line: 0, scope: !1875, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 832, column: 19, scope: !1869, inlinedAt: !1873)
!1880 = !DILocation(line: 599, column: 11, scope: !1875, inlinedAt: !1879)
!1881 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !1879)
!1882 = !DILocation(line: 600, column: 11, scope: !1875, inlinedAt: !1879)
!1883 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !1879)
!1884 = !DILocation(line: 833, column: 11, scope: !1869, inlinedAt: !1873)
!1885 = !DILocation(line: 834, column: 18, scope: !1886, inlinedAt: !1873)
!1886 = distinct !DILexicalBlock(scope: !1869, file: !32, line: 833, column: 34)
!1887 = !DILocation(line: 835, column: 16, scope: !1886, inlinedAt: !1873)
!1888 = !DILocation(line: 916, column: 20, scope: !1848, inlinedAt: !1854)
!1889 = !DILocation(line: 916, column: 37, scope: !1848, inlinedAt: !1854)
!1890 = !DILocation(line: 916, column: 9, scope: !1848, inlinedAt: !1854)
!1891 = !DILocation(line: 917, column: 5, scope: !1848, inlinedAt: !1854)
!1892 = !DILocation(line: 1060, column: 1, scope: !1828)
!1893 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization27wait_parking_control_unparkEPvib", scope: !33, file: !32, line: 1062, type: !159, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899}
!1895 = !DILocalVariable(name: "control", arg: 1, scope: !1893, file: !32, line: 1062, type: !15)
!1896 = !DILocalVariable(name: "unparked", arg: 2, scope: !1893, file: !32, line: 1062, type: !161)
!1897 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1893, file: !32, line: 1062, type: !66)
!1898 = !DILocalVariable(name: "wait_control", scope: !1893, file: !32, line: 1063, type: !213)
!1899 = !DILocalVariable(name: "val", scope: !1900, file: !32, line: 1066, type: !26)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !32, line: 1065, column: 24)
!1901 = distinct !DILexicalBlock(scope: !1893, file: !32, line: 1065, column: 9)
!1902 = !DILocation(line: 0, scope: !1893)
!1903 = !DILocation(line: 1065, column: 9, scope: !1893)
!1904 = !DILocation(line: 0, scope: !1900)
!1905 = !DILocation(line: 1067, column: 44, scope: !1900)
!1906 = !DILocation(line: 0, scope: !1603, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 1067, column: 9, scope: !1900)
!1908 = !DILocation(line: 214, column: 5, scope: !1603, inlinedAt: !1907)
!1909 = !DILocation(line: 1068, column: 5, scope: !1900)
!1910 = !DILocation(line: 1069, column: 5, scope: !1893)
!1911 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !32, file: !32, line: 1131, type: !1912, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !240}
!1914 = !{!1915, !1916}
!1915 = !DILocalVariable(name: "mutex", arg: 1, scope: !1911, file: !32, line: 1131, type: !240)
!1916 = !DILocalVariable(name: "fast_mutex", scope: !1911, file: !32, line: 1132, type: !184)
!1917 = !DILocation(line: 0, scope: !1911)
!1918 = !DILocalVariable(name: "this", arg: 1, scope: !1919, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1919 = distinct !DISubprogram(name: "lock", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex4lockEv", scope: !185, file: !32, line: 920, type: !189, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !193, retainedNodes: !1920)
!1920 = !{!1918, !1921, !1922}
!1921 = !DILocalVariable(name: "expected", scope: !1919, file: !32, line: 921, type: !26)
!1922 = !DILocalVariable(name: "desired", scope: !1919, file: !32, line: 922, type: !26)
!1923 = !DILocation(line: 0, scope: !1919, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 1134, column: 17, scope: !1911)
!1925 = !DILocation(line: 924, column: 47, scope: !1926, inlinedAt: !1924)
!1926 = distinct !DILexicalBlock(scope: !1919, file: !32, line: 924, column: 13)
!1927 = !DILocation(line: 0, scope: !644, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 924, column: 14, scope: !1926, inlinedAt: !1924)
!1929 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !1928)
!1930 = !DILocation(line: 924, column: 13, scope: !1919, inlinedAt: !1924)
!1931 = !DILocalVariable(name: "this", arg: 1, scope: !1932, type: !184, flags: DIFlagArtificial | DIFlagObjectPointer)
!1932 = distinct !DISubprogram(name: "lock_full", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization10fast_mutex9lock_fullEv", scope: !185, file: !32, line: 862, type: !189, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !188, retainedNodes: !1933)
!1933 = !{!1931, !1934, !1935, !1936, !1940, !1943, !1944}
!1934 = !DILocalVariable(name: "spinner", scope: !1932, file: !32, line: 864, type: !603)
!1935 = !DILocalVariable(name: "expected", scope: !1932, file: !32, line: 865, type: !26)
!1936 = !DILocalVariable(name: "desired", scope: !1937, file: !32, line: 870, type: !26)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !32, line: 869, column: 41)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !32, line: 869, column: 17)
!1939 = distinct !DILexicalBlock(scope: !1932, file: !32, line: 868, column: 22)
!1940 = !DILocalVariable(name: "desired", scope: !1941, file: !32, line: 888, type: !26)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !32, line: 887, column: 47)
!1942 = distinct !DILexicalBlock(scope: !1939, file: !32, line: 887, column: 17)
!1943 = !DILocalVariable(name: "control", scope: !1939, file: !32, line: 895, type: !138)
!1944 = !DILocalVariable(name: "result", scope: !1939, file: !32, line: 896, type: !26)
!1945 = !DILocation(line: 0, scope: !1932, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 925, column: 13, scope: !1947, inlinedAt: !1924)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !32, line: 924, column: 76)
!1948 = !DILocation(line: 0, scope: !625, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 866, column: 9, scope: !1932, inlinedAt: !1946)
!1950 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1949)
!1951 = !DILocation(line: 868, column: 9, scope: !1932, inlinedAt: !1946)
!1952 = !DILocation(line: 869, column: 28, scope: !1938, inlinedAt: !1946)
!1953 = !DILocation(line: 869, column: 18, scope: !1938, inlinedAt: !1946)
!1954 = !DILocation(line: 869, column: 17, scope: !1939, inlinedAt: !1946)
!1955 = !DILocation(line: 870, column: 46, scope: !1937, inlinedAt: !1946)
!1956 = !DILocation(line: 0, scope: !1937, inlinedAt: !1946)
!1957 = !DILocation(line: 0, scope: !644, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 871, column: 21, scope: !1959, inlinedAt: !1946)
!1959 = distinct !DILexicalBlock(scope: !1937, file: !32, line: 871, column: 21)
!1960 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !1958)
!1961 = !DILocation(line: 238, column: 24, scope: !667, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 880, column: 25, scope: !1963, inlinedAt: !1946)
!1963 = distinct !DILexicalBlock(scope: !1939, file: !32, line: 880, column: 17)
!1964 = !DILocation(line: 0, scope: !658, inlinedAt: !1962)
!1965 = !DILocation(line: 238, column: 13, scope: !658, inlinedAt: !1962)
!1966 = !DILocation(line: 241, column: 27, scope: !658, inlinedAt: !1962)
!1967 = !DILocation(line: 880, column: 17, scope: !1939, inlinedAt: !1946)
!1968 = !DILocation(line: 239, column: 23, scope: !666, inlinedAt: !1962)
!1969 = !DILocation(line: 881, column: 17, scope: !1970, inlinedAt: !1946)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !32, line: 880, column: 40)
!1971 = !DILocation(line: 0, scope: !625, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 882, column: 17, scope: !1970, inlinedAt: !1946)
!1973 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !1972)
!1974 = !DILocation(line: 883, column: 17, scope: !1970, inlinedAt: !1946)
!1975 = !DILocation(line: 887, column: 27, scope: !1942, inlinedAt: !1946)
!1976 = !DILocation(line: 887, column: 41, scope: !1942, inlinedAt: !1946)
!1977 = !DILocation(line: 887, column: 17, scope: !1939, inlinedAt: !1946)
!1978 = !DILocation(line: 888, column: 46, scope: !1941, inlinedAt: !1946)
!1979 = !DILocation(line: 0, scope: !1941, inlinedAt: !1946)
!1980 = !DILocation(line: 0, scope: !1757, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 889, column: 22, scope: !1982, inlinedAt: !1946)
!1982 = distinct !DILexicalBlock(scope: !1941, file: !32, line: 889, column: 21)
!1983 = !DILocation(line: 188, column: 12, scope: !1757, inlinedAt: !1981)
!1984 = !DILocation(line: 895, column: 13, scope: !1939, inlinedAt: !1946)
!1985 = !DILocation(line: 895, column: 35, scope: !1939, inlinedAt: !1946)
!1986 = !DILocation(line: 0, scope: !1869, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 895, column: 35, scope: !1939, inlinedAt: !1946)
!1988 = !DILocation(line: 0, scope: !1875, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 832, column: 19, scope: !1869, inlinedAt: !1987)
!1990 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !1989)
!1991 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !1989)
!1992 = !DILocation(line: 833, column: 11, scope: !1869, inlinedAt: !1987)
!1993 = !DILocation(line: 834, column: 18, scope: !1886, inlinedAt: !1987)
!1994 = !DILocation(line: 835, column: 16, scope: !1886, inlinedAt: !1987)
!1995 = !DILocation(line: 896, column: 32, scope: !1939, inlinedAt: !1946)
!1996 = !DILocation(line: 0, scope: !1939, inlinedAt: !1946)
!1997 = !DILocation(line: 897, column: 24, scope: !1998, inlinedAt: !1946)
!1998 = distinct !DILexicalBlock(scope: !1939, file: !32, line: 897, column: 17)
!1999 = !DILocation(line: 897, column: 17, scope: !1939, inlinedAt: !1946)
!2000 = !DILocation(line: 0, scope: !625, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 902, column: 13, scope: !1939, inlinedAt: !1946)
!2002 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2001)
!2003 = !DILocation(line: 903, column: 9, scope: !1932, inlinedAt: !1946)
!2004 = distinct !{!2004, !1951, !2003}
!2005 = !DILocation(line: 1135, column: 1, scope: !1911)
!2006 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !32, file: !32, line: 1137, type: !1912, scopeLine: 1137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2007)
!2007 = !{!2008, !2009}
!2008 = !DILocalVariable(name: "mutex", arg: 1, scope: !2006, file: !32, line: 1137, type: !240)
!2009 = !DILocalVariable(name: "fast_mutex", scope: !2006, file: !32, line: 1138, type: !184)
!2010 = !DILocation(line: 0, scope: !2006)
!2011 = !DILocation(line: 0, scope: !1835, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 1140, column: 17, scope: !2006)
!2013 = !DILocation(line: 933, column: 47, scope: !1842, inlinedAt: !2012)
!2014 = !DILocation(line: 0, scope: !721, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 933, column: 14, scope: !1842, inlinedAt: !2012)
!2016 = !DILocation(line: 184, column: 12, scope: !721, inlinedAt: !2015)
!2017 = !DILocation(line: 933, column: 13, scope: !1835, inlinedAt: !2012)
!2018 = !DILocation(line: 0, scope: !1848, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 934, column: 13, scope: !1855, inlinedAt: !2012)
!2020 = !DILocation(line: 0, scope: !1857, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 911, column: 13, scope: !1863, inlinedAt: !2019)
!2022 = !DILocation(line: 175, column: 12, scope: !1857, inlinedAt: !2021)
!2023 = !DILocation(line: 911, column: 13, scope: !1848, inlinedAt: !2019)
!2024 = !DILocation(line: 915, column: 9, scope: !1848, inlinedAt: !2019)
!2025 = !DILocation(line: 915, column: 31, scope: !1848, inlinedAt: !2019)
!2026 = !DILocation(line: 0, scope: !1869, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 915, column: 31, scope: !1848, inlinedAt: !2019)
!2028 = !DILocation(line: 0, scope: !1875, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 832, column: 19, scope: !1869, inlinedAt: !2027)
!2030 = !DILocation(line: 599, column: 11, scope: !1875, inlinedAt: !2029)
!2031 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !2029)
!2032 = !DILocation(line: 600, column: 11, scope: !1875, inlinedAt: !2029)
!2033 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !2029)
!2034 = !DILocation(line: 833, column: 11, scope: !1869, inlinedAt: !2027)
!2035 = !DILocation(line: 834, column: 18, scope: !1886, inlinedAt: !2027)
!2036 = !DILocation(line: 835, column: 16, scope: !1886, inlinedAt: !2027)
!2037 = !DILocation(line: 916, column: 20, scope: !1848, inlinedAt: !2019)
!2038 = !DILocation(line: 916, column: 37, scope: !1848, inlinedAt: !2019)
!2039 = !DILocation(line: 916, column: 9, scope: !1848, inlinedAt: !2019)
!2040 = !DILocation(line: 917, column: 5, scope: !1848, inlinedAt: !2019)
!2041 = !DILocation(line: 1141, column: 1, scope: !2006)
!2042 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !32, file: !32, line: 1143, type: !2043, scopeLine: 1143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "cond", arg: 1, scope: !2042, file: !32, line: 1143, type: !2045)
!2048 = !DILocalVariable(name: "fast_cond", scope: !2042, file: !32, line: 1144, type: !223)
!2049 = !DILocation(line: 0, scope: !2042)
!2050 = !DILocalVariable(name: "this", arg: 1, scope: !2051, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2051 = distinct !DISubprogram(name: "broadcast", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond9broadcastEv", scope: !224, file: !32, line: 1092, type: !228, scopeLine: 1092, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !232, retainedNodes: !2052)
!2052 = !{!2050, !2053, !2054}
!2053 = !DILocalVariable(name: "val", scope: !2051, file: !32, line: 1094, type: !26)
!2054 = !DILocalVariable(name: "control", scope: !2051, file: !32, line: 1100, type: !204)
!2055 = !DILocation(line: 0, scope: !2051, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 1146, column: 16, scope: !2042)
!2057 = !DILocation(line: 1095, column: 30, scope: !2051, inlinedAt: !2056)
!2058 = !DILocation(line: 0, scope: !625, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 1095, column: 9, scope: !2051, inlinedAt: !2056)
!2060 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2059)
!2061 = !DILocation(line: 1096, column: 17, scope: !2062, inlinedAt: !2056)
!2062 = distinct !DILexicalBlock(scope: !2051, file: !32, line: 1096, column: 13)
!2063 = !DILocation(line: 1096, column: 13, scope: !2051, inlinedAt: !2056)
!2064 = !DILocation(line: 1100, column: 9, scope: !2051, inlinedAt: !2056)
!2065 = !DILocation(line: 1100, column: 35, scope: !2051, inlinedAt: !2056)
!2066 = !DILocation(line: 1100, column: 51, scope: !2051, inlinedAt: !2056)
!2067 = !DILocalVariable(name: "this", arg: 1, scope: !2068, type: !203, flags: DIFlagArtificial | DIFlagObjectPointer)
!2068 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization25broadcast_parking_controlC2EPyPNS2_10fast_mutexE", scope: !204, file: !32, line: 989, type: !210, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !209, retainedNodes: !2069)
!2069 = !{!2067, !2070, !2071}
!2070 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2068, file: !32, line: 989, type: !173)
!2071 = !DILocalVariable(name: "mutex", arg: 3, scope: !2068, file: !32, line: 989, type: !184)
!2072 = !DILocation(line: 0, scope: !2068, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 1100, column: 35, scope: !2051, inlinedAt: !2056)
!2074 = !DILocation(line: 0, scope: !1875, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 989, column: 19, scope: !2068, inlinedAt: !2073)
!2076 = !DILocation(line: 599, column: 11, scope: !1875, inlinedAt: !2075)
!2077 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !2075)
!2078 = !DILocation(line: 600, column: 11, scope: !1875, inlinedAt: !2075)
!2079 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !2075)
!2080 = !DILocation(line: 990, column: 11, scope: !2068, inlinedAt: !2073)
!2081 = !DILocation(line: 990, column: 35, scope: !2068, inlinedAt: !2073)
!2082 = !DILocation(line: 991, column: 18, scope: !2083, inlinedAt: !2073)
!2083 = distinct !DILexicalBlock(scope: !2068, file: !32, line: 990, column: 48)
!2084 = !DILocation(line: 992, column: 26, scope: !2083, inlinedAt: !2073)
!2085 = !DILocation(line: 1101, column: 24, scope: !2051, inlinedAt: !2056)
!2086 = !DILocation(line: 1101, column: 46, scope: !2051, inlinedAt: !2056)
!2087 = !DILocation(line: 1101, column: 9, scope: !2051, inlinedAt: !2056)
!2088 = !DILocation(line: 1103, column: 5, scope: !2051, inlinedAt: !2056)
!2089 = !DILocation(line: 1147, column: 1, scope: !2042)
!2090 = distinct !DISubprogram(name: "halide_cond_signal", scope: !32, file: !32, line: 1149, type: !2043, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2091 = !{!2092, !2093}
!2092 = !DILocalVariable(name: "cond", arg: 1, scope: !2090, file: !32, line: 1149, type: !2045)
!2093 = !DILocalVariable(name: "fast_cond", scope: !2090, file: !32, line: 1150, type: !223)
!2094 = !DILocation(line: 0, scope: !2090)
!2095 = !DILocalVariable(name: "this", arg: 1, scope: !2096, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2096 = distinct !DISubprogram(name: "signal", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond6signalEv", scope: !224, file: !32, line: 1078, type: !228, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !231, retainedNodes: !2097)
!2097 = !{!2095, !2098, !2099}
!2098 = !DILocalVariable(name: "val", scope: !2096, file: !32, line: 1081, type: !26)
!2099 = !DILocalVariable(name: "control", scope: !2096, file: !32, line: 1087, type: !179)
!2100 = !DILocation(line: 0, scope: !2096, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 1152, column: 16, scope: !2090)
!2102 = !DILocation(line: 1082, column: 30, scope: !2096, inlinedAt: !2101)
!2103 = !DILocation(line: 0, scope: !625, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 1082, column: 9, scope: !2096, inlinedAt: !2101)
!2105 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2104)
!2106 = !DILocation(line: 1083, column: 17, scope: !2107, inlinedAt: !2101)
!2107 = distinct !DILexicalBlock(scope: !2096, file: !32, line: 1083, column: 13)
!2108 = !DILocation(line: 1083, column: 13, scope: !2096, inlinedAt: !2101)
!2109 = !DILocation(line: 1087, column: 9, scope: !2096, inlinedAt: !2101)
!2110 = !DILocation(line: 1087, column: 32, scope: !2096, inlinedAt: !2101)
!2111 = !DILocation(line: 1087, column: 48, scope: !2096, inlinedAt: !2101)
!2112 = !DILocalVariable(name: "this", arg: 1, scope: !2113, type: !178, flags: DIFlagArtificial | DIFlagObjectPointer)
!2113 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization22signal_parking_controlC2EPyPNS2_10fast_mutexE", scope: !179, file: !32, line: 962, type: !200, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !199, retainedNodes: !2114)
!2114 = !{!2112, !2115, !2116}
!2115 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2113, file: !32, line: 962, type: !173)
!2116 = !DILocalVariable(name: "mutex", arg: 3, scope: !2113, file: !32, line: 962, type: !184)
!2117 = !DILocation(line: 0, scope: !2113, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 1087, column: 32, scope: !2096, inlinedAt: !2101)
!2119 = !DILocation(line: 0, scope: !1875, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 962, column: 19, scope: !2113, inlinedAt: !2118)
!2121 = !DILocation(line: 599, column: 11, scope: !1875, inlinedAt: !2120)
!2122 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !2120)
!2123 = !DILocation(line: 600, column: 11, scope: !1875, inlinedAt: !2120)
!2124 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !2120)
!2125 = !DILocation(line: 963, column: 11, scope: !2113, inlinedAt: !2118)
!2126 = !DILocation(line: 963, column: 35, scope: !2113, inlinedAt: !2118)
!2127 = !{!1709, !471, i64 40}
!2128 = !DILocation(line: 964, column: 16, scope: !2129, inlinedAt: !2118)
!2129 = distinct !DILexicalBlock(scope: !2113, file: !32, line: 963, column: 48)
!2130 = !DILocation(line: 1088, column: 20, scope: !2096, inlinedAt: !2101)
!2131 = !DILocation(line: 1088, column: 37, scope: !2096, inlinedAt: !2101)
!2132 = !DILocation(line: 1088, column: 9, scope: !2096, inlinedAt: !2101)
!2133 = !DILocation(line: 1090, column: 5, scope: !2096, inlinedAt: !2101)
!2134 = !DILocation(line: 1153, column: 1, scope: !2090)
!2135 = distinct !DISubprogram(name: "halide_cond_wait", scope: !32, file: !32, line: 1155, type: !2136, scopeLine: 1155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2045, !240}
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "cond", arg: 1, scope: !2135, file: !32, line: 1155, type: !2045)
!2140 = !DILocalVariable(name: "mutex", arg: 2, scope: !2135, file: !32, line: 1155, type: !240)
!2141 = !DILocalVariable(name: "fast_cond", scope: !2135, file: !32, line: 1156, type: !223)
!2142 = !DILocalVariable(name: "fast_mutex", scope: !2135, file: !32, line: 1158, type: !184)
!2143 = !DILocation(line: 0, scope: !2135)
!2144 = !DILocalVariable(name: "this", arg: 1, scope: !2145, type: !223, flags: DIFlagArtificial | DIFlagObjectPointer)
!2145 = distinct !DISubprogram(name: "wait", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization9fast_cond4waitEPNS2_10fast_mutexE", scope: !224, file: !32, line: 1105, type: !234, scopeLine: 1105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !233, retainedNodes: !2146)
!2146 = !{!2144, !2147, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "mutex", arg: 2, scope: !2145, file: !32, line: 1105, type: !184)
!2148 = !DILocalVariable(name: "control", scope: !2145, file: !32, line: 1106, type: !214)
!2149 = !DILocalVariable(name: "result", scope: !2145, file: !32, line: 1107, type: !26)
!2150 = !DILocalVariable(name: "val", scope: !2151, file: !32, line: 1114, type: !26)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !32, line: 1110, column: 16)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !32, line: 1108, column: 13)
!2153 = !DILocation(line: 0, scope: !2145, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 1160, column: 16, scope: !2135)
!2155 = !DILocation(line: 1106, column: 9, scope: !2145, inlinedAt: !2154)
!2156 = !DILocation(line: 1106, column: 30, scope: !2145, inlinedAt: !2154)
!2157 = !DILocation(line: 1106, column: 39, scope: !2145, inlinedAt: !2154)
!2158 = !DILocalVariable(name: "this", arg: 1, scope: !2159, type: !213, flags: DIFlagArtificial | DIFlagObjectPointer)
!2159 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization20wait_parking_controlC2EPyPNS2_10fast_mutexE", scope: !214, file: !32, line: 1030, type: !220, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !219, retainedNodes: !2160)
!2160 = !{!2158, !2161, !2162}
!2161 = !DILocalVariable(name: "cond_state", arg: 2, scope: !2159, file: !32, line: 1030, type: !173)
!2162 = !DILocalVariable(name: "mutex", arg: 3, scope: !2159, file: !32, line: 1030, type: !184)
!2163 = !DILocation(line: 0, scope: !2159, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 1106, column: 30, scope: !2145, inlinedAt: !2154)
!2165 = !DILocation(line: 0, scope: !1875, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 1030, column: 19, scope: !2159, inlinedAt: !2164)
!2167 = !DILocation(line: 599, column: 11, scope: !1875, inlinedAt: !2166)
!2168 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !2166)
!2169 = !DILocation(line: 600, column: 11, scope: !1875, inlinedAt: !2166)
!2170 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !2166)
!2171 = !DILocation(line: 1031, column: 11, scope: !2159, inlinedAt: !2164)
!2172 = !DILocation(line: 1031, column: 35, scope: !2159, inlinedAt: !2164)
!2173 = !DILocation(line: 1032, column: 18, scope: !2174, inlinedAt: !2164)
!2174 = distinct !DILexicalBlock(scope: !2159, file: !32, line: 1031, column: 48)
!2175 = !DILocation(line: 1033, column: 22, scope: !2174, inlinedAt: !2164)
!2176 = !DILocation(line: 1034, column: 16, scope: !2174, inlinedAt: !2164)
!2177 = !DILocation(line: 1107, column: 33, scope: !2145, inlinedAt: !2154)
!2178 = !DILocation(line: 1107, column: 50, scope: !2145, inlinedAt: !2154)
!2179 = !DILocation(line: 1107, column: 28, scope: !2145, inlinedAt: !2154)
!2180 = !DILocation(line: 1108, column: 23, scope: !2152, inlinedAt: !2154)
!2181 = !DILocation(line: 1108, column: 20, scope: !2152, inlinedAt: !2154)
!2182 = !DILocation(line: 0, scope: !2152, inlinedAt: !2154)
!2183 = !DILocation(line: 1108, column: 13, scope: !2145, inlinedAt: !2154)
!2184 = !DILocation(line: 0, scope: !1919, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 1109, column: 20, scope: !2186, inlinedAt: !2154)
!2186 = distinct !DILexicalBlock(scope: !2152, file: !32, line: 1108, column: 41)
!2187 = !DILocation(line: 0, scope: !644, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 924, column: 14, scope: !1926, inlinedAt: !2185)
!2189 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !2188)
!2190 = !DILocation(line: 924, column: 13, scope: !1919, inlinedAt: !2185)
!2191 = !DILocation(line: 0, scope: !1932, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 925, column: 13, scope: !1947, inlinedAt: !2185)
!2193 = !DILocation(line: 0, scope: !625, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 866, column: 9, scope: !1932, inlinedAt: !2192)
!2195 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2194)
!2196 = !DILocation(line: 868, column: 9, scope: !1932, inlinedAt: !2192)
!2197 = !DILocation(line: 869, column: 28, scope: !1938, inlinedAt: !2192)
!2198 = !DILocation(line: 869, column: 18, scope: !1938, inlinedAt: !2192)
!2199 = !DILocation(line: 869, column: 17, scope: !1939, inlinedAt: !2192)
!2200 = !DILocation(line: 870, column: 46, scope: !1937, inlinedAt: !2192)
!2201 = !DILocation(line: 0, scope: !1937, inlinedAt: !2192)
!2202 = !DILocation(line: 0, scope: !644, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 871, column: 21, scope: !1959, inlinedAt: !2192)
!2204 = !DILocation(line: 192, column: 12, scope: !644, inlinedAt: !2203)
!2205 = !DILocation(line: 238, column: 24, scope: !667, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 880, column: 25, scope: !1963, inlinedAt: !2192)
!2207 = !DILocation(line: 0, scope: !658, inlinedAt: !2206)
!2208 = !DILocation(line: 238, column: 13, scope: !658, inlinedAt: !2206)
!2209 = !DILocation(line: 241, column: 27, scope: !658, inlinedAt: !2206)
!2210 = !DILocation(line: 880, column: 17, scope: !1939, inlinedAt: !2192)
!2211 = !DILocation(line: 239, column: 23, scope: !666, inlinedAt: !2206)
!2212 = !DILocation(line: 881, column: 17, scope: !1970, inlinedAt: !2192)
!2213 = !DILocation(line: 0, scope: !625, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 882, column: 17, scope: !1970, inlinedAt: !2192)
!2215 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2214)
!2216 = !DILocation(line: 883, column: 17, scope: !1970, inlinedAt: !2192)
!2217 = !DILocation(line: 887, column: 27, scope: !1942, inlinedAt: !2192)
!2218 = !DILocation(line: 887, column: 41, scope: !1942, inlinedAt: !2192)
!2219 = !DILocation(line: 887, column: 17, scope: !1939, inlinedAt: !2192)
!2220 = !DILocation(line: 888, column: 46, scope: !1941, inlinedAt: !2192)
!2221 = !DILocation(line: 0, scope: !1941, inlinedAt: !2192)
!2222 = !DILocation(line: 0, scope: !1757, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 889, column: 22, scope: !1982, inlinedAt: !2192)
!2224 = !DILocation(line: 188, column: 12, scope: !1757, inlinedAt: !2223)
!2225 = !DILocation(line: 895, column: 13, scope: !1939, inlinedAt: !2192)
!2226 = !DILocation(line: 895, column: 35, scope: !1939, inlinedAt: !2192)
!2227 = !DILocation(line: 0, scope: !1869, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 895, column: 35, scope: !1939, inlinedAt: !2192)
!2229 = !DILocation(line: 0, scope: !1875, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 832, column: 19, scope: !1869, inlinedAt: !2228)
!2231 = !DILocation(line: 599, column: 47, scope: !1875, inlinedAt: !2230)
!2232 = !DILocation(line: 600, column: 43, scope: !1875, inlinedAt: !2230)
!2233 = !DILocation(line: 833, column: 11, scope: !1869, inlinedAt: !2228)
!2234 = !DILocation(line: 834, column: 18, scope: !1886, inlinedAt: !2228)
!2235 = !DILocation(line: 835, column: 16, scope: !1886, inlinedAt: !2228)
!2236 = !DILocation(line: 896, column: 32, scope: !1939, inlinedAt: !2192)
!2237 = !DILocation(line: 0, scope: !1939, inlinedAt: !2192)
!2238 = !DILocation(line: 897, column: 24, scope: !1998, inlinedAt: !2192)
!2239 = !DILocation(line: 897, column: 17, scope: !1939, inlinedAt: !2192)
!2240 = !DILocation(line: 0, scope: !625, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 902, column: 13, scope: !1939, inlinedAt: !2192)
!2242 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2241)
!2243 = !DILocation(line: 903, column: 9, scope: !1932, inlinedAt: !2192)
!2244 = distinct !{!2244, !2196, !2243}
!2245 = !DILocation(line: 0, scope: !625, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 1115, column: 13, scope: !2151, inlinedAt: !2154)
!2247 = !DILocation(line: 201, column: 5, scope: !625, inlinedAt: !2246)
!2248 = !DILocation(line: 0, scope: !2151, inlinedAt: !2154)
!2249 = !DILocation(line: 1116, column: 13, scope: !2250, inlinedAt: !2154)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !32, line: 1116, column: 13)
!2251 = distinct !DILexicalBlock(scope: !2151, file: !32, line: 1116, column: 13)
!2252 = !DILocation(line: 1116, column: 13, scope: !2251, inlinedAt: !2154)
!2253 = !DILocation(line: 1116, column: 13, scope: !2254, inlinedAt: !2154)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !32, line: 1116, column: 13)
!2255 = !DILocation(line: 1120, column: 5, scope: !2145, inlinedAt: !2154)
!2256 = !DILocation(line: 1161, column: 1, scope: !2135)
!2257 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !32, file: !32, line: 1168, type: !2258, scopeLine: 1168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!236, !161}
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "sz", arg: 1, scope: !2257, file: !32, line: 1168, type: !161)
!2262 = !DILocalVariable(name: "array", scope: !2257, file: !32, line: 1171, type: !236)
!2263 = !DILocation(line: 0, scope: !2257)
!2264 = !DILocation(line: 1171, column: 55, scope: !2257)
!2265 = !DILocation(line: 1171, column: 33, scope: !2257)
!2266 = !DILocation(line: 1173, column: 15, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2257, file: !32, line: 1173, column: 9)
!2268 = !DILocation(line: 1173, column: 9, scope: !2257)
!2269 = !DILocation(line: 1178, column: 18, scope: !2257)
!2270 = !DILocation(line: 1178, column: 21, scope: !2257)
!2271 = !DILocation(line: 1177, column: 36, scope: !2257)
!2272 = !DILocation(line: 1177, column: 18, scope: !2257)
!2273 = !{!2274, !471, i64 0}
!2274 = !{!"_ZTS18halide_mutex_array", !471, i64 0}
!2275 = !DILocation(line: 1179, column: 22, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2257, file: !32, line: 1179, column: 9)
!2277 = !DILocation(line: 1179, column: 9, scope: !2257)
!2278 = !DILocation(line: 1180, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !32, line: 1179, column: 34)
!2280 = !DILocation(line: 1182, column: 9, scope: !2279)
!2281 = !DILocation(line: 1184, column: 5, scope: !2257)
!2282 = !DILocation(line: 1185, column: 5, scope: !2257)
!2283 = !DILocation(line: 1186, column: 1, scope: !2257)
!2284 = !DISubprogram(name: "halide_malloc", scope: !242, file: !242, line: 354, type: !2285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!15, !15, !553}
!2287 = !DISubprogram(name: "halide_free", scope: !242, file: !242, line: 355, type: !2288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !15, !15}
!2290 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !32, file: !32, line: 1188, type: !2288, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "user_context", arg: 1, scope: !2290, file: !32, line: 1188, type: !15)
!2293 = !DILocalVariable(name: "array", arg: 2, scope: !2290, file: !32, line: 1188, type: !15)
!2294 = !DILocalVariable(name: "arr_ptr", scope: !2290, file: !32, line: 1189, type: !236)
!2295 = !DILocation(line: 0, scope: !2290)
!2296 = !DILocation(line: 1190, column: 40, scope: !2290)
!2297 = !DILocation(line: 1190, column: 5, scope: !2290)
!2298 = !DILocation(line: 1191, column: 5, scope: !2290)
!2299 = !DILocation(line: 1192, column: 1, scope: !2290)
!2300 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !32, file: !32, line: 1194, type: !2301, scopeLine: 1194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!161, !236, !161}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "array", arg: 1, scope: !2300, file: !32, line: 1194, type: !236)
!2305 = !DILocalVariable(name: "entry", arg: 2, scope: !2300, file: !32, line: 1194, type: !161)
!2306 = !DILocation(line: 0, scope: !2300)
!2307 = !DILocation(line: 1195, column: 31, scope: !2300)
!2308 = !DILocation(line: 1195, column: 24, scope: !2300)
!2309 = !DILocation(line: 1195, column: 5, scope: !2300)
!2310 = !DILocation(line: 1196, column: 5, scope: !2300)
!2311 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !32, file: !32, line: 1199, type: !2301, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2312)
!2312 = !{!2313, !2314}
!2313 = !DILocalVariable(name: "array", arg: 1, scope: !2311, file: !32, line: 1199, type: !236)
!2314 = !DILocalVariable(name: "entry", arg: 2, scope: !2311, file: !32, line: 1199, type: !161)
!2315 = !DILocation(line: 0, scope: !2311)
!2316 = !DILocation(line: 1200, column: 33, scope: !2311)
!2317 = !DILocation(line: 1200, column: 26, scope: !2311)
!2318 = !DILocation(line: 1200, column: 5, scope: !2311)
!2319 = !DILocation(line: 1201, column: 5, scope: !2311)
!2320 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "_ZN6Halide7Runtime8Internal17clamp_num_threadsEi", scope: !34, file: !250, line: 69, type: !2321, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!161, !161}
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "threads", arg: 1, scope: !2320, file: !250, line: 69, type: !161)
!2325 = !DILocation(line: 0, scope: !2320)
!2326 = !DILocation(line: 70, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !250, line: 70, column: 9)
!2328 = !DILocation(line: 70, column: 9, scope: !2320)
!2329 = !DILocation(line: 72, column: 16, scope: !2327)
!2330 = !DILocation(line: 75, column: 5, scope: !2320)
!2331 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv", scope: !34, file: !250, line: 78, type: !413, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2332)
!2332 = !{!2333, !2334}
!2333 = !DILocalVariable(name: "desired_num_threads", scope: !2331, file: !250, line: 79, type: !161)
!2334 = !DILocalVariable(name: "threads_str", scope: !2331, file: !250, line: 80, type: !309)
!2335 = !DILocation(line: 0, scope: !2331)
!2336 = !DILocation(line: 80, column: 25, scope: !2331)
!2337 = !DILocation(line: 81, column: 10, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2331, file: !250, line: 81, column: 9)
!2339 = !DILocation(line: 81, column: 9, scope: !2331)
!2340 = !DILocation(line: 83, column: 23, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !250, line: 81, column: 23)
!2342 = !DILocation(line: 85, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2331, file: !250, line: 85, column: 9)
!2344 = !DILocation(line: 85, column: 9, scope: !2331)
!2345 = !DILocation(line: 86, column: 31, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !250, line: 85, column: 22)
!2347 = !DILocation(line: 87, column: 5, scope: !2346)
!2348 = !DILocation(line: 88, column: 31, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2343, file: !250, line: 87, column: 12)
!2350 = !DILocation(line: 0, scope: !2343)
!2351 = !DILocation(line: 90, column: 5, scope: !2331)
!2352 = !DISubprogram(name: "getenv", scope: !27, file: !27, line: 85, type: !2353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!309, !265}
!2355 = !DISubprogram(name: "atoi", scope: !27, file: !27, line: 89, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!161, !265}
!2358 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE", scope: !34, file: !250, line: 197, type: !2359, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !248}
!2361 = !{!2362, !2363, !2364, !2366, !2368, !2370, !2372, !2373, !2374, !2375, !2376, !2377, !2380, !2381, !2383, !2384}
!2362 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2358, file: !250, line: 197, type: !248)
!2363 = !DILocalVariable(name: "spin_count", scope: !2358, file: !250, line: 198, type: !161)
!2364 = !DILocalVariable(name: "max_spin_count", scope: !2358, file: !250, line: 199, type: !2365)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!2366 = !DILocalVariable(name: "job", scope: !2367, file: !250, line: 202, type: !248)
!2367 = distinct !DILexicalBlock(scope: !2358, file: !250, line: 201, column: 69)
!2368 = !DILocalVariable(name: "prev_ptr", scope: !2367, file: !250, line: 203, type: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!2370 = !DILocalVariable(name: "enough_threads", scope: !2371, file: !250, line: 235, type: !66)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 229, column: 21)
!2372 = !DILocalVariable(name: "parent_job", scope: !2371, file: !250, line: 237, type: !248)
!2373 = !DILocalVariable(name: "threads_available", scope: !2371, file: !250, line: 239, type: !161)
!2374 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2371, file: !250, line: 256, type: !66)
!2375 = !DILocalVariable(name: "can_add_worker", scope: !2371, file: !250, line: 260, type: !66)
!2376 = !DILocalVariable(name: "result", scope: !2367, file: !250, line: 328, type: !161)
!2377 = !DILocalVariable(name: "total_iters", scope: !2378, file: !250, line: 336, type: !161)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !250, line: 330, column: 31)
!2379 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 330, column: 13)
!2380 = !DILocalVariable(name: "iters", scope: !2378, file: !250, line: 337, type: !161)
!2381 = !DILocalVariable(name: "myjob", scope: !2382, file: !250, line: 369, type: !249)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !250, line: 367, column: 16)
!2383 = !DILocalVariable(name: "wake_owners", scope: !2367, file: !250, line: 396, type: !66)
!2384 = !DILocalVariable(name: "i", scope: !2385, file: !250, line: 402, type: !161)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !250, line: 402, column: 13)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !250, line: 399, column: 26)
!2387 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 399, column: 13)
!2388 = !DILocation(line: 0, scope: !2358)
!2389 = !DILocation(line: 63, column: 31, scope: !2390, inlinedAt: !2394)
!2390 = distinct !DISubprogram(name: "running", linkageName: "_ZNK6Halide7Runtime8Internal4work7runningEv", scope: !249, file: !250, line: 62, type: !301, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !300, retainedNodes: !2391)
!2391 = !{!2392}
!2392 = !DILocalVariable(name: "this", arg: 1, scope: !2390, type: !2393, flags: DIFlagArtificial | DIFlagObjectPointer)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2394 = distinct !DILocation(line: 201, column: 35, scope: !2358)
!2395 = !DILocation(line: 201, column: 5, scope: !2358)
!2396 = !DILocation(line: 198, column: 9, scope: !2358)
!2397 = !DILocation(line: 201, column: 12, scope: !2358)
!2398 = !DILocation(line: 0, scope: !2390, inlinedAt: !2394)
!2399 = !DILocation(line: 63, column: 21, scope: !2390, inlinedAt: !2394)
!2400 = !{!2401, !473, i64 40}
!2401 = !{!"_ZTSN6Halide7Runtime8Internal4workE", !2402, i64 0, !471, i64 56, !471, i64 64, !471, i64 72, !473, i64 80, !471, i64 88, !473, i64 96, !471, i64 104, !473, i64 112, !473, i64 116, !473, i64 120, !690, i64 124}
!2402 = !{!"_ZTS22halide_parallel_task_t", !471, i64 0, !471, i64 8, !471, i64 16, !471, i64 24, !473, i64 32, !473, i64 36, !473, i64 40, !473, i64 44, !690, i64 48}
!2403 = !DILocation(line: 63, column: 16, scope: !2390, inlinedAt: !2394)
!2404 = !DILocation(line: 63, column: 28, scope: !2390, inlinedAt: !2394)
!2405 = !DILocation(line: 201, column: 59, scope: !2358)
!2406 = !{!2407, !690, i64 2120}
!2407 = !{!"_ZTSN6Halide7Runtime8Internal12work_queue_tE", !2408, i64 0, !473, i64 8, !473, i64 12, !471, i64 16, !473, i64 24, !473, i64 28, !473, i64 32, !2409, i64 40, !2409, i64 48, !2409, i64 56, !473, i64 64, !473, i64 68, !432, i64 72, !690, i64 2120, !690, i64 2121, !473, i64 2124}
!2408 = !{!"_ZTS12halide_mutex", !432, i64 0}
!2409 = !{!"_ZTS11halide_cond", !432, i64 0}
!2410 = !{!2401, !473, i64 112}
!2411 = !DILocation(line: 202, column: 32, scope: !2367)
!2412 = !{!2407, !471, i64 16}
!2413 = !DILocation(line: 0, scope: !2367)
!2414 = !DILocation(line: 206, column: 28, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !250, line: 206, column: 17)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !250, line: 205, column: 24)
!2417 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 205, column: 13)
!2418 = !{!2401, !473, i64 116}
!2419 = !DILocation(line: 206, column: 40, scope: !2415)
!2420 = !DILocation(line: 206, column: 17, scope: !2416)
!2421 = !DILocation(line: 207, column: 32, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !250, line: 207, column: 21)
!2423 = distinct !DILexicalBlock(scope: !2415, file: !250, line: 206, column: 46)
!2424 = !DILocation(line: 207, column: 47, scope: !2422)
!2425 = !DILocation(line: 207, column: 21, scope: !2423)
!2426 = !DILocation(line: 208, column: 32, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !250, line: 207, column: 53)
!2428 = !DILocation(line: 208, column: 21, scope: !2427)
!2429 = !DILocation(line: 209, column: 42, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !250, line: 208, column: 46)
!2431 = !DILocation(line: 210, column: 36, scope: !2430)
!2432 = !{!2401, !471, i64 64}
!2433 = distinct !{!2433, !2428, !2434, !743}
!2434 = !DILocation(line: 211, column: 21, scope: !2427)
!2435 = !DILocation(line: 212, column: 38, scope: !2427)
!2436 = !DILocation(line: 212, column: 31, scope: !2427)
!2437 = !DILocation(line: 213, column: 38, scope: !2427)
!2438 = !DILocation(line: 214, column: 21, scope: !2427)
!2439 = !DILocation(line: 216, column: 35, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2415, file: !250, line: 216, column: 24)
!2441 = !{!2401, !471, i64 88}
!2442 = !DILocation(line: 216, column: 24, scope: !2440)
!2443 = !DILocation(line: 216, column: 46, scope: !2440)
!2444 = !DILocation(line: 216, column: 72, scope: !2440)
!2445 = !DILocation(line: 216, column: 84, scope: !2440)
!2446 = !DILocation(line: 216, column: 24, scope: !2415)
!2447 = !DILocation(line: 217, column: 40, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !250, line: 216, column: 90)
!2449 = !DILocation(line: 221, column: 17, scope: !2448)
!2450 = !DILocation(line: 222, column: 17, scope: !2448)
!2451 = !DILocation(line: 229, column: 16, scope: !2367)
!2452 = !DILocation(line: 229, column: 9, scope: !2367)
!2453 = !DILocation(line: 240, column: 17, scope: !2371)
!2454 = !DILocation(line: 237, column: 37, scope: !2371)
!2455 = !DILocation(line: 0, scope: !2371)
!2456 = !DILocation(line: 240, column: 28, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2371, file: !250, line: 240, column: 17)
!2458 = !DILocation(line: 244, column: 33, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !250, line: 244, column: 21)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !250, line: 243, column: 20)
!2461 = !DILocation(line: 244, column: 48, scope: !2459)
!2462 = !DILocation(line: 0, scope: !2459)
!2463 = !{!2401, !473, i64 44}
!2464 = !DILocation(line: 244, column: 21, scope: !2460)
!2465 = !DILocation(line: 247, column: 68, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2459, file: !250, line: 246, column: 24)
!2467 = !DILocation(line: 247, column: 113, scope: !2466)
!2468 = !{!2401, !473, i64 96}
!2469 = !DILocation(line: 247, column: 99, scope: !2466)
!2470 = !DILocation(line: 245, column: 84, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2459, file: !250, line: 244, column: 54)
!2472 = !DILocation(line: 245, column: 70, scope: !2471)
!2473 = !DILocation(line: 246, column: 17, scope: !2471)
!2474 = !DILocation(line: 242, column: 49, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2457, file: !250, line: 240, column: 40)
!2476 = !{!2407, !473, i64 24}
!2477 = !DILocation(line: 242, column: 65, scope: !2475)
!2478 = !DILocation(line: 242, column: 83, scope: !2475)
!2479 = !{!2407, !473, i64 2124}
!2480 = !DILocation(line: 242, column: 70, scope: !2475)
!2481 = !DILocation(line: 243, column: 13, scope: !2475)
!2482 = !DILocation(line: 0, scope: !2457)
!2483 = !DILocation(line: 250, column: 61, scope: !2371)
!2484 = !DILocation(line: 250, column: 48, scope: !2371)
!2485 = !DILocation(line: 260, column: 47, scope: !2371)
!2486 = !{!2401, !690, i64 48}
!2487 = !DILocation(line: 260, column: 54, scope: !2371)
!2488 = !DILocation(line: 260, column: 63, scope: !2371)
!2489 = !DILocation(line: 260, column: 78, scope: !2371)
!2490 = !DILocation(line: 265, column: 32, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2371, file: !250, line: 265, column: 17)
!2492 = !DILocalVariable(name: "this", arg: 1, scope: !2493, type: !248, flags: DIFlagArtificial | DIFlagObjectPointer)
!2493 = distinct !DISubprogram(name: "make_runnable", linkageName: "_ZN6Halide7Runtime8Internal4work13make_runnableEv", scope: !249, file: !250, line: 46, type: !297, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !296, retainedNodes: !2494)
!2494 = !{!2492}
!2495 = !DILocation(line: 0, scope: !2493, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 266, column: 26, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !250, line: 266, column: 21)
!2498 = distinct !DILexicalBlock(scope: !2491, file: !250, line: 265, column: 80)
!2499 = !DILocation(line: 47, column: 16, scope: !2500, inlinedAt: !2496)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !250, line: 47, column: 9)
!2501 = distinct !DILexicalBlock(scope: !2493, file: !250, line: 47, column: 9)
!2502 = !{!2401, !473, i64 120}
!2503 = !DILocation(line: 47, column: 38, scope: !2500, inlinedAt: !2496)
!2504 = !{!2401, !473, i64 32}
!2505 = !DILocation(line: 47, column: 31, scope: !2500, inlinedAt: !2496)
!2506 = !DILocation(line: 47, column: 9, scope: !2501, inlinedAt: !2496)
!2507 = !DILocation(line: 48, column: 60, scope: !2508, inlinedAt: !2496)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !250, line: 48, column: 17)
!2509 = distinct !DILexicalBlock(scope: !2500, file: !250, line: 47, column: 72)
!2510 = !{!2401, !471, i64 24}
!2511 = !DILocation(line: 48, column: 55, scope: !2508, inlinedAt: !2496)
!2512 = !DILocation(line: 48, column: 87, scope: !2508, inlinedAt: !2496)
!2513 = !{!2514, !471, i64 0}
!2514 = !{!"_ZTS26halide_semaphore_acquire_t", !471, i64 0, !473, i64 8}
!2515 = !DILocation(line: 49, column: 87, scope: !2508, inlinedAt: !2496)
!2516 = !{!2514, !473, i64 8}
!2517 = !DILocation(line: 48, column: 18, scope: !2508, inlinedAt: !2496)
!2518 = !DILocation(line: 48, column: 17, scope: !2509, inlinedAt: !2496)
!2519 = !DILocation(line: 47, column: 68, scope: !2500, inlinedAt: !2496)
!2520 = distinct !{!2520, !2506, !2521, !743}
!2521 = !DILocation(line: 56, column: 9, scope: !2501, inlinedAt: !2496)
!2522 = !DILocation(line: 272, column: 31, scope: !2371)
!2523 = !DILocation(line: 273, column: 24, scope: !2371)
!2524 = !DILocation(line: 256, column: 66, scope: !2371)
!2525 = !{!2401, !471, i64 72}
!2526 = !DILocation(line: 256, column: 89, scope: !2371)
!2527 = !DILocation(line: 256, column: 75, scope: !2371)
!2528 = !DILocation(line: 278, column: 17, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !250, line: 276, column: 19)
!2530 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 276, column: 13)
!2531 = !DILocation(line: 279, column: 31, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !250, line: 279, column: 21)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !250, line: 278, column: 28)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !250, line: 278, column: 17)
!2535 = !DILocation(line: 279, column: 34, scope: !2532)
!2536 = !DILocation(line: 279, column: 21, scope: !2533)
!2537 = !DILocation(line: 281, column: 21, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2532, file: !250, line: 279, column: 52)
!2539 = !DILocation(line: 282, column: 21, scope: !2538)
!2540 = !DILocation(line: 283, column: 21, scope: !2538)
!2541 = !DILocation(line: 284, column: 17, scope: !2538)
!2542 = !DILocation(line: 285, column: 47, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2532, file: !250, line: 284, column: 24)
!2544 = !{!2407, !473, i64 68}
!2545 = !DILocation(line: 286, column: 50, scope: !2543)
!2546 = !{!2401, !690, i64 124}
!2547 = !DILocation(line: 287, column: 21, scope: !2543)
!2548 = !DILocation(line: 288, column: 50, scope: !2543)
!2549 = !DILocation(line: 289, column: 47, scope: !2543)
!2550 = !DILocation(line: 292, column: 44, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2534, file: !250, line: 291, column: 20)
!2552 = !{!2407, !473, i64 64}
!2553 = !DILocation(line: 293, column: 32, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !250, line: 293, column: 21)
!2555 = !{!2407, !473, i64 28}
!2556 = !DILocation(line: 293, column: 57, scope: !2554)
!2557 = !{!2407, !473, i64 32}
!2558 = !DILocation(line: 293, column: 44, scope: !2554)
!2559 = !DILocation(line: 293, column: 21, scope: !2551)
!2560 = !DILocation(line: 295, column: 43, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2554, file: !250, line: 293, column: 77)
!2562 = !DILocation(line: 296, column: 21, scope: !2561)
!2563 = !DILocation(line: 297, column: 43, scope: !2561)
!2564 = !DILocation(line: 298, column: 17, scope: !2561)
!2565 = !DILocation(line: 298, column: 38, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2554, file: !250, line: 298, column: 28)
!2567 = !DILocation(line: 298, column: 41, scope: !2566)
!2568 = !DILocation(line: 298, column: 28, scope: !2554)
!2569 = !DILocation(line: 300, column: 21, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !250, line: 298, column: 59)
!2571 = !DILocation(line: 301, column: 21, scope: !2570)
!2572 = !DILocation(line: 302, column: 21, scope: !2570)
!2573 = !DILocation(line: 303, column: 17, scope: !2570)
!2574 = !DILocation(line: 304, column: 21, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2566, file: !250, line: 303, column: 24)
!2576 = !DILocation(line: 306, column: 44, scope: !2551)
!2577 = !DILocation(line: 58, column: 24, scope: !2493, inlinedAt: !2496)
!2578 = !DILocation(line: 318, column: 14, scope: !2367)
!2579 = !DILocation(line: 318, column: 28, scope: !2367)
!2580 = !DILocation(line: 320, column: 18, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 320, column: 13)
!2582 = !DILocation(line: 320, column: 29, scope: !2581)
!2583 = !DILocation(line: 0, scope: !2581)
!2584 = !DILocation(line: 320, column: 13, scope: !2367)
!2585 = !DILocation(line: 321, column: 41, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !250, line: 320, column: 41)
!2587 = !DILocation(line: 323, column: 9, scope: !2586)
!2588 = !DILocation(line: 324, column: 30, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2581, file: !250, line: 323, column: 16)
!2590 = !DILocation(line: 324, column: 47, scope: !2589)
!2591 = !DILocation(line: 330, column: 23, scope: !2379)
!2592 = !DILocation(line: 330, column: 13, scope: !2367)
!2593 = !DILocation(line: 332, column: 30, scope: !2378)
!2594 = !DILocation(line: 332, column: 23, scope: !2378)
!2595 = !DILocation(line: 335, column: 13, scope: !2378)
!2596 = !DILocation(line: 0, scope: !2378)
!2597 = !DILocation(line: 338, column: 13, scope: !2378)
!2598 = !DILocation(line: 340, column: 35, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2378, file: !250, line: 338, column: 33)
!2600 = !DILocation(line: 340, column: 42, scope: !2599)
!2601 = !DILocation(line: 340, column: 57, scope: !2599)
!2602 = !DILocation(line: 340, column: 65, scope: !2599)
!2603 = !DILocation(line: 47, column: 16, scope: !2500, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 341, column: 29, scope: !2599)
!2605 = !DILocation(line: 47, column: 38, scope: !2500, inlinedAt: !2604)
!2606 = !DILocation(line: 340, column: 17, scope: !2599)
!2607 = !DILocation(line: 0, scope: !2493, inlinedAt: !2604)
!2608 = !DILocation(line: 47, column: 31, scope: !2500, inlinedAt: !2604)
!2609 = !DILocation(line: 47, column: 9, scope: !2501, inlinedAt: !2604)
!2610 = !DILocation(line: 48, column: 60, scope: !2508, inlinedAt: !2604)
!2611 = !DILocation(line: 48, column: 55, scope: !2508, inlinedAt: !2604)
!2612 = !DILocation(line: 48, column: 87, scope: !2508, inlinedAt: !2604)
!2613 = !DILocation(line: 49, column: 87, scope: !2508, inlinedAt: !2604)
!2614 = !DILocation(line: 48, column: 18, scope: !2508, inlinedAt: !2604)
!2615 = !DILocation(line: 48, column: 17, scope: !2509, inlinedAt: !2604)
!2616 = !DILocation(line: 47, column: 68, scope: !2500, inlinedAt: !2604)
!2617 = distinct !{!2617, !2609, !2618, !743}
!2618 = !DILocation(line: 56, column: 9, scope: !2501, inlinedAt: !2604)
!2619 = !DILocation(line: 58, column: 24, scope: !2493, inlinedAt: !2604)
!2620 = !DILocation(line: 342, column: 26, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2599, file: !250, line: 341, column: 46)
!2622 = distinct !{!2622, !2606, !2623, !743}
!2623 = !DILocation(line: 343, column: 17, scope: !2599)
!2624 = !DILocation(line: 344, column: 27, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2599, file: !250, line: 344, column: 21)
!2626 = !DILocation(line: 344, column: 21, scope: !2599)
!2627 = !DILocation(line: 349, column: 51, scope: !2599)
!2628 = !{!2401, !471, i64 104}
!2629 = !DILocation(line: 349, column: 75, scope: !2599)
!2630 = !{!2401, !471, i64 0}
!2631 = !DILocation(line: 350, column: 56, scope: !2599)
!2632 = !{!2401, !473, i64 36}
!2633 = !DILocation(line: 350, column: 60, scope: !2599)
!2634 = !DILocation(line: 351, column: 56, scope: !2599)
!2635 = !{!2401, !471, i64 8}
!2636 = !DILocation(line: 349, column: 26, scope: !2599)
!2637 = !DILocation(line: 352, column: 29, scope: !2599)
!2638 = !DILocation(line: 338, column: 27, scope: !2378)
!2639 = distinct !{!2639, !2597, !2640, !743}
!2640 = !DILocation(line: 354, column: 13, scope: !2378)
!2641 = !DILocation(line: 355, column: 13, scope: !2378)
!2642 = !DILocation(line: 357, column: 27, scope: !2378)
!2643 = !DILocation(line: 358, column: 30, scope: !2378)
!2644 = !DILocation(line: 361, column: 17, scope: !2378)
!2645 = !DILocation(line: 362, column: 34, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !250, line: 361, column: 30)
!2647 = distinct !DILexicalBlock(scope: !2378, file: !250, line: 361, column: 17)
!2648 = !DILocation(line: 399, column: 13, scope: !2367)
!2649 = !DILocation(line: 363, column: 41, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !250, line: 363, column: 24)
!2651 = !DILocation(line: 363, column: 24, scope: !2647)
!2652 = !DILocation(line: 364, column: 44, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !250, line: 363, column: 46)
!2654 = !DILocation(line: 364, column: 31, scope: !2653)
!2655 = !DILocation(line: 365, column: 33, scope: !2653)
!2656 = !DILocation(line: 366, column: 13, scope: !2653)
!2657 = !DILocation(line: 369, column: 26, scope: !2382)
!2658 = !{i64 0, i64 8, !1042, i64 8, i64 8, !1042, i64 16, i64 8, !1042, i64 24, i64 8, !1042, i64 32, i64 4, !584, i64 36, i64 4, !584, i64 40, i64 4, !584, i64 44, i64 4, !584, i64 48, i64 1, !2659, i64 56, i64 8, !1042, i64 64, i64 8, !1042, i64 72, i64 8, !1042, i64 80, i64 4, !584, i64 88, i64 8, !1042, i64 96, i64 4, !584, i64 104, i64 8, !1042, i64 112, i64 4, !584, i64 116, i64 4, !584, i64 120, i64 4, !584, i64 124, i64 1, !2659}
!2659 = !{!690, !690, i64 0}
!2660 = !DILocation(line: 0, scope: !2382)
!2661 = !{i64 0, i64 8, !1042, i64 8, i64 8, !1042, i64 16, i64 8, !1042, i64 24, i64 4, !584, i64 28, i64 4, !584, i64 32, i64 4, !584, i64 36, i64 4, !584, i64 40, i64 1, !2659, i64 48, i64 8, !1042, i64 56, i64 8, !1042, i64 64, i64 8, !1042, i64 72, i64 4, !584, i64 80, i64 8, !1042, i64 88, i64 4, !584, i64 96, i64 8, !1042, i64 104, i64 4, !584, i64 108, i64 4, !584, i64 112, i64 4, !584, i64 116, i64 1, !2659}
!2662 = !{i64 0, i64 8, !1042, i64 8, i64 8, !1042, i64 16, i64 8, !1042, i64 24, i64 4, !584, i64 32, i64 8, !1042, i64 40, i64 4, !584, i64 48, i64 8, !1042, i64 56, i64 4, !584, i64 60, i64 4, !584, i64 64, i64 4, !584, i64 68, i64 1, !2659}
!2663 = !{i64 0, i64 8, !1042, i64 8, i64 4, !584, i64 12, i64 4, !584, i64 16, i64 4, !584, i64 20, i64 1, !2659}
!2664 = !DILocation(line: 370, column: 26, scope: !2382)
!2665 = !DILocation(line: 371, column: 23, scope: !2382)
!2666 = !DILocation(line: 371, column: 29, scope: !2382)
!2667 = !DILocation(line: 375, column: 34, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2382, file: !250, line: 375, column: 17)
!2669 = !DILocation(line: 375, column: 17, scope: !2382)
!2670 = !DILocation(line: 376, column: 34, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !250, line: 375, column: 40)
!2672 = !DILocation(line: 376, column: 27, scope: !2671)
!2673 = !DILocation(line: 377, column: 13, scope: !2671)
!2674 = !DILocation(line: 380, column: 13, scope: !2382)
!2675 = !DILocation(line: 381, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2382, file: !250, line: 381, column: 17)
!2677 = !DILocation(line: 381, column: 17, scope: !2382)
!2678 = !DILocation(line: 382, column: 26, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !250, line: 381, column: 32)
!2680 = !DILocation(line: 384, column: 13, scope: !2679)
!2681 = !DILocation(line: 387, column: 66, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !250, line: 384, column: 20)
!2683 = !DILocation(line: 385, column: 26, scope: !2682)
!2684 = !DILocation(line: 0, scope: !2676)
!2685 = !DILocation(line: 389, column: 13, scope: !2382)
!2686 = !DILocation(line: 399, column: 20, scope: !2387)
!2687 = !DILocation(line: 400, column: 18, scope: !2386)
!2688 = !DILocation(line: 400, column: 30, scope: !2386)
!2689 = !DILocation(line: 0, scope: !2385)
!2690 = !DILocation(line: 402, column: 38, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2385, file: !250, line: 402, column: 13)
!2692 = !{!2401, !473, i64 80}
!2693 = !DILocation(line: 402, column: 31, scope: !2691)
!2694 = !DILocation(line: 402, column: 13, scope: !2385)
!2695 = !DILocation(line: 404, column: 38, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !250, line: 404, column: 21)
!2697 = distinct !DILexicalBlock(scope: !2691, file: !250, line: 402, column: 58)
!2698 = !DILocation(line: 404, column: 50, scope: !2696)
!2699 = !DILocation(line: 404, column: 21, scope: !2697)
!2700 = !DILocation(line: 405, column: 50, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !250, line: 404, column: 56)
!2702 = !DILocation(line: 406, column: 42, scope: !2701)
!2703 = !DILocation(line: 406, column: 57, scope: !2701)
!2704 = !DILocation(line: 406, column: 62, scope: !2701)
!2705 = !DILocation(line: 406, column: 82, scope: !2701)
!2706 = !DILocation(line: 0, scope: !2701)
!2707 = !DILocation(line: 406, column: 33, scope: !2701)
!2708 = !DILocation(line: 407, column: 17, scope: !2701)
!2709 = !DILocation(line: 402, column: 54, scope: !2691)
!2710 = distinct !{!2710, !2694, !2711, !743}
!2711 = !DILocation(line: 409, column: 13, scope: !2385)
!2712 = !DILocation(line: 396, column: 14, scope: !2367)
!2713 = !DILocation(line: 412, column: 18, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 412, column: 13)
!2715 = !DILocation(line: 412, column: 29, scope: !2714)
!2716 = !DILocation(line: 0, scope: !2714)
!2717 = !DILocation(line: 412, column: 13, scope: !2367)
!2718 = !DILocation(line: 413, column: 41, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2714, file: !250, line: 412, column: 41)
!2720 = !DILocation(line: 415, column: 9, scope: !2719)
!2721 = !DILocation(line: 416, column: 30, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2714, file: !250, line: 415, column: 16)
!2723 = !DILocation(line: 416, column: 47, scope: !2722)
!2724 = !DILocation(line: 421, column: 28, scope: !2367)
!2725 = !DILocation(line: 425, column: 13, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2367, file: !250, line: 425, column: 13)
!2727 = !DILocation(line: 425, column: 25, scope: !2726)
!2728 = !DILocation(line: 426, column: 34, scope: !2726)
!2729 = !DILocation(line: 426, column: 39, scope: !2726)
!2730 = distinct !{!2730, !2395, !2731, !743}
!2731 = !DILocation(line: 430, column: 5, scope: !2358)
!2732 = !DILocation(line: 426, column: 53, scope: !2726)
!2733 = !DILocation(line: 426, column: 60, scope: !2726)
!2734 = !DILocation(line: 426, column: 65, scope: !2726)
!2735 = !DILocation(line: 426, column: 73, scope: !2726)
!2736 = !DILocation(line: 426, column: 85, scope: !2726)
!2737 = !DILocation(line: 426, column: 91, scope: !2726)
!2738 = !DILocation(line: 426, column: 99, scope: !2726)
!2739 = !DILocation(line: 425, column: 13, scope: !2367)
!2740 = !DILocation(line: 428, column: 13, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2726, file: !250, line: 426, column: 119)
!2742 = !DILocation(line: 429, column: 9, scope: !2741)
!2743 = !DILocation(line: 431, column: 1, scope: !2358)
!2744 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !250, file: !250, line: 797, type: !371, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751}
!2746 = !DILocalVariable(name: "user_context", arg: 1, scope: !2744, file: !250, line: 797, type: !15)
!2747 = !DILocalVariable(name: "f", arg: 2, scope: !2744, file: !250, line: 797, type: !256)
!2748 = !DILocalVariable(name: "min", arg: 3, scope: !2744, file: !250, line: 798, type: !161)
!2749 = !DILocalVariable(name: "size", arg: 4, scope: !2744, file: !250, line: 798, type: !161)
!2750 = !DILocalVariable(name: "closure", arg: 5, scope: !2744, file: !250, line: 798, type: !260)
!2751 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2744, file: !250, line: 798, type: !15)
!2752 = !DILocation(line: 0, scope: !2744)
!2753 = !DILocation(line: 799, column: 12, scope: !2744)
!2754 = !DILocation(line: 799, column: 5, scope: !2744)
!2755 = distinct !DISubprogram(name: "halide_do_task", scope: !250, file: !250, line: 787, type: !365, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "user_context", arg: 1, scope: !2755, file: !250, line: 787, type: !15)
!2758 = !DILocalVariable(name: "f", arg: 2, scope: !2755, file: !250, line: 787, type: !282)
!2759 = !DILocalVariable(name: "idx", arg: 3, scope: !2755, file: !250, line: 787, type: !161)
!2760 = !DILocalVariable(name: "closure", arg: 4, scope: !2755, file: !250, line: 788, type: !260)
!2761 = !DILocation(line: 0, scope: !2755)
!2762 = !DILocation(line: 789, column: 14, scope: !2755)
!2763 = !DILocation(line: 789, column: 12, scope: !2755)
!2764 = !DILocation(line: 789, column: 5, scope: !2755)
!2765 = distinct !DISubprogram(name: "worker_thread", linkageName: "_ZN6Halide7Runtime8Internal13worker_threadEPv", scope: !34, file: !250, line: 433, type: !13, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "arg", arg: 1, scope: !2765, file: !250, line: 433, type: !15)
!2768 = !DILocation(line: 0, scope: !2765)
!2769 = !DILocation(line: 434, column: 5, scope: !2765)
!2770 = !DILocation(line: 435, column: 34, scope: !2765)
!2771 = !DILocation(line: 435, column: 5, scope: !2765)
!2772 = !DILocation(line: 436, column: 5, scope: !2765)
!2773 = !DILocation(line: 437, column: 1, scope: !2765)
!2774 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "_ZN6Halide7Runtime8Internal27enqueue_work_already_lockedEiPNS1_4workES3_", scope: !34, file: !250, line: 439, type: !2775, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !161, !248, !248}
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2788, !2790}
!2778 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2774, file: !250, line: 439, type: !161)
!2779 = !DILocalVariable(name: "jobs", arg: 2, scope: !2774, file: !250, line: 439, type: !248)
!2780 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2774, file: !250, line: 439, type: !248)
!2781 = !DILocalVariable(name: "min_threads", scope: !2774, file: !250, line: 457, type: !161)
!2782 = !DILocalVariable(name: "workers_to_wake", scope: !2774, file: !250, line: 461, type: !161)
!2783 = !DILocalVariable(name: "stealable_jobs", scope: !2774, file: !250, line: 465, type: !66)
!2784 = !DILocalVariable(name: "job_has_acquires", scope: !2774, file: !250, line: 467, type: !66)
!2785 = !DILocalVariable(name: "job_may_block", scope: !2774, file: !250, line: 468, type: !66)
!2786 = !DILocalVariable(name: "i", scope: !2787, file: !250, line: 469, type: !161)
!2787 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 469, column: 5)
!2788 = !DILocalVariable(name: "i", scope: !2789, file: !250, line: 527, type: !161)
!2789 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 527, column: 5)
!2790 = !DILocalVariable(name: "nested_parallelism", scope: !2774, file: !250, line: 537, type: !66)
!2791 = !DILocation(line: 0, scope: !2774)
!2792 = !DILocation(line: 440, column: 21, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 440, column: 9)
!2794 = !{!2407, !690, i64 2121}
!2795 = !DILocation(line: 440, column: 9, scope: !2774)
!2796 = !DILocalVariable(name: "bytes", scope: !2797, file: !250, line: 148, type: !265)
!2797 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "_ZNK6Halide7Runtime8Internal12work_queue_t13assert_zeroedEv", scope: !325, file: !250, line: 146, type: !355, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !354, retainedNodes: !2798)
!2798 = !{!2799, !2796, !2801}
!2799 = !DILocalVariable(name: "this", arg: 1, scope: !2797, type: !2800, flags: DIFlagArtificial | DIFlagObjectPointer)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2801 = !DILocalVariable(name: "limit", scope: !2797, file: !250, line: 149, type: !265)
!2802 = !DILocation(line: 0, scope: !2797, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 441, column: 20, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2793, file: !250, line: 440, column: 34)
!2805 = !DILocation(line: 150, column: 33, scope: !2797, inlinedAt: !2803)
!2806 = !DILocation(line: 150, column: 40, scope: !2797, inlinedAt: !2803)
!2807 = !DILocation(line: 150, column: 9, scope: !2797, inlinedAt: !2803)
!2808 = !DILocation(line: 151, column: 18, scope: !2809, inlinedAt: !2803)
!2809 = distinct !DILexicalBlock(scope: !2797, file: !250, line: 150, column: 46)
!2810 = !DILocation(line: 150, column: 22, scope: !2797, inlinedAt: !2803)
!2811 = !DILocation(line: 150, column: 30, scope: !2797, inlinedAt: !2803)
!2812 = distinct !{!2812, !2807, !2813, !743}
!2813 = !DILocation(line: 152, column: 9, scope: !2797, inlinedAt: !2803)
!2814 = !DILocation(line: 153, column: 9, scope: !2815, inlinedAt: !2803)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !250, line: 153, column: 9)
!2816 = distinct !DILexicalBlock(scope: !2797, file: !250, line: 153, column: 9)
!2817 = !DILocation(line: 153, column: 9, scope: !2816, inlinedAt: !2803)
!2818 = !DILocation(line: 153, column: 9, scope: !2819, inlinedAt: !2803)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !250, line: 153, column: 9)
!2820 = !DILocation(line: 446, column: 25, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2804, file: !250, line: 446, column: 13)
!2822 = !{!2407, !473, i64 8}
!2823 = !DILocation(line: 446, column: 14, scope: !2821)
!2824 = !DILocation(line: 446, column: 13, scope: !2804)
!2825 = !DILocation(line: 447, column: 50, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !250, line: 446, column: 50)
!2827 = !DILocation(line: 447, column: 48, scope: !2826)
!2828 = !DILocation(line: 448, column: 9, scope: !2826)
!2829 = !DILocation(line: 449, column: 75, scope: !2804)
!2830 = !DILocation(line: 449, column: 46, scope: !2804)
!2831 = !DILocation(line: 449, column: 44, scope: !2804)
!2832 = !DILocation(line: 450, column: 32, scope: !2804)
!2833 = !DILocation(line: 451, column: 5, scope: !2804)
!2834 = !DILocation(line: 0, scope: !2787)
!2835 = !DILocation(line: 469, column: 23, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2787, file: !250, line: 469, column: 5)
!2837 = !DILocation(line: 469, column: 5, scope: !2787)
!2838 = !DILocation(line: 487, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 487, column: 9)
!2840 = !DILocation(line: 468, column: 10, scope: !2774)
!2841 = !DILocation(line: 457, column: 9, scope: !2774)
!2842 = !DILocation(line: 487, column: 9, scope: !2774)
!2843 = !DILocation(line: 470, column: 26, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !250, line: 470, column: 13)
!2845 = distinct !DILexicalBlock(scope: !2836, file: !250, line: 469, column: 40)
!2846 = !DILocation(line: 470, column: 38, scope: !2844)
!2847 = !DILocation(line: 470, column: 13, scope: !2845)
!2848 = !DILocation(line: 476, column: 26, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !250, line: 476, column: 13)
!2850 = !DILocation(line: 476, column: 41, scope: !2849)
!2851 = !DILocation(line: 476, column: 13, scope: !2845)
!2852 = !DILocation(line: 480, column: 26, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2845, file: !250, line: 480, column: 13)
!2854 = !DILocation(line: 480, column: 13, scope: !2845)
!2855 = !DILocation(line: 481, column: 28, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !250, line: 480, column: 34)
!2857 = !DILocation(line: 482, column: 9, scope: !2856)
!2858 = !DILocation(line: 483, column: 45, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2853, file: !250, line: 482, column: 16)
!2860 = !DILocation(line: 483, column: 29, scope: !2859)
!2861 = !DILocation(line: 0, scope: !2853)
!2862 = !DILocation(line: 469, column: 36, scope: !2836)
!2863 = distinct !{!2863, !2837, !2864, !743}
!2864 = !DILocation(line: 485, column: 5, scope: !2787)
!2865 = !DILocation(line: 497, column: 30, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !250, line: 497, column: 13)
!2867 = distinct !DILexicalBlock(scope: !2839, file: !250, line: 487, column: 33)
!2868 = !DILocation(line: 503, column: 27, scope: !2867)
!2869 = !DILocation(line: 503, column: 43, scope: !2867)
!2870 = !DILocation(line: 503, column: 57, scope: !2867)
!2871 = !DILocation(line: 504, column: 58, scope: !2867)
!2872 = !DILocation(line: 504, column: 82, scope: !2867)
!2873 = !DILocation(line: 504, column: 45, scope: !2867)
!2874 = !DILocation(line: 504, column: 87, scope: !2867)
!2875 = !DILocation(line: 505, column: 45, scope: !2867)
!2876 = !DILocation(line: 505, column: 63, scope: !2867)
!2877 = !DILocation(line: 505, column: 50, scope: !2867)
!2878 = !DILocation(line: 505, column: 80, scope: !2867)
!2879 = !DILocation(line: 503, column: 9, scope: !2867)
!2880 = !DILocation(line: 508, column: 35, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2867, file: !250, line: 505, column: 96)
!2882 = !DILocation(line: 510, column: 17, scope: !2881)
!2883 = !DILocation(line: 509, column: 58, scope: !2881)
!2884 = !DILocation(line: 509, column: 13, scope: !2881)
!2885 = !DILocation(line: 509, column: 62, scope: !2881)
!2886 = distinct !{!2886, !2879, !2887, !743}
!2887 = !DILocation(line: 511, column: 9, scope: !2867)
!2888 = !DILocation(line: 513, column: 30, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2867, file: !250, line: 513, column: 13)
!2890 = !DILocation(line: 514, column: 40, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2889, file: !250, line: 513, column: 48)
!2892 = !DILocation(line: 515, column: 9, scope: !2891)
!2893 = !DILocation(line: 518, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !250, line: 518, column: 9)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !250, line: 518, column: 9)
!2896 = distinct !DILexicalBlock(scope: !2839, file: !250, line: 516, column: 12)
!2897 = !DILocation(line: 518, column: 9, scope: !2895)
!2898 = !DILocation(line: 518, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !250, line: 518, column: 9)
!2900 = !DILocation(line: 521, column: 30, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !250, line: 521, column: 13)
!2902 = !DILocation(line: 522, column: 42, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2901, file: !250, line: 521, column: 48)
!2904 = !DILocation(line: 523, column: 9, scope: !2903)
!2905 = !DILocation(line: 0, scope: !2789)
!2906 = !DILocation(line: 527, column: 5, scope: !2789)
!2907 = !DILocation(line: 0, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !250, line: 527, column: 45)
!2909 = distinct !DILexicalBlock(scope: !2789, file: !250, line: 527, column: 5)
!2910 = !DILocation(line: 538, column: 20, scope: !2774)
!2911 = !DILocation(line: 538, column: 9, scope: !2774)
!2912 = !DILocation(line: 538, column: 36, scope: !2774)
!2913 = !DILocation(line: 542, column: 28, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 542, column: 9)
!2915 = !DILocation(line: 0, scope: !2914)
!2916 = !DILocation(line: 550, column: 5, scope: !2774)
!2917 = !DILocation(line: 551, column: 20, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 551, column: 9)
!2919 = !DILocation(line: 551, column: 52, scope: !2918)
!2920 = !DILocation(line: 551, column: 39, scope: !2918)
!2921 = !DILocation(line: 551, column: 9, scope: !2774)
!2922 = !DILocation(line: 530, column: 39, scope: !2908)
!2923 = !DILocation(line: 530, column: 9, scope: !2908)
!2924 = !DILocation(line: 530, column: 17, scope: !2908)
!2925 = !DILocation(line: 530, column: 26, scope: !2908)
!2926 = !DILocation(line: 531, column: 17, scope: !2908)
!2927 = !DILocation(line: 531, column: 26, scope: !2908)
!2928 = !DILocation(line: 532, column: 17, scope: !2908)
!2929 = !DILocation(line: 532, column: 31, scope: !2908)
!2930 = !DILocation(line: 533, column: 17, scope: !2908)
!2931 = !DILocation(line: 533, column: 34, scope: !2908)
!2932 = !DILocation(line: 527, column: 34, scope: !2909)
!2933 = distinct !{!2933, !2906, !2934, !743}
!2934 = !DILocation(line: 535, column: 5, scope: !2789)
!2935 = !DILocation(line: 552, column: 9, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2918, file: !250, line: 551, column: 65)
!2937 = !DILocation(line: 553, column: 13, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2936, file: !250, line: 553, column: 13)
!2939 = !DILocation(line: 553, column: 13, scope: !2936)
!2940 = !DILocation(line: 554, column: 13, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !250, line: 553, column: 29)
!2942 = !DILocation(line: 555, column: 9, scope: !2941)
!2943 = !DILocation(line: 558, column: 26, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2774, file: !250, line: 558, column: 9)
!2945 = !DILocation(line: 559, column: 13, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2944, file: !250, line: 558, column: 44)
!2947 = !DILocation(line: 560, column: 26, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !250, line: 559, column: 37)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !250, line: 559, column: 13)
!2950 = !DILocation(line: 560, column: 42, scope: !2948)
!2951 = !DILocation(line: 561, column: 9, scope: !2948)
!2952 = !DILocation(line: 562, column: 40, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !250, line: 561, column: 16)
!2954 = !DILocation(line: 565, column: 1, scope: !2774)
!2955 = distinct !DISubprogram(name: "halide_default_do_task", scope: !250, file: !250, line: 589, type: !365, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2956)
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DILocalVariable(name: "user_context", arg: 1, scope: !2955, file: !250, line: 589, type: !15)
!2958 = !DILocalVariable(name: "f", arg: 2, scope: !2955, file: !250, line: 589, type: !282)
!2959 = !DILocalVariable(name: "idx", arg: 3, scope: !2955, file: !250, line: 589, type: !161)
!2960 = !DILocalVariable(name: "closure", arg: 4, scope: !2955, file: !250, line: 590, type: !260)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 591, column: 12, scope: !2955)
!2963 = !DILocation(line: 591, column: 5, scope: !2955)
!2964 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !250, file: !250, line: 594, type: !371, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971}
!2966 = !DILocalVariable(name: "user_context", arg: 1, scope: !2964, file: !250, line: 594, type: !15)
!2967 = !DILocalVariable(name: "f", arg: 2, scope: !2964, file: !250, line: 594, type: !256)
!2968 = !DILocalVariable(name: "min", arg: 3, scope: !2964, file: !250, line: 595, type: !161)
!2969 = !DILocalVariable(name: "extent", arg: 4, scope: !2964, file: !250, line: 595, type: !161)
!2970 = !DILocalVariable(name: "closure", arg: 5, scope: !2964, file: !250, line: 595, type: !260)
!2971 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2964, file: !250, line: 596, type: !15)
!2972 = !DILocation(line: 0, scope: !2964)
!2973 = !DILocation(line: 597, column: 12, scope: !2964)
!2974 = !DILocation(line: 597, column: 5, scope: !2964)
!2975 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !250, file: !250, line: 600, type: !377, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982}
!2977 = !DILocalVariable(name: "user_context", arg: 1, scope: !2975, file: !250, line: 600, type: !15)
!2978 = !DILocalVariable(name: "f", arg: 2, scope: !2975, file: !250, line: 600, type: !282)
!2979 = !DILocalVariable(name: "min", arg: 3, scope: !2975, file: !250, line: 601, type: !161)
!2980 = !DILocalVariable(name: "size", arg: 4, scope: !2975, file: !250, line: 601, type: !161)
!2981 = !DILocalVariable(name: "closure", arg: 5, scope: !2975, file: !250, line: 601, type: !260)
!2982 = !DILocalVariable(name: "job", scope: !2975, file: !250, line: 606, type: !249)
!2983 = !DILocation(line: 0, scope: !2975)
!2984 = !DILocation(line: 602, column: 14, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2975, file: !250, line: 602, column: 9)
!2986 = !DILocation(line: 602, column: 9, scope: !2975)
!2987 = !DILocation(line: 606, column: 5, scope: !2975)
!2988 = !DILocation(line: 606, column: 10, scope: !2975)
!2989 = !DILocation(line: 607, column: 14, scope: !2975)
!2990 = !DILocation(line: 607, column: 17, scope: !2975)
!2991 = !DILocation(line: 608, column: 14, scope: !2975)
!2992 = !DILocation(line: 608, column: 18, scope: !2975)
!2993 = !DILocation(line: 609, column: 14, scope: !2975)
!2994 = !DILocation(line: 609, column: 21, scope: !2975)
!2995 = !DILocation(line: 610, column: 14, scope: !2975)
!2996 = !DILocation(line: 610, column: 21, scope: !2975)
!2997 = !DILocation(line: 611, column: 14, scope: !2975)
!2998 = !DILocation(line: 611, column: 25, scope: !2975)
!2999 = !DILocation(line: 612, column: 14, scope: !2975)
!3000 = !DILocation(line: 612, column: 29, scope: !2975)
!3001 = !DILocation(line: 613, column: 14, scope: !2975)
!3002 = !DILocation(line: 613, column: 22, scope: !2975)
!3003 = !DILocation(line: 614, column: 14, scope: !2975)
!3004 = !DILocation(line: 614, column: 26, scope: !2975)
!3005 = !DILocation(line: 615, column: 14, scope: !2975)
!3006 = !DILocation(line: 615, column: 19, scope: !2975)
!3007 = !{!2401, !471, i64 16}
!3008 = !DILocation(line: 616, column: 9, scope: !2975)
!3009 = !DILocation(line: 616, column: 17, scope: !2975)
!3010 = !{!2401, !471, i64 56}
!3011 = !DILocation(line: 617, column: 9, scope: !2975)
!3012 = !DILocation(line: 617, column: 22, scope: !2975)
!3013 = !DILocation(line: 618, column: 9, scope: !2975)
!3014 = !DILocation(line: 618, column: 21, scope: !2975)
!3015 = !DILocation(line: 619, column: 9, scope: !2975)
!3016 = !DILocation(line: 619, column: 24, scope: !2975)
!3017 = !DILocation(line: 620, column: 9, scope: !2975)
!3018 = !DILocation(line: 620, column: 24, scope: !2975)
!3019 = !DILocation(line: 621, column: 9, scope: !2975)
!3020 = !DILocation(line: 621, column: 27, scope: !2975)
!3021 = !DILocation(line: 622, column: 9, scope: !2975)
!3022 = !DILocation(line: 622, column: 18, scope: !2975)
!3023 = !DILocation(line: 623, column: 9, scope: !2975)
!3024 = !DILocation(line: 623, column: 23, scope: !2975)
!3025 = !DILocation(line: 624, column: 9, scope: !2975)
!3026 = !DILocation(line: 624, column: 20, scope: !2975)
!3027 = !DILocation(line: 625, column: 5, scope: !2975)
!3028 = !DILocation(line: 626, column: 5, scope: !2975)
!3029 = !DILocation(line: 627, column: 5, scope: !2975)
!3030 = !DILocation(line: 628, column: 5, scope: !2975)
!3031 = !DILocation(line: 629, column: 16, scope: !2975)
!3032 = !DILocation(line: 630, column: 1, scope: !2975)
!3033 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !250, file: !250, line: 632, type: !383, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3034)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3042, !3043}
!3035 = !DILocalVariable(name: "user_context", arg: 1, scope: !3033, file: !250, line: 632, type: !15)
!3036 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3033, file: !250, line: 632, type: !161)
!3037 = !DILocalVariable(name: "tasks", arg: 3, scope: !3033, file: !250, line: 633, type: !385)
!3038 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3033, file: !250, line: 634, type: !15)
!3039 = !DILocalVariable(name: "jobs", scope: !3033, file: !250, line: 635, type: !248)
!3040 = !DILocalVariable(name: "i", scope: !3041, file: !250, line: 637, type: !161)
!3041 = distinct !DILexicalBlock(scope: !3033, file: !250, line: 637, column: 5)
!3042 = !DILocalVariable(name: "exit_status", scope: !3033, file: !250, line: 659, type: !161)
!3043 = !DILocalVariable(name: "i", scope: !3044, file: !250, line: 660, type: !161)
!3044 = distinct !DILexicalBlock(scope: !3033, file: !250, line: 660, column: 5)
!3045 = !DILocation(line: 0, scope: !3033)
!3046 = !DILocation(line: 635, column: 58, scope: !3033)
!3047 = !DILocation(line: 635, column: 26, scope: !3033)
!3048 = !DILocation(line: 0, scope: !3041)
!3049 = !DILocation(line: 637, column: 23, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3041, file: !250, line: 637, column: 5)
!3051 = !DILocation(line: 637, column: 5, scope: !3041)
!3052 = !DILocation(line: 653, column: 19, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3033, file: !250, line: 653, column: 9)
!3054 = !DILocation(line: 653, column: 9, scope: !3033)
!3055 = !DILocation(line: 638, column: 20, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !250, line: 638, column: 13)
!3057 = distinct !DILexicalBlock(scope: !3050, file: !250, line: 637, column: 41)
!3058 = !{!2402, !473, i64 40}
!3059 = !DILocation(line: 638, column: 27, scope: !3056)
!3060 = !DILocation(line: 638, column: 13, scope: !3057)
!3061 = !DILocation(line: 640, column: 22, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3056, file: !250, line: 638, column: 33)
!3063 = !DILocation(line: 641, column: 13, scope: !3062)
!3064 = !DILocation(line: 643, column: 30, scope: !3057)
!3065 = !DILocation(line: 643, column: 9, scope: !3057)
!3066 = !DILocation(line: 643, column: 22, scope: !3057)
!3067 = !{i64 0, i64 8, !1042, i64 8, i64 8, !1042, i64 16, i64 8, !1042, i64 24, i64 8, !1042, i64 32, i64 4, !584, i64 36, i64 4, !584, i64 40, i64 4, !584, i64 44, i64 4, !584, i64 48, i64 1, !2659}
!3068 = !DILocation(line: 644, column: 17, scope: !3057)
!3069 = !DILocation(line: 644, column: 25, scope: !3057)
!3070 = !DILocation(line: 645, column: 17, scope: !3057)
!3071 = !DILocation(line: 645, column: 30, scope: !3057)
!3072 = !DILocation(line: 646, column: 17, scope: !3057)
!3073 = !DILocation(line: 646, column: 29, scope: !3057)
!3074 = !DILocation(line: 647, column: 17, scope: !3057)
!3075 = !DILocation(line: 647, column: 32, scope: !3057)
!3076 = !DILocation(line: 648, column: 17, scope: !3057)
!3077 = !DILocation(line: 648, column: 32, scope: !3057)
!3078 = !DILocation(line: 649, column: 17, scope: !3057)
!3079 = !DILocation(line: 649, column: 35, scope: !3057)
!3080 = !DILocation(line: 650, column: 17, scope: !3057)
!3081 = !DILocation(line: 650, column: 28, scope: !3057)
!3082 = !DILocation(line: 651, column: 5, scope: !3057)
!3083 = !DILocation(line: 637, column: 37, scope: !3050)
!3084 = distinct !{!3084, !3051, !3085, !743}
!3085 = !DILocation(line: 651, column: 5, scope: !3041)
!3086 = !DILocation(line: 657, column: 5, scope: !3033)
!3087 = !DILocation(line: 658, column: 50, scope: !3033)
!3088 = !DILocation(line: 658, column: 5, scope: !3033)
!3089 = !DILocation(line: 0, scope: !3044)
!3090 = !DILocation(line: 660, column: 23, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3044, file: !250, line: 660, column: 5)
!3092 = !DILocation(line: 660, column: 5, scope: !3044)
!3093 = !DILocation(line: 668, column: 5, scope: !3033)
!3094 = !DILocation(line: 663, column: 43, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !250, line: 660, column: 41)
!3096 = !DILocation(line: 663, column: 9, scope: !3095)
!3097 = !DILocation(line: 664, column: 21, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !250, line: 664, column: 13)
!3099 = !DILocation(line: 664, column: 33, scope: !3098)
!3100 = !DILocation(line: 664, column: 13, scope: !3095)
!3101 = !DILocation(line: 660, column: 37, scope: !3091)
!3102 = distinct !{!3102, !3092, !3103, !743}
!3103 = !DILocation(line: 667, column: 5, scope: !3044)
!3104 = !DILocation(line: 670, column: 1, scope: !3033)
!3105 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !250, file: !250, line: 715, type: !390, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DILocalVariable(name: "s", arg: 1, scope: !3105, file: !250, line: 715, type: !273)
!3108 = !DILocalVariable(name: "n", arg: 2, scope: !3105, file: !250, line: 715, type: !161)
!3109 = !DILocalVariable(name: "sem", scope: !3105, file: !250, line: 716, type: !305)
!3110 = !DILocation(line: 0, scope: !3105)
!3111 = !DILocation(line: 717, column: 76, scope: !3105)
!3112 = !DILocalVariable(name: "addr", arg: 1, scope: !3113, file: !32, line: 218, type: !596)
!3113 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_120atomic_store_releaseIiEEvPT_S6_", scope: !626, file: !32, line: 218, type: !3114, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3118, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !596, !596}
!3116 = !{!3112, !3117}
!3117 = !DILocalVariable(name: "val", arg: 2, scope: !3113, file: !32, line: 218, type: !596)
!3118 = !{!3119}
!3119 = !DITemplateTypeParameter(name: "T", type: !161)
!3120 = !DILocation(line: 0, scope: !3113, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 717, column: 5, scope: !3105)
!3122 = !DILocation(line: 219, column: 5, scope: !3113, inlinedAt: !3121)
!3123 = !DILocation(line: 718, column: 5, scope: !3105)
!3124 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !250, file: !250, line: 735, type: !396, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130}
!3126 = !DILocalVariable(name: "s", arg: 1, scope: !3124, file: !250, line: 735, type: !273)
!3127 = !DILocalVariable(name: "n", arg: 2, scope: !3124, file: !250, line: 735, type: !161)
!3128 = !DILocalVariable(name: "sem", scope: !3124, file: !250, line: 739, type: !305)
!3129 = !DILocalVariable(name: "expected", scope: !3124, file: !250, line: 741, type: !161)
!3130 = !DILocalVariable(name: "desired", scope: !3124, file: !250, line: 742, type: !161)
!3131 = !DILocation(line: 0, scope: !3124)
!3132 = !DILocation(line: 736, column: 11, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3124, file: !250, line: 736, column: 9)
!3134 = !DILocation(line: 736, column: 9, scope: !3124)
!3135 = !DILocation(line: 743, column: 75, scope: !3124)
!3136 = !DILocalVariable(name: "addr", arg: 1, scope: !3137, file: !32, line: 205, type: !596)
!3137 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_119atomic_load_acquireIiEEvPT_S6_", scope: !626, file: !32, line: 205, type: !3114, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3118, retainedNodes: !3138)
!3138 = !{!3136, !3139}
!3139 = !DILocalVariable(name: "val", arg: 2, scope: !3137, file: !32, line: 205, type: !596)
!3140 = !DILocation(line: 0, scope: !3137, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 743, column: 5, scope: !3124)
!3142 = !DILocation(line: 206, column: 5, scope: !3137, inlinedAt: !3141)
!3143 = !DILocation(line: 745, column: 28, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3124, file: !250, line: 744, column: 8)
!3145 = !DILocation(line: 746, column: 22, scope: !3124)
!3146 = !DILocation(line: 746, column: 27, scope: !3124)
!3147 = !DILocalVariable(name: "addr", arg: 1, scope: !3148, file: !32, line: 179, type: !596)
!3148 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_130atomic_cas_weak_relacq_relaxedIiEEbPT_S6_S6_", scope: !626, file: !32, line: 179, type: !3149, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3118, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!66, !596, !596, !596}
!3151 = !{!3147, !3152, !3153}
!3152 = !DILocalVariable(name: "expected", arg: 2, scope: !3148, file: !32, line: 179, type: !596)
!3153 = !DILocalVariable(name: "desired", arg: 3, scope: !3148, file: !32, line: 179, type: !596)
!3154 = !DILocation(line: 0, scope: !3148, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 747, column: 15, scope: !3124)
!3156 = !DILocation(line: 180, column: 12, scope: !3148, inlinedAt: !3155)
!3157 = !DILocation(line: 749, column: 1, scope: !3124)
!3158 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !250, file: !250, line: 721, type: !390, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3159)
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DILocalVariable(name: "s", arg: 1, scope: !3158, file: !250, line: 721, type: !273)
!3161 = !DILocalVariable(name: "n", arg: 2, scope: !3158, file: !250, line: 721, type: !161)
!3162 = !DILocalVariable(name: "sem", scope: !3158, file: !250, line: 722, type: !305)
!3163 = !DILocalVariable(name: "old_val", scope: !3158, file: !250, line: 723, type: !161)
!3164 = !DILocation(line: 0, scope: !3158)
!3165 = !DILocation(line: 723, column: 102, scope: !3158)
!3166 = !DILocalVariable(name: "addr", arg: 1, scope: !3167, file: !32, line: 170, type: !596)
!3167 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "_ZN6Halide7Runtime8Internal15Synchronization12_GLOBAL__N_132atomic_fetch_add_acquire_releaseIiEET_PS5_S5_", scope: !626, file: !32, line: 170, type: !3168, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !3118, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!161, !596, !161}
!3170 = !{!3166, !3171}
!3171 = !DILocalVariable(name: "val", arg: 2, scope: !3167, file: !32, line: 170, type: !161)
!3172 = !DILocation(line: 0, scope: !3167, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 723, column: 19, scope: !3158)
!3174 = !DILocation(line: 171, column: 12, scope: !3167, inlinedAt: !3173)
!3175 = !DILocation(line: 725, column: 17, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3158, file: !250, line: 725, column: 9)
!3177 = !DILocation(line: 725, column: 22, scope: !3176)
!3178 = !DILocation(line: 727, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !250, line: 725, column: 33)
!3180 = !DILocation(line: 728, column: 9, scope: !3179)
!3181 = !DILocation(line: 729, column: 9, scope: !3179)
!3182 = !DILocation(line: 730, column: 9, scope: !3179)
!3183 = !DILocation(line: 731, column: 5, scope: !3179)
!3184 = !DILocation(line: 732, column: 20, scope: !3158)
!3185 = !DILocation(line: 732, column: 5, scope: !3158)
!3186 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !9, file: !250, line: 584, type: !767, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3187 = !DILocation(line: 585, column: 5, scope: !3186)
!3188 = !DILocation(line: 586, column: 1, scope: !3186)
!3189 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !250, file: !250, line: 689, type: !767, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3190 = !{!3191}
!3191 = !DILocalVariable(name: "i", scope: !3192, file: !250, line: 702, type: !161)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !250, line: 702, column: 9)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !250, line: 690, column: 33)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !250, line: 690, column: 9)
!3195 = !DILocation(line: 690, column: 20, scope: !3194)
!3196 = !DILocation(line: 690, column: 9, scope: !3189)
!3197 = !DILocation(line: 693, column: 9, scope: !3193)
!3198 = !DILocation(line: 695, column: 29, scope: !3193)
!3199 = !DILocation(line: 696, column: 9, scope: !3193)
!3200 = !DILocation(line: 697, column: 9, scope: !3193)
!3201 = !DILocation(line: 698, column: 9, scope: !3193)
!3202 = !DILocation(line: 699, column: 9, scope: !3193)
!3203 = !DILocation(line: 0, scope: !3192)
!3204 = !DILocation(line: 702, column: 40, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3192, file: !250, line: 702, column: 9)
!3206 = !DILocation(line: 702, column: 27, scope: !3205)
!3207 = !DILocation(line: 702, column: 9, scope: !3192)
!3208 = !DILocalVariable(name: "this", arg: 1, scope: !3209, type: !3213, flags: DIFlagArtificial | DIFlagObjectPointer)
!3209 = distinct !DISubprogram(name: "reset", linkageName: "_ZN6Halide7Runtime8Internal12work_queue_t5resetEv", scope: !325, file: !250, line: 158, type: !358, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !357, retainedNodes: !3210)
!3210 = !{!3208, !3211, !3212}
!3211 = !DILocalVariable(name: "bytes", scope: !3209, file: !250, line: 160, type: !309)
!3212 = !DILocalVariable(name: "limit", scope: !3209, file: !250, line: 161, type: !309)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3214 = !DILocation(line: 0, scope: !3209, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 707, column: 20, scope: !3193)
!3216 = !DILocation(line: 162, column: 9, scope: !3209, inlinedAt: !3215)
!3217 = !DILocation(line: 708, column: 5, scope: !3193)
!3218 = !DILocation(line: 703, column: 32, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3205, file: !250, line: 702, column: 62)
!3220 = !DILocation(line: 703, column: 13, scope: !3219)
!3221 = !DILocation(line: 702, column: 58, scope: !3205)
!3222 = distinct !{!3222, !3207, !3223, !743}
!3223 = !DILocation(line: 704, column: 9, scope: !3192)
!3224 = !DILocation(line: 709, column: 1, scope: !3189)
!3225 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !250, file: !250, line: 672, type: !2321, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3226)
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !250, line: 672, type: !161)
!3228 = !DILocalVariable(name: "old", scope: !3225, file: !250, line: 683, type: !161)
!3229 = !DILocation(line: 0, scope: !3225)
!3230 = !DILocation(line: 673, column: 11, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3225, file: !250, line: 673, column: 9)
!3232 = !DILocation(line: 673, column: 9, scope: !3225)
!3233 = !DILocation(line: 674, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !250, line: 673, column: 16)
!3235 = !DILocation(line: 679, column: 5, scope: !3225)
!3236 = !DILocation(line: 680, column: 9, scope: !3225)
!3237 = !DILocation(line: 680, column: 11, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3225, file: !250, line: 680, column: 9)
!3239 = !DILocation(line: 681, column: 13, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3238, file: !250, line: 680, column: 17)
!3241 = !DILocation(line: 682, column: 5, scope: !3240)
!3242 = !DILocation(line: 683, column: 26, scope: !3225)
!3243 = !DILocation(line: 684, column: 42, scope: !3225)
!3244 = !DILocation(line: 684, column: 40, scope: !3225)
!3245 = !DILocation(line: 685, column: 5, scope: !3225)
!3246 = !DILocation(line: 686, column: 5, scope: !3225)
!3247 = !DISubprogram(name: "halide_error", scope: !242, file: !242, line: 111, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3248 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !250, file: !250, line: 751, type: !3249, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!363, !363}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "f", arg: 1, scope: !3248, file: !250, line: 751, type: !363)
!3253 = !DILocalVariable(name: "result", scope: !3248, file: !250, line: 752, type: !363)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 752, column: 31, scope: !3248)
!3256 = !DILocation(line: 753, column: 20, scope: !3248)
!3257 = !DILocation(line: 754, column: 5, scope: !3248)
!3258 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !250, file: !250, line: 757, type: !3259, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!369, !369}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "f", arg: 1, scope: !3258, file: !250, line: 757, type: !369)
!3263 = !DILocalVariable(name: "result", scope: !3258, file: !250, line: 758, type: !369)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 758, column: 36, scope: !3258)
!3266 = !DILocation(line: 759, column: 25, scope: !3258)
!3267 = !DILocation(line: 760, column: 5, scope: !3258)
!3268 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !250, file: !250, line: 763, type: !3269, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!375, !375}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "f", arg: 1, scope: !3268, file: !250, line: 763, type: !375)
!3273 = !DILocalVariable(name: "result", scope: !3268, file: !250, line: 764, type: !375)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 764, column: 34, scope: !3268)
!3276 = !DILocation(line: 765, column: 23, scope: !3268)
!3277 = !DILocation(line: 766, column: 5, scope: !3268)
!3278 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !250, file: !250, line: 769, type: !3279, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !375, !363, !369, !381, !388, !394, !400}
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288}
!3282 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !3278, file: !250, line: 770, type: !375)
!3283 = !DILocalVariable(name: "do_task", arg: 2, scope: !3278, file: !250, line: 771, type: !363)
!3284 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !3278, file: !250, line: 772, type: !369)
!3285 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !3278, file: !250, line: 773, type: !381)
!3286 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !3278, file: !250, line: 774, type: !388)
!3287 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !3278, file: !250, line: 775, type: !394)
!3288 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !3278, file: !250, line: 776, type: !400)
!3289 = !DILocation(line: 0, scope: !3278)
!3290 = !DILocation(line: 778, column: 23, scope: !3278)
!3291 = !DILocation(line: 779, column: 20, scope: !3278)
!3292 = !DILocation(line: 780, column: 25, scope: !3278)
!3293 = !DILocation(line: 781, column: 30, scope: !3278)
!3294 = !DILocation(line: 782, column: 27, scope: !3278)
!3295 = !DILocation(line: 783, column: 34, scope: !3278)
!3296 = !DILocation(line: 784, column: 30, scope: !3278)
!3297 = !DILocation(line: 785, column: 1, scope: !3278)
!3298 = distinct !DISubprogram(name: "halide_do_par_for", scope: !250, file: !250, line: 792, type: !377, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3299)
!3299 = !{!3300, !3301, !3302, !3303, !3304}
!3300 = !DILocalVariable(name: "user_context", arg: 1, scope: !3298, file: !250, line: 792, type: !15)
!3301 = !DILocalVariable(name: "f", arg: 2, scope: !3298, file: !250, line: 792, type: !282)
!3302 = !DILocalVariable(name: "min", arg: 3, scope: !3298, file: !250, line: 793, type: !161)
!3303 = !DILocalVariable(name: "size", arg: 4, scope: !3298, file: !250, line: 793, type: !161)
!3304 = !DILocalVariable(name: "closure", arg: 5, scope: !3298, file: !250, line: 793, type: !260)
!3305 = !DILocation(line: 0, scope: !3298)
!3306 = !DILocation(line: 794, column: 14, scope: !3298)
!3307 = !DILocation(line: 794, column: 12, scope: !3298)
!3308 = !DILocation(line: 794, column: 5, scope: !3298)
!3309 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !250, file: !250, line: 802, type: !383, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3310)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "user_context", arg: 1, scope: !3309, file: !250, line: 802, type: !15)
!3312 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !3309, file: !250, line: 802, type: !161)
!3313 = !DILocalVariable(name: "tasks", arg: 3, scope: !3309, file: !250, line: 803, type: !385)
!3314 = !DILocalVariable(name: "task_parent", arg: 4, scope: !3309, file: !250, line: 804, type: !15)
!3315 = !DILocation(line: 0, scope: !3309)
!3316 = !DILocation(line: 805, column: 12, scope: !3309)
!3317 = !DILocation(line: 805, column: 5, scope: !3309)
!3318 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !250, file: !250, line: 808, type: !390, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3319)
!3319 = !{!3320, !3321}
!3320 = !DILocalVariable(name: "sema", arg: 1, scope: !3318, file: !250, line: 808, type: !273)
!3321 = !DILocalVariable(name: "count", arg: 2, scope: !3318, file: !250, line: 808, type: !161)
!3322 = !DILocation(line: 0, scope: !3318)
!3323 = !DILocation(line: 809, column: 12, scope: !3318)
!3324 = !DILocation(line: 809, column: 5, scope: !3318)
!3325 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !250, file: !250, line: 812, type: !390, scopeLine: 812, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3326 = !{!3327, !3328}
!3327 = !DILocalVariable(name: "sema", arg: 1, scope: !3325, file: !250, line: 812, type: !273)
!3328 = !DILocalVariable(name: "count", arg: 2, scope: !3325, file: !250, line: 812, type: !161)
!3329 = !DILocation(line: 0, scope: !3325)
!3330 = !DILocation(line: 813, column: 12, scope: !3325)
!3331 = !DILocation(line: 813, column: 5, scope: !3325)
!3332 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !250, file: !250, line: 816, type: !396, scopeLine: 816, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3333)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "sema", arg: 1, scope: !3332, file: !250, line: 816, type: !273)
!3335 = !DILocalVariable(name: "count", arg: 2, scope: !3332, file: !250, line: 816, type: !161)
!3336 = !DILocation(line: 0, scope: !3332)
!3337 = !DILocation(line: 817, column: 12, scope: !3332)
!3338 = !DILocation(line: 817, column: 5, scope: !3332)
!3339 = !DISubprogram(name: "qurt_mutex_init", scope: !23, file: !23, line: 226, type: !3340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3342}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!3343 = !DISubprogram(name: "qurt_cond_init", scope: !23, file: !23, line: 231, type: !3344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!3347 = !DISubprogram(name: "qurt_mutex_lock", scope: !23, file: !23, line: 228, type: !3340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3348 = !DISubprogram(name: "qurt_cond_wait", scope: !23, file: !23, line: 234, type: !3349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{null, !3346, !3342}
!3351 = !DISubprogram(name: "qurt_mutex_unlock", scope: !23, file: !23, line: 229, type: !3340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3352 = !DISubprogram(name: "qurt_cond_destroy", scope: !23, file: !23, line: 232, type: !3344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3353 = !DISubprogram(name: "qurt_mutex_destroy", scope: !23, file: !23, line: 227, type: !3340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3354 = !DISubprogram(name: "qurt_cond_signal", scope: !23, file: !23, line: 233, type: !3344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
