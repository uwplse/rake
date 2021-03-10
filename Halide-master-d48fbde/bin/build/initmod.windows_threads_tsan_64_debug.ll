; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp"
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
@"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" = weak dso_local global [24576 x i8] zeroinitializer, align 1, !dbg !0
@"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", comdat, align 1
@"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", comdat, align 1
@"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A" = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" { %struct.halide_mutex zeroinitializer, i32 0, i32 0, %"struct.Halide::Runtime::Internal::work"* null, i32 0, i32 0, i32 0, [4 x i8] undef, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, %struct.halide_cond zeroinitializer, i32 0, i32 0, [256 x %struct.halide_thread*] zeroinitializer, i8 0, i8 0, i32 0 }, align 8, !dbg !11
@"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", comdat, align 1
@"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 8, !dbg !121
@"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 8, !dbg !127
@"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 8, !dbg !133
@"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 8, !dbg !139
@"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 8, !dbg !146
@"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA" = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 8, !dbg !152
@"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 8, !dbg !158
@"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", comdat, align 1
@"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", comdat, align 1
@"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", comdat, align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z"(i8* %0) #0 !dbg !390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i8* %0, metadata !395, metadata !DIExpression()), !dbg !396
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !397
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !397, !tbaa !398
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !397
  %5 = bitcast i8* %4 to i8**, !dbg !397
  %6 = load i8*, i8** %5, align 8, !dbg !397, !tbaa !403
  tail call void %3(i8* %6) #6, !dbg !397
  ret i8* null, !dbg !404
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !405 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@", i64 0, i64 0)) #6, !dbg !410
  call void @llvm.dbg.value(metadata i8* %1, metadata !409, metadata !DIExpression()), !dbg !411
  %2 = icmp eq i8* %1, null, !dbg !412
  br i1 %2, label %5, label %3, !dbg !412

3:                                                ; preds = %0
  %4 = tail call i32 @atoi(i8* nonnull %1) #6, !dbg !413
  br label %5, !dbg !413

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 8, %0 ], !dbg !416
  ret i32 %6, !dbg !417
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !418 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !422, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !423, metadata !DIExpression()), !dbg !425
  %3 = tail call i8* @malloc(i64 24) #6, !dbg !426
  call void @llvm.dbg.value(metadata i8* %3, metadata !424, metadata !DIExpression()), !dbg !425
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !427
  store void (i8*)* %0, void (i8*)** %4, align 8, !dbg !427, !tbaa !398
  %5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !428
  %6 = bitcast i8* %5 to i8**, !dbg !428
  store i8* %1, i8** %6, align 8, !dbg !428, !tbaa !403
  %7 = tail call i8* @CreateThread(i8* null, i64 0, i8* (i8*)* nonnull @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z", i8* %3, i32 0, i32* null) #6, !dbg !429
  %8 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !429
  %9 = bitcast i8* %8 to i8**, !dbg !429
  store i8* %7, i8** %9, align 8, !dbg !429, !tbaa !430
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !431
  ret %struct.halide_thread* %10, !dbg !431
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #3

declare dso_local i8* @CreateThread(i8*, i64, i8* (i8*)*, i8*, i32, i32*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !432 {
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !436, metadata !DIExpression()), !dbg !438
  %2 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !439
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %2, metadata !437, metadata !DIExpression()), !dbg !438
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %2, i64 0, i32 2, !dbg !440
  %4 = load i8*, i8** %3, align 8, !dbg !440, !tbaa !430
  %5 = tail call i32 @WaitForSingleObject(i8* %4, i32 -1) #6, !dbg !440
  %6 = bitcast %struct.halide_thread* %0 to i8*, !dbg !441
  tail call void @free(i8* %6) #6, !dbg !441
  ret void, !dbg !442
}

declare dso_local i32 @WaitForSingleObject(i8*, i32) local_unnamed_addr #3

declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !443 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !445, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 40, metadata !447, metadata !DIExpression()), !dbg !467
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !468
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64* %3, metadata !476, metadata !DIExpression()), !dbg !479
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !481
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13, !dbg !482

13:                                               ; preds = %64, %1
  %14 = phi i64 [ %4, %1 ], [ %65, %64 ]
  %15 = phi i32 [ 40, %1 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %14, metadata !459, metadata !DIExpression()), !dbg !467
  %16 = and i64 %14, 1, !dbg !483
  %17 = icmp eq i64 %16, 0, !dbg !483
  br i1 %17, label %18, label %29, !dbg !483

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !459, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %19, metadata !459, metadata !DIExpression()), !dbg !467
  %20 = or i64 %19, 1, !dbg !484
  call void @llvm.dbg.value(metadata i64 %20, metadata !460, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64* %3, metadata !492, metadata !DIExpression()), !dbg !493
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic, !dbg !495
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !495
  br i1 %22, label %67, label %23, !dbg !495

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !495
  call void @llvm.dbg.value(metadata i32 %15, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %24, metadata !459, metadata !DIExpression()), !dbg !467
  %25 = and i64 %24, 1, !dbg !483
  %26 = icmp eq i64 %25, 0, !dbg !483
  br i1 %26, label %18, label %27, !dbg !483

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0, !dbg !495
  br label %29, !dbg !496

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ], !dbg !467
  %31 = icmp ugt i64 %30, 3, !dbg !496
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32, !dbg !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !497, metadata !DIExpression()), !dbg !501
  br i1 %33, label %34, label %39, !dbg !496

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %15, metadata !447, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !467
  %35 = icmp sgt i32 %15, 1, !dbg !503
  br i1 %35, label %36, label %39, !dbg !496

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1, !dbg !504
  call void @llvm.dbg.value(metadata i32 %37, metadata !447, metadata !DIExpression()), !dbg !467
  call void @halide_thread_yield() #6, !dbg !507
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i64* %3, metadata !476, metadata !DIExpression()), !dbg !510
  %38 = load atomic i64, i64* %3 monotonic, align 8, !dbg !512
  br label %64, !dbg !513

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ], !dbg !467
  call void @llvm.dbg.value(metadata i32 %40, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #7, !dbg !514
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !464, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !515, metadata !DIExpression()) #7, !dbg !518
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !520, metadata !DIExpression()) #7, !dbg !524
  store i8 0, i8* %6, align 8, !dbg !526, !tbaa !527
  call void @InitializeCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !532
  call void @InitializeConditionVariable(i64* nonnull %8) #6, !dbg !534
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !535, !tbaa !536
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !dbg !535, !tbaa !538
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !535, !tbaa !539
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !540, metadata !DIExpression()), !dbg !543
  store i8 1, i8* %6, align 8, !dbg !545, !tbaa !527
  call void @llvm.dbg.value(metadata i64 %30, metadata !459, metadata !DIExpression()), !dbg !467
  %41 = and i64 %30, -4, !dbg !546
  call void @llvm.dbg.value(metadata i64 %41, metadata !465, metadata !DIExpression()), !dbg !547
  %42 = icmp eq i64 %41, 0, !dbg !548
  br i1 %42, label %43, label %44, !dbg !548

43:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !549, !tbaa !539
  br label %46, !dbg !552

44:                                               ; preds = %39
  %45 = inttoptr i64 %41 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !546
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, metadata !465, metadata !DIExpression()), !dbg !547
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !553, !tbaa !536
  br label %46, !dbg !555

46:                                               ; preds = %44, %43
  call void @llvm.dbg.value(metadata i64 %30, metadata !459, metadata !DIExpression()), !dbg !467
  %47 = and i64 %30, 3, !dbg !556
  %48 = or i64 %47, %12, !dbg !556
  call void @llvm.dbg.value(metadata i64 %48, metadata !466, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64* undef, metadata !557, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64* undef, metadata !560, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i64* %3, metadata !561, metadata !DIExpression()), !dbg !562
  %49 = cmpxchg weak i64* %3, i64 %30, i64 %48 release monotonic, !dbg !564
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !564
  br i1 %50, label %53, label %51, !dbg !564

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !564
  br label %61

53:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !565, metadata !DIExpression()) #7, !dbg !568
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !572
  %54 = load i8, i8* %6, align 8, !dbg !573, !tbaa !527, !range !574
  %55 = icmp eq i8 %54, 0, !dbg !573
  br i1 %55, label %59, label %56, !dbg !573

56:                                               ; preds = %53, %56
  call void @SleepConditionVariableCS(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !575
  %57 = load i8, i8* %6, align 8, !dbg !573, !tbaa !527, !range !574
  %58 = icmp eq i8 %57, 0, !dbg !573
  br i1 %58, label %59, label %56, !dbg !573, !llvm.loop !577

59:                                               ; preds = %56, %53
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !580
  call void @llvm.dbg.value(metadata i32 40, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i64* %3, metadata !476, metadata !DIExpression()), !dbg !581
  %60 = load atomic i64, i64* %3 monotonic, align 8, !dbg !583
  br label %61, !dbg !584

61:                                               ; preds = %51, %59
  %62 = phi i64 [ %60, %59 ], [ %52, %51 ], !dbg !467
  %63 = phi i32 [ 40, %59 ], [ %40, %51 ], !dbg !467
  call void @llvm.dbg.value(metadata i32 %63, metadata !447, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !585, metadata !DIExpression()) #7, !dbg !588
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !590, metadata !DIExpression()) #7, !dbg !593
  call void @DeleteCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !596
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #7, !dbg !598
  br label %64, !dbg !482

64:                                               ; preds = %61, %36
  %65 = phi i64 [ %38, %36 ], [ %62, %61 ]
  %66 = phi i32 [ %37, %36 ], [ %63, %61 ]
  br label %13, !dbg !467, !llvm.loop !599

67:                                               ; preds = %18
  ret void, !dbg !601
}

declare dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !602 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !604, metadata !DIExpression()), !dbg !626
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !627
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i64* %2, metadata !476, metadata !DIExpression()), !dbg !628
  %3 = load atomic i64, i64* %2 monotonic, align 8, !dbg !630
  br label %4, !dbg !631

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ], !dbg !630
  call void @llvm.dbg.value(metadata i64 %5, metadata !605, metadata !DIExpression()), !dbg !626
  %6 = and i64 %5, 2, !dbg !632
  %7 = icmp ne i64 %6, 0, !dbg !632
  call void @llvm.dbg.value(metadata i1 %7, metadata !606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !633
  call void @llvm.dbg.value(metadata i1 undef, metadata !608, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !633
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7, !dbg !634
  call void @llvm.dbg.value(metadata i1 %8, metadata !608, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !633
  br i1 %9, label %62, label %10, !dbg !634

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !605, metadata !DIExpression()), !dbg !626
  %11 = or i64 %5, 2, !dbg !635
  call void @llvm.dbg.value(metadata i64 %11, metadata !609, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i64* %2, metadata !492, metadata !DIExpression()), !dbg !636
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic, !dbg !638
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !638
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %60
  %16 = phi { i64, i1 } [ %61, %60 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !630
  call void @llvm.dbg.value(metadata i64 %17, metadata !605, metadata !DIExpression()), !dbg !626
  %18 = and i64 %17, -4, !dbg !639
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !639
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !610, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !612, metadata !DIExpression()), !dbg !640
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3, !dbg !641
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !613, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 0, metadata !614, metadata !DIExpression()), !dbg !640
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !640, !tbaa !539
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !612, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 undef, metadata !614, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, metadata !613, metadata !DIExpression()), !dbg !640
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null, !dbg !642
  br i1 %22, label %23, label %34, !dbg !642

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, metadata !612, metadata !DIExpression()), !dbg !640
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1, !dbg !643
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !dbg !643, !tbaa !536
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !615, metadata !DIExpression()), !dbg !644
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null, !dbg !645
  br i1 %27, label %28, label %29, !dbg !645

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !647
  tail call void @abort() #6, !dbg !647
  br label %29, !dbg !647

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2, !dbg !650
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !650, !tbaa !538
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !612, metadata !DIExpression()), !dbg !640
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3, !dbg !651
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !613, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 undef, metadata !614, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !640
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !dbg !640, !tbaa !539
  call void @llvm.dbg.value(metadata i32 undef, metadata !614, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, metadata !613, metadata !DIExpression()), !dbg !640
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null, !dbg !642
  br i1 %33, label %23, label %34, !dbg !642, !llvm.loop !652

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ], !dbg !640
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !654, !tbaa !539
  call void @llvm.dbg.value(metadata i64 %17, metadata !605, metadata !DIExpression()), !dbg !626
  %36 = and i64 %17, 1, !dbg !655
  %37 = icmp eq i64 %36, 0, !dbg !655
  br i1 %37, label %42, label %38, !dbg !655

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %17, metadata !605, metadata !DIExpression()), !dbg !626
  %39 = and i64 %17, -3, !dbg !656
  call void @llvm.dbg.value(metadata i64 %39, metadata !617, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64* undef, metadata !658, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64* undef, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64* %2, metadata !664, metadata !DIExpression()), !dbg !665
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic, !dbg !667
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !667
  br i1 %41, label %62, label %60, !dbg !667, !llvm.loop !668

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2, !dbg !671
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !dbg !671, !tbaa !538
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !620, metadata !DIExpression()), !dbg !640
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !672
  br i1 %45, label %46, label %54, !dbg !672

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !621, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i64 %47, metadata !605, metadata !DIExpression()), !dbg !626
  %48 = and i64 %47, 1, !dbg !674
  call void @llvm.dbg.value(metadata i64 %48, metadata !624, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i64* undef, metadata !658, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i64* undef, metadata !663, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i64* %2, metadata !664, metadata !DIExpression()), !dbg !676
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic, !dbg !678
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !678
  br i1 %50, label %56, label %51, !dbg !678

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !678
  call void @llvm.dbg.value(metadata i64 %52, metadata !605, metadata !DIExpression()), !dbg !626
  %53 = icmp ult i64 %52, 4, !dbg !679
  br i1 %53, label %46, label %60, !dbg !679, !llvm.loop !680

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !683, !tbaa !539
  call void @llvm.dbg.value(metadata i64 -3, metadata !685, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i64* %2, metadata !690, metadata !DIExpression()), !dbg !691
  %55 = atomicrmw and i64* %2, i64 -3 release, !dbg !693
  br label %56, !dbg !694

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !695, metadata !DIExpression()) #7, !dbg !698
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0, !dbg !700
  tail call void @EnterCriticalSection(%struct.CriticalSection* nonnull %57) #6, !dbg !700
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !701, metadata !DIExpression()) #7, !dbg !704
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2, !dbg !706
  store i8 0, i8* %58, align 8, !dbg !706, !tbaa !527
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1, !dbg !707
  tail call void @WakeConditionVariable(i64* nonnull %59) #6, !dbg !707
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !708, metadata !DIExpression()) #7, !dbg !711
  tail call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %57) #6, !dbg !713
  br label %62, !dbg !714

60:                                               ; preds = %51, %38
  %61 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire, !dbg !640
  br label %15

62:                                               ; preds = %4, %38, %56
  ret void, !dbg !715
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) local_unnamed_addr #0 !dbg !716 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !721, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i32 10, metadata !725, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i64 %0, metadata !731, metadata !DIExpression()), !dbg !732
  %2 = mul i64 %0, -7046029254386353131, !dbg !734
  %3 = lshr i64 %2, 54, !dbg !734
  call void @llvm.dbg.value(metadata i64 %3, metadata !722, metadata !DIExpression()), !dbg !724
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3, !dbg !737
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !738, metadata !DIExpression()) #7, !dbg !743
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !745
  call void @llvm.dbg.value(metadata i8* %5, metadata !746, metadata !DIExpression()) #7, !dbg !749
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #6, !dbg !751
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()) #7, !dbg !743
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()) #7, !dbg !743
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !752
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !753
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !753
  call void @llvm.dbg.value(metadata i64* %6, metadata !492, metadata !DIExpression()) #7, !dbg !753
  %7 = cmpxchg weak i64* %6, i64 0, i64 1 acquire monotonic, !dbg !755
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !755
  br i1 %8, label %11, label %9, !dbg !752

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !756
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !738, metadata !DIExpression()) #7, !dbg !743
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #6, !dbg !757
  br label %11, !dbg !760

11:                                               ; preds = %1, %9
  call void @llvm.dbg.value(metadata i8* %5, metadata !761, metadata !DIExpression()) #7, !dbg !764
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #6, !dbg !766
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !767
}

; Function Attrs: nounwind
define weak dso_local void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #4 !dbg !768 {
  call void @llvm.dbg.value(metadata i64 %2, metadata !780, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i64 %1, metadata !781, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 10, metadata !725, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i64 %1, metadata !731, metadata !DIExpression()), !dbg !795
  %4 = mul i64 %1, -7046029254386353131, !dbg !797
  %5 = lshr i64 %4, 54, !dbg !797
  call void @llvm.dbg.value(metadata i64 %5, metadata !782, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i32 10, metadata !725, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %2, metadata !731, metadata !DIExpression()), !dbg !798
  %6 = mul i64 %2, -7046029254386353131, !dbg !800
  %7 = lshr i64 %6, 54, !dbg !800
  call void @llvm.dbg.value(metadata i64 %7, metadata !783, metadata !DIExpression()), !dbg !794
  %8 = icmp eq i64 %5, %7, !dbg !801
  br i1 %8, label %9, label %17, !dbg !801

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !802
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !784, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !738, metadata !DIExpression()) #7, !dbg !804
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*, !dbg !806
  call void @llvm.dbg.value(metadata i8* %11, metadata !746, metadata !DIExpression()) #7, !dbg !807
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #6, !dbg !809
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()) #7, !dbg !804
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()) #7, !dbg !804
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0, !dbg !810
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !811
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !811
  call void @llvm.dbg.value(metadata i64* %12, metadata !492, metadata !DIExpression()) #7, !dbg !811
  %13 = cmpxchg weak i64* %12, i64 0, i64 1 acquire monotonic, !dbg !813
  %14 = extractvalue { i64, i1 } %13, 1, !dbg !813
  br i1 %14, label %51, label %15, !dbg !810

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, !dbg !814
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %16, metadata !738, metadata !DIExpression()) #7, !dbg !804
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %16) #6, !dbg !815
  br label %51, !dbg !816

17:                                               ; preds = %3
  %18 = icmp ult i64 %5, %7, !dbg !817
  br i1 %18, label %19, label %35, !dbg !817

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !818
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !787, metadata !DIExpression()), !dbg !819
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !820
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !790, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !738, metadata !DIExpression()) #7, !dbg !821
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*, !dbg !823
  call void @llvm.dbg.value(metadata i8* %22, metadata !746, metadata !DIExpression()) #7, !dbg !824
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #6, !dbg !826
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()) #7, !dbg !821
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()) #7, !dbg !821
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0, !dbg !827
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !828
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !828
  call void @llvm.dbg.value(metadata i64* %23, metadata !492, metadata !DIExpression()) #7, !dbg !828
  %24 = cmpxchg weak i64* %23, i64 0, i64 1 acquire monotonic, !dbg !830
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !830
  br i1 %25, label %28, label %26, !dbg !827

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, !dbg !831
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !738, metadata !DIExpression()) #7, !dbg !821
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %27) #6, !dbg !832
  br label %28, !dbg !833

28:                                               ; preds = %19, %26
  call void @llvm.dbg.value(metadata i8* %22, metadata !761, metadata !DIExpression()) #7, !dbg !834
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #6, !dbg !836
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !738, metadata !DIExpression()) #7, !dbg !837
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*, !dbg !839
  call void @llvm.dbg.value(metadata i8* %29, metadata !746, metadata !DIExpression()) #7, !dbg !840
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #6, !dbg !842
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()) #7, !dbg !837
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()) #7, !dbg !837
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i64 0, i32 0, i32 0, !dbg !843
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !844
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !844
  call void @llvm.dbg.value(metadata i64* %30, metadata !492, metadata !DIExpression()) #7, !dbg !844
  %31 = cmpxchg weak i64* %30, i64 0, i64 1 acquire monotonic, !dbg !846
  %32 = extractvalue { i64, i1 } %31, 1, !dbg !846
  br i1 %32, label %51, label %33, !dbg !843

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i64 0, i32 0, !dbg !847
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %34, metadata !738, metadata !DIExpression()) #7, !dbg !837
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %34) #6, !dbg !848
  br label %51, !dbg !849

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !850
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !791, metadata !DIExpression()), !dbg !851
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !852
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !793, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !738, metadata !DIExpression()) #7, !dbg !853
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*, !dbg !855
  call void @llvm.dbg.value(metadata i8* %38, metadata !746, metadata !DIExpression()) #7, !dbg !856
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #6, !dbg !858
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()) #7, !dbg !853
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()) #7, !dbg !853
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i64 0, i32 0, i32 0, !dbg !859
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !860
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !860
  call void @llvm.dbg.value(metadata i64* %39, metadata !492, metadata !DIExpression()) #7, !dbg !860
  %40 = cmpxchg weak i64* %39, i64 0, i64 1 acquire monotonic, !dbg !862
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !862
  br i1 %41, label %44, label %42, !dbg !859

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i64 0, i32 0, !dbg !863
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %43, metadata !738, metadata !DIExpression()) #7, !dbg !853
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %43) #6, !dbg !864
  br label %44, !dbg !865

44:                                               ; preds = %35, %42
  call void @llvm.dbg.value(metadata i8* %38, metadata !761, metadata !DIExpression()) #7, !dbg !866
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #6, !dbg !868
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !738, metadata !DIExpression()) #7, !dbg !869
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*, !dbg !871
  call void @llvm.dbg.value(metadata i8* %45, metadata !746, metadata !DIExpression()) #7, !dbg !872
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #6, !dbg !874
  call void @llvm.dbg.value(metadata i64 0, metadata !741, metadata !DIExpression()) #7, !dbg !869
  call void @llvm.dbg.value(metadata i64 1, metadata !742, metadata !DIExpression()) #7, !dbg !869
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i64 0, i32 0, i32 0, !dbg !875
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !876
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !876
  call void @llvm.dbg.value(metadata i64* %46, metadata !492, metadata !DIExpression()) #7, !dbg !876
  %47 = cmpxchg weak i64* %46, i64 0, i64 1 acquire monotonic, !dbg !878
  %48 = extractvalue { i64, i1 } %47, 1, !dbg !878
  br i1 %48, label %51, label %49, !dbg !875

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i64 0, i32 0, !dbg !879
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !738, metadata !DIExpression()) #7, !dbg !869
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %50) #6, !dbg !880
  br label %51, !dbg !881

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #6, !dbg !882
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !882
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 8, !dbg !882, !tbaa !883
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !882
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 8, !dbg !882, !tbaa !883
  ret void, !dbg !884
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 !dbg !885 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !890, metadata !DIExpression()), !dbg !891
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !892
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !892, !tbaa !893
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !892
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !892, !tbaa !895
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !892
  br i1 %6, label %7, label %18, !dbg !892

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !896, metadata !DIExpression()) #7, !dbg !902
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !906
  call void @llvm.dbg.value(metadata i8* %8, metadata !907, metadata !DIExpression()) #7, !dbg !910
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #6, !dbg !912
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !913
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !918
  call void @llvm.dbg.value(metadata i64* %10, metadata !917, metadata !DIExpression()) #7, !dbg !918
  %11 = atomicrmw and i64* %10, i64 -2 release, !dbg !920
  call void @llvm.dbg.value(metadata i64 %11, metadata !899, metadata !DIExpression()) #7, !dbg !902
  %12 = and i64 %11, 2, !dbg !921
  %13 = icmp ne i64 %12, 0, !dbg !921
  call void @llvm.dbg.value(metadata i1 %13, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !902
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !902
  %14 = icmp ult i64 %11, 4
  %15 = or i1 %14, %13, !dbg !922
  call void @llvm.dbg.value(metadata i1 %14, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !902
  br i1 %15, label %66, label %16, !dbg !922

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !923
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %17, metadata !896, metadata !DIExpression()) #7, !dbg !902
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %17) #6, !dbg !924
  br label %66, !dbg !927

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !928
  br i1 %19, label %20, label %43, !dbg !928

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !896, metadata !DIExpression()) #7, !dbg !929
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !933
  call void @llvm.dbg.value(metadata i8* %21, metadata !907, metadata !DIExpression()) #7, !dbg !934
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #6, !dbg !936
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !937
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !938
  call void @llvm.dbg.value(metadata i64* %23, metadata !917, metadata !DIExpression()) #7, !dbg !938
  %24 = atomicrmw and i64* %23, i64 -2 release, !dbg !940
  call void @llvm.dbg.value(metadata i64 %24, metadata !899, metadata !DIExpression()) #7, !dbg !929
  %25 = and i64 %24, 2, !dbg !941
  %26 = icmp ne i64 %25, 0, !dbg !941
  call void @llvm.dbg.value(metadata i1 %26, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !929
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !929
  %27 = icmp ult i64 %24, 4
  %28 = or i1 %27, %26, !dbg !942
  call void @llvm.dbg.value(metadata i1 %27, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !929
  br i1 %28, label %31, label %29, !dbg !942

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !943
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %30, metadata !896, metadata !DIExpression()) #7, !dbg !929
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %30) #6, !dbg !944
  br label %31, !dbg !945

31:                                               ; preds = %20, %29
  call void @llvm.dbg.value(metadata i8* %21, metadata !946, metadata !DIExpression()) #7, !dbg !949
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #6, !dbg !951
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !952, !tbaa !895
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, metadata !896, metadata !DIExpression()) #7, !dbg !953
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*, !dbg !955
  call void @llvm.dbg.value(metadata i8* %33, metadata !907, metadata !DIExpression()) #7, !dbg !956
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #6, !dbg !958
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i64 0, i32 0, i32 0, !dbg !959
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !960
  call void @llvm.dbg.value(metadata i64* %35, metadata !917, metadata !DIExpression()) #7, !dbg !960
  %36 = atomicrmw and i64* %35, i64 -2 release, !dbg !962
  call void @llvm.dbg.value(metadata i64 %36, metadata !899, metadata !DIExpression()) #7, !dbg !953
  %37 = and i64 %36, 2, !dbg !963
  %38 = icmp ne i64 %37, 0, !dbg !963
  call void @llvm.dbg.value(metadata i1 %38, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !953
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !953
  %39 = icmp ult i64 %36, 4
  %40 = or i1 %39, %38, !dbg !964
  call void @llvm.dbg.value(metadata i1 %39, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !953
  br i1 %40, label %66, label %41, !dbg !964

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i64 0, i32 0, !dbg !952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %42, metadata !896, metadata !DIExpression()) #7, !dbg !953
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %42) #6, !dbg !965
  br label %66, !dbg !966

43:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !896, metadata !DIExpression()) #7, !dbg !967
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*, !dbg !970
  call void @llvm.dbg.value(metadata i8* %44, metadata !907, metadata !DIExpression()) #7, !dbg !971
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #6, !dbg !973
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0, !dbg !974
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !975
  call void @llvm.dbg.value(metadata i64* %46, metadata !917, metadata !DIExpression()) #7, !dbg !975
  %47 = atomicrmw and i64* %46, i64 -2 release, !dbg !977
  call void @llvm.dbg.value(metadata i64 %47, metadata !899, metadata !DIExpression()) #7, !dbg !967
  %48 = and i64 %47, 2, !dbg !978
  %49 = icmp ne i64 %48, 0, !dbg !978
  call void @llvm.dbg.value(metadata i1 %49, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !967
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !967
  %50 = icmp ult i64 %47, 4
  %51 = or i1 %50, %49, !dbg !979
  call void @llvm.dbg.value(metadata i1 %50, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !967
  br i1 %51, label %54, label %52, !dbg !979

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, !dbg !980
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %53, metadata !896, metadata !DIExpression()) #7, !dbg !967
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %53) #6, !dbg !981
  br label %54, !dbg !982

54:                                               ; preds = %43, %52
  call void @llvm.dbg.value(metadata i8* %44, metadata !946, metadata !DIExpression()) #7, !dbg !983
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #6, !dbg !985
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !986, !tbaa !893
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, metadata !896, metadata !DIExpression()) #7, !dbg !987
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*, !dbg !989
  call void @llvm.dbg.value(metadata i8* %56, metadata !907, metadata !DIExpression()) #7, !dbg !990
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #6, !dbg !992
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i64 0, i32 0, i32 0, !dbg !993
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !994
  call void @llvm.dbg.value(metadata i64* %58, metadata !917, metadata !DIExpression()) #7, !dbg !994
  %59 = atomicrmw and i64* %58, i64 -2 release, !dbg !996
  call void @llvm.dbg.value(metadata i64 %59, metadata !899, metadata !DIExpression()) #7, !dbg !987
  %60 = and i64 %59, 2, !dbg !997
  %61 = icmp ne i64 %60, 0, !dbg !997
  call void @llvm.dbg.value(metadata i1 %61, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !987
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !987
  %62 = icmp ult i64 %59, 4
  %63 = or i1 %62, %61, !dbg !998
  call void @llvm.dbg.value(metadata i1 %62, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !987
  br i1 %63, label %66, label %64, !dbg !998

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i64 0, i32 0, !dbg !986
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %65, metadata !896, metadata !DIExpression()) #7, !dbg !987
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %65) #6, !dbg !999
  br label %66, !dbg !1000

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #6, !dbg !1001
  ret void, !dbg !1002
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1003 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1005, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i8* %0, metadata !1006, metadata !DIExpression()), !dbg !1007
  ret i1 true, !dbg !1008
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #5 !dbg !1009 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1011, metadata !DIExpression()), !dbg !1012
  ret void, !dbg !1013
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1014 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1016, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1019
  call void @llvm.dbg.value(metadata i32 %1, metadata !1017, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i8* %0, metadata !1018, metadata !DIExpression()), !dbg !1019
  ret i64 0, !dbg !1020
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1021 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !1023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1027
  call void @llvm.dbg.value(metadata i1 %2, metadata !1024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1027
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1025, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %0, metadata !1026, metadata !DIExpression()), !dbg !1027
  ret void, !dbg !1028
}

; Function Attrs: nounwind
define weak dso_local i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 !dbg !1029 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1034, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %0, metadata !1035, metadata !DIExpression()), !dbg !1039
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #7, !dbg !1040
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1036, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1041, metadata !DIExpression()) #7, !dbg !1044
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !520, metadata !DIExpression()) #7, !dbg !1046
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2, !dbg !1048
  store i8 0, i8* %6, align 8, !dbg !1048, !tbaa !527
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0, !dbg !1049
  call void @InitializeCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1049
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1, !dbg !1050
  call void @InitializeConditionVariable(i64* nonnull %8) #6, !dbg !1050
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1, !dbg !1051
  store i64 0, i64* %9, align 8, !dbg !1051, !tbaa !1052
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2, !dbg !1051
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1051, !tbaa !1054
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3, !dbg !1051
  store i64 0, i64* %11, align 8, !dbg !1051, !tbaa !1055
  %12 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #8, !dbg !1056
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1037, metadata !DIExpression()), !dbg !1039
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !1057
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1038, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1058, metadata !DIExpression()), !dbg !1062
  store i8 0, i8* %13, align 8, !dbg !1064, !tbaa !1065
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2, !dbg !1064
  store i64 0, i64* %14, align 8, !dbg !1064, !tbaa !1067
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0, !dbg !1068
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 8, !dbg !1068, !tbaa !1069
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1068
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #6, !dbg !1068
  br i1 %18, label %31, label %19, !dbg !1068

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !896, metadata !DIExpression()) #7, !dbg !1071
  %20 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1075
  call void @llvm.dbg.value(metadata i8* %20, metadata !907, metadata !DIExpression()) #7, !dbg !1076
  %21 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %20, i32 1) #6, !dbg !1078
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1079
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !1080
  call void @llvm.dbg.value(metadata i64* %22, metadata !917, metadata !DIExpression()) #7, !dbg !1080
  %23 = atomicrmw and i64* %22, i64 -2 release, !dbg !1082
  call void @llvm.dbg.value(metadata i64 %23, metadata !899, metadata !DIExpression()) #7, !dbg !1071
  %24 = and i64 %23, 2, !dbg !1083
  %25 = icmp ne i64 %24, 0, !dbg !1083
  call void @llvm.dbg.value(metadata i1 %25, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1071
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1071
  %26 = icmp ult i64 %23, 4
  %27 = or i1 %26, %25, !dbg !1084
  call void @llvm.dbg.value(metadata i1 %26, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1071
  br i1 %27, label %30, label %28, !dbg !1084

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1085
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %29, metadata !896, metadata !DIExpression()) #7, !dbg !1071
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %29) #6, !dbg !1086
  br label %30, !dbg !1087

30:                                               ; preds = %19, %28
  call void @llvm.dbg.value(metadata i8* %20, metadata !946, metadata !DIExpression()) #7, !dbg !1088
  call void @__tsan_mutex_post_unlock(i8* nonnull %20, i32 1) #6, !dbg !1090
  br label %59, !dbg !1091

31:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1092, !tbaa !1054
  store i64 %0, i64* %9, align 8, !dbg !1093, !tbaa !1052
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !540, metadata !DIExpression()), !dbg !1094
  store i8 1, i8* %6, align 8, !dbg !1096, !tbaa !527
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 1, !dbg !1097
  %33 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, align 8, !dbg !1097, !tbaa !1098
  %34 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %33, null, !dbg !1097
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1097
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1097
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, i64 0, i32 2, !dbg !1097
  %38 = select i1 %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, !dbg !1097
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 8, !dbg !1101, !tbaa !883
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1103
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1103, !tbaa !1104
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !896, metadata !DIExpression()) #7, !dbg !1105
  %40 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %40, metadata !907, metadata !DIExpression()) #7, !dbg !1108
  %41 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %40, i32 1) #6, !dbg !1110
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1111
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !1112
  call void @llvm.dbg.value(metadata i64* %42, metadata !917, metadata !DIExpression()) #7, !dbg !1112
  %43 = atomicrmw and i64* %42, i64 -2 release, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %43, metadata !899, metadata !DIExpression()) #7, !dbg !1105
  %44 = and i64 %43, 2, !dbg !1115
  %45 = icmp ne i64 %44, 0, !dbg !1115
  call void @llvm.dbg.value(metadata i1 %45, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1105
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1105
  %46 = icmp ult i64 %43, 4
  %47 = or i1 %46, %45, !dbg !1116
  call void @llvm.dbg.value(metadata i1 %46, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1105
  br i1 %47, label %50, label %48, !dbg !1116

48:                                               ; preds = %31
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1117
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %49, metadata !896, metadata !DIExpression()) #7, !dbg !1105
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %49) #6, !dbg !1118
  br label %50, !dbg !1119

50:                                               ; preds = %31, %48
  call void @llvm.dbg.value(metadata i8* %40, metadata !946, metadata !DIExpression()) #7, !dbg !1120
  call void @__tsan_mutex_post_unlock(i8* nonnull %40, i32 1) #6, !dbg !1122
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1, !dbg !1123
  %52 = load void (i8*)*, void (i8*)** %51, align 8, !dbg !1123, !tbaa !1124
  call void %52(i8* nonnull %17) #6, !dbg !1123
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !565, metadata !DIExpression()) #7, !dbg !1125
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1127
  %53 = load i8, i8* %6, align 8, !dbg !1128, !tbaa !527, !range !574
  %54 = icmp eq i8 %53, 0, !dbg !1128
  br i1 %54, label %58, label %55, !dbg !1128

55:                                               ; preds = %50, %55
  call void @SleepConditionVariableCS(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !1129
  %56 = load i8, i8* %6, align 8, !dbg !1128, !tbaa !527, !range !574
  %57 = icmp eq i8 %56, 0, !dbg !1128
  br i1 %57, label %58, label %55, !dbg !1128, !llvm.loop !1130

58:                                               ; preds = %55, %50
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1132
  br label %59, !dbg !1133

59:                                               ; preds = %58, %30
  %60 = phi i64* [ %11, %58 ], [ %14, %30 ]
  %61 = load i64, i64* %60, align 8, !dbg !1039, !tbaa !1134
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !1135
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1136, metadata !DIExpression()) #7, !dbg !1139
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !590, metadata !DIExpression()) #7, !dbg !1141
  call void @DeleteCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #7, !dbg !1135
  ret i64 %61, !dbg !1135
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 !dbg !1145 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1147, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %0, metadata !1148, metadata !DIExpression()), !dbg !1164
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #8, !dbg !1165
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1149, metadata !DIExpression()), !dbg !1164
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1, !dbg !1166
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1150, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1151, metadata !DIExpression()), !dbg !1164
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !dbg !1167, !tbaa !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1152, metadata !DIExpression()), !dbg !1164
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %12, !dbg !1168

12:                                               ; preds = %59, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %60, %59 ], !dbg !1166
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %61, %59 ], !dbg !1169
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %62, %59 ], !dbg !1167
  %16 = phi i64 [ undef, %2 ], [ %63, %59 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !1152, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1151, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, metadata !1150, metadata !DIExpression()), !dbg !1164
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null, !dbg !1168
  br i1 %17, label %64, label %18, !dbg !1168

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 1, !dbg !1170
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64* %19, metadata !476, metadata !DIExpression()), !dbg !1171
  %20 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %20, metadata !1153, metadata !DIExpression()), !dbg !1174
  %21 = icmp eq i64 %20, %0, !dbg !1175
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 2, !dbg !1176
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 8, !dbg !1176, !tbaa !1054
  br i1 %21, label %24, label %59, !dbg !1175

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1155, metadata !DIExpression()), !dbg !1177
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 8, !dbg !1178, !tbaa !883
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1177
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1179, !tbaa !1104
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15, !dbg !1179
  br i1 %26, label %29, label %27, !dbg !1179

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1159, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1177
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null, !dbg !1181
  br i1 %28, label %41, label %30, !dbg !1181

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1182, !tbaa !1104
  br label %41, !dbg !1184

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1159, metadata !DIExpression()), !dbg !1180
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i64 0, i32 1, !dbg !1185
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i64* %32, metadata !476, metadata !DIExpression()), !dbg !1186
  %33 = load atomic i64, i64* %32 monotonic, align 8, !dbg !1188
  call void @llvm.dbg.value(metadata i64 %33, metadata !1162, metadata !DIExpression()), !dbg !1189
  %34 = icmp eq i64 %33, %0, !dbg !1190
  call void @llvm.dbg.value(metadata i1 %34, metadata !1158, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1177
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i64 0, i32 2, !dbg !1191
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1191, !tbaa !1054
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, metadata !1159, metadata !DIExpression()), !dbg !1180
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1181
  %38 = or i1 %34, %37, !dbg !1181
  br i1 %38, label %39, label %30, !dbg !1181, !llvm.loop !1192

39:                                               ; preds = %30
  %40 = zext i1 %34 to i8, !dbg !1190
  call void @llvm.dbg.value(metadata i8 %40, metadata !1158, metadata !DIExpression()), !dbg !1177
  br label %41, !dbg !1194

41:                                               ; preds = %39, %27, %29
  %42 = phi i8 [ 0, %29 ], [ 0, %27 ], [ %40, %39 ], !dbg !1195
  call void @llvm.dbg.value(metadata i8 %42, metadata !1158, metadata !DIExpression()), !dbg !1177
  %43 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1194, !tbaa !1196
  %44 = icmp ne i8 %42, 0, !dbg !1194
  %45 = tail call i64 %43(i8* nonnull %8, i32 1, i1 zeroext %44) #6, !dbg !1194
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 3, !dbg !1194
  store i64 %45, i64* %46, align 8, !dbg !1194, !tbaa !1055
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !695, metadata !DIExpression()) #7, !dbg !1197
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 0, !dbg !1199
  tail call void @EnterCriticalSection(%struct.CriticalSection* nonnull %47) #6, !dbg !1199
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !896, metadata !DIExpression()) #7, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %9, metadata !907, metadata !DIExpression()) #7, !dbg !1202
  %48 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1204
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !1205
  call void @llvm.dbg.value(metadata i64* %10, metadata !917, metadata !DIExpression()) #7, !dbg !1205
  %49 = atomicrmw and i64* %10, i64 -2 release, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %49, metadata !899, metadata !DIExpression()) #7, !dbg !1200
  %50 = and i64 %49, 2, !dbg !1208
  %51 = icmp ne i64 %50, 0, !dbg !1208
  call void @llvm.dbg.value(metadata i1 %51, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1200
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1200
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51, !dbg !1209
  call void @llvm.dbg.value(metadata i1 %52, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1200
  br i1 %53, label %55, label %54, !dbg !1209

54:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !896, metadata !DIExpression()) #7, !dbg !1200
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %11) #6, !dbg !1210
  br label %55, !dbg !1211

55:                                               ; preds = %41, %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !946, metadata !DIExpression()) #7, !dbg !1212
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1214
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !701, metadata !DIExpression()) #7, !dbg !1215
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 2, !dbg !1217
  store i8 0, i8* %56, align 8, !dbg !1217, !tbaa !527
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i64 0, i32 0, i32 1, !dbg !1218
  tail call void @WakeConditionVariable(i64* nonnull %57) #6, !dbg !1218
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !708, metadata !DIExpression()) #7, !dbg !1219
  tail call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %47) #6, !dbg !1221
  %58 = zext i8 %42 to i64
  br label %59

59:                                               ; preds = %18, %55
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %55 ], [ %22, %18 ], !dbg !1164
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %55 ], [ %15, %18 ], !dbg !1164
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %55 ], [ %23, %18 ], !dbg !1164
  %63 = phi i64 [ %58, %55 ], [ %16, %18 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %62, metadata !1152, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1151, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, metadata !1150, metadata !DIExpression()), !dbg !1164
  br i1 %21, label %75, label %12, !llvm.loop !1222

64:                                               ; preds = %12
  %65 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1224, !tbaa !1196
  %66 = tail call i64 %65(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1224
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !896, metadata !DIExpression()) #7, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %9, metadata !907, metadata !DIExpression()) #7, !dbg !1227
  %67 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1229
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !1230
  call void @llvm.dbg.value(metadata i64* %10, metadata !917, metadata !DIExpression()) #7, !dbg !1230
  %68 = atomicrmw and i64* %10, i64 -2 release, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %68, metadata !899, metadata !DIExpression()) #7, !dbg !1225
  %69 = and i64 %68, 2, !dbg !1233
  %70 = icmp ne i64 %69, 0, !dbg !1233
  call void @llvm.dbg.value(metadata i1 %70, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1225
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1225
  %71 = icmp ult i64 %68, 4
  %72 = or i1 %71, %70, !dbg !1234
  call void @llvm.dbg.value(metadata i1 %71, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1225
  br i1 %72, label %74, label %73, !dbg !1234

73:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !896, metadata !DIExpression()) #7, !dbg !1225
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %11) #6, !dbg !1235
  br label %74, !dbg !1236

74:                                               ; preds = %64, %73
  call void @llvm.dbg.value(metadata i8* %9, metadata !946, metadata !DIExpression()) #7, !dbg !1237
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1239
  br label %75, !dbg !1240

75:                                               ; preds = %59, %74
  %76 = phi i64 [ 0, %74 ], [ %63, %59 ], !dbg !1164
  ret i64 %76, !dbg !1241
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?unpark_all@Synchronization@Internal@Runtime@Halide@@YA_K_K0@Z"(i64 %0, i64 %1) local_unnamed_addr #0 !dbg !1242 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1246, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %0, metadata !1247, metadata !DIExpression()), !dbg !1275
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #8, !dbg !1276
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1248, metadata !DIExpression()), !dbg !1275
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1, !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1249, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1250, metadata !DIExpression()), !dbg !1275
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1278, !tbaa !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1251, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()), !dbg !1275
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1279
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1255, metadata !DIExpression()), !dbg !1279
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0, !dbg !1280
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1259, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 16, metadata !1260, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1250, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1251, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 0, metadata !1252, metadata !DIExpression()), !dbg !1275
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1281
  br i1 %9, label %59, label %10, !dbg !1281

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12, !dbg !1281

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i64 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i64 [ 0, %10 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1250, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1251, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %15, metadata !1260, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1259, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %17, metadata !1252, metadata !DIExpression()), !dbg !1275
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1282
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata i64* %18, metadata !476, metadata !DIExpression()), !dbg !1283
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1285
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1286
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !dbg !1286, !tbaa !1054
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1263, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %19, metadata !1261, metadata !DIExpression()), !dbg !1287
  %22 = icmp eq i64 %19, %0, !dbg !1288
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1289, !tbaa !883
  br i1 %22, label %23, label %53, !dbg !1288

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1290, !tbaa !1104
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1290
  br i1 %25, label %26, label %27, !dbg !1290

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1291, !tbaa !1104
  br label %27, !dbg !1294

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15, !dbg !1295
  br i1 %28, label %29, label %46, !dbg !1295

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1264, metadata !DIExpression()), !dbg !1296
  %30 = shl i64 %15, 4, !dbg !1297
  %31 = call i8* @malloc(i64 %30) #6, !dbg !1297
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1297
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1259, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 0, metadata !1269, metadata !DIExpression()), !dbg !1298
  %33 = icmp eq i64 %15, 0, !dbg !1299
  br i1 %33, label %34, label %37, !dbg !1299

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i64 %35, metadata !1260, metadata !DIExpression()), !dbg !1275
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1301
  br i1 %36, label %46, label %44, !dbg !1301

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1269, metadata !DIExpression()), !dbg !1298
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38, !dbg !1302
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1302, !tbaa !883
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38, !dbg !1302
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1302, !tbaa !883
  %42 = add nuw i64 %38, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %42, metadata !1269, metadata !DIExpression()), !dbg !1298
  %43 = icmp eq i64 %42, %15, !dbg !1299
  br i1 %43, label %34, label %37, !dbg !1299, !llvm.loop !1306

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1308
  call void @free(i8* %45) #6, !dbg !1308
  br label %46, !dbg !1311

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1275
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1275
  call void @llvm.dbg.value(metadata i64 %48, metadata !1260, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1259, metadata !DIExpression()), !dbg !1275
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1312
  store i64 %1, i64* %49, align 8, !dbg !1312, !tbaa !1055
  %50 = add i64 %17, 1, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %50, metadata !1252, metadata !DIExpression()), !dbg !1275
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17, !dbg !1313
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !dbg !1313, !tbaa !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !695, metadata !DIExpression()) #7, !dbg !1314
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1316
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %52) #6, !dbg !1316
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1251, metadata !DIExpression()), !dbg !1275
  br label %53, !dbg !1317

53:                                               ; preds = %12, %46
  %54 = phi i64 [ %50, %46 ], [ %17, %12 ], !dbg !1275
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1275
  %56 = phi i64 [ %48, %46 ], [ %15, %12 ], !dbg !1275
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1250, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1251, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %56, metadata !1260, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1259, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i64 %54, metadata !1252, metadata !DIExpression()), !dbg !1275
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1281
  br i1 %58, label %59, label %12, !dbg !1281, !llvm.loop !1318

59:                                               ; preds = %53, %2
  %60 = phi i64 [ 0, %2 ], [ %54, %53 ], !dbg !1275
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ], !dbg !1275
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !896, metadata !DIExpression()) #7, !dbg !1320
  %62 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %62, metadata !907, metadata !DIExpression()) #7, !dbg !1323
  %63 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %62, i32 1) #6, !dbg !1325
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !1326
  call void @llvm.dbg.value(metadata i64 -2, metadata !914, metadata !DIExpression()) #7, !dbg !1327
  call void @llvm.dbg.value(metadata i64* %64, metadata !917, metadata !DIExpression()) #7, !dbg !1327
  %65 = atomicrmw and i64* %64, i64 -2 release, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %65, metadata !899, metadata !DIExpression()) #7, !dbg !1320
  %66 = and i64 %65, 2, !dbg !1330
  %67 = icmp ne i64 %66, 0, !dbg !1330
  call void @llvm.dbg.value(metadata i1 %67, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1320
  call void @llvm.dbg.value(metadata i1 undef, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1320
  %68 = icmp ult i64 %65, 4
  %69 = or i1 %68, %67, !dbg !1331
  call void @llvm.dbg.value(metadata i1 %68, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1320
  br i1 %69, label %72, label %70, !dbg !1331

70:                                               ; preds = %59
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !1332
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %71, metadata !896, metadata !DIExpression()) #7, !dbg !1320
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %71) #6, !dbg !1333
  br label %72, !dbg !1334

72:                                               ; preds = %59, %70
  call void @llvm.dbg.value(metadata i8* %62, metadata !946, metadata !DIExpression()) #7, !dbg !1335
  call void @__tsan_mutex_post_unlock(i8* nonnull %62, i32 1) #6, !dbg !1337
  call void @llvm.dbg.value(metadata i64 0, metadata !1271, metadata !DIExpression()), !dbg !1338
  %73 = icmp eq i64 %60, 0, !dbg !1339
  br i1 %73, label %83, label %75, !dbg !1339

74:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i64 0, metadata !1273, metadata !DIExpression()), !dbg !1340
  br i1 %73, label %83, label %85, !dbg !1341

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %81, %75 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !1271, metadata !DIExpression()), !dbg !1338
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %76, !dbg !1342
  %78 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 8, !dbg !1342, !tbaa !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, metadata !701, metadata !DIExpression()) #7, !dbg !1345
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, i64 0, i32 0, i32 2, !dbg !1347
  store i8 0, i8* %79, align 8, !dbg !1347, !tbaa !527
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %78, i64 0, i32 0, i32 1, !dbg !1348
  call void @WakeConditionVariable(i64* nonnull %80) #6, !dbg !1348
  %81 = add nuw i64 %76, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %81, metadata !1271, metadata !DIExpression()), !dbg !1338
  %82 = icmp eq i64 %81, %60, !dbg !1339
  br i1 %82, label %74, label %75, !dbg !1339, !llvm.loop !1350

83:                                               ; preds = %85, %72, %74
  %84 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8, !dbg !1352
  br i1 %84, label %94, label %92, !dbg !1352

85:                                               ; preds = %74, %85
  %86 = phi i64 [ %90, %85 ], [ 0, %74 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1273, metadata !DIExpression()), !dbg !1340
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %86, !dbg !1353
  %88 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %87, align 8, !dbg !1353, !tbaa !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, metadata !708, metadata !DIExpression()) #7, !dbg !1356
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i64 0, i32 0, i32 0, !dbg !1358
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %89) #6, !dbg !1358
  %90 = add nuw i64 %86, 1, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %90, metadata !1273, metadata !DIExpression()), !dbg !1340
  %91 = icmp eq i64 %90, %60, !dbg !1341
  br i1 %91, label %83, label %85, !dbg !1341, !llvm.loop !1360

92:                                               ; preds = %83
  %93 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*, !dbg !1362
  call void @free(i8* %93) #6, !dbg !1362
  br label %94, !dbg !1365

94:                                               ; preds = %92, %83
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1366
  ret i64 %60, !dbg !1367
}

; Function Attrs: nounwind
define weak dso_local i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z"(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #4 !dbg !1368 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1372, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1373, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %1, metadata !1374, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %0, metadata !1375, metadata !DIExpression()), !dbg !1387
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1388
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1388
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1376, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i64 %1, metadata !1374, metadata !DIExpression()), !dbg !1387
  call void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #8, !dbg !1388
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0, !dbg !1389
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1389
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1377, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1058, metadata !DIExpression()), !dbg !1390
  store i8 0, i8* %8, align 8, !dbg !1392, !tbaa !1065
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2, !dbg !1392
  store i64 0, i64* %9, align 8, !dbg !1392, !tbaa !1067
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0, !dbg !1393
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !dbg !1393, !tbaa !1069
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1393
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #6, !dbg !1393
  br i1 %13, label %15, label %14, !dbg !1393

14:                                               ; preds = %4
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1394
  br label %91, !dbg !1397

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0, !dbg !1398
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1398, !tbaa !893
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1, !dbg !1398
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1378, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1379, metadata !DIExpression()), !dbg !1387
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !dbg !1399, !tbaa !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1380, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1381, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1382, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1383, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1379, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1378, metadata !DIExpression()), !dbg !1387
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1400
  br i1 %20, label %73, label %21, !dbg !1400

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1383, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1382, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, metadata !1381, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1380, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1379, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, metadata !1378, metadata !DIExpression()), !dbg !1387
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64* %28, metadata !476, metadata !DIExpression()), !dbg !1402
  %29 = load atomic i64, i64* %28 monotonic, align 8, !dbg !1404
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2, !dbg !1405
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !dbg !1405, !tbaa !1054
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1386, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %29, metadata !1384, metadata !DIExpression()), !dbg !1406
  %32 = icmp eq i64 %29, %0, !dbg !1407
  br i1 %32, label %33, label %50, !dbg !1407

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !dbg !1408, !tbaa !883
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1411, !tbaa !893
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2, !dbg !1411
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1411, !tbaa !1104
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25, !dbg !1411
  br i1 %37, label %38, label %39, !dbg !1411

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1412, !tbaa !1104
  br label %39, !dbg !1415

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !dbg !1416, !tbaa !1065, !range !574
  %41 = icmp ne i8 %40, 0, !dbg !1416
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1416
  %43 = and i1 %42, %41, !dbg !1416
  br i1 %43, label %50, label %44, !dbg !1416

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null, !dbg !1417
  br i1 %45, label %48, label %46, !dbg !1417

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2, !dbg !1420
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !dbg !1420, !tbaa !1054
  br label %48, !dbg !1423

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ], !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1381, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1382, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64* undef, metadata !1424, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64* %28, metadata !1429, metadata !DIExpression()), !dbg !1430
  store atomic i64 %1, i64* %28 monotonic, align 8, !dbg !1432
  br label %50, !dbg !1433

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ], !dbg !1387
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ], !dbg !1387
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ], !dbg !1434
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ], !dbg !1435
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ], !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1383, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1382, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1381, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1380, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1379, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1378, metadata !DIExpression()), !dbg !1387
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null, !dbg !1400
  br i1 %56, label %57, label %21, !dbg !1400, !llvm.loop !1436

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null, !dbg !1438
  br i1 %58, label %73, label %59, !dbg !1438

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2, !dbg !1439
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !dbg !1439, !tbaa !1054
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1, !dbg !1442
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !dbg !1442, !tbaa !895
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1, !dbg !1442
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !dbg !1442, !tbaa !1098
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null, !dbg !1442
  br i1 %65, label %70, label %66, !dbg !1442

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1443
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !dbg !1443, !tbaa !1104
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2, !dbg !1443
  br label %70, !dbg !1446

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !dbg !1447, !tbaa !883
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1448
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !dbg !1448, !tbaa !1104
  br label %73, !dbg !1449

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3, !dbg !1450
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !dbg !1450, !tbaa !1451
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null, !dbg !1450
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #6, !dbg !1450
  br i1 %78, label %79, label %84, !dbg !1452

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3, !dbg !1453
  store i64 %3, i64* %80, align 8, !dbg !1453, !tbaa !1055
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !695, metadata !DIExpression()) #7, !dbg !1456
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0, !dbg !1458
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %81) #6, !dbg !1458
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1459
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !701, metadata !DIExpression()) #7, !dbg !1460
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2, !dbg !1462
  store i8 0, i8* %82, align 8, !dbg !1462, !tbaa !527
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1, !dbg !1463
  call void @WakeConditionVariable(i64* nonnull %83) #6, !dbg !1463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !708, metadata !DIExpression()) #7, !dbg !1464
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %81) #6, !dbg !1466
  br label %85, !dbg !1467

84:                                               ; preds = %73
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1468
  br label %85, !dbg !1470

85:                                               ; preds = %84, %79
  %86 = load i8, i8* %8, align 8, !dbg !1471
  %87 = and i8 %86, 1, !dbg !1471
  %88 = icmp ne i8 %87, 0, !dbg !1471
  %89 = and i1 %78, %88, !dbg !1471
  %90 = zext i1 %89 to i32, !dbg !1471
  br label %91

91:                                               ; preds = %85, %14
  %92 = phi i32 [ %90, %85 ], [ 0, %14 ], !dbg !1387
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1472
  ret i32 %92, !dbg !1472
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1473 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1475, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %0, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %0, metadata !1477, metadata !DIExpression()), !dbg !1479
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1480
  %4 = bitcast i8* %3 to i64**, !dbg !1480
  %5 = load i64*, i64** %4, align 8, !dbg !1480, !tbaa !1481
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64* %5, metadata !476, metadata !DIExpression()), !dbg !1483
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %6, metadata !1478, metadata !DIExpression()), !dbg !1479
  %7 = icmp eq i64 %6, 3, !dbg !1486
  ret i1 %7, !dbg !1486
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1487 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %1, metadata !1490, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %0, metadata !1491, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()), !dbg !1494
  %4 = select i1 %2, i64 2, i64 0, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %4, metadata !1493, metadata !DIExpression()), !dbg !1494
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1496
  %6 = bitcast i8* %5 to i64**, !dbg !1496
  %7 = load i64*, i64** %6, align 8, !dbg !1496, !tbaa !1481
  call void @llvm.dbg.value(metadata i64* undef, metadata !1497, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64* %7, metadata !1500, metadata !DIExpression()), !dbg !1501
  store atomic i64 %4, i64* %7 release, align 8, !dbg !1503
  ret i64 0, !dbg !1504
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1505 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1507, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1514
  call void @llvm.dbg.value(metadata i32 %1, metadata !1508, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8* %0, metadata !1509, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8* %0, metadata !1510, metadata !DIExpression()), !dbg !1514
  br i1 %2, label %8, label %4, !dbg !1515

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1510, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i64 0, metadata !1511, metadata !DIExpression()), !dbg !1516
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1517
  %6 = bitcast i8* %5 to i64**, !dbg !1517
  %7 = load i64*, i64** %6, align 8, !dbg !1517, !tbaa !1518
  call void @llvm.dbg.value(metadata i64* undef, metadata !1424, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64* %7, metadata !1429, metadata !DIExpression()), !dbg !1520
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1522
  br label %8, !dbg !1523

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1524
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 !dbg !1525 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1527, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %0, metadata !1528, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %0, metadata !1529, metadata !DIExpression()), !dbg !1531
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1532
  %4 = bitcast i8* %3 to i64**, !dbg !1532
  %5 = load i64*, i64** %4, align 8, !dbg !1532, !tbaa !1533
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64* %5, metadata !476, metadata !DIExpression()), !dbg !1535
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %6, metadata !1530, metadata !DIExpression()), !dbg !1531
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1538
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1538
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1538, !tbaa !1539
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64, !dbg !1538
  %11 = icmp eq i64 %6, %10, !dbg !1538
  br i1 %11, label %12, label %30, !dbg !1538

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64* undef, metadata !1424, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64* %5, metadata !1429, metadata !DIExpression()), !dbg !1540
  store atomic i64 0, i64* %5 monotonic, align 8, !dbg !1542
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1543, !tbaa !1539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, metadata !1544, metadata !DIExpression()), !dbg !1550
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0, !dbg !1552
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i64* %14, metadata !476, metadata !DIExpression()), !dbg !1553
  %15 = load atomic i64, i64* %14 monotonic, align 8, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %15, metadata !1547, metadata !DIExpression()), !dbg !1550
  %16 = and i64 %15, 1, !dbg !1556
  %17 = icmp eq i64 %16, 0, !dbg !1556
  br i1 %17, label %27, label %18, !dbg !1556

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1547, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %19, metadata !1547, metadata !DIExpression()), !dbg !1550
  %20 = or i64 %19, 2, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %20, metadata !1548, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64* undef, metadata !1559, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64* undef, metadata !1562, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64* %14, metadata !1563, metadata !DIExpression()), !dbg !1564
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic, !dbg !1566
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1566
  br i1 %22, label %27, label %23, !dbg !1566

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !1566
  call void @llvm.dbg.value(metadata i64 %24, metadata !1547, metadata !DIExpression()), !dbg !1550
  %25 = and i64 %24, 1, !dbg !1556
  %26 = icmp eq i64 %25, 0, !dbg !1556
  br i1 %26, label %27, label %18, !dbg !1556

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1543
  store i8 %28, i8* %29, align 8, !dbg !1543, !tbaa !1065
  br label %30, !dbg !1567

30:                                               ; preds = %2, %27
  ret i1 %11, !dbg !1568
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1569 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !1571, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1576
  call void @llvm.dbg.value(metadata i1 %2, metadata !1572, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1576
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %0, metadata !1574, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %0, metadata !1575, metadata !DIExpression()), !dbg !1576
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1577
  %6 = load i8, i8* %5, align 8, !dbg !1577, !tbaa !1065, !range !574
  %7 = icmp ne i8 %6, 0, !dbg !1577
  %8 = and i1 %7, %3, !dbg !1577
  br i1 %8, label %9, label %15, !dbg !1577

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1578
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1578
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !dbg !1578, !tbaa !1539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1581, metadata !DIExpression()), !dbg !1584
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0, !dbg !1586
  call void @llvm.dbg.value(metadata i64 2, metadata !1587, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i64* %13, metadata !1590, metadata !DIExpression()), !dbg !1591
  %14 = atomicrmw or i64* %13, i64 2 monotonic, !dbg !1593
  br label %15, !dbg !1594

15:                                               ; preds = %4, %9
  ret void, !dbg !1595
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1596 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1598, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %0, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %0, metadata !1600, metadata !DIExpression()), !dbg !1602
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1603
  %4 = bitcast i8* %3 to i64**, !dbg !1603
  %5 = load i64*, i64** %4, align 8, !dbg !1603, !tbaa !1604
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i64* %5, metadata !476, metadata !DIExpression()), !dbg !1606
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1608
  call void @llvm.dbg.value(metadata i64 %6, metadata !1601, metadata !DIExpression()), !dbg !1602
  %7 = icmp eq i64 %6, 0, !dbg !1609
  %8 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1610
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1610
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !dbg !1610, !tbaa !1612
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64, !dbg !1610
  br i1 %7, label %12, label %13, !dbg !1609

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1600, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %11, metadata !1601, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64* undef, metadata !1424, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i64* %5, metadata !1429, metadata !DIExpression()), !dbg !1613
  store atomic i64 %11, i64* %5 monotonic, align 8, !dbg !1616
  br label %17, !dbg !1617

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11, !dbg !1618
  br i1 %14, label %17, label %15, !dbg !1618

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2, !dbg !1619
  store i64 %11, i64* %16, align 8, !dbg !1619, !tbaa !1067
  br label %17, !dbg !1622

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ], !dbg !1602
  ret i1 %18, !dbg !1623
}

; Function Attrs: nounwind
define weak dso_local void @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #4 !dbg !1624 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1626, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %0, metadata !1627, metadata !DIExpression()), !dbg !1628
  %3 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1629
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1629
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !dbg !1629, !tbaa !1612
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1630, metadata !DIExpression()) #7, !dbg !1635
  call void @llvm.dbg.value(metadata i64 1, metadata !1633, metadata !DIExpression()) #7, !dbg !1635
  call void @llvm.dbg.value(metadata i64 0, metadata !1634, metadata !DIExpression()) #7, !dbg !1635
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0, !dbg !1637
  call void @llvm.dbg.value(metadata i64* undef, metadata !557, metadata !DIExpression()) #7, !dbg !1638
  call void @llvm.dbg.value(metadata i64* undef, metadata !560, metadata !DIExpression()) #7, !dbg !1638
  call void @llvm.dbg.value(metadata i64* %6, metadata !561, metadata !DIExpression()) #7, !dbg !1638
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic, !dbg !1640
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1640
  br i1 %8, label %22, label %9, !dbg !1637

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1641, metadata !DIExpression()) #7, !dbg !1647
  call void @llvm.dbg.value(metadata i64 1, metadata !1644, metadata !DIExpression()) #7, !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()) #7, !dbg !1647
  call void @llvm.dbg.value(metadata i64* undef, metadata !1651, metadata !DIExpression()) #7, !dbg !1656
  call void @llvm.dbg.value(metadata i64* undef, metadata !1654, metadata !DIExpression()) #7, !dbg !1656
  call void @llvm.dbg.value(metadata i64* %6, metadata !1655, metadata !DIExpression()) #7, !dbg !1656
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic, !dbg !1658
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !1658
  br i1 %11, label %22, label %12, !dbg !1659

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1660
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1660
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1646, metadata !DIExpression()) #7, !dbg !1660
  call void @llvm.dbg.value(metadata i64* %6, metadata !1661, metadata !DIExpression()) #7, !dbg !1665
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1664, metadata !DIExpression()) #7, !dbg !1665
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1671
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1673
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1673
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %15, align 8, !dbg !1673, !tbaa !1124
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1673
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1673
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !dbg !1673, !tbaa !1451
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1674
  store i64* %6, i64** %18, align 8, !dbg !1674, !tbaa !1481
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !dbg !1675, !tbaa !1069
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %16, align 8, !dbg !1677, !tbaa !1196
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1678
  %20 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64, !dbg !1678
  %21 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %20, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %19) #6, !dbg !1678
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1679
  br label %22, !dbg !1679

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1680
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1681 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1683, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1690
  call void @llvm.dbg.value(metadata i32 %1, metadata !1684, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %0, metadata !1685, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()), !dbg !1690
  br i1 %2, label %8, label %4, !dbg !1691

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1686, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 0, metadata !1687, metadata !DIExpression()), !dbg !1692
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1693
  %6 = bitcast i8* %5 to i64**, !dbg !1693
  %7 = load i64*, i64** %6, align 8, !dbg !1693, !tbaa !1604
  call void @llvm.dbg.value(metadata i64* undef, metadata !1424, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64* %7, metadata !1429, metadata !DIExpression()), !dbg !1694
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1696
  br label %8, !dbg !1697

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1698
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1699 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1706, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata i64 0, metadata !1709, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata i64 1, metadata !1710, metadata !DIExpression()) #7, !dbg !1711
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1713
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !1714
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !1714
  call void @llvm.dbg.value(metadata i64* %3, metadata !492, metadata !DIExpression()) #7, !dbg !1714
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic, !dbg !1716
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1716
  br i1 %5, label %59, label %6, !dbg !1713

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1706, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1717, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i32 40, metadata !1720, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1735
  call void @llvm.dbg.value(metadata i64* %3, metadata !476, metadata !DIExpression()) #7, !dbg !1735
  %7 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1737
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %15 = ptrtoint %struct.halide_mutex* %0 to i64
  br label %16, !dbg !1738

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1720, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %17, metadata !1721, metadata !DIExpression()) #7, !dbg !1731
  %19 = and i64 %17, 1, !dbg !1739
  %20 = icmp eq i64 %19, 0, !dbg !1739
  br i1 %20, label %21, label %32, !dbg !1739

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1721, metadata !DIExpression()) #7, !dbg !1731
  %23 = or i64 %22, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %23, metadata !1722, metadata !DIExpression()) #7, !dbg !1741
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !1742
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !1742
  call void @llvm.dbg.value(metadata i64* %3, metadata !492, metadata !DIExpression()) #7, !dbg !1742
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic, !dbg !1744
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !1744
  br i1 %25, label %59, label %26, !dbg !1744

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %18, metadata !1720, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %27, metadata !1721, metadata !DIExpression()) #7, !dbg !1731
  %28 = and i64 %27, 1, !dbg !1739
  %29 = icmp eq i64 %28, 0, !dbg !1739
  br i1 %29, label %21, label %30, !dbg !1739

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0, !dbg !1744
  br label %32, !dbg !1745

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ], !dbg !1731
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !497, metadata !DIExpression()) #7, !dbg !1747
  %34 = icmp sgt i32 %18, 0, !dbg !1745
  br i1 %34, label %35, label %40, !dbg !1745

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %18, metadata !1720, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1731
  %36 = icmp eq i32 %18, 1, !dbg !1748
  br i1 %36, label %40, label %37, !dbg !1749

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %38, metadata !1720, metadata !DIExpression()) #7, !dbg !1731
  call void @halide_thread_yield() #6, !dbg !1751
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1754
  call void @llvm.dbg.value(metadata i64* %3, metadata !476, metadata !DIExpression()) #7, !dbg !1754
  %39 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1756
  br label %55, !dbg !1757

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !1721, metadata !DIExpression()) #7, !dbg !1731
  %42 = and i64 %33, 2, !dbg !1758
  %43 = icmp eq i64 %42, 0, !dbg !1758
  br i1 %43, label %44, label %50, !dbg !1758

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %33, metadata !1721, metadata !DIExpression()) #7, !dbg !1731
  %45 = or i64 %33, 2, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %45, metadata !1726, metadata !DIExpression()) #7, !dbg !1760
  call void @llvm.dbg.value(metadata i64* undef, metadata !1559, metadata !DIExpression()) #7, !dbg !1761
  call void @llvm.dbg.value(metadata i64* undef, metadata !1562, metadata !DIExpression()) #7, !dbg !1761
  call void @llvm.dbg.value(metadata i64* %3, metadata !1563, metadata !DIExpression()) #7, !dbg !1761
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic, !dbg !1763
  %47 = extractvalue { i64, i1 } %46, 1, !dbg !1763
  br i1 %47, label %50, label %48, !dbg !1763

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0, !dbg !1763
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1764
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1729, metadata !DIExpression()) #7, !dbg !1764
  call void @llvm.dbg.value(metadata i64* %3, metadata !1661, metadata !DIExpression()) #7, !dbg !1765
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1664, metadata !DIExpression()) #7, !dbg !1765
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1767
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !dbg !1769, !tbaa !1124
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1769, !tbaa !1451
  store i64* %3, i64** %13, align 8, !dbg !1770, !tbaa !1481
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1771, !tbaa !1069
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !dbg !1772, !tbaa !1196
  %51 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %14) #6, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %51, metadata !1730, metadata !DIExpression()) #7, !dbg !1774
  %52 = icmp eq i64 %51, %15, !dbg !1775
  br i1 %52, label %58, label %53, !dbg !1775

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 40, metadata !1720, metadata !DIExpression()) #7, !dbg !1731
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1776
  call void @llvm.dbg.value(metadata i64* %3, metadata !476, metadata !DIExpression()) #7, !dbg !1776
  %54 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1779
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16, !dbg !1731, !llvm.loop !1780

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1779
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void, !dbg !1782
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1783 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1786, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1630, metadata !DIExpression()) #7, !dbg !1788
  call void @llvm.dbg.value(metadata i64 1, metadata !1633, metadata !DIExpression()) #7, !dbg !1788
  call void @llvm.dbg.value(metadata i64 0, metadata !1634, metadata !DIExpression()) #7, !dbg !1788
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1790
  call void @llvm.dbg.value(metadata i64* undef, metadata !557, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata i64* undef, metadata !560, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata i64* %3, metadata !561, metadata !DIExpression()) #7, !dbg !1791
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic, !dbg !1793
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1793
  br i1 %5, label %19, label %6, !dbg !1790

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1641, metadata !DIExpression()) #7, !dbg !1794
  call void @llvm.dbg.value(metadata i64 1, metadata !1644, metadata !DIExpression()) #7, !dbg !1794
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()) #7, !dbg !1794
  call void @llvm.dbg.value(metadata i64* undef, metadata !1651, metadata !DIExpression()) #7, !dbg !1796
  call void @llvm.dbg.value(metadata i64* undef, metadata !1654, metadata !DIExpression()) #7, !dbg !1796
  call void @llvm.dbg.value(metadata i64* %3, metadata !1655, metadata !DIExpression()) #7, !dbg !1796
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic, !dbg !1798
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1798
  br i1 %8, label %19, label %9, !dbg !1799

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1800
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1800
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1646, metadata !DIExpression()) #7, !dbg !1800
  call void @llvm.dbg.value(metadata i64* %3, metadata !1661, metadata !DIExpression()) #7, !dbg !1801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1664, metadata !DIExpression()) #7, !dbg !1801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1803
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1805
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1805
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %12, align 8, !dbg !1805, !tbaa !1124
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1805
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1805
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !1805, !tbaa !1451
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1806
  store i64* %3, i64** %15, align 8, !dbg !1806, !tbaa !1481
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !1807, !tbaa !1069
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %13, align 8, !dbg !1808, !tbaa !1196
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1809
  %17 = ptrtoint %struct.halide_mutex* %0 to i64, !dbg !1809
  %18 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16) #6, !dbg !1809
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1810
  br label %19, !dbg !1810

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !1811
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1812 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1817, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1818, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1820, metadata !DIExpression()) #7, !dbg !1825
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !1827
  call void @llvm.dbg.value(metadata i8* %3, metadata !1828, metadata !DIExpression()) #7, !dbg !1831
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !1833
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1834
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1835
  call void @llvm.dbg.value(metadata i64* %4, metadata !476, metadata !DIExpression()) #7, !dbg !1835
  %5 = load atomic i64, i64* %4 monotonic, align 8, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %5, metadata !1823, metadata !DIExpression()) #7, !dbg !1825
  %6 = icmp eq i64 %5, 0, !dbg !1838
  br i1 %6, label %7, label %8, !dbg !1838

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !1839, metadata !DIExpression()) #7, !dbg !1842
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1846
  br label %20, !dbg !1847

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1820, metadata !DIExpression()) #7, !dbg !1825
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1818, metadata !DIExpression()), !dbg !1819
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !1848
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #7, !dbg !1848
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1824, metadata !DIExpression()) #7, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %5, metadata !1823, metadata !DIExpression()) #7, !dbg !1825
  %10 = inttoptr i64 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1848
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !1849, metadata !DIExpression()) #7, !dbg !1854
  call void @llvm.dbg.value(metadata i64* %4, metadata !1852, metadata !DIExpression()) #7, !dbg !1854
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1853, metadata !DIExpression()) #7, !dbg !1854
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1856
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1858
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1858
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %12, align 8, !dbg !1858, !tbaa !1124
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1858
  store i64 (i8*, i32, i1)* @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %13, align 8, !dbg !1858, !tbaa !1196
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1858
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1, !dbg !1859
  store i64* %4, i64** %15, align 8, !dbg !1859, !tbaa !1533
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2, !dbg !1859
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 8, !dbg !1859, !tbaa !1539
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !1860, !tbaa !1069
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !1862, !tbaa !1451
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %5, metadata !1823, metadata !DIExpression()) #7, !dbg !1825
  %18 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1863
  %19 = call i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z"(i64 %18, i64 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17, i64 0) #6, !dbg !1863
  call void @llvm.dbg.value(metadata i8* %3, metadata !1839, metadata !DIExpression()) #7, !dbg !1864
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1866
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #7, !dbg !1867
  br label %20, !dbg !1867

20:                                               ; preds = %7, %8
  ret void, !dbg !1868
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1869 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1872, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1874, metadata !DIExpression()) #7, !dbg !1879
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !1881
  call void @llvm.dbg.value(metadata i8* %3, metadata !1828, metadata !DIExpression()) #7, !dbg !1882
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !1884
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1885
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1886
  call void @llvm.dbg.value(metadata i64* %4, metadata !476, metadata !DIExpression()) #7, !dbg !1886
  %5 = load atomic i64, i64* %4 monotonic, align 8, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %5, metadata !1877, metadata !DIExpression()) #7, !dbg !1879
  %6 = icmp eq i64 %5, 0, !dbg !1889
  br i1 %6, label %7, label %8, !dbg !1889

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !1839, metadata !DIExpression()) #7, !dbg !1890
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1894
  br label %20, !dbg !1895

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1874, metadata !DIExpression()) #7, !dbg !1879
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1872, metadata !DIExpression()), !dbg !1873
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #7, !dbg !1896
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1878, metadata !DIExpression()) #7, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %5, metadata !1877, metadata !DIExpression()) #7, !dbg !1879
  %10 = inttoptr i64 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1896
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !1897, metadata !DIExpression()) #7, !dbg !1902
  call void @llvm.dbg.value(metadata i64* %4, metadata !1900, metadata !DIExpression()) #7, !dbg !1902
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1901, metadata !DIExpression()) #7, !dbg !1902
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1904
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1906
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !1906, !tbaa !1069
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1906
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %12, align 8, !dbg !1906, !tbaa !1124
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1906
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1906
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !1906, !tbaa !1451
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1, !dbg !1907
  store i64* %4, i64** %15, align 8, !dbg !1907, !tbaa !1518
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2, !dbg !1907
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 8, !dbg !1907, !tbaa !1908
  store i64 (i8*, i32, i1)* @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %13, align 8, !dbg !1909, !tbaa !1196
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, !dbg !1911
  %18 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1911
  %19 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %18, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %17) #6, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %3, metadata !1839, metadata !DIExpression()) #7, !dbg !1912
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1914
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #7, !dbg !1915
  br label %20, !dbg !1915

20:                                               ; preds = %7, %8
  ret void, !dbg !1916
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !1917 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1923, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1924, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1926, metadata !DIExpression()) #7, !dbg !1935
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1929, metadata !DIExpression()) #7, !dbg !1935
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !1937
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !1937
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1930, metadata !DIExpression()) #7, !dbg !1937
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1937
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1938, metadata !DIExpression()) #7, !dbg !1943
  call void @llvm.dbg.value(metadata i64* %6, metadata !1941, metadata !DIExpression()) #7, !dbg !1943
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1942, metadata !DIExpression()) #7, !dbg !1943
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1667, metadata !DIExpression()) #7, !dbg !1945
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0, !dbg !1947
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1, !dbg !1947
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2, !dbg !1947
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3, !dbg !1947
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !dbg !1947, !tbaa !1451
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1, !dbg !1948
  store i64* %6, i64** %11, align 8, !dbg !1948, !tbaa !1604
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2, !dbg !1948
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !1948
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !dbg !1948, !tbaa !1612
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !dbg !1949, !tbaa !1069
  store void (i8*)* @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %8, align 8, !dbg !1951, !tbaa !1124
  store i64 (i8*, i32, i1)* @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %9, align 8, !dbg !1952, !tbaa !1196
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, !dbg !1953
  %15 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1953
  %16 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %14) #6, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %16, metadata !1931, metadata !DIExpression()) #7, !dbg !1935
  %17 = ptrtoint %struct.halide_mutex* %1 to i64, !dbg !1954
  %18 = icmp eq i64 %16, %17, !dbg !1954
  br i1 %18, label %75, label %19, !dbg !1954

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1706, metadata !DIExpression()) #7, !dbg !1955
  call void @llvm.dbg.value(metadata i64 0, metadata !1709, metadata !DIExpression()) #7, !dbg !1955
  call void @llvm.dbg.value(metadata i64 1, metadata !1710, metadata !DIExpression()) #7, !dbg !1955
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !1958
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !1959
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !1959
  call void @llvm.dbg.value(metadata i64* %20, metadata !492, metadata !DIExpression()) #7, !dbg !1959
  %21 = cmpxchg weak i64* %20, i64 0, i64 1 acquire monotonic, !dbg !1961
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1961
  br i1 %22, label %83, label %23, !dbg !1958

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1717, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i32 40, metadata !1720, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1964
  call void @llvm.dbg.value(metadata i64* %20, metadata !476, metadata !DIExpression()) #7, !dbg !1964
  %24 = load atomic i64, i64* %20 monotonic, align 8, !dbg !1966
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32, !dbg !1967

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !1720, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %33, metadata !1721, metadata !DIExpression()) #7, !dbg !1962
  %35 = and i64 %33, 1, !dbg !1968
  %36 = icmp eq i64 %35, 0, !dbg !1968
  br i1 %36, label %37, label %48, !dbg !1968

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1721, metadata !DIExpression()) #7, !dbg !1962
  %39 = or i64 %38, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %39, metadata !1722, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata i64* undef, metadata !486, metadata !DIExpression()) #7, !dbg !1971
  call void @llvm.dbg.value(metadata i64* undef, metadata !491, metadata !DIExpression()) #7, !dbg !1971
  call void @llvm.dbg.value(metadata i64* %20, metadata !492, metadata !DIExpression()) #7, !dbg !1971
  %40 = cmpxchg weak i64* %20, i64 %38, i64 %39 acquire monotonic, !dbg !1973
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !1973
  br i1 %41, label %83, label %42, !dbg !1973

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %34, metadata !1720, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %43, metadata !1721, metadata !DIExpression()) #7, !dbg !1962
  %44 = and i64 %43, 1, !dbg !1968
  %45 = icmp eq i64 %44, 0, !dbg !1968
  br i1 %45, label %37, label %46, !dbg !1968

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0, !dbg !1973
  br label %48, !dbg !1974

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ], !dbg !1962
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !497, metadata !DIExpression()) #7, !dbg !1976
  %50 = icmp sgt i32 %34, 0, !dbg !1974
  br i1 %50, label %51, label %56, !dbg !1974

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %34, metadata !1720, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1962
  %52 = icmp eq i32 %34, 1, !dbg !1977
  br i1 %52, label %56, label %53, !dbg !1978

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %54, metadata !1720, metadata !DIExpression()) #7, !dbg !1962
  call void @halide_thread_yield() #6, !dbg !1980
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !1981
  call void @llvm.dbg.value(metadata i64* %20, metadata !476, metadata !DIExpression()) #7, !dbg !1981
  %55 = load atomic i64, i64* %20 monotonic, align 8, !dbg !1983
  br label %71, !dbg !1984

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1721, metadata !DIExpression()) #7, !dbg !1962
  %58 = and i64 %49, 2, !dbg !1985
  %59 = icmp eq i64 %58, 0, !dbg !1985
  br i1 %59, label %60, label %66, !dbg !1985

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %49, metadata !1721, metadata !DIExpression()) #7, !dbg !1962
  %61 = or i64 %49, 2, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %61, metadata !1726, metadata !DIExpression()) #7, !dbg !1987
  call void @llvm.dbg.value(metadata i64* undef, metadata !1559, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i64* undef, metadata !1562, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i64* %20, metadata !1563, metadata !DIExpression()) #7, !dbg !1988
  %62 = cmpxchg weak i64* %20, i64 %49, i64 %61 monotonic monotonic, !dbg !1990
  %63 = extractvalue { i64, i1 } %62, 1, !dbg !1990
  br i1 %63, label %66, label %64, !dbg !1990

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0, !dbg !1990
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #7, !dbg !1991
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1729, metadata !DIExpression()) #7, !dbg !1991
  call void @llvm.dbg.value(metadata i64* %20, metadata !1661, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1664, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1667, metadata !DIExpression()) #7, !dbg !1994
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %27, align 8, !dbg !1996, !tbaa !1124
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !dbg !1996, !tbaa !1451
  store i64* %20, i64** %30, align 8, !dbg !1997, !tbaa !1481
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !dbg !1998, !tbaa !1069
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %28, align 8, !dbg !1999, !tbaa !1196
  %67 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #6, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %67, metadata !1730, metadata !DIExpression()) #7, !dbg !2001
  %68 = icmp eq i64 %67, %17, !dbg !2002
  br i1 %68, label %74, label %69, !dbg !2002

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 40, metadata !1720, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !2003
  call void @llvm.dbg.value(metadata i64* %20, metadata !476, metadata !DIExpression()) #7, !dbg !2003
  %70 = load atomic i64, i64* %20 monotonic, align 8, !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2006
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32, !dbg !1962, !llvm.loop !2007

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !2006
  br label %83

75:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1938, metadata !DIExpression()) #7, !dbg !1943
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1926, metadata !DIExpression()) #7, !dbg !1935
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1924, metadata !DIExpression()), !dbg !1925
  %76 = bitcast %struct.halide_mutex* %1 to i8*, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %76, metadata !746, metadata !DIExpression()) #7, !dbg !2010
  call void @__tsan_mutex_pre_lock(i8* %76, i32 1) #6, !dbg !2012
  %77 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !2013
  call void @llvm.dbg.value(metadata i64* undef, metadata !469, metadata !DIExpression()) #7, !dbg !2014
  call void @llvm.dbg.value(metadata i64* %77, metadata !476, metadata !DIExpression()) #7, !dbg !2014
  %78 = load atomic i64, i64* %77 monotonic, align 8, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %78, metadata !1932, metadata !DIExpression()) #7, !dbg !2017
  %79 = and i64 %78, 1, !dbg !2018
  %80 = icmp eq i64 %79, 0, !dbg !2018
  br i1 %80, label %81, label %82, !dbg !2018

81:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !2020
  call void @abort() #6, !dbg !2020
  br label %82, !dbg !2020

82:                                               ; preds = %81, %75
  call void @llvm.dbg.value(metadata i8* %76, metadata !761, metadata !DIExpression()) #7, !dbg !2023
  call void @__tsan_mutex_post_lock(i8* nonnull %76, i32 1, i32 1) #6, !dbg !2025
  br label %83, !dbg !2026

83:                                               ; preds = %37, %19, %74, %82
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2027
  ret void, !dbg !2028
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !2029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2033, metadata !DIExpression()), !dbg !2035
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #6, !dbg !2036
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2036
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2034, metadata !DIExpression()), !dbg !2035
  %4 = icmp eq i8* %2, null, !dbg !2037
  br i1 %4, label %14, label %5, !dbg !2037

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !2038
  %7 = shl nsw i64 %6, 3, !dbg !2038
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #6, !dbg !2038
  %9 = bitcast i8* %2 to i8**, !dbg !2038
  store i8* %8, i8** %9, align 8, !dbg !2038, !tbaa !2039
  %10 = icmp eq i8* %8, null, !dbg !2041
  br i1 %10, label %11, label %12, !dbg !2041

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !2042
  br label %14, !dbg !2045

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #6, !dbg !2046
  br label %14, !dbg !2047

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ], !dbg !2035
  ret %struct.halide_mutex_array* %15, !dbg !2048
}

declare dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

declare dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2049 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %0, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %1, metadata !2055, metadata !DIExpression()), !dbg !2056
  %3 = bitcast i8* %1 to i8**, !dbg !2057
  %4 = load i8*, i8** %3, align 8, !dbg !2057, !tbaa !2039
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !2057
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !2058
  ret void, !dbg !2059
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2060 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2064, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2065, metadata !DIExpression()), !dbg !2066
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2067
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2067, !tbaa !2039
  %5 = sext i32 %1 to i64, !dbg !2067
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2067
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #8, !dbg !2067
  ret i32 0, !dbg !2068
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2069 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2072, metadata !DIExpression()), !dbg !2073
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !2074
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !2074, !tbaa !2039
  %5 = sext i32 %1 to i64, !dbg !2074
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !2074
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #8, !dbg !2074
  ret i32 0, !dbg !2075
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %0) local_unnamed_addr #5 !dbg !2076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2080, metadata !DIExpression()), !dbg !2081
  %2 = icmp sgt i32 %0, 256, !dbg !2082
  br i1 %2, label %6, label %3, !dbg !2082

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2083
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2083
  ret i32 %5, !dbg !2083

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2080, metadata !DIExpression()), !dbg !2081
  ret i32 256, !dbg !2085
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() local_unnamed_addr #0 !dbg !2086 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2088, metadata !DIExpression()), !dbg !2090
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@", i64 0, i64 0)) #6, !dbg !2091
  call void @llvm.dbg.value(metadata i8* %1, metadata !2089, metadata !DIExpression()), !dbg !2090
  %2 = icmp eq i8* %1, null, !dbg !2092
  br i1 %2, label %3, label %6, !dbg !2092

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@", i64 0, i64 0)) #6, !dbg !2093
  call void @llvm.dbg.value(metadata i8* %4, metadata !2089, metadata !DIExpression()), !dbg !2090
  %5 = icmp eq i8* %4, null, !dbg !2096
  br i1 %5, label %9, label %6, !dbg !2096

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %8, metadata !2088, metadata !DIExpression()), !dbg !2090
  br label %11, !dbg !2100

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #8, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %10, metadata !2088, metadata !DIExpression()), !dbg !2090
  br label %11, !dbg !2103

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2104
  call void @llvm.dbg.value(metadata i32 %12, metadata !2088, metadata !DIExpression()), !dbg !2090
  ret i32 %12, !dbg !2105
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !2106 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2110, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 40, metadata !2112, metadata !DIExpression()), !dbg !2136
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8, !dbg !2137
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10, !dbg !2143

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ], !dbg !2144
  call void @llvm.dbg.value(metadata i32 %11, metadata !2111, metadata !DIExpression()), !dbg !2136
  br i1 %3, label %15, label %12, !dbg !2143

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2140, metadata !DIExpression()), !dbg !2145
  %13 = load i32, i32* %4, align 8, !dbg !2137, !tbaa !2146
  %14 = icmp eq i32 %13, 0, !dbg !2137
  br i1 %14, label %18, label %21, !dbg !2137

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 14), align 8, !dbg !2143, !tbaa !2150, !range !574
  %17 = icmp eq i8 %16, 0, !dbg !2143
  br i1 %17, label %48, label %417, !dbg !2143

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !dbg !2137, !tbaa !2154
  %20 = icmp eq i32 %19, 0, !dbg !2137
  br i1 %20, label %417, label %21, !dbg !2143

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2155, !tbaa !2156
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !2114, metadata !DIExpression()), !dbg !2157
  %23 = load i32, i32* %5, align 4, !dbg !2158, !tbaa !2161
  %24 = icmp eq i32 %23, 0, !dbg !2158
  br i1 %24, label %38, label %25, !dbg !2158

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !dbg !2162, !tbaa !2154
  %27 = icmp eq i32 %26, 0, !dbg !2162
  br i1 %27, label %28, label %46, !dbg !2162

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), metadata !2116, metadata !DIExpression()), !dbg !2157
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2165
  br i1 %29, label %35, label %30, !dbg !2165

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2114, metadata !DIExpression()), !dbg !2157
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2, !dbg !2168
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2116, metadata !DIExpression()), !dbg !2157
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !dbg !2170, !tbaa !2171
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2114, metadata !DIExpression()), !dbg !2157
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2165
  br i1 %34, label %35, label %30, !dbg !2165, !llvm.loop !2172

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %28 ], [ %32, %30 ], !dbg !2157
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !dbg !2174, !tbaa !2171
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !dbg !2174, !tbaa !883
  store i32 0, i32* %4, align 8, !dbg !2175, !tbaa !2146
  br label %402, !dbg !2176

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !dbg !2177, !tbaa !2178
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2177
  br i1 %40, label %46, label %41, !dbg !2177

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9, !dbg !2177
  %43 = load i32, i32* %42, align 4, !dbg !2177, !tbaa !2161
  %44 = icmp eq i32 %43, 0, !dbg !2177
  br i1 %44, label %46, label %45, !dbg !2177

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2179, !tbaa !2161
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2182
  br label %402, !dbg !2183

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), metadata !2116, metadata !DIExpression()), !dbg !2157
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2184
  br i1 %47, label %196, label %51, !dbg !2184

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2155, !tbaa !2156
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), metadata !2116, metadata !DIExpression()), !dbg !2157
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2184
  br i1 %50, label %206, label %52, !dbg !2184

51:                                               ; preds = %46
  br i1 %3, label %52, label %121, !dbg !2184

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2185

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !2116, metadata !DIExpression()), !dbg !2157
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5, !dbg !2186
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !dbg !2186, !tbaa !2178
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !2120, metadata !DIExpression()), !dbg !2187
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2185
  br i1 %59, label %75, label %60, !dbg !2185

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8, !dbg !2188
  %62 = load i32, i32* %61, align 8, !dbg !2188, !tbaa !2154
  %63 = icmp eq i32 %62, 0, !dbg !2188
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7, !dbg !2191
  %65 = load i32, i32* %64, align 4, !dbg !2191, !tbaa !2193
  br i1 %63, label %71, label %66, !dbg !2188

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2194
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2194
  %69 = load i32, i32* %68, align 8, !dbg !2194, !tbaa !2196
  %70 = sub nsw i32 %67, %69, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %70, metadata !2121, metadata !DIExpression()), !dbg !2187
  br label %80, !dbg !2197

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2198
  %73 = load i32, i32* %72, align 8, !dbg !2198, !tbaa !2196
  %74 = sub nsw i32 %65, %73, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %74, metadata !2121, metadata !DIExpression()), !dbg !2187
  br label %80, !dbg !2200

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2201, !tbaa !2203
  %77 = add nsw i32 %76, 1, !dbg !2201
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2201, !tbaa !2204
  %79 = sub i32 %77, %78, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %79, metadata !2121, metadata !DIExpression()), !dbg !2187
  br label %80, !dbg !2205

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ], !dbg !2206
  call void @llvm.dbg.value(metadata i32 %81, metadata !2121, metadata !DIExpression()), !dbg !2187
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7, !dbg !2207
  %83 = load i32, i32* %82, align 4, !dbg !2207, !tbaa !2193
  %84 = icmp sge i32 %81, %83, !dbg !2207
  call void @llvm.dbg.value(metadata i1 %84, metadata !2118, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  call void @llvm.dbg.value(metadata i1 true, metadata !2122, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8, !dbg !2208
  %86 = load i8, i8* %85, align 8, !dbg !2208, !tbaa !2209, !range !574
  %87 = icmp eq i8 %86, 0, !dbg !2208
  br i1 %87, label %92, label %88, !dbg !2208

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8, !dbg !2208
  %90 = load i32, i32* %89, align 8, !dbg !2208, !tbaa !2154
  %91 = icmp eq i32 %90, 0, !dbg !2208
  br label %92, !dbg !2208

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i1 %93, metadata !2123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %94 = and i1 %93, %84, !dbg !2210
  br i1 %94, label %95, label %117, !dbg !2210

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2211, metadata !DIExpression()) #7, !dbg !2214
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10, !dbg !2218
  %97 = load i32, i32* %96, align 8, !dbg !2218, !tbaa !2220
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4, !dbg !2218
  %99 = load i32, i32* %98, align 8, !dbg !2218, !tbaa !2221
  %100 = icmp slt i32 %97, %99, !dbg !2218
  br i1 %100, label %101, label %225, !dbg !2218

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103, !dbg !2218

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !dbg !2222, !tbaa !2225
  %106 = sext i32 %104 to i64, !dbg !2222
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1, !dbg !2222
  %108 = load i32, i32* %107, align 8, !dbg !2222, !tbaa !2226
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0, !dbg !2222
  %110 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %109, align 8, !dbg !2222, !tbaa !2228
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %110, i32 %108) #6, !dbg !2222
  br i1 %111, label %112, label %117, !dbg !2222

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !dbg !2229, !tbaa !2220
  %114 = add nsw i32 %113, 1, !dbg !2229
  store i32 %114, i32* %96, align 8, !dbg !2229, !tbaa !2220
  %115 = load i32, i32* %98, align 8, !dbg !2218, !tbaa !2221
  %116 = icmp slt i32 %114, %115, !dbg !2218
  br i1 %116, label %103, label %225, !dbg !2218, !llvm.loop !2230

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2, !dbg !2232
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %118, metadata !2116, metadata !DIExpression()), !dbg !2157
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !dbg !2233, !tbaa !2171
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %119, metadata !2114, metadata !DIExpression()), !dbg !2157
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null, !dbg !2184
  br i1 %120, label %196, label %54, !dbg !2184

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %123, metadata !2116, metadata !DIExpression()), !dbg !2157
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5, !dbg !2186
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !dbg !2186, !tbaa !2178
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %125, metadata !2120, metadata !DIExpression()), !dbg !2187
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null, !dbg !2185
  br i1 %126, label %127, label %132, !dbg !2185

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2201, !tbaa !2203
  %129 = add nsw i32 %128, 1, !dbg !2201
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2201, !tbaa !2204
  %131 = sub i32 %129, %130, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %131, metadata !2121, metadata !DIExpression()), !dbg !2187
  br label %147, !dbg !2205

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8, !dbg !2188
  %134 = load i32, i32* %133, align 8, !dbg !2188, !tbaa !2154
  %135 = icmp eq i32 %134, 0, !dbg !2188
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7, !dbg !2191
  %137 = load i32, i32* %136, align 4, !dbg !2191, !tbaa !2193
  br i1 %135, label %138, label %142, !dbg !2188

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2198
  %140 = load i32, i32* %139, align 8, !dbg !2198, !tbaa !2196
  %141 = sub nsw i32 %137, %140, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %141, metadata !2121, metadata !DIExpression()), !dbg !2187
  br label %147, !dbg !2200

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134, !dbg !2194
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2194
  %145 = load i32, i32* %144, align 8, !dbg !2194, !tbaa !2196
  %146 = sub nsw i32 %143, %145, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %146, metadata !2121, metadata !DIExpression()), !dbg !2187
  br label %147, !dbg !2197

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ], !dbg !2206
  call void @llvm.dbg.value(metadata i32 %148, metadata !2121, metadata !DIExpression()), !dbg !2187
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7, !dbg !2207
  %150 = load i32, i32* %149, align 4, !dbg !2207, !tbaa !2193
  %151 = icmp slt i32 %148, %150, !dbg !2207
  call void @llvm.dbg.value(metadata i1 %151, metadata !2118, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3, !dbg !2234
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !dbg !2234, !tbaa !2235
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !dbg !2234, !tbaa !2235
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154, !dbg !2234
  %156 = icmp ne i32 %150, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2122, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8, !dbg !2208
  %158 = load i8, i8* %157, align 8, !dbg !2208, !tbaa !2209, !range !574
  %159 = icmp eq i8 %158, 0, !dbg !2208
  br i1 %159, label %164, label %160, !dbg !2208

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8, !dbg !2208
  %162 = load i32, i32* %161, align 8, !dbg !2208, !tbaa !2154
  %163 = icmp eq i32 %162, 0, !dbg !2208
  br label %164, !dbg !2208

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  call void @llvm.dbg.value(metadata i1 %165, metadata !2123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %166 = and i1 %156, %155, !dbg !2210
  %167 = or i1 %151, %166, !dbg !2210
  %168 = xor i1 %165, true, !dbg !2210
  %169 = or i1 %167, %168, !dbg !2210
  br i1 %169, label %192, label %170, !dbg !2210

170:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2211, metadata !DIExpression()) #7, !dbg !2214
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10, !dbg !2218
  %172 = load i32, i32* %171, align 8, !dbg !2218, !tbaa !2220
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4, !dbg !2218
  %174 = load i32, i32* %173, align 8, !dbg !2218, !tbaa !2221
  %175 = icmp slt i32 %172, %174, !dbg !2218
  br i1 %175, label %176, label %225, !dbg !2218

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178, !dbg !2218

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !dbg !2222, !tbaa !2225
  %181 = sext i32 %179 to i64, !dbg !2222
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1, !dbg !2222
  %183 = load i32, i32* %182, align 8, !dbg !2222, !tbaa !2226
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0, !dbg !2222
  %185 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %184, align 8, !dbg !2222, !tbaa !2228
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %185, i32 %183) #6, !dbg !2222
  br i1 %186, label %187, label %192, !dbg !2222

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !dbg !2229, !tbaa !2220
  %189 = add nsw i32 %188, 1, !dbg !2229
  store i32 %189, i32* %171, align 8, !dbg !2229, !tbaa !2220
  %190 = load i32, i32* %173, align 8, !dbg !2218, !tbaa !2221
  %191 = icmp slt i32 %189, %190, !dbg !2218
  br i1 %191, label %178, label %225, !dbg !2218, !llvm.loop !2230

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2, !dbg !2232
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %193, metadata !2116, metadata !DIExpression()), !dbg !2157
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !dbg !2233, !tbaa !2171
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %194, metadata !2114, metadata !DIExpression()), !dbg !2157
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null, !dbg !2184
  br i1 %195, label %196, label %121, !dbg !2184

196:                                              ; preds = %192, %117, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2116, metadata !DIExpression()), !dbg !2157
  br i1 %3, label %206, label %197, !dbg !2236

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %198, metadata !2111, metadata !DIExpression()), !dbg !2136
  %199 = icmp slt i32 %11, 40, !dbg !2239
  br i1 %199, label %200, label %201, !dbg !2239

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2242
  tail call void @halide_thread_yield() #6, !dbg !2245
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2246
  br label %402, !dbg !2247

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2248, !tbaa !2250
  %203 = add nsw i32 %202, 1, !dbg !2248
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2248, !tbaa !2250
  store i8 1, i8* %8, align 4, !dbg !2251, !tbaa !2252
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2253
  store i8 0, i8* %8, align 4, !dbg !2254, !tbaa !2252
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2255, !tbaa !2250
  %205 = add nsw i32 %204, -1, !dbg !2255
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2255, !tbaa !2250
  br label %402, !dbg !2256

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2257, !tbaa !2259
  %208 = add nsw i32 %207, 1, !dbg !2257
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2257, !tbaa !2259
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2260, !tbaa !2261
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !dbg !2260, !tbaa !2262
  %211 = icmp sgt i32 %209, %210, !dbg !2260
  br i1 %211, label %212, label %216, !dbg !2260

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1, !dbg !2263
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2263, !tbaa !2261
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2266
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2267, !tbaa !2261
  %215 = add nsw i32 %214, 1, !dbg !2267
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2267, !tbaa !2261
  br label %221, !dbg !2268

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %217, metadata !2111, metadata !DIExpression()), !dbg !2136
  %218 = icmp slt i32 %11, 40, !dbg !2269
  br i1 %218, label %219, label %220, !dbg !2269

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2270
  tail call void @halide_thread_yield() #6, !dbg !2273
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2274
  br label %221, !dbg !2275

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2276
  br label %221, !dbg !2278

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ], !dbg !2136
  call void @llvm.dbg.value(metadata i32 %222, metadata !2111, metadata !DIExpression()), !dbg !2136
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2279, !tbaa !2259
  %224 = add nsw i32 %223, -1, !dbg !2279
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2279, !tbaa !2259
  br label %402, !dbg !2280

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !dbg !2281, !tbaa !2220
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2114, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %227, metadata !2116, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()), !dbg !2136
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8, !dbg !2282
  %230 = load i32, i32* %229, align 8, !dbg !2282, !tbaa !2154
  %231 = add nsw i32 %230, 1, !dbg !2282
  store i32 %231, i32* %229, align 8, !dbg !2282, !tbaa !2154
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5, !dbg !2283
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2283, !tbaa !2178
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null, !dbg !2283
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2284
  %236 = load i32, i32* %235, align 4, !dbg !2284, !tbaa !2193
  br i1 %234, label %237, label %240, !dbg !2283

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2286, !tbaa !2204
  %239 = add nsw i32 %238, %236, !dbg !2286
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2286, !tbaa !2204
  br label %244, !dbg !2288

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6, !dbg !2289
  %242 = load i32, i32* %241, align 8, !dbg !2289, !tbaa !2196
  %243 = add nsw i32 %242, %236, !dbg !2289
  store i32 %243, i32* %241, align 8, !dbg !2289, !tbaa !2196
  br label %244, !dbg !2291

244:                                              ; preds = %240, %237
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()), !dbg !2157
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8, !dbg !2292
  %246 = load i8, i8* %245, align 8, !dbg !2292, !tbaa !2209, !range !574
  %247 = icmp eq i8 %246, 0, !dbg !2292
  br i1 %247, label %323, label %248, !dbg !2292

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2293
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2293, !tbaa !2171
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2293, !tbaa !883
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2294
  call void @llvm.dbg.value(metadata i32 0, metadata !2125, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 1, metadata !2128, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()), !dbg !2157
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %259 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  br label %260, !dbg !2296

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !2125, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 %261, metadata !2128, metadata !DIExpression()), !dbg !2295
  %263 = load i32, i32* %251, align 8, !dbg !2297, !tbaa !2146
  %264 = sub nsw i32 %263, %262, !dbg !2297
  %265 = icmp sgt i32 %264, %261, !dbg !2297
  br i1 %265, label %266, label %297, !dbg !2297

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !dbg !2299, !tbaa !2220
  %268 = load i32, i32* %253, align 8, !dbg !2299, !tbaa !2221
  br label %269, !dbg !2297

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ], !dbg !2299
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ], !dbg !2299
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  call void @llvm.dbg.value(metadata i32 %273, metadata !2128, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2211, metadata !DIExpression()) #7, !dbg !2301
  %274 = icmp slt i32 %272, %271, !dbg !2299
  br i1 %274, label %275, label %291, !dbg !2299

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !dbg !2302, !tbaa !2225
  %278 = sext i32 %276 to i64, !dbg !2302
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1, !dbg !2302
  %280 = load i32, i32* %279, align 8, !dbg !2302, !tbaa !2226
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0, !dbg !2302
  %282 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %281, align 8, !dbg !2302, !tbaa !2228
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %282, i32 %280) #6, !dbg !2302
  br i1 %283, label %284, label %297, !dbg !2302

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !dbg !2303, !tbaa !2220
  %286 = add nsw i32 %285, 1, !dbg !2303
  store i32 %286, i32* %252, align 8, !dbg !2303, !tbaa !2220
  %287 = load i32, i32* %253, align 8, !dbg !2299, !tbaa !2221
  %288 = icmp slt i32 %286, %287, !dbg !2299
  br i1 %288, label %275, label %289, !dbg !2299, !llvm.loop !2304

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !dbg !2297, !tbaa !2146
  br label %291, !dbg !2306

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ], !dbg !2297
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !dbg !2306, !tbaa !2220
  %294 = add nuw nsw i32 %273, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %294, metadata !2128, metadata !DIExpression()), !dbg !2295
  %295 = sub nsw i32 %292, %262, !dbg !2297
  %296 = icmp sgt i32 %295, %294, !dbg !2297
  br i1 %296, label %269, label %300, !dbg !2297, !llvm.loop !2309

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0, !dbg !2311
  br i1 %299, label %310, label %300, !dbg !2311

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %256, align 8, !dbg !2312, !tbaa !2313
  %303 = load i32, i32* %257, align 4, !dbg !2312, !tbaa !2314
  %304 = add nsw i32 %303, %262, !dbg !2312
  %305 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %258, align 8, !dbg !2312, !tbaa !2315
  %306 = load i8*, i8** %259, align 8, !dbg !2312, !tbaa !2316
  %307 = tail call i32 @halide_do_loop_task(i8* %306, i32 (i8*, i32, i32, i8*, i8*)* %305, i32 %304, i32 %301, i8* %302, i8* nonnull %255) #8, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %307, metadata !2124, metadata !DIExpression()), !dbg !2157
  %308 = add nuw nsw i32 %301, %262, !dbg !2317
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %308, metadata !2125, metadata !DIExpression()), !dbg !2295
  %309 = icmp eq i32 %307, 0, !dbg !2296
  br i1 %309, label %260, label %310, !dbg !2296, !llvm.loop !2318

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ], !dbg !2157
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ], !dbg !2295
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2320
  %314 = load i32, i32* %257, align 4, !dbg !2321, !tbaa !2314
  %315 = add nsw i32 %314, %313, !dbg !2321
  store i32 %315, i32* %257, align 4, !dbg !2321, !tbaa !2314
  %316 = load i32, i32* %251, align 8, !dbg !2322, !tbaa !2146
  %317 = sub nsw i32 %316, %313, !dbg !2322
  store i32 %317, i32* %251, align 8, !dbg !2322, !tbaa !2146
  br i1 %311, label %319, label %318, !dbg !2323

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !dbg !2324, !tbaa !2146
  call void @llvm.dbg.value(metadata i32 %350, metadata !2124, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2157
  br label %352, !dbg !2327

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0, !dbg !2328
  br i1 %320, label %321, label %382, !dbg !2328

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2329, !tbaa !2156
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2329, !tbaa !2171
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2332, !tbaa !2156
  br label %382, !dbg !2333

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0, !dbg !2334
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !dbg !2334, !tbaa.struct !2335
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %325, metadata !2129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2338
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1, !dbg !2334
  %327 = load i8*, i8** %326, align 8, !dbg !2334, !tbaa.struct !2339
  call void @llvm.dbg.value(metadata i8* %327, metadata !2129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2338
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5, !dbg !2334
  %329 = load i32, i32* %328, align 4, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %329, metadata !2129, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2338
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1, !dbg !2334
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !dbg !2334, !tbaa.struct !2340
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %331, metadata !2129, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !2338
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7, !dbg !2334
  %333 = load i8*, i8** %332, align 8, !dbg !2334, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata i8* %333, metadata !2129, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !2338
  %334 = add nsw i32 %329, 1, !dbg !2342
  store i32 %334, i32* %328, align 4, !dbg !2342, !tbaa !2314
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2343
  %336 = load i32, i32* %335, align 8, !dbg !2343, !tbaa !2146
  %337 = add nsw i32 %336, -1, !dbg !2343
  store i32 %337, i32* %335, align 8, !dbg !2343, !tbaa !2146
  %338 = icmp eq i32 %337, 0, !dbg !2344
  br i1 %338, label %339, label %342, !dbg !2344

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2345
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !dbg !2345, !tbaa !2171
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2345, !tbaa !883
  br label %342, !dbg !2348

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2349
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null, !dbg !2350
  br i1 %343, label %346, label %344, !dbg !2350

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #8, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %345, metadata !2124, metadata !DIExpression()), !dbg !2157
  br label %349, !dbg !2354

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*, !dbg !2355
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #8, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %348, metadata !2124, metadata !DIExpression()), !dbg !2157
  br label %349, !dbg !2357

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ], !dbg !2358
  call void @llvm.dbg.value(metadata i32 %350, metadata !2124, metadata !DIExpression()), !dbg !2157
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2359
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2157
  %351 = icmp eq i32 %350, 0, !dbg !2327
  br i1 %351, label %382, label %352, !dbg !2327

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2360
  store i32 %353, i32* %354, align 4, !dbg !2360, !tbaa !2161
  call void @llvm.dbg.value(metadata i32 0, metadata !2132, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2157
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4, !dbg !2362
  %356 = load i32, i32* %355, align 8, !dbg !2362, !tbaa !2363
  %357 = icmp sgt i32 %356, 0, !dbg !2362
  br i1 %357, label %358, label %382, !dbg !2362

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !2235
  %361 = zext i32 %356 to i64, !dbg !2362
  br label %362, !dbg !2362

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !2132, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 %364, metadata !2131, metadata !DIExpression()), !dbg !2157
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9, !dbg !2364
  %366 = load i32, i32* %365, align 4, !dbg !2364, !tbaa !2161
  %367 = icmp eq i32 %366, 0, !dbg !2364
  br i1 %367, label %368, label %378, !dbg !2364

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !dbg !2367, !tbaa !2161
  %369 = load i32, i32* %229, align 8, !dbg !2370, !tbaa !2154
  %370 = icmp eq i32 %369, 0, !dbg !2370
  br i1 %370, label %371, label %374, !dbg !2370

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11, !dbg !2370
  %373 = load i8, i8* %372, align 4, !dbg !2370, !tbaa !2252, !range !574
  br label %374, !dbg !2370

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ], !dbg !2370
  %376 = and i8 %364, 1, !dbg !2370
  %377 = or i8 %375, %376, !dbg !2370
  call void @llvm.dbg.value(metadata i8 %377, metadata !2131, metadata !DIExpression()), !dbg !2157
  br label %378, !dbg !2371

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ], !dbg !2157
  call void @llvm.dbg.value(metadata i8 %379, metadata !2131, metadata !DIExpression()), !dbg !2157
  %380 = add nuw nsw i64 %363, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %380, metadata !2132, metadata !DIExpression()), !dbg !2361
  %381 = icmp eq i64 %380, %361, !dbg !2362
  br i1 %381, label %382, label %362, !dbg !2362, !llvm.loop !2373

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ], !dbg !2375
  call void @llvm.dbg.value(metadata i8 %383, metadata !2131, metadata !DIExpression()), !dbg !2157
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2376, !tbaa !2178
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null, !dbg !2376
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2377
  %387 = load i32, i32* %386, align 4, !dbg !2377, !tbaa !2193
  br i1 %385, label %388, label %391, !dbg !2376

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2379, !tbaa !2204
  %390 = sub nsw i32 %389, %387, !dbg !2379
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2379, !tbaa !2204
  br label %395, !dbg !2381

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6, !dbg !2382
  %393 = load i32, i32* %392, align 8, !dbg !2382, !tbaa !2196
  %394 = sub nsw i32 %393, %387, !dbg !2382
  store i32 %394, i32* %392, align 8, !dbg !2382, !tbaa !2196
  br label %395, !dbg !2384

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !dbg !2385, !tbaa !2154
  %397 = add nsw i32 %396, -1, !dbg !2385
  store i32 %397, i32* %229, align 8, !dbg !2385, !tbaa !2154
  %398 = and i8 %383, 1, !dbg !2386
  %399 = icmp eq i8 %398, 0, !dbg !2386
  br i1 %399, label %400, label %416, !dbg !2386

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0, !dbg !2386
  br i1 %401, label %404, label %402, !dbg !2386

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !dbg !2136, !llvm.loop !2387

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2386
  %406 = load i32, i32* %405, align 8, !dbg !2386, !tbaa !2146
  %407 = icmp eq i32 %406, 0, !dbg !2386
  br i1 %407, label %412, label %408, !dbg !2386

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2386
  %410 = load i32, i32* %409, align 4, !dbg !2386, !tbaa !2161
  %411 = icmp eq i32 %410, 0, !dbg !2386
  br i1 %411, label %402, label %412, !dbg !2386

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11, !dbg !2386
  %414 = load i8, i8* %413, align 4, !dbg !2386, !tbaa !2252, !range !574
  %415 = icmp eq i8 %414, 0, !dbg !2386
  br i1 %415, label %402, label %416, !dbg !2386

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2389
  br label %402, !dbg !2392

417:                                              ; preds = %15, %18
  ret void, !dbg !2393
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2394 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2396, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %4, metadata !2397, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %3, metadata !2398, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %2, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %0, metadata !2401, metadata !DIExpression()), !dbg !2402
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2403, !tbaa !883
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2403
  ret i32 %8, !dbg !2403
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2404 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %2, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i8* %0, metadata !2409, metadata !DIExpression()), !dbg !2410
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2411, !tbaa !883
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2411
  ret i32 %6, !dbg !2411
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #0 !dbg !2412 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()), !dbg !2415
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2416
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2417
  tail call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2417
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2418
  ret void, !dbg !2419
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2420 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2424, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2425, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2437
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !dbg !2438, !tbaa !2439, !range !574
  %5 = icmp eq i8 %4, 0, !dbg !2438
  br i1 %5, label %6, label %25, !dbg !2438

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2440, metadata !DIExpression()) #7, !dbg !2446
  %8 = load i8, i8* %7, align 1, !dbg !2450, !tbaa !2451
  %9 = icmp eq i8 %8, 0, !dbg !2450
  br i1 %9, label %10, label %13, !dbg !2450

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %11, metadata !2440, metadata !DIExpression()) #7, !dbg !2446
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2450
  br i1 %12, label %13, label %6, !dbg !2450, !llvm.loop !2454

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2446
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), !dbg !2456
  br i1 %15, label %17, label %16, !dbg !2456

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !2458
  tail call void @abort() #6, !dbg !2458
  br label %17, !dbg !2458

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2461, !tbaa !2462
  %19 = icmp eq i32 %18, 0, !dbg !2461
  br i1 %19, label %20, label %22, !dbg !2461

20:                                               ; preds = %17
  %21 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2463
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2463, !tbaa !2462
  br label %22, !dbg !2466

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2467
  %24 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %23) #8, !dbg !2467
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2467, !tbaa !2462
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !dbg !2468, !tbaa !2439
  br label %25, !dbg !2469

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2427, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 -1, metadata !2428, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 0, metadata !2430, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression()), !dbg !2470
  %26 = icmp sgt i32 %0, 0, !dbg !2471
  br i1 %26, label %27, label %31, !dbg !2471

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64, !dbg !2471
  br label %38, !dbg !2471

29:                                               ; preds = %64
  %30 = and i8 %49, 1, !dbg !2472
  br label %31, !dbg !2472

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ], !dbg !2437
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ], !dbg !2437
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ], !dbg !2473
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ], !dbg !2474
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2472
  br i1 %37, label %68, label %100, !dbg !2472

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !2427, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %39, metadata !2432, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 %41, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %42, metadata !2430, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %43, metadata !2429, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %44, metadata !2428, metadata !DIExpression()), !dbg !2437
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7, !dbg !2475
  %46 = load i32, i32* %45, align 4, !dbg !2475, !tbaa !2193
  %47 = icmp eq i32 %46, 0, !dbg !2475
  %48 = add i32 %46, %40, !dbg !2475
  %49 = select i1 %47, i8 1, i8 %43, !dbg !2475
  %50 = select i1 %47, i8 %41, i8 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %48, metadata !2427, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %50, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %49, metadata !2429, metadata !DIExpression()), !dbg !2437
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4, !dbg !2478
  %52 = load i32, i32* %51, align 8, !dbg !2478, !tbaa !2221
  %53 = icmp eq i32 %52, 0, !dbg !2478
  %54 = select i1 %53, i8 %42, i8 1, !dbg !2478
  call void @llvm.dbg.value(metadata i8 %54, metadata !2430, metadata !DIExpression()), !dbg !2437
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8, !dbg !2479
  %56 = load i8, i8* %55, align 8, !dbg !2479, !tbaa !2209, !range !574
  %57 = icmp eq i8 %56, 0, !dbg !2479
  br i1 %57, label %60, label %58, !dbg !2479

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %59, metadata !2428, metadata !DIExpression()), !dbg !2437
  br label %64, !dbg !2483

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6, !dbg !2484
  %62 = load i32, i32* %61, align 8, !dbg !2484, !tbaa !2146
  %63 = add nsw i32 %62, %44, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %63, metadata !2428, metadata !DIExpression()), !dbg !2437
  br label %64, !dbg !2486

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ], !dbg !2487
  call void @llvm.dbg.value(metadata i32 %65, metadata !2428, metadata !DIExpression()), !dbg !2437
  %66 = add nuw nsw i64 %39, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %48, metadata !2427, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %66, metadata !2432, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 %50, metadata !2431, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %54, metadata !2430, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 %49, metadata !2429, metadata !DIExpression()), !dbg !2437
  %67 = icmp eq i64 %66, %28, !dbg !2471
  br i1 %67, label %29, label %38, !dbg !2471, !llvm.loop !2489

68:                                               ; preds = %31
  %69 = or i8 %35, %34, !dbg !2491
  %70 = and i8 %69, 1, !dbg !2491
  %71 = icmp eq i8 %70, 0, !dbg !2491
  %72 = xor i1 %71, true, !dbg !2491
  %73 = zext i1 %72 to i32, !dbg !2491
  %74 = add nsw i32 %36, %73, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %74, metadata !2427, metadata !DIExpression()), !dbg !2437
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2494, !tbaa !2203
  %76 = icmp slt i32 %75, 256, !dbg !2494
  br i1 %76, label %77, label %96, !dbg !2494

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2494, !tbaa !2462
  %80 = add nsw i32 %79, -1, !dbg !2494
  %81 = icmp slt i32 %78, %80, !dbg !2494
  br i1 %81, label %87, label %82, !dbg !2494

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1, !dbg !2494
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2494, !tbaa !2204
  %85 = sub i32 %83, %84, !dbg !2494
  %86 = icmp slt i32 %85, %74, !dbg !2494
  br i1 %86, label %87, label %96, !dbg !2494

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2495, !tbaa !2261
  %89 = add nsw i32 %88, 1, !dbg !2495
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2495, !tbaa !2261
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z", i8* null) #8, !dbg !2497
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2497, !tbaa !2203
  %92 = add nsw i32 %91, 1, !dbg !2497
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2497, !tbaa !2203
  %93 = sext i32 %91 to i64, !dbg !2497
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 13, i64 %93, !dbg !2497
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !dbg !2497, !tbaa !883
  %95 = icmp slt i32 %91, 255, !dbg !2494
  br i1 %95, label %77, label %96, !dbg !2494, !llvm.loop !2498

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97, !dbg !2500

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2501, !tbaa !2204
  %99 = add nsw i32 %98, 1, !dbg !2501
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2501, !tbaa !2204
  br label %118, !dbg !2504

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7, !dbg !2505
  %102 = load i32, i32* %101, align 4, !dbg !2505, !tbaa !2193
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8, !dbg !2505
  %104 = load i32, i32* %103, align 8, !dbg !2505, !tbaa !2154
  %105 = mul nsw i32 %104, %102, !dbg !2505
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2505
  %107 = load i32, i32* %106, align 8, !dbg !2505, !tbaa !2196
  %108 = sub nsw i32 %105, %107, !dbg !2505
  %109 = icmp sgt i32 %36, %108, !dbg !2505
  br i1 %109, label %110, label %111, !dbg !2505

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !2508
  tail call void @abort() #6, !dbg !2508
  br label %111, !dbg !2508

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34, !dbg !2511
  %113 = and i8 %112, 1, !dbg !2511
  %114 = icmp eq i8 %113, 0, !dbg !2511
  br i1 %114, label %118, label %115, !dbg !2511

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !dbg !2512, !tbaa !2196
  %117 = add nsw i32 %116, 1, !dbg !2512
  store i32 %117, i32* %106, align 8, !dbg !2512, !tbaa !2196
  br label %118, !dbg !2515

118:                                              ; preds = %111, %96, %115, %97
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2516
  br i1 %26, label %119, label %123, !dbg !2517

119:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2516
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !2156
  %121 = zext i32 %0 to i64, !dbg !2517
  br label %136, !dbg !2517

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2518, !tbaa !2156
  br label %123, !dbg !2517

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2521, !tbaa !2250
  %125 = icmp ne i32 %124, 0, !dbg !2521
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2521
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2521
  %128 = icmp slt i32 %126, %127, !dbg !2521
  %129 = or i1 %125, %128, !dbg !2521
  call void @llvm.dbg.value(metadata i1 %129, metadata !2436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2437
  %130 = icmp sgt i32 %32, %126, !dbg !2522
  %131 = or i1 %130, %129, !dbg !2522
  %132 = select i1 %131, i32 %127, i32 %32, !dbg !2522
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !dbg !2523, !tbaa !2262
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #8, !dbg !2525
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !dbg !2526, !tbaa !2262
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2526, !tbaa !2261
  %135 = icmp sgt i32 %133, %134, !dbg !2526
  br i1 %135, label %146, label %149, !dbg !2526

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ], !dbg !2527
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ], !dbg !2527
  %139 = add nsw i64 %137, -1, !dbg !2516
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, !dbg !2527
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2, !dbg !2527
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !dbg !2527, !tbaa !2171
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3, !dbg !2528
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !dbg !2528, !tbaa !2235
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4, !dbg !2529
  store i32 %0, i32* %143, align 8, !dbg !2529, !tbaa !2363
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6, !dbg !2530
  store i32 0, i32* %144, align 8, !dbg !2530, !tbaa !2196
  call void @llvm.dbg.value(metadata i64 %139, metadata !2434, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2516
  %145 = icmp sgt i64 %137, 1, !dbg !2517
  br i1 %145, label %136, label %122, !dbg !2517, !llvm.loop !2531

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9)) #8, !dbg !2533
  %147 = icmp eq i8 %33, 0, !dbg !2536
  br i1 %147, label %149, label %148, !dbg !2536

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2537
  br label %149, !dbg !2540

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34, !dbg !2541
  %151 = and i8 %150, 1, !dbg !2541
  %152 = icmp eq i8 %151, 0, !dbg !2541
  br i1 %152, label %161, label %153, !dbg !2541

153:                                              ; preds = %149
  br i1 %37, label %158, label %154, !dbg !2542

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2545
  %156 = load i32, i32* %155, align 8, !dbg !2545, !tbaa !2196
  %157 = add nsw i32 %156, -1, !dbg !2545
  store i32 %157, i32* %155, align 8, !dbg !2545, !tbaa !2196
  br label %161, !dbg !2548

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2549, !tbaa !2204
  %160 = add nsw i32 %159, -1, !dbg !2549
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2549, !tbaa !2204
  br label %161, !dbg !2551

161:                                              ; preds = %149, %154, %158
  ret void, !dbg !2552
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2553 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2555, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %2, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()), !dbg !2559
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2560
  ret i32 %5, !dbg !2560
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2561 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2563, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %4, metadata !2564, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %3, metadata !2565, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %2, metadata !2566, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %0, metadata !2568, metadata !DIExpression()), !dbg !2569
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2570
  ret i32 %7, !dbg !2570
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2571 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  call void @llvm.dbg.value(metadata i8* %4, metadata !2573, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %3, metadata !2574, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %2, metadata !2575, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()), !dbg !2579
  %7 = icmp slt i32 %3, 1, !dbg !2580
  br i1 %7, label %29, label %8, !dbg !2580

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2581
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2581
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2578, metadata !DIExpression()), !dbg !2581
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0, !dbg !2582
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !dbg !2582, !tbaa !2315
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5, !dbg !2583
  store i32 %2, i32* %11, align 4, !dbg !2583, !tbaa !2314
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6, !dbg !2584
  store i32 %3, i32* %12, align 8, !dbg !2584, !tbaa !2146
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8, !dbg !2585
  store i8 0, i8* %13, align 8, !dbg !2585, !tbaa !2209
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3, !dbg !2586
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !dbg !2586, !tbaa !2225
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4, !dbg !2587
  store i32 0, i32* %15, align 8, !dbg !2587, !tbaa !2221
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1, !dbg !2588
  store i8* %4, i8** %16, align 8, !dbg !2588, !tbaa !2313
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7, !dbg !2589
  store i32 0, i32* %17, align 4, !dbg !2589, !tbaa !2193
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2, !dbg !2590
  store i8* null, i8** %18, align 8, !dbg !2590, !tbaa !2591
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1, !dbg !2592
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !dbg !2592, !tbaa !2593
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7, !dbg !2594
  store i8* %0, i8** %20, align 8, !dbg !2594, !tbaa !2316
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9, !dbg !2595
  store i32 0, i32* %21, align 4, !dbg !2595, !tbaa !2161
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8, !dbg !2596
  store i32 0, i32* %22, align 8, !dbg !2596, !tbaa !2154
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10, !dbg !2597
  store i32 0, i32* %23, align 8, !dbg !2597, !tbaa !2220
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11, !dbg !2598
  store i8 0, i8* %24, align 4, !dbg !2598, !tbaa !2252
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3, !dbg !2599
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !dbg !2599, !tbaa !2235
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4, !dbg !2600
  store i32 0, i32* %26, align 8, !dbg !2600, !tbaa !2363
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5, !dbg !2601
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !dbg !2601, !tbaa !2178
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2602
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !2603
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !2604
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2605
  %28 = load i32, i32* %21, align 4, !dbg !2606, !tbaa !2161
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2607
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2579
  ret i32 %30, !dbg !2607
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !2608 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2610, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2611, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %0, metadata !2613, metadata !DIExpression()), !dbg !2620
  %5 = sext i32 %1 to i64, !dbg !2621
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8, !dbg !2621
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2614, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2615, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2611, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2612, metadata !DIExpression()), !dbg !2620
  %7 = icmp sgt i32 %1, 0, !dbg !2623
  br i1 %7, label %11, label %8, !dbg !2623

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %34, %33 ]
  %10 = icmp eq i32 %9, 0, !dbg !2624
  br i1 %10, label %56, label %39, !dbg !2624

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi %struct.halide_parallel_task_t* [ %35, %33 ], [ %2, %4 ]
  %14 = phi i32 [ %34, %33 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !2615, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %13, metadata !2611, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %14, metadata !2612, metadata !DIExpression()), !dbg !2620
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %13, i64 0, i32 6, !dbg !2625
  %16 = load i32, i32* %15, align 8, !dbg !2625, !tbaa !2628
  %17 = icmp slt i32 %16, 1, !dbg !2625
  br i1 %17, label %18, label %20, !dbg !2625

18:                                               ; preds = %11
  %19 = add nsw i32 %14, -1, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %19, metadata !2612, metadata !DIExpression()), !dbg !2620
  br label %33, !dbg !2632

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %13, i64 1, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %21, metadata !2611, metadata !DIExpression()), !dbg !2620
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, !dbg !2633
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*, !dbg !2633
  %24 = bitcast %struct.halide_parallel_task_t* %13 to i8*, !dbg !2633
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !dbg !2633, !tbaa.struct !2634
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1, !dbg !2635
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !dbg !2635, !tbaa !2593
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7, !dbg !2636
  store i8* %0, i8** %26, align 8, !dbg !2636, !tbaa !2316
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9, !dbg !2637
  store i32 0, i32* %27, align 4, !dbg !2637, !tbaa !2161
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8, !dbg !2638
  store i32 0, i32* %28, align 8, !dbg !2638, !tbaa !2154
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10, !dbg !2639
  store i32 0, i32* %29, align 8, !dbg !2639, !tbaa !2220
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11, !dbg !2640
  store i8 0, i8* %30, align 4, !dbg !2640, !tbaa !2252
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5, !dbg !2641
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**, !dbg !2641
  store i8* %3, i8** %32, align 8, !dbg !2641, !tbaa !2178
  br label %33, !dbg !2642

33:                                               ; preds = %20, %18
  %34 = phi i32 [ %19, %18 ], [ %14, %20 ]
  %35 = phi %struct.halide_parallel_task_t* [ %13, %18 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %35, metadata !2611, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %34, metadata !2612, metadata !DIExpression()), !dbg !2620
  %36 = add nuw nsw i64 %12, 1, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %36, metadata !2615, metadata !DIExpression()), !dbg !2622
  %37 = sext i32 %34 to i64, !dbg !2623
  %38 = icmp slt i64 %36, %37, !dbg !2623
  br i1 %38, label %11, label %8, !dbg !2623, !llvm.loop !2644

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2646
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2647
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !2647
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2618, metadata !DIExpression()), !dbg !2648
  %41 = icmp sgt i32 %9, 0, !dbg !2649
  br i1 %41, label %42, label %44, !dbg !2649

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64, !dbg !2649
  br label %46, !dbg !2649

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ], !dbg !2620
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2650
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !2618, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 %48, metadata !2617, metadata !DIExpression()), !dbg !2620
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, !dbg !2651
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #8, !dbg !2651
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9, !dbg !2654
  %51 = load i32, i32* %50, align 4, !dbg !2654, !tbaa !2161
  %52 = icmp eq i32 %51, 0, !dbg !2654
  %53 = select i1 %52, i32 %48, i32 %51, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %53, metadata !2617, metadata !DIExpression()), !dbg !2620
  %54 = add nuw nsw i64 %47, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %54, metadata !2618, metadata !DIExpression()), !dbg !2648
  %55 = icmp eq i64 %54, %43, !dbg !2649
  br i1 %55, label %44, label %46, !dbg !2649, !llvm.loop !2656

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ], !dbg !2620
  ret i32 %57, !dbg !2658
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !2659 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2663, metadata !DIExpression()), !dbg !2664
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2665
  call void @llvm.dbg.value(metadata i32* undef, metadata !2666, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32* %3, metadata !2672, metadata !DIExpression()), !dbg !2675
  store atomic i32 %1, i32* %3 release, align 4, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %1, metadata !2661, metadata !DIExpression()), !dbg !2664
  ret i32 %1, !dbg !2678
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2679 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2681, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2682, metadata !DIExpression()), !dbg !2686
  %3 = icmp eq i32 %1, 0, !dbg !2687
  br i1 %3, label %20, label %4, !dbg !2687

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2683, metadata !DIExpression()), !dbg !2686
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2688
  call void @llvm.dbg.value(metadata i32* undef, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32* %5, metadata !2692, metadata !DIExpression()), !dbg !2693
  %6 = load atomic i32, i32* %5 acquire, align 4, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %6, metadata !2684, metadata !DIExpression()), !dbg !2686
  %7 = sub nsw i32 %6, %1, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %7, metadata !2685, metadata !DIExpression()), !dbg !2686
  %8 = icmp sgt i32 %7, -1, !dbg !2698
  br i1 %8, label %9, label %20, !dbg !2698

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32* undef, metadata !2699, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32* undef, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32* %5, metadata !2705, metadata !DIExpression()), !dbg !2706
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic, !dbg !2708
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !2708
  br i1 %13, label %18, label %14, !dbg !2708

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %15, metadata !2684, metadata !DIExpression()), !dbg !2686
  %16 = sub nsw i32 %15, %1, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %16, metadata !2685, metadata !DIExpression()), !dbg !2686
  %17 = icmp sgt i32 %16, -1, !dbg !2698
  br i1 %17, label %9, label %18, !dbg !2698

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1, !dbg !2708
  br label %20, !dbg !2709

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ], !dbg !2686
  ret i1 %21, !dbg !2709
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2710 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2714, metadata !DIExpression()), !dbg !2716
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32* %3, metadata !2723, metadata !DIExpression()), !dbg !2724
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %4, metadata !2715, metadata !DIExpression()), !dbg !2716
  %5 = icmp eq i32 %4, 0, !dbg !2727
  %6 = icmp ne i32 %1, 0, !dbg !2727
  %7 = and i1 %6, %5, !dbg !2727
  br i1 %7, label %8, label %9, !dbg !2727

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2728
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #8, !dbg !2731
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2732
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2733
  br label %9, !dbg !2734

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !2735
  ret i32 %10, !dbg !2735
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !2736 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !2740
  ret void, !dbg !2741
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !2742 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !dbg !2748, !tbaa !2439, !range !574
  %2 = icmp eq i8 %1, 0, !dbg !2748
  br i1 %2, label %16, label %3, !dbg !2748

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2749
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 14), align 8, !dbg !2750, !tbaa !2150
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2751
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #8, !dbg !2752
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9)) #8, !dbg !2753
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2755
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2756, !tbaa !2203
  %5 = icmp sgt i32 %4, 0, !dbg !2756
  br i1 %5, label %8, label %6, !dbg !2756

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2757, metadata !DIExpression()) #7, !dbg !2763
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), metadata !2760, metadata !DIExpression()) #7, !dbg !2763
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2761, metadata !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value)) #7, !dbg !2763
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i32 0, i64 2116) #6, !dbg !2765
  br label %16, !dbg !2766

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2744, metadata !DIExpression()), !dbg !2755
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 13, i64 %9, !dbg !2767
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !dbg !2767, !tbaa !883
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !2767
  %12 = add nuw nsw i64 %9, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %12, metadata !2744, metadata !DIExpression()), !dbg !2755
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2756, !tbaa !2203
  %14 = sext i32 %13 to i64, !dbg !2756
  %15 = icmp slt i64 %12, %14, !dbg !2756
  br i1 %15, label %8, label %6, !dbg !2756, !llvm.loop !2771

16:                                               ; preds = %6, %0
  ret void, !dbg !2773
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !2774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2778
  %2 = icmp slt i32 %0, 0, !dbg !2779
  br i1 %2, label %3, label %4, !dbg !2779

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@", i64 0, i64 0)) #6, !dbg !2780
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2783
  br label %8, !dbg !2784

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2783
  %5 = icmp eq i32 %0, 0, !dbg !2784
  br i1 %5, label %6, label %8, !dbg !2784

6:                                                ; preds = %4
  %7 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %7, metadata !2776, metadata !DIExpression()), !dbg !2778
  br label %8, !dbg !2788

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2776, metadata !DIExpression()), !dbg !2778
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2789, !tbaa !2462
  call void @llvm.dbg.value(metadata i32 %10, metadata !2777, metadata !DIExpression()), !dbg !2778
  %11 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %9) #8, !dbg !2790
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2790, !tbaa !2462
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2791
  ret i32 %10, !dbg !2792
}

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2793 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !2797, metadata !DIExpression()), !dbg !2799
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2800, !tbaa !883
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !2798, metadata !DIExpression()), !dbg !2799
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2801, !tbaa !883
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !2802
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !2803 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !2807, metadata !DIExpression()), !dbg !2809
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2810, !tbaa !883
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2808, metadata !DIExpression()), !dbg !2809
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2811, !tbaa !883
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !2812
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2813 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2817, metadata !DIExpression()), !dbg !2819
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2820, !tbaa !883
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !2818, metadata !DIExpression()), !dbg !2819
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2821, !tbaa !883
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !2822
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !2823 {
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !2827, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !2828, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !2829, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2833, metadata !DIExpression()), !dbg !2834
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2835, !tbaa !883
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2836, !tbaa !883
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2837, !tbaa !883
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", align 8, !dbg !2838, !tbaa !883
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2839, !tbaa !883
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2840, !tbaa !883
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2841, !tbaa !883
  ret void, !dbg !2842
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !2843 {
  call void @llvm.dbg.value(metadata i8* %4, metadata !2845, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %3, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %2, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()), !dbg !2850
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2851, !tbaa !883
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !2851
  ret i32 %7, !dbg !2851
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !2852 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2854, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2855, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %1, metadata !2856, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2858
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", align 8, !dbg !2859, !tbaa !883
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !2859
  ret i32 %6, !dbg !2859
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2860 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2863, metadata !DIExpression()), !dbg !2864
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2865, !tbaa !883
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2865
  ret i32 %4, !dbg !2865
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2866 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2869, metadata !DIExpression()), !dbg !2870
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2871, !tbaa !883
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2871
  ret i32 %4, !dbg !2871
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2872 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2875, metadata !DIExpression()), !dbg !2876
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2877, !tbaa !883
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2877
  ret i1 %4, !dbg !2877
}

declare dso_local void @InitializeCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @InitializeConditionVariable(i64*) local_unnamed_addr #3

declare dso_local void @EnterCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @SleepConditionVariableCS(i64*, %struct.CriticalSection*, i32) local_unnamed_addr #3

declare dso_local void @LeaveCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @DeleteCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @WakeConditionVariable(i64*) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_pre_lock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_lock(i8*, i32, i32) local_unnamed_addr #3

declare dso_local i32 @__tsan_mutex_pre_unlock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_unlock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_pre_signal(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_signal(i8*, i32) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!161}
!llvm.module.flags = !{!386, !387, !388}
!llvm.ident = !{!389}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "table_storage", linkageName: "?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA", scope: !2, file: !6, line: 478, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Synchronization", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/synchronization_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b400fbacf7de8493908f4259eb79919f")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 196608, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 24576)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "work_queue", linkageName: "?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", scope: !3, file: !13, line: 166, type: !14, isLocal: false, isDefinition: true)
!13 = !DIFile(filename: "src/runtime/thread_pool_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "385167390ae95a5e646994afa54aa508")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_queue_t", scope: !3, file: !13, line: 94, size: 17024, flags: DIFlagTypePassByValue, elements: !15, identifier: ".?AUwork_queue_t@Internal@Runtime@Halide@@")
!15 = !{!16, !28, !30, !31, !89, !90, !91, !92, !96, !97, !98, !99, !100, !106, !107, !108, !109, !114, !117}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !14, file: !13, line: 96, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !18, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !19, identifier: ".?AUhalide_mutex@@")
!18 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b7ab0d29491f0813a909553a9435c0e2")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !17, file: !18, line: 121, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !26)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 61, baseType: !24)
!23 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 10, baseType: !25)
!25 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 1)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desired_threads_working", scope: !14, file: !13, line: 99, baseType: !29, size: 32, offset: 64)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "zero_marker", scope: !14, file: !13, line: 103, baseType: !29, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !14, file: !13, line: 106, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work", scope: !3, file: !13, line: 26, size: 1024, flags: DIFlagTypePassByValue, elements: !34, identifier: ".?AUwork@Internal@Runtime@Halide@@")
!34 = !{!35, !65, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !84}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !33, file: !13, line: 27, baseType: !36, size: 448)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !18, line: 201, size: 448, flags: DIFlagTypePassByValue, elements: !37, identifier: ".?AUhalide_parallel_task_t@@")
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
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_acquire_t", file: !18, line: 177, size: 128, flags: DIFlagTypePassByValue, elements: !54, identifier: ".?AUhalide_semaphore_acquire_t@@")
!54 = !{!55, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !53, file: !18, line: 178, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !18, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: ".?AUhalide_semaphore_t@@")
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
!80 = !DISubprogram(name: "make_runnable", linkageName: "?make_runnable@work@Internal@Runtime@Halide@@QEAA_NXZ", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!64, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!84 = !DISubprogram(name: "running", linkageName: "?running@work@Internal@Runtime@Halide@@QEBA_NXZ", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{!64, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_created", scope: !14, file: !13, line: 109, baseType: !29, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "target_a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wake_a_team", scope: !14, file: !13, line: 122, baseType: !93, size: 64, offset: 320)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_cond", file: !18, line: 125, size: 64, flags: DIFlagTypePassByValue, elements: !94, identifier: ".?AUhalide_cond@@")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !93, file: !18, line: 126, baseType: !21, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "wake_b_team", scope: !14, file: !13, line: 122, baseType: !93, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wake_owners", scope: !14, file: !13, line: 122, baseType: !93, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "workers_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owners_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 544)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !14, file: !13, line: 129, baseType: !101, size: 16384, offset: 576)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16384, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !18, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AUhalide_thread@@")
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 16960)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 16968)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !14, file: !13, line: 139, baseType: !29, size: 32, offset: 16992)
!109 = !DISubprogram(name: "running", linkageName: "?running@work_queue_t@Internal@Runtime@Halide@@QEBA_NXZ", scope: !14, file: !13, line: 141, type: !110, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{!64, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!114 = !DISubprogram(name: "assert_zeroed", linkageName: "?assert_zeroed@work_queue_t@Internal@Runtime@Halide@@QEBAXXZ", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !112}
!117 = !DISubprogram(name: "reset", linkageName: "?reset@work_queue_t@Internal@Runtime@Halide@@QEAAXXZ", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", scope: !3, file: !13, line: 567, type: !123, isLocal: false, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !18, line: 259, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!29, !43, !66, !29, !44}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", scope: !3, file: !13, line: 568, type: !129, isLocal: false, isDefinition: true)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !18, line: 268, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!29, !43, !39, !29, !29, !44, !43}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", scope: !3, file: !13, line: 569, type: !135, isLocal: false, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !18, line: 167, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!29, !43, !66, !29, !29, !44}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", scope: !3, file: !13, line: 570, type: !141, isLocal: false, isDefinition: true)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !18, line: 281, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!29, !43, !29, !145, !43}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", scope: !3, file: !13, line: 571, type: !148, isLocal: false, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !18, line: 184, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!29, !56, !29}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", scope: !3, file: !13, line: 572, type: !154, isLocal: false, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !18, line: 186, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!64, !56, !29}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", scope: !3, file: !13, line: 573, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !18, line: 185, baseType: !149)
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !371, imports: !383, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "50ae3740d88f85cff08b4f2677cebdf4")
!163 = !{}
!164 = !{!165, !102, !22, !176, !227, !262, !263, !303, !328, !338, !309, !348, !361, !365, !32, !366, !298, !49, !370}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spawned_thread", scope: !3, file: !167, line: 38, size: 192, flags: DIFlagTypePassByValue, elements: !168, identifier: ".?AUspawned_thread@Internal@Runtime@Halide@@")
!167 = !DIFile(filename: "src/runtime/windows_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "6b47adcd64c88f8a38b8b1700cd2db58")
!168 = !{!169, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !166, file: !167, line: 39, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !166, file: !167, line: 40, baseType: !43, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !166, file: !167, line: 41, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Thread", file: !167, line: 17, baseType: !43)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_lock_queue_data", scope: !2, file: !6, line: 254, size: 640, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !178, identifier: ".?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@")
!178 = !{!179, !219, !220, !221, !222, !226}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !177, file: !6, line: 255, baseType: !180, size: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_parker", scope: !2, file: !167, line: 87, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !181, identifier: ".?AUthread_parker@Synchronization@Internal@Runtime@Halide@@")
!181 = !{!182, !190, !192, !193, !199, !203, !207, !210, !213, !214, !215, !216, !217, !218}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "critical_section", scope: !180, file: !167, line: 88, baseType: !183, size: 320)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "CriticalSection", file: !167, line: 20, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CriticalSection", file: !167, line: 18, size: 320, flags: DIFlagTypePassByValue, elements: !185, identifier: ".?AUCriticalSection@@")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !184, file: !167, line: 19, baseType: !187, size: 320)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 320, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 5)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "condvar", scope: !180, file: !167, line: 89, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConditionVariable", file: !167, line: 16, baseType: !24)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "should_park", scope: !180, file: !167, line: 90, baseType: !64, size: 8, offset: 384)
!193 = !DISubprogram(name: "thread_parker", scope: !180, file: !167, line: 92, type: !194, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !196, !197}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!197 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!199 = !DISubprogram(name: "operator=", linkageName: "??4thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAAEAU01234@AEBU01234@@Z", scope: !180, file: !167, line: 93, type: !200, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !196, !197}
!202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !180, size: 64)
!203 = !DISubprogram(name: "thread_parker", scope: !180, file: !167, line: 94, type: !204, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !196, !206}
!206 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !180, size: 64)
!207 = !DISubprogram(name: "operator=", linkageName: "??4thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAAEAU01234@$$QEAU01234@@Z", scope: !180, file: !167, line: 95, type: !208, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!208 = !DISubroutineType(types: !209)
!209 = !{!202, !196, !206}
!210 = !DISubprogram(name: "thread_parker", scope: !180, file: !167, line: 97, type: !211, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !196}
!213 = !DISubprogram(name: "~thread_parker", scope: !180, file: !167, line: 102, type: !211, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubprogram(name: "prepare_park", linkageName: "?prepare_park@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 107, type: !211, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubprogram(name: "park", linkageName: "?park@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 111, type: !211, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubprogram(name: "unpark_start", linkageName: "?unpark_start@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 119, type: !211, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubprogram(name: "unpark", linkageName: "?unpark@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 123, type: !211, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubprogram(name: "unpark_finish", linkageName: "?unpark_finish@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 128, type: !211, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !6, line: 273, baseType: !176, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !6, line: 274, baseType: !176, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !177, file: !6, line: 275, baseType: !176, size: 64, offset: 576)
!222 = !DISubprogram(name: "word_lock_queue_data", scope: !177, file: !6, line: 277, type: !223, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!226 = !DISubprogram(name: "~word_lock_queue_data", scope: !177, file: !6, line: 280, type: !223, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", scope: !2, file: !6, line: 475, size: 196608, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !229, identifier: ".?AUhash_table@Synchronization@Internal@Runtime@Halide@@")
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !228, file: !6, line: 476, baseType: !231, size: 196608)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 196608, elements: !260)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", scope: !2, file: !6, line: 463, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !233, identifier: ".?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@")
!233 = !{!234, !246, !259}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !232, file: !6, line: 464, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "word_lock", scope: !2, file: !6, line: 283, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !236, identifier: ".?AVword_lock@Synchronization@Internal@Runtime@Halide@@")
!236 = !{!237, !238, !242, !243, !244, !245}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !235, file: !6, line: 284, baseType: !22, size: 64)
!238 = !DISubprogram(name: "lock_full", linkageName: "?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !235, file: !6, line: 286, type: !239, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!242 = !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !235, file: !6, line: 287, type: !239, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubprogram(name: "word_lock", scope: !235, file: !6, line: 290, type: !239, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubprogram(name: "lock", linkageName: "?lock@word_lock@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !235, file: !6, line: 291, type: !239, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "unlock", linkageName: "?unlock@word_lock@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !235, file: !6, line: 304, type: !239, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !232, file: !6, line: 466, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_data", scope: !2, file: !6, line: 448, size: 640, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !249, identifier: ".?AUqueue_data@Synchronization@Internal@Runtime@Halide@@")
!249 = !{!250, !251, !252, !253, !254, !258}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !248, file: !6, line: 449, baseType: !180, size: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_address", scope: !248, file: !6, line: 451, baseType: !22, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !6, line: 452, baseType: !247, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_info", scope: !248, file: !6, line: 453, baseType: !22, size: 64, offset: 576)
!254 = !DISubprogram(name: "queue_data", scope: !248, file: !6, line: 455, type: !255, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!258 = !DISubprogram(name: "~queue_data", scope: !248, file: !6, line: 457, type: !255, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !232, file: !6, line: 467, baseType: !247, size: 64, offset: 128)
!260 = !{!261}
!261 = !DISubrange(count: 1024)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex_parking_control", scope: !2, file: !6, line: 829, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !265, identifier: ".?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@")
!265 = !{!266, !297, !299}
!266 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !264, baseType: !267, extraData: i32 0)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parking_control", scope: !2, file: !6, line: 592, size: 256, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !268, identifier: ".?AUparking_control@Synchronization@Internal@Runtime@Halide@@")
!268 = !{!269, !282, !283, !287, !293}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !267, file: !6, line: 593, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!64, !43, !273}
!273 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "validate_action", scope: !2, file: !6, line: 576, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !275, identifier: ".?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@")
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_one", scope: !274, file: !6, line: 577, baseType: !64, size: 8)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_unpark_info", scope: !274, file: !6, line: 578, baseType: !22, size: 64, offset: 64)
!278 = !DISubprogram(name: "validate_action", scope: !274, file: !6, line: 580, type: !279, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "before_sleep", scope: !267, file: !6, line: 594, baseType: !170, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !267, file: !6, line: 595, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!22, !43, !29, !64}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_callback", scope: !267, file: !6, line: 596, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !43, !291, !64, !64}
!291 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!293 = !DISubprogram(name: "parking_control", scope: !267, file: !6, line: 598, type: !294, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "lock_state", scope: !264, file: !6, line: 830, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!299 = !DISubprogram(name: "mutex_parking_control", scope: !264, file: !6, line: 832, type: !300, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302, !298}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_parking_control", scope: !2, file: !6, line: 958, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !305, identifier: ".?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@")
!305 = !{!306, !307, !308, !324}
!306 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !304, baseType: !267, extraData: i32 0)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !304, file: !6, line: 959, baseType: !298, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !304, file: !6, line: 960, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_mutex", scope: !2, file: !6, line: 859, size: 64, flags: DIFlagTypePassByValue, elements: !311, identifier: ".?AVfast_mutex@Synchronization@Internal@Runtime@Halide@@")
!311 = !{!312, !313, !317, !318, !319, !320, !323}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !6, line: 860, baseType: !22, size: 64)
!313 = !DISubprogram(name: "lock_full", linkageName: "?lock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !310, file: !6, line: 862, type: !314, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!317 = !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !310, file: !6, line: 906, type: !314, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubprogram(name: "lock", linkageName: "?lock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 920, type: !314, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubprogram(name: "unlock", linkageName: "?unlock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 929, type: !314, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "make_parked_if_locked", linkageName: "?make_parked_if_locked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !310, file: !6, line: 938, type: !321, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{!64, !316}
!323 = !DISubprogram(name: "make_parked", linkageName: "?make_parked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 953, type: !314, scopeLine: 953, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubprogram(name: "signal_parking_control", scope: !304, file: !6, line: 962, type: !325, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327, !298, !309}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "broadcast_parking_control", scope: !2, file: !6, line: 985, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !330, identifier: ".?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@")
!330 = !{!331, !332, !333, !334}
!331 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !329, baseType: !267, extraData: i32 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !329, file: !6, line: 986, baseType: !298, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !329, file: !6, line: 987, baseType: !309, size: 64, offset: 320)
!334 = !DISubprogram(name: "broadcast_parking_control", scope: !329, file: !6, line: 989, type: !335, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337, !298, !309}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_parking_control", scope: !2, file: !6, line: 1026, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !340, identifier: ".?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@")
!340 = !{!341, !342, !343, !344}
!341 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !339, baseType: !267, extraData: i32 0)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !339, file: !6, line: 1027, baseType: !298, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !339, file: !6, line: 1028, baseType: !309, size: 64, offset: 320)
!344 = !DISubprogram(name: "wait_parking_control", scope: !339, file: !6, line: 1030, type: !345, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347, !298, !309}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_cond", scope: !2, file: !6, line: 1072, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !350, identifier: ".?AVfast_cond@Synchronization@Internal@Runtime@Halide@@")
!350 = !{!351, !352, !356, !357, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !6, line: 1073, baseType: !22, size: 64)
!352 = !DISubprogram(name: "fast_cond", scope: !349, file: !6, line: 1076, type: !353, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!356 = !DISubprogram(name: "signal", linkageName: "?signal@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !349, file: !6, line: 1078, type: !353, scopeLine: 1078, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubprogram(name: "broadcast", linkageName: "?broadcast@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !349, file: !6, line: 1092, type: !353, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubprogram(name: "wait", linkageName: "?wait@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXPEAVfast_mutex@2345@@Z", scope: !349, file: !6, line: 1105, type: !359, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !355, !309}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !6, line: 1164, size: 64, flags: DIFlagTypePassByValue, elements: !363, identifier: ".?AUhalide_mutex_array@@")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !362, file: !6, line: 1165, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_impl_t", file: !13, line: 711, size: 32, flags: DIFlagTypePassByValue, elements: !368, identifier: ".?AUhalide_semaphore_impl_t@@")
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !13, line: 712, baseType: !29, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!371 = !{!372, !375, !0, !377, !11, !121, !127, !133, !139, !146, !152, !158, !379}
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!373 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !374, isLocal: true, isDefinition: true)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!376 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !374, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!378 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !374, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "__tsan_mutex_linker_init", scope: !161, file: !6, line: 37, type: !381, isLocal: true, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!383 = !{!384, !385}
!384 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!385 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!386 = !{i32 2, !"CodeView", i32 1}
!387 = !{i32 2, !"Debug Info Version", i32 3}
!388 = !{i32 1, !"wchar_size", i32 4}
!389 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!390 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z", scope: !3, file: !167, line: 43, type: !391, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!43, !43}
!393 = !{!394, !395}
!394 = !DILocalVariable(name: "arg", arg: 1, scope: !390, file: !167, line: 43, type: !43)
!395 = !DILocalVariable(name: "t", scope: !390, file: !167, line: 44, type: !165)
!396 = !DILocation(line: 0, scope: !390)
!397 = !DILocation(line: 45, scope: !390)
!398 = !{!399, !400, i64 0}
!399 = !{!"?AUspawned_thread@Internal@Runtime@Halide@@", !400, i64 0, !400, i64 8, !400, i64 16}
!400 = !{!"any pointer", !401, i64 0}
!401 = !{!"omnipotent char", !402, i64 0}
!402 = !{!"Simple C++ TBAA"}
!403 = !{!399, !400, i64 8}
!404 = !DILocation(line: 46, scope: !390)
!405 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !167, file: !167, line: 55, type: !406, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!29}
!408 = !{!409}
!409 = !DILocalVariable(name: "num_cores", scope: !405, file: !167, line: 57, type: !370)
!410 = !DILocation(line: 57, scope: !405)
!411 = !DILocation(line: 0, scope: !405)
!412 = !DILocation(line: 58, scope: !405)
!413 = !DILocation(line: 59, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !167, line: 58)
!415 = distinct !DILexicalBlock(scope: !405, file: !167, line: 58)
!416 = !DILocation(line: 0, scope: !415)
!417 = !DILocation(line: 63, scope: !405)
!418 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 65, type: !419, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!102, !170, !43}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "closure", arg: 2, scope: !418, file: !167, line: 65, type: !43)
!423 = !DILocalVariable(name: "f", arg: 1, scope: !418, file: !167, line: 65, type: !170)
!424 = !DILocalVariable(name: "t", scope: !418, file: !167, line: 66, type: !165)
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 66, scope: !418)
!427 = !DILocation(line: 67, scope: !418)
!428 = !DILocation(line: 68, scope: !418)
!429 = !DILocation(line: 69, scope: !418)
!430 = !{!399, !400, i64 16}
!431 = !DILocation(line: 70, scope: !418)
!432 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !433, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !102}
!435 = !{!436, !437}
!436 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !432, file: !167, line: 73, type: !102)
!437 = !DILocalVariable(name: "thread", scope: !432, file: !167, line: 74, type: !165)
!438 = !DILocation(line: 0, scope: !432)
!439 = !DILocation(line: 74, scope: !432)
!440 = !DILocation(line: 75, scope: !432)
!441 = !DILocation(line: 76, scope: !432)
!442 = !DILocation(line: 77, scope: !432)
!443 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !235, file: !6, line: 321, type: !239, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !238, retainedNodes: !444)
!444 = !{!445, !447, !459, !460, !464, !465, !466}
!445 = !DILocalVariable(name: "this", arg: 1, scope: !443, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!447 = !DILocalVariable(name: "spinner", scope: !443, file: !6, line: 322, type: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !449, identifier: ".?AVspin_control@Synchronization@Internal@Runtime@Halide@@")
!449 = !{!450, !451, !455, !458}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !448, file: !6, line: 231, baseType: !29, size: 32)
!451 = !DISubprogram(name: "spin_control", scope: !448, file: !6, line: 235, type: !452, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!455 = !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !448, file: !6, line: 237, type: !456, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!456 = !DISubroutineType(types: !457)
!457 = !{!64, !454}
!458 = !DISubprogram(name: "reset", linkageName: "?reset@spin_control@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !448, file: !6, line: 244, type: !452, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DILocalVariable(name: "expected", scope: !443, file: !6, line: 323, type: !22)
!460 = !DILocalVariable(name: "desired", scope: !461, file: !6, line: 328, type: !22)
!461 = distinct !DILexicalBlock(scope: !462, file: !6, line: 327)
!462 = distinct !DILexicalBlock(scope: !463, file: !6, line: 327)
!463 = distinct !DILexicalBlock(scope: !443, file: !6, line: 326)
!464 = !DILocalVariable(name: "node", scope: !463, file: !6, line: 342, type: !177)
!465 = !DILocalVariable(name: "head", scope: !463, file: !6, line: 347, type: !176)
!466 = !DILocalVariable(name: "desired", scope: !463, file: !6, line: 359, type: !22)
!467 = !DILocation(line: 0, scope: !443)
!468 = !DILocation(line: 324, scope: !443)
!469 = !DILocalVariable(name: "val", arg: 2, scope: !470, file: !6, line: 200, type: !474)
!470 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned long long>", linkageName: "??$atomic_load_relaxed@_K@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEA_K0@Z", scope: !471, file: !6, line: 200, type: !472, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !477, retainedNodes: !475)
!471 = !DINamespace(scope: !2)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!475 = !{!469, !476}
!476 = !DILocalVariable(name: "addr", arg: 1, scope: !470, file: !6, line: 200, type: !474)
!477 = !{!478}
!478 = !DITemplateTypeParameter(name: "T", type: !25)
!479 = !DILocation(line: 0, scope: !470, inlinedAt: !480)
!480 = distinct !DILocation(line: 324, scope: !443)
!481 = !DILocation(line: 201, scope: !470, inlinedAt: !480)
!482 = !DILocation(line: 326, scope: !443)
!483 = !DILocation(line: 327, scope: !463)
!484 = !DILocation(line: 328, scope: !461)
!485 = !DILocation(line: 0, scope: !461)
!486 = !DILocalVariable(name: "desired", arg: 3, scope: !487, file: !6, line: 191, type: !298)
!487 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "?atomic_cas_weak_acquire_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !471, file: !6, line: 191, type: !488, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!64, !298, !298, !298}
!490 = !{!486, !491, !492}
!491 = !DILocalVariable(name: "expected", arg: 2, scope: !487, file: !6, line: 191, type: !298)
!492 = !DILocalVariable(name: "addr", arg: 1, scope: !487, file: !6, line: 191, type: !298)
!493 = !DILocation(line: 0, scope: !487, inlinedAt: !494)
!494 = distinct !DILocation(line: 330, scope: !461)
!495 = !DILocation(line: 192, scope: !487, inlinedAt: !494)
!496 = !DILocation(line: 336, scope: !463)
!497 = !DILocalVariable(name: "this", arg: 1, scope: !498, type: !500, flags: DIFlagArtificial | DIFlagObjectPointer)
!498 = distinct !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !448, file: !6, line: 237, type: !456, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !455, retainedNodes: !499)
!499 = !{!497}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!501 = !DILocation(line: 0, scope: !498, inlinedAt: !502)
!502 = distinct !DILocation(line: 336, scope: !463)
!503 = !DILocation(line: 241, scope: !498, inlinedAt: !502)
!504 = !DILocation(line: 239, scope: !505, inlinedAt: !502)
!505 = distinct !DILexicalBlock(scope: !506, file: !6, line: 238)
!506 = distinct !DILexicalBlock(scope: !498, file: !6, line: 238)
!507 = !DILocation(line: 337, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !6, line: 336)
!509 = distinct !DILexicalBlock(scope: !463, file: !6, line: 336)
!510 = !DILocation(line: 0, scope: !470, inlinedAt: !511)
!511 = distinct !DILocation(line: 338, scope: !508)
!512 = !DILocation(line: 201, scope: !470, inlinedAt: !511)
!513 = !DILocation(line: 339, scope: !508)
!514 = !DILocation(line: 342, scope: !463)
!515 = !DILocalVariable(name: "this", arg: 1, scope: !516, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!516 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "??0word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !177, file: !6, line: 277, type: !223, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !222, retainedNodes: !517)
!517 = !{!515}
!518 = !DILocation(line: 0, scope: !516, inlinedAt: !519)
!519 = distinct !DILocation(line: 342, scope: !463)
!520 = !DILocalVariable(name: "this", arg: 1, scope: !521, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!521 = distinct !DISubprogram(name: "thread_parker", linkageName: "??0thread_parker@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !180, file: !167, line: 97, type: !211, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !210, retainedNodes: !522)
!522 = !{!520}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!524 = !DILocation(line: 0, scope: !521, inlinedAt: !525)
!525 = distinct !DILocation(line: 277, scope: !516, inlinedAt: !519)
!526 = !DILocation(line: 97, scope: !521, inlinedAt: !525)
!527 = !{!528, !531, i64 48}
!528 = !{!"?AUthread_parker@Synchronization@Internal@Runtime@Halide@@", !529, i64 0, !530, i64 40, !531, i64 48}
!529 = !{!"?AUCriticalSection@@", !401, i64 0}
!530 = !{!"long long", !401, i64 0}
!531 = !{!"bool", !401, i64 0}
!532 = !DILocation(line: 98, scope: !533, inlinedAt: !525)
!533 = distinct !DILexicalBlock(scope: !521, file: !167, line: 97)
!534 = !DILocation(line: 99, scope: !533, inlinedAt: !525)
!535 = !DILocation(line: 277, scope: !516, inlinedAt: !519)
!536 = !{!537, !400, i64 56}
!537 = !{!"?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@", !528, i64 0, !400, i64 56, !400, i64 64, !400, i64 72}
!538 = !{!537, !400, i64 64}
!539 = !{!537, !400, i64 72}
!540 = !DILocalVariable(name: "this", arg: 1, scope: !541, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!541 = distinct !DISubprogram(name: "prepare_park", linkageName: "?prepare_park@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 107, type: !211, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !214, retainedNodes: !542)
!542 = !{!540}
!543 = !DILocation(line: 0, scope: !541, inlinedAt: !544)
!544 = distinct !DILocation(line: 344, scope: !463)
!545 = !DILocation(line: 108, scope: !541, inlinedAt: !544)
!546 = !DILocation(line: 347, scope: !463)
!547 = !DILocation(line: 0, scope: !463)
!548 = !DILocation(line: 348, scope: !463)
!549 = !DILocation(line: 349, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !6, line: 348)
!551 = distinct !DILexicalBlock(scope: !463, file: !6, line: 348)
!552 = !DILocation(line: 351, scope: !550)
!553 = !DILocation(line: 356, scope: !554)
!554 = distinct !DILexicalBlock(scope: !551, file: !6, line: 351)
!555 = !DILocation(line: 357, scope: !554)
!556 = !DILocation(line: 359, scope: !463)
!557 = !DILocalVariable(name: "desired", arg: 3, scope: !558, file: !6, line: 183, type: !298)
!558 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "?atomic_cas_weak_release_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !471, file: !6, line: 183, type: !488, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !559)
!559 = !{!557, !560, !561}
!560 = !DILocalVariable(name: "expected", arg: 2, scope: !558, file: !6, line: 183, type: !298)
!561 = !DILocalVariable(name: "addr", arg: 1, scope: !558, file: !6, line: 183, type: !298)
!562 = !DILocation(line: 0, scope: !558, inlinedAt: !563)
!563 = distinct !DILocation(line: 360, scope: !463)
!564 = !DILocation(line: 184, scope: !558, inlinedAt: !563)
!565 = !DILocalVariable(name: "this", arg: 1, scope: !566, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!566 = distinct !DISubprogram(name: "park", linkageName: "?park@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 111, type: !211, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !215, retainedNodes: !567)
!567 = !{!565}
!568 = !DILocation(line: 0, scope: !566, inlinedAt: !569)
!569 = distinct !DILocation(line: 361, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !6, line: 360)
!571 = distinct !DILexicalBlock(scope: !463, file: !6, line: 360)
!572 = !DILocation(line: 112, scope: !566, inlinedAt: !569)
!573 = !DILocation(line: 113, scope: !566, inlinedAt: !569)
!574 = !{i8 0, i8 2}
!575 = !DILocation(line: 114, scope: !576, inlinedAt: !569)
!576 = distinct !DILexicalBlock(scope: !566, file: !167, line: 113)
!577 = distinct !{!577, !573, !578, !579}
!578 = !DILocation(line: 115, scope: !566, inlinedAt: !569)
!579 = !{!"llvm.loop.mustprogress"}
!580 = !DILocation(line: 116, scope: !566, inlinedAt: !569)
!581 = !DILocation(line: 0, scope: !470, inlinedAt: !582)
!582 = distinct !DILocation(line: 363, scope: !570)
!583 = !DILocation(line: 201, scope: !470, inlinedAt: !582)
!584 = !DILocation(line: 364, scope: !570)
!585 = !DILocalVariable(name: "this", arg: 1, scope: !586, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!586 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "??1word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !177, file: !6, line: 280, type: !223, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !226, retainedNodes: !587)
!587 = !{!585}
!588 = !DILocation(line: 0, scope: !586, inlinedAt: !589)
!589 = distinct !DILocation(line: 365, scope: !463)
!590 = !DILocalVariable(name: "this", arg: 1, scope: !591, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!591 = distinct !DISubprogram(name: "~thread_parker", linkageName: "??1thread_parker@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !180, file: !167, line: 102, type: !211, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !213, retainedNodes: !592)
!592 = !{!590}
!593 = !DILocation(line: 0, scope: !591, inlinedAt: !594)
!594 = distinct !DILocation(line: 280, scope: !595, inlinedAt: !589)
!595 = distinct !DILexicalBlock(scope: !586, file: !6, line: 280)
!596 = !DILocation(line: 104, scope: !597, inlinedAt: !594)
!597 = distinct !DILexicalBlock(scope: !591, file: !167, line: 102)
!598 = !DILocation(line: 365, scope: !463)
!599 = distinct !{!599, !482, !600}
!600 = !DILocation(line: 365, scope: !443)
!601 = !DILocation(line: 366, scope: !443)
!602 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !235, file: !6, line: 368, type: !239, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !242, retainedNodes: !603)
!603 = !{!604, !605, !606, !608, !609, !610, !612, !613, !614, !615, !617, !620, !621, !624}
!604 = !DILocalVariable(name: "this", arg: 1, scope: !602, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!605 = !DILocalVariable(name: "expected", scope: !602, file: !6, line: 369, type: !22)
!606 = !DILocalVariable(name: "thread_queuing", scope: !607, file: !6, line: 375, type: !64)
!607 = distinct !DILexicalBlock(scope: !602, file: !6, line: 372)
!608 = !DILocalVariable(name: "none_queued", scope: !607, file: !6, line: 377, type: !64)
!609 = !DILocalVariable(name: "desired", scope: !607, file: !6, line: 382, type: !22)
!610 = !DILocalVariable(name: "head", scope: !611, file: !6, line: 389, type: !176)
!611 = distinct !DILexicalBlock(scope: !602, file: !6, line: 388)
!612 = !DILocalVariable(name: "current", scope: !611, file: !6, line: 390, type: !176)
!613 = !DILocalVariable(name: "tail", scope: !611, file: !6, line: 391, type: !176)
!614 = !DILocalVariable(name: "times_through", scope: !611, file: !6, line: 392, type: !29)
!615 = !DILocalVariable(name: "next", scope: !616, file: !6, line: 394, type: !176)
!616 = distinct !DILexicalBlock(scope: !611, file: !6, line: 393)
!617 = !DILocalVariable(name: "desired", scope: !618, file: !6, line: 406, type: !22)
!618 = distinct !DILexicalBlock(scope: !619, file: !6, line: 405)
!619 = distinct !DILexicalBlock(scope: !611, file: !6, line: 405)
!620 = !DILocalVariable(name: "new_tail", scope: !611, file: !6, line: 414, type: !176)
!621 = !DILocalVariable(name: "continue_outer", scope: !622, file: !6, line: 416, type: !64)
!622 = distinct !DILexicalBlock(scope: !623, file: !6, line: 415)
!623 = distinct !DILexicalBlock(scope: !611, file: !6, line: 415)
!624 = !DILocalVariable(name: "desired", scope: !625, file: !6, line: 418, type: !22)
!625 = distinct !DILexicalBlock(scope: !622, file: !6, line: 417)
!626 = !DILocation(line: 0, scope: !602)
!627 = !DILocation(line: 370, scope: !602)
!628 = !DILocation(line: 0, scope: !470, inlinedAt: !629)
!629 = distinct !DILocation(line: 370, scope: !602)
!630 = !DILocation(line: 201, scope: !470, inlinedAt: !629)
!631 = !DILocation(line: 372, scope: !602)
!632 = !DILocation(line: 375, scope: !607)
!633 = !DILocation(line: 0, scope: !607)
!634 = !DILocation(line: 378, scope: !607)
!635 = !DILocation(line: 382, scope: !607)
!636 = !DILocation(line: 0, scope: !487, inlinedAt: !637)
!637 = distinct !DILocation(line: 383, scope: !607)
!638 = !DILocation(line: 192, scope: !487, inlinedAt: !637)
!639 = !DILocation(line: 389, scope: !611)
!640 = !DILocation(line: 0, scope: !611)
!641 = !DILocation(line: 391, scope: !611)
!642 = !DILocation(line: 393, scope: !611)
!643 = !DILocation(line: 394, scope: !616)
!644 = !DILocation(line: 0, scope: !616)
!645 = !DILocation(line: 395, scope: !646)
!646 = distinct !DILexicalBlock(scope: !616, file: !6, line: 395)
!647 = !DILocation(line: 395, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !6, line: 395)
!649 = distinct !DILexicalBlock(scope: !646, file: !6, line: 395)
!650 = !DILocation(line: 396, scope: !616)
!651 = !DILocation(line: 398, scope: !616)
!652 = distinct !{!652, !642, !653, !579}
!653 = !DILocation(line: 400, scope: !611)
!654 = !DILocation(line: 401, scope: !611)
!655 = !DILocation(line: 405, scope: !611)
!656 = !DILocation(line: 406, scope: !618)
!657 = !DILocation(line: 0, scope: !618)
!658 = !DILocalVariable(name: "desired", arg: 3, scope: !659, file: !6, line: 179, type: !474)
!659 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned long long>", linkageName: "??$atomic_cas_weak_relacq_relaxed@_K@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !471, file: !6, line: 179, type: !660, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !477, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!64, !474, !474, !474}
!662 = !{!658, !663, !664}
!663 = !DILocalVariable(name: "expected", arg: 2, scope: !659, file: !6, line: 179, type: !474)
!664 = !DILocalVariable(name: "addr", arg: 1, scope: !659, file: !6, line: 179, type: !474)
!665 = !DILocation(line: 0, scope: !659, inlinedAt: !666)
!666 = distinct !DILocation(line: 407, scope: !618)
!667 = !DILocation(line: 180, scope: !659, inlinedAt: !666)
!668 = distinct !{!668, !669, !670}
!669 = !DILocation(line: 388, scope: !602)
!670 = !DILocation(line: 445, scope: !602)
!671 = !DILocation(line: 414, scope: !611)
!672 = !DILocation(line: 415, scope: !611)
!673 = !DILocation(line: 0, scope: !622)
!674 = !DILocation(line: 418, scope: !625)
!675 = !DILocation(line: 0, scope: !625)
!676 = !DILocation(line: 0, scope: !659, inlinedAt: !677)
!677 = distinct !DILocation(line: 419, scope: !625)
!678 = !DILocation(line: 180, scope: !659, inlinedAt: !677)
!679 = !DILocation(line: 422, scope: !625)
!680 = distinct !{!680, !681, !682, !579}
!681 = !DILocation(line: 417, scope: !622)
!682 = !DILocation(line: 428, scope: !622)
!683 = !DILocation(line: 434, scope: !684)
!684 = distinct !DILexicalBlock(scope: !623, file: !6, line: 433)
!685 = !DILocalVariable(name: "val", arg: 2, scope: !686, file: !6, line: 165, type: !22)
!686 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "?atomic_and_fetch_release@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_KPEA_K_K@Z", scope: !471, file: !6, line: 165, type: !687, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!22, !298, !22}
!689 = !{!685, !690}
!690 = !DILocalVariable(name: "addr", arg: 1, scope: !686, file: !6, line: 165, type: !298)
!691 = !DILocation(line: 0, scope: !686, inlinedAt: !692)
!692 = distinct !DILocation(line: 435, scope: !684)
!693 = !DILocation(line: 166, scope: !686, inlinedAt: !692)
!694 = !DILocation(line: 436, scope: !684)
!695 = !DILocalVariable(name: "this", arg: 1, scope: !696, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!696 = distinct !DISubprogram(name: "unpark_start", linkageName: "?unpark_start@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 119, type: !211, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !216, retainedNodes: !697)
!697 = !{!695}
!698 = !DILocation(line: 0, scope: !696, inlinedAt: !699)
!699 = distinct !DILocation(line: 441, scope: !611)
!700 = !DILocation(line: 120, scope: !696, inlinedAt: !699)
!701 = !DILocalVariable(name: "this", arg: 1, scope: !702, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!702 = distinct !DISubprogram(name: "unpark", linkageName: "?unpark@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 123, type: !211, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !703)
!703 = !{!701}
!704 = !DILocation(line: 0, scope: !702, inlinedAt: !705)
!705 = distinct !DILocation(line: 442, scope: !611)
!706 = !DILocation(line: 124, scope: !702, inlinedAt: !705)
!707 = !DILocation(line: 125, scope: !702, inlinedAt: !705)
!708 = !DILocalVariable(name: "this", arg: 1, scope: !709, type: !523, flags: DIFlagArtificial | DIFlagObjectPointer)
!709 = distinct !DISubprogram(name: "unpark_finish", linkageName: "?unpark_finish@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 128, type: !211, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !710)
!710 = !{!708}
!711 = !DILocation(line: 0, scope: !709, inlinedAt: !712)
!712 = distinct !DILocation(line: 443, scope: !611)
!713 = !DILocation(line: 129, scope: !709, inlinedAt: !712)
!714 = !DILocation(line: 444, scope: !611)
!715 = !DILocation(line: 446, scope: !602)
!716 = distinct !DISubprogram(name: "lock_bucket", linkageName: "?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z", scope: !2, file: !6, line: 509, type: !717, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !720)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !22}
!719 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !232, size: 64)
!720 = !{!721, !722, !723}
!721 = !DILocalVariable(name: "addr", arg: 1, scope: !716, file: !6, line: 509, type: !22)
!722 = !DILocalVariable(name: "hash", scope: !716, file: !6, line: 510, type: !22)
!723 = !DILocalVariable(name: "bucket", scope: !716, file: !6, line: 515, type: !719)
!724 = !DILocation(line: 0, scope: !716)
!725 = !DILocalVariable(name: "bits", arg: 2, scope: !726, file: !6, line: 499, type: !729)
!726 = distinct !DISubprogram(name: "addr_hash", linkageName: "?addr_hash@Synchronization@Internal@Runtime@Halide@@YA_K_KI@Z", scope: !2, file: !6, line: 499, type: !727, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !730)
!727 = !DISubroutineType(types: !728)
!728 = !{!22, !22, !729}
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 12, baseType: !382)
!730 = !{!725, !731}
!731 = !DILocalVariable(name: "addr", arg: 1, scope: !726, file: !6, line: 499, type: !22)
!732 = !DILocation(line: 0, scope: !726, inlinedAt: !733)
!733 = distinct !DILocation(line: 510, scope: !716)
!734 = !DILocation(line: 503, scope: !735, inlinedAt: !733)
!735 = distinct !DILexicalBlock(scope: !736, file: !6, line: 502)
!736 = distinct !DILexicalBlock(scope: !726, file: !6, line: 502)
!737 = !DILocation(line: 515, scope: !716)
!738 = !DILocalVariable(name: "this", arg: 1, scope: !739, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!739 = distinct !DISubprogram(name: "lock", linkageName: "?lock@word_lock@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !235, file: !6, line: 291, type: !239, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !244, retainedNodes: !740)
!740 = !{!738, !741, !742}
!741 = !DILocalVariable(name: "expected", scope: !739, file: !6, line: 294, type: !22)
!742 = !DILocalVariable(name: "desired", scope: !739, file: !6, line: 295, type: !22)
!743 = !DILocation(line: 0, scope: !739, inlinedAt: !744)
!744 = distinct !DILocation(line: 517, scope: !716)
!745 = !DILocation(line: 292, scope: !739, inlinedAt: !744)
!746 = !DILocalVariable(name: "mutex", arg: 1, scope: !747, file: !6, line: 56, type: !43)
!747 = distinct !DISubprogram(name: "if_tsan_pre_lock", linkageName: "?if_tsan_pre_lock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !471, file: !6, line: 56, type: !171, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !748)
!748 = !{!746}
!749 = !DILocation(line: 0, scope: !747, inlinedAt: !750)
!750 = distinct !DILocation(line: 292, scope: !739, inlinedAt: !744)
!751 = !DILocation(line: 57, scope: !747, inlinedAt: !750)
!752 = !DILocation(line: 297, scope: !739, inlinedAt: !744)
!753 = !DILocation(line: 0, scope: !487, inlinedAt: !754)
!754 = distinct !DILocation(line: 297, scope: !739, inlinedAt: !744)
!755 = !DILocation(line: 192, scope: !487, inlinedAt: !754)
!756 = !DILocation(line: 517, scope: !716)
!757 = !DILocation(line: 298, scope: !758, inlinedAt: !744)
!758 = distinct !DILexicalBlock(scope: !759, file: !6, line: 297)
!759 = distinct !DILexicalBlock(scope: !739, file: !6, line: 297)
!760 = !DILocation(line: 299, scope: !758, inlinedAt: !744)
!761 = !DILocalVariable(name: "mutex", arg: 1, scope: !762, file: !6, line: 60, type: !43)
!762 = distinct !DISubprogram(name: "if_tsan_post_lock", linkageName: "?if_tsan_post_lock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !471, file: !6, line: 60, type: !171, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !763)
!763 = !{!761}
!764 = !DILocation(line: 0, scope: !762, inlinedAt: !765)
!765 = distinct !DILocation(line: 301, scope: !739, inlinedAt: !744)
!766 = !DILocation(line: 61, scope: !762, inlinedAt: !765)
!767 = !DILocation(line: 519, scope: !716)
!768 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z", scope: !2, file: !6, line: 531, type: !769, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !779)
!769 = !DISubroutineType(types: !770)
!770 = !{!771, !22, !22}
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !772, identifier: ".?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@")
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !771, file: !6, line: 523, baseType: !719, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !771, file: !6, line: 524, baseType: !719, size: 64, offset: 64)
!775 = !DISubprogram(name: "bucket_pair", scope: !771, file: !6, line: 526, type: !776, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !778, !719, !719}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!779 = !{!780, !781, !782, !783, !784, !787, !790, !791, !793}
!780 = !DILocalVariable(name: "addr_to", arg: 2, scope: !768, file: !6, line: 531, type: !22)
!781 = !DILocalVariable(name: "addr_from", arg: 1, scope: !768, file: !6, line: 531, type: !22)
!782 = !DILocalVariable(name: "hash_from", scope: !768, file: !6, line: 533, type: !22)
!783 = !DILocalVariable(name: "hash_to", scope: !768, file: !6, line: 534, type: !22)
!784 = !DILocalVariable(name: "first", scope: !785, file: !6, line: 542, type: !719)
!785 = distinct !DILexicalBlock(scope: !786, file: !6, line: 541)
!786 = distinct !DILexicalBlock(scope: !768, file: !6, line: 541)
!787 = !DILocalVariable(name: "first", scope: !788, file: !6, line: 546, type: !719)
!788 = distinct !DILexicalBlock(scope: !789, file: !6, line: 545)
!789 = distinct !DILexicalBlock(scope: !786, file: !6, line: 545)
!790 = !DILocalVariable(name: "second", scope: !788, file: !6, line: 547, type: !719)
!791 = !DILocalVariable(name: "first", scope: !792, file: !6, line: 552, type: !719)
!792 = distinct !DILexicalBlock(scope: !789, file: !6, line: 551)
!793 = !DILocalVariable(name: "second", scope: !792, file: !6, line: 553, type: !719)
!794 = !DILocation(line: 0, scope: !768)
!795 = !DILocation(line: 0, scope: !726, inlinedAt: !796)
!796 = distinct !DILocation(line: 533, scope: !768)
!797 = !DILocation(line: 503, scope: !735, inlinedAt: !796)
!798 = !DILocation(line: 0, scope: !726, inlinedAt: !799)
!799 = distinct !DILocation(line: 534, scope: !768)
!800 = !DILocation(line: 503, scope: !735, inlinedAt: !799)
!801 = !DILocation(line: 541, scope: !768)
!802 = !DILocation(line: 542, scope: !785)
!803 = !DILocation(line: 0, scope: !785)
!804 = !DILocation(line: 0, scope: !739, inlinedAt: !805)
!805 = distinct !DILocation(line: 543, scope: !785)
!806 = !DILocation(line: 292, scope: !739, inlinedAt: !805)
!807 = !DILocation(line: 0, scope: !747, inlinedAt: !808)
!808 = distinct !DILocation(line: 292, scope: !739, inlinedAt: !805)
!809 = !DILocation(line: 57, scope: !747, inlinedAt: !808)
!810 = !DILocation(line: 297, scope: !739, inlinedAt: !805)
!811 = !DILocation(line: 0, scope: !487, inlinedAt: !812)
!812 = distinct !DILocation(line: 297, scope: !739, inlinedAt: !805)
!813 = !DILocation(line: 192, scope: !487, inlinedAt: !812)
!814 = !DILocation(line: 543, scope: !785)
!815 = !DILocation(line: 298, scope: !758, inlinedAt: !805)
!816 = !DILocation(line: 299, scope: !758, inlinedAt: !805)
!817 = !DILocation(line: 545, scope: !786)
!818 = !DILocation(line: 546, scope: !788)
!819 = !DILocation(line: 0, scope: !788)
!820 = !DILocation(line: 547, scope: !788)
!821 = !DILocation(line: 0, scope: !739, inlinedAt: !822)
!822 = distinct !DILocation(line: 548, scope: !788)
!823 = !DILocation(line: 292, scope: !739, inlinedAt: !822)
!824 = !DILocation(line: 0, scope: !747, inlinedAt: !825)
!825 = distinct !DILocation(line: 292, scope: !739, inlinedAt: !822)
!826 = !DILocation(line: 57, scope: !747, inlinedAt: !825)
!827 = !DILocation(line: 297, scope: !739, inlinedAt: !822)
!828 = !DILocation(line: 0, scope: !487, inlinedAt: !829)
!829 = distinct !DILocation(line: 297, scope: !739, inlinedAt: !822)
!830 = !DILocation(line: 192, scope: !487, inlinedAt: !829)
!831 = !DILocation(line: 548, scope: !788)
!832 = !DILocation(line: 298, scope: !758, inlinedAt: !822)
!833 = !DILocation(line: 299, scope: !758, inlinedAt: !822)
!834 = !DILocation(line: 0, scope: !762, inlinedAt: !835)
!835 = distinct !DILocation(line: 301, scope: !739, inlinedAt: !822)
!836 = !DILocation(line: 61, scope: !762, inlinedAt: !835)
!837 = !DILocation(line: 0, scope: !739, inlinedAt: !838)
!838 = distinct !DILocation(line: 549, scope: !788)
!839 = !DILocation(line: 292, scope: !739, inlinedAt: !838)
!840 = !DILocation(line: 0, scope: !747, inlinedAt: !841)
!841 = distinct !DILocation(line: 292, scope: !739, inlinedAt: !838)
!842 = !DILocation(line: 57, scope: !747, inlinedAt: !841)
!843 = !DILocation(line: 297, scope: !739, inlinedAt: !838)
!844 = !DILocation(line: 0, scope: !487, inlinedAt: !845)
!845 = distinct !DILocation(line: 297, scope: !739, inlinedAt: !838)
!846 = !DILocation(line: 192, scope: !487, inlinedAt: !845)
!847 = !DILocation(line: 549, scope: !788)
!848 = !DILocation(line: 298, scope: !758, inlinedAt: !838)
!849 = !DILocation(line: 299, scope: !758, inlinedAt: !838)
!850 = !DILocation(line: 552, scope: !792)
!851 = !DILocation(line: 0, scope: !792)
!852 = !DILocation(line: 553, scope: !792)
!853 = !DILocation(line: 0, scope: !739, inlinedAt: !854)
!854 = distinct !DILocation(line: 554, scope: !792)
!855 = !DILocation(line: 292, scope: !739, inlinedAt: !854)
!856 = !DILocation(line: 0, scope: !747, inlinedAt: !857)
!857 = distinct !DILocation(line: 292, scope: !739, inlinedAt: !854)
!858 = !DILocation(line: 57, scope: !747, inlinedAt: !857)
!859 = !DILocation(line: 297, scope: !739, inlinedAt: !854)
!860 = !DILocation(line: 0, scope: !487, inlinedAt: !861)
!861 = distinct !DILocation(line: 297, scope: !739, inlinedAt: !854)
!862 = !DILocation(line: 192, scope: !487, inlinedAt: !861)
!863 = !DILocation(line: 554, scope: !792)
!864 = !DILocation(line: 298, scope: !758, inlinedAt: !854)
!865 = !DILocation(line: 299, scope: !758, inlinedAt: !854)
!866 = !DILocation(line: 0, scope: !762, inlinedAt: !867)
!867 = distinct !DILocation(line: 301, scope: !739, inlinedAt: !854)
!868 = !DILocation(line: 61, scope: !762, inlinedAt: !867)
!869 = !DILocation(line: 0, scope: !739, inlinedAt: !870)
!870 = distinct !DILocation(line: 555, scope: !792)
!871 = !DILocation(line: 292, scope: !739, inlinedAt: !870)
!872 = !DILocation(line: 0, scope: !747, inlinedAt: !873)
!873 = distinct !DILocation(line: 292, scope: !739, inlinedAt: !870)
!874 = !DILocation(line: 57, scope: !747, inlinedAt: !873)
!875 = !DILocation(line: 297, scope: !739, inlinedAt: !870)
!876 = !DILocation(line: 0, scope: !487, inlinedAt: !877)
!877 = distinct !DILocation(line: 297, scope: !739, inlinedAt: !870)
!878 = !DILocation(line: 192, scope: !487, inlinedAt: !877)
!879 = !DILocation(line: 555, scope: !792)
!880 = !DILocation(line: 298, scope: !758, inlinedAt: !870)
!881 = !DILocation(line: 299, scope: !758, inlinedAt: !870)
!882 = !DILocation(line: 0, scope: !786)
!883 = !{!400, !400, i64 0}
!884 = !DILocation(line: 558, scope: !768)
!885 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z", scope: !2, file: !6, line: 560, type: !886, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !889)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !888}
!888 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !771, size: 64)
!889 = !{!890}
!890 = !DILocalVariable(name: "buckets", arg: 1, scope: !885, file: !6, line: 560, type: !888)
!891 = !DILocation(line: 0, scope: !885)
!892 = !DILocation(line: 565, scope: !885)
!893 = !{!894, !400, i64 0}
!894 = !{!"?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@", !400, i64 0, !400, i64 8}
!895 = !{!894, !400, i64 8}
!896 = !DILocalVariable(name: "this", arg: 1, scope: !897, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!897 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@word_lock@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !235, file: !6, line: 304, type: !239, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !245, retainedNodes: !898)
!898 = !{!896, !899, !900, !901}
!899 = !DILocalVariable(name: "val", scope: !897, file: !6, line: 307, type: !22)
!900 = !DILocalVariable(name: "no_thread_queuing", scope: !897, file: !6, line: 310, type: !64)
!901 = !DILocalVariable(name: "some_queued", scope: !897, file: !6, line: 312, type: !64)
!902 = !DILocation(line: 0, scope: !897, inlinedAt: !903)
!903 = distinct !DILocation(line: 566, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !6, line: 565)
!905 = distinct !DILexicalBlock(scope: !885, file: !6, line: 565)
!906 = !DILocation(line: 305, scope: !897, inlinedAt: !903)
!907 = !DILocalVariable(name: "mutex", arg: 1, scope: !908, file: !6, line: 64, type: !43)
!908 = distinct !DISubprogram(name: "if_tsan_pre_unlock", linkageName: "?if_tsan_pre_unlock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !471, file: !6, line: 64, type: !171, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !909)
!909 = !{!907}
!910 = !DILocation(line: 0, scope: !908, inlinedAt: !911)
!911 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !903)
!912 = !DILocation(line: 65, scope: !908, inlinedAt: !911)
!913 = !DILocation(line: 307, scope: !897, inlinedAt: !903)
!914 = !DILocalVariable(name: "val", arg: 2, scope: !915, file: !6, line: 195, type: !22)
!915 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "?atomic_fetch_and_release@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_KPEA_K_K@Z", scope: !471, file: !6, line: 195, type: !687, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !916)
!916 = !{!914, !917}
!917 = !DILocalVariable(name: "addr", arg: 1, scope: !915, file: !6, line: 195, type: !298)
!918 = !DILocation(line: 0, scope: !915, inlinedAt: !919)
!919 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !903)
!920 = !DILocation(line: 196, scope: !915, inlinedAt: !919)
!921 = !DILocation(line: 310, scope: !897, inlinedAt: !903)
!922 = !DILocation(line: 313, scope: !897, inlinedAt: !903)
!923 = !DILocation(line: 566, scope: !904)
!924 = !DILocation(line: 314, scope: !925, inlinedAt: !903)
!925 = distinct !DILexicalBlock(scope: !926, file: !6, line: 313)
!926 = distinct !DILexicalBlock(scope: !897, file: !6, line: 313)
!927 = !DILocation(line: 315, scope: !925, inlinedAt: !903)
!928 = !DILocation(line: 567, scope: !905)
!929 = !DILocation(line: 0, scope: !897, inlinedAt: !930)
!930 = distinct !DILocation(line: 568, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !6, line: 567)
!932 = distinct !DILexicalBlock(scope: !905, file: !6, line: 567)
!933 = !DILocation(line: 305, scope: !897, inlinedAt: !930)
!934 = !DILocation(line: 0, scope: !908, inlinedAt: !935)
!935 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !930)
!936 = !DILocation(line: 65, scope: !908, inlinedAt: !935)
!937 = !DILocation(line: 307, scope: !897, inlinedAt: !930)
!938 = !DILocation(line: 0, scope: !915, inlinedAt: !939)
!939 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !930)
!940 = !DILocation(line: 196, scope: !915, inlinedAt: !939)
!941 = !DILocation(line: 310, scope: !897, inlinedAt: !930)
!942 = !DILocation(line: 313, scope: !897, inlinedAt: !930)
!943 = !DILocation(line: 568, scope: !931)
!944 = !DILocation(line: 314, scope: !925, inlinedAt: !930)
!945 = !DILocation(line: 315, scope: !925, inlinedAt: !930)
!946 = !DILocalVariable(name: "mutex", arg: 1, scope: !947, file: !6, line: 67, type: !43)
!947 = distinct !DISubprogram(name: "if_tsan_post_unlock", linkageName: "?if_tsan_post_unlock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !471, file: !6, line: 67, type: !171, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !948)
!948 = !{!946}
!949 = !DILocation(line: 0, scope: !947, inlinedAt: !950)
!950 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !930)
!951 = !DILocation(line: 68, scope: !947, inlinedAt: !950)
!952 = !DILocation(line: 569, scope: !931)
!953 = !DILocation(line: 0, scope: !897, inlinedAt: !954)
!954 = distinct !DILocation(line: 569, scope: !931)
!955 = !DILocation(line: 305, scope: !897, inlinedAt: !954)
!956 = !DILocation(line: 0, scope: !908, inlinedAt: !957)
!957 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !954)
!958 = !DILocation(line: 65, scope: !908, inlinedAt: !957)
!959 = !DILocation(line: 307, scope: !897, inlinedAt: !954)
!960 = !DILocation(line: 0, scope: !915, inlinedAt: !961)
!961 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !954)
!962 = !DILocation(line: 196, scope: !915, inlinedAt: !961)
!963 = !DILocation(line: 310, scope: !897, inlinedAt: !954)
!964 = !DILocation(line: 313, scope: !897, inlinedAt: !954)
!965 = !DILocation(line: 314, scope: !925, inlinedAt: !954)
!966 = !DILocation(line: 315, scope: !925, inlinedAt: !954)
!967 = !DILocation(line: 0, scope: !897, inlinedAt: !968)
!968 = distinct !DILocation(line: 571, scope: !969)
!969 = distinct !DILexicalBlock(scope: !932, file: !6, line: 570)
!970 = !DILocation(line: 305, scope: !897, inlinedAt: !968)
!971 = !DILocation(line: 0, scope: !908, inlinedAt: !972)
!972 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !968)
!973 = !DILocation(line: 65, scope: !908, inlinedAt: !972)
!974 = !DILocation(line: 307, scope: !897, inlinedAt: !968)
!975 = !DILocation(line: 0, scope: !915, inlinedAt: !976)
!976 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !968)
!977 = !DILocation(line: 196, scope: !915, inlinedAt: !976)
!978 = !DILocation(line: 310, scope: !897, inlinedAt: !968)
!979 = !DILocation(line: 313, scope: !897, inlinedAt: !968)
!980 = !DILocation(line: 571, scope: !969)
!981 = !DILocation(line: 314, scope: !925, inlinedAt: !968)
!982 = !DILocation(line: 315, scope: !925, inlinedAt: !968)
!983 = !DILocation(line: 0, scope: !947, inlinedAt: !984)
!984 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !968)
!985 = !DILocation(line: 68, scope: !947, inlinedAt: !984)
!986 = !DILocation(line: 572, scope: !969)
!987 = !DILocation(line: 0, scope: !897, inlinedAt: !988)
!988 = distinct !DILocation(line: 572, scope: !969)
!989 = !DILocation(line: 305, scope: !897, inlinedAt: !988)
!990 = !DILocation(line: 0, scope: !908, inlinedAt: !991)
!991 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !988)
!992 = !DILocation(line: 65, scope: !908, inlinedAt: !991)
!993 = !DILocation(line: 307, scope: !897, inlinedAt: !988)
!994 = !DILocation(line: 0, scope: !915, inlinedAt: !995)
!995 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !988)
!996 = !DILocation(line: 196, scope: !915, inlinedAt: !995)
!997 = !DILocation(line: 310, scope: !897, inlinedAt: !988)
!998 = !DILocation(line: 313, scope: !897, inlinedAt: !988)
!999 = !DILocation(line: 314, scope: !925, inlinedAt: !988)
!1000 = !DILocation(line: 315, scope: !925, inlinedAt: !988)
!1001 = !DILocation(line: 0, scope: !905)
!1002 = !DILocation(line: 574, scope: !885)
!1003 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 583, type: !271, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1004)
!1004 = !{!1005, !1006}
!1005 = !DILocalVariable(name: "action", arg: 2, scope: !1003, file: !6, line: 583, type: !273)
!1006 = !DILocalVariable(name: "control", arg: 1, scope: !1003, file: !6, line: 583, type: !43)
!1007 = !DILocation(line: 0, scope: !1003)
!1008 = !DILocation(line: 584, scope: !1003)
!1009 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1010)
!1010 = !{!1011}
!1011 = !DILocalVariable(name: "control", arg: 1, scope: !1009, file: !6, line: 586, type: !43)
!1012 = !DILocation(line: 0, scope: !1009)
!1013 = !DILocation(line: 586, scope: !1009)
!1014 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 587, type: !285, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1014, file: !6, line: 587, type: !64)
!1017 = !DILocalVariable(name: "unparked", arg: 2, scope: !1014, file: !6, line: 587, type: !29)
!1018 = !DILocalVariable(name: "control", arg: 1, scope: !1014, file: !6, line: 587, type: !43)
!1019 = !DILocation(line: 0, scope: !1014)
!1020 = !DILocation(line: 588, scope: !1014)
!1021 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 590, type: !289, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1022)
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1021, file: !6, line: 590, type: !64)
!1024 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1021, file: !6, line: 590, type: !64)
!1025 = !DILocalVariable(name: "action", arg: 2, scope: !1021, file: !6, line: 590, type: !291)
!1026 = !DILocalVariable(name: "control", arg: 1, scope: !1021, file: !6, line: 590, type: !43)
!1027 = !DILocation(line: 0, scope: !1021)
!1028 = !DILocation(line: 590, scope: !1021)
!1029 = distinct !DISubprogram(name: "park", linkageName: "?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z", scope: !2, file: !6, line: 605, type: !1030, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1033)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!22, !22, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !267, size: 64)
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DILocalVariable(name: "control", arg: 2, scope: !1029, file: !6, line: 605, type: !1032)
!1035 = !DILocalVariable(name: "addr", arg: 1, scope: !1029, file: !6, line: 605, type: !22)
!1036 = !DILocalVariable(name: "queue_data", scope: !1029, file: !6, line: 606, type: !248)
!1037 = !DILocalVariable(name: "bucket", scope: !1029, file: !6, line: 608, type: !719)
!1038 = !DILocalVariable(name: "action", scope: !1029, file: !6, line: 610, type: !274)
!1039 = !DILocation(line: 0, scope: !1029)
!1040 = !DILocation(line: 606, scope: !1029)
!1041 = !DILocalVariable(name: "this", arg: 1, scope: !1042, type: !247, flags: DIFlagArtificial | DIFlagObjectPointer)
!1042 = distinct !DISubprogram(name: "queue_data", linkageName: "??0queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !248, file: !6, line: 455, type: !255, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !254, retainedNodes: !1043)
!1043 = !{!1041}
!1044 = !DILocation(line: 0, scope: !1042, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 606, scope: !1029)
!1046 = !DILocation(line: 0, scope: !521, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 455, scope: !1042, inlinedAt: !1045)
!1048 = !DILocation(line: 97, scope: !521, inlinedAt: !1047)
!1049 = !DILocation(line: 98, scope: !533, inlinedAt: !1047)
!1050 = !DILocation(line: 99, scope: !533, inlinedAt: !1047)
!1051 = !DILocation(line: 455, scope: !1042, inlinedAt: !1045)
!1052 = !{!1053, !530, i64 56}
!1053 = !{!"?AUqueue_data@Synchronization@Internal@Runtime@Halide@@", !528, i64 0, !530, i64 56, !400, i64 64, !530, i64 72}
!1054 = !{!1053, !400, i64 64}
!1055 = !{!1053, !530, i64 72}
!1056 = !DILocation(line: 608, scope: !1029)
!1057 = !DILocation(line: 610, scope: !1029)
!1058 = !DILocalVariable(name: "this", arg: 1, scope: !1059, type: !1061, flags: DIFlagArtificial | DIFlagObjectPointer)
!1059 = distinct !DISubprogram(name: "validate_action", linkageName: "??0validate_action@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !274, file: !6, line: 580, type: !279, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !278, retainedNodes: !1060)
!1060 = !{!1058}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1062 = !DILocation(line: 0, scope: !1059, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 610, scope: !1029)
!1064 = !DILocation(line: 580, scope: !1059, inlinedAt: !1063)
!1065 = !{!1066, !531, i64 0}
!1066 = !{!"?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@", !531, i64 0, !530, i64 8}
!1067 = !{!1066, !530, i64 8}
!1068 = !DILocation(line: 611, scope: !1029)
!1069 = !{!1070, !400, i64 0}
!1070 = !{!"?AUparking_control@Synchronization@Internal@Runtime@Halide@@", !400, i64 0, !400, i64 8, !400, i64 16, !400, i64 24}
!1071 = !DILocation(line: 0, scope: !897, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 612, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !6, line: 611)
!1074 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 611)
!1075 = !DILocation(line: 305, scope: !897, inlinedAt: !1072)
!1076 = !DILocation(line: 0, scope: !908, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !1072)
!1078 = !DILocation(line: 65, scope: !908, inlinedAt: !1077)
!1079 = !DILocation(line: 307, scope: !897, inlinedAt: !1072)
!1080 = !DILocation(line: 0, scope: !915, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !1072)
!1082 = !DILocation(line: 196, scope: !915, inlinedAt: !1081)
!1083 = !DILocation(line: 310, scope: !897, inlinedAt: !1072)
!1084 = !DILocation(line: 313, scope: !897, inlinedAt: !1072)
!1085 = !DILocation(line: 612, scope: !1073)
!1086 = !DILocation(line: 314, scope: !925, inlinedAt: !1072)
!1087 = !DILocation(line: 315, scope: !925, inlinedAt: !1072)
!1088 = !DILocation(line: 0, scope: !947, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !1072)
!1090 = !DILocation(line: 68, scope: !947, inlinedAt: !1089)
!1091 = !DILocation(line: 613, scope: !1073)
!1092 = !DILocation(line: 616, scope: !1029)
!1093 = !DILocation(line: 617, scope: !1029)
!1094 = !DILocation(line: 0, scope: !541, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 618, scope: !1029)
!1096 = !DILocation(line: 108, scope: !541, inlinedAt: !1095)
!1097 = !DILocation(line: 619, scope: !1029)
!1098 = !{!1099, !400, i64 8}
!1099 = !{!"?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@", !1100, i64 0, !400, i64 8, !400, i64 16}
!1100 = !{!"?AVword_lock@Synchronization@Internal@Runtime@Halide@@", !530, i64 0}
!1101 = !DILocation(line: 0, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1029, file: !6, line: 619)
!1103 = !DILocation(line: 624, scope: !1029)
!1104 = !{!1099, !400, i64 16}
!1105 = !DILocation(line: 0, scope: !897, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 625, scope: !1029)
!1107 = !DILocation(line: 305, scope: !897, inlinedAt: !1106)
!1108 = !DILocation(line: 0, scope: !908, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !1106)
!1110 = !DILocation(line: 65, scope: !908, inlinedAt: !1109)
!1111 = !DILocation(line: 307, scope: !897, inlinedAt: !1106)
!1112 = !DILocation(line: 0, scope: !915, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !1106)
!1114 = !DILocation(line: 196, scope: !915, inlinedAt: !1113)
!1115 = !DILocation(line: 310, scope: !897, inlinedAt: !1106)
!1116 = !DILocation(line: 313, scope: !897, inlinedAt: !1106)
!1117 = !DILocation(line: 625, scope: !1029)
!1118 = !DILocation(line: 314, scope: !925, inlinedAt: !1106)
!1119 = !DILocation(line: 315, scope: !925, inlinedAt: !1106)
!1120 = !DILocation(line: 0, scope: !947, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !1106)
!1122 = !DILocation(line: 68, scope: !947, inlinedAt: !1121)
!1123 = !DILocation(line: 627, scope: !1029)
!1124 = !{!1070, !400, i64 8}
!1125 = !DILocation(line: 0, scope: !566, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 629, scope: !1029)
!1127 = !DILocation(line: 112, scope: !566, inlinedAt: !1126)
!1128 = !DILocation(line: 113, scope: !566, inlinedAt: !1126)
!1129 = !DILocation(line: 114, scope: !576, inlinedAt: !1126)
!1130 = distinct !{!1130, !1128, !1131, !579}
!1131 = !DILocation(line: 115, scope: !566, inlinedAt: !1126)
!1132 = !DILocation(line: 116, scope: !566, inlinedAt: !1126)
!1133 = !DILocation(line: 631, scope: !1029)
!1134 = !{!530, !530, i64 0}
!1135 = !DILocation(line: 634, scope: !1029)
!1136 = !DILocalVariable(name: "this", arg: 1, scope: !1137, type: !247, flags: DIFlagArtificial | DIFlagObjectPointer)
!1137 = distinct !DISubprogram(name: "~queue_data", linkageName: "??1queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !248, file: !6, line: 457, type: !255, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !258, retainedNodes: !1138)
!1138 = !{!1136}
!1139 = !DILocation(line: 0, scope: !1137, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 634, scope: !1029)
!1141 = !DILocation(line: 0, scope: !591, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 457, scope: !1143, inlinedAt: !1140)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !6, line: 457)
!1144 = !DILocation(line: 104, scope: !597, inlinedAt: !1142)
!1145 = distinct !DISubprogram(name: "unpark_one", linkageName: "?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z", scope: !2, file: !6, line: 636, type: !1030, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1155, !1158, !1159, !1162}
!1147 = !DILocalVariable(name: "control", arg: 2, scope: !1145, file: !6, line: 636, type: !1032)
!1148 = !DILocalVariable(name: "addr", arg: 1, scope: !1145, file: !6, line: 636, type: !22)
!1149 = !DILocalVariable(name: "bucket", scope: !1145, file: !6, line: 637, type: !719)
!1150 = !DILocalVariable(name: "data_location", scope: !1145, file: !6, line: 639, type: !262)
!1151 = !DILocalVariable(name: "prev", scope: !1145, file: !6, line: 640, type: !247)
!1152 = !DILocalVariable(name: "data", scope: !1145, file: !6, line: 641, type: !247)
!1153 = !DILocalVariable(name: "cur_addr", scope: !1154, file: !6, line: 643, type: !22)
!1154 = distinct !DILexicalBlock(scope: !1145, file: !6, line: 642)
!1155 = !DILocalVariable(name: "next", scope: !1156, file: !6, line: 646, type: !247)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !6, line: 645)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !6, line: 645)
!1158 = !DILocalVariable(name: "more_waiters", scope: !1156, file: !6, line: 649, type: !64)
!1159 = !DILocalVariable(name: "data2", scope: !1160, file: !6, line: 654, type: !247)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !6, line: 653)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !6, line: 651)
!1162 = !DILocalVariable(name: "cur_addr2", scope: !1163, file: !6, line: 656, type: !22)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !6, line: 655)
!1164 = !DILocation(line: 0, scope: !1145)
!1165 = !DILocation(line: 637, scope: !1145)
!1166 = !DILocation(line: 639, scope: !1145)
!1167 = !DILocation(line: 641, scope: !1145)
!1168 = !DILocation(line: 642, scope: !1145)
!1169 = !DILocation(line: 640, scope: !1145)
!1170 = !DILocation(line: 644, scope: !1154)
!1171 = !DILocation(line: 0, scope: !470, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 644, scope: !1154)
!1173 = !DILocation(line: 201, scope: !470, inlinedAt: !1172)
!1174 = !DILocation(line: 0, scope: !1154)
!1175 = !DILocation(line: 645, scope: !1154)
!1176 = !DILocation(line: 0, scope: !1157)
!1177 = !DILocation(line: 0, scope: !1156)
!1178 = !DILocation(line: 647, scope: !1156)
!1179 = !DILocation(line: 651, scope: !1156)
!1180 = !DILocation(line: 0, scope: !1160)
!1181 = !DILocation(line: 655, scope: !1160)
!1182 = !DILocation(line: 652, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1161, file: !6, line: 651)
!1184 = !DILocation(line: 653, scope: !1183)
!1185 = !DILocation(line: 657, scope: !1163)
!1186 = !DILocation(line: 0, scope: !470, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 657, scope: !1163)
!1188 = !DILocation(line: 201, scope: !470, inlinedAt: !1187)
!1189 = !DILocation(line: 0, scope: !1163)
!1190 = !DILocation(line: 658, scope: !1163)
!1191 = !DILocation(line: 659, scope: !1163)
!1192 = distinct !{!1192, !1181, !1193, !579}
!1193 = !DILocation(line: 660, scope: !1160)
!1194 = !DILocation(line: 663, scope: !1156)
!1195 = !DILocation(line: 649, scope: !1156)
!1196 = !{!1070, !400, i64 16}
!1197 = !DILocation(line: 0, scope: !696, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 665, scope: !1156)
!1199 = !DILocation(line: 120, scope: !696, inlinedAt: !1198)
!1200 = !DILocation(line: 0, scope: !897, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 666, scope: !1156)
!1202 = !DILocation(line: 0, scope: !908, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !1201)
!1204 = !DILocation(line: 65, scope: !908, inlinedAt: !1203)
!1205 = !DILocation(line: 0, scope: !915, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !1201)
!1207 = !DILocation(line: 196, scope: !915, inlinedAt: !1206)
!1208 = !DILocation(line: 310, scope: !897, inlinedAt: !1201)
!1209 = !DILocation(line: 313, scope: !897, inlinedAt: !1201)
!1210 = !DILocation(line: 314, scope: !925, inlinedAt: !1201)
!1211 = !DILocation(line: 315, scope: !925, inlinedAt: !1201)
!1212 = !DILocation(line: 0, scope: !947, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !1201)
!1214 = !DILocation(line: 68, scope: !947, inlinedAt: !1213)
!1215 = !DILocation(line: 0, scope: !702, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 667, scope: !1156)
!1217 = !DILocation(line: 124, scope: !702, inlinedAt: !1216)
!1218 = !DILocation(line: 125, scope: !702, inlinedAt: !1216)
!1219 = !DILocation(line: 0, scope: !709, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 668, scope: !1156)
!1221 = !DILocation(line: 129, scope: !709, inlinedAt: !1220)
!1222 = distinct !{!1222, !1168, !1223, !579}
!1223 = !DILocation(line: 677, scope: !1145)
!1224 = !DILocation(line: 679, scope: !1145)
!1225 = !DILocation(line: 0, scope: !897, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 681, scope: !1145)
!1227 = !DILocation(line: 0, scope: !908, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !1226)
!1229 = !DILocation(line: 65, scope: !908, inlinedAt: !1228)
!1230 = !DILocation(line: 0, scope: !915, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !1226)
!1232 = !DILocation(line: 196, scope: !915, inlinedAt: !1231)
!1233 = !DILocation(line: 310, scope: !897, inlinedAt: !1226)
!1234 = !DILocation(line: 313, scope: !897, inlinedAt: !1226)
!1235 = !DILocation(line: 314, scope: !925, inlinedAt: !1226)
!1236 = !DILocation(line: 315, scope: !925, inlinedAt: !1226)
!1237 = !DILocation(line: 0, scope: !947, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !1226)
!1239 = !DILocation(line: 68, scope: !947, inlinedAt: !1238)
!1240 = !DILocation(line: 684, scope: !1145)
!1241 = !DILocation(line: 685, scope: !1145)
!1242 = distinct !DISubprogram(name: "unpark_all", linkageName: "?unpark_all@Synchronization@Internal@Runtime@Halide@@YA_K_K0@Z", scope: !2, file: !6, line: 687, type: !1243, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!22, !22, !22}
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1255, !1259, !1260, !1261, !1263, !1264, !1269, !1271, !1273}
!1246 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1242, file: !6, line: 687, type: !22)
!1247 = !DILocalVariable(name: "addr", arg: 1, scope: !1242, file: !6, line: 687, type: !22)
!1248 = !DILocalVariable(name: "bucket", scope: !1242, file: !6, line: 688, type: !719)
!1249 = !DILocalVariable(name: "data_location", scope: !1242, file: !6, line: 690, type: !262)
!1250 = !DILocalVariable(name: "prev", scope: !1242, file: !6, line: 691, type: !247)
!1251 = !DILocalVariable(name: "data", scope: !1242, file: !6, line: 692, type: !247)
!1252 = !DILocalVariable(name: "waiters", scope: !1242, file: !6, line: 693, type: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !1254)
!1254 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1255 = !DILocalVariable(name: "temp_list_storage", scope: !1242, file: !6, line: 694, type: !1256)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1024, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 16)
!1259 = !DILocalVariable(name: "temp_list", scope: !1242, file: !6, line: 695, type: !262)
!1260 = !DILocalVariable(name: "max_waiters", scope: !1242, file: !6, line: 696, type: !1253)
!1261 = !DILocalVariable(name: "cur_addr", scope: !1262, file: !6, line: 699, type: !22)
!1262 = distinct !DILexicalBlock(scope: !1242, file: !6, line: 698)
!1263 = !DILocalVariable(name: "next", scope: !1262, file: !6, line: 702, type: !247)
!1264 = !DILocalVariable(name: "temp", scope: !1265, file: !6, line: 711, type: !262)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !6, line: 710)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 710)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !6, line: 703)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !6, line: 703)
!1269 = !DILocalVariable(name: "i", scope: !1270, file: !6, line: 713, type: !1253)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !6, line: 713)
!1271 = !DILocalVariable(name: "i", scope: !1272, file: !6, line: 737, type: !1253)
!1272 = distinct !DILexicalBlock(scope: !1242, file: !6, line: 737)
!1273 = !DILocalVariable(name: "i", scope: !1274, file: !6, line: 742, type: !1253)
!1274 = distinct !DILexicalBlock(scope: !1242, file: !6, line: 742)
!1275 = !DILocation(line: 0, scope: !1242)
!1276 = !DILocation(line: 688, scope: !1242)
!1277 = !DILocation(line: 690, scope: !1242)
!1278 = !DILocation(line: 692, scope: !1242)
!1279 = !DILocation(line: 694, scope: !1242)
!1280 = !DILocation(line: 695, scope: !1242)
!1281 = !DILocation(line: 698, scope: !1242)
!1282 = !DILocation(line: 700, scope: !1262)
!1283 = !DILocation(line: 0, scope: !470, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 700, scope: !1262)
!1285 = !DILocation(line: 201, scope: !470, inlinedAt: !1284)
!1286 = !DILocation(line: 702, scope: !1262)
!1287 = !DILocation(line: 0, scope: !1262)
!1288 = !DILocation(line: 703, scope: !1262)
!1289 = !DILocation(line: 0, scope: !1268)
!1290 = !DILocation(line: 706, scope: !1267)
!1291 = !DILocation(line: 707, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !6, line: 706)
!1293 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 706)
!1294 = !DILocation(line: 708, scope: !1292)
!1295 = !DILocation(line: 710, scope: !1267)
!1296 = !DILocation(line: 0, scope: !1265)
!1297 = !DILocation(line: 712, scope: !1265)
!1298 = !DILocation(line: 0, scope: !1270)
!1299 = !DILocation(line: 713, scope: !1270)
!1300 = !DILocation(line: 716, scope: !1265)
!1301 = !DILocation(line: 717, scope: !1265)
!1302 = !DILocation(line: 714, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !6, line: 713)
!1304 = distinct !DILexicalBlock(scope: !1270, file: !6, line: 713)
!1305 = !DILocation(line: 713, scope: !1304)
!1306 = distinct !{!1306, !1299, !1307, !579}
!1307 = !DILocation(line: 715, scope: !1270)
!1308 = !DILocation(line: 718, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !6, line: 717)
!1310 = distinct !DILexicalBlock(scope: !1265, file: !6, line: 717)
!1311 = !DILocation(line: 719, scope: !1309)
!1312 = !DILocation(line: 722, scope: !1267)
!1313 = !DILocation(line: 724, scope: !1267)
!1314 = !DILocation(line: 0, scope: !696, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 725, scope: !1267)
!1316 = !DILocation(line: 120, scope: !696, inlinedAt: !1315)
!1317 = !DILocation(line: 728, scope: !1267)
!1318 = distinct !{!1318, !1281, !1319, !579}
!1319 = !DILocation(line: 733, scope: !1242)
!1320 = !DILocation(line: 0, scope: !897, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 735, scope: !1242)
!1322 = !DILocation(line: 305, scope: !897, inlinedAt: !1321)
!1323 = !DILocation(line: 0, scope: !908, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 305, scope: !897, inlinedAt: !1321)
!1325 = !DILocation(line: 65, scope: !908, inlinedAt: !1324)
!1326 = !DILocation(line: 307, scope: !897, inlinedAt: !1321)
!1327 = !DILocation(line: 0, scope: !915, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 307, scope: !897, inlinedAt: !1321)
!1329 = !DILocation(line: 196, scope: !915, inlinedAt: !1328)
!1330 = !DILocation(line: 310, scope: !897, inlinedAt: !1321)
!1331 = !DILocation(line: 313, scope: !897, inlinedAt: !1321)
!1332 = !DILocation(line: 735, scope: !1242)
!1333 = !DILocation(line: 314, scope: !925, inlinedAt: !1321)
!1334 = !DILocation(line: 315, scope: !925, inlinedAt: !1321)
!1335 = !DILocation(line: 0, scope: !947, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 317, scope: !897, inlinedAt: !1321)
!1337 = !DILocation(line: 68, scope: !947, inlinedAt: !1336)
!1338 = !DILocation(line: 0, scope: !1272)
!1339 = !DILocation(line: 737, scope: !1272)
!1340 = !DILocation(line: 0, scope: !1274)
!1341 = !DILocation(line: 742, scope: !1274)
!1342 = !DILocation(line: 738, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !6, line: 737)
!1344 = distinct !DILexicalBlock(scope: !1272, file: !6, line: 737)
!1345 = !DILocation(line: 0, scope: !702, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 738, scope: !1343)
!1347 = !DILocation(line: 124, scope: !702, inlinedAt: !1346)
!1348 = !DILocation(line: 125, scope: !702, inlinedAt: !1346)
!1349 = !DILocation(line: 737, scope: !1344)
!1350 = distinct !{!1350, !1339, !1351, !579}
!1351 = !DILocation(line: 739, scope: !1272)
!1352 = !DILocation(line: 746, scope: !1242)
!1353 = !DILocation(line: 743, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !6, line: 742)
!1355 = distinct !DILexicalBlock(scope: !1274, file: !6, line: 742)
!1356 = !DILocation(line: 0, scope: !709, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 743, scope: !1354)
!1358 = !DILocation(line: 129, scope: !709, inlinedAt: !1357)
!1359 = !DILocation(line: 742, scope: !1355)
!1360 = distinct !{!1360, !1341, !1361, !579}
!1361 = !DILocation(line: 744, scope: !1274)
!1362 = !DILocation(line: 747, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !6, line: 746)
!1364 = distinct !DILexicalBlock(scope: !1242, file: !6, line: 746)
!1365 = !DILocation(line: 748, scope: !1363)
!1366 = !DILocation(line: 751, scope: !1242)
!1367 = !DILocation(line: 750, scope: !1242)
!1368 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z", scope: !2, file: !6, line: 753, type: !1369, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!29, !22, !22, !1032, !22}
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1386}
!1372 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1368, file: !6, line: 753, type: !22)
!1373 = !DILocalVariable(name: "control", arg: 3, scope: !1368, file: !6, line: 753, type: !1032)
!1374 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1368, file: !6, line: 753, type: !22)
!1375 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1368, file: !6, line: 753, type: !22)
!1376 = !DILocalVariable(name: "buckets", scope: !1368, file: !6, line: 754, type: !771)
!1377 = !DILocalVariable(name: "action", scope: !1368, file: !6, line: 756, type: !274)
!1378 = !DILocalVariable(name: "data_location", scope: !1368, file: !6, line: 762, type: !262)
!1379 = !DILocalVariable(name: "prev", scope: !1368, file: !6, line: 763, type: !247)
!1380 = !DILocalVariable(name: "data", scope: !1368, file: !6, line: 764, type: !247)
!1381 = !DILocalVariable(name: "requeue", scope: !1368, file: !6, line: 765, type: !247)
!1382 = !DILocalVariable(name: "requeue_tail", scope: !1368, file: !6, line: 766, type: !247)
!1383 = !DILocalVariable(name: "wakeup", scope: !1368, file: !6, line: 767, type: !247)
!1384 = !DILocalVariable(name: "cur_addr", scope: !1385, file: !6, line: 770, type: !22)
!1385 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 769)
!1386 = !DILocalVariable(name: "next", scope: !1385, file: !6, line: 773, type: !247)
!1387 = !DILocation(line: 0, scope: !1368)
!1388 = !DILocation(line: 754, scope: !1368)
!1389 = !DILocation(line: 756, scope: !1368)
!1390 = !DILocation(line: 0, scope: !1059, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 756, scope: !1368)
!1392 = !DILocation(line: 580, scope: !1059, inlinedAt: !1391)
!1393 = !DILocation(line: 757, scope: !1368)
!1394 = !DILocation(line: 758, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !6, line: 757)
!1396 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 757)
!1397 = !DILocation(line: 759, scope: !1395)
!1398 = !DILocation(line: 762, scope: !1368)
!1399 = !DILocation(line: 764, scope: !1368)
!1400 = !DILocation(line: 769, scope: !1368)
!1401 = !DILocation(line: 771, scope: !1385)
!1402 = !DILocation(line: 0, scope: !470, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 771, scope: !1385)
!1404 = !DILocation(line: 201, scope: !470, inlinedAt: !1403)
!1405 = !DILocation(line: 773, scope: !1385)
!1406 = !DILocation(line: 0, scope: !1385)
!1407 = !DILocation(line: 774, scope: !1385)
!1408 = !DILocation(line: 775, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !6, line: 774)
!1410 = distinct !DILexicalBlock(scope: !1385, file: !6, line: 774)
!1411 = !DILocation(line: 777, scope: !1409)
!1412 = !DILocation(line: 778, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !6, line: 777)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !6, line: 777)
!1415 = !DILocation(line: 779, scope: !1413)
!1416 = !DILocation(line: 781, scope: !1409)
!1417 = !DILocation(line: 784, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !6, line: 783)
!1419 = distinct !DILexicalBlock(scope: !1409, file: !6, line: 781)
!1420 = !DILocation(line: 787, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !6, line: 786)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !6, line: 784)
!1423 = !DILocation(line: 788, scope: !1421)
!1424 = !DILocalVariable(name: "val", arg: 2, scope: !1425, file: !6, line: 213, type: !298)
!1425 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "?atomic_store_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEA_K0@Z", scope: !471, file: !6, line: 213, type: !1426, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !298, !298}
!1428 = !{!1424, !1429}
!1429 = !DILocalVariable(name: "addr", arg: 1, scope: !1425, file: !6, line: 213, type: !298)
!1430 = !DILocation(line: 0, scope: !1425, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 791, scope: !1418)
!1432 = !DILocation(line: 214, scope: !1425, inlinedAt: !1431)
!1433 = !DILocation(line: 792, scope: !1418)
!1434 = !DILocation(line: 765, scope: !1368)
!1435 = !DILocation(line: 766, scope: !1368)
!1436 = distinct !{!1436, !1400, !1437, !579}
!1437 = !DILocation(line: 800, scope: !1368)
!1438 = !DILocation(line: 802, scope: !1368)
!1439 = !DILocation(line: 803, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !6, line: 802)
!1441 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 802)
!1442 = !DILocation(line: 804, scope: !1440)
!1443 = !DILocation(line: 807, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !6, line: 806)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !6, line: 804)
!1446 = !DILocation(line: 808, scope: !1444)
!1447 = !DILocation(line: 0, scope: !1445)
!1448 = !DILocation(line: 809, scope: !1440)
!1449 = !DILocation(line: 810, scope: !1440)
!1450 = !DILocation(line: 812, scope: !1368)
!1451 = !{!1070, !400, i64 24}
!1452 = !DILocation(line: 814, scope: !1368)
!1453 = !DILocation(line: 815, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !6, line: 814)
!1455 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 814)
!1456 = !DILocation(line: 0, scope: !696, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 816, scope: !1454)
!1458 = !DILocation(line: 120, scope: !696, inlinedAt: !1457)
!1459 = !DILocation(line: 817, scope: !1454)
!1460 = !DILocation(line: 0, scope: !702, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 818, scope: !1454)
!1462 = !DILocation(line: 124, scope: !702, inlinedAt: !1461)
!1463 = !DILocation(line: 125, scope: !702, inlinedAt: !1461)
!1464 = !DILocation(line: 0, scope: !709, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 819, scope: !1454)
!1466 = !DILocation(line: 129, scope: !709, inlinedAt: !1465)
!1467 = !DILocation(line: 820, scope: !1454)
!1468 = !DILocation(line: 821, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1455, file: !6, line: 820)
!1470 = !DILocation(line: 822, scope: !1469)
!1471 = !DILocation(line: 824, scope: !1368)
!1472 = !DILocation(line: 825, scope: !1368)
!1473 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 840, type: !271, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1474)
!1474 = !{!1475, !1476, !1477, !1478}
!1475 = !DILocalVariable(name: "action", arg: 2, scope: !1473, file: !6, line: 840, type: !273)
!1476 = !DILocalVariable(name: "control", arg: 1, scope: !1473, file: !6, line: 840, type: !43)
!1477 = !DILocalVariable(name: "mutex_control", scope: !1473, file: !6, line: 841, type: !263)
!1478 = !DILocalVariable(name: "result", scope: !1473, file: !6, line: 843, type: !22)
!1479 = !DILocation(line: 0, scope: !1473)
!1480 = !DILocation(line: 844, scope: !1473)
!1481 = !{!1482, !400, i64 32}
!1482 = !{!"?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@", !400, i64 32}
!1483 = !DILocation(line: 0, scope: !470, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 844, scope: !1473)
!1485 = !DILocation(line: 201, scope: !470, inlinedAt: !1484)
!1486 = !DILocation(line: 845, scope: !1473)
!1487 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 849, type: !285, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1488)
!1488 = !{!1489, !1490, !1491, !1492, !1493}
!1489 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1487, file: !6, line: 849, type: !64)
!1490 = !DILocalVariable(name: "unparked", arg: 2, scope: !1487, file: !6, line: 849, type: !29)
!1491 = !DILocalVariable(name: "control", arg: 1, scope: !1487, file: !6, line: 849, type: !43)
!1492 = !DILocalVariable(name: "mutex_control", scope: !1487, file: !6, line: 850, type: !263)
!1493 = !DILocalVariable(name: "return_state", scope: !1487, file: !6, line: 853, type: !22)
!1494 = !DILocation(line: 0, scope: !1487)
!1495 = !DILocation(line: 853, scope: !1487)
!1496 = !DILocation(line: 854, scope: !1487)
!1497 = !DILocalVariable(name: "val", arg: 2, scope: !1498, file: !6, line: 218, type: !474)
!1498 = distinct !DISubprogram(name: "atomic_store_release<unsigned long long>", linkageName: "??$atomic_store_release@_K@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEA_K0@Z", scope: !471, file: !6, line: 218, type: !472, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !477, retainedNodes: !1499)
!1499 = !{!1497, !1500}
!1500 = !DILocalVariable(name: "addr", arg: 1, scope: !1498, file: !6, line: 218, type: !474)
!1501 = !DILocation(line: 0, scope: !1498, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 854, scope: !1487)
!1503 = !DILocation(line: 219, scope: !1498, inlinedAt: !1502)
!1504 = !DILocation(line: 856, scope: !1487)
!1505 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 968, type: !285, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1511}
!1507 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1505, file: !6, line: 968, type: !64)
!1508 = !DILocalVariable(name: "unparked", arg: 2, scope: !1505, file: !6, line: 968, type: !29)
!1509 = !DILocalVariable(name: "control", arg: 1, scope: !1505, file: !6, line: 968, type: !43)
!1510 = !DILocalVariable(name: "signal_control", scope: !1505, file: !6, line: 969, type: !303)
!1511 = !DILocalVariable(name: "val", scope: !1512, file: !6, line: 972, type: !22)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !6, line: 971)
!1513 = distinct !DILexicalBlock(scope: !1505, file: !6, line: 971)
!1514 = !DILocation(line: 0, scope: !1505)
!1515 = !DILocation(line: 971, scope: !1505)
!1516 = !DILocation(line: 0, scope: !1512)
!1517 = !DILocation(line: 973, scope: !1512)
!1518 = !{!1519, !400, i64 32}
!1519 = !{!"?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@", !400, i64 32, !400, i64 40}
!1520 = !DILocation(line: 0, scope: !1425, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 973, scope: !1512)
!1522 = !DILocation(line: 214, scope: !1425, inlinedAt: !1521)
!1523 = !DILocation(line: 974, scope: !1512)
!1524 = !DILocation(line: 979, scope: !1505)
!1525 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 996, type: !271, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529, !1530}
!1527 = !DILocalVariable(name: "action", arg: 2, scope: !1525, file: !6, line: 996, type: !273)
!1528 = !DILocalVariable(name: "control", arg: 1, scope: !1525, file: !6, line: 996, type: !43)
!1529 = !DILocalVariable(name: "broadcast_control", scope: !1525, file: !6, line: 997, type: !328)
!1530 = !DILocalVariable(name: "val", scope: !1525, file: !6, line: 999, type: !22)
!1531 = !DILocation(line: 0, scope: !1525)
!1532 = !DILocation(line: 1000, scope: !1525)
!1533 = !{!1534, !400, i64 32}
!1534 = !{!"?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@", !400, i64 32, !400, i64 40}
!1535 = !DILocation(line: 0, scope: !470, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 1000, scope: !1525)
!1537 = !DILocation(line: 201, scope: !470, inlinedAt: !1536)
!1538 = !DILocation(line: 1004, scope: !1525)
!1539 = !{!1534, !400, i64 40}
!1540 = !DILocation(line: 0, scope: !1425, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 1009, scope: !1525)
!1542 = !DILocation(line: 214, scope: !1425, inlinedAt: !1541)
!1543 = !DILocation(line: 1011, scope: !1525)
!1544 = !DILocalVariable(name: "this", arg: 1, scope: !1545, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1545 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "?make_parked_if_locked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !310, file: !6, line: 938, type: !321, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !320, retainedNodes: !1546)
!1546 = !{!1544, !1547, !1548}
!1547 = !DILocalVariable(name: "val", scope: !1545, file: !6, line: 939, type: !22)
!1548 = !DILocalVariable(name: "desired", scope: !1549, file: !6, line: 946, type: !22)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !6, line: 941)
!1550 = !DILocation(line: 0, scope: !1545, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 1011, scope: !1525)
!1552 = !DILocation(line: 940, scope: !1545, inlinedAt: !1551)
!1553 = !DILocation(line: 0, scope: !470, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 940, scope: !1545, inlinedAt: !1551)
!1555 = !DILocation(line: 201, scope: !470, inlinedAt: !1554)
!1556 = !DILocation(line: 942, scope: !1549, inlinedAt: !1551)
!1557 = !DILocation(line: 946, scope: !1549, inlinedAt: !1551)
!1558 = !DILocation(line: 0, scope: !1549, inlinedAt: !1551)
!1559 = !DILocalVariable(name: "desired", arg: 3, scope: !1560, file: !6, line: 187, type: !298)
!1560 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "?atomic_cas_weak_relaxed_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !471, file: !6, line: 187, type: !488, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1561)
!1561 = !{!1559, !1562, !1563}
!1562 = !DILocalVariable(name: "expected", arg: 2, scope: !1560, file: !6, line: 187, type: !298)
!1563 = !DILocalVariable(name: "addr", arg: 1, scope: !1560, file: !6, line: 187, type: !298)
!1564 = !DILocation(line: 0, scope: !1560, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 947, scope: !1549, inlinedAt: !1551)
!1566 = !DILocation(line: 188, scope: !1560, inlinedAt: !1565)
!1567 = !DILocation(line: 1013, scope: !1525)
!1568 = !DILocation(line: 1014, scope: !1525)
!1569 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 1016, type: !289, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575}
!1571 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1569, file: !6, line: 1016, type: !64)
!1572 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1569, file: !6, line: 1016, type: !64)
!1573 = !DILocalVariable(name: "action", arg: 2, scope: !1569, file: !6, line: 1016, type: !291)
!1574 = !DILocalVariable(name: "control", arg: 1, scope: !1569, file: !6, line: 1016, type: !43)
!1575 = !DILocalVariable(name: "broadcast_control", scope: !1569, file: !6, line: 1017, type: !328)
!1576 = !DILocation(line: 0, scope: !1569)
!1577 = !DILocation(line: 1019, scope: !1569)
!1578 = !DILocation(line: 1020, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !6, line: 1019)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !6, line: 1019)
!1581 = !DILocalVariable(name: "this", arg: 1, scope: !1582, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1582 = distinct !DISubprogram(name: "make_parked", linkageName: "?make_parked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 953, type: !314, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !323, retainedNodes: !1583)
!1583 = !{!1581}
!1584 = !DILocation(line: 0, scope: !1582, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 1020, scope: !1579)
!1586 = !DILocation(line: 954, scope: !1582, inlinedAt: !1585)
!1587 = !DILocalVariable(name: "val", arg: 2, scope: !1588, file: !6, line: 209, type: !22)
!1588 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "?atomic_or_fetch_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_KPEA_K_K@Z", scope: !471, file: !6, line: 209, type: !687, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1589)
!1589 = !{!1587, !1590}
!1590 = !DILocalVariable(name: "addr", arg: 1, scope: !1588, file: !6, line: 209, type: !298)
!1591 = !DILocation(line: 0, scope: !1588, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 954, scope: !1582, inlinedAt: !1585)
!1593 = !DILocation(line: 210, scope: !1588, inlinedAt: !1592)
!1594 = !DILocation(line: 1021, scope: !1579)
!1595 = !DILocation(line: 1022, scope: !1569)
!1596 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 1038, type: !271, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1597)
!1597 = !{!1598, !1599, !1600, !1601}
!1598 = !DILocalVariable(name: "action", arg: 2, scope: !1596, file: !6, line: 1038, type: !273)
!1599 = !DILocalVariable(name: "control", arg: 1, scope: !1596, file: !6, line: 1038, type: !43)
!1600 = !DILocalVariable(name: "wait_control", scope: !1596, file: !6, line: 1039, type: !338)
!1601 = !DILocalVariable(name: "val", scope: !1596, file: !6, line: 1041, type: !22)
!1602 = !DILocation(line: 0, scope: !1596)
!1603 = !DILocation(line: 1042, scope: !1596)
!1604 = !{!1605, !400, i64 32}
!1605 = !{!"?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@", !400, i64 32, !400, i64 40}
!1606 = !DILocation(line: 0, scope: !470, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 1042, scope: !1596)
!1608 = !DILocation(line: 201, scope: !470, inlinedAt: !1607)
!1609 = !DILocation(line: 1044, scope: !1596)
!1610 = !DILocation(line: 0, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1596, file: !6, line: 1044)
!1612 = !{!1605, !400, i64 40}
!1613 = !DILocation(line: 0, scope: !1425, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 1046, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !6, line: 1044)
!1616 = !DILocation(line: 214, scope: !1425, inlinedAt: !1614)
!1617 = !DILocation(line: 1047, scope: !1615)
!1618 = !DILocation(line: 1047, scope: !1611)
!1619 = !DILocation(line: 1049, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !6, line: 1047)
!1621 = distinct !DILexicalBlock(scope: !1611, file: !6, line: 1047)
!1622 = !DILocation(line: 1050, scope: !1620)
!1623 = !DILocation(line: 1054, scope: !1596)
!1624 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1625)
!1625 = !{!1626, !1627}
!1626 = !DILocalVariable(name: "control", arg: 1, scope: !1624, file: !6, line: 1056, type: !43)
!1627 = !DILocalVariable(name: "wait_control", scope: !1624, file: !6, line: 1057, type: !338)
!1628 = !DILocation(line: 0, scope: !1624)
!1629 = !DILocation(line: 1059, scope: !1624)
!1630 = !DILocalVariable(name: "this", arg: 1, scope: !1631, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1631 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 929, type: !314, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !319, retainedNodes: !1632)
!1632 = !{!1630, !1633, !1634}
!1633 = !DILocalVariable(name: "expected", scope: !1631, file: !6, line: 930, type: !22)
!1634 = !DILocalVariable(name: "desired", scope: !1631, file: !6, line: 931, type: !22)
!1635 = !DILocation(line: 0, scope: !1631, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 1059, scope: !1624)
!1637 = !DILocation(line: 933, scope: !1631, inlinedAt: !1636)
!1638 = !DILocation(line: 0, scope: !558, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 933, scope: !1631, inlinedAt: !1636)
!1640 = !DILocation(line: 184, scope: !558, inlinedAt: !1639)
!1641 = !DILocalVariable(name: "this", arg: 1, scope: !1642, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1642 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !310, file: !6, line: 906, type: !314, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !317, retainedNodes: !1643)
!1643 = !{!1641, !1644, !1645, !1646}
!1644 = !DILocalVariable(name: "expected", scope: !1642, file: !6, line: 907, type: !22)
!1645 = !DILocalVariable(name: "desired", scope: !1642, file: !6, line: 908, type: !22)
!1646 = !DILocalVariable(name: "control", scope: !1642, file: !6, line: 915, type: !264)
!1647 = !DILocation(line: 0, scope: !1642, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 934, scope: !1649, inlinedAt: !1636)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !6, line: 933)
!1650 = distinct !DILexicalBlock(scope: !1631, file: !6, line: 933)
!1651 = !DILocalVariable(name: "desired", arg: 3, scope: !1652, file: !6, line: 174, type: !298)
!1652 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "?atomic_cas_strong_release_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !471, file: !6, line: 174, type: !488, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1653)
!1653 = !{!1651, !1654, !1655}
!1654 = !DILocalVariable(name: "expected", arg: 2, scope: !1652, file: !6, line: 174, type: !298)
!1655 = !DILocalVariable(name: "addr", arg: 1, scope: !1652, file: !6, line: 174, type: !298)
!1656 = !DILocation(line: 0, scope: !1652, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 911, scope: !1642, inlinedAt: !1648)
!1658 = !DILocation(line: 175, scope: !1652, inlinedAt: !1657)
!1659 = !DILocation(line: 911, scope: !1642, inlinedAt: !1648)
!1660 = !DILocation(line: 915, scope: !1642, inlinedAt: !1648)
!1661 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1662, file: !6, line: 832, type: !298)
!1662 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "??0mutex_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_K@Z", scope: !264, file: !6, line: 832, type: !300, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !299, retainedNodes: !1663)
!1663 = !{!1661, !1664}
!1664 = !DILocalVariable(name: "this", arg: 1, scope: !1662, type: !263, flags: DIFlagArtificial | DIFlagObjectPointer)
!1665 = !DILocation(line: 0, scope: !1662, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 915, scope: !1642, inlinedAt: !1648)
!1667 = !DILocalVariable(name: "this", arg: 1, scope: !1668, type: !1670, flags: DIFlagArtificial | DIFlagObjectPointer)
!1668 = distinct !DISubprogram(name: "parking_control", linkageName: "??0parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !267, file: !6, line: 598, type: !294, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !293, retainedNodes: !1669)
!1669 = !{!1667}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1671 = !DILocation(line: 0, scope: !1668, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 833, scope: !1662, inlinedAt: !1666)
!1673 = !DILocation(line: 600, scope: !1668, inlinedAt: !1672)
!1674 = !DILocation(line: 833, scope: !1662, inlinedAt: !1666)
!1675 = !DILocation(line: 834, scope: !1676, inlinedAt: !1666)
!1676 = distinct !DILexicalBlock(scope: !1662, file: !6, line: 833)
!1677 = !DILocation(line: 835, scope: !1676, inlinedAt: !1666)
!1678 = !DILocation(line: 916, scope: !1642, inlinedAt: !1648)
!1679 = !DILocation(line: 917, scope: !1642, inlinedAt: !1648)
!1680 = !DILocation(line: 1060, scope: !1624)
!1681 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 1062, type: !285, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687}
!1683 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1681, file: !6, line: 1062, type: !64)
!1684 = !DILocalVariable(name: "unparked", arg: 2, scope: !1681, file: !6, line: 1062, type: !29)
!1685 = !DILocalVariable(name: "control", arg: 1, scope: !1681, file: !6, line: 1062, type: !43)
!1686 = !DILocalVariable(name: "wait_control", scope: !1681, file: !6, line: 1063, type: !338)
!1687 = !DILocalVariable(name: "val", scope: !1688, file: !6, line: 1066, type: !22)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !6, line: 1065)
!1689 = distinct !DILexicalBlock(scope: !1681, file: !6, line: 1065)
!1690 = !DILocation(line: 0, scope: !1681)
!1691 = !DILocation(line: 1065, scope: !1681)
!1692 = !DILocation(line: 0, scope: !1688)
!1693 = !DILocation(line: 1067, scope: !1688)
!1694 = !DILocation(line: 0, scope: !1425, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 1067, scope: !1688)
!1696 = !DILocation(line: 214, scope: !1425, inlinedAt: !1695)
!1697 = !DILocation(line: 1068, scope: !1688)
!1698 = !DILocation(line: 1069, scope: !1681)
!1699 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1700, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !365}
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "mutex", arg: 1, scope: !1699, file: !6, line: 1131, type: !365)
!1704 = !DILocalVariable(name: "fast_mutex", scope: !1699, file: !6, line: 1132, type: !309)
!1705 = !DILocation(line: 0, scope: !1699)
!1706 = !DILocalVariable(name: "this", arg: 1, scope: !1707, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1707 = distinct !DISubprogram(name: "lock", linkageName: "?lock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 920, type: !314, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !318, retainedNodes: !1708)
!1708 = !{!1706, !1709, !1710}
!1709 = !DILocalVariable(name: "expected", scope: !1707, file: !6, line: 921, type: !22)
!1710 = !DILocalVariable(name: "desired", scope: !1707, file: !6, line: 922, type: !22)
!1711 = !DILocation(line: 0, scope: !1707, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 1134, scope: !1699)
!1713 = !DILocation(line: 924, scope: !1707, inlinedAt: !1712)
!1714 = !DILocation(line: 0, scope: !487, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 924, scope: !1707, inlinedAt: !1712)
!1716 = !DILocation(line: 192, scope: !487, inlinedAt: !1715)
!1717 = !DILocalVariable(name: "this", arg: 1, scope: !1718, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1718 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !310, file: !6, line: 862, type: !314, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !313, retainedNodes: !1719)
!1719 = !{!1717, !1720, !1721, !1722, !1726, !1729, !1730}
!1720 = !DILocalVariable(name: "spinner", scope: !1718, file: !6, line: 864, type: !448)
!1721 = !DILocalVariable(name: "expected", scope: !1718, file: !6, line: 865, type: !22)
!1722 = !DILocalVariable(name: "desired", scope: !1723, file: !6, line: 870, type: !22)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !6, line: 869)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !6, line: 869)
!1725 = distinct !DILexicalBlock(scope: !1718, file: !6, line: 868)
!1726 = !DILocalVariable(name: "desired", scope: !1727, file: !6, line: 888, type: !22)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !6, line: 887)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !6, line: 887)
!1729 = !DILocalVariable(name: "control", scope: !1725, file: !6, line: 895, type: !264)
!1730 = !DILocalVariable(name: "result", scope: !1725, file: !6, line: 896, type: !22)
!1731 = !DILocation(line: 0, scope: !1718, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 925, scope: !1733, inlinedAt: !1712)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !6, line: 924)
!1734 = distinct !DILexicalBlock(scope: !1707, file: !6, line: 924)
!1735 = !DILocation(line: 0, scope: !470, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 866, scope: !1718, inlinedAt: !1732)
!1737 = !DILocation(line: 201, scope: !470, inlinedAt: !1736)
!1738 = !DILocation(line: 868, scope: !1718, inlinedAt: !1732)
!1739 = !DILocation(line: 869, scope: !1725, inlinedAt: !1732)
!1740 = !DILocation(line: 870, scope: !1723, inlinedAt: !1732)
!1741 = !DILocation(line: 0, scope: !1723, inlinedAt: !1732)
!1742 = !DILocation(line: 0, scope: !487, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 871, scope: !1723, inlinedAt: !1732)
!1744 = !DILocation(line: 192, scope: !487, inlinedAt: !1743)
!1745 = !DILocation(line: 238, scope: !498, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 880, scope: !1725, inlinedAt: !1732)
!1747 = !DILocation(line: 0, scope: !498, inlinedAt: !1746)
!1748 = !DILocation(line: 241, scope: !498, inlinedAt: !1746)
!1749 = !DILocation(line: 880, scope: !1725, inlinedAt: !1732)
!1750 = !DILocation(line: 239, scope: !505, inlinedAt: !1746)
!1751 = !DILocation(line: 881, scope: !1752, inlinedAt: !1732)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !6, line: 880)
!1753 = distinct !DILexicalBlock(scope: !1725, file: !6, line: 880)
!1754 = !DILocation(line: 0, scope: !470, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 882, scope: !1752, inlinedAt: !1732)
!1756 = !DILocation(line: 201, scope: !470, inlinedAt: !1755)
!1757 = !DILocation(line: 883, scope: !1752, inlinedAt: !1732)
!1758 = !DILocation(line: 887, scope: !1725, inlinedAt: !1732)
!1759 = !DILocation(line: 888, scope: !1727, inlinedAt: !1732)
!1760 = !DILocation(line: 0, scope: !1727, inlinedAt: !1732)
!1761 = !DILocation(line: 0, scope: !1560, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 889, scope: !1727, inlinedAt: !1732)
!1763 = !DILocation(line: 188, scope: !1560, inlinedAt: !1762)
!1764 = !DILocation(line: 895, scope: !1725, inlinedAt: !1732)
!1765 = !DILocation(line: 0, scope: !1662, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 895, scope: !1725, inlinedAt: !1732)
!1767 = !DILocation(line: 0, scope: !1668, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 833, scope: !1662, inlinedAt: !1766)
!1769 = !DILocation(line: 600, scope: !1668, inlinedAt: !1768)
!1770 = !DILocation(line: 833, scope: !1662, inlinedAt: !1766)
!1771 = !DILocation(line: 834, scope: !1676, inlinedAt: !1766)
!1772 = !DILocation(line: 835, scope: !1676, inlinedAt: !1766)
!1773 = !DILocation(line: 896, scope: !1725, inlinedAt: !1732)
!1774 = !DILocation(line: 0, scope: !1725, inlinedAt: !1732)
!1775 = !DILocation(line: 897, scope: !1725, inlinedAt: !1732)
!1776 = !DILocation(line: 0, scope: !470, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 902, scope: !1725, inlinedAt: !1732)
!1778 = !DILocation(line: 201, scope: !470, inlinedAt: !1777)
!1779 = !DILocation(line: 903, scope: !1725, inlinedAt: !1732)
!1780 = distinct !{!1780, !1738, !1781}
!1781 = !DILocation(line: 903, scope: !1718, inlinedAt: !1732)
!1782 = !DILocation(line: 1135, scope: !1699)
!1783 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1700, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1784)
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "mutex", arg: 1, scope: !1783, file: !6, line: 1137, type: !365)
!1786 = !DILocalVariable(name: "fast_mutex", scope: !1783, file: !6, line: 1138, type: !309)
!1787 = !DILocation(line: 0, scope: !1783)
!1788 = !DILocation(line: 0, scope: !1631, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 1140, scope: !1783)
!1790 = !DILocation(line: 933, scope: !1631, inlinedAt: !1789)
!1791 = !DILocation(line: 0, scope: !558, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 933, scope: !1631, inlinedAt: !1789)
!1793 = !DILocation(line: 184, scope: !558, inlinedAt: !1792)
!1794 = !DILocation(line: 0, scope: !1642, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 934, scope: !1649, inlinedAt: !1789)
!1796 = !DILocation(line: 0, scope: !1652, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 911, scope: !1642, inlinedAt: !1795)
!1798 = !DILocation(line: 175, scope: !1652, inlinedAt: !1797)
!1799 = !DILocation(line: 911, scope: !1642, inlinedAt: !1795)
!1800 = !DILocation(line: 915, scope: !1642, inlinedAt: !1795)
!1801 = !DILocation(line: 0, scope: !1662, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 915, scope: !1642, inlinedAt: !1795)
!1803 = !DILocation(line: 0, scope: !1668, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 833, scope: !1662, inlinedAt: !1802)
!1805 = !DILocation(line: 600, scope: !1668, inlinedAt: !1804)
!1806 = !DILocation(line: 833, scope: !1662, inlinedAt: !1802)
!1807 = !DILocation(line: 834, scope: !1676, inlinedAt: !1802)
!1808 = !DILocation(line: 835, scope: !1676, inlinedAt: !1802)
!1809 = !DILocation(line: 916, scope: !1642, inlinedAt: !1795)
!1810 = !DILocation(line: 917, scope: !1642, inlinedAt: !1795)
!1811 = !DILocation(line: 1141, scope: !1783)
!1812 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !1813, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1816)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1816 = !{!1817, !1818}
!1817 = !DILocalVariable(name: "cond", arg: 1, scope: !1812, file: !6, line: 1143, type: !1815)
!1818 = !DILocalVariable(name: "fast_cond", scope: !1812, file: !6, line: 1144, type: !348)
!1819 = !DILocation(line: 0, scope: !1812)
!1820 = !DILocalVariable(name: "this", arg: 1, scope: !1821, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1821 = distinct !DISubprogram(name: "broadcast", linkageName: "?broadcast@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !349, file: !6, line: 1092, type: !353, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !357, retainedNodes: !1822)
!1822 = !{!1820, !1823, !1824}
!1823 = !DILocalVariable(name: "val", scope: !1821, file: !6, line: 1094, type: !22)
!1824 = !DILocalVariable(name: "control", scope: !1821, file: !6, line: 1100, type: !329)
!1825 = !DILocation(line: 0, scope: !1821, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 1146, scope: !1812)
!1827 = !DILocation(line: 1093, scope: !1821, inlinedAt: !1826)
!1828 = !DILocalVariable(name: "cond", arg: 1, scope: !1829, file: !6, line: 70, type: !43)
!1829 = distinct !DISubprogram(name: "if_tsan_pre_signal", linkageName: "?if_tsan_pre_signal@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !471, file: !6, line: 70, type: !171, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1830)
!1830 = !{!1828}
!1831 = !DILocation(line: 0, scope: !1829, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 1093, scope: !1821, inlinedAt: !1826)
!1833 = !DILocation(line: 71, scope: !1829, inlinedAt: !1832)
!1834 = !DILocation(line: 1095, scope: !1821, inlinedAt: !1826)
!1835 = !DILocation(line: 0, scope: !470, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 1095, scope: !1821, inlinedAt: !1826)
!1837 = !DILocation(line: 201, scope: !470, inlinedAt: !1836)
!1838 = !DILocation(line: 1096, scope: !1821, inlinedAt: !1826)
!1839 = !DILocalVariable(name: "cond", arg: 1, scope: !1840, file: !6, line: 73, type: !43)
!1840 = distinct !DISubprogram(name: "if_tsan_post_signal", linkageName: "?if_tsan_post_signal@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !471, file: !6, line: 73, type: !171, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1841)
!1841 = !{!1839}
!1842 = !DILocation(line: 0, scope: !1840, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 1097, scope: !1844, inlinedAt: !1826)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !6, line: 1096)
!1845 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 1096)
!1846 = !DILocation(line: 74, scope: !1840, inlinedAt: !1843)
!1847 = !DILocation(line: 1098, scope: !1844, inlinedAt: !1826)
!1848 = !DILocation(line: 1100, scope: !1821, inlinedAt: !1826)
!1849 = !DILocalVariable(name: "mutex", arg: 3, scope: !1850, file: !6, line: 989, type: !309)
!1850 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "??0broadcast_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_KPEAVfast_mutex@1234@@Z", scope: !329, file: !6, line: 989, type: !335, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !334, retainedNodes: !1851)
!1851 = !{!1849, !1852, !1853}
!1852 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1850, file: !6, line: 989, type: !298)
!1853 = !DILocalVariable(name: "this", arg: 1, scope: !1850, type: !328, flags: DIFlagArtificial | DIFlagObjectPointer)
!1854 = !DILocation(line: 0, scope: !1850, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 1100, scope: !1821, inlinedAt: !1826)
!1856 = !DILocation(line: 0, scope: !1668, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 990, scope: !1850, inlinedAt: !1855)
!1858 = !DILocation(line: 600, scope: !1668, inlinedAt: !1857)
!1859 = !DILocation(line: 990, scope: !1850, inlinedAt: !1855)
!1860 = !DILocation(line: 991, scope: !1861, inlinedAt: !1855)
!1861 = distinct !DILexicalBlock(scope: !1850, file: !6, line: 990)
!1862 = !DILocation(line: 992, scope: !1861, inlinedAt: !1855)
!1863 = !DILocation(line: 1101, scope: !1821, inlinedAt: !1826)
!1864 = !DILocation(line: 0, scope: !1840, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 1102, scope: !1821, inlinedAt: !1826)
!1866 = !DILocation(line: 74, scope: !1840, inlinedAt: !1865)
!1867 = !DILocation(line: 1103, scope: !1821, inlinedAt: !1826)
!1868 = !DILocation(line: 1147, scope: !1812)
!1869 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !1813, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1870)
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "cond", arg: 1, scope: !1869, file: !6, line: 1149, type: !1815)
!1872 = !DILocalVariable(name: "fast_cond", scope: !1869, file: !6, line: 1150, type: !348)
!1873 = !DILocation(line: 0, scope: !1869)
!1874 = !DILocalVariable(name: "this", arg: 1, scope: !1875, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1875 = distinct !DISubprogram(name: "signal", linkageName: "?signal@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !349, file: !6, line: 1078, type: !353, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !356, retainedNodes: !1876)
!1876 = !{!1874, !1877, !1878}
!1877 = !DILocalVariable(name: "val", scope: !1875, file: !6, line: 1081, type: !22)
!1878 = !DILocalVariable(name: "control", scope: !1875, file: !6, line: 1087, type: !304)
!1879 = !DILocation(line: 0, scope: !1875, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 1152, scope: !1869)
!1881 = !DILocation(line: 1079, scope: !1875, inlinedAt: !1880)
!1882 = !DILocation(line: 0, scope: !1829, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 1079, scope: !1875, inlinedAt: !1880)
!1884 = !DILocation(line: 71, scope: !1829, inlinedAt: !1883)
!1885 = !DILocation(line: 1082, scope: !1875, inlinedAt: !1880)
!1886 = !DILocation(line: 0, scope: !470, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 1082, scope: !1875, inlinedAt: !1880)
!1888 = !DILocation(line: 201, scope: !470, inlinedAt: !1887)
!1889 = !DILocation(line: 1083, scope: !1875, inlinedAt: !1880)
!1890 = !DILocation(line: 0, scope: !1840, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 1084, scope: !1892, inlinedAt: !1880)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !6, line: 1083)
!1893 = distinct !DILexicalBlock(scope: !1875, file: !6, line: 1083)
!1894 = !DILocation(line: 74, scope: !1840, inlinedAt: !1891)
!1895 = !DILocation(line: 1085, scope: !1892, inlinedAt: !1880)
!1896 = !DILocation(line: 1087, scope: !1875, inlinedAt: !1880)
!1897 = !DILocalVariable(name: "mutex", arg: 3, scope: !1898, file: !6, line: 962, type: !309)
!1898 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "??0signal_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_KPEAVfast_mutex@1234@@Z", scope: !304, file: !6, line: 962, type: !325, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !324, retainedNodes: !1899)
!1899 = !{!1897, !1900, !1901}
!1900 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1898, file: !6, line: 962, type: !298)
!1901 = !DILocalVariable(name: "this", arg: 1, scope: !1898, type: !303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1902 = !DILocation(line: 0, scope: !1898, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 1087, scope: !1875, inlinedAt: !1880)
!1904 = !DILocation(line: 0, scope: !1668, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 963, scope: !1898, inlinedAt: !1903)
!1906 = !DILocation(line: 600, scope: !1668, inlinedAt: !1905)
!1907 = !DILocation(line: 963, scope: !1898, inlinedAt: !1903)
!1908 = !{!1519, !400, i64 40}
!1909 = !DILocation(line: 964, scope: !1910, inlinedAt: !1903)
!1910 = distinct !DILexicalBlock(scope: !1898, file: !6, line: 963)
!1911 = !DILocation(line: 1088, scope: !1875, inlinedAt: !1880)
!1912 = !DILocation(line: 0, scope: !1840, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 1089, scope: !1875, inlinedAt: !1880)
!1914 = !DILocation(line: 74, scope: !1840, inlinedAt: !1913)
!1915 = !DILocation(line: 1090, scope: !1875, inlinedAt: !1880)
!1916 = !DILocation(line: 1153, scope: !1869)
!1917 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !1918, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1815, !365}
!1920 = !{!1921, !1922, !1923, !1924}
!1921 = !DILocalVariable(name: "mutex", arg: 2, scope: !1917, file: !6, line: 1155, type: !365)
!1922 = !DILocalVariable(name: "cond", arg: 1, scope: !1917, file: !6, line: 1155, type: !1815)
!1923 = !DILocalVariable(name: "fast_cond", scope: !1917, file: !6, line: 1156, type: !348)
!1924 = !DILocalVariable(name: "fast_mutex", scope: !1917, file: !6, line: 1158, type: !309)
!1925 = !DILocation(line: 0, scope: !1917)
!1926 = !DILocalVariable(name: "mutex", arg: 2, scope: !1927, file: !6, line: 1105, type: !309)
!1927 = distinct !DISubprogram(name: "wait", linkageName: "?wait@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXPEAVfast_mutex@2345@@Z", scope: !349, file: !6, line: 1105, type: !359, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !358, retainedNodes: !1928)
!1928 = !{!1926, !1929, !1930, !1931, !1932}
!1929 = !DILocalVariable(name: "this", arg: 1, scope: !1927, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1930 = !DILocalVariable(name: "control", scope: !1927, file: !6, line: 1106, type: !339)
!1931 = !DILocalVariable(name: "result", scope: !1927, file: !6, line: 1107, type: !22)
!1932 = !DILocalVariable(name: "val", scope: !1933, file: !6, line: 1114, type: !22)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !6, line: 1110)
!1934 = distinct !DILexicalBlock(scope: !1927, file: !6, line: 1108)
!1935 = !DILocation(line: 0, scope: !1927, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 1160, scope: !1917)
!1937 = !DILocation(line: 1106, scope: !1927, inlinedAt: !1936)
!1938 = !DILocalVariable(name: "mutex", arg: 3, scope: !1939, file: !6, line: 1030, type: !309)
!1939 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "??0wait_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_KPEAVfast_mutex@1234@@Z", scope: !339, file: !6, line: 1030, type: !345, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !344, retainedNodes: !1940)
!1940 = !{!1938, !1941, !1942}
!1941 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1939, file: !6, line: 1030, type: !298)
!1942 = !DILocalVariable(name: "this", arg: 1, scope: !1939, type: !338, flags: DIFlagArtificial | DIFlagObjectPointer)
!1943 = !DILocation(line: 0, scope: !1939, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 1106, scope: !1927, inlinedAt: !1936)
!1945 = !DILocation(line: 0, scope: !1668, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 1031, scope: !1939, inlinedAt: !1944)
!1947 = !DILocation(line: 600, scope: !1668, inlinedAt: !1946)
!1948 = !DILocation(line: 1031, scope: !1939, inlinedAt: !1944)
!1949 = !DILocation(line: 1032, scope: !1950, inlinedAt: !1944)
!1950 = distinct !DILexicalBlock(scope: !1939, file: !6, line: 1031)
!1951 = !DILocation(line: 1033, scope: !1950, inlinedAt: !1944)
!1952 = !DILocation(line: 1034, scope: !1950, inlinedAt: !1944)
!1953 = !DILocation(line: 1107, scope: !1927, inlinedAt: !1936)
!1954 = !DILocation(line: 1108, scope: !1927, inlinedAt: !1936)
!1955 = !DILocation(line: 0, scope: !1707, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 1109, scope: !1957, inlinedAt: !1936)
!1957 = distinct !DILexicalBlock(scope: !1934, file: !6, line: 1108)
!1958 = !DILocation(line: 924, scope: !1707, inlinedAt: !1956)
!1959 = !DILocation(line: 0, scope: !487, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 924, scope: !1707, inlinedAt: !1956)
!1961 = !DILocation(line: 192, scope: !487, inlinedAt: !1960)
!1962 = !DILocation(line: 0, scope: !1718, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 925, scope: !1733, inlinedAt: !1956)
!1964 = !DILocation(line: 0, scope: !470, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 866, scope: !1718, inlinedAt: !1963)
!1966 = !DILocation(line: 201, scope: !470, inlinedAt: !1965)
!1967 = !DILocation(line: 868, scope: !1718, inlinedAt: !1963)
!1968 = !DILocation(line: 869, scope: !1725, inlinedAt: !1963)
!1969 = !DILocation(line: 870, scope: !1723, inlinedAt: !1963)
!1970 = !DILocation(line: 0, scope: !1723, inlinedAt: !1963)
!1971 = !DILocation(line: 0, scope: !487, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 871, scope: !1723, inlinedAt: !1963)
!1973 = !DILocation(line: 192, scope: !487, inlinedAt: !1972)
!1974 = !DILocation(line: 238, scope: !498, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 880, scope: !1725, inlinedAt: !1963)
!1976 = !DILocation(line: 0, scope: !498, inlinedAt: !1975)
!1977 = !DILocation(line: 241, scope: !498, inlinedAt: !1975)
!1978 = !DILocation(line: 880, scope: !1725, inlinedAt: !1963)
!1979 = !DILocation(line: 239, scope: !505, inlinedAt: !1975)
!1980 = !DILocation(line: 881, scope: !1752, inlinedAt: !1963)
!1981 = !DILocation(line: 0, scope: !470, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 882, scope: !1752, inlinedAt: !1963)
!1983 = !DILocation(line: 201, scope: !470, inlinedAt: !1982)
!1984 = !DILocation(line: 883, scope: !1752, inlinedAt: !1963)
!1985 = !DILocation(line: 887, scope: !1725, inlinedAt: !1963)
!1986 = !DILocation(line: 888, scope: !1727, inlinedAt: !1963)
!1987 = !DILocation(line: 0, scope: !1727, inlinedAt: !1963)
!1988 = !DILocation(line: 0, scope: !1560, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 889, scope: !1727, inlinedAt: !1963)
!1990 = !DILocation(line: 188, scope: !1560, inlinedAt: !1989)
!1991 = !DILocation(line: 895, scope: !1725, inlinedAt: !1963)
!1992 = !DILocation(line: 0, scope: !1662, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 895, scope: !1725, inlinedAt: !1963)
!1994 = !DILocation(line: 0, scope: !1668, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 833, scope: !1662, inlinedAt: !1993)
!1996 = !DILocation(line: 600, scope: !1668, inlinedAt: !1995)
!1997 = !DILocation(line: 833, scope: !1662, inlinedAt: !1993)
!1998 = !DILocation(line: 834, scope: !1676, inlinedAt: !1993)
!1999 = !DILocation(line: 835, scope: !1676, inlinedAt: !1993)
!2000 = !DILocation(line: 896, scope: !1725, inlinedAt: !1963)
!2001 = !DILocation(line: 0, scope: !1725, inlinedAt: !1963)
!2002 = !DILocation(line: 897, scope: !1725, inlinedAt: !1963)
!2003 = !DILocation(line: 0, scope: !470, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 902, scope: !1725, inlinedAt: !1963)
!2005 = !DILocation(line: 201, scope: !470, inlinedAt: !2004)
!2006 = !DILocation(line: 903, scope: !1725, inlinedAt: !1963)
!2007 = distinct !{!2007, !1967, !2008}
!2008 = !DILocation(line: 903, scope: !1718, inlinedAt: !1963)
!2009 = !DILocation(line: 1111, scope: !1933, inlinedAt: !1936)
!2010 = !DILocation(line: 0, scope: !747, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 1111, scope: !1933, inlinedAt: !1936)
!2012 = !DILocation(line: 57, scope: !747, inlinedAt: !2011)
!2013 = !DILocation(line: 1115, scope: !1933, inlinedAt: !1936)
!2014 = !DILocation(line: 0, scope: !470, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 1115, scope: !1933, inlinedAt: !1936)
!2016 = !DILocation(line: 201, scope: !470, inlinedAt: !2015)
!2017 = !DILocation(line: 0, scope: !1933, inlinedAt: !1936)
!2018 = !DILocation(line: 1116, scope: !2019, inlinedAt: !1936)
!2019 = distinct !DILexicalBlock(scope: !1933, file: !6, line: 1116)
!2020 = !DILocation(line: 1116, scope: !2021, inlinedAt: !1936)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !6, line: 1116)
!2022 = distinct !DILexicalBlock(scope: !2019, file: !6, line: 1116)
!2023 = !DILocation(line: 0, scope: !762, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 1118, scope: !1933, inlinedAt: !1936)
!2025 = !DILocation(line: 61, scope: !762, inlinedAt: !2024)
!2026 = !DILocation(line: 1119, scope: !1933, inlinedAt: !1936)
!2027 = !DILocation(line: 1120, scope: !1927, inlinedAt: !1936)
!2028 = !DILocation(line: 1161, scope: !1917)
!2029 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !2030, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!361, !29}
!2032 = !{!2033, !2034}
!2033 = !DILocalVariable(name: "sz", arg: 1, scope: !2029, file: !6, line: 1168, type: !29)
!2034 = !DILocalVariable(name: "array", scope: !2029, file: !6, line: 1171, type: !361)
!2035 = !DILocation(line: 0, scope: !2029)
!2036 = !DILocation(line: 1171, scope: !2029)
!2037 = !DILocation(line: 1173, scope: !2029)
!2038 = !DILocation(line: 1177, scope: !2029)
!2039 = !{!2040, !400, i64 0}
!2040 = !{!"?AUhalide_mutex_array@@", !400, i64 0}
!2041 = !DILocation(line: 1179, scope: !2029)
!2042 = !DILocation(line: 1180, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !6, line: 1179)
!2044 = distinct !DILexicalBlock(scope: !2029, file: !6, line: 1179)
!2045 = !DILocation(line: 1182, scope: !2043)
!2046 = !DILocation(line: 1184, scope: !2029)
!2047 = !DILocation(line: 1185, scope: !2029)
!2048 = !DILocation(line: 1186, scope: !2029)
!2049 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !2050, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !43, !43}
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "array", arg: 2, scope: !2049, file: !6, line: 1188, type: !43)
!2054 = !DILocalVariable(name: "user_context", arg: 1, scope: !2049, file: !6, line: 1188, type: !43)
!2055 = !DILocalVariable(name: "arr_ptr", scope: !2049, file: !6, line: 1189, type: !361)
!2056 = !DILocation(line: 0, scope: !2049)
!2057 = !DILocation(line: 1190, scope: !2049)
!2058 = !DILocation(line: 1191, scope: !2049)
!2059 = !DILocation(line: 1192, scope: !2049)
!2060 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !2061, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!29, !361, !29}
!2063 = !{!2064, !2065}
!2064 = !DILocalVariable(name: "entry", arg: 2, scope: !2060, file: !6, line: 1194, type: !29)
!2065 = !DILocalVariable(name: "array", arg: 1, scope: !2060, file: !6, line: 1194, type: !361)
!2066 = !DILocation(line: 0, scope: !2060)
!2067 = !DILocation(line: 1195, scope: !2060)
!2068 = !DILocation(line: 1196, scope: !2060)
!2069 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !2061, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2070)
!2070 = !{!2071, !2072}
!2071 = !DILocalVariable(name: "entry", arg: 2, scope: !2069, file: !6, line: 1199, type: !29)
!2072 = !DILocalVariable(name: "array", arg: 1, scope: !2069, file: !6, line: 1199, type: !361)
!2073 = !DILocation(line: 0, scope: !2069)
!2074 = !DILocation(line: 1200, scope: !2069)
!2075 = !DILocation(line: 1201, scope: !2069)
!2076 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z", scope: !3, file: !13, line: 69, type: !2077, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!29, !29}
!2079 = !{!2080}
!2080 = !DILocalVariable(name: "threads", arg: 1, scope: !2076, file: !13, line: 69, type: !29)
!2081 = !DILocation(line: 0, scope: !2076)
!2082 = !DILocation(line: 70, scope: !2076)
!2083 = !DILocation(line: 72, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !13, line: 70)
!2085 = !DILocation(line: 75, scope: !2076)
!2086 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ", scope: !3, file: !13, line: 78, type: !406, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2087)
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "desired_num_threads", scope: !2086, file: !13, line: 79, type: !29)
!2089 = !DILocalVariable(name: "threads_str", scope: !2086, file: !13, line: 80, type: !370)
!2090 = !DILocation(line: 0, scope: !2086)
!2091 = !DILocation(line: 80, scope: !2086)
!2092 = !DILocation(line: 81, scope: !2086)
!2093 = !DILocation(line: 83, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !13, line: 81)
!2095 = distinct !DILexicalBlock(scope: !2086, file: !13, line: 81)
!2096 = !DILocation(line: 85, scope: !2086)
!2097 = !DILocation(line: 86, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !13, line: 85)
!2099 = distinct !DILexicalBlock(scope: !2086, file: !13, line: 85)
!2100 = !DILocation(line: 87, scope: !2098)
!2101 = !DILocation(line: 88, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !13, line: 87)
!2103 = !DILocation(line: 89, scope: !2102)
!2104 = !DILocation(line: 0, scope: !2099)
!2105 = !DILocation(line: 90, scope: !2086)
!2106 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z", scope: !3, file: !13, line: 197, type: !2107, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !32}
!2109 = !{!2110, !2111, !2112, !2114, !2116, !2118, !2120, !2121, !2122, !2123, !2124, !2125, !2128, !2129, !2131, !2132}
!2110 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2106, file: !13, line: 197, type: !32)
!2111 = !DILocalVariable(name: "spin_count", scope: !2106, file: !13, line: 198, type: !29)
!2112 = !DILocalVariable(name: "max_spin_count", scope: !2106, file: !13, line: 199, type: !2113)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2114 = !DILocalVariable(name: "job", scope: !2115, file: !13, line: 202, type: !32)
!2115 = distinct !DILexicalBlock(scope: !2106, file: !13, line: 201)
!2116 = !DILocalVariable(name: "prev_ptr", scope: !2115, file: !13, line: 203, type: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!2118 = !DILocalVariable(name: "enough_threads", scope: !2119, file: !13, line: 235, type: !64)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 229)
!2120 = !DILocalVariable(name: "parent_job", scope: !2119, file: !13, line: 237, type: !32)
!2121 = !DILocalVariable(name: "threads_available", scope: !2119, file: !13, line: 239, type: !29)
!2122 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2119, file: !13, line: 256, type: !64)
!2123 = !DILocalVariable(name: "can_add_worker", scope: !2119, file: !13, line: 260, type: !64)
!2124 = !DILocalVariable(name: "result", scope: !2115, file: !13, line: 328, type: !29)
!2125 = !DILocalVariable(name: "total_iters", scope: !2126, file: !13, line: 336, type: !29)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !13, line: 330)
!2127 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 330)
!2128 = !DILocalVariable(name: "iters", scope: !2126, file: !13, line: 337, type: !29)
!2129 = !DILocalVariable(name: "myjob", scope: !2130, file: !13, line: 369, type: !33)
!2130 = distinct !DILexicalBlock(scope: !2127, file: !13, line: 367)
!2131 = !DILocalVariable(name: "wake_owners", scope: !2115, file: !13, line: 396, type: !64)
!2132 = !DILocalVariable(name: "i", scope: !2133, file: !13, line: 402, type: !29)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !13, line: 402)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !13, line: 399)
!2135 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 399)
!2136 = !DILocation(line: 0, scope: !2106)
!2137 = !DILocation(line: 63, scope: !2138, inlinedAt: !2142)
!2138 = distinct !DISubprogram(name: "running", linkageName: "?running@work@Internal@Runtime@Halide@@QEBA_NXZ", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2139)
!2139 = !{!2140}
!2140 = !DILocalVariable(name: "this", arg: 1, scope: !2138, type: !2141, flags: DIFlagArtificial | DIFlagObjectPointer)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!2142 = distinct !DILocation(line: 201, scope: !2106)
!2143 = !DILocation(line: 201, scope: !2106)
!2144 = !DILocation(line: 198, scope: !2106)
!2145 = !DILocation(line: 0, scope: !2138, inlinedAt: !2142)
!2146 = !{!2147, !2149, i64 40}
!2147 = !{!"?AUwork@Internal@Runtime@Halide@@", !2148, i64 0, !400, i64 56, !400, i64 64, !400, i64 72, !2149, i64 80, !400, i64 88, !2149, i64 96, !400, i64 104, !2149, i64 112, !2149, i64 116, !2149, i64 120, !531, i64 124}
!2148 = !{!"?AUhalide_parallel_task_t@@", !400, i64 0, !400, i64 8, !400, i64 16, !400, i64 24, !2149, i64 32, !2149, i64 36, !2149, i64 40, !2149, i64 44, !531, i64 48}
!2149 = !{!"int", !401, i64 0}
!2150 = !{!2151, !531, i64 2120}
!2151 = !{!"?AUwork_queue_t@Internal@Runtime@Halide@@", !2152, i64 0, !2149, i64 8, !2149, i64 12, !400, i64 16, !2149, i64 24, !2149, i64 28, !2149, i64 32, !2153, i64 40, !2153, i64 48, !2153, i64 56, !2149, i64 64, !2149, i64 68, !401, i64 72, !531, i64 2120, !531, i64 2121, !2149, i64 2124}
!2152 = !{!"?AUhalide_mutex@@", !401, i64 0}
!2153 = !{!"?AUhalide_cond@@", !401, i64 0}
!2154 = !{!2147, !2149, i64 112}
!2155 = !DILocation(line: 202, scope: !2115)
!2156 = !{!2151, !400, i64 16}
!2157 = !DILocation(line: 0, scope: !2115)
!2158 = !DILocation(line: 206, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !13, line: 205)
!2160 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 205)
!2161 = !{!2147, !2149, i64 116}
!2162 = !DILocation(line: 207, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !13, line: 206)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !13, line: 206)
!2165 = !DILocation(line: 208, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !13, line: 207)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !13, line: 207)
!2168 = !DILocation(line: 209, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !13, line: 208)
!2170 = !DILocation(line: 210, scope: !2169)
!2171 = !{!2147, !400, i64 64}
!2172 = distinct !{!2172, !2165, !2173, !579}
!2173 = !DILocation(line: 211, scope: !2166)
!2174 = !DILocation(line: 212, scope: !2166)
!2175 = !DILocation(line: 213, scope: !2166)
!2176 = !DILocation(line: 214, scope: !2166)
!2177 = !DILocation(line: 216, scope: !2164)
!2178 = !{!2147, !400, i64 88}
!2179 = !DILocation(line: 217, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !13, line: 216)
!2181 = distinct !DILexicalBlock(scope: !2164, file: !13, line: 216)
!2182 = !DILocation(line: 221, scope: !2180)
!2183 = !DILocation(line: 222, scope: !2180)
!2184 = !DILocation(line: 229, scope: !2115)
!2185 = !DILocation(line: 240, scope: !2119)
!2186 = !DILocation(line: 237, scope: !2119)
!2187 = !DILocation(line: 0, scope: !2119)
!2188 = !DILocation(line: 244, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !13, line: 243)
!2190 = distinct !DILexicalBlock(scope: !2119, file: !13, line: 240)
!2191 = !DILocation(line: 0, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !13, line: 244)
!2193 = !{!2147, !2149, i64 44}
!2194 = !DILocation(line: 247, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !13, line: 246)
!2196 = !{!2147, !2149, i64 96}
!2197 = !DILocation(line: 248, scope: !2195)
!2198 = !DILocation(line: 245, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2192, file: !13, line: 244)
!2200 = !DILocation(line: 246, scope: !2199)
!2201 = !DILocation(line: 242, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2190, file: !13, line: 240)
!2203 = !{!2151, !2149, i64 24}
!2204 = !{!2151, !2149, i64 2124}
!2205 = !DILocation(line: 243, scope: !2202)
!2206 = !DILocation(line: 0, scope: !2190)
!2207 = !DILocation(line: 250, scope: !2119)
!2208 = !DILocation(line: 260, scope: !2119)
!2209 = !{!2147, !531, i64 48}
!2210 = !DILocation(line: 265, scope: !2119)
!2211 = !DILocalVariable(name: "this", arg: 1, scope: !2212, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2212 = distinct !DISubprogram(name: "make_runnable", linkageName: "?make_runnable@work@Internal@Runtime@Halide@@QEAA_NXZ", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2213)
!2213 = !{!2211}
!2214 = !DILocation(line: 0, scope: !2212, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 266, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !13, line: 265)
!2217 = distinct !DILexicalBlock(scope: !2119, file: !13, line: 265)
!2218 = !DILocation(line: 47, scope: !2219, inlinedAt: !2215)
!2219 = distinct !DILexicalBlock(scope: !2212, file: !13, line: 47)
!2220 = !{!2147, !2149, i64 120}
!2221 = !{!2147, !2149, i64 32}
!2222 = !DILocation(line: 48, scope: !2223, inlinedAt: !2215)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !13, line: 47)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !13, line: 47)
!2225 = !{!2147, !400, i64 24}
!2226 = !{!2227, !2149, i64 8}
!2227 = !{!"?AUhalide_semaphore_acquire_t@@", !400, i64 0, !2149, i64 8}
!2228 = !{!2227, !400, i64 0}
!2229 = !DILocation(line: 47, scope: !2224, inlinedAt: !2215)
!2230 = distinct !{!2230, !2218, !2231, !579}
!2231 = !DILocation(line: 56, scope: !2219, inlinedAt: !2215)
!2232 = !DILocation(line: 272, scope: !2119)
!2233 = !DILocation(line: 273, scope: !2119)
!2234 = !DILocation(line: 256, scope: !2119)
!2235 = !{!2147, !400, i64 72}
!2236 = !DILocation(line: 278, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !13, line: 276)
!2238 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 276)
!2239 = !DILocation(line: 279, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !13, line: 278)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !13, line: 278)
!2242 = !DILocation(line: 281, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !13, line: 279)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !13, line: 279)
!2245 = !DILocation(line: 282, scope: !2243)
!2246 = !DILocation(line: 283, scope: !2243)
!2247 = !DILocation(line: 284, scope: !2243)
!2248 = !DILocation(line: 285, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !13, line: 284)
!2250 = !{!2151, !2149, i64 68}
!2251 = !DILocation(line: 286, scope: !2249)
!2252 = !{!2147, !531, i64 124}
!2253 = !DILocation(line: 287, scope: !2249)
!2254 = !DILocation(line: 288, scope: !2249)
!2255 = !DILocation(line: 289, scope: !2249)
!2256 = !DILocation(line: 290, scope: !2249)
!2257 = !DILocation(line: 292, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2241, file: !13, line: 291)
!2259 = !{!2151, !2149, i64 64}
!2260 = !DILocation(line: 293, scope: !2258)
!2261 = !{!2151, !2149, i64 28}
!2262 = !{!2151, !2149, i64 32}
!2263 = !DILocation(line: 295, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !13, line: 293)
!2265 = distinct !DILexicalBlock(scope: !2258, file: !13, line: 293)
!2266 = !DILocation(line: 296, scope: !2264)
!2267 = !DILocation(line: 297, scope: !2264)
!2268 = !DILocation(line: 298, scope: !2264)
!2269 = !DILocation(line: 298, scope: !2265)
!2270 = !DILocation(line: 300, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !13, line: 298)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !13, line: 298)
!2273 = !DILocation(line: 301, scope: !2271)
!2274 = !DILocation(line: 302, scope: !2271)
!2275 = !DILocation(line: 303, scope: !2271)
!2276 = !DILocation(line: 304, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !13, line: 303)
!2278 = !DILocation(line: 305, scope: !2277)
!2279 = !DILocation(line: 306, scope: !2258)
!2280 = !DILocation(line: 307, scope: !2258)
!2281 = !DILocation(line: 58, scope: !2212, inlinedAt: !2215)
!2282 = !DILocation(line: 318, scope: !2115)
!2283 = !DILocation(line: 320, scope: !2115)
!2284 = !DILocation(line: 0, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 320)
!2286 = !DILocation(line: 321, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2285, file: !13, line: 320)
!2288 = !DILocation(line: 323, scope: !2287)
!2289 = !DILocation(line: 324, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !13, line: 323)
!2291 = !DILocation(line: 326, scope: !2290)
!2292 = !DILocation(line: 330, scope: !2115)
!2293 = !DILocation(line: 332, scope: !2126)
!2294 = !DILocation(line: 335, scope: !2126)
!2295 = !DILocation(line: 0, scope: !2126)
!2296 = !DILocation(line: 338, scope: !2126)
!2297 = !DILocation(line: 340, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2126, file: !13, line: 338)
!2299 = !DILocation(line: 47, scope: !2219, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 340, scope: !2298)
!2301 = !DILocation(line: 0, scope: !2212, inlinedAt: !2300)
!2302 = !DILocation(line: 48, scope: !2223, inlinedAt: !2300)
!2303 = !DILocation(line: 47, scope: !2224, inlinedAt: !2300)
!2304 = distinct !{!2304, !2299, !2305, !579}
!2305 = !DILocation(line: 56, scope: !2219, inlinedAt: !2300)
!2306 = !DILocation(line: 58, scope: !2212, inlinedAt: !2300)
!2307 = !DILocation(line: 342, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2298, file: !13, line: 341)
!2309 = distinct !{!2309, !2297, !2310, !579}
!2310 = !DILocation(line: 343, scope: !2298)
!2311 = !DILocation(line: 344, scope: !2298)
!2312 = !DILocation(line: 349, scope: !2298)
!2313 = !{!2147, !400, i64 8}
!2314 = !{!2147, !2149, i64 36}
!2315 = !{!2147, !400, i64 0}
!2316 = !{!2147, !400, i64 104}
!2317 = !DILocation(line: 352, scope: !2298)
!2318 = distinct !{!2318, !2296, !2319, !579}
!2319 = !DILocation(line: 354, scope: !2126)
!2320 = !DILocation(line: 355, scope: !2126)
!2321 = !DILocation(line: 357, scope: !2126)
!2322 = !DILocation(line: 358, scope: !2126)
!2323 = !DILocation(line: 361, scope: !2126)
!2324 = !DILocation(line: 362, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !13, line: 361)
!2326 = distinct !DILexicalBlock(scope: !2126, file: !13, line: 361)
!2327 = !DILocation(line: 399, scope: !2115)
!2328 = !DILocation(line: 363, scope: !2326)
!2329 = !DILocation(line: 364, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !13, line: 363)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !13, line: 363)
!2332 = !DILocation(line: 365, scope: !2330)
!2333 = !DILocation(line: 366, scope: !2330)
!2334 = !DILocation(line: 369, scope: !2130)
!2335 = !{i64 0, i64 8, !883, i64 8, i64 8, !883, i64 16, i64 8, !883, i64 24, i64 8, !883, i64 32, i64 4, !2336, i64 36, i64 4, !2336, i64 40, i64 4, !2336, i64 44, i64 4, !2336, i64 48, i64 1, !2337, i64 56, i64 8, !883, i64 64, i64 8, !883, i64 72, i64 8, !883, i64 80, i64 4, !2336, i64 88, i64 8, !883, i64 96, i64 4, !2336, i64 104, i64 8, !883, i64 112, i64 4, !2336, i64 116, i64 4, !2336, i64 120, i64 4, !2336, i64 124, i64 1, !2337}
!2336 = !{!2149, !2149, i64 0}
!2337 = !{!531, !531, i64 0}
!2338 = !DILocation(line: 0, scope: !2130)
!2339 = !{i64 0, i64 8, !883, i64 8, i64 8, !883, i64 16, i64 8, !883, i64 24, i64 4, !2336, i64 28, i64 4, !2336, i64 32, i64 4, !2336, i64 36, i64 4, !2336, i64 40, i64 1, !2337, i64 48, i64 8, !883, i64 56, i64 8, !883, i64 64, i64 8, !883, i64 72, i64 4, !2336, i64 80, i64 8, !883, i64 88, i64 4, !2336, i64 96, i64 8, !883, i64 104, i64 4, !2336, i64 108, i64 4, !2336, i64 112, i64 4, !2336, i64 116, i64 1, !2337}
!2340 = !{i64 0, i64 8, !883, i64 8, i64 8, !883, i64 16, i64 8, !883, i64 24, i64 4, !2336, i64 32, i64 8, !883, i64 40, i64 4, !2336, i64 48, i64 8, !883, i64 56, i64 4, !2336, i64 60, i64 4, !2336, i64 64, i64 4, !2336, i64 68, i64 1, !2337}
!2341 = !{i64 0, i64 8, !883, i64 8, i64 4, !2336, i64 12, i64 4, !2336, i64 16, i64 4, !2336, i64 20, i64 1, !2337}
!2342 = !DILocation(line: 370, scope: !2130)
!2343 = !DILocation(line: 371, scope: !2130)
!2344 = !DILocation(line: 375, scope: !2130)
!2345 = !DILocation(line: 376, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !13, line: 375)
!2347 = distinct !DILexicalBlock(scope: !2130, file: !13, line: 375)
!2348 = !DILocation(line: 377, scope: !2346)
!2349 = !DILocation(line: 380, scope: !2130)
!2350 = !DILocation(line: 381, scope: !2130)
!2351 = !DILocation(line: 382, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !13, line: 381)
!2353 = distinct !DILexicalBlock(scope: !2130, file: !13, line: 381)
!2354 = !DILocation(line: 384, scope: !2352)
!2355 = !DILocation(line: 385, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !13, line: 384)
!2357 = !DILocation(line: 388, scope: !2356)
!2358 = !DILocation(line: 0, scope: !2353)
!2359 = !DILocation(line: 389, scope: !2130)
!2360 = !DILocation(line: 400, scope: !2134)
!2361 = !DILocation(line: 0, scope: !2133)
!2362 = !DILocation(line: 402, scope: !2133)
!2363 = !{!2147, !2149, i64 80}
!2364 = !DILocation(line: 404, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !13, line: 402)
!2366 = distinct !DILexicalBlock(scope: !2133, file: !13, line: 402)
!2367 = !DILocation(line: 405, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !13, line: 404)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !13, line: 404)
!2370 = !DILocation(line: 406, scope: !2368)
!2371 = !DILocation(line: 407, scope: !2368)
!2372 = !DILocation(line: 402, scope: !2366)
!2373 = distinct !{!2373, !2362, !2374, !579}
!2374 = !DILocation(line: 409, scope: !2133)
!2375 = !DILocation(line: 396, scope: !2115)
!2376 = !DILocation(line: 412, scope: !2115)
!2377 = !DILocation(line: 0, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 412)
!2379 = !DILocation(line: 413, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2378, file: !13, line: 412)
!2381 = !DILocation(line: 415, scope: !2380)
!2382 = !DILocation(line: 416, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !13, line: 415)
!2384 = !DILocation(line: 418, scope: !2383)
!2385 = !DILocation(line: 421, scope: !2115)
!2386 = !DILocation(line: 425, scope: !2115)
!2387 = distinct !{!2387, !2143, !2388, !579}
!2388 = !DILocation(line: 430, scope: !2106)
!2389 = !DILocation(line: 428, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !13, line: 426)
!2391 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 425)
!2392 = !DILocation(line: 429, scope: !2390)
!2393 = !DILocation(line: 431, scope: !2106)
!2394 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401}
!2396 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2394, file: !13, line: 798, type: !43)
!2397 = !DILocalVariable(name: "closure", arg: 5, scope: !2394, file: !13, line: 798, type: !44)
!2398 = !DILocalVariable(name: "size", arg: 4, scope: !2394, file: !13, line: 798, type: !29)
!2399 = !DILocalVariable(name: "min", arg: 3, scope: !2394, file: !13, line: 798, type: !29)
!2400 = !DILocalVariable(name: "f", arg: 2, scope: !2394, file: !13, line: 797, type: !39)
!2401 = !DILocalVariable(name: "user_context", arg: 1, scope: !2394, file: !13, line: 797, type: !43)
!2402 = !DILocation(line: 0, scope: !2394)
!2403 = !DILocation(line: 799, scope: !2394)
!2404 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2405)
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "closure", arg: 4, scope: !2404, file: !13, line: 788, type: !44)
!2407 = !DILocalVariable(name: "idx", arg: 3, scope: !2404, file: !13, line: 787, type: !29)
!2408 = !DILocalVariable(name: "f", arg: 2, scope: !2404, file: !13, line: 787, type: !66)
!2409 = !DILocalVariable(name: "user_context", arg: 1, scope: !2404, file: !13, line: 787, type: !43)
!2410 = !DILocation(line: 0, scope: !2404)
!2411 = !DILocation(line: 789, scope: !2404)
!2412 = distinct !DISubprogram(name: "worker_thread", linkageName: "?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2413)
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "arg", arg: 1, scope: !2412, file: !13, line: 433, type: !43)
!2415 = !DILocation(line: 0, scope: !2412)
!2416 = !DILocation(line: 434, scope: !2412)
!2417 = !DILocation(line: 435, scope: !2412)
!2418 = !DILocation(line: 436, scope: !2412)
!2419 = !DILocation(line: 437, scope: !2412)
!2420 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z", scope: !3, file: !13, line: 439, type: !2421, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !29, !32, !32}
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2434, !2436}
!2424 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2420, file: !13, line: 439, type: !32)
!2425 = !DILocalVariable(name: "jobs", arg: 2, scope: !2420, file: !13, line: 439, type: !32)
!2426 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2420, file: !13, line: 439, type: !29)
!2427 = !DILocalVariable(name: "min_threads", scope: !2420, file: !13, line: 457, type: !29)
!2428 = !DILocalVariable(name: "workers_to_wake", scope: !2420, file: !13, line: 461, type: !29)
!2429 = !DILocalVariable(name: "stealable_jobs", scope: !2420, file: !13, line: 465, type: !64)
!2430 = !DILocalVariable(name: "job_has_acquires", scope: !2420, file: !13, line: 467, type: !64)
!2431 = !DILocalVariable(name: "job_may_block", scope: !2420, file: !13, line: 468, type: !64)
!2432 = !DILocalVariable(name: "i", scope: !2433, file: !13, line: 469, type: !29)
!2433 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 469)
!2434 = !DILocalVariable(name: "i", scope: !2435, file: !13, line: 527, type: !29)
!2435 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 527)
!2436 = !DILocalVariable(name: "nested_parallelism", scope: !2420, file: !13, line: 537, type: !64)
!2437 = !DILocation(line: 0, scope: !2420)
!2438 = !DILocation(line: 440, scope: !2420)
!2439 = !{!2151, !531, i64 2121}
!2440 = !DILocalVariable(name: "bytes", scope: !2441, file: !13, line: 148, type: !49)
!2441 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "?assert_zeroed@work_queue_t@Internal@Runtime@Halide@@QEBAXXZ", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2442)
!2442 = !{!2443, !2440, !2445}
!2443 = !DILocalVariable(name: "this", arg: 1, scope: !2441, type: !2444, flags: DIFlagArtificial | DIFlagObjectPointer)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2445 = !DILocalVariable(name: "limit", scope: !2441, file: !13, line: 149, type: !49)
!2446 = !DILocation(line: 0, scope: !2441, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 441, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !13, line: 440)
!2449 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 440)
!2450 = !DILocation(line: 150, scope: !2441, inlinedAt: !2447)
!2451 = !{!401, !401, i64 0}
!2452 = !DILocation(line: 151, scope: !2453, inlinedAt: !2447)
!2453 = distinct !DILexicalBlock(scope: !2441, file: !13, line: 150)
!2454 = distinct !{!2454, !2450, !2455, !579}
!2455 = !DILocation(line: 152, scope: !2441, inlinedAt: !2447)
!2456 = !DILocation(line: 153, scope: !2457, inlinedAt: !2447)
!2457 = distinct !DILexicalBlock(scope: !2441, file: !13, line: 153)
!2458 = !DILocation(line: 153, scope: !2459, inlinedAt: !2447)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !13, line: 153)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !13, line: 153)
!2461 = !DILocation(line: 446, scope: !2448)
!2462 = !{!2151, !2149, i64 8}
!2463 = !DILocation(line: 447, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !13, line: 446)
!2465 = distinct !DILexicalBlock(scope: !2448, file: !13, line: 446)
!2466 = !DILocation(line: 448, scope: !2464)
!2467 = !DILocation(line: 449, scope: !2448)
!2468 = !DILocation(line: 450, scope: !2448)
!2469 = !DILocation(line: 451, scope: !2448)
!2470 = !DILocation(line: 0, scope: !2433)
!2471 = !DILocation(line: 469, scope: !2433)
!2472 = !DILocation(line: 487, scope: !2420)
!2473 = !DILocation(line: 468, scope: !2420)
!2474 = !DILocation(line: 457, scope: !2420)
!2475 = !DILocation(line: 470, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !13, line: 469)
!2477 = distinct !DILexicalBlock(scope: !2433, file: !13, line: 469)
!2478 = !DILocation(line: 476, scope: !2476)
!2479 = !DILocation(line: 480, scope: !2476)
!2480 = !DILocation(line: 481, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !13, line: 480)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !13, line: 480)
!2483 = !DILocation(line: 482, scope: !2481)
!2484 = !DILocation(line: 483, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !13, line: 482)
!2486 = !DILocation(line: 484, scope: !2485)
!2487 = !DILocation(line: 0, scope: !2482)
!2488 = !DILocation(line: 469, scope: !2477)
!2489 = distinct !{!2489, !2471, !2490, !579}
!2490 = !DILocation(line: 485, scope: !2433)
!2491 = !DILocation(line: 497, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !13, line: 487)
!2493 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 487)
!2494 = !DILocation(line: 503, scope: !2492)
!2495 = !DILocation(line: 508, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !13, line: 505)
!2497 = !DILocation(line: 509, scope: !2496)
!2498 = distinct !{!2498, !2494, !2499, !579}
!2499 = !DILocation(line: 511, scope: !2492)
!2500 = !DILocation(line: 513, scope: !2492)
!2501 = !DILocation(line: 514, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !13, line: 513)
!2503 = distinct !DILexicalBlock(scope: !2492, file: !13, line: 513)
!2504 = !DILocation(line: 515, scope: !2502)
!2505 = !DILocation(line: 518, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !13, line: 518)
!2507 = distinct !DILexicalBlock(scope: !2493, file: !13, line: 516)
!2508 = !DILocation(line: 518, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !13, line: 518)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !13, line: 518)
!2511 = !DILocation(line: 521, scope: !2507)
!2512 = !DILocation(line: 522, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !13, line: 521)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !13, line: 521)
!2515 = !DILocation(line: 523, scope: !2513)
!2516 = !DILocation(line: 0, scope: !2435)
!2517 = !DILocation(line: 527, scope: !2435)
!2518 = !DILocation(line: 0, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !13, line: 527)
!2520 = distinct !DILexicalBlock(scope: !2435, file: !13, line: 527)
!2521 = !DILocation(line: 537, scope: !2420)
!2522 = !DILocation(line: 542, scope: !2420)
!2523 = !DILocation(line: 0, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 542)
!2525 = !DILocation(line: 550, scope: !2420)
!2526 = !DILocation(line: 551, scope: !2420)
!2527 = !DILocation(line: 530, scope: !2519)
!2528 = !DILocation(line: 531, scope: !2519)
!2529 = !DILocation(line: 532, scope: !2519)
!2530 = !DILocation(line: 533, scope: !2519)
!2531 = distinct !{!2531, !2517, !2532, !579}
!2532 = !DILocation(line: 535, scope: !2435)
!2533 = !DILocation(line: 552, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !13, line: 551)
!2535 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 551)
!2536 = !DILocation(line: 553, scope: !2534)
!2537 = !DILocation(line: 554, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !13, line: 553)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !13, line: 553)
!2540 = !DILocation(line: 555, scope: !2538)
!2541 = !DILocation(line: 558, scope: !2420)
!2542 = !DILocation(line: 559, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !13, line: 558)
!2544 = distinct !DILexicalBlock(scope: !2420, file: !13, line: 558)
!2545 = !DILocation(line: 560, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !13, line: 559)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !13, line: 559)
!2548 = !DILocation(line: 561, scope: !2546)
!2549 = !DILocation(line: 562, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !13, line: 561)
!2551 = !DILocation(line: 563, scope: !2550)
!2552 = !DILocation(line: 565, scope: !2420)
!2553 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2554)
!2554 = !{!2555, !2556, !2557, !2558}
!2555 = !DILocalVariable(name: "closure", arg: 4, scope: !2553, file: !13, line: 590, type: !44)
!2556 = !DILocalVariable(name: "idx", arg: 3, scope: !2553, file: !13, line: 589, type: !29)
!2557 = !DILocalVariable(name: "f", arg: 2, scope: !2553, file: !13, line: 589, type: !66)
!2558 = !DILocalVariable(name: "user_context", arg: 1, scope: !2553, file: !13, line: 589, type: !43)
!2559 = !DILocation(line: 0, scope: !2553)
!2560 = !DILocation(line: 591, scope: !2553)
!2561 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568}
!2563 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2561, file: !13, line: 596, type: !43)
!2564 = !DILocalVariable(name: "closure", arg: 5, scope: !2561, file: !13, line: 595, type: !44)
!2565 = !DILocalVariable(name: "extent", arg: 4, scope: !2561, file: !13, line: 595, type: !29)
!2566 = !DILocalVariable(name: "min", arg: 3, scope: !2561, file: !13, line: 595, type: !29)
!2567 = !DILocalVariable(name: "f", arg: 2, scope: !2561, file: !13, line: 594, type: !39)
!2568 = !DILocalVariable(name: "user_context", arg: 1, scope: !2561, file: !13, line: 594, type: !43)
!2569 = !DILocation(line: 0, scope: !2561)
!2570 = !DILocation(line: 597, scope: !2561)
!2571 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2572)
!2572 = !{!2573, !2574, !2575, !2576, !2577, !2578}
!2573 = !DILocalVariable(name: "closure", arg: 5, scope: !2571, file: !13, line: 601, type: !44)
!2574 = !DILocalVariable(name: "size", arg: 4, scope: !2571, file: !13, line: 601, type: !29)
!2575 = !DILocalVariable(name: "min", arg: 3, scope: !2571, file: !13, line: 601, type: !29)
!2576 = !DILocalVariable(name: "f", arg: 2, scope: !2571, file: !13, line: 600, type: !66)
!2577 = !DILocalVariable(name: "user_context", arg: 1, scope: !2571, file: !13, line: 600, type: !43)
!2578 = !DILocalVariable(name: "job", scope: !2571, file: !13, line: 606, type: !33)
!2579 = !DILocation(line: 0, scope: !2571)
!2580 = !DILocation(line: 602, scope: !2571)
!2581 = !DILocation(line: 606, scope: !2571)
!2582 = !DILocation(line: 607, scope: !2571)
!2583 = !DILocation(line: 608, scope: !2571)
!2584 = !DILocation(line: 609, scope: !2571)
!2585 = !DILocation(line: 610, scope: !2571)
!2586 = !DILocation(line: 611, scope: !2571)
!2587 = !DILocation(line: 612, scope: !2571)
!2588 = !DILocation(line: 613, scope: !2571)
!2589 = !DILocation(line: 614, scope: !2571)
!2590 = !DILocation(line: 615, scope: !2571)
!2591 = !{!2147, !400, i64 16}
!2592 = !DILocation(line: 616, scope: !2571)
!2593 = !{!2147, !400, i64 56}
!2594 = !DILocation(line: 617, scope: !2571)
!2595 = !DILocation(line: 618, scope: !2571)
!2596 = !DILocation(line: 619, scope: !2571)
!2597 = !DILocation(line: 620, scope: !2571)
!2598 = !DILocation(line: 621, scope: !2571)
!2599 = !DILocation(line: 622, scope: !2571)
!2600 = !DILocation(line: 623, scope: !2571)
!2601 = !DILocation(line: 624, scope: !2571)
!2602 = !DILocation(line: 625, scope: !2571)
!2603 = !DILocation(line: 626, scope: !2571)
!2604 = !DILocation(line: 627, scope: !2571)
!2605 = !DILocation(line: 628, scope: !2571)
!2606 = !DILocation(line: 629, scope: !2571)
!2607 = !DILocation(line: 630, scope: !2571)
!2608 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2617, !2618}
!2610 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2608, file: !13, line: 634, type: !43)
!2611 = !DILocalVariable(name: "tasks", arg: 3, scope: !2608, file: !13, line: 633, type: !145)
!2612 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2608, file: !13, line: 632, type: !29)
!2613 = !DILocalVariable(name: "user_context", arg: 1, scope: !2608, file: !13, line: 632, type: !43)
!2614 = !DILocalVariable(name: "jobs", scope: !2608, file: !13, line: 635, type: !32)
!2615 = !DILocalVariable(name: "i", scope: !2616, file: !13, line: 637, type: !29)
!2616 = distinct !DILexicalBlock(scope: !2608, file: !13, line: 637)
!2617 = !DILocalVariable(name: "exit_status", scope: !2608, file: !13, line: 659, type: !29)
!2618 = !DILocalVariable(name: "i", scope: !2619, file: !13, line: 660, type: !29)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !13, line: 660)
!2620 = !DILocation(line: 0, scope: !2608)
!2621 = !DILocation(line: 635, scope: !2608)
!2622 = !DILocation(line: 0, scope: !2616)
!2623 = !DILocation(line: 637, scope: !2616)
!2624 = !DILocation(line: 653, scope: !2608)
!2625 = !DILocation(line: 638, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !13, line: 637)
!2627 = distinct !DILexicalBlock(scope: !2616, file: !13, line: 637)
!2628 = !{!2148, !2149, i64 40}
!2629 = !DILocation(line: 640, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !13, line: 638)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !13, line: 638)
!2632 = !DILocation(line: 641, scope: !2630)
!2633 = !DILocation(line: 643, scope: !2626)
!2634 = !{i64 0, i64 8, !883, i64 8, i64 8, !883, i64 16, i64 8, !883, i64 24, i64 8, !883, i64 32, i64 4, !2336, i64 36, i64 4, !2336, i64 40, i64 4, !2336, i64 44, i64 4, !2336, i64 48, i64 1, !2337}
!2635 = !DILocation(line: 644, scope: !2626)
!2636 = !DILocation(line: 645, scope: !2626)
!2637 = !DILocation(line: 646, scope: !2626)
!2638 = !DILocation(line: 647, scope: !2626)
!2639 = !DILocation(line: 648, scope: !2626)
!2640 = !DILocation(line: 649, scope: !2626)
!2641 = !DILocation(line: 650, scope: !2626)
!2642 = !DILocation(line: 651, scope: !2626)
!2643 = !DILocation(line: 637, scope: !2627)
!2644 = distinct !{!2644, !2623, !2645, !579}
!2645 = !DILocation(line: 651, scope: !2616)
!2646 = !DILocation(line: 657, scope: !2608)
!2647 = !DILocation(line: 658, scope: !2608)
!2648 = !DILocation(line: 0, scope: !2619)
!2649 = !DILocation(line: 660, scope: !2619)
!2650 = !DILocation(line: 668, scope: !2608)
!2651 = !DILocation(line: 663, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !13, line: 660)
!2653 = distinct !DILexicalBlock(scope: !2619, file: !13, line: 660)
!2654 = !DILocation(line: 664, scope: !2652)
!2655 = !DILocation(line: 660, scope: !2653)
!2656 = distinct !{!2656, !2649, !2657, !579}
!2657 = !DILocation(line: 667, scope: !2619)
!2658 = !DILocation(line: 670, scope: !2608)
!2659 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DILocalVariable(name: "n", arg: 2, scope: !2659, file: !13, line: 715, type: !29)
!2662 = !DILocalVariable(name: "s", arg: 1, scope: !2659, file: !13, line: 715, type: !56)
!2663 = !DILocalVariable(name: "sem", scope: !2659, file: !13, line: 716, type: !366)
!2664 = !DILocation(line: 0, scope: !2659)
!2665 = !DILocation(line: 717, scope: !2659)
!2666 = !DILocalVariable(name: "val", arg: 2, scope: !2667, file: !6, line: 218, type: !2670)
!2667 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "??$atomic_store_release@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAH0@Z", scope: !471, file: !6, line: 218, type: !2668, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2673, retainedNodes: !2671)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !2670, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2671 = !{!2666, !2672}
!2672 = !DILocalVariable(name: "addr", arg: 1, scope: !2667, file: !6, line: 218, type: !2670)
!2673 = !{!2674}
!2674 = !DITemplateTypeParameter(name: "T", type: !29)
!2675 = !DILocation(line: 0, scope: !2667, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 717, scope: !2659)
!2677 = !DILocation(line: 219, scope: !2667, inlinedAt: !2676)
!2678 = !DILocation(line: 718, scope: !2659)
!2679 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2680)
!2680 = !{!2681, !2682, !2683, !2684, !2685}
!2681 = !DILocalVariable(name: "n", arg: 2, scope: !2679, file: !13, line: 735, type: !29)
!2682 = !DILocalVariable(name: "s", arg: 1, scope: !2679, file: !13, line: 735, type: !56)
!2683 = !DILocalVariable(name: "sem", scope: !2679, file: !13, line: 739, type: !366)
!2684 = !DILocalVariable(name: "expected", scope: !2679, file: !13, line: 741, type: !29)
!2685 = !DILocalVariable(name: "desired", scope: !2679, file: !13, line: 742, type: !29)
!2686 = !DILocation(line: 0, scope: !2679)
!2687 = !DILocation(line: 736, scope: !2679)
!2688 = !DILocation(line: 743, scope: !2679)
!2689 = !DILocalVariable(name: "val", arg: 2, scope: !2690, file: !6, line: 205, type: !2670)
!2690 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "??$atomic_load_acquire@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPEAH0@Z", scope: !471, file: !6, line: 205, type: !2668, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2673, retainedNodes: !2691)
!2691 = !{!2689, !2692}
!2692 = !DILocalVariable(name: "addr", arg: 1, scope: !2690, file: !6, line: 205, type: !2670)
!2693 = !DILocation(line: 0, scope: !2690, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 743, scope: !2679)
!2695 = !DILocation(line: 206, scope: !2690, inlinedAt: !2694)
!2696 = !DILocation(line: 745, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2679, file: !13, line: 744)
!2698 = !DILocation(line: 746, scope: !2697)
!2699 = !DILocalVariable(name: "desired", arg: 3, scope: !2700, file: !6, line: 179, type: !2670)
!2700 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "??$atomic_cas_weak_relacq_relaxed@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPEAH00@Z", scope: !471, file: !6, line: 179, type: !2701, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2673, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!64, !2670, !2670, !2670}
!2703 = !{!2699, !2704, !2705}
!2704 = !DILocalVariable(name: "expected", arg: 2, scope: !2700, file: !6, line: 179, type: !2670)
!2705 = !DILocalVariable(name: "addr", arg: 1, scope: !2700, file: !6, line: 179, type: !2670)
!2706 = !DILocation(line: 0, scope: !2700, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 746, scope: !2697)
!2708 = !DILocation(line: 180, scope: !2700, inlinedAt: !2707)
!2709 = !DILocation(line: 749, scope: !2679)
!2710 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2711)
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DILocalVariable(name: "n", arg: 2, scope: !2710, file: !13, line: 721, type: !29)
!2713 = !DILocalVariable(name: "s", arg: 1, scope: !2710, file: !13, line: 721, type: !56)
!2714 = !DILocalVariable(name: "sem", scope: !2710, file: !13, line: 722, type: !366)
!2715 = !DILocalVariable(name: "old_val", scope: !2710, file: !13, line: 723, type: !29)
!2716 = !DILocation(line: 0, scope: !2710)
!2717 = !DILocation(line: 723, scope: !2710)
!2718 = !DILocalVariable(name: "val", arg: 2, scope: !2719, file: !6, line: 170, type: !29)
!2719 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "??$atomic_fetch_add_acquire_release@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAHPEAHH@Z", scope: !471, file: !6, line: 170, type: !2720, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2673, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!29, !2670, !29}
!2722 = !{!2718, !2723}
!2723 = !DILocalVariable(name: "addr", arg: 1, scope: !2719, file: !6, line: 170, type: !2670)
!2724 = !DILocation(line: 0, scope: !2719, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 723, scope: !2710)
!2726 = !DILocation(line: 171, scope: !2719, inlinedAt: !2725)
!2727 = !DILocation(line: 725, scope: !2710)
!2728 = !DILocation(line: 727, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !13, line: 725)
!2730 = distinct !DILexicalBlock(scope: !2710, file: !13, line: 725)
!2731 = !DILocation(line: 728, scope: !2729)
!2732 = !DILocation(line: 729, scope: !2729)
!2733 = !DILocation(line: 730, scope: !2729)
!2734 = !DILocation(line: 731, scope: !2729)
!2735 = !DILocation(line: 732, scope: !2710)
!2736 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !2737, file: !13, line: 584, type: !2738, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!2737 = !DINamespace(scope: null)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null}
!2740 = !DILocation(line: 585, scope: !2736)
!2741 = !DILocation(line: 586, scope: !2736)
!2742 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !2738, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2743)
!2743 = !{!2744}
!2744 = !DILocalVariable(name: "i", scope: !2745, file: !13, line: 702, type: !29)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !13, line: 702)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !13, line: 690)
!2747 = distinct !DILexicalBlock(scope: !2742, file: !13, line: 690)
!2748 = !DILocation(line: 690, scope: !2742)
!2749 = !DILocation(line: 693, scope: !2746)
!2750 = !DILocation(line: 695, scope: !2746)
!2751 = !DILocation(line: 696, scope: !2746)
!2752 = !DILocation(line: 697, scope: !2746)
!2753 = !DILocation(line: 698, scope: !2746)
!2754 = !DILocation(line: 699, scope: !2746)
!2755 = !DILocation(line: 0, scope: !2745)
!2756 = !DILocation(line: 702, scope: !2745)
!2757 = !DILocalVariable(name: "this", arg: 1, scope: !2758, type: !2762, flags: DIFlagArtificial | DIFlagObjectPointer)
!2758 = distinct !DISubprogram(name: "reset", linkageName: "?reset@work_queue_t@Internal@Runtime@Halide@@QEAAXXZ", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !2759)
!2759 = !{!2757, !2760, !2761}
!2760 = !DILocalVariable(name: "bytes", scope: !2758, file: !13, line: 160, type: !370)
!2761 = !DILocalVariable(name: "limit", scope: !2758, file: !13, line: 161, type: !370)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2763 = !DILocation(line: 0, scope: !2758, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 707, scope: !2746)
!2765 = !DILocation(line: 162, scope: !2758, inlinedAt: !2764)
!2766 = !DILocation(line: 708, scope: !2746)
!2767 = !DILocation(line: 703, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !13, line: 702)
!2769 = distinct !DILexicalBlock(scope: !2745, file: !13, line: 702)
!2770 = !DILocation(line: 702, scope: !2769)
!2771 = distinct !{!2771, !2756, !2772, !579}
!2772 = !DILocation(line: 704, scope: !2745)
!2773 = !DILocation(line: 709, scope: !2742)
!2774 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !2077, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2775)
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !13, line: 672, type: !29)
!2777 = !DILocalVariable(name: "old", scope: !2774, file: !13, line: 683, type: !29)
!2778 = !DILocation(line: 0, scope: !2774)
!2779 = !DILocation(line: 673, scope: !2774)
!2780 = !DILocation(line: 674, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !13, line: 673)
!2782 = distinct !DILexicalBlock(scope: !2774, file: !13, line: 673)
!2783 = !DILocation(line: 679, scope: !2774)
!2784 = !DILocation(line: 680, scope: !2774)
!2785 = !DILocation(line: 681, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !13, line: 680)
!2787 = distinct !DILexicalBlock(scope: !2774, file: !13, line: 680)
!2788 = !DILocation(line: 682, scope: !2786)
!2789 = !DILocation(line: 683, scope: !2774)
!2790 = !DILocation(line: 684, scope: !2774)
!2791 = !DILocation(line: 685, scope: !2774)
!2792 = !DILocation(line: 686, scope: !2774)
!2793 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !2794, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!123, !123}
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "f", arg: 1, scope: !2793, file: !13, line: 751, type: !123)
!2798 = !DILocalVariable(name: "result", scope: !2793, file: !13, line: 752, type: !123)
!2799 = !DILocation(line: 0, scope: !2793)
!2800 = !DILocation(line: 752, scope: !2793)
!2801 = !DILocation(line: 753, scope: !2793)
!2802 = !DILocation(line: 754, scope: !2793)
!2803 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !2804, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!129, !129}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "f", arg: 1, scope: !2803, file: !13, line: 757, type: !129)
!2808 = !DILocalVariable(name: "result", scope: !2803, file: !13, line: 758, type: !129)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 758, scope: !2803)
!2811 = !DILocation(line: 759, scope: !2803)
!2812 = !DILocation(line: 760, scope: !2803)
!2813 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !2814, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!135, !135}
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "f", arg: 1, scope: !2813, file: !13, line: 763, type: !135)
!2818 = !DILocalVariable(name: "result", scope: !2813, file: !13, line: 764, type: !135)
!2819 = !DILocation(line: 0, scope: !2813)
!2820 = !DILocation(line: 764, scope: !2813)
!2821 = !DILocation(line: 765, scope: !2813)
!2822 = !DILocation(line: 766, scope: !2813)
!2823 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !2824, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{null, !135, !123, !129, !141, !148, !154, !160}
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832, !2833}
!2827 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !2823, file: !13, line: 776, type: !160)
!2828 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !2823, file: !13, line: 775, type: !154)
!2829 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !2823, file: !13, line: 774, type: !148)
!2830 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !2823, file: !13, line: 773, type: !141)
!2831 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !2823, file: !13, line: 772, type: !129)
!2832 = !DILocalVariable(name: "do_task", arg: 2, scope: !2823, file: !13, line: 771, type: !123)
!2833 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !2823, file: !13, line: 770, type: !135)
!2834 = !DILocation(line: 0, scope: !2823)
!2835 = !DILocation(line: 778, scope: !2823)
!2836 = !DILocation(line: 779, scope: !2823)
!2837 = !DILocation(line: 780, scope: !2823)
!2838 = !DILocation(line: 781, scope: !2823)
!2839 = !DILocation(line: 782, scope: !2823)
!2840 = !DILocation(line: 783, scope: !2823)
!2841 = !DILocation(line: 784, scope: !2823)
!2842 = !DILocation(line: 785, scope: !2823)
!2843 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849}
!2845 = !DILocalVariable(name: "closure", arg: 5, scope: !2843, file: !13, line: 793, type: !44)
!2846 = !DILocalVariable(name: "size", arg: 4, scope: !2843, file: !13, line: 793, type: !29)
!2847 = !DILocalVariable(name: "min", arg: 3, scope: !2843, file: !13, line: 793, type: !29)
!2848 = !DILocalVariable(name: "f", arg: 2, scope: !2843, file: !13, line: 792, type: !66)
!2849 = !DILocalVariable(name: "user_context", arg: 1, scope: !2843, file: !13, line: 792, type: !43)
!2850 = !DILocation(line: 0, scope: !2843)
!2851 = !DILocation(line: 794, scope: !2843)
!2852 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2853)
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2852, file: !13, line: 804, type: !43)
!2855 = !DILocalVariable(name: "tasks", arg: 3, scope: !2852, file: !13, line: 803, type: !145)
!2856 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2852, file: !13, line: 802, type: !29)
!2857 = !DILocalVariable(name: "user_context", arg: 1, scope: !2852, file: !13, line: 802, type: !43)
!2858 = !DILocation(line: 0, scope: !2852)
!2859 = !DILocation(line: 805, scope: !2852)
!2860 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2861)
!2861 = !{!2862, !2863}
!2862 = !DILocalVariable(name: "count", arg: 2, scope: !2860, file: !13, line: 808, type: !29)
!2863 = !DILocalVariable(name: "sema", arg: 1, scope: !2860, file: !13, line: 808, type: !56)
!2864 = !DILocation(line: 0, scope: !2860)
!2865 = !DILocation(line: 809, scope: !2860)
!2866 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2867)
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "count", arg: 2, scope: !2866, file: !13, line: 812, type: !29)
!2869 = !DILocalVariable(name: "sema", arg: 1, scope: !2866, file: !13, line: 812, type: !56)
!2870 = !DILocation(line: 0, scope: !2866)
!2871 = !DILocation(line: 813, scope: !2866)
!2872 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2873)
!2873 = !{!2874, !2875}
!2874 = !DILocalVariable(name: "count", arg: 2, scope: !2872, file: !13, line: 816, type: !29)
!2875 = !DILocalVariable(name: "sema", arg: 1, scope: !2872, file: !13, line: 816, type: !56)
!2876 = !DILocation(line: 0, scope: !2872)
!2877 = !DILocation(line: 817, scope: !2872)
