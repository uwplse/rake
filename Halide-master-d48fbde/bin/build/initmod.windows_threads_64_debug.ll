; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp"
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
define weak dso_local i8* @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z"(i8* %0) #0 !dbg !386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !390, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i8* %0, metadata !391, metadata !DIExpression()), !dbg !392
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !393
  %3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !393, !tbaa !394
  %4 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !393
  %5 = bitcast i8* %4 to i8**, !dbg !393
  %6 = load i8*, i8** %5, align 8, !dbg !393, !tbaa !399
  tail call void %3(i8* %6) #6, !dbg !393
  ret i8* null, !dbg !400
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !401 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@", i64 0, i64 0)) #6, !dbg !406
  call void @llvm.dbg.value(metadata i8* %1, metadata !405, metadata !DIExpression()), !dbg !407
  %2 = icmp eq i8* %1, null, !dbg !408
  br i1 %2, label %5, label %3, !dbg !408

3:                                                ; preds = %0
  %4 = tail call i32 @atoi(i8* nonnull %1) #6, !dbg !409
  br label %5, !dbg !409

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 8, %0 ], !dbg !412
  ret i32 %6, !dbg !413
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !418, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !419, metadata !DIExpression()), !dbg !421
  %3 = tail call i8* @malloc(i64 24) #6, !dbg !422
  call void @llvm.dbg.value(metadata i8* %3, metadata !420, metadata !DIExpression()), !dbg !421
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !423
  store void (i8*)* %0, void (i8*)** %4, align 8, !dbg !423, !tbaa !394
  %5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !424
  %6 = bitcast i8* %5 to i8**, !dbg !424
  store i8* %1, i8** %6, align 8, !dbg !424, !tbaa !399
  %7 = tail call i8* @CreateThread(i8* null, i64 0, i8* (i8*)* nonnull @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z", i8* %3, i32 0, i32* null) #6, !dbg !425
  %8 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !425
  %9 = bitcast i8* %8 to i8**, !dbg !425
  store i8* %7, i8** %9, align 8, !dbg !425, !tbaa !426
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !427
  ret %struct.halide_thread* %10, !dbg !427
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #3

declare dso_local i8* @CreateThread(i8*, i64, i8* (i8*)*, i8*, i32, i32*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !428 {
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !432, metadata !DIExpression()), !dbg !434
  %2 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !435
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %2, metadata !433, metadata !DIExpression()), !dbg !434
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %2, i64 0, i32 2, !dbg !436
  %4 = load i8*, i8** %3, align 8, !dbg !436, !tbaa !426
  %5 = tail call i32 @WaitForSingleObject(i8* %4, i32 -1) #6, !dbg !436
  %6 = bitcast %struct.halide_thread* %0 to i8*, !dbg !437
  tail call void @free(i8* %6) #6, !dbg !437
  ret void, !dbg !438
}

declare dso_local i32 @WaitForSingleObject(i8*, i32) local_unnamed_addr #3

declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !439 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !441, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i32 40, metadata !443, metadata !DIExpression()), !dbg !463
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !464
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()), !dbg !475
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !477
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i64 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i64
  br label %13, !dbg !478

13:                                               ; preds = %64, %1
  %14 = phi i64 [ %4, %1 ], [ %65, %64 ]
  %15 = phi i32 [ 40, %1 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !443, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i64 %14, metadata !455, metadata !DIExpression()), !dbg !463
  %16 = and i64 %14, 1, !dbg !479
  %17 = icmp eq i64 %16, 0, !dbg !479
  br i1 %17, label %18, label %29, !dbg !479

18:                                               ; preds = %13, %23
  %19 = phi i64 [ %24, %23 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !455, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i64 %19, metadata !455, metadata !DIExpression()), !dbg !463
  %20 = or i64 %19, 1, !dbg !480
  call void @llvm.dbg.value(metadata i64 %20, metadata !456, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i64* %3, metadata !488, metadata !DIExpression()), !dbg !489
  %21 = cmpxchg weak i64* %3, i64 %19, i64 %20 acquire monotonic, !dbg !491
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !491
  br i1 %22, label %67, label %23, !dbg !491

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !491
  call void @llvm.dbg.value(metadata i32 %15, metadata !443, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i64 %24, metadata !455, metadata !DIExpression()), !dbg !463
  %25 = and i64 %24, 1, !dbg !479
  %26 = icmp eq i64 %25, 0, !dbg !479
  br i1 %26, label %18, label %27, !dbg !479

27:                                               ; preds = %23
  %28 = extractvalue { i64, i1 } %21, 0, !dbg !491
  br label %29, !dbg !492

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %14, %13 ], [ %28, %27 ], !dbg !463
  %31 = icmp ugt i64 %30, 3, !dbg !492
  %32 = icmp sgt i32 %15, 0
  %33 = and i1 %31, %32, !dbg !492
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !493, metadata !DIExpression()), !dbg !497
  br i1 %33, label %34, label %39, !dbg !492

34:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 %15, metadata !443, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !463
  %35 = icmp sgt i32 %15, 1, !dbg !499
  br i1 %35, label %36, label %39, !dbg !492

36:                                               ; preds = %34
  %37 = add nsw i32 %15, -1, !dbg !500
  call void @llvm.dbg.value(metadata i32 %37, metadata !443, metadata !DIExpression()), !dbg !463
  call void @halide_thread_yield() #6, !dbg !503
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()), !dbg !506
  %38 = load atomic i64, i64* %3 monotonic, align 8, !dbg !508
  br label %64, !dbg !509

39:                                               ; preds = %34, %29
  %40 = phi i32 [ %15, %29 ], [ 0, %34 ], !dbg !463
  call void @llvm.dbg.value(metadata i32 %40, metadata !443, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #7, !dbg !510
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !460, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !511, metadata !DIExpression()) #7, !dbg !514
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !516, metadata !DIExpression()) #7, !dbg !520
  store i8 0, i8* %6, align 8, !dbg !522, !tbaa !523
  call void @InitializeCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !528
  call void @InitializeConditionVariable(i64* nonnull %8) #6, !dbg !530
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !531, !tbaa !532
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 8, !dbg !531, !tbaa !534
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !531, !tbaa !535
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !536, metadata !DIExpression()), !dbg !539
  store i8 1, i8* %6, align 8, !dbg !541, !tbaa !523
  call void @llvm.dbg.value(metadata i64 %30, metadata !455, metadata !DIExpression()), !dbg !463
  %41 = and i64 %30, -4, !dbg !542
  call void @llvm.dbg.value(metadata i64 %41, metadata !461, metadata !DIExpression()), !dbg !543
  %42 = icmp eq i64 %41, 0, !dbg !544
  br i1 %42, label %43, label %44, !dbg !544

43:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !545, !tbaa !535
  br label %46, !dbg !548

44:                                               ; preds = %39
  %45 = inttoptr i64 %41 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !542
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, metadata !461, metadata !DIExpression()), !dbg !543
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %45, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !549, !tbaa !532
  br label %46, !dbg !551

46:                                               ; preds = %44, %43
  call void @llvm.dbg.value(metadata i64 %30, metadata !455, metadata !DIExpression()), !dbg !463
  %47 = and i64 %30, 3, !dbg !552
  %48 = or i64 %47, %12, !dbg !552
  call void @llvm.dbg.value(metadata i64 %48, metadata !462, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i64* undef, metadata !553, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64* undef, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64* %3, metadata !557, metadata !DIExpression()), !dbg !558
  %49 = cmpxchg weak i64* %3, i64 %30, i64 %48 release monotonic, !dbg !560
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !560
  br i1 %50, label %53, label %51, !dbg !560

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !560
  br label %61

53:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !561, metadata !DIExpression()) #7, !dbg !564
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !568
  %54 = load i8, i8* %6, align 8, !dbg !569, !tbaa !523, !range !570
  %55 = icmp eq i8 %54, 0, !dbg !569
  br i1 %55, label %59, label %56, !dbg !569

56:                                               ; preds = %53, %56
  call void @SleepConditionVariableCS(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !571
  %57 = load i8, i8* %6, align 8, !dbg !569, !tbaa !523, !range !570
  %58 = icmp eq i8 %57, 0, !dbg !569
  br i1 %58, label %59, label %56, !dbg !569, !llvm.loop !573

59:                                               ; preds = %56, %53
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !576
  call void @llvm.dbg.value(metadata i32 40, metadata !443, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !577
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()), !dbg !577
  %60 = load atomic i64, i64* %3 monotonic, align 8, !dbg !579
  br label %61, !dbg !580

61:                                               ; preds = %51, %59
  %62 = phi i64 [ %60, %59 ], [ %52, %51 ], !dbg !463
  %63 = phi i32 [ 40, %59 ], [ %40, %51 ], !dbg !463
  call void @llvm.dbg.value(metadata i32 %63, metadata !443, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !581, metadata !DIExpression()) #7, !dbg !584
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !586, metadata !DIExpression()) #7, !dbg !589
  call void @DeleteCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !592
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #7, !dbg !594
  br label %64, !dbg !478

64:                                               ; preds = %61, %36
  %65 = phi i64 [ %38, %36 ], [ %62, %61 ]
  %66 = phi i32 [ %37, %36 ], [ %63, %61 ]
  br label %13, !dbg !463, !llvm.loop !595

67:                                               ; preds = %18
  ret void, !dbg !597
}

declare dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %0) local_unnamed_addr #4 align 2 !dbg !598 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !600, metadata !DIExpression()), !dbg !622
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i64 0, i32 0, !dbg !623
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i64* %2, metadata !472, metadata !DIExpression()), !dbg !624
  %3 = load atomic i64, i64* %2 monotonic, align 8, !dbg !626
  br label %4, !dbg !627

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %3, %1 ], [ %14, %10 ], !dbg !626
  call void @llvm.dbg.value(metadata i64 %5, metadata !601, metadata !DIExpression()), !dbg !622
  %6 = and i64 %5, 2, !dbg !628
  %7 = icmp ne i64 %6, 0, !dbg !628
  call void @llvm.dbg.value(metadata i1 %7, metadata !602, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !629
  call void @llvm.dbg.value(metadata i1 undef, metadata !604, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !629
  %8 = icmp ult i64 %5, 4
  %9 = or i1 %8, %7, !dbg !630
  call void @llvm.dbg.value(metadata i1 %8, metadata !604, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !629
  br i1 %9, label %62, label %10, !dbg !630

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !601, metadata !DIExpression()), !dbg !622
  %11 = or i64 %5, 2, !dbg !631
  call void @llvm.dbg.value(metadata i64 %11, metadata !605, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i64* %2, metadata !488, metadata !DIExpression()), !dbg !632
  %12 = cmpxchg weak i64* %2, i64 %5, i64 %11 acquire monotonic, !dbg !634
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !634
  %14 = extractvalue { i64, i1 } %12, 0
  br i1 %13, label %15, label %4

15:                                               ; preds = %10, %60
  %16 = phi { i64, i1 } [ %61, %60 ], [ %12, %10 ]
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !626
  call void @llvm.dbg.value(metadata i64 %17, metadata !601, metadata !DIExpression()), !dbg !622
  %18 = and i64 %17, -4, !dbg !635
  %19 = inttoptr i64 %18 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !635
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !606, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !608, metadata !DIExpression()), !dbg !636
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, i64 0, i32 3, !dbg !637
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !609, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !636
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !636, !tbaa !535
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %19, metadata !608, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i32 undef, metadata !610, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, metadata !609, metadata !DIExpression()), !dbg !636
  %22 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %21, null, !dbg !638
  br i1 %22, label %23, label %34, !dbg !638

23:                                               ; preds = %15, %29
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %26, %29 ], [ %19, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, metadata !608, metadata !DIExpression()), !dbg !636
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, i64 0, i32 1, !dbg !639
  %26 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %25, align 8, !dbg !639, !tbaa !532
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !611, metadata !DIExpression()), !dbg !640
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, null, !dbg !641
  br i1 %27, label %28, label %29, !dbg !641

28:                                               ; preds = %23
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !643
  tail call void @abort() #6, !dbg !643
  br label %29, !dbg !643

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 2, !dbg !646
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %24, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !646, !tbaa !534
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, metadata !608, metadata !DIExpression()), !dbg !636
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %26, i64 0, i32 3, !dbg !647
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !609, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i32 undef, metadata !610, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !636
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %31, align 8, !dbg !636, !tbaa !535
  call void @llvm.dbg.value(metadata i32 undef, metadata !610, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, metadata !609, metadata !DIExpression()), !dbg !636
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %32, null, !dbg !638
  br i1 %33, label %23, label %34, !dbg !638, !llvm.loop !648

34:                                               ; preds = %29, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %21, %15 ], [ %32, %29 ], !dbg !636
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !650, !tbaa !535
  call void @llvm.dbg.value(metadata i64 %17, metadata !601, metadata !DIExpression()), !dbg !622
  %36 = and i64 %17, 1, !dbg !651
  %37 = icmp eq i64 %36, 0, !dbg !651
  br i1 %37, label %42, label %38, !dbg !651

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %17, metadata !601, metadata !DIExpression()), !dbg !622
  %39 = and i64 %17, -3, !dbg !652
  call void @llvm.dbg.value(metadata i64 %39, metadata !613, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i64* undef, metadata !654, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64* undef, metadata !659, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64* %2, metadata !660, metadata !DIExpression()), !dbg !661
  %40 = cmpxchg weak i64* %2, i64 %17, i64 %39 acq_rel monotonic, !dbg !663
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !663
  br i1 %41, label %62, label %60, !dbg !663, !llvm.loop !664

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 2, !dbg !667
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 8, !dbg !667, !tbaa !534
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !616, metadata !DIExpression()), !dbg !636
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !668
  br i1 %45, label %46, label %54, !dbg !668

46:                                               ; preds = %42, %51
  %47 = phi i64 [ %52, %51 ], [ %17, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !617, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i64 %47, metadata !601, metadata !DIExpression()), !dbg !622
  %48 = and i64 %47, 1, !dbg !670
  call void @llvm.dbg.value(metadata i64 %48, metadata !620, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64* undef, metadata !654, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64* undef, metadata !659, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64* %2, metadata !660, metadata !DIExpression()), !dbg !672
  %49 = cmpxchg weak i64* %2, i64 %47, i64 %48 acq_rel monotonic, !dbg !674
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !674
  br i1 %50, label %56, label %51, !dbg !674

51:                                               ; preds = %46
  %52 = extractvalue { i64, i1 } %49, 0, !dbg !674
  call void @llvm.dbg.value(metadata i64 %52, metadata !601, metadata !DIExpression()), !dbg !622
  %53 = icmp ult i64 %52, 4, !dbg !675
  br i1 %53, label %46, label %60, !dbg !675, !llvm.loop !676

54:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %20, align 8, !dbg !679, !tbaa !535
  call void @llvm.dbg.value(metadata i64 -3, metadata !681, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i64* %2, metadata !686, metadata !DIExpression()), !dbg !687
  %55 = atomicrmw and i64* %2, i64 -3 release, !dbg !689
  br label %56, !dbg !690

56:                                               ; preds = %46, %54
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !691, metadata !DIExpression()) #7, !dbg !694
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 0, !dbg !696
  tail call void @EnterCriticalSection(%struct.CriticalSection* nonnull %57) #6, !dbg !696
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !697, metadata !DIExpression()) #7, !dbg !700
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 2, !dbg !702
  store i8 0, i8* %58, align 8, !dbg !702, !tbaa !523
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, i64 0, i32 0, i32 1, !dbg !703
  tail call void @WakeConditionVariable(i64* nonnull %59) #6, !dbg !703
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %35, metadata !704, metadata !DIExpression()) #7, !dbg !707
  tail call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %57) #6, !dbg !709
  br label %62, !dbg !710

60:                                               ; preds = %51, %38
  %61 = phi { i64, i1 } [ %40, %38 ], [ %49, %51 ]
  fence acquire, !dbg !636
  br label %15

62:                                               ; preds = %4, %38, %56
  ret void, !dbg !711
}

declare extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) local_unnamed_addr #0 !dbg !712 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !717, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32 10, metadata !721, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i64 %0, metadata !728, metadata !DIExpression()), !dbg !729
  %2 = mul i64 %0, -7046029254386353131, !dbg !731
  %3 = lshr i64 %2, 54, !dbg !731
  call void @llvm.dbg.value(metadata i64 %3, metadata !718, metadata !DIExpression()), !dbg !720
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %3, !dbg !734
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !735, metadata !DIExpression()) #7, !dbg !740
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()) #7, !dbg !740
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()) #7, !dbg !740
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !742
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !743
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !743
  call void @llvm.dbg.value(metadata i64* %5, metadata !488, metadata !DIExpression()) #7, !dbg !743
  %6 = cmpxchg weak i64* %5, i64 0, i64 1 acquire monotonic, !dbg !745
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !745
  br i1 %7, label %10, label %8, !dbg !742

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !746
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %9, metadata !735, metadata !DIExpression()) #7, !dbg !740
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %9) #6, !dbg !747
  br label %10, !dbg !750

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !751
}

; Function Attrs: nounwind
define weak dso_local void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %0, i64 %1, i64 %2) local_unnamed_addr #4 !dbg !752 {
  call void @llvm.dbg.value(metadata i64 %2, metadata !764, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i64 %1, metadata !765, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 10, metadata !721, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 %1, metadata !728, metadata !DIExpression()), !dbg !779
  %4 = mul i64 %1, -7046029254386353131, !dbg !781
  %5 = lshr i64 %4, 54, !dbg !781
  call void @llvm.dbg.value(metadata i64 %5, metadata !766, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 10, metadata !721, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i64 %2, metadata !728, metadata !DIExpression()), !dbg !782
  %6 = mul i64 %2, -7046029254386353131, !dbg !784
  %7 = lshr i64 %6, 54, !dbg !784
  call void @llvm.dbg.value(metadata i64 %7, metadata !767, metadata !DIExpression()), !dbg !778
  %8 = icmp eq i64 %5, %7, !dbg !785
  br i1 %8, label %9, label %16, !dbg !785

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !786
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !768, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !735, metadata !DIExpression()) #7, !dbg !788
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()) #7, !dbg !788
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()) #7, !dbg !788
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, i32 0, !dbg !790
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !791
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !791
  call void @llvm.dbg.value(metadata i64* %11, metadata !488, metadata !DIExpression()) #7, !dbg !791
  %12 = cmpxchg weak i64* %11, i64 0, i64 1 acquire monotonic, !dbg !793
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !793
  br i1 %13, label %46, label %14, !dbg !790

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i64 0, i32 0, !dbg !794
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !735, metadata !DIExpression()) #7, !dbg !788
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #6, !dbg !795
  br label %46, !dbg !796

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %7, !dbg !797
  br i1 %17, label %18, label %32, !dbg !797

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !798
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !771, metadata !DIExpression()), !dbg !799
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !800
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !774, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !735, metadata !DIExpression()) #7, !dbg !801
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()) #7, !dbg !801
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()) #7, !dbg !801
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, i32 0, !dbg !803
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !804
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !804
  call void @llvm.dbg.value(metadata i64* %21, metadata !488, metadata !DIExpression()) #7, !dbg !804
  %22 = cmpxchg weak i64* %21, i64 0, i64 1 acquire monotonic, !dbg !806
  %23 = extractvalue { i64, i1 } %22, 1, !dbg !806
  br i1 %23, label %26, label %24, !dbg !803

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i64 0, i32 0, !dbg !807
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %25, metadata !735, metadata !DIExpression()) #7, !dbg !801
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %25) #6, !dbg !808
  br label %26, !dbg !809

26:                                               ; preds = %18, %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !735, metadata !DIExpression()) #7, !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()) #7, !dbg !810
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()) #7, !dbg !810
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, i32 0, !dbg !812
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !813
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !813
  call void @llvm.dbg.value(metadata i64* %27, metadata !488, metadata !DIExpression()) #7, !dbg !813
  %28 = cmpxchg weak i64* %27, i64 0, i64 1 acquire monotonic, !dbg !815
  %29 = extractvalue { i64, i1 } %28, 1, !dbg !815
  br i1 %29, label %46, label %30, !dbg !812

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i64 0, i32 0, !dbg !816
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !735, metadata !DIExpression()) #7, !dbg !810
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %31) #6, !dbg !817
  br label %46, !dbg !818

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %7, !dbg !819
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !775, metadata !DIExpression()), !dbg !820
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([24576 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i64 0, i64 %5, !dbg !821
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !777, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !735, metadata !DIExpression()) #7, !dbg !822
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()) #7, !dbg !822
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()) #7, !dbg !822
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, i32 0, !dbg !824
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !825
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !825
  call void @llvm.dbg.value(metadata i64* %35, metadata !488, metadata !DIExpression()) #7, !dbg !825
  %36 = cmpxchg weak i64* %35, i64 0, i64 1 acquire monotonic, !dbg !827
  %37 = extractvalue { i64, i1 } %36, 1, !dbg !827
  br i1 %37, label %40, label %38, !dbg !824

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i64 0, i32 0, !dbg !828
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %39, metadata !735, metadata !DIExpression()) #7, !dbg !822
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %39) #6, !dbg !829
  br label %40, !dbg !830

40:                                               ; preds = %32, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !735, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i64 1, metadata !739, metadata !DIExpression()) #7, !dbg !831
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, i32 0, !dbg !833
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !834
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !834
  call void @llvm.dbg.value(metadata i64* %41, metadata !488, metadata !DIExpression()) #7, !dbg !834
  %42 = cmpxchg weak i64* %41, i64 0, i64 1 acquire monotonic, !dbg !836
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !836
  br i1 %43, label %46, label %44, !dbg !833

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 0, !dbg !837
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !735, metadata !DIExpression()) #7, !dbg !831
  tail call void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #6, !dbg !838
  br label %46, !dbg !839

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !840
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 8, !dbg !840, !tbaa !841
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !840
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 8, !dbg !840, !tbaa !841
  ret void, !dbg !842
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 !dbg !843 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !848, metadata !DIExpression()), !dbg !849
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 0, !dbg !850
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !850, !tbaa !851
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i64 0, i32 1, !dbg !850
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !850, !tbaa !853
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !850
  br i1 %6, label %7, label %16, !dbg !850

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !854, metadata !DIExpression()) #7, !dbg !860
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !864
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !869
  call void @llvm.dbg.value(metadata i64* %8, metadata !868, metadata !DIExpression()) #7, !dbg !869
  %9 = atomicrmw and i64* %8, i64 -2 release, !dbg !871
  call void @llvm.dbg.value(metadata i64 %9, metadata !857, metadata !DIExpression()) #7, !dbg !860
  %10 = and i64 %9, 2, !dbg !872
  %11 = icmp ne i64 %10, 0, !dbg !872
  call void @llvm.dbg.value(metadata i1 %11, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !860
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !860
  %12 = icmp ult i64 %9, 4
  %13 = or i1 %12, %11, !dbg !873
  call void @llvm.dbg.value(metadata i1 %12, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !860
  br i1 %13, label %56, label %14, !dbg !873

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !874
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !854, metadata !DIExpression()) #7, !dbg !860
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %15) #6, !dbg !875
  br label %56, !dbg !878

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !879
  br i1 %17, label %18, label %37, !dbg !879

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !854, metadata !DIExpression()) #7, !dbg !880
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0, !dbg !884
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !885
  call void @llvm.dbg.value(metadata i64* %19, metadata !868, metadata !DIExpression()) #7, !dbg !885
  %20 = atomicrmw and i64* %19, i64 -2 release, !dbg !887
  call void @llvm.dbg.value(metadata i64 %20, metadata !857, metadata !DIExpression()) #7, !dbg !880
  %21 = and i64 %20, 2, !dbg !888
  %22 = icmp ne i64 %21, 0, !dbg !888
  call void @llvm.dbg.value(metadata i1 %22, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !880
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !880
  %23 = icmp ult i64 %20, 4
  %24 = or i1 %23, %22, !dbg !889
  call void @llvm.dbg.value(metadata i1 %23, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !880
  br i1 %24, label %27, label %25, !dbg !889

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, !dbg !890
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %26, metadata !854, metadata !DIExpression()) #7, !dbg !880
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %26) #6, !dbg !891
  br label %27, !dbg !892

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 8, !dbg !893, !tbaa !853
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, metadata !854, metadata !DIExpression()) #7, !dbg !894
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, i32 0, !dbg !896
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !897
  call void @llvm.dbg.value(metadata i64* %29, metadata !868, metadata !DIExpression()) #7, !dbg !897
  %30 = atomicrmw and i64* %29, i64 -2 release, !dbg !899
  call void @llvm.dbg.value(metadata i64 %30, metadata !857, metadata !DIExpression()) #7, !dbg !894
  %31 = and i64 %30, 2, !dbg !900
  %32 = icmp ne i64 %31, 0, !dbg !900
  call void @llvm.dbg.value(metadata i1 %32, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !894
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !894
  %33 = icmp ult i64 %30, 4
  %34 = or i1 %33, %32, !dbg !901
  call void @llvm.dbg.value(metadata i1 %33, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !894
  br i1 %34, label %56, label %35, !dbg !901

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i64 0, i32 0, !dbg !893
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %36, metadata !854, metadata !DIExpression()) #7, !dbg !894
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %36) #6, !dbg !902
  br label %56, !dbg !903

37:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !854, metadata !DIExpression()) #7, !dbg !904
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, i32 0, !dbg !907
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !908
  call void @llvm.dbg.value(metadata i64* %38, metadata !868, metadata !DIExpression()) #7, !dbg !908
  %39 = atomicrmw and i64* %38, i64 -2 release, !dbg !910
  call void @llvm.dbg.value(metadata i64 %39, metadata !857, metadata !DIExpression()) #7, !dbg !904
  %40 = and i64 %39, 2, !dbg !911
  %41 = icmp ne i64 %40, 0, !dbg !911
  call void @llvm.dbg.value(metadata i1 %41, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !904
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !904
  %42 = icmp ult i64 %39, 4
  %43 = or i1 %42, %41, !dbg !912
  call void @llvm.dbg.value(metadata i1 %42, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !904
  br i1 %43, label %46, label %44, !dbg !912

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i64 0, i32 0, !dbg !913
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !854, metadata !DIExpression()) #7, !dbg !904
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %45) #6, !dbg !914
  br label %46, !dbg !915

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 8, !dbg !916, !tbaa !851
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, metadata !854, metadata !DIExpression()) #7, !dbg !917
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, i32 0, !dbg !919
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !920
  call void @llvm.dbg.value(metadata i64* %48, metadata !868, metadata !DIExpression()) #7, !dbg !920
  %49 = atomicrmw and i64* %48, i64 -2 release, !dbg !922
  call void @llvm.dbg.value(metadata i64 %49, metadata !857, metadata !DIExpression()) #7, !dbg !917
  %50 = and i64 %49, 2, !dbg !923
  %51 = icmp ne i64 %50, 0, !dbg !923
  call void @llvm.dbg.value(metadata i1 %51, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !917
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !917
  %52 = icmp ult i64 %49, 4
  %53 = or i1 %52, %51, !dbg !924
  call void @llvm.dbg.value(metadata i1 %52, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !917
  br i1 %53, label %56, label %54, !dbg !924

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i64 0, i32 0, !dbg !916
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %55, metadata !854, metadata !DIExpression()) #7, !dbg !917
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %55) #6, !dbg !925
  br label %56, !dbg !926

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void, !dbg !927
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !928 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !930, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i8* %0, metadata !931, metadata !DIExpression()), !dbg !932
  ret i1 true, !dbg !933
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #5 !dbg !934 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !936, metadata !DIExpression()), !dbg !937
  ret void, !dbg !938
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !939 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !941, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !944
  call void @llvm.dbg.value(metadata i32 %1, metadata !942, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i8* %0, metadata !943, metadata !DIExpression()), !dbg !944
  ret i64 0, !dbg !945
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !946 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !948, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !952
  call void @llvm.dbg.value(metadata i1 %2, metadata !949, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !952
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !950, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i8* %0, metadata !951, metadata !DIExpression()), !dbg !952
  ret void, !dbg !953
}

; Function Attrs: nounwind
define weak dso_local i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 !dbg !954 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !959, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %0, metadata !960, metadata !DIExpression()), !dbg !964
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #7, !dbg !965
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !961, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !966, metadata !DIExpression()) #7, !dbg !969
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !516, metadata !DIExpression()) #7, !dbg !971
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 2, !dbg !973
  store i8 0, i8* %6, align 8, !dbg !973, !tbaa !523
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 0, !dbg !974
  call void @InitializeCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !974
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 0, i32 1, !dbg !975
  call void @InitializeConditionVariable(i64* nonnull %8) #6, !dbg !975
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 1, !dbg !976
  store i64 0, i64* %9, align 8, !dbg !976, !tbaa !977
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 2, !dbg !976
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !976, !tbaa !979
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i64 0, i32 3, !dbg !976
  store i64 0, i64* %11, align 8, !dbg !976, !tbaa !980
  %12 = call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #8, !dbg !981
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !962, metadata !DIExpression()), !dbg !964
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 0, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !982
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !963, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !983, metadata !DIExpression()), !dbg !987
  store i8 0, i8* %13, align 8, !dbg !989, !tbaa !990
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i64 0, i32 2, !dbg !989
  store i64 0, i64* %14, align 8, !dbg !989, !tbaa !992
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 0, !dbg !993
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 8, !dbg !993, !tbaa !994
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !993
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %4) #6, !dbg !993
  br i1 %18, label %28, label %19, !dbg !993

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !854, metadata !DIExpression()) #7, !dbg !996
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1000
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !1001
  call void @llvm.dbg.value(metadata i64* %20, metadata !868, metadata !DIExpression()) #7, !dbg !1001
  %21 = atomicrmw and i64* %20, i64 -2 release, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %21, metadata !857, metadata !DIExpression()) #7, !dbg !996
  %22 = and i64 %21, 2, !dbg !1004
  %23 = icmp ne i64 %22, 0, !dbg !1004
  call void @llvm.dbg.value(metadata i1 %23, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !996
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !996
  %24 = icmp ult i64 %21, 4
  %25 = or i1 %24, %23, !dbg !1005
  call void @llvm.dbg.value(metadata i1 %24, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !996
  br i1 %25, label %54, label %26, !dbg !1005

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1006
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !854, metadata !DIExpression()) #7, !dbg !996
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %27) #6, !dbg !1007
  br label %54, !dbg !1008

28:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 8, !dbg !1009, !tbaa !979
  store i64 %0, i64* %9, align 8, !dbg !1010, !tbaa !977
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !536, metadata !DIExpression()), !dbg !1011
  store i8 1, i8* %6, align 8, !dbg !1013, !tbaa !523
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 1, !dbg !1014
  %30 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %29, align 8, !dbg !1014, !tbaa !1015
  %31 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, null, !dbg !1014
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1014
  %33 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, align 8, !dbg !1014
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %33, i64 0, i32 2, !dbg !1014
  %35 = select i1 %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, !dbg !1014
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1018, !tbaa !841
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 2, !dbg !1020
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 8, !dbg !1020, !tbaa !1021
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !854, metadata !DIExpression()) #7, !dbg !1022
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, i32 0, !dbg !1024
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !1025
  call void @llvm.dbg.value(metadata i64* %37, metadata !868, metadata !DIExpression()) #7, !dbg !1025
  %38 = atomicrmw and i64* %37, i64 -2 release, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %38, metadata !857, metadata !DIExpression()) #7, !dbg !1022
  %39 = and i64 %38, 2, !dbg !1028
  %40 = icmp ne i64 %39, 0, !dbg !1028
  call void @llvm.dbg.value(metadata i1 %40, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1022
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1022
  %41 = icmp ult i64 %38, 4
  %42 = or i1 %41, %40, !dbg !1029
  call void @llvm.dbg.value(metadata i1 %41, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1022
  br i1 %42, label %45, label %43, !dbg !1029

43:                                               ; preds = %28
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i64 0, i32 0, !dbg !1030
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %44, metadata !854, metadata !DIExpression()) #7, !dbg !1022
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %44) #6, !dbg !1031
  br label %45, !dbg !1032

45:                                               ; preds = %28, %43
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 1, !dbg !1033
  %47 = load void (i8*)*, void (i8*)** %46, align 8, !dbg !1033, !tbaa !1034
  call void %47(i8* nonnull %17) #6, !dbg !1033
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !561, metadata !DIExpression()) #7, !dbg !1035
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1037
  %48 = load i8, i8* %6, align 8, !dbg !1038, !tbaa !523, !range !570
  %49 = icmp eq i8 %48, 0, !dbg !1038
  br i1 %49, label %53, label %50, !dbg !1038

50:                                               ; preds = %45, %50
  call void @SleepConditionVariableCS(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !1039
  %51 = load i8, i8* %6, align 8, !dbg !1038, !tbaa !523, !range !570
  %52 = icmp eq i8 %51, 0, !dbg !1038
  br i1 %52, label %53, label %50, !dbg !1038, !llvm.loop !1040

53:                                               ; preds = %50, %45
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1042
  br label %54, !dbg !1043

54:                                               ; preds = %26, %19, %53
  %55 = phi i64* [ %11, %53 ], [ %14, %19 ], [ %14, %26 ]
  %56 = load i64, i64* %55, align 8, !dbg !964, !tbaa !1044
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !1045
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1046, metadata !DIExpression()) #7, !dbg !1049
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !586, metadata !DIExpression()) #7, !dbg !1051
  call void @DeleteCriticalSection(%struct.CriticalSection* nonnull %7) #6, !dbg !1054
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #7, !dbg !1045
  ret i64 %56, !dbg !1045
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 !dbg !1055 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1057, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %0, metadata !1058, metadata !DIExpression()), !dbg !1074
  %3 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #8, !dbg !1075
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1059, metadata !DIExpression()), !dbg !1074
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 1, !dbg !1076
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1060, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1061, metadata !DIExpression()), !dbg !1074
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 8, !dbg !1077, !tbaa !841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1062, metadata !DIExpression()), !dbg !1074
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i64 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i64 0, i32 0
  br label %11, !dbg !1078

11:                                               ; preds = %57, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %58, %57 ], !dbg !1076
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %59, %57 ], !dbg !1079
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %60, %57 ], !dbg !1077
  %15 = phi i64 [ undef, %2 ], [ %61, %57 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1062, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1061, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, metadata !1060, metadata !DIExpression()), !dbg !1074
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null, !dbg !1078
  br i1 %16, label %62, label %17, !dbg !1078

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1080
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64* %18, metadata !472, metadata !DIExpression()), !dbg !1081
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %19, metadata !1063, metadata !DIExpression()), !dbg !1084
  %20 = icmp eq i64 %19, %0, !dbg !1085
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1086
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 8, !dbg !1086, !tbaa !979
  br i1 %20, label %23, label %57, !dbg !1085

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1065, metadata !DIExpression()), !dbg !1087
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 8, !dbg !1088, !tbaa !841
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1087
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1089, !tbaa !1021
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1089
  br i1 %25, label %28, label %26, !dbg !1089

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1069, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1087
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1091
  br i1 %27, label %40, label %29, !dbg !1091

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 8, !dbg !1092, !tbaa !1021
  br label %40, !dbg !1094

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, metadata !1069, metadata !DIExpression()), !dbg !1090
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 1, !dbg !1095
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64* %31, metadata !472, metadata !DIExpression()), !dbg !1096
  %32 = load atomic i64, i64* %31 monotonic, align 8, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %32, metadata !1072, metadata !DIExpression()), !dbg !1099
  %33 = icmp eq i64 %32, %0, !dbg !1100
  call void @llvm.dbg.value(metadata i1 %33, metadata !1068, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1087
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i64 0, i32 2, !dbg !1101
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 8, !dbg !1101, !tbaa !979
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, metadata !1069, metadata !DIExpression()), !dbg !1090
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1091
  %37 = or i1 %33, %36, !dbg !1091
  br i1 %37, label %38, label %29, !dbg !1091, !llvm.loop !1102

38:                                               ; preds = %29
  %39 = zext i1 %33 to i8, !dbg !1100
  call void @llvm.dbg.value(metadata i8 %39, metadata !1068, metadata !DIExpression()), !dbg !1087
  br label %40, !dbg !1104

40:                                               ; preds = %38, %26, %28
  %41 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %39, %38 ], !dbg !1105
  call void @llvm.dbg.value(metadata i8 %41, metadata !1068, metadata !DIExpression()), !dbg !1087
  %42 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1104, !tbaa !1106
  %43 = icmp ne i8 %41, 0, !dbg !1104
  %44 = tail call i64 %42(i8* nonnull %8, i32 1, i1 zeroext %43) #6, !dbg !1104
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1104
  store i64 %44, i64* %45, align 8, !dbg !1104, !tbaa !980
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !691, metadata !DIExpression()) #7, !dbg !1107
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1109
  tail call void @EnterCriticalSection(%struct.CriticalSection* nonnull %46) #6, !dbg !1109
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !854, metadata !DIExpression()) #7, !dbg !1110
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !1112
  call void @llvm.dbg.value(metadata i64* %9, metadata !868, metadata !DIExpression()) #7, !dbg !1112
  %47 = atomicrmw and i64* %9, i64 -2 release, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %47, metadata !857, metadata !DIExpression()) #7, !dbg !1110
  %48 = and i64 %47, 2, !dbg !1115
  %49 = icmp ne i64 %48, 0, !dbg !1115
  call void @llvm.dbg.value(metadata i1 %49, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1110
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1110
  %50 = icmp ult i64 %47, 4
  %51 = or i1 %50, %49, !dbg !1116
  call void @llvm.dbg.value(metadata i1 %50, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1110
  br i1 %51, label %53, label %52, !dbg !1116

52:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !854, metadata !DIExpression()) #7, !dbg !1110
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #6, !dbg !1117
  br label %53, !dbg !1118

53:                                               ; preds = %40, %52
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !697, metadata !DIExpression()) #7, !dbg !1119
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 2, !dbg !1121
  store i8 0, i8* %54, align 8, !dbg !1121, !tbaa !523
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 1, !dbg !1122
  tail call void @WakeConditionVariable(i64* nonnull %55) #6, !dbg !1122
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !704, metadata !DIExpression()) #7, !dbg !1123
  tail call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %46) #6, !dbg !1125
  %56 = zext i8 %41 to i64
  br label %57

57:                                               ; preds = %17, %53
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %53 ], [ %21, %17 ], !dbg !1074
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %53 ], [ %14, %17 ], !dbg !1074
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %53 ], [ %22, %17 ], !dbg !1074
  %61 = phi i64 [ %56, %53 ], [ %15, %17 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1062, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1061, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, metadata !1060, metadata !DIExpression()), !dbg !1074
  br i1 %20, label %71, label %11, !llvm.loop !1126

62:                                               ; preds = %11
  %63 = load i64 (i8*, i32, i1)*, i64 (i8*, i32, i1)** %7, align 8, !dbg !1128, !tbaa !1106
  %64 = tail call i64 %63(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1128
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !854, metadata !DIExpression()) #7, !dbg !1129
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !1131
  call void @llvm.dbg.value(metadata i64* %9, metadata !868, metadata !DIExpression()) #7, !dbg !1131
  %65 = atomicrmw and i64* %9, i64 -2 release, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %65, metadata !857, metadata !DIExpression()) #7, !dbg !1129
  %66 = and i64 %65, 2, !dbg !1134
  %67 = icmp ne i64 %66, 0, !dbg !1134
  call void @llvm.dbg.value(metadata i1 %67, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1129
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1129
  %68 = icmp ult i64 %65, 4
  %69 = or i1 %68, %67, !dbg !1135
  call void @llvm.dbg.value(metadata i1 %68, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1129
  br i1 %69, label %71, label %70, !dbg !1135

70:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !854, metadata !DIExpression()) #7, !dbg !1129
  tail call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %10) #6, !dbg !1136
  br label %71, !dbg !1137

71:                                               ; preds = %57, %70, %62
  %72 = phi i64 [ 0, %62 ], [ 0, %70 ], [ %61, %57 ], !dbg !1074
  ret i64 %72, !dbg !1138
}

; Function Attrs: nounwind mustprogress
define weak dso_local i64 @"?unpark_all@Synchronization@Internal@Runtime@Halide@@YA_K_K0@Z"(i64 %0, i64 %1) local_unnamed_addr #0 !dbg !1139 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !1143, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %0, metadata !1144, metadata !DIExpression()), !dbg !1172
  %4 = tail call nonnull align 8 dereferenceable(24) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z"(i64 %0) #8, !dbg !1173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1145, metadata !DIExpression()), !dbg !1172
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 1, !dbg !1174
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1146, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1147, metadata !DIExpression()), !dbg !1172
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1175, !tbaa !841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1148, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1172
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1176
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1152, metadata !DIExpression()), !dbg !1176
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i64 0, i64 0, !dbg !1177
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1156, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 16, metadata !1157, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1147, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1148, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1172
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1178
  br i1 %9, label %59, label %10, !dbg !1178

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 2
  br label %12, !dbg !1178

12:                                               ; preds = %10, %53
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %57, %53 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %53 ]
  %15 = phi i64 [ 16, %10 ], [ %56, %53 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %55, %53 ]
  %17 = phi i64 [ 0, %10 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1147, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1148, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %15, metadata !1157, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1156, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %17, metadata !1149, metadata !DIExpression()), !dbg !1172
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 1, !dbg !1179
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64* %18, metadata !472, metadata !DIExpression()), !dbg !1180
  %19 = load atomic i64, i64* %18 monotonic, align 8, !dbg !1182
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 2, !dbg !1183
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 8, !dbg !1183, !tbaa !979
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1160, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %19, metadata !1158, metadata !DIExpression()), !dbg !1184
  %22 = icmp eq i64 %19, %0, !dbg !1185
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 8, !dbg !1186, !tbaa !841
  br i1 %22, label %23, label %53, !dbg !1185

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1187, !tbaa !1021
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1187
  br i1 %25, label %26, label %27, !dbg !1187

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 8, !dbg !1188, !tbaa !1021
  br label %27, !dbg !1191

27:                                               ; preds = %26, %23
  %28 = icmp eq i64 %17, %15, !dbg !1192
  br i1 %28, label %29, label %46, !dbg !1192

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1161, metadata !DIExpression()), !dbg !1193
  %30 = shl i64 %15, 4, !dbg !1194
  %31 = call i8* @malloc(i64 %30) #6, !dbg !1194
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1194
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1156, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 0, metadata !1166, metadata !DIExpression()), !dbg !1195
  %33 = icmp eq i64 %15, 0, !dbg !1196
  br i1 %33, label %34, label %37, !dbg !1196

34:                                               ; preds = %37, %29
  %35 = shl i64 %15, 1, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %35, metadata !1157, metadata !DIExpression()), !dbg !1172
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1198
  br i1 %36, label %46, label %44, !dbg !1198

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %42, %37 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1166, metadata !DIExpression()), !dbg !1195
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i64 %38, !dbg !1199
  %40 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 8, !dbg !1199, !tbaa !841
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i64 %38, !dbg !1199
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %41, align 8, !dbg !1199, !tbaa !841
  %42 = add nuw i64 %38, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %42, metadata !1166, metadata !DIExpression()), !dbg !1195
  %43 = icmp eq i64 %42, %15, !dbg !1196
  br i1 %43, label %34, label %37, !dbg !1196, !llvm.loop !1203

44:                                               ; preds = %34
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1205
  call void @free(i8* %45) #6, !dbg !1205
  br label %46, !dbg !1208

46:                                               ; preds = %34, %44, %27
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %44 ], [ %32, %34 ], !dbg !1172
  %48 = phi i64 [ %15, %27 ], [ %35, %44 ], [ %35, %34 ], !dbg !1172
  call void @llvm.dbg.value(metadata i64 %48, metadata !1157, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, metadata !1156, metadata !DIExpression()), !dbg !1172
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 3, !dbg !1209
  store i64 %1, i64* %49, align 8, !dbg !1209, !tbaa !980
  %50 = add i64 %17, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %50, metadata !1149, metadata !DIExpression()), !dbg !1172
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, i64 %17, !dbg !1210
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, align 8, !dbg !1210, !tbaa !841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !691, metadata !DIExpression()) #7, !dbg !1211
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i64 0, i32 0, i32 0, !dbg !1213
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %52) #6, !dbg !1213
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1148, metadata !DIExpression()), !dbg !1172
  br label %53, !dbg !1214

53:                                               ; preds = %12, %46
  %54 = phi i64 [ %50, %46 ], [ %17, %12 ], !dbg !1172
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %47, %46 ], [ %16, %12 ], !dbg !1172
  %56 = phi i64 [ %48, %46 ], [ %15, %12 ], !dbg !1172
  %57 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %46 ], [ %14, %12 ], !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %57, metadata !1147, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1148, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %56, metadata !1157, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %55, metadata !1156, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %54, metadata !1149, metadata !DIExpression()), !dbg !1172
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1178
  br i1 %58, label %59, label %12, !dbg !1178, !llvm.loop !1215

59:                                               ; preds = %53, %2
  %60 = phi i64 [ 0, %2 ], [ %54, %53 ], !dbg !1172
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %55, %53 ], !dbg !1172
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !854, metadata !DIExpression()) #7, !dbg !1217
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, i32 0, !dbg !1219
  call void @llvm.dbg.value(metadata i64 -2, metadata !865, metadata !DIExpression()) #7, !dbg !1220
  call void @llvm.dbg.value(metadata i64* %62, metadata !868, metadata !DIExpression()) #7, !dbg !1220
  %63 = atomicrmw and i64* %62, i64 -2 release, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %63, metadata !857, metadata !DIExpression()) #7, !dbg !1217
  %64 = and i64 %63, 2, !dbg !1223
  %65 = icmp ne i64 %64, 0, !dbg !1223
  call void @llvm.dbg.value(metadata i1 %65, metadata !858, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1217
  call void @llvm.dbg.value(metadata i1 undef, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1217
  %66 = icmp ult i64 %63, 4
  %67 = or i1 %66, %65, !dbg !1224
  call void @llvm.dbg.value(metadata i1 %66, metadata !859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1217
  br i1 %67, label %70, label %68, !dbg !1224

68:                                               ; preds = %59
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i64 0, i32 0, !dbg !1225
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %69, metadata !854, metadata !DIExpression()) #7, !dbg !1217
  call void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(8) %69) #6, !dbg !1226
  br label %70, !dbg !1227

70:                                               ; preds = %59, %68
  call void @llvm.dbg.value(metadata i64 0, metadata !1168, metadata !DIExpression()), !dbg !1228
  %71 = icmp eq i64 %60, 0, !dbg !1229
  br i1 %71, label %81, label %73, !dbg !1229

72:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i64 0, metadata !1170, metadata !DIExpression()), !dbg !1230
  br i1 %71, label %81, label %83, !dbg !1231

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %79, %73 ], [ 0, %70 ]
  call void @llvm.dbg.value(metadata i64 %74, metadata !1168, metadata !DIExpression()), !dbg !1228
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %74, !dbg !1232
  %76 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %75, align 8, !dbg !1232, !tbaa !841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, metadata !697, metadata !DIExpression()) #7, !dbg !1235
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i64 0, i32 0, i32 2, !dbg !1237
  store i8 0, i8* %77, align 8, !dbg !1237, !tbaa !523
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %76, i64 0, i32 0, i32 1, !dbg !1238
  call void @WakeConditionVariable(i64* nonnull %78) #6, !dbg !1238
  %79 = add nuw i64 %74, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %79, metadata !1168, metadata !DIExpression()), !dbg !1228
  %80 = icmp eq i64 %79, %60, !dbg !1229
  br i1 %80, label %72, label %73, !dbg !1229, !llvm.loop !1240

81:                                               ; preds = %83, %70, %72
  %82 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, %8, !dbg !1242
  br i1 %82, label %92, label %90, !dbg !1242

83:                                               ; preds = %72, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %72 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !1170, metadata !DIExpression()), !dbg !1230
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61, i64 %84, !dbg !1243
  %86 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %85, align 8, !dbg !1243, !tbaa !841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %86, metadata !704, metadata !DIExpression()) #7, !dbg !1246
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %86, i64 0, i32 0, i32 0, !dbg !1248
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %87) #6, !dbg !1248
  %88 = add nuw i64 %84, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %88, metadata !1170, metadata !DIExpression()), !dbg !1230
  %89 = icmp eq i64 %88, %60, !dbg !1231
  br i1 %89, label %81, label %83, !dbg !1231, !llvm.loop !1250

90:                                               ; preds = %81
  %91 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %61 to i8*, !dbg !1252
  call void @free(i8* %91) #6, !dbg !1252
  br label %92, !dbg !1255

92:                                               ; preds = %90, %81
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %7) #7, !dbg !1256
  ret i64 %60, !dbg !1257
}

; Function Attrs: nounwind
define weak dso_local i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z"(i64 %0, i64 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %2, i64 %3) local_unnamed_addr #4 !dbg !1258 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 8
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 8
  call void @llvm.dbg.value(metadata i64 %3, metadata !1262, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1263, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %1, metadata !1264, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %0, metadata !1265, metadata !DIExpression()), !dbg !1277
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1278
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1266, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %1, metadata !1264, metadata !DIExpression()), !dbg !1277
  call void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 8 %5, i64 %0, i64 %1) #8, !dbg !1278
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 0, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1279
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1267, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !983, metadata !DIExpression()), !dbg !1280
  store i8 0, i8* %8, align 8, !dbg !1282, !tbaa !990
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i64 0, i32 2, !dbg !1282
  store i64 0, i64* %9, align 8, !dbg !1282, !tbaa !992
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 0, !dbg !1283
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 8, !dbg !1283, !tbaa !994
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1283
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6) #6, !dbg !1283
  br i1 %13, label %15, label %14, !dbg !1283

14:                                               ; preds = %4
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1284
  br label %91, !dbg !1287

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 0, !dbg !1288
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1288, !tbaa !851
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i64 0, i32 1, !dbg !1288
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1268, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1269, metadata !DIExpression()), !dbg !1277
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 8, !dbg !1289, !tbaa !841
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1270, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1273, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1269, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1268, metadata !DIExpression()), !dbg !1277
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1290
  br i1 %20, label %73, label %21, !dbg !1290

21:                                               ; preds = %15, %50
  %22 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %15 ]
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %15 ]
  %24 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %15 ]
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %31, %50 ], [ %19, %15 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %15 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1273, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1270, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1269, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, metadata !1268, metadata !DIExpression()), !dbg !1277
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 1, !dbg !1291
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64* %28, metadata !472, metadata !DIExpression()), !dbg !1292
  %29 = load atomic i64, i64* %28 monotonic, align 8, !dbg !1294
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, i64 0, i32 2, !dbg !1295
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 8, !dbg !1295, !tbaa !979
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1276, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata i64 %29, metadata !1274, metadata !DIExpression()), !dbg !1296
  %32 = icmp eq i64 %29, %0, !dbg !1297
  br i1 %32, label %33, label %50, !dbg !1297

33:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %27, align 8, !dbg !1298, !tbaa !841
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 8, !dbg !1301, !tbaa !851
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i64 0, i32 2, !dbg !1301
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1301, !tbaa !1021
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, %25, !dbg !1301
  br i1 %37, label %38, label %39, !dbg !1301

38:                                               ; preds = %33
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 8, !dbg !1302, !tbaa !1021
  br label %39, !dbg !1305

39:                                               ; preds = %38, %33
  %40 = load i8, i8* %8, align 8, !dbg !1306, !tbaa !990, !range !570
  %41 = icmp ne i8 %40, 0, !dbg !1306
  %42 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1306
  %43 = and i1 %42, %41, !dbg !1306
  br i1 %43, label %50, label %44, !dbg !1306

44:                                               ; preds = %39
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, null, !dbg !1307
  br i1 %45, label %48, label %46, !dbg !1307

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, i64 0, i32 2, !dbg !1310
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 8, !dbg !1310, !tbaa !979
  br label %48, !dbg !1313

48:                                               ; preds = %44, %46
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %46 ], [ %25, %44 ], !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64* undef, metadata !1314, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64* %28, metadata !1319, metadata !DIExpression()), !dbg !1320
  store atomic i64 %1, i64* %28 monotonic, align 8, !dbg !1322
  br label %50, !dbg !1323

50:                                               ; preds = %21, %48, %39
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %27, %39 ], [ %27, %48 ], [ %30, %21 ], !dbg !1277
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %39 ], [ %26, %48 ], [ %25, %21 ], !dbg !1277
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %24, %39 ], [ %49, %48 ], [ %24, %21 ], !dbg !1324
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %23, %39 ], [ %25, %48 ], [ %23, %21 ], !dbg !1325
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %25, %39 ], [ %22, %48 ], [ %22, %21 ], !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1273, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1272, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1271, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1270, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1269, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1268, metadata !DIExpression()), !dbg !1277
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, null, !dbg !1290
  br i1 %56, label %57, label %21, !dbg !1290, !llvm.loop !1326

57:                                               ; preds = %50
  %58 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, null, !dbg !1328
  br i1 %58, label %73, label %59, !dbg !1328

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, i64 0, i32 2, !dbg !1329
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 8, !dbg !1329, !tbaa !979
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i64 0, i32 1, !dbg !1332
  %62 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %61, align 8, !dbg !1332, !tbaa !853
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 1, !dbg !1332
  %64 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %63, align 8, !dbg !1332, !tbaa !1015
  %65 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %64, null, !dbg !1332
  br i1 %65, label %70, label %66, !dbg !1332

66:                                               ; preds = %59
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1333
  %68 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %67, align 8, !dbg !1333, !tbaa !1021
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %68, i64 0, i32 2, !dbg !1333
  br label %70, !dbg !1336

70:                                               ; preds = %59, %66
  %71 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %69, %66 ], [ %63, %59 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %71, align 8, !dbg !1337, !tbaa !841
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %62, i64 0, i32 2, !dbg !1338
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 8, !dbg !1338, !tbaa !1021
  br label %73, !dbg !1339

73:                                               ; preds = %15, %70, %57
  %74 = phi i1 [ true, %70 ], [ false, %57 ], [ false, %15 ]
  %75 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %70 ], [ %55, %57 ], [ null, %15 ]
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i64 0, i32 3, !dbg !1340
  %77 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %76, align 8, !dbg !1340, !tbaa !1341
  %78 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, null, !dbg !1340
  call void %77(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %6, i1 zeroext %78, i1 zeroext %74) #6, !dbg !1340
  br i1 %78, label %79, label %84, !dbg !1342

79:                                               ; preds = %73
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 3, !dbg !1343
  store i64 %3, i64* %80, align 8, !dbg !1343, !tbaa !980
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !691, metadata !DIExpression()) #7, !dbg !1346
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 0, !dbg !1348
  call void @EnterCriticalSection(%struct.CriticalSection* nonnull %81) #6, !dbg !1348
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1349
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !697, metadata !DIExpression()) #7, !dbg !1350
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 2, !dbg !1352
  store i8 0, i8* %82, align 8, !dbg !1352, !tbaa !523
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %75, i64 0, i32 0, i32 1, !dbg !1353
  call void @WakeConditionVariable(i64* nonnull %83) #6, !dbg !1353
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !704, metadata !DIExpression()) #7, !dbg !1354
  call void @LeaveCriticalSection(%struct.CriticalSection* nonnull %81) #6, !dbg !1356
  br label %85, !dbg !1357

84:                                               ; preds = %73
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 8 dereferenceable(16) %5) #8, !dbg !1358
  br label %85, !dbg !1360

85:                                               ; preds = %84, %79
  %86 = load i8, i8* %8, align 8, !dbg !1361
  %87 = and i8 %86, 1, !dbg !1361
  %88 = icmp ne i8 %87, 0, !dbg !1361
  %89 = and i1 %78, %88, !dbg !1361
  %90 = zext i1 %89 to i32, !dbg !1361
  br label %91

91:                                               ; preds = %85, %14
  %92 = phi i32 [ %90, %85 ], [ 0, %14 ], !dbg !1277
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1362
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !1362
  ret i32 %92, !dbg !1362
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1363 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1365, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %0, metadata !1366, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8* %0, metadata !1367, metadata !DIExpression()), !dbg !1369
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1370
  %4 = bitcast i8* %3 to i64**, !dbg !1370
  %5 = load i64*, i64** %4, align 8, !dbg !1370, !tbaa !1371
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64* %5, metadata !472, metadata !DIExpression()), !dbg !1373
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %6, metadata !1368, metadata !DIExpression()), !dbg !1369
  %7 = icmp eq i64 %6, 3, !dbg !1376
  ret i1 %7, !dbg !1376
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1377 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1379, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %1, metadata !1380, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8* %0, metadata !1381, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8* %0, metadata !1382, metadata !DIExpression()), !dbg !1384
  %4 = select i1 %2, i64 2, i64 0, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %4, metadata !1383, metadata !DIExpression()), !dbg !1384
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1386
  %6 = bitcast i8* %5 to i64**, !dbg !1386
  %7 = load i64*, i64** %6, align 8, !dbg !1386, !tbaa !1371
  call void @llvm.dbg.value(metadata i64* undef, metadata !1387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64* %7, metadata !1390, metadata !DIExpression()), !dbg !1391
  store atomic i64 %4, i64* %7 release, align 8, !dbg !1393
  ret i64 0, !dbg !1394
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1395 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1397, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1404
  call void @llvm.dbg.value(metadata i32 %1, metadata !1398, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %0, metadata !1399, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i8* %0, metadata !1400, metadata !DIExpression()), !dbg !1404
  br i1 %2, label %8, label %4, !dbg !1405

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1400, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 0, metadata !1401, metadata !DIExpression()), !dbg !1406
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1407
  %6 = bitcast i8* %5 to i64**, !dbg !1407
  %7 = load i64*, i64** %6, align 8, !dbg !1407, !tbaa !1408
  call void @llvm.dbg.value(metadata i64* undef, metadata !1314, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64* %7, metadata !1319, metadata !DIExpression()), !dbg !1410
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1412
  br label %8, !dbg !1413

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1414
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #4 !dbg !1415 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1417, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8* %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i8* %0, metadata !1419, metadata !DIExpression()), !dbg !1421
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1422
  %4 = bitcast i8* %3 to i64**, !dbg !1422
  %5 = load i64*, i64** %4, align 8, !dbg !1422, !tbaa !1423
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i64* %5, metadata !472, metadata !DIExpression()), !dbg !1425
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %6, metadata !1420, metadata !DIExpression()), !dbg !1421
  %7 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1428
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1428
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1428, !tbaa !1429
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i64, !dbg !1428
  %11 = icmp eq i64 %6, %10, !dbg !1428
  br i1 %11, label %12, label %30, !dbg !1428

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata i64* undef, metadata !1314, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64* %5, metadata !1319, metadata !DIExpression()), !dbg !1430
  store atomic i64 0, i64* %5 monotonic, align 8, !dbg !1432
  %13 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 8, !dbg !1433, !tbaa !1429
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, metadata !1434, metadata !DIExpression()), !dbg !1440
  %14 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %13, i64 0, i32 0, !dbg !1442
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64* %14, metadata !472, metadata !DIExpression()), !dbg !1443
  %15 = load atomic i64, i64* %14 monotonic, align 8, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %15, metadata !1437, metadata !DIExpression()), !dbg !1440
  %16 = and i64 %15, 1, !dbg !1446
  %17 = icmp eq i64 %16, 0, !dbg !1446
  br i1 %17, label %27, label %18, !dbg !1446

18:                                               ; preds = %12, %23
  %19 = phi i64 [ %24, %23 ], [ %15, %12 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1437, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %19, metadata !1437, metadata !DIExpression()), !dbg !1440
  %20 = or i64 %19, 2, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %20, metadata !1438, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64* undef, metadata !1449, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64* undef, metadata !1452, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64* %14, metadata !1453, metadata !DIExpression()), !dbg !1454
  %21 = cmpxchg weak i64* %14, i64 %19, i64 %20 monotonic monotonic, !dbg !1456
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1456
  br i1 %22, label %27, label %23, !dbg !1456

23:                                               ; preds = %18
  %24 = extractvalue { i64, i1 } %21, 0, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %24, metadata !1437, metadata !DIExpression()), !dbg !1440
  %25 = and i64 %24, 1, !dbg !1446
  %26 = icmp eq i64 %25, 0, !dbg !1446
  br i1 %26, label %27, label %18, !dbg !1446

27:                                               ; preds = %18, %23, %12
  %28 = phi i8 [ 1, %12 ], [ 0, %18 ], [ 1, %23 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1433
  store i8 %28, i8* %29, align 8, !dbg !1433, !tbaa !990
  br label %30, !dbg !1457

30:                                               ; preds = %2, %27
  ret i1 %11, !dbg !1458
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1459 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !1461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1466
  call void @llvm.dbg.value(metadata i1 %2, metadata !1462, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1466
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1463, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %0, metadata !1464, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %0, metadata !1465, metadata !DIExpression()), !dbg !1466
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 0, !dbg !1467
  %6 = load i8, i8* %5, align 8, !dbg !1467, !tbaa !990, !range !570
  %7 = icmp ne i8 %6, 0, !dbg !1467
  %8 = and i1 %7, %3, !dbg !1467
  br i1 %8, label %9, label %15, !dbg !1467

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1468
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1468
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 8, !dbg !1468, !tbaa !1429
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1471, metadata !DIExpression()), !dbg !1474
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i64 0, i32 0, !dbg !1476
  call void @llvm.dbg.value(metadata i64 2, metadata !1477, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64* %13, metadata !1480, metadata !DIExpression()), !dbg !1481
  %14 = atomicrmw or i64* %13, i64 2 monotonic, !dbg !1483
  br label %15, !dbg !1484

15:                                               ; preds = %4, %9
  ret void, !dbg !1485
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 8 dereferenceable(16) %1) #5 !dbg !1486 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1488, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i8* %0, metadata !1489, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i8* %0, metadata !1490, metadata !DIExpression()), !dbg !1492
  %3 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1493
  %4 = bitcast i8* %3 to i64**, !dbg !1493
  %5 = load i64*, i64** %4, align 8, !dbg !1493, !tbaa !1494
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64* %5, metadata !472, metadata !DIExpression()), !dbg !1496
  %6 = load atomic i64, i64* %5 monotonic, align 8, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %6, metadata !1491, metadata !DIExpression()), !dbg !1492
  %7 = icmp eq i64 %6, 0, !dbg !1499
  %8 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1500
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1500
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 8, !dbg !1500, !tbaa !1502
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i64, !dbg !1500
  br i1 %7, label %12, label %13, !dbg !1499

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1490, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %11, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64* undef, metadata !1314, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64* %5, metadata !1319, metadata !DIExpression()), !dbg !1503
  store atomic i64 %11, i64* %5 monotonic, align 8, !dbg !1506
  br label %17, !dbg !1507

13:                                               ; preds = %2
  %14 = icmp eq i64 %6, %11, !dbg !1508
  br i1 %14, label %17, label %15, !dbg !1508

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i64 0, i32 2, !dbg !1509
  store i64 %11, i64* %16, align 8, !dbg !1509, !tbaa !992
  br label %17, !dbg !1512

17:                                               ; preds = %12, %13, %15
  %18 = phi i1 [ false, %15 ], [ true, %13 ], [ true, %12 ], !dbg !1492
  ret i1 %18, !dbg !1513
}

; Function Attrs: nounwind
define weak dso_local void @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #4 !dbg !1514 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1516, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i8* %0, metadata !1517, metadata !DIExpression()), !dbg !1518
  %3 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !1519
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1519
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 8, !dbg !1519, !tbaa !1502
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1520, metadata !DIExpression()) #7, !dbg !1525
  call void @llvm.dbg.value(metadata i64 1, metadata !1523, metadata !DIExpression()) #7, !dbg !1525
  call void @llvm.dbg.value(metadata i64 0, metadata !1524, metadata !DIExpression()) #7, !dbg !1525
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i64 0, i32 0, !dbg !1527
  call void @llvm.dbg.value(metadata i64* undef, metadata !553, metadata !DIExpression()) #7, !dbg !1528
  call void @llvm.dbg.value(metadata i64* undef, metadata !556, metadata !DIExpression()) #7, !dbg !1528
  call void @llvm.dbg.value(metadata i64* %6, metadata !557, metadata !DIExpression()) #7, !dbg !1528
  %7 = cmpxchg weak i64* %6, i64 1, i64 0 release monotonic, !dbg !1530
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1530
  br i1 %8, label %22, label %9, !dbg !1527

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1531, metadata !DIExpression()) #7, !dbg !1537
  call void @llvm.dbg.value(metadata i64 1, metadata !1534, metadata !DIExpression()) #7, !dbg !1537
  call void @llvm.dbg.value(metadata i64 0, metadata !1535, metadata !DIExpression()) #7, !dbg !1537
  call void @llvm.dbg.value(metadata i64* undef, metadata !1541, metadata !DIExpression()) #7, !dbg !1546
  call void @llvm.dbg.value(metadata i64* undef, metadata !1544, metadata !DIExpression()) #7, !dbg !1546
  call void @llvm.dbg.value(metadata i64* %6, metadata !1545, metadata !DIExpression()) #7, !dbg !1546
  %10 = cmpxchg i64* %6, i64 1, i64 0 release monotonic, !dbg !1548
  %11 = extractvalue { i64, i1 } %10, 1, !dbg !1548
  br i1 %11, label %22, label %12, !dbg !1549

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1550
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1550
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1536, metadata !DIExpression()) #7, !dbg !1550
  call void @llvm.dbg.value(metadata i64* %6, metadata !1551, metadata !DIExpression()) #7, !dbg !1555
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1554, metadata !DIExpression()) #7, !dbg !1555
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1557, metadata !DIExpression()) #7, !dbg !1561
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1563
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1563
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %15, align 8, !dbg !1563, !tbaa !1034
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1563
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1563
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 8, !dbg !1563, !tbaa !1341
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1564
  store i64* %6, i64** %18, align 8, !dbg !1564, !tbaa !1371
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 8, !dbg !1565, !tbaa !994
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %16, align 8, !dbg !1567, !tbaa !1106
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1568
  %20 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i64, !dbg !1568
  %21 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %20, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %19) #6, !dbg !1568
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #7, !dbg !1569
  br label %22, !dbg !1569

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1570
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i64 @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1571 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1580
  call void @llvm.dbg.value(metadata i32 %1, metadata !1574, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %0, metadata !1575, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i8* %0, metadata !1576, metadata !DIExpression()), !dbg !1580
  br i1 %2, label %8, label %4, !dbg !1581

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1576, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i64 0, metadata !1577, metadata !DIExpression()), !dbg !1582
  %5 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !1583
  %6 = bitcast i8* %5 to i64**, !dbg !1583
  %7 = load i64*, i64** %6, align 8, !dbg !1583, !tbaa !1494
  call void @llvm.dbg.value(metadata i64* undef, metadata !1314, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i64* %7, metadata !1319, metadata !DIExpression()), !dbg !1584
  store atomic i64 0, i64* %7 monotonic, align 8, !dbg !1586
  br label %8, !dbg !1587

8:                                                ; preds = %4, %3
  ret i64 0, !dbg !1588
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1589 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1593, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1594, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1596, metadata !DIExpression()) #7, !dbg !1601
  call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()) #7, !dbg !1601
  call void @llvm.dbg.value(metadata i64 1, metadata !1600, metadata !DIExpression()) #7, !dbg !1601
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1603
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !1604
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1604
  call void @llvm.dbg.value(metadata i64* %3, metadata !488, metadata !DIExpression()) #7, !dbg !1604
  %4 = cmpxchg weak i64* %3, i64 0, i64 1 acquire monotonic, !dbg !1606
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1606
  br i1 %5, label %59, label %6, !dbg !1603

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1596, metadata !DIExpression()) #7, !dbg !1601
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1594, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1607, metadata !DIExpression()) #7, !dbg !1621
  call void @llvm.dbg.value(metadata i32 40, metadata !1610, metadata !DIExpression()) #7, !dbg !1621
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1625
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()) #7, !dbg !1625
  %7 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1627
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0
  %15 = ptrtoint %struct.halide_mutex* %0 to i64
  br label %16, !dbg !1628

16:                                               ; preds = %55, %6
  %17 = phi i64 [ %7, %6 ], [ %56, %55 ]
  %18 = phi i32 [ 40, %6 ], [ %57, %55 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1610, metadata !DIExpression()) #7, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %17, metadata !1611, metadata !DIExpression()) #7, !dbg !1621
  %19 = and i64 %17, 1, !dbg !1629
  %20 = icmp eq i64 %19, 0, !dbg !1629
  br i1 %20, label %21, label %32, !dbg !1629

21:                                               ; preds = %16, %26
  %22 = phi i64 [ %27, %26 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1611, metadata !DIExpression()) #7, !dbg !1621
  %23 = or i64 %22, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %23, metadata !1612, metadata !DIExpression()) #7, !dbg !1631
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !1632
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1632
  call void @llvm.dbg.value(metadata i64* %3, metadata !488, metadata !DIExpression()) #7, !dbg !1632
  %24 = cmpxchg weak i64* %3, i64 %22, i64 %23 acquire monotonic, !dbg !1634
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !1634
  br i1 %25, label %59, label %26, !dbg !1634

26:                                               ; preds = %21
  %27 = extractvalue { i64, i1 } %24, 0, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %18, metadata !1610, metadata !DIExpression()) #7, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %27, metadata !1611, metadata !DIExpression()) #7, !dbg !1621
  %28 = and i64 %27, 1, !dbg !1629
  %29 = icmp eq i64 %28, 0, !dbg !1629
  br i1 %29, label %21, label %30, !dbg !1629

30:                                               ; preds = %26
  %31 = extractvalue { i64, i1 } %24, 0, !dbg !1634
  br label %32, !dbg !1635

32:                                               ; preds = %30, %16
  %33 = phi i64 [ %17, %16 ], [ %31, %30 ], !dbg !1621
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1637
  %34 = icmp sgt i32 %18, 0, !dbg !1635
  br i1 %34, label %35, label %40, !dbg !1635

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 %18, metadata !1610, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1621
  %36 = icmp eq i32 %18, 1, !dbg !1638
  br i1 %36, label %40, label %37, !dbg !1639

37:                                               ; preds = %35
  %38 = add nsw i32 %18, -1, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %38, metadata !1610, metadata !DIExpression()) #7, !dbg !1621
  call void @halide_thread_yield() #6, !dbg !1641
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1644
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()) #7, !dbg !1644
  %39 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1646
  br label %55, !dbg !1647

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %35 ], [ %18, %32 ]
  call void @llvm.dbg.value(metadata i64 %33, metadata !1611, metadata !DIExpression()) #7, !dbg !1621
  %42 = and i64 %33, 2, !dbg !1648
  %43 = icmp eq i64 %42, 0, !dbg !1648
  br i1 %43, label %44, label %50, !dbg !1648

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %33, metadata !1611, metadata !DIExpression()) #7, !dbg !1621
  %45 = or i64 %33, 2, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %45, metadata !1616, metadata !DIExpression()) #7, !dbg !1650
  call void @llvm.dbg.value(metadata i64* undef, metadata !1449, metadata !DIExpression()) #7, !dbg !1651
  call void @llvm.dbg.value(metadata i64* undef, metadata !1452, metadata !DIExpression()) #7, !dbg !1651
  call void @llvm.dbg.value(metadata i64* %3, metadata !1453, metadata !DIExpression()) #7, !dbg !1651
  %46 = cmpxchg weak i64* %3, i64 %33, i64 %45 monotonic monotonic, !dbg !1653
  %47 = extractvalue { i64, i1 } %46, 1, !dbg !1653
  br i1 %47, label %50, label %48, !dbg !1653

48:                                               ; preds = %44
  %49 = extractvalue { i64, i1 } %46, 0, !dbg !1653
  br label %55

50:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1654
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1619, metadata !DIExpression()) #7, !dbg !1654
  call void @llvm.dbg.value(metadata i64* %3, metadata !1551, metadata !DIExpression()) #7, !dbg !1655
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1554, metadata !DIExpression()) #7, !dbg !1655
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1557, metadata !DIExpression()) #7, !dbg !1657
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !dbg !1659, !tbaa !1034
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1659, !tbaa !1341
  store i64* %3, i64** %13, align 8, !dbg !1660, !tbaa !1371
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1661, !tbaa !994
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !dbg !1662, !tbaa !1106
  %51 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %14) #6, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %51, metadata !1620, metadata !DIExpression()) #7, !dbg !1664
  %52 = icmp eq i64 %51, %15, !dbg !1665
  br i1 %52, label %58, label %53, !dbg !1665

53:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 40, metadata !1610, metadata !DIExpression()) #7, !dbg !1621
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1666
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()) #7, !dbg !1666
  %54 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1668
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1669
  br label %55

55:                                               ; preds = %53, %48, %37
  %56 = phi i64 [ %49, %48 ], [ %54, %53 ], [ %39, %37 ]
  %57 = phi i32 [ %41, %48 ], [ 40, %53 ], [ %38, %37 ]
  br label %16, !dbg !1621, !llvm.loop !1670

58:                                               ; preds = %50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7, !dbg !1669
  br label %59

59:                                               ; preds = %21, %1, %58
  ret void, !dbg !1672
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1673 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1675, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1676, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1520, metadata !DIExpression()) #7, !dbg !1678
  call void @llvm.dbg.value(metadata i64 1, metadata !1523, metadata !DIExpression()) #7, !dbg !1678
  call void @llvm.dbg.value(metadata i64 0, metadata !1524, metadata !DIExpression()) #7, !dbg !1678
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i64 0, i32 0, i64 0, !dbg !1680
  call void @llvm.dbg.value(metadata i64* undef, metadata !553, metadata !DIExpression()) #7, !dbg !1681
  call void @llvm.dbg.value(metadata i64* undef, metadata !556, metadata !DIExpression()) #7, !dbg !1681
  call void @llvm.dbg.value(metadata i64* %3, metadata !557, metadata !DIExpression()) #7, !dbg !1681
  %4 = cmpxchg weak i64* %3, i64 1, i64 0 release monotonic, !dbg !1683
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !1683
  br i1 %5, label %19, label %6, !dbg !1680

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1531, metadata !DIExpression()) #7, !dbg !1684
  call void @llvm.dbg.value(metadata i64 1, metadata !1534, metadata !DIExpression()) #7, !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1535, metadata !DIExpression()) #7, !dbg !1684
  call void @llvm.dbg.value(metadata i64* undef, metadata !1541, metadata !DIExpression()) #7, !dbg !1686
  call void @llvm.dbg.value(metadata i64* undef, metadata !1544, metadata !DIExpression()) #7, !dbg !1686
  call void @llvm.dbg.value(metadata i64* %3, metadata !1545, metadata !DIExpression()) #7, !dbg !1686
  %7 = cmpxchg i64* %3, i64 1, i64 0 release monotonic, !dbg !1688
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !1688
  br i1 %8, label %19, label %9, !dbg !1689

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1690
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1690
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1536, metadata !DIExpression()) #7, !dbg !1690
  call void @llvm.dbg.value(metadata i64* %3, metadata !1551, metadata !DIExpression()) #7, !dbg !1691
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1554, metadata !DIExpression()) #7, !dbg !1691
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1557, metadata !DIExpression()) #7, !dbg !1693
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1695
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1695
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %12, align 8, !dbg !1695, !tbaa !1034
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1695
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1695
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 8, !dbg !1695, !tbaa !1341
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 1, !dbg !1696
  store i64* %3, i64** %15, align 8, !dbg !1696, !tbaa !1371
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 8, !dbg !1697, !tbaa !994
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %13, align 8, !dbg !1698, !tbaa !1106
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i64 0, i32 0, !dbg !1699
  %17 = ptrtoint %struct.halide_mutex* %0 to i64, !dbg !1699
  %18 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %16) #6, !dbg !1699
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7, !dbg !1700
  br label %19, !dbg !1700

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !1701
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1702 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1708, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1710, metadata !DIExpression()) #7, !dbg !1715
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1717
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1718
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()) #7, !dbg !1718
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %4, metadata !1713, metadata !DIExpression()) #7, !dbg !1715
  %5 = icmp eq i64 %4, 0, !dbg !1721
  br i1 %5, label %18, label %6, !dbg !1721

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1710, metadata !DIExpression()) #7, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1708, metadata !DIExpression()), !dbg !1709
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !1722
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1722
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1714, metadata !DIExpression()) #7, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %4, metadata !1713, metadata !DIExpression()) #7, !dbg !1715
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1722
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1723, metadata !DIExpression()) #7, !dbg !1728
  call void @llvm.dbg.value(metadata i64* %3, metadata !1726, metadata !DIExpression()) #7, !dbg !1728
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1727, metadata !DIExpression()) #7, !dbg !1728
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1557, metadata !DIExpression()) #7, !dbg !1730
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1732
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1732
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !dbg !1732, !tbaa !1034
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1732
  store i64 (i8*, i32, i1)* @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !dbg !1732, !tbaa !1106
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1732
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 1, !dbg !1733
  store i64* %3, i64** %13, align 8, !dbg !1733, !tbaa !1423
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 2, !dbg !1733
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !dbg !1733, !tbaa !1429
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1734, !tbaa !994
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1736, !tbaa !1341
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i64 0, i32 0, !dbg !1737
  %16 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1737
  %17 = call i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z"(i64 %16, i64 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15, i64 0) #6, !dbg !1737
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1738
  br label %18, !dbg !1738

18:                                               ; preds = %1, %6
  ret void, !dbg !1739
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1740 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1742, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1745, metadata !DIExpression()) #7, !dbg !1750
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1752
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1753
  call void @llvm.dbg.value(metadata i64* %3, metadata !472, metadata !DIExpression()) #7, !dbg !1753
  %4 = load atomic i64, i64* %3 monotonic, align 8, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %4, metadata !1748, metadata !DIExpression()) #7, !dbg !1750
  %5 = icmp eq i64 %4, 0, !dbg !1756
  br i1 %5, label %18, label %6, !dbg !1756

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1745, metadata !DIExpression()) #7, !dbg !1750
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1743, metadata !DIExpression()), !dbg !1744
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !1757
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1757
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1749, metadata !DIExpression()) #7, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %4, metadata !1748, metadata !DIExpression()) #7, !dbg !1750
  %8 = inttoptr i64 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1757
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1758, metadata !DIExpression()) #7, !dbg !1763
  call void @llvm.dbg.value(metadata i64* %3, metadata !1761, metadata !DIExpression()) #7, !dbg !1763
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1762, metadata !DIExpression()) #7, !dbg !1763
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1557, metadata !DIExpression()) #7, !dbg !1765
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 0, !dbg !1767
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 8, !dbg !1767, !tbaa !994
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 1, !dbg !1767
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %10, align 8, !dbg !1767, !tbaa !1034
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 2, !dbg !1767
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, i32 3, !dbg !1767
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 8, !dbg !1767, !tbaa !1341
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 1, !dbg !1768
  store i64* %3, i64** %13, align 8, !dbg !1768, !tbaa !1408
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 2, !dbg !1768
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 8, !dbg !1768, !tbaa !1769
  store i64 (i8*, i32, i1)* @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %11, align 8, !dbg !1770, !tbaa !1106
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i64 0, i32 0, !dbg !1772
  %16 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1772
  %17 = call i64 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %15) #6, !dbg !1772
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %7) #7, !dbg !1773
  br label %18, !dbg !1773

18:                                               ; preds = %1, %6
  ret void, !dbg !1774
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !1775 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 8
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1779, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1780, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1784, metadata !DIExpression()) #7, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1787, metadata !DIExpression()) #7, !dbg !1793
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !1795
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !1795
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1788, metadata !DIExpression()) #7, !dbg !1795
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i64 0, i32 0, i64 0, !dbg !1795
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1796, metadata !DIExpression()) #7, !dbg !1801
  call void @llvm.dbg.value(metadata i64* %6, metadata !1799, metadata !DIExpression()) #7, !dbg !1801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1800, metadata !DIExpression()) #7, !dbg !1801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1557, metadata !DIExpression()) #7, !dbg !1803
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 0, !dbg !1805
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 1, !dbg !1805
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 2, !dbg !1805
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, i32 3, !dbg !1805
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 8, !dbg !1805, !tbaa !1341
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 1, !dbg !1806
  store i64* %6, i64** %11, align 8, !dbg !1806, !tbaa !1494
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 2, !dbg !1806
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !1806
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 8, !dbg !1806, !tbaa !1502
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 8, !dbg !1807, !tbaa !994
  store void (i8*)* @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %8, align 8, !dbg !1809, !tbaa !1034
  store i64 (i8*, i32, i1)* @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %9, align 8, !dbg !1810, !tbaa !1106
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i64 0, i32 0, !dbg !1811
  %15 = ptrtoint %struct.halide_cond* %0 to i64, !dbg !1811
  %16 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %14) #6, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %16, metadata !1789, metadata !DIExpression()) #7, !dbg !1793
  %17 = ptrtoint %struct.halide_mutex* %1 to i64, !dbg !1812
  %18 = icmp eq i64 %16, %17, !dbg !1812
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i64 0, i32 0, i64 0, !dbg !1813
  br i1 %18, label %75, label %20, !dbg !1812

20:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1596, metadata !DIExpression()) #7, !dbg !1814
  call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()) #7, !dbg !1814
  call void @llvm.dbg.value(metadata i64 1, metadata !1600, metadata !DIExpression()) #7, !dbg !1814
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !1817
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1817
  call void @llvm.dbg.value(metadata i64* %19, metadata !488, metadata !DIExpression()) #7, !dbg !1817
  %21 = cmpxchg weak i64* %19, i64 0, i64 1 acquire monotonic, !dbg !1819
  %22 = extractvalue { i64, i1 } %21, 1, !dbg !1819
  br i1 %22, label %80, label %23, !dbg !1820

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1607, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i32 40, metadata !1610, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1823
  call void @llvm.dbg.value(metadata i64* %19, metadata !472, metadata !DIExpression()) #7, !dbg !1823
  %24 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1825
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i64 0, i32 0
  br label %32, !dbg !1826

32:                                               ; preds = %71, %23
  %33 = phi i64 [ %24, %23 ], [ %72, %71 ]
  %34 = phi i32 [ 40, %23 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !1610, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %33, metadata !1611, metadata !DIExpression()) #7, !dbg !1821
  %35 = and i64 %33, 1, !dbg !1827
  %36 = icmp eq i64 %35, 0, !dbg !1827
  br i1 %36, label %37, label %48, !dbg !1827

37:                                               ; preds = %32, %42
  %38 = phi i64 [ %43, %42 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !1611, metadata !DIExpression()) #7, !dbg !1821
  %39 = or i64 %38, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %39, metadata !1612, metadata !DIExpression()) #7, !dbg !1829
  call void @llvm.dbg.value(metadata i64* undef, metadata !482, metadata !DIExpression()) #7, !dbg !1830
  call void @llvm.dbg.value(metadata i64* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1830
  call void @llvm.dbg.value(metadata i64* %19, metadata !488, metadata !DIExpression()) #7, !dbg !1830
  %40 = cmpxchg weak i64* %19, i64 %38, i64 %39 acquire monotonic, !dbg !1832
  %41 = extractvalue { i64, i1 } %40, 1, !dbg !1832
  br i1 %41, label %80, label %42, !dbg !1832

42:                                               ; preds = %37
  %43 = extractvalue { i64, i1 } %40, 0, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %34, metadata !1610, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %43, metadata !1611, metadata !DIExpression()) #7, !dbg !1821
  %44 = and i64 %43, 1, !dbg !1827
  %45 = icmp eq i64 %44, 0, !dbg !1827
  br i1 %45, label %37, label %46, !dbg !1827

46:                                               ; preds = %42
  %47 = extractvalue { i64, i1 } %40, 0, !dbg !1832
  br label %48, !dbg !1833

48:                                               ; preds = %46, %32
  %49 = phi i64 [ %33, %32 ], [ %47, %46 ], !dbg !1821
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1835
  %50 = icmp sgt i32 %34, 0, !dbg !1833
  br i1 %50, label %51, label %56, !dbg !1833

51:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 %34, metadata !1610, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1821
  %52 = icmp eq i32 %34, 1, !dbg !1836
  br i1 %52, label %56, label %53, !dbg !1837

53:                                               ; preds = %51
  %54 = add nsw i32 %34, -1, !dbg !1838
  call void @llvm.dbg.value(metadata i32 %54, metadata !1610, metadata !DIExpression()) #7, !dbg !1821
  call void @halide_thread_yield() #6, !dbg !1839
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1840
  call void @llvm.dbg.value(metadata i64* %19, metadata !472, metadata !DIExpression()) #7, !dbg !1840
  %55 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1842
  br label %71, !dbg !1843

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %51 ], [ %34, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1611, metadata !DIExpression()) #7, !dbg !1821
  %58 = and i64 %49, 2, !dbg !1844
  %59 = icmp eq i64 %58, 0, !dbg !1844
  br i1 %59, label %60, label %66, !dbg !1844

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %49, metadata !1611, metadata !DIExpression()) #7, !dbg !1821
  %61 = or i64 %49, 2, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %61, metadata !1616, metadata !DIExpression()) #7, !dbg !1846
  call void @llvm.dbg.value(metadata i64* undef, metadata !1449, metadata !DIExpression()) #7, !dbg !1847
  call void @llvm.dbg.value(metadata i64* undef, metadata !1452, metadata !DIExpression()) #7, !dbg !1847
  call void @llvm.dbg.value(metadata i64* %19, metadata !1453, metadata !DIExpression()) #7, !dbg !1847
  %62 = cmpxchg weak i64* %19, i64 %49, i64 %61 monotonic monotonic, !dbg !1849
  %63 = extractvalue { i64, i1 } %62, 1, !dbg !1849
  br i1 %63, label %66, label %64, !dbg !1849

64:                                               ; preds = %60
  %65 = extractvalue { i64, i1 } %62, 0, !dbg !1849
  br label %71

66:                                               ; preds = %60, %56
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #7, !dbg !1850
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1619, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata i64* %19, metadata !1551, metadata !DIExpression()) #7, !dbg !1851
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1554, metadata !DIExpression()) #7, !dbg !1851
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1557, metadata !DIExpression()) #7, !dbg !1853
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", void (i8*)** %27, align 8, !dbg !1855, !tbaa !1034
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 8, !dbg !1855, !tbaa !1341
  store i64* %19, i64** %30, align 8, !dbg !1856, !tbaa !1371
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 8, !dbg !1857, !tbaa !994
  store i64 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", i64 (i8*, i32, i1)** %28, align 8, !dbg !1858, !tbaa !1106
  %67 = call i64 @"?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z"(i64 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 8 dereferenceable(32) %31) #6, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %67, metadata !1620, metadata !DIExpression()) #7, !dbg !1860
  %68 = icmp eq i64 %67, %17, !dbg !1861
  br i1 %68, label %74, label %69, !dbg !1861

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 40, metadata !1610, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1862
  call void @llvm.dbg.value(metadata i64* %19, metadata !472, metadata !DIExpression()) #7, !dbg !1862
  %70 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1864
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !1865
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i64 [ %65, %64 ], [ %70, %69 ], [ %55, %53 ]
  %73 = phi i32 [ %57, %64 ], [ 40, %69 ], [ %54, %53 ]
  br label %32, !dbg !1821, !llvm.loop !1866

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #7, !dbg !1865
  br label %80

75:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1796, metadata !DIExpression()) #7, !dbg !1801
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1784, metadata !DIExpression()) #7, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64* undef, metadata !465, metadata !DIExpression()) #7, !dbg !1868
  call void @llvm.dbg.value(metadata i64* %19, metadata !472, metadata !DIExpression()) #7, !dbg !1868
  %76 = load atomic i64, i64* %19 monotonic, align 8, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %76, metadata !1790, metadata !DIExpression()) #7, !dbg !1871
  %77 = and i64 %76, 1, !dbg !1872
  %78 = icmp eq i64 %77, 0, !dbg !1872
  br i1 %78, label %79, label %80, !dbg !1872

79:                                               ; preds = %75
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !1874
  call void @abort() #6, !dbg !1874
  br label %80, !dbg !1874

80:                                               ; preds = %37, %20, %74, %75, %79
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !1877
  ret void, !dbg !1878
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !1879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1883, metadata !DIExpression()), !dbg !1885
  %2 = tail call i8* @halide_malloc(i8* null, i64 8) #6, !dbg !1886
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !1884, metadata !DIExpression()), !dbg !1885
  %4 = icmp eq i8* %2, null, !dbg !1887
  br i1 %4, label %14, label %5, !dbg !1887

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64, !dbg !1888
  %7 = shl nsw i64 %6, 3, !dbg !1888
  %8 = tail call i8* @halide_malloc(i8* null, i64 %7) #6, !dbg !1888
  %9 = bitcast i8* %2 to i8**, !dbg !1888
  store i8* %8, i8** %9, align 8, !dbg !1888, !tbaa !1889
  %10 = icmp eq i8* %8, null, !dbg !1891
  br i1 %10, label %11, label %12, !dbg !1891

11:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !1892
  br label %14, !dbg !1895

12:                                               ; preds = %5
  %13 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %7) #6, !dbg !1896
  br label %14, !dbg !1897

14:                                               ; preds = %1, %12, %11
  %15 = phi %struct.halide_mutex_array* [ null, %11 ], [ %3, %12 ], [ null, %1 ], !dbg !1885
  ret %struct.halide_mutex_array* %15, !dbg !1898
}

declare dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

declare dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1899 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !1903, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %0, metadata !1904, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %1, metadata !1905, metadata !DIExpression()), !dbg !1906
  %3 = bitcast i8* %1 to i8**, !dbg !1907
  %4 = load i8*, i8** %3, align 8, !dbg !1907, !tbaa !1889
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !1907
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !1908
  ret void, !dbg !1909
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !1910 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !1915, metadata !DIExpression()), !dbg !1916
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !1917
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !1917, !tbaa !1889
  %5 = sext i32 %1 to i64, !dbg !1917
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !1917
  tail call void @halide_mutex_lock(%struct.halide_mutex* %6) #8, !dbg !1917
  ret i32 0, !dbg !1918
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !1919 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !1921, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !1922, metadata !DIExpression()), !dbg !1923
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i64 0, i32 0, !dbg !1924
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 8, !dbg !1924, !tbaa !1889
  %5 = sext i32 %1 to i64, !dbg !1924
  %6 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i64 %5, !dbg !1924
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %6) #8, !dbg !1924
  ret i32 0, !dbg !1925
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %0) local_unnamed_addr #5 !dbg !1926 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1930, metadata !DIExpression()), !dbg !1931
  %2 = icmp sgt i32 %0, 256, !dbg !1932
  br i1 %2, label %6, label %3, !dbg !1932

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !1933
  %5 = select i1 %4, i32 %0, i32 1, !dbg !1933
  ret i32 %5, !dbg !1933

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !1930, metadata !DIExpression()), !dbg !1931
  ret i32 256, !dbg !1935
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() local_unnamed_addr #0 !dbg !1936 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1938, metadata !DIExpression()), !dbg !1940
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@", i64 0, i64 0)) #6, !dbg !1941
  call void @llvm.dbg.value(metadata i8* %1, metadata !1939, metadata !DIExpression()), !dbg !1940
  %2 = icmp eq i8* %1, null, !dbg !1942
  br i1 %2, label %3, label %6, !dbg !1942

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@", i64 0, i64 0)) #6, !dbg !1943
  call void @llvm.dbg.value(metadata i8* %4, metadata !1939, metadata !DIExpression()), !dbg !1940
  %5 = icmp eq i8* %4, null, !dbg !1946
  br i1 %5, label %9, label %6, !dbg !1946

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %8, metadata !1938, metadata !DIExpression()), !dbg !1940
  br label %11, !dbg !1950

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #8, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %10, metadata !1938, metadata !DIExpression()), !dbg !1940
  br label %11, !dbg !1953

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !1954
  call void @llvm.dbg.value(metadata i32 %12, metadata !1938, metadata !DIExpression()), !dbg !1940
  ret i32 %12, !dbg !1955
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !1956 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !1960, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32 0, metadata !1961, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32 40, metadata !1962, metadata !DIExpression()), !dbg !1986
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 8, !dbg !1987
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i64 0, i32 2
  br label %10, !dbg !1993

10:                                               ; preds = %402, %1
  %11 = phi i32 [ 0, %1 ], [ %403, %402 ], !dbg !1994
  call void @llvm.dbg.value(metadata i32 %11, metadata !1961, metadata !DIExpression()), !dbg !1986
  br i1 %3, label %15, label %12, !dbg !1993

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !1990, metadata !DIExpression()), !dbg !1995
  %13 = load i32, i32* %4, align 8, !dbg !1987, !tbaa !1996
  %14 = icmp eq i32 %13, 0, !dbg !1987
  br i1 %14, label %18, label %21, !dbg !1987

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 14), align 8, !dbg !1993, !tbaa !2000, !range !570
  %17 = icmp eq i8 %16, 0, !dbg !1993
  br i1 %17, label %48, label %417, !dbg !1993

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 8, !dbg !1987, !tbaa !2004
  %20 = icmp eq i32 %19, 0, !dbg !1987
  br i1 %20, label %417, label %21, !dbg !1993

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2005, !tbaa !2006
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %49, metadata !1964, metadata !DIExpression()), !dbg !2007
  %23 = load i32, i32* %5, align 4, !dbg !2008, !tbaa !2011
  %24 = icmp eq i32 %23, 0, !dbg !2008
  br i1 %24, label %38, label %25, !dbg !2008

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 8, !dbg !2012, !tbaa !2004
  %27 = icmp eq i32 %26, 0, !dbg !2012
  br i1 %27, label %28, label %46, !dbg !2012

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), metadata !1966, metadata !DIExpression()), !dbg !2007
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2015
  br i1 %29, label %35, label %30, !dbg !2015

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !1964, metadata !DIExpression()), !dbg !2007
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i64 0, i32 2, !dbg !2018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !1966, metadata !DIExpression()), !dbg !2007
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 8, !dbg !2020, !tbaa !2021
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !1964, metadata !DIExpression()), !dbg !2007
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2015
  br i1 %34, label %35, label %30, !dbg !2015, !llvm.loop !2022

35:                                               ; preds = %30, %28
  %36 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %28 ], [ %32, %30 ], !dbg !2007
  %37 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 8, !dbg !2024, !tbaa !2021
  store %"struct.Halide::Runtime::Internal::work"* %37, %"struct.Halide::Runtime::Internal::work"** %36, align 8, !dbg !2024, !tbaa !841
  store i32 0, i32* %4, align 8, !dbg !2025, !tbaa !1996
  br label %402, !dbg !2026

38:                                               ; preds = %21
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 8, !dbg !2027, !tbaa !2028
  %40 = icmp eq %"struct.Halide::Runtime::Internal::work"* %39, null, !dbg !2027
  br i1 %40, label %46, label %41, !dbg !2027

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %39, i64 0, i32 9, !dbg !2027
  %43 = load i32, i32* %42, align 4, !dbg !2027, !tbaa !2011
  %44 = icmp eq i32 %43, 0, !dbg !2027
  br i1 %44, label %46, label %45, !dbg !2027

45:                                               ; preds = %41
  store i32 %43, i32* %5, align 4, !dbg !2029, !tbaa !2011
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2032
  br label %402, !dbg !2033

46:                                               ; preds = %25, %41, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), metadata !1966, metadata !DIExpression()), !dbg !2007
  %47 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2034
  br i1 %47, label %196, label %51, !dbg !2034

48:                                               ; preds = %15
  %49 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2005, !tbaa !2006
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), metadata !1966, metadata !DIExpression()), !dbg !2007
  %50 = icmp eq %"struct.Halide::Runtime::Internal::work"* %49, null, !dbg !2034
  br i1 %50, label %206, label %52, !dbg !2034

51:                                               ; preds = %46
  br i1 %3, label %52, label %121, !dbg !2034

52:                                               ; preds = %48, %51
  %53 = phi %"struct.Halide::Runtime::Internal::work"* [ %49, %48 ], [ %22, %51 ]
  br label %54, !dbg !2035

54:                                               ; preds = %52, %117
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %119, %117 ], [ %53, %52 ]
  %56 = phi %"struct.Halide::Runtime::Internal::work"** [ %118, %117 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %52 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %56, metadata !1966, metadata !DIExpression()), !dbg !2007
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 5, !dbg !2036
  %58 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %57, align 8, !dbg !2036, !tbaa !2028
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %58, metadata !1970, metadata !DIExpression()), !dbg !2037
  %59 = icmp eq %"struct.Halide::Runtime::Internal::work"* %58, null, !dbg !2035
  br i1 %59, label %75, label %60, !dbg !2035

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 8, !dbg !2038
  %62 = load i32, i32* %61, align 8, !dbg !2038, !tbaa !2004
  %63 = icmp eq i32 %62, 0, !dbg !2038
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 0, i32 7, !dbg !2041
  %65 = load i32, i32* %64, align 4, !dbg !2041, !tbaa !2043
  br i1 %63, label %71, label %66, !dbg !2038

66:                                               ; preds = %60
  %67 = mul nsw i32 %65, %62, !dbg !2044
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2044
  %69 = load i32, i32* %68, align 8, !dbg !2044, !tbaa !2046
  %70 = sub nsw i32 %67, %69, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %70, metadata !1971, metadata !DIExpression()), !dbg !2037
  br label %80, !dbg !2047

71:                                               ; preds = %60
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %58, i64 0, i32 6, !dbg !2048
  %73 = load i32, i32* %72, align 8, !dbg !2048, !tbaa !2046
  %74 = sub nsw i32 %65, %73, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %74, metadata !1971, metadata !DIExpression()), !dbg !2037
  br label %80, !dbg !2050

75:                                               ; preds = %54
  %76 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2051, !tbaa !2053
  %77 = add nsw i32 %76, 1, !dbg !2051
  %78 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2051, !tbaa !2054
  %79 = sub i32 %77, %78, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %79, metadata !1971, metadata !DIExpression()), !dbg !2037
  br label %80, !dbg !2055

80:                                               ; preds = %75, %71, %66
  %81 = phi i32 [ %79, %75 ], [ %74, %71 ], [ %70, %66 ], !dbg !2056
  call void @llvm.dbg.value(metadata i32 %81, metadata !1971, metadata !DIExpression()), !dbg !2037
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 7, !dbg !2057
  %83 = load i32, i32* %82, align 4, !dbg !2057, !tbaa !2043
  %84 = icmp sge i32 %81, %83, !dbg !2057
  call void @llvm.dbg.value(metadata i1 %84, metadata !1968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2037
  call void @llvm.dbg.value(metadata i1 true, metadata !1972, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2037
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 8, !dbg !2058
  %86 = load i8, i8* %85, align 8, !dbg !2058, !tbaa !2059, !range !570
  %87 = icmp eq i8 %86, 0, !dbg !2058
  br i1 %87, label %92, label %88, !dbg !2058

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 8, !dbg !2058
  %90 = load i32, i32* %89, align 8, !dbg !2058, !tbaa !2004
  %91 = icmp eq i32 %90, 0, !dbg !2058
  br label %92, !dbg !2058

92:                                               ; preds = %88, %80
  %93 = phi i1 [ true, %80 ], [ %91, %88 ]
  call void @llvm.dbg.value(metadata i1 %93, metadata !1973, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2037
  %94 = and i1 %93, %84, !dbg !2060
  br i1 %94, label %95, label %117, !dbg !2060

95:                                               ; preds = %92
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %55, metadata !2061, metadata !DIExpression()) #7, !dbg !2064
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 10, !dbg !2068
  %97 = load i32, i32* %96, align 8, !dbg !2068, !tbaa !2070
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 4, !dbg !2068
  %99 = load i32, i32* %98, align 8, !dbg !2068, !tbaa !2071
  %100 = icmp slt i32 %97, %99, !dbg !2068
  br i1 %100, label %101, label %225, !dbg !2068

101:                                              ; preds = %95
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 0, i32 3
  br label %103, !dbg !2068

103:                                              ; preds = %112, %101
  %104 = phi i32 [ %97, %101 ], [ %114, %112 ]
  %105 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %102, align 8, !dbg !2072, !tbaa !2075
  %106 = sext i32 %104 to i64, !dbg !2072
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 1, !dbg !2072
  %108 = load i32, i32* %107, align 8, !dbg !2072, !tbaa !2076
  %109 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %105, i64 %106, i32 0, !dbg !2072
  %110 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %109, align 8, !dbg !2072, !tbaa !2078
  %111 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %110, i32 %108) #6, !dbg !2072
  br i1 %111, label %112, label %117, !dbg !2072

112:                                              ; preds = %103
  %113 = load i32, i32* %96, align 8, !dbg !2079, !tbaa !2070
  %114 = add nsw i32 %113, 1, !dbg !2079
  store i32 %114, i32* %96, align 8, !dbg !2079, !tbaa !2070
  %115 = load i32, i32* %98, align 8, !dbg !2068, !tbaa !2071
  %116 = icmp slt i32 %114, %115, !dbg !2068
  br i1 %116, label %103, label %225, !dbg !2068, !llvm.loop !2080

117:                                              ; preds = %103, %92
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %55, i64 0, i32 2, !dbg !2082
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %118, metadata !1966, metadata !DIExpression()), !dbg !2007
  %119 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %118, align 8, !dbg !2083, !tbaa !2021
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %119, metadata !1964, metadata !DIExpression()), !dbg !2007
  %120 = icmp eq %"struct.Halide::Runtime::Internal::work"* %119, null, !dbg !2034
  br i1 %120, label %196, label %54, !dbg !2034

121:                                              ; preds = %51, %192
  %122 = phi %"struct.Halide::Runtime::Internal::work"* [ %194, %192 ], [ %22, %51 ]
  %123 = phi %"struct.Halide::Runtime::Internal::work"** [ %193, %192 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), %51 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %123, metadata !1966, metadata !DIExpression()), !dbg !2007
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 5, !dbg !2036
  %125 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %124, align 8, !dbg !2036, !tbaa !2028
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %125, metadata !1970, metadata !DIExpression()), !dbg !2037
  %126 = icmp eq %"struct.Halide::Runtime::Internal::work"* %125, null, !dbg !2035
  br i1 %126, label %127, label %132, !dbg !2035

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2051, !tbaa !2053
  %129 = add nsw i32 %128, 1, !dbg !2051
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2051, !tbaa !2054
  %131 = sub i32 %129, %130, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %131, metadata !1971, metadata !DIExpression()), !dbg !2037
  br label %147, !dbg !2055

132:                                              ; preds = %121
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 8, !dbg !2038
  %134 = load i32, i32* %133, align 8, !dbg !2038, !tbaa !2004
  %135 = icmp eq i32 %134, 0, !dbg !2038
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 0, i32 7, !dbg !2041
  %137 = load i32, i32* %136, align 4, !dbg !2041, !tbaa !2043
  br i1 %135, label %138, label %142, !dbg !2038

138:                                              ; preds = %132
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2048
  %140 = load i32, i32* %139, align 8, !dbg !2048, !tbaa !2046
  %141 = sub nsw i32 %137, %140, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %141, metadata !1971, metadata !DIExpression()), !dbg !2037
  br label %147, !dbg !2050

142:                                              ; preds = %132
  %143 = mul nsw i32 %137, %134, !dbg !2044
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %125, i64 0, i32 6, !dbg !2044
  %145 = load i32, i32* %144, align 8, !dbg !2044, !tbaa !2046
  %146 = sub nsw i32 %143, %145, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %146, metadata !1971, metadata !DIExpression()), !dbg !2037
  br label %147, !dbg !2047

147:                                              ; preds = %138, %142, %127
  %148 = phi i32 [ %131, %127 ], [ %141, %138 ], [ %146, %142 ], !dbg !2056
  call void @llvm.dbg.value(metadata i32 %148, metadata !1971, metadata !DIExpression()), !dbg !2037
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 7, !dbg !2057
  %150 = load i32, i32* %149, align 4, !dbg !2057, !tbaa !2043
  %151 = icmp slt i32 %148, %150, !dbg !2057
  call void @llvm.dbg.value(metadata i1 %151, metadata !1968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2037
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 3, !dbg !2084
  %153 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %152, align 8, !dbg !2084, !tbaa !2085
  %154 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 8, !dbg !2084, !tbaa !2085
  %155 = icmp ne %"struct.Halide::Runtime::Internal::work"* %153, %154, !dbg !2084
  %156 = icmp ne i32 %150, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !1972, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2037
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 8, !dbg !2058
  %158 = load i8, i8* %157, align 8, !dbg !2058, !tbaa !2059, !range !570
  %159 = icmp eq i8 %158, 0, !dbg !2058
  br i1 %159, label %164, label %160, !dbg !2058

160:                                              ; preds = %147
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 8, !dbg !2058
  %162 = load i32, i32* %161, align 8, !dbg !2058, !tbaa !2004
  %163 = icmp eq i32 %162, 0, !dbg !2058
  br label %164, !dbg !2058

164:                                              ; preds = %160, %147
  %165 = phi i1 [ true, %147 ], [ %163, %160 ]
  call void @llvm.dbg.value(metadata i1 %165, metadata !1973, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2037
  %166 = and i1 %156, %155, !dbg !2060
  %167 = or i1 %151, %166, !dbg !2060
  %168 = xor i1 %165, true, !dbg !2060
  %169 = or i1 %167, %168, !dbg !2060
  br i1 %169, label %192, label %170, !dbg !2060

170:                                              ; preds = %164
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %122, metadata !2061, metadata !DIExpression()) #7, !dbg !2064
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 10, !dbg !2068
  %172 = load i32, i32* %171, align 8, !dbg !2068, !tbaa !2070
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 4, !dbg !2068
  %174 = load i32, i32* %173, align 8, !dbg !2068, !tbaa !2071
  %175 = icmp slt i32 %172, %174, !dbg !2068
  br i1 %175, label %176, label %225, !dbg !2068

176:                                              ; preds = %170
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 0, i32 3
  br label %178, !dbg !2068

178:                                              ; preds = %187, %176
  %179 = phi i32 [ %172, %176 ], [ %189, %187 ]
  %180 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %177, align 8, !dbg !2072, !tbaa !2075
  %181 = sext i32 %179 to i64, !dbg !2072
  %182 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 1, !dbg !2072
  %183 = load i32, i32* %182, align 8, !dbg !2072, !tbaa !2076
  %184 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %180, i64 %181, i32 0, !dbg !2072
  %185 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %184, align 8, !dbg !2072, !tbaa !2078
  %186 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %185, i32 %183) #6, !dbg !2072
  br i1 %186, label %187, label %192, !dbg !2072

187:                                              ; preds = %178
  %188 = load i32, i32* %171, align 8, !dbg !2079, !tbaa !2070
  %189 = add nsw i32 %188, 1, !dbg !2079
  store i32 %189, i32* %171, align 8, !dbg !2079, !tbaa !2070
  %190 = load i32, i32* %173, align 8, !dbg !2068, !tbaa !2071
  %191 = icmp slt i32 %189, %190, !dbg !2068
  br i1 %191, label %178, label %225, !dbg !2068, !llvm.loop !2080

192:                                              ; preds = %178, %164
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %122, i64 0, i32 2, !dbg !2082
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %193, metadata !1966, metadata !DIExpression()), !dbg !2007
  %194 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %193, align 8, !dbg !2083, !tbaa !2021
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %194, metadata !1964, metadata !DIExpression()), !dbg !2007
  %195 = icmp eq %"struct.Halide::Runtime::Internal::work"* %194, null, !dbg !2034
  br i1 %195, label %196, label %121, !dbg !2034

196:                                              ; preds = %192, %117, %46
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !1966, metadata !DIExpression()), !dbg !2007
  br i1 %3, label %206, label %197, !dbg !2086

197:                                              ; preds = %196
  %198 = add nsw i32 %11, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %198, metadata !1961, metadata !DIExpression()), !dbg !1986
  %199 = icmp slt i32 %11, 40, !dbg !2089
  br i1 %199, label %200, label %201, !dbg !2089

200:                                              ; preds = %197
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2092
  tail call void @halide_thread_yield() #6, !dbg !2095
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2096
  br label %402, !dbg !2097

201:                                              ; preds = %197
  %202 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2098, !tbaa !2100
  %203 = add nsw i32 %202, 1, !dbg !2098
  store i32 %203, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2098, !tbaa !2100
  store i8 1, i8* %8, align 4, !dbg !2101, !tbaa !2102
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2103
  store i8 0, i8* %8, align 4, !dbg !2104, !tbaa !2102
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2105, !tbaa !2100
  %205 = add nsw i32 %204, -1, !dbg !2105
  store i32 %205, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2105, !tbaa !2100
  br label %402, !dbg !2106

206:                                              ; preds = %48, %196
  %207 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2107, !tbaa !2109
  %208 = add nsw i32 %207, 1, !dbg !2107
  store i32 %208, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2107, !tbaa !2109
  %209 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2110, !tbaa !2111
  %210 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !dbg !2110, !tbaa !2112
  %211 = icmp sgt i32 %209, %210, !dbg !2110
  br i1 %211, label %212, label %216, !dbg !2110

212:                                              ; preds = %206
  %213 = add nsw i32 %209, -1, !dbg !2113
  store i32 %213, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2113, !tbaa !2111
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2116
  %214 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2117, !tbaa !2111
  %215 = add nsw i32 %214, 1, !dbg !2117
  store i32 %215, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2117, !tbaa !2111
  br label %221, !dbg !2118

216:                                              ; preds = %206
  %217 = add nsw i32 %11, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %217, metadata !1961, metadata !DIExpression()), !dbg !1986
  %218 = icmp slt i32 %11, 40, !dbg !2119
  br i1 %218, label %219, label %220, !dbg !2119

219:                                              ; preds = %216
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2120
  tail call void @halide_thread_yield() #6, !dbg !2123
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2124
  br label %221, !dbg !2125

220:                                              ; preds = %216
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2126
  br label %221, !dbg !2128

221:                                              ; preds = %219, %220, %212
  %222 = phi i32 [ %11, %212 ], [ %217, %219 ], [ %217, %220 ], !dbg !1986
  call void @llvm.dbg.value(metadata i32 %222, metadata !1961, metadata !DIExpression()), !dbg !1986
  %223 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2129, !tbaa !2109
  %224 = add nsw i32 %223, -1, !dbg !2129
  store i32 %224, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2129, !tbaa !2109
  br label %402, !dbg !2130

225:                                              ; preds = %170, %95, %187, %112
  %226 = phi i32* [ %96, %112 ], [ %171, %187 ], [ %96, %95 ], [ %171, %170 ]
  %227 = phi %"struct.Halide::Runtime::Internal::work"** [ %56, %112 ], [ %123, %187 ], [ %56, %95 ], [ %123, %170 ]
  %228 = phi %"struct.Halide::Runtime::Internal::work"* [ %55, %112 ], [ %122, %187 ], [ %55, %95 ], [ %122, %170 ]
  store i32 0, i32* %226, align 8, !dbg !2131, !tbaa !2070
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !1964, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %227, metadata !1966, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !1961, metadata !DIExpression()), !dbg !1986
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 8, !dbg !2132
  %230 = load i32, i32* %229, align 8, !dbg !2132, !tbaa !2004
  %231 = add nsw i32 %230, 1, !dbg !2132
  store i32 %231, i32* %229, align 8, !dbg !2132, !tbaa !2004
  %232 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 5, !dbg !2133
  %233 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2133, !tbaa !2028
  %234 = icmp eq %"struct.Halide::Runtime::Internal::work"* %233, null, !dbg !2133
  %235 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2134
  %236 = load i32, i32* %235, align 4, !dbg !2134, !tbaa !2043
  br i1 %234, label %237, label %240, !dbg !2133

237:                                              ; preds = %225
  %238 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2136, !tbaa !2054
  %239 = add nsw i32 %238, %236, !dbg !2136
  store i32 %239, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2136, !tbaa !2054
  br label %244, !dbg !2138

240:                                              ; preds = %225
  %241 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %233, i64 0, i32 6, !dbg !2139
  %242 = load i32, i32* %241, align 8, !dbg !2139, !tbaa !2046
  %243 = add nsw i32 %242, %236, !dbg !2139
  store i32 %243, i32* %241, align 8, !dbg !2139, !tbaa !2046
  br label %244, !dbg !2141

244:                                              ; preds = %240, %237
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()), !dbg !2007
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 8, !dbg !2142
  %246 = load i8, i8* %245, align 8, !dbg !2142, !tbaa !2059, !range !570
  %247 = icmp eq i8 %246, 0, !dbg !2142
  br i1 %247, label %323, label %248, !dbg !2142

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2143
  %250 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2143, !tbaa !2021
  store %"struct.Halide::Runtime::Internal::work"* %250, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2143, !tbaa !841
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2144
  call void @llvm.dbg.value(metadata i32 0, metadata !1975, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 1, metadata !1978, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()), !dbg !2007
  %251 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6
  %252 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 10
  %253 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 4
  %254 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 3
  %255 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*
  %256 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1
  %257 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5
  %258 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0
  %259 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7
  br label %260, !dbg !2146

260:                                              ; preds = %248, %300
  %261 = phi i32 [ 1, %248 ], [ 0, %300 ]
  %262 = phi i32 [ 0, %248 ], [ %308, %300 ]
  call void @llvm.dbg.value(metadata i32 %262, metadata !1975, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %261, metadata !1978, metadata !DIExpression()), !dbg !2145
  %263 = load i32, i32* %251, align 8, !dbg !2147, !tbaa !1996
  %264 = sub nsw i32 %263, %262, !dbg !2147
  %265 = icmp sgt i32 %264, %261, !dbg !2147
  br i1 %265, label %266, label %297, !dbg !2147

266:                                              ; preds = %260
  %267 = load i32, i32* %252, align 8, !dbg !2149, !tbaa !2070
  %268 = load i32, i32* %253, align 8, !dbg !2149, !tbaa !2071
  br label %269, !dbg !2147

269:                                              ; preds = %266, %291
  %270 = phi i32 [ %292, %291 ], [ %263, %266 ]
  %271 = phi i32 [ %293, %291 ], [ %268, %266 ], !dbg !2149
  %272 = phi i32 [ 0, %291 ], [ %267, %266 ], !dbg !2149
  %273 = phi i32 [ %294, %291 ], [ %261, %266 ]
  call void @llvm.dbg.value(metadata i32 %273, metadata !1978, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %228, metadata !2061, metadata !DIExpression()) #7, !dbg !2151
  %274 = icmp slt i32 %272, %271, !dbg !2149
  br i1 %274, label %275, label %291, !dbg !2149

275:                                              ; preds = %269, %284
  %276 = phi i32 [ %286, %284 ], [ %272, %269 ]
  %277 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %254, align 8, !dbg !2152, !tbaa !2075
  %278 = sext i32 %276 to i64, !dbg !2152
  %279 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 1, !dbg !2152
  %280 = load i32, i32* %279, align 8, !dbg !2152, !tbaa !2076
  %281 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %277, i64 %278, i32 0, !dbg !2152
  %282 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %281, align 8, !dbg !2152, !tbaa !2078
  %283 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %282, i32 %280) #6, !dbg !2152
  br i1 %283, label %284, label %297, !dbg !2152

284:                                              ; preds = %275
  %285 = load i32, i32* %252, align 8, !dbg !2153, !tbaa !2070
  %286 = add nsw i32 %285, 1, !dbg !2153
  store i32 %286, i32* %252, align 8, !dbg !2153, !tbaa !2070
  %287 = load i32, i32* %253, align 8, !dbg !2149, !tbaa !2071
  %288 = icmp slt i32 %286, %287, !dbg !2149
  br i1 %288, label %275, label %289, !dbg !2149, !llvm.loop !2154

289:                                              ; preds = %284
  %290 = load i32, i32* %251, align 8, !dbg !2147, !tbaa !1996
  br label %291, !dbg !2156

291:                                              ; preds = %289, %269
  %292 = phi i32 [ %290, %289 ], [ %270, %269 ], !dbg !2147
  %293 = phi i32 [ %287, %289 ], [ %271, %269 ]
  store i32 0, i32* %252, align 8, !dbg !2156, !tbaa !2070
  %294 = add nuw nsw i32 %273, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %294, metadata !1978, metadata !DIExpression()), !dbg !2145
  %295 = sub nsw i32 %292, %262, !dbg !2147
  %296 = icmp sgt i32 %295, %294, !dbg !2147
  br i1 %296, label %269, label %300, !dbg !2147, !llvm.loop !2159

297:                                              ; preds = %275, %260
  %298 = phi i32 [ %261, %260 ], [ %273, %275 ]
  %299 = icmp eq i32 %298, 0, !dbg !2161
  br i1 %299, label %310, label %300, !dbg !2161

300:                                              ; preds = %291, %297
  %301 = phi i32 [ %298, %297 ], [ %294, %291 ]
  %302 = load i8*, i8** %256, align 8, !dbg !2162, !tbaa !2163
  %303 = load i32, i32* %257, align 4, !dbg !2162, !tbaa !2164
  %304 = add nsw i32 %303, %262, !dbg !2162
  %305 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %258, align 8, !dbg !2162, !tbaa !2165
  %306 = load i8*, i8** %259, align 8, !dbg !2162, !tbaa !2166
  %307 = tail call i32 @halide_do_loop_task(i8* %306, i32 (i8*, i32, i32, i8*, i8*)* %305, i32 %304, i32 %301, i8* %302, i8* nonnull %255) #8, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %307, metadata !1974, metadata !DIExpression()), !dbg !2007
  %308 = add nuw nsw i32 %301, %262, !dbg !2167
  call void @llvm.dbg.value(metadata i32 0, metadata !1978, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %308, metadata !1975, metadata !DIExpression()), !dbg !2145
  %309 = icmp eq i32 %307, 0, !dbg !2146
  br i1 %309, label %260, label %310, !dbg !2146, !llvm.loop !2168

310:                                              ; preds = %297, %300
  %311 = phi i1 [ true, %297 ], [ false, %300 ]
  %312 = phi i32 [ 0, %297 ], [ %307, %300 ], !dbg !2007
  %313 = phi i32 [ %262, %297 ], [ %308, %300 ], !dbg !2145
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2170
  %314 = load i32, i32* %257, align 4, !dbg !2171, !tbaa !2164
  %315 = add nsw i32 %314, %313, !dbg !2171
  store i32 %315, i32* %257, align 4, !dbg !2171, !tbaa !2164
  %316 = load i32, i32* %251, align 8, !dbg !2172, !tbaa !1996
  %317 = sub nsw i32 %316, %313, !dbg !2172
  store i32 %317, i32* %251, align 8, !dbg !2172, !tbaa !1996
  br i1 %311, label %319, label %318, !dbg !2173

318:                                              ; preds = %310
  store i32 0, i32* %251, align 8, !dbg !2174, !tbaa !1996
  call void @llvm.dbg.value(metadata i32 %350, metadata !1974, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2007
  br label %352, !dbg !2177

319:                                              ; preds = %310
  %320 = icmp sgt i32 %317, 0, !dbg !2178
  br i1 %320, label %321, label %382, !dbg !2178

321:                                              ; preds = %319
  %322 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2179, !tbaa !2006
  store %"struct.Halide::Runtime::Internal::work"* %322, %"struct.Halide::Runtime::Internal::work"** %249, align 8, !dbg !2179, !tbaa !2021
  store %"struct.Halide::Runtime::Internal::work"* %228, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2182, !tbaa !2006
  br label %382, !dbg !2183

323:                                              ; preds = %244
  %324 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 0, !dbg !2184
  %325 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %324, align 8, !dbg !2184, !tbaa.struct !2185
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %325, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2188
  %326 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 1, !dbg !2184
  %327 = load i8*, i8** %326, align 8, !dbg !2184, !tbaa.struct !2189
  call void @llvm.dbg.value(metadata i8* %327, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2188
  %328 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 5, !dbg !2184
  %329 = load i32, i32* %328, align 4, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %329, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2188
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 1, !dbg !2184
  %331 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %330, align 8, !dbg !2184, !tbaa.struct !2190
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %331, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !2188
  %332 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 7, !dbg !2184
  %333 = load i8*, i8** %332, align 8, !dbg !2184, !tbaa.struct !2191
  call void @llvm.dbg.value(metadata i8* %333, metadata !1979, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !2188
  %334 = add nsw i32 %329, 1, !dbg !2192
  store i32 %334, i32* %328, align 4, !dbg !2192, !tbaa !2164
  %335 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2193
  %336 = load i32, i32* %335, align 8, !dbg !2193, !tbaa !1996
  %337 = add nsw i32 %336, -1, !dbg !2193
  store i32 %337, i32* %335, align 8, !dbg !2193, !tbaa !1996
  %338 = icmp eq i32 %337, 0, !dbg !2194
  br i1 %338, label %339, label %342, !dbg !2194

339:                                              ; preds = %323
  %340 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 2, !dbg !2195
  %341 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %340, align 8, !dbg !2195, !tbaa !2021
  store %"struct.Halide::Runtime::Internal::work"* %341, %"struct.Halide::Runtime::Internal::work"** %227, align 8, !dbg !2195, !tbaa !841
  br label %342, !dbg !2198

342:                                              ; preds = %339, %323
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2199
  %343 = icmp eq i32 (i8*, i32, i8*)* %331, null, !dbg !2200
  br i1 %343, label %346, label %344, !dbg !2200

344:                                              ; preds = %342
  %345 = tail call i32 @halide_do_task(i8* %333, i32 (i8*, i32, i8*)* nonnull %331, i32 %329, i8* %327) #8, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %345, metadata !1974, metadata !DIExpression()), !dbg !2007
  br label %349, !dbg !2204

346:                                              ; preds = %342
  %347 = bitcast %"struct.Halide::Runtime::Internal::work"* %228 to i8*, !dbg !2205
  %348 = tail call i32 @halide_do_loop_task(i8* %333, i32 (i8*, i32, i32, i8*, i8*)* %325, i32 %329, i32 1, i8* %327, i8* %347) #8, !dbg !2205
  call void @llvm.dbg.value(metadata i32 %348, metadata !1974, metadata !DIExpression()), !dbg !2007
  br label %349, !dbg !2207

349:                                              ; preds = %344, %346
  %350 = phi i32 [ %345, %344 ], [ %348, %346 ], !dbg !2208
  call void @llvm.dbg.value(metadata i32 %350, metadata !1974, metadata !DIExpression()), !dbg !2007
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2007
  %351 = icmp eq i32 %350, 0, !dbg !2177
  br i1 %351, label %382, label %352, !dbg !2177

352:                                              ; preds = %318, %349
  %353 = phi i32 [ %312, %318 ], [ %350, %349 ]
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2210
  store i32 %353, i32* %354, align 4, !dbg !2210, !tbaa !2011
  call void @llvm.dbg.value(metadata i32 0, metadata !1982, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2007
  %355 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 4, !dbg !2212
  %356 = load i32, i32* %355, align 8, !dbg !2212, !tbaa !2213
  %357 = icmp sgt i32 %356, 0, !dbg !2212
  br i1 %357, label %358, label %382, !dbg !2212

358:                                              ; preds = %352
  %359 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 3
  %360 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %359, align 8, !tbaa !2085
  %361 = zext i32 %356 to i64, !dbg !2212
  br label %362, !dbg !2212

362:                                              ; preds = %358, %378
  %363 = phi i64 [ 0, %358 ], [ %380, %378 ]
  %364 = phi i8 [ 0, %358 ], [ %379, %378 ]
  call void @llvm.dbg.value(metadata i64 %363, metadata !1982, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 %364, metadata !1981, metadata !DIExpression()), !dbg !2007
  %365 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 9, !dbg !2214
  %366 = load i32, i32* %365, align 4, !dbg !2214, !tbaa !2011
  %367 = icmp eq i32 %366, 0, !dbg !2214
  br i1 %367, label %368, label %378, !dbg !2214

368:                                              ; preds = %362
  store i32 %353, i32* %365, align 4, !dbg !2217, !tbaa !2011
  %369 = load i32, i32* %229, align 8, !dbg !2220, !tbaa !2004
  %370 = icmp eq i32 %369, 0, !dbg !2220
  br i1 %370, label %371, label %374, !dbg !2220

371:                                              ; preds = %368
  %372 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %360, i64 %363, i32 11, !dbg !2220
  %373 = load i8, i8* %372, align 4, !dbg !2220, !tbaa !2102, !range !570
  br label %374, !dbg !2220

374:                                              ; preds = %371, %368
  %375 = phi i8 [ 0, %368 ], [ %373, %371 ], !dbg !2220
  %376 = and i8 %364, 1, !dbg !2220
  %377 = or i8 %375, %376, !dbg !2220
  call void @llvm.dbg.value(metadata i8 %377, metadata !1981, metadata !DIExpression()), !dbg !2007
  br label %378, !dbg !2221

378:                                              ; preds = %362, %374
  %379 = phi i8 [ %377, %374 ], [ %364, %362 ], !dbg !2007
  call void @llvm.dbg.value(metadata i8 %379, metadata !1981, metadata !DIExpression()), !dbg !2007
  %380 = add nuw nsw i64 %363, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %380, metadata !1982, metadata !DIExpression()), !dbg !2211
  %381 = icmp eq i64 %380, %361, !dbg !2212
  br i1 %381, label %382, label %362, !dbg !2212, !llvm.loop !2223

382:                                              ; preds = %378, %352, %321, %319, %349
  %383 = phi i8 [ 0, %349 ], [ 0, %319 ], [ 0, %321 ], [ 0, %352 ], [ %379, %378 ], !dbg !2225
  call void @llvm.dbg.value(metadata i8 %383, metadata !1981, metadata !DIExpression()), !dbg !2007
  %384 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %232, align 8, !dbg !2226, !tbaa !2028
  %385 = icmp eq %"struct.Halide::Runtime::Internal::work"* %384, null, !dbg !2226
  %386 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 7, !dbg !2227
  %387 = load i32, i32* %386, align 4, !dbg !2227, !tbaa !2043
  br i1 %385, label %388, label %391, !dbg !2226

388:                                              ; preds = %382
  %389 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2229, !tbaa !2054
  %390 = sub nsw i32 %389, %387, !dbg !2229
  store i32 %390, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2229, !tbaa !2054
  br label %395, !dbg !2231

391:                                              ; preds = %382
  %392 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %384, i64 0, i32 6, !dbg !2232
  %393 = load i32, i32* %392, align 8, !dbg !2232, !tbaa !2046
  %394 = sub nsw i32 %393, %387, !dbg !2232
  store i32 %394, i32* %392, align 8, !dbg !2232, !tbaa !2046
  br label %395, !dbg !2234

395:                                              ; preds = %391, %388
  %396 = load i32, i32* %229, align 8, !dbg !2235, !tbaa !2004
  %397 = add nsw i32 %396, -1, !dbg !2235
  store i32 %397, i32* %229, align 8, !dbg !2235, !tbaa !2004
  %398 = and i8 %383, 1, !dbg !2236
  %399 = icmp eq i8 %398, 0, !dbg !2236
  br i1 %399, label %400, label %416, !dbg !2236

400:                                              ; preds = %395
  %401 = icmp eq i32 %397, 0, !dbg !2236
  br i1 %401, label %404, label %402, !dbg !2236

402:                                              ; preds = %400, %408, %412, %416, %221, %201, %200, %45, %35
  %403 = phi i32 [ %11, %35 ], [ %11, %45 ], [ %198, %200 ], [ %198, %201 ], [ %222, %221 ], [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %400 ]
  br label %10, !dbg !1986, !llvm.loop !2237

404:                                              ; preds = %400
  %405 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 0, i32 6, !dbg !2236
  %406 = load i32, i32* %405, align 8, !dbg !2236, !tbaa !1996
  %407 = icmp eq i32 %406, 0, !dbg !2236
  br i1 %407, label %412, label %408, !dbg !2236

408:                                              ; preds = %404
  %409 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 9, !dbg !2236
  %410 = load i32, i32* %409, align 4, !dbg !2236, !tbaa !2011
  %411 = icmp eq i32 %410, 0, !dbg !2236
  br i1 %411, label %402, label %412, !dbg !2236

412:                                              ; preds = %408, %404
  %413 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %228, i64 0, i32 11, !dbg !2236
  %414 = load i8, i8* %413, align 4, !dbg !2236, !tbaa !2102, !range !570
  %415 = icmp eq i8 %414, 0, !dbg !2236
  br i1 %415, label %402, label %416, !dbg !2236

416:                                              ; preds = %412, %395
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2239
  br label %402, !dbg !2242

417:                                              ; preds = %15, %18
  ret void, !dbg !2243
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2244 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2246, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %4, metadata !2247, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %3, metadata !2248, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 %2, metadata !2249, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2250, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2252
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2253, !tbaa !841
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2253
  ret i32 %8, !dbg !2253
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2254 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %2, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()), !dbg !2260
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2261, !tbaa !841
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2261
  ret i32 %6, !dbg !2261
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z"(i8* %0) #0 !dbg !2262 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()), !dbg !2265
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2266
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2267
  tail call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2267
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2268
  ret void, !dbg !2269
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2270 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2274, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2275, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2287
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !dbg !2288, !tbaa !2289, !range !570
  %5 = icmp eq i8 %4, 0, !dbg !2288
  br i1 %5, label %6, label %25, !dbg !2288

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2290, metadata !DIExpression()) #7, !dbg !2296
  %8 = load i8, i8* %7, align 1, !dbg !2300, !tbaa !2301
  %9 = icmp eq i8 %8, 0, !dbg !2300
  br i1 %9, label %10, label %13, !dbg !2300

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2302
  call void @llvm.dbg.value(metadata i8* %11, metadata !2290, metadata !DIExpression()) #7, !dbg !2296
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2300
  br i1 %12, label %13, label %6, !dbg !2300, !llvm.loop !2304

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i64 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2296
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 1) to i8*), !dbg !2306
  br i1 %15, label %17, label %16, !dbg !2306

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !2308
  tail call void @abort() #6, !dbg !2308
  br label %17, !dbg !2308

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2311, !tbaa !2312
  %19 = icmp eq i32 %18, 0, !dbg !2311
  br i1 %19, label %20, label %22, !dbg !2311

20:                                               ; preds = %17
  %21 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2313
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2313, !tbaa !2312
  br label %22, !dbg !2316

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2317
  %24 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %23) #8, !dbg !2317
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2317, !tbaa !2312
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !dbg !2318, !tbaa !2289
  br label %25, !dbg !2319

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2277, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 -1, metadata !2278, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 0, metadata !2279, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 0, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()), !dbg !2320
  %26 = icmp sgt i32 %0, 0, !dbg !2321
  br i1 %26, label %27, label %31, !dbg !2321

27:                                               ; preds = %25
  %28 = zext i32 %0 to i64, !dbg !2321
  br label %38, !dbg !2321

29:                                               ; preds = %64
  %30 = and i8 %49, 1, !dbg !2322
  br label %31, !dbg !2322

31:                                               ; preds = %29, %25
  %32 = phi i32 [ -1, %25 ], [ %65, %29 ], !dbg !2287
  %33 = phi i8 [ 0, %25 ], [ %30, %29 ]
  %34 = phi i8 [ 0, %25 ], [ %54, %29 ], !dbg !2287
  %35 = phi i8 [ 0, %25 ], [ %50, %29 ], !dbg !2323
  %36 = phi i32 [ 0, %25 ], [ %48, %29 ], !dbg !2324
  %37 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2322
  br i1 %37, label %68, label %100, !dbg !2322

38:                                               ; preds = %27, %64
  %39 = phi i64 [ 0, %27 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %27 ], [ %48, %64 ]
  %41 = phi i8 [ 0, %27 ], [ %50, %64 ]
  %42 = phi i8 [ 0, %27 ], [ %54, %64 ]
  %43 = phi i8 [ 0, %27 ], [ %49, %64 ]
  %44 = phi i32 [ -1, %27 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %40, metadata !2277, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 %39, metadata !2282, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 %41, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 %42, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 %43, metadata !2279, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %44, metadata !2278, metadata !DIExpression()), !dbg !2287
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 7, !dbg !2325
  %46 = load i32, i32* %45, align 4, !dbg !2325, !tbaa !2043
  %47 = icmp eq i32 %46, 0, !dbg !2325
  %48 = add i32 %46, %40, !dbg !2325
  %49 = select i1 %47, i8 1, i8 %43, !dbg !2325
  %50 = select i1 %47, i8 %41, i8 1, !dbg !2325
  call void @llvm.dbg.value(metadata i32 %48, metadata !2277, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 %50, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 %49, metadata !2279, metadata !DIExpression()), !dbg !2287
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 4, !dbg !2328
  %52 = load i32, i32* %51, align 8, !dbg !2328, !tbaa !2071
  %53 = icmp eq i32 %52, 0, !dbg !2328
  %54 = select i1 %53, i8 %42, i8 1, !dbg !2328
  call void @llvm.dbg.value(metadata i8 %54, metadata !2280, metadata !DIExpression()), !dbg !2287
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 8, !dbg !2329
  %56 = load i8, i8* %55, align 8, !dbg !2329, !tbaa !2059, !range !570
  %57 = icmp eq i8 %56, 0, !dbg !2329
  br i1 %57, label %60, label %58, !dbg !2329

58:                                               ; preds = %38
  %59 = add nsw i32 %44, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %59, metadata !2278, metadata !DIExpression()), !dbg !2287
  br label %64, !dbg !2333

60:                                               ; preds = %38
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %39, i32 0, i32 6, !dbg !2334
  %62 = load i32, i32* %61, align 8, !dbg !2334, !tbaa !1996
  %63 = add nsw i32 %62, %44, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %63, metadata !2278, metadata !DIExpression()), !dbg !2287
  br label %64, !dbg !2336

64:                                               ; preds = %58, %60
  %65 = phi i32 [ %59, %58 ], [ %63, %60 ], !dbg !2337
  call void @llvm.dbg.value(metadata i32 %65, metadata !2278, metadata !DIExpression()), !dbg !2287
  %66 = add nuw nsw i64 %39, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %48, metadata !2277, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 %66, metadata !2282, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 %50, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 %54, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 %49, metadata !2279, metadata !DIExpression()), !dbg !2287
  %67 = icmp eq i64 %66, %28, !dbg !2321
  br i1 %67, label %29, label %38, !dbg !2321, !llvm.loop !2339

68:                                               ; preds = %31
  %69 = or i8 %35, %34, !dbg !2341
  %70 = and i8 %69, 1, !dbg !2341
  %71 = icmp eq i8 %70, 0, !dbg !2341
  %72 = xor i1 %71, true, !dbg !2341
  %73 = zext i1 %72 to i32, !dbg !2341
  %74 = add nsw i32 %36, %73, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %74, metadata !2277, metadata !DIExpression()), !dbg !2287
  %75 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2344, !tbaa !2053
  %76 = icmp slt i32 %75, 256, !dbg !2344
  br i1 %76, label %77, label %96, !dbg !2344

77:                                               ; preds = %68, %87
  %78 = phi i32 [ %92, %87 ], [ %75, %68 ]
  %79 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2344, !tbaa !2312
  %80 = add nsw i32 %79, -1, !dbg !2344
  %81 = icmp slt i32 %78, %80, !dbg !2344
  br i1 %81, label %87, label %82, !dbg !2344

82:                                               ; preds = %77
  %83 = add nsw i32 %78, 1, !dbg !2344
  %84 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2344, !tbaa !2054
  %85 = sub i32 %83, %84, !dbg !2344
  %86 = icmp slt i32 %85, %74, !dbg !2344
  br i1 %86, label %87, label %96, !dbg !2344

87:                                               ; preds = %77, %82
  %88 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2345, !tbaa !2111
  %89 = add nsw i32 %88, 1, !dbg !2345
  store i32 %89, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2345, !tbaa !2111
  %90 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z", i8* null) #8, !dbg !2347
  %91 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2347, !tbaa !2053
  %92 = add nsw i32 %91, 1, !dbg !2347
  store i32 %92, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2347, !tbaa !2053
  %93 = sext i32 %91 to i64, !dbg !2347
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 13, i64 %93, !dbg !2347
  store %struct.halide_thread* %90, %struct.halide_thread** %94, align 8, !dbg !2347, !tbaa !841
  %95 = icmp slt i32 %91, 255, !dbg !2344
  br i1 %95, label %77, label %96, !dbg !2344, !llvm.loop !2348

96:                                               ; preds = %82, %87, %68
  br i1 %71, label %118, label %97, !dbg !2350

97:                                               ; preds = %96
  %98 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2351, !tbaa !2054
  %99 = add nsw i32 %98, 1, !dbg !2351
  store i32 %99, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2351, !tbaa !2054
  br label %118, !dbg !2354

100:                                              ; preds = %31
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 0, i32 7, !dbg !2355
  %102 = load i32, i32* %101, align 4, !dbg !2355, !tbaa !2043
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 8, !dbg !2355
  %104 = load i32, i32* %103, align 8, !dbg !2355, !tbaa !2004
  %105 = mul nsw i32 %104, %102, !dbg !2355
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2355
  %107 = load i32, i32* %106, align 8, !dbg !2355, !tbaa !2046
  %108 = sub nsw i32 %105, %107, !dbg !2355
  %109 = icmp sgt i32 %36, %108, !dbg !2355
  br i1 %109, label %110, label %111, !dbg !2355

110:                                              ; preds = %100
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i64 0, i64 0)) #6, !dbg !2358
  tail call void @abort() #6, !dbg !2358
  br label %111, !dbg !2358

111:                                              ; preds = %110, %100
  %112 = or i8 %35, %34, !dbg !2361
  %113 = and i8 %112, 1, !dbg !2361
  %114 = icmp eq i8 %113, 0, !dbg !2361
  br i1 %114, label %118, label %115, !dbg !2361

115:                                              ; preds = %111
  %116 = load i32, i32* %106, align 8, !dbg !2362, !tbaa !2046
  %117 = add nsw i32 %116, 1, !dbg !2362
  store i32 %117, i32* %106, align 8, !dbg !2362, !tbaa !2046
  br label %118, !dbg !2365

118:                                              ; preds = %111, %96, %115, %97
  call void @llvm.dbg.value(metadata i32 %0, metadata !2284, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2366
  br i1 %26, label %119, label %123, !dbg !2367

119:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %0, metadata !2284, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2366
  %120 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !tbaa !2006
  %121 = zext i32 %0 to i64, !dbg !2367
  br label %136, !dbg !2367

122:                                              ; preds = %136
  store %"struct.Halide::Runtime::Internal::work"* %140, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 3), align 8, !dbg !2368, !tbaa !2006
  br label %123, !dbg !2367

123:                                              ; preds = %122, %118
  %124 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 12), align 4, !dbg !2371, !tbaa !2100
  %125 = icmp ne i32 %124, 0, !dbg !2371
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 11), align 8, !dbg !2371
  %127 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2371
  %128 = icmp slt i32 %126, %127, !dbg !2371
  %129 = or i1 %125, %128, !dbg !2371
  call void @llvm.dbg.value(metadata i1 %129, metadata !2286, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2287
  %130 = icmp sgt i32 %32, %126, !dbg !2372
  %131 = or i1 %130, %129, !dbg !2372
  %132 = select i1 %131, i32 %127, i32 %32, !dbg !2372
  store i32 %132, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !dbg !2373, !tbaa !2112
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #8, !dbg !2375
  %133 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 6), align 8, !dbg !2376, !tbaa !2112
  %134 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 5), align 4, !dbg !2376, !tbaa !2111
  %135 = icmp sgt i32 %133, %134, !dbg !2376
  br i1 %135, label %146, label %149, !dbg !2376

136:                                              ; preds = %119, %136
  %137 = phi i64 [ %121, %119 ], [ %139, %136 ], !dbg !2377
  %138 = phi %"struct.Halide::Runtime::Internal::work"* [ %120, %119 ], [ %140, %136 ], !dbg !2377
  %139 = add nsw i64 %137, -1, !dbg !2366
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, !dbg !2377
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 2, !dbg !2377
  store %"struct.Halide::Runtime::Internal::work"* %138, %"struct.Halide::Runtime::Internal::work"** %141, align 8, !dbg !2377, !tbaa !2021
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 3, !dbg !2378
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %142, align 8, !dbg !2378, !tbaa !2085
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 4, !dbg !2379
  store i32 %0, i32* %143, align 8, !dbg !2379, !tbaa !2213
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i64 %139, i32 6, !dbg !2380
  store i32 0, i32* %144, align 8, !dbg !2380, !tbaa !2046
  call void @llvm.dbg.value(metadata i64 %139, metadata !2284, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2366
  %145 = icmp sgt i64 %137, 1, !dbg !2367
  br i1 %145, label %136, label %122, !dbg !2367, !llvm.loop !2381

146:                                              ; preds = %123
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9)) #8, !dbg !2383
  %147 = icmp eq i8 %33, 0, !dbg !2386
  br i1 %147, label %149, label %148, !dbg !2386

148:                                              ; preds = %146
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2387
  br label %149, !dbg !2390

149:                                              ; preds = %146, %148, %123
  %150 = or i8 %35, %34, !dbg !2391
  %151 = and i8 %150, 1, !dbg !2391
  %152 = icmp eq i8 %151, 0, !dbg !2391
  br i1 %152, label %161, label %153, !dbg !2391

153:                                              ; preds = %149
  br i1 %37, label %158, label %154, !dbg !2392

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i64 0, i32 6, !dbg !2395
  %156 = load i32, i32* %155, align 8, !dbg !2395, !tbaa !2046
  %157 = add nsw i32 %156, -1, !dbg !2395
  store i32 %157, i32* %155, align 8, !dbg !2395, !tbaa !2046
  br label %161, !dbg !2398

158:                                              ; preds = %153
  %159 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2399, !tbaa !2054
  %160 = add nsw i32 %159, -1, !dbg !2399
  store i32 %160, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 16), align 4, !dbg !2399, !tbaa !2054
  br label %161, !dbg !2401

161:                                              ; preds = %149, %154, %158
  ret void, !dbg !2402
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2403 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %2, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %0, metadata !2408, metadata !DIExpression()), !dbg !2409
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2410
  ret i32 %5, !dbg !2410
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2411 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2413, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %4, metadata !2414, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %3, metadata !2415, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %2, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2419
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2420
  ret i32 %7, !dbg !2420
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2421 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 8
  call void @llvm.dbg.value(metadata i8* %4, metadata !2423, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %3, metadata !2424, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %2, metadata !2425, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()), !dbg !2429
  %7 = icmp slt i32 %3, 1, !dbg !2430
  br i1 %7, label %29, label %8, !dbg !2430

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2431
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2431
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2428, metadata !DIExpression()), !dbg !2431
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 0, !dbg !2432
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 8, !dbg !2432, !tbaa !2165
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 5, !dbg !2433
  store i32 %2, i32* %11, align 4, !dbg !2433, !tbaa !2164
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 6, !dbg !2434
  store i32 %3, i32* %12, align 8, !dbg !2434, !tbaa !1996
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 8, !dbg !2435
  store i8 0, i8* %13, align 8, !dbg !2435, !tbaa !2059
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 3, !dbg !2436
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 8, !dbg !2436, !tbaa !2075
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 4, !dbg !2437
  store i32 0, i32* %15, align 8, !dbg !2437, !tbaa !2071
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 1, !dbg !2438
  store i8* %4, i8** %16, align 8, !dbg !2438, !tbaa !2163
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 7, !dbg !2439
  store i32 0, i32* %17, align 4, !dbg !2439, !tbaa !2043
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 0, i32 2, !dbg !2440
  store i8* null, i8** %18, align 8, !dbg !2440, !tbaa !2441
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 1, !dbg !2442
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 8, !dbg !2442, !tbaa !2443
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 7, !dbg !2444
  store i8* %0, i8** %20, align 8, !dbg !2444, !tbaa !2166
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 9, !dbg !2445
  store i32 0, i32* %21, align 4, !dbg !2445, !tbaa !2011
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 8, !dbg !2446
  store i32 0, i32* %22, align 8, !dbg !2446, !tbaa !2004
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 10, !dbg !2447
  store i32 0, i32* %23, align 8, !dbg !2447, !tbaa !2070
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 11, !dbg !2448
  store i8 0, i8* %24, align 4, !dbg !2448, !tbaa !2102
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 3, !dbg !2449
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 8, !dbg !2449, !tbaa !2085
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 4, !dbg !2450
  store i32 0, i32* %26, align 8, !dbg !2450, !tbaa !2213
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 0, i32 5, !dbg !2451
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 8, !dbg !2451, !tbaa !2028
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2452
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !2453
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !2454
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2455
  %28 = load i32, i32* %21, align 4, !dbg !2456, !tbaa !2011
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2457
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2429
  ret i32 %30, !dbg !2457
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !2458 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2460, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2461, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %1, metadata !2462, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()), !dbg !2470
  %5 = sext i32 %1 to i64, !dbg !2471
  %6 = alloca %"struct.Halide::Runtime::Internal::work", i64 %5, align 8, !dbg !2471
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2464, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 0, metadata !2465, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2461, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %1, metadata !2462, metadata !DIExpression()), !dbg !2470
  %7 = icmp sgt i32 %1, 0, !dbg !2473
  br i1 %7, label %11, label %8, !dbg !2473

8:                                                ; preds = %33, %4
  %9 = phi i32 [ %1, %4 ], [ %34, %33 ]
  %10 = icmp eq i32 %9, 0, !dbg !2474
  br i1 %10, label %56, label %39, !dbg !2474

11:                                               ; preds = %4, %33
  %12 = phi i64 [ %36, %33 ], [ 0, %4 ]
  %13 = phi %struct.halide_parallel_task_t* [ %35, %33 ], [ %2, %4 ]
  %14 = phi i32 [ %34, %33 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !2465, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %13, metadata !2461, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %14, metadata !2462, metadata !DIExpression()), !dbg !2470
  %15 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %13, i64 0, i32 6, !dbg !2475
  %16 = load i32, i32* %15, align 8, !dbg !2475, !tbaa !2478
  %17 = icmp slt i32 %16, 1, !dbg !2475
  br i1 %17, label %18, label %20, !dbg !2475

18:                                               ; preds = %11
  %19 = add nsw i32 %14, -1, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %19, metadata !2462, metadata !DIExpression()), !dbg !2470
  br label %33, !dbg !2482

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %13, i64 1, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %21, metadata !2461, metadata !DIExpression()), !dbg !2470
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, !dbg !2483
  %23 = bitcast %"struct.Halide::Runtime::Internal::work"* %22 to i8*, !dbg !2483
  %24 = bitcast %struct.halide_parallel_task_t* %13 to i8*, !dbg !2483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %23, i8* nonnull align 8 dereferenceable(56) %24, i64 56, i1 false), !dbg !2483, !tbaa.struct !2484
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 1, !dbg !2485
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %25, align 8, !dbg !2485, !tbaa !2443
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 7, !dbg !2486
  store i8* %0, i8** %26, align 8, !dbg !2486, !tbaa !2166
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 9, !dbg !2487
  store i32 0, i32* %27, align 4, !dbg !2487, !tbaa !2011
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 8, !dbg !2488
  store i32 0, i32* %28, align 8, !dbg !2488, !tbaa !2004
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 10, !dbg !2489
  store i32 0, i32* %29, align 8, !dbg !2489, !tbaa !2070
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 11, !dbg !2490
  store i8 0, i8* %30, align 4, !dbg !2490, !tbaa !2102
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %12, i32 5, !dbg !2491
  %32 = bitcast %"struct.Halide::Runtime::Internal::work"** %31 to i8**, !dbg !2491
  store i8* %3, i8** %32, align 8, !dbg !2491, !tbaa !2028
  br label %33, !dbg !2492

33:                                               ; preds = %20, %18
  %34 = phi i32 [ %19, %18 ], [ %14, %20 ]
  %35 = phi %struct.halide_parallel_task_t* [ %13, %18 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %35, metadata !2461, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %34, metadata !2462, metadata !DIExpression()), !dbg !2470
  %36 = add nuw nsw i64 %12, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %36, metadata !2465, metadata !DIExpression()), !dbg !2472
  %37 = sext i32 %34 to i64, !dbg !2473
  %38 = icmp slt i64 %36, %37, !dbg !2473
  br i1 %38, label %11, label %8, !dbg !2473, !llvm.loop !2494

39:                                               ; preds = %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2496
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2497
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z"(i32 %9, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !2497
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 0, metadata !2468, metadata !DIExpression()), !dbg !2498
  %41 = icmp sgt i32 %9, 0, !dbg !2499
  br i1 %41, label %42, label %44, !dbg !2499

42:                                               ; preds = %39
  %43 = zext i32 %9 to i64, !dbg !2499
  br label %46, !dbg !2499

44:                                               ; preds = %46, %39
  %45 = phi i32 [ 0, %39 ], [ %53, %46 ], !dbg !2470
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2500
  br label %56

46:                                               ; preds = %42, %46
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !2468, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %48, metadata !2467, metadata !DIExpression()), !dbg !2470
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, !dbg !2501
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %49) #8, !dbg !2501
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i64 %47, i32 9, !dbg !2504
  %51 = load i32, i32* %50, align 4, !dbg !2504, !tbaa !2011
  %52 = icmp eq i32 %51, 0, !dbg !2504
  %53 = select i1 %52, i32 %48, i32 %51, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %53, metadata !2467, metadata !DIExpression()), !dbg !2470
  %54 = add nuw nsw i64 %47, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %54, metadata !2468, metadata !DIExpression()), !dbg !2498
  %55 = icmp eq i64 %54, %43, !dbg !2499
  br i1 %55, label %44, label %46, !dbg !2499, !llvm.loop !2506

56:                                               ; preds = %8, %44
  %57 = phi i32 [ %45, %44 ], [ 0, %8 ], !dbg !2470
  ret i32 %57, !dbg !2508
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !2509 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2513, metadata !DIExpression()), !dbg !2514
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2515
  call void @llvm.dbg.value(metadata i32* undef, metadata !2516, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32* %3, metadata !2522, metadata !DIExpression()), !dbg !2525
  store atomic i32 %1, i32* %3 release, align 4, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %1, metadata !2511, metadata !DIExpression()), !dbg !2514
  ret i32 %1, !dbg !2528
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2529 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2531, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2532, metadata !DIExpression()), !dbg !2536
  %3 = icmp eq i32 %1, 0, !dbg !2537
  br i1 %3, label %20, label %4, !dbg !2537

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2538
  call void @llvm.dbg.value(metadata i32* undef, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32* %5, metadata !2542, metadata !DIExpression()), !dbg !2543
  %6 = load atomic i32, i32* %5 acquire, align 4, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %6, metadata !2534, metadata !DIExpression()), !dbg !2536
  %7 = sub nsw i32 %6, %1, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %7, metadata !2535, metadata !DIExpression()), !dbg !2536
  %8 = icmp sgt i32 %7, -1, !dbg !2548
  br i1 %8, label %9, label %20, !dbg !2548

9:                                                ; preds = %4, %14
  %10 = phi i32 [ %16, %14 ], [ %7, %4 ]
  %11 = phi i32 [ %15, %14 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32* undef, metadata !2549, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32* undef, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32* %5, metadata !2555, metadata !DIExpression()), !dbg !2556
  %12 = cmpxchg weak i32* %5, i32 %11, i32 %10 acq_rel monotonic, !dbg !2558
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !2558
  br i1 %13, label %18, label %14, !dbg !2558

14:                                               ; preds = %9
  %15 = extractvalue { i32, i1 } %12, 0, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %15, metadata !2534, metadata !DIExpression()), !dbg !2536
  %16 = sub nsw i32 %15, %1, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %16, metadata !2535, metadata !DIExpression()), !dbg !2536
  %17 = icmp sgt i32 %16, -1, !dbg !2548
  br i1 %17, label %9, label %18, !dbg !2548

18:                                               ; preds = %9, %14
  %19 = extractvalue { i32, i1 } %12, 1, !dbg !2558
  br label %20, !dbg !2559

20:                                               ; preds = %18, %4, %2
  %21 = phi i1 [ true, %2 ], [ false, %4 ], [ %19, %18 ], !dbg !2536
  ret i1 %21, !dbg !2559
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2560 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2562, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2564, metadata !DIExpression()), !dbg !2566
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32* %3, metadata !2573, metadata !DIExpression()), !dbg !2574
  %4 = atomicrmw add i32* %3, i32 %1 acq_rel, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %4, metadata !2565, metadata !DIExpression()), !dbg !2566
  %5 = icmp eq i32 %4, 0, !dbg !2577
  %6 = icmp ne i32 %1, 0, !dbg !2577
  %7 = and i1 %6, %5, !dbg !2577
  br i1 %7, label %8, label %9, !dbg !2577

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2578
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #8, !dbg !2581
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2582
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2583
  br label %9, !dbg !2584

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !2585
  ret i32 %10, !dbg !2585
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !2586 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !2590
  ret void, !dbg !2591
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !2592 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 15), align 1, !dbg !2598, !tbaa !2289, !range !570
  %2 = icmp eq i8 %1, 0, !dbg !2598
  br i1 %2, label %16, label %3, !dbg !2598

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2599
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 14), align 8, !dbg !2600, !tbaa !2000
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 10)) #8, !dbg !2601
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 8)) #8, !dbg !2602
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 9)) #8, !dbg !2603
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2604
  call void @llvm.dbg.value(metadata i32 0, metadata !2594, metadata !DIExpression()), !dbg !2605
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2606, !tbaa !2053
  %5 = icmp sgt i32 %4, 0, !dbg !2606
  br i1 %5, label %8, label %6, !dbg !2606

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2607, metadata !DIExpression()) #7, !dbg !2613
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), metadata !2610, metadata !DIExpression()) #7, !dbg !2613
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2611, metadata !DIExpression(DW_OP_plus_uconst, 2128, DW_OP_stack_value)) #7, !dbg !2613
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 2) to i8*), i32 0, i64 2116) #6, !dbg !2615
  br label %16, !dbg !2616

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2594, metadata !DIExpression()), !dbg !2605
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 13, i64 %9, !dbg !2617
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 8, !dbg !2617, !tbaa !841
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !2617
  %12 = add nuw nsw i64 %9, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %12, metadata !2594, metadata !DIExpression()), !dbg !2605
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 4), align 8, !dbg !2606, !tbaa !2053
  %14 = sext i32 %13 to i64, !dbg !2606
  %15 = icmp slt i64 %12, %14, !dbg !2606
  br i1 %15, label %8, label %6, !dbg !2606, !llvm.loop !2621

16:                                               ; preds = %6, %0
  ret void, !dbg !2623
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !2624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2628
  %2 = icmp slt i32 %0, 0, !dbg !2629
  br i1 %2, label %3, label %4, !dbg !2629

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@", i64 0, i64 0)) #6, !dbg !2630
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2633
  br label %8, !dbg !2634

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2633
  %5 = icmp eq i32 %0, 0, !dbg !2634
  br i1 %5, label %6, label %8, !dbg !2634

6:                                                ; preds = %4
  %7 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %7, metadata !2626, metadata !DIExpression()), !dbg !2628
  br label %8, !dbg !2638

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2626, metadata !DIExpression()), !dbg !2628
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2639, !tbaa !2312
  call void @llvm.dbg.value(metadata i32 %10, metadata !2627, metadata !DIExpression()), !dbg !2628
  %11 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %9) #8, !dbg !2640
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 1), align 8, !dbg !2640, !tbaa !2312
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i64 0, i32 0)) #8, !dbg !2641
  ret i32 %10, !dbg !2642
}

declare extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2643 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !2647, metadata !DIExpression()), !dbg !2649
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2650, !tbaa !841
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !2648, metadata !DIExpression()), !dbg !2649
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2651, !tbaa !841
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !2652
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !2653 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !2657, metadata !DIExpression()), !dbg !2659
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2660, !tbaa !841
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2661, !tbaa !841
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !2662
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2663 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2667, metadata !DIExpression()), !dbg !2669
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2670, !tbaa !841
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2671, !tbaa !841
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !2672
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !2673 {
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !2677, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !2678, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !2679, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !2680, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2685, !tbaa !841
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZH1@ZEA", align 8, !dbg !2686, !tbaa !841
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HHPEAE0@ZHH10@ZEA", align 8, !dbg !2687, !tbaa !841
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", align 8, !dbg !2688, !tbaa !841
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2689, !tbaa !841
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2690, !tbaa !841
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2691, !tbaa !841
  ret void, !dbg !2692
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !2693 {
  call void @llvm.dbg.value(metadata i8* %4, metadata !2695, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %3, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %2, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()), !dbg !2700
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPEAXP6AH0HPEAE@ZHH1@ZEA", align 8, !dbg !2701, !tbaa !841
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !2701
  ret i32 %7, !dbg !2701
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !2702 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2704, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2705, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 %1, metadata !2706, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()), !dbg !2708
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPEAXHPEAUhalide_parallel_task_t@@0@ZEA", align 8, !dbg !2709, !tbaa !841
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !2709
  ret i32 %6, !dbg !2709
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2710 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2713, metadata !DIExpression()), !dbg !2714
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2715, !tbaa !841
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2715
  ret i32 %4, !dbg !2715
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2716 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2719, metadata !DIExpression()), !dbg !2720
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2721, !tbaa !841
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2721
  ret i32 %4, !dbg !2721
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2722 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2725, metadata !DIExpression()), !dbg !2726
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPEAUhalide_semaphore_t@@H@ZEA", align 8, !dbg !2727, !tbaa !841
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2727
  ret i1 %4, !dbg !2727
}

declare dso_local void @InitializeCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @InitializeConditionVariable(i64*) local_unnamed_addr #3

declare dso_local void @EnterCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @SleepConditionVariableCS(i64*, %struct.CriticalSection*, i32) local_unnamed_addr #3

declare dso_local void @LeaveCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @DeleteCriticalSection(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local void @WakeConditionVariable(i64*) local_unnamed_addr #3

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
!llvm.module.flags = !{!382, !383, !384}
!llvm.ident = !{!385}

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
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !371, imports: !379, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "6b47adcd64c88f8a38b8b1700cd2db58")
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
!371 = !{!372, !375, !0, !377, !11, !121, !127, !133, !139, !146, !152, !158}
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!373 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !374, isLocal: true, isDefinition: true)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!376 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !374, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!378 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !374, isLocal: true, isDefinition: true)
!379 = !{!380, !381}
!380 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!381 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!382 = !{i32 2, !"CodeView", i32 1}
!383 = !{i32 2, !"Debug Info Version", i32 3}
!384 = !{i32 1, !"wchar_size", i32 4}
!385 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!386 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "?spawn_thread_helper@Internal@Runtime@Halide@@YAPEAXPEAX@Z", scope: !3, file: !167, line: 43, type: !387, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{!43, !43}
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "arg", arg: 1, scope: !386, file: !167, line: 43, type: !43)
!391 = !DILocalVariable(name: "t", scope: !386, file: !167, line: 44, type: !165)
!392 = !DILocation(line: 0, scope: !386)
!393 = !DILocation(line: 45, scope: !386)
!394 = !{!395, !396, i64 0}
!395 = !{!"?AUspawned_thread@Internal@Runtime@Halide@@", !396, i64 0, !396, i64 8, !396, i64 16}
!396 = !{!"any pointer", !397, i64 0}
!397 = !{!"omnipotent char", !398, i64 0}
!398 = !{!"Simple C++ TBAA"}
!399 = !{!395, !396, i64 8}
!400 = !DILocation(line: 46, scope: !386)
!401 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !167, file: !167, line: 55, type: !402, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!29}
!404 = !{!405}
!405 = !DILocalVariable(name: "num_cores", scope: !401, file: !167, line: 57, type: !370)
!406 = !DILocation(line: 57, scope: !401)
!407 = !DILocation(line: 0, scope: !401)
!408 = !DILocation(line: 58, scope: !401)
!409 = !DILocation(line: 59, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !167, line: 58)
!411 = distinct !DILexicalBlock(scope: !401, file: !167, line: 58)
!412 = !DILocation(line: 0, scope: !411)
!413 = !DILocation(line: 63, scope: !401)
!414 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 65, type: !415, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !417)
!415 = !DISubroutineType(types: !416)
!416 = !{!102, !170, !43}
!417 = !{!418, !419, !420}
!418 = !DILocalVariable(name: "closure", arg: 2, scope: !414, file: !167, line: 65, type: !43)
!419 = !DILocalVariable(name: "f", arg: 1, scope: !414, file: !167, line: 65, type: !170)
!420 = !DILocalVariable(name: "t", scope: !414, file: !167, line: 66, type: !165)
!421 = !DILocation(line: 0, scope: !414)
!422 = !DILocation(line: 66, scope: !414)
!423 = !DILocation(line: 67, scope: !414)
!424 = !DILocation(line: 68, scope: !414)
!425 = !DILocation(line: 69, scope: !414)
!426 = !{!395, !396, i64 16}
!427 = !DILocation(line: 70, scope: !414)
!428 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !429, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !102}
!431 = !{!432, !433}
!432 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !428, file: !167, line: 73, type: !102)
!433 = !DILocalVariable(name: "thread", scope: !428, file: !167, line: 74, type: !165)
!434 = !DILocation(line: 0, scope: !428)
!435 = !DILocation(line: 74, scope: !428)
!436 = !DILocation(line: 75, scope: !428)
!437 = !DILocation(line: 76, scope: !428)
!438 = !DILocation(line: 77, scope: !428)
!439 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !235, file: !6, line: 321, type: !239, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !238, retainedNodes: !440)
!440 = !{!441, !443, !455, !456, !460, !461, !462}
!441 = !DILocalVariable(name: "this", arg: 1, scope: !439, type: !442, flags: DIFlagArtificial | DIFlagObjectPointer)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!443 = !DILocalVariable(name: "spinner", scope: !439, file: !6, line: 322, type: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !445, identifier: ".?AVspin_control@Synchronization@Internal@Runtime@Halide@@")
!445 = !{!446, !447, !451, !454}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !444, file: !6, line: 231, baseType: !29, size: 32)
!447 = !DISubprogram(name: "spin_control", scope: !444, file: !6, line: 235, type: !448, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!451 = !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !444, file: !6, line: 237, type: !452, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{!64, !450}
!454 = !DISubprogram(name: "reset", linkageName: "?reset@spin_control@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !444, file: !6, line: 244, type: !448, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DILocalVariable(name: "expected", scope: !439, file: !6, line: 323, type: !22)
!456 = !DILocalVariable(name: "desired", scope: !457, file: !6, line: 328, type: !22)
!457 = distinct !DILexicalBlock(scope: !458, file: !6, line: 327)
!458 = distinct !DILexicalBlock(scope: !459, file: !6, line: 327)
!459 = distinct !DILexicalBlock(scope: !439, file: !6, line: 326)
!460 = !DILocalVariable(name: "node", scope: !459, file: !6, line: 342, type: !177)
!461 = !DILocalVariable(name: "head", scope: !459, file: !6, line: 347, type: !176)
!462 = !DILocalVariable(name: "desired", scope: !459, file: !6, line: 359, type: !22)
!463 = !DILocation(line: 0, scope: !439)
!464 = !DILocation(line: 324, scope: !439)
!465 = !DILocalVariable(name: "val", arg: 2, scope: !466, file: !6, line: 200, type: !470)
!466 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned long long>", linkageName: "??$atomic_load_relaxed@_K@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPEA_K0@Z", scope: !467, file: !6, line: 200, type: !468, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !473, retainedNodes: !471)
!467 = !DINamespace(scope: !2)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!471 = !{!465, !472}
!472 = !DILocalVariable(name: "addr", arg: 1, scope: !466, file: !6, line: 200, type: !470)
!473 = !{!474}
!474 = !DITemplateTypeParameter(name: "T", type: !25)
!475 = !DILocation(line: 0, scope: !466, inlinedAt: !476)
!476 = distinct !DILocation(line: 324, scope: !439)
!477 = !DILocation(line: 201, scope: !466, inlinedAt: !476)
!478 = !DILocation(line: 326, scope: !439)
!479 = !DILocation(line: 327, scope: !459)
!480 = !DILocation(line: 328, scope: !457)
!481 = !DILocation(line: 0, scope: !457)
!482 = !DILocalVariable(name: "desired", arg: 3, scope: !483, file: !6, line: 191, type: !298)
!483 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "?atomic_cas_weak_acquire_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !467, file: !6, line: 191, type: !484, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!64, !298, !298, !298}
!486 = !{!482, !487, !488}
!487 = !DILocalVariable(name: "expected", arg: 2, scope: !483, file: !6, line: 191, type: !298)
!488 = !DILocalVariable(name: "addr", arg: 1, scope: !483, file: !6, line: 191, type: !298)
!489 = !DILocation(line: 0, scope: !483, inlinedAt: !490)
!490 = distinct !DILocation(line: 330, scope: !457)
!491 = !DILocation(line: 192, scope: !483, inlinedAt: !490)
!492 = !DILocation(line: 336, scope: !459)
!493 = !DILocalVariable(name: "this", arg: 1, scope: !494, type: !496, flags: DIFlagArtificial | DIFlagObjectPointer)
!494 = distinct !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !444, file: !6, line: 237, type: !452, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !451, retainedNodes: !495)
!495 = !{!493}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!497 = !DILocation(line: 0, scope: !494, inlinedAt: !498)
!498 = distinct !DILocation(line: 336, scope: !459)
!499 = !DILocation(line: 241, scope: !494, inlinedAt: !498)
!500 = !DILocation(line: 239, scope: !501, inlinedAt: !498)
!501 = distinct !DILexicalBlock(scope: !502, file: !6, line: 238)
!502 = distinct !DILexicalBlock(scope: !494, file: !6, line: 238)
!503 = !DILocation(line: 337, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !6, line: 336)
!505 = distinct !DILexicalBlock(scope: !459, file: !6, line: 336)
!506 = !DILocation(line: 0, scope: !466, inlinedAt: !507)
!507 = distinct !DILocation(line: 338, scope: !504)
!508 = !DILocation(line: 201, scope: !466, inlinedAt: !507)
!509 = !DILocation(line: 339, scope: !504)
!510 = !DILocation(line: 342, scope: !459)
!511 = !DILocalVariable(name: "this", arg: 1, scope: !512, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!512 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "??0word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !177, file: !6, line: 277, type: !223, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !222, retainedNodes: !513)
!513 = !{!511}
!514 = !DILocation(line: 0, scope: !512, inlinedAt: !515)
!515 = distinct !DILocation(line: 342, scope: !459)
!516 = !DILocalVariable(name: "this", arg: 1, scope: !517, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!517 = distinct !DISubprogram(name: "thread_parker", linkageName: "??0thread_parker@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !180, file: !167, line: 97, type: !211, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !210, retainedNodes: !518)
!518 = !{!516}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!520 = !DILocation(line: 0, scope: !517, inlinedAt: !521)
!521 = distinct !DILocation(line: 277, scope: !512, inlinedAt: !515)
!522 = !DILocation(line: 97, scope: !517, inlinedAt: !521)
!523 = !{!524, !527, i64 48}
!524 = !{!"?AUthread_parker@Synchronization@Internal@Runtime@Halide@@", !525, i64 0, !526, i64 40, !527, i64 48}
!525 = !{!"?AUCriticalSection@@", !397, i64 0}
!526 = !{!"long long", !397, i64 0}
!527 = !{!"bool", !397, i64 0}
!528 = !DILocation(line: 98, scope: !529, inlinedAt: !521)
!529 = distinct !DILexicalBlock(scope: !517, file: !167, line: 97)
!530 = !DILocation(line: 99, scope: !529, inlinedAt: !521)
!531 = !DILocation(line: 277, scope: !512, inlinedAt: !515)
!532 = !{!533, !396, i64 56}
!533 = !{!"?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@", !524, i64 0, !396, i64 56, !396, i64 64, !396, i64 72}
!534 = !{!533, !396, i64 64}
!535 = !{!533, !396, i64 72}
!536 = !DILocalVariable(name: "this", arg: 1, scope: !537, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!537 = distinct !DISubprogram(name: "prepare_park", linkageName: "?prepare_park@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 107, type: !211, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !214, retainedNodes: !538)
!538 = !{!536}
!539 = !DILocation(line: 0, scope: !537, inlinedAt: !540)
!540 = distinct !DILocation(line: 344, scope: !459)
!541 = !DILocation(line: 108, scope: !537, inlinedAt: !540)
!542 = !DILocation(line: 347, scope: !459)
!543 = !DILocation(line: 0, scope: !459)
!544 = !DILocation(line: 348, scope: !459)
!545 = !DILocation(line: 349, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !6, line: 348)
!547 = distinct !DILexicalBlock(scope: !459, file: !6, line: 348)
!548 = !DILocation(line: 351, scope: !546)
!549 = !DILocation(line: 356, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !6, line: 351)
!551 = !DILocation(line: 357, scope: !550)
!552 = !DILocation(line: 359, scope: !459)
!553 = !DILocalVariable(name: "desired", arg: 3, scope: !554, file: !6, line: 183, type: !298)
!554 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "?atomic_cas_weak_release_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !467, file: !6, line: 183, type: !484, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !555)
!555 = !{!553, !556, !557}
!556 = !DILocalVariable(name: "expected", arg: 2, scope: !554, file: !6, line: 183, type: !298)
!557 = !DILocalVariable(name: "addr", arg: 1, scope: !554, file: !6, line: 183, type: !298)
!558 = !DILocation(line: 0, scope: !554, inlinedAt: !559)
!559 = distinct !DILocation(line: 360, scope: !459)
!560 = !DILocation(line: 184, scope: !554, inlinedAt: !559)
!561 = !DILocalVariable(name: "this", arg: 1, scope: !562, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!562 = distinct !DISubprogram(name: "park", linkageName: "?park@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 111, type: !211, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !215, retainedNodes: !563)
!563 = !{!561}
!564 = !DILocation(line: 0, scope: !562, inlinedAt: !565)
!565 = distinct !DILocation(line: 361, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !6, line: 360)
!567 = distinct !DILexicalBlock(scope: !459, file: !6, line: 360)
!568 = !DILocation(line: 112, scope: !562, inlinedAt: !565)
!569 = !DILocation(line: 113, scope: !562, inlinedAt: !565)
!570 = !{i8 0, i8 2}
!571 = !DILocation(line: 114, scope: !572, inlinedAt: !565)
!572 = distinct !DILexicalBlock(scope: !562, file: !167, line: 113)
!573 = distinct !{!573, !569, !574, !575}
!574 = !DILocation(line: 115, scope: !562, inlinedAt: !565)
!575 = !{!"llvm.loop.mustprogress"}
!576 = !DILocation(line: 116, scope: !562, inlinedAt: !565)
!577 = !DILocation(line: 0, scope: !466, inlinedAt: !578)
!578 = distinct !DILocation(line: 363, scope: !566)
!579 = !DILocation(line: 201, scope: !466, inlinedAt: !578)
!580 = !DILocation(line: 364, scope: !566)
!581 = !DILocalVariable(name: "this", arg: 1, scope: !582, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!582 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "??1word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !177, file: !6, line: 280, type: !223, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !226, retainedNodes: !583)
!583 = !{!581}
!584 = !DILocation(line: 0, scope: !582, inlinedAt: !585)
!585 = distinct !DILocation(line: 365, scope: !459)
!586 = !DILocalVariable(name: "this", arg: 1, scope: !587, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!587 = distinct !DISubprogram(name: "~thread_parker", linkageName: "??1thread_parker@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !180, file: !167, line: 102, type: !211, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !213, retainedNodes: !588)
!588 = !{!586}
!589 = !DILocation(line: 0, scope: !587, inlinedAt: !590)
!590 = distinct !DILocation(line: 280, scope: !591, inlinedAt: !585)
!591 = distinct !DILexicalBlock(scope: !582, file: !6, line: 280)
!592 = !DILocation(line: 104, scope: !593, inlinedAt: !590)
!593 = distinct !DILexicalBlock(scope: !587, file: !167, line: 102)
!594 = !DILocation(line: 365, scope: !459)
!595 = distinct !{!595, !478, !596}
!596 = !DILocation(line: 365, scope: !439)
!597 = !DILocation(line: 366, scope: !439)
!598 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !235, file: !6, line: 368, type: !239, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !242, retainedNodes: !599)
!599 = !{!600, !601, !602, !604, !605, !606, !608, !609, !610, !611, !613, !616, !617, !620}
!600 = !DILocalVariable(name: "this", arg: 1, scope: !598, type: !442, flags: DIFlagArtificial | DIFlagObjectPointer)
!601 = !DILocalVariable(name: "expected", scope: !598, file: !6, line: 369, type: !22)
!602 = !DILocalVariable(name: "thread_queuing", scope: !603, file: !6, line: 375, type: !64)
!603 = distinct !DILexicalBlock(scope: !598, file: !6, line: 372)
!604 = !DILocalVariable(name: "none_queued", scope: !603, file: !6, line: 377, type: !64)
!605 = !DILocalVariable(name: "desired", scope: !603, file: !6, line: 382, type: !22)
!606 = !DILocalVariable(name: "head", scope: !607, file: !6, line: 389, type: !176)
!607 = distinct !DILexicalBlock(scope: !598, file: !6, line: 388)
!608 = !DILocalVariable(name: "current", scope: !607, file: !6, line: 390, type: !176)
!609 = !DILocalVariable(name: "tail", scope: !607, file: !6, line: 391, type: !176)
!610 = !DILocalVariable(name: "times_through", scope: !607, file: !6, line: 392, type: !29)
!611 = !DILocalVariable(name: "next", scope: !612, file: !6, line: 394, type: !176)
!612 = distinct !DILexicalBlock(scope: !607, file: !6, line: 393)
!613 = !DILocalVariable(name: "desired", scope: !614, file: !6, line: 406, type: !22)
!614 = distinct !DILexicalBlock(scope: !615, file: !6, line: 405)
!615 = distinct !DILexicalBlock(scope: !607, file: !6, line: 405)
!616 = !DILocalVariable(name: "new_tail", scope: !607, file: !6, line: 414, type: !176)
!617 = !DILocalVariable(name: "continue_outer", scope: !618, file: !6, line: 416, type: !64)
!618 = distinct !DILexicalBlock(scope: !619, file: !6, line: 415)
!619 = distinct !DILexicalBlock(scope: !607, file: !6, line: 415)
!620 = !DILocalVariable(name: "desired", scope: !621, file: !6, line: 418, type: !22)
!621 = distinct !DILexicalBlock(scope: !618, file: !6, line: 417)
!622 = !DILocation(line: 0, scope: !598)
!623 = !DILocation(line: 370, scope: !598)
!624 = !DILocation(line: 0, scope: !466, inlinedAt: !625)
!625 = distinct !DILocation(line: 370, scope: !598)
!626 = !DILocation(line: 201, scope: !466, inlinedAt: !625)
!627 = !DILocation(line: 372, scope: !598)
!628 = !DILocation(line: 375, scope: !603)
!629 = !DILocation(line: 0, scope: !603)
!630 = !DILocation(line: 378, scope: !603)
!631 = !DILocation(line: 382, scope: !603)
!632 = !DILocation(line: 0, scope: !483, inlinedAt: !633)
!633 = distinct !DILocation(line: 383, scope: !603)
!634 = !DILocation(line: 192, scope: !483, inlinedAt: !633)
!635 = !DILocation(line: 389, scope: !607)
!636 = !DILocation(line: 0, scope: !607)
!637 = !DILocation(line: 391, scope: !607)
!638 = !DILocation(line: 393, scope: !607)
!639 = !DILocation(line: 394, scope: !612)
!640 = !DILocation(line: 0, scope: !612)
!641 = !DILocation(line: 395, scope: !642)
!642 = distinct !DILexicalBlock(scope: !612, file: !6, line: 395)
!643 = !DILocation(line: 395, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !6, line: 395)
!645 = distinct !DILexicalBlock(scope: !642, file: !6, line: 395)
!646 = !DILocation(line: 396, scope: !612)
!647 = !DILocation(line: 398, scope: !612)
!648 = distinct !{!648, !638, !649, !575}
!649 = !DILocation(line: 400, scope: !607)
!650 = !DILocation(line: 401, scope: !607)
!651 = !DILocation(line: 405, scope: !607)
!652 = !DILocation(line: 406, scope: !614)
!653 = !DILocation(line: 0, scope: !614)
!654 = !DILocalVariable(name: "desired", arg: 3, scope: !655, file: !6, line: 179, type: !470)
!655 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned long long>", linkageName: "??$atomic_cas_weak_relacq_relaxed@_K@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !467, file: !6, line: 179, type: !656, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !473, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!64, !470, !470, !470}
!658 = !{!654, !659, !660}
!659 = !DILocalVariable(name: "expected", arg: 2, scope: !655, file: !6, line: 179, type: !470)
!660 = !DILocalVariable(name: "addr", arg: 1, scope: !655, file: !6, line: 179, type: !470)
!661 = !DILocation(line: 0, scope: !655, inlinedAt: !662)
!662 = distinct !DILocation(line: 407, scope: !614)
!663 = !DILocation(line: 180, scope: !655, inlinedAt: !662)
!664 = distinct !{!664, !665, !666}
!665 = !DILocation(line: 388, scope: !598)
!666 = !DILocation(line: 445, scope: !598)
!667 = !DILocation(line: 414, scope: !607)
!668 = !DILocation(line: 415, scope: !607)
!669 = !DILocation(line: 0, scope: !618)
!670 = !DILocation(line: 418, scope: !621)
!671 = !DILocation(line: 0, scope: !621)
!672 = !DILocation(line: 0, scope: !655, inlinedAt: !673)
!673 = distinct !DILocation(line: 419, scope: !621)
!674 = !DILocation(line: 180, scope: !655, inlinedAt: !673)
!675 = !DILocation(line: 422, scope: !621)
!676 = distinct !{!676, !677, !678, !575}
!677 = !DILocation(line: 417, scope: !618)
!678 = !DILocation(line: 428, scope: !618)
!679 = !DILocation(line: 434, scope: !680)
!680 = distinct !DILexicalBlock(scope: !619, file: !6, line: 433)
!681 = !DILocalVariable(name: "val", arg: 2, scope: !682, file: !6, line: 165, type: !22)
!682 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "?atomic_and_fetch_release@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_KPEA_K_K@Z", scope: !467, file: !6, line: 165, type: !683, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!22, !298, !22}
!685 = !{!681, !686}
!686 = !DILocalVariable(name: "addr", arg: 1, scope: !682, file: !6, line: 165, type: !298)
!687 = !DILocation(line: 0, scope: !682, inlinedAt: !688)
!688 = distinct !DILocation(line: 435, scope: !680)
!689 = !DILocation(line: 166, scope: !682, inlinedAt: !688)
!690 = !DILocation(line: 436, scope: !680)
!691 = !DILocalVariable(name: "this", arg: 1, scope: !692, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!692 = distinct !DISubprogram(name: "unpark_start", linkageName: "?unpark_start@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 119, type: !211, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !216, retainedNodes: !693)
!693 = !{!691}
!694 = !DILocation(line: 0, scope: !692, inlinedAt: !695)
!695 = distinct !DILocation(line: 441, scope: !607)
!696 = !DILocation(line: 120, scope: !692, inlinedAt: !695)
!697 = !DILocalVariable(name: "this", arg: 1, scope: !698, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!698 = distinct !DISubprogram(name: "unpark", linkageName: "?unpark@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 123, type: !211, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !699)
!699 = !{!697}
!700 = !DILocation(line: 0, scope: !698, inlinedAt: !701)
!701 = distinct !DILocation(line: 442, scope: !607)
!702 = !DILocation(line: 124, scope: !698, inlinedAt: !701)
!703 = !DILocation(line: 125, scope: !698, inlinedAt: !701)
!704 = !DILocalVariable(name: "this", arg: 1, scope: !705, type: !519, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = distinct !DISubprogram(name: "unpark_finish", linkageName: "?unpark_finish@thread_parker@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !180, file: !167, line: 128, type: !211, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !706)
!706 = !{!704}
!707 = !DILocation(line: 0, scope: !705, inlinedAt: !708)
!708 = distinct !DILocation(line: 443, scope: !607)
!709 = !DILocation(line: 129, scope: !705, inlinedAt: !708)
!710 = !DILocation(line: 444, scope: !607)
!711 = !DILocation(line: 446, scope: !598)
!712 = distinct !DISubprogram(name: "lock_bucket", linkageName: "?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAEAUhash_bucket@1234@_K@Z", scope: !2, file: !6, line: 509, type: !713, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!715, !22}
!715 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !232, size: 64)
!716 = !{!717, !718, !719}
!717 = !DILocalVariable(name: "addr", arg: 1, scope: !712, file: !6, line: 509, type: !22)
!718 = !DILocalVariable(name: "hash", scope: !712, file: !6, line: 510, type: !22)
!719 = !DILocalVariable(name: "bucket", scope: !712, file: !6, line: 515, type: !715)
!720 = !DILocation(line: 0, scope: !712)
!721 = !DILocalVariable(name: "bits", arg: 2, scope: !722, file: !6, line: 499, type: !725)
!722 = distinct !DISubprogram(name: "addr_hash", linkageName: "?addr_hash@Synchronization@Internal@Runtime@Halide@@YA_K_KI@Z", scope: !2, file: !6, line: 499, type: !723, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !727)
!723 = !DISubroutineType(types: !724)
!724 = !{!22, !22, !725}
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 12, baseType: !726)
!726 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!727 = !{!721, !728}
!728 = !DILocalVariable(name: "addr", arg: 1, scope: !722, file: !6, line: 499, type: !22)
!729 = !DILocation(line: 0, scope: !722, inlinedAt: !730)
!730 = distinct !DILocation(line: 510, scope: !712)
!731 = !DILocation(line: 503, scope: !732, inlinedAt: !730)
!732 = distinct !DILexicalBlock(scope: !733, file: !6, line: 502)
!733 = distinct !DILexicalBlock(scope: !722, file: !6, line: 502)
!734 = !DILocation(line: 515, scope: !712)
!735 = !DILocalVariable(name: "this", arg: 1, scope: !736, type: !442, flags: DIFlagArtificial | DIFlagObjectPointer)
!736 = distinct !DISubprogram(name: "lock", linkageName: "?lock@word_lock@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !235, file: !6, line: 291, type: !239, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !244, retainedNodes: !737)
!737 = !{!735, !738, !739}
!738 = !DILocalVariable(name: "expected", scope: !736, file: !6, line: 294, type: !22)
!739 = !DILocalVariable(name: "desired", scope: !736, file: !6, line: 295, type: !22)
!740 = !DILocation(line: 0, scope: !736, inlinedAt: !741)
!741 = distinct !DILocation(line: 517, scope: !712)
!742 = !DILocation(line: 297, scope: !736, inlinedAt: !741)
!743 = !DILocation(line: 0, scope: !483, inlinedAt: !744)
!744 = distinct !DILocation(line: 297, scope: !736, inlinedAt: !741)
!745 = !DILocation(line: 192, scope: !483, inlinedAt: !744)
!746 = !DILocation(line: 517, scope: !712)
!747 = !DILocation(line: 298, scope: !748, inlinedAt: !741)
!748 = distinct !DILexicalBlock(scope: !749, file: !6, line: 297)
!749 = distinct !DILexicalBlock(scope: !736, file: !6, line: 297)
!750 = !DILocation(line: 299, scope: !748, inlinedAt: !741)
!751 = !DILocation(line: 519, scope: !712)
!752 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@_K0@Z", scope: !2, file: !6, line: 531, type: !753, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !763)
!753 = !DISubroutineType(types: !754)
!754 = !{!755, !22, !22}
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !756, identifier: ".?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@")
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !755, file: !6, line: 523, baseType: !715, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !755, file: !6, line: 524, baseType: !715, size: 64, offset: 64)
!759 = !DISubprogram(name: "bucket_pair", scope: !755, file: !6, line: 526, type: !760, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !762, !715, !715}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!763 = !{!764, !765, !766, !767, !768, !771, !774, !775, !777}
!764 = !DILocalVariable(name: "addr_to", arg: 2, scope: !752, file: !6, line: 531, type: !22)
!765 = !DILocalVariable(name: "addr_from", arg: 1, scope: !752, file: !6, line: 531, type: !22)
!766 = !DILocalVariable(name: "hash_from", scope: !752, file: !6, line: 533, type: !22)
!767 = !DILocalVariable(name: "hash_to", scope: !752, file: !6, line: 534, type: !22)
!768 = !DILocalVariable(name: "first", scope: !769, file: !6, line: 542, type: !715)
!769 = distinct !DILexicalBlock(scope: !770, file: !6, line: 541)
!770 = distinct !DILexicalBlock(scope: !752, file: !6, line: 541)
!771 = !DILocalVariable(name: "first", scope: !772, file: !6, line: 546, type: !715)
!772 = distinct !DILexicalBlock(scope: !773, file: !6, line: 545)
!773 = distinct !DILexicalBlock(scope: !770, file: !6, line: 545)
!774 = !DILocalVariable(name: "second", scope: !772, file: !6, line: 547, type: !715)
!775 = !DILocalVariable(name: "first", scope: !776, file: !6, line: 552, type: !715)
!776 = distinct !DILexicalBlock(scope: !773, file: !6, line: 551)
!777 = !DILocalVariable(name: "second", scope: !776, file: !6, line: 553, type: !715)
!778 = !DILocation(line: 0, scope: !752)
!779 = !DILocation(line: 0, scope: !722, inlinedAt: !780)
!780 = distinct !DILocation(line: 533, scope: !752)
!781 = !DILocation(line: 503, scope: !732, inlinedAt: !780)
!782 = !DILocation(line: 0, scope: !722, inlinedAt: !783)
!783 = distinct !DILocation(line: 534, scope: !752)
!784 = !DILocation(line: 503, scope: !732, inlinedAt: !783)
!785 = !DILocation(line: 541, scope: !752)
!786 = !DILocation(line: 542, scope: !769)
!787 = !DILocation(line: 0, scope: !769)
!788 = !DILocation(line: 0, scope: !736, inlinedAt: !789)
!789 = distinct !DILocation(line: 543, scope: !769)
!790 = !DILocation(line: 297, scope: !736, inlinedAt: !789)
!791 = !DILocation(line: 0, scope: !483, inlinedAt: !792)
!792 = distinct !DILocation(line: 297, scope: !736, inlinedAt: !789)
!793 = !DILocation(line: 192, scope: !483, inlinedAt: !792)
!794 = !DILocation(line: 543, scope: !769)
!795 = !DILocation(line: 298, scope: !748, inlinedAt: !789)
!796 = !DILocation(line: 299, scope: !748, inlinedAt: !789)
!797 = !DILocation(line: 545, scope: !770)
!798 = !DILocation(line: 546, scope: !772)
!799 = !DILocation(line: 0, scope: !772)
!800 = !DILocation(line: 547, scope: !772)
!801 = !DILocation(line: 0, scope: !736, inlinedAt: !802)
!802 = distinct !DILocation(line: 548, scope: !772)
!803 = !DILocation(line: 297, scope: !736, inlinedAt: !802)
!804 = !DILocation(line: 0, scope: !483, inlinedAt: !805)
!805 = distinct !DILocation(line: 297, scope: !736, inlinedAt: !802)
!806 = !DILocation(line: 192, scope: !483, inlinedAt: !805)
!807 = !DILocation(line: 548, scope: !772)
!808 = !DILocation(line: 298, scope: !748, inlinedAt: !802)
!809 = !DILocation(line: 299, scope: !748, inlinedAt: !802)
!810 = !DILocation(line: 0, scope: !736, inlinedAt: !811)
!811 = distinct !DILocation(line: 549, scope: !772)
!812 = !DILocation(line: 297, scope: !736, inlinedAt: !811)
!813 = !DILocation(line: 0, scope: !483, inlinedAt: !814)
!814 = distinct !DILocation(line: 297, scope: !736, inlinedAt: !811)
!815 = !DILocation(line: 192, scope: !483, inlinedAt: !814)
!816 = !DILocation(line: 549, scope: !772)
!817 = !DILocation(line: 298, scope: !748, inlinedAt: !811)
!818 = !DILocation(line: 299, scope: !748, inlinedAt: !811)
!819 = !DILocation(line: 552, scope: !776)
!820 = !DILocation(line: 0, scope: !776)
!821 = !DILocation(line: 553, scope: !776)
!822 = !DILocation(line: 0, scope: !736, inlinedAt: !823)
!823 = distinct !DILocation(line: 554, scope: !776)
!824 = !DILocation(line: 297, scope: !736, inlinedAt: !823)
!825 = !DILocation(line: 0, scope: !483, inlinedAt: !826)
!826 = distinct !DILocation(line: 297, scope: !736, inlinedAt: !823)
!827 = !DILocation(line: 192, scope: !483, inlinedAt: !826)
!828 = !DILocation(line: 554, scope: !776)
!829 = !DILocation(line: 298, scope: !748, inlinedAt: !823)
!830 = !DILocation(line: 299, scope: !748, inlinedAt: !823)
!831 = !DILocation(line: 0, scope: !736, inlinedAt: !832)
!832 = distinct !DILocation(line: 555, scope: !776)
!833 = !DILocation(line: 297, scope: !736, inlinedAt: !832)
!834 = !DILocation(line: 0, scope: !483, inlinedAt: !835)
!835 = distinct !DILocation(line: 297, scope: !736, inlinedAt: !832)
!836 = !DILocation(line: 192, scope: !483, inlinedAt: !835)
!837 = !DILocation(line: 555, scope: !776)
!838 = !DILocation(line: 298, scope: !748, inlinedAt: !832)
!839 = !DILocation(line: 299, scope: !748, inlinedAt: !832)
!840 = !DILocation(line: 0, scope: !770)
!841 = !{!396, !396, i64 0}
!842 = !DILocation(line: 558, scope: !752)
!843 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAEAUbucket_pair@1234@@Z", scope: !2, file: !6, line: 560, type: !844, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !847)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846}
!846 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !755, size: 64)
!847 = !{!848}
!848 = !DILocalVariable(name: "buckets", arg: 1, scope: !843, file: !6, line: 560, type: !846)
!849 = !DILocation(line: 0, scope: !843)
!850 = !DILocation(line: 565, scope: !843)
!851 = !{!852, !396, i64 0}
!852 = !{!"?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@", !396, i64 0, !396, i64 8}
!853 = !{!852, !396, i64 8}
!854 = !DILocalVariable(name: "this", arg: 1, scope: !855, type: !442, flags: DIFlagArtificial | DIFlagObjectPointer)
!855 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@word_lock@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !235, file: !6, line: 304, type: !239, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !245, retainedNodes: !856)
!856 = !{!854, !857, !858, !859}
!857 = !DILocalVariable(name: "val", scope: !855, file: !6, line: 307, type: !22)
!858 = !DILocalVariable(name: "no_thread_queuing", scope: !855, file: !6, line: 310, type: !64)
!859 = !DILocalVariable(name: "some_queued", scope: !855, file: !6, line: 312, type: !64)
!860 = !DILocation(line: 0, scope: !855, inlinedAt: !861)
!861 = distinct !DILocation(line: 566, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !6, line: 565)
!863 = distinct !DILexicalBlock(scope: !843, file: !6, line: 565)
!864 = !DILocation(line: 307, scope: !855, inlinedAt: !861)
!865 = !DILocalVariable(name: "val", arg: 2, scope: !866, file: !6, line: 195, type: !22)
!866 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "?atomic_fetch_and_release@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_KPEA_K_K@Z", scope: !467, file: !6, line: 195, type: !683, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !867)
!867 = !{!865, !868}
!868 = !DILocalVariable(name: "addr", arg: 1, scope: !866, file: !6, line: 195, type: !298)
!869 = !DILocation(line: 0, scope: !866, inlinedAt: !870)
!870 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !861)
!871 = !DILocation(line: 196, scope: !866, inlinedAt: !870)
!872 = !DILocation(line: 310, scope: !855, inlinedAt: !861)
!873 = !DILocation(line: 313, scope: !855, inlinedAt: !861)
!874 = !DILocation(line: 566, scope: !862)
!875 = !DILocation(line: 314, scope: !876, inlinedAt: !861)
!876 = distinct !DILexicalBlock(scope: !877, file: !6, line: 313)
!877 = distinct !DILexicalBlock(scope: !855, file: !6, line: 313)
!878 = !DILocation(line: 315, scope: !876, inlinedAt: !861)
!879 = !DILocation(line: 567, scope: !863)
!880 = !DILocation(line: 0, scope: !855, inlinedAt: !881)
!881 = distinct !DILocation(line: 568, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !6, line: 567)
!883 = distinct !DILexicalBlock(scope: !863, file: !6, line: 567)
!884 = !DILocation(line: 307, scope: !855, inlinedAt: !881)
!885 = !DILocation(line: 0, scope: !866, inlinedAt: !886)
!886 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !881)
!887 = !DILocation(line: 196, scope: !866, inlinedAt: !886)
!888 = !DILocation(line: 310, scope: !855, inlinedAt: !881)
!889 = !DILocation(line: 313, scope: !855, inlinedAt: !881)
!890 = !DILocation(line: 568, scope: !882)
!891 = !DILocation(line: 314, scope: !876, inlinedAt: !881)
!892 = !DILocation(line: 315, scope: !876, inlinedAt: !881)
!893 = !DILocation(line: 569, scope: !882)
!894 = !DILocation(line: 0, scope: !855, inlinedAt: !895)
!895 = distinct !DILocation(line: 569, scope: !882)
!896 = !DILocation(line: 307, scope: !855, inlinedAt: !895)
!897 = !DILocation(line: 0, scope: !866, inlinedAt: !898)
!898 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !895)
!899 = !DILocation(line: 196, scope: !866, inlinedAt: !898)
!900 = !DILocation(line: 310, scope: !855, inlinedAt: !895)
!901 = !DILocation(line: 313, scope: !855, inlinedAt: !895)
!902 = !DILocation(line: 314, scope: !876, inlinedAt: !895)
!903 = !DILocation(line: 315, scope: !876, inlinedAt: !895)
!904 = !DILocation(line: 0, scope: !855, inlinedAt: !905)
!905 = distinct !DILocation(line: 571, scope: !906)
!906 = distinct !DILexicalBlock(scope: !883, file: !6, line: 570)
!907 = !DILocation(line: 307, scope: !855, inlinedAt: !905)
!908 = !DILocation(line: 0, scope: !866, inlinedAt: !909)
!909 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !905)
!910 = !DILocation(line: 196, scope: !866, inlinedAt: !909)
!911 = !DILocation(line: 310, scope: !855, inlinedAt: !905)
!912 = !DILocation(line: 313, scope: !855, inlinedAt: !905)
!913 = !DILocation(line: 571, scope: !906)
!914 = !DILocation(line: 314, scope: !876, inlinedAt: !905)
!915 = !DILocation(line: 315, scope: !876, inlinedAt: !905)
!916 = !DILocation(line: 572, scope: !906)
!917 = !DILocation(line: 0, scope: !855, inlinedAt: !918)
!918 = distinct !DILocation(line: 572, scope: !906)
!919 = !DILocation(line: 307, scope: !855, inlinedAt: !918)
!920 = !DILocation(line: 0, scope: !866, inlinedAt: !921)
!921 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !918)
!922 = !DILocation(line: 196, scope: !866, inlinedAt: !921)
!923 = !DILocation(line: 310, scope: !855, inlinedAt: !918)
!924 = !DILocation(line: 313, scope: !855, inlinedAt: !918)
!925 = !DILocation(line: 314, scope: !876, inlinedAt: !918)
!926 = !DILocation(line: 315, scope: !876, inlinedAt: !918)
!927 = !DILocation(line: 574, scope: !843)
!928 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 583, type: !271, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !929)
!929 = !{!930, !931}
!930 = !DILocalVariable(name: "action", arg: 2, scope: !928, file: !6, line: 583, type: !273)
!931 = !DILocalVariable(name: "control", arg: 1, scope: !928, file: !6, line: 583, type: !43)
!932 = !DILocation(line: 0, scope: !928)
!933 = !DILocation(line: 584, scope: !928)
!934 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !935)
!935 = !{!936}
!936 = !DILocalVariable(name: "control", arg: 1, scope: !934, file: !6, line: 586, type: !43)
!937 = !DILocation(line: 0, scope: !934)
!938 = !DILocation(line: 586, scope: !934)
!939 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 587, type: !285, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !940)
!940 = !{!941, !942, !943}
!941 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !939, file: !6, line: 587, type: !64)
!942 = !DILocalVariable(name: "unparked", arg: 2, scope: !939, file: !6, line: 587, type: !29)
!943 = !DILocalVariable(name: "control", arg: 1, scope: !939, file: !6, line: 587, type: !43)
!944 = !DILocation(line: 0, scope: !939)
!945 = !DILocation(line: 588, scope: !939)
!946 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 590, type: !289, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !947)
!947 = !{!948, !949, !950, !951}
!948 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !946, file: !6, line: 590, type: !64)
!949 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !946, file: !6, line: 590, type: !64)
!950 = !DILocalVariable(name: "action", arg: 2, scope: !946, file: !6, line: 590, type: !291)
!951 = !DILocalVariable(name: "control", arg: 1, scope: !946, file: !6, line: 590, type: !43)
!952 = !DILocation(line: 0, scope: !946)
!953 = !DILocation(line: 590, scope: !946)
!954 = distinct !DISubprogram(name: "park", linkageName: "?park@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z", scope: !2, file: !6, line: 605, type: !955, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !958)
!955 = !DISubroutineType(types: !956)
!956 = !{!22, !22, !957}
!957 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !267, size: 64)
!958 = !{!959, !960, !961, !962, !963}
!959 = !DILocalVariable(name: "control", arg: 2, scope: !954, file: !6, line: 605, type: !957)
!960 = !DILocalVariable(name: "addr", arg: 1, scope: !954, file: !6, line: 605, type: !22)
!961 = !DILocalVariable(name: "queue_data", scope: !954, file: !6, line: 606, type: !248)
!962 = !DILocalVariable(name: "bucket", scope: !954, file: !6, line: 608, type: !715)
!963 = !DILocalVariable(name: "action", scope: !954, file: !6, line: 610, type: !274)
!964 = !DILocation(line: 0, scope: !954)
!965 = !DILocation(line: 606, scope: !954)
!966 = !DILocalVariable(name: "this", arg: 1, scope: !967, type: !247, flags: DIFlagArtificial | DIFlagObjectPointer)
!967 = distinct !DISubprogram(name: "queue_data", linkageName: "??0queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !248, file: !6, line: 455, type: !255, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !254, retainedNodes: !968)
!968 = !{!966}
!969 = !DILocation(line: 0, scope: !967, inlinedAt: !970)
!970 = distinct !DILocation(line: 606, scope: !954)
!971 = !DILocation(line: 0, scope: !517, inlinedAt: !972)
!972 = distinct !DILocation(line: 455, scope: !967, inlinedAt: !970)
!973 = !DILocation(line: 97, scope: !517, inlinedAt: !972)
!974 = !DILocation(line: 98, scope: !529, inlinedAt: !972)
!975 = !DILocation(line: 99, scope: !529, inlinedAt: !972)
!976 = !DILocation(line: 455, scope: !967, inlinedAt: !970)
!977 = !{!978, !526, i64 56}
!978 = !{!"?AUqueue_data@Synchronization@Internal@Runtime@Halide@@", !524, i64 0, !526, i64 56, !396, i64 64, !526, i64 72}
!979 = !{!978, !396, i64 64}
!980 = !{!978, !526, i64 72}
!981 = !DILocation(line: 608, scope: !954)
!982 = !DILocation(line: 610, scope: !954)
!983 = !DILocalVariable(name: "this", arg: 1, scope: !984, type: !986, flags: DIFlagArtificial | DIFlagObjectPointer)
!984 = distinct !DISubprogram(name: "validate_action", linkageName: "??0validate_action@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !274, file: !6, line: 580, type: !279, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !278, retainedNodes: !985)
!985 = !{!983}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!987 = !DILocation(line: 0, scope: !984, inlinedAt: !988)
!988 = distinct !DILocation(line: 610, scope: !954)
!989 = !DILocation(line: 580, scope: !984, inlinedAt: !988)
!990 = !{!991, !527, i64 0}
!991 = !{!"?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@", !527, i64 0, !526, i64 8}
!992 = !{!991, !526, i64 8}
!993 = !DILocation(line: 611, scope: !954)
!994 = !{!995, !396, i64 0}
!995 = !{!"?AUparking_control@Synchronization@Internal@Runtime@Halide@@", !396, i64 0, !396, i64 8, !396, i64 16, !396, i64 24}
!996 = !DILocation(line: 0, scope: !855, inlinedAt: !997)
!997 = distinct !DILocation(line: 612, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !6, line: 611)
!999 = distinct !DILexicalBlock(scope: !954, file: !6, line: 611)
!1000 = !DILocation(line: 307, scope: !855, inlinedAt: !997)
!1001 = !DILocation(line: 0, scope: !866, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !997)
!1003 = !DILocation(line: 196, scope: !866, inlinedAt: !1002)
!1004 = !DILocation(line: 310, scope: !855, inlinedAt: !997)
!1005 = !DILocation(line: 313, scope: !855, inlinedAt: !997)
!1006 = !DILocation(line: 612, scope: !998)
!1007 = !DILocation(line: 314, scope: !876, inlinedAt: !997)
!1008 = !DILocation(line: 315, scope: !876, inlinedAt: !997)
!1009 = !DILocation(line: 616, scope: !954)
!1010 = !DILocation(line: 617, scope: !954)
!1011 = !DILocation(line: 0, scope: !537, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 618, scope: !954)
!1013 = !DILocation(line: 108, scope: !537, inlinedAt: !1012)
!1014 = !DILocation(line: 619, scope: !954)
!1015 = !{!1016, !396, i64 8}
!1016 = !{!"?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@", !1017, i64 0, !396, i64 8, !396, i64 16}
!1017 = !{!"?AVword_lock@Synchronization@Internal@Runtime@Halide@@", !526, i64 0}
!1018 = !DILocation(line: 0, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !954, file: !6, line: 619)
!1020 = !DILocation(line: 624, scope: !954)
!1021 = !{!1016, !396, i64 16}
!1022 = !DILocation(line: 0, scope: !855, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 625, scope: !954)
!1024 = !DILocation(line: 307, scope: !855, inlinedAt: !1023)
!1025 = !DILocation(line: 0, scope: !866, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !1023)
!1027 = !DILocation(line: 196, scope: !866, inlinedAt: !1026)
!1028 = !DILocation(line: 310, scope: !855, inlinedAt: !1023)
!1029 = !DILocation(line: 313, scope: !855, inlinedAt: !1023)
!1030 = !DILocation(line: 625, scope: !954)
!1031 = !DILocation(line: 314, scope: !876, inlinedAt: !1023)
!1032 = !DILocation(line: 315, scope: !876, inlinedAt: !1023)
!1033 = !DILocation(line: 627, scope: !954)
!1034 = !{!995, !396, i64 8}
!1035 = !DILocation(line: 0, scope: !562, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 629, scope: !954)
!1037 = !DILocation(line: 112, scope: !562, inlinedAt: !1036)
!1038 = !DILocation(line: 113, scope: !562, inlinedAt: !1036)
!1039 = !DILocation(line: 114, scope: !572, inlinedAt: !1036)
!1040 = distinct !{!1040, !1038, !1041, !575}
!1041 = !DILocation(line: 115, scope: !562, inlinedAt: !1036)
!1042 = !DILocation(line: 116, scope: !562, inlinedAt: !1036)
!1043 = !DILocation(line: 631, scope: !954)
!1044 = !{!526, !526, i64 0}
!1045 = !DILocation(line: 634, scope: !954)
!1046 = !DILocalVariable(name: "this", arg: 1, scope: !1047, type: !247, flags: DIFlagArtificial | DIFlagObjectPointer)
!1047 = distinct !DISubprogram(name: "~queue_data", linkageName: "??1queue_data@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !248, file: !6, line: 457, type: !255, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !258, retainedNodes: !1048)
!1048 = !{!1046}
!1049 = !DILocation(line: 0, scope: !1047, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 634, scope: !954)
!1051 = !DILocation(line: 0, scope: !587, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 457, scope: !1053, inlinedAt: !1050)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !6, line: 457)
!1054 = !DILocation(line: 104, scope: !593, inlinedAt: !1052)
!1055 = distinct !DISubprogram(name: "unpark_one", linkageName: "?unpark_one@Synchronization@Internal@Runtime@Halide@@YA_K_KAEAUparking_control@1234@@Z", scope: !2, file: !6, line: 636, type: !955, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1065, !1068, !1069, !1072}
!1057 = !DILocalVariable(name: "control", arg: 2, scope: !1055, file: !6, line: 636, type: !957)
!1058 = !DILocalVariable(name: "addr", arg: 1, scope: !1055, file: !6, line: 636, type: !22)
!1059 = !DILocalVariable(name: "bucket", scope: !1055, file: !6, line: 637, type: !715)
!1060 = !DILocalVariable(name: "data_location", scope: !1055, file: !6, line: 639, type: !262)
!1061 = !DILocalVariable(name: "prev", scope: !1055, file: !6, line: 640, type: !247)
!1062 = !DILocalVariable(name: "data", scope: !1055, file: !6, line: 641, type: !247)
!1063 = !DILocalVariable(name: "cur_addr", scope: !1064, file: !6, line: 643, type: !22)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !6, line: 642)
!1065 = !DILocalVariable(name: "next", scope: !1066, file: !6, line: 646, type: !247)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !6, line: 645)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !6, line: 645)
!1068 = !DILocalVariable(name: "more_waiters", scope: !1066, file: !6, line: 649, type: !64)
!1069 = !DILocalVariable(name: "data2", scope: !1070, file: !6, line: 654, type: !247)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !6, line: 653)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !6, line: 651)
!1072 = !DILocalVariable(name: "cur_addr2", scope: !1073, file: !6, line: 656, type: !22)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !6, line: 655)
!1074 = !DILocation(line: 0, scope: !1055)
!1075 = !DILocation(line: 637, scope: !1055)
!1076 = !DILocation(line: 639, scope: !1055)
!1077 = !DILocation(line: 641, scope: !1055)
!1078 = !DILocation(line: 642, scope: !1055)
!1079 = !DILocation(line: 640, scope: !1055)
!1080 = !DILocation(line: 644, scope: !1064)
!1081 = !DILocation(line: 0, scope: !466, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 644, scope: !1064)
!1083 = !DILocation(line: 201, scope: !466, inlinedAt: !1082)
!1084 = !DILocation(line: 0, scope: !1064)
!1085 = !DILocation(line: 645, scope: !1064)
!1086 = !DILocation(line: 0, scope: !1067)
!1087 = !DILocation(line: 0, scope: !1066)
!1088 = !DILocation(line: 647, scope: !1066)
!1089 = !DILocation(line: 651, scope: !1066)
!1090 = !DILocation(line: 0, scope: !1070)
!1091 = !DILocation(line: 655, scope: !1070)
!1092 = !DILocation(line: 652, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1071, file: !6, line: 651)
!1094 = !DILocation(line: 653, scope: !1093)
!1095 = !DILocation(line: 657, scope: !1073)
!1096 = !DILocation(line: 0, scope: !466, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 657, scope: !1073)
!1098 = !DILocation(line: 201, scope: !466, inlinedAt: !1097)
!1099 = !DILocation(line: 0, scope: !1073)
!1100 = !DILocation(line: 658, scope: !1073)
!1101 = !DILocation(line: 659, scope: !1073)
!1102 = distinct !{!1102, !1091, !1103, !575}
!1103 = !DILocation(line: 660, scope: !1070)
!1104 = !DILocation(line: 663, scope: !1066)
!1105 = !DILocation(line: 649, scope: !1066)
!1106 = !{!995, !396, i64 16}
!1107 = !DILocation(line: 0, scope: !692, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 665, scope: !1066)
!1109 = !DILocation(line: 120, scope: !692, inlinedAt: !1108)
!1110 = !DILocation(line: 0, scope: !855, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 666, scope: !1066)
!1112 = !DILocation(line: 0, scope: !866, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !1111)
!1114 = !DILocation(line: 196, scope: !866, inlinedAt: !1113)
!1115 = !DILocation(line: 310, scope: !855, inlinedAt: !1111)
!1116 = !DILocation(line: 313, scope: !855, inlinedAt: !1111)
!1117 = !DILocation(line: 314, scope: !876, inlinedAt: !1111)
!1118 = !DILocation(line: 315, scope: !876, inlinedAt: !1111)
!1119 = !DILocation(line: 0, scope: !698, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 667, scope: !1066)
!1121 = !DILocation(line: 124, scope: !698, inlinedAt: !1120)
!1122 = !DILocation(line: 125, scope: !698, inlinedAt: !1120)
!1123 = !DILocation(line: 0, scope: !705, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 668, scope: !1066)
!1125 = !DILocation(line: 129, scope: !705, inlinedAt: !1124)
!1126 = distinct !{!1126, !1078, !1127, !575}
!1127 = !DILocation(line: 677, scope: !1055)
!1128 = !DILocation(line: 679, scope: !1055)
!1129 = !DILocation(line: 0, scope: !855, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 681, scope: !1055)
!1131 = !DILocation(line: 0, scope: !866, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !1130)
!1133 = !DILocation(line: 196, scope: !866, inlinedAt: !1132)
!1134 = !DILocation(line: 310, scope: !855, inlinedAt: !1130)
!1135 = !DILocation(line: 313, scope: !855, inlinedAt: !1130)
!1136 = !DILocation(line: 314, scope: !876, inlinedAt: !1130)
!1137 = !DILocation(line: 315, scope: !876, inlinedAt: !1130)
!1138 = !DILocation(line: 685, scope: !1055)
!1139 = distinct !DISubprogram(name: "unpark_all", linkageName: "?unpark_all@Synchronization@Internal@Runtime@Halide@@YA_K_K0@Z", scope: !2, file: !6, line: 687, type: !1140, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!22, !22, !22}
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148, !1149, !1152, !1156, !1157, !1158, !1160, !1161, !1166, !1168, !1170}
!1143 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1139, file: !6, line: 687, type: !22)
!1144 = !DILocalVariable(name: "addr", arg: 1, scope: !1139, file: !6, line: 687, type: !22)
!1145 = !DILocalVariable(name: "bucket", scope: !1139, file: !6, line: 688, type: !715)
!1146 = !DILocalVariable(name: "data_location", scope: !1139, file: !6, line: 690, type: !262)
!1147 = !DILocalVariable(name: "prev", scope: !1139, file: !6, line: 691, type: !247)
!1148 = !DILocalVariable(name: "data", scope: !1139, file: !6, line: 692, type: !247)
!1149 = !DILocalVariable(name: "waiters", scope: !1139, file: !6, line: 693, type: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !1151)
!1151 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1152 = !DILocalVariable(name: "temp_list_storage", scope: !1139, file: !6, line: 694, type: !1153)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1024, elements: !1154)
!1154 = !{!1155}
!1155 = !DISubrange(count: 16)
!1156 = !DILocalVariable(name: "temp_list", scope: !1139, file: !6, line: 695, type: !262)
!1157 = !DILocalVariable(name: "max_waiters", scope: !1139, file: !6, line: 696, type: !1150)
!1158 = !DILocalVariable(name: "cur_addr", scope: !1159, file: !6, line: 699, type: !22)
!1159 = distinct !DILexicalBlock(scope: !1139, file: !6, line: 698)
!1160 = !DILocalVariable(name: "next", scope: !1159, file: !6, line: 702, type: !247)
!1161 = !DILocalVariable(name: "temp", scope: !1162, file: !6, line: 711, type: !262)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !6, line: 710)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 710)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !6, line: 703)
!1165 = distinct !DILexicalBlock(scope: !1159, file: !6, line: 703)
!1166 = !DILocalVariable(name: "i", scope: !1167, file: !6, line: 713, type: !1150)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !6, line: 713)
!1168 = !DILocalVariable(name: "i", scope: !1169, file: !6, line: 737, type: !1150)
!1169 = distinct !DILexicalBlock(scope: !1139, file: !6, line: 737)
!1170 = !DILocalVariable(name: "i", scope: !1171, file: !6, line: 742, type: !1150)
!1171 = distinct !DILexicalBlock(scope: !1139, file: !6, line: 742)
!1172 = !DILocation(line: 0, scope: !1139)
!1173 = !DILocation(line: 688, scope: !1139)
!1174 = !DILocation(line: 690, scope: !1139)
!1175 = !DILocation(line: 692, scope: !1139)
!1176 = !DILocation(line: 694, scope: !1139)
!1177 = !DILocation(line: 695, scope: !1139)
!1178 = !DILocation(line: 698, scope: !1139)
!1179 = !DILocation(line: 700, scope: !1159)
!1180 = !DILocation(line: 0, scope: !466, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 700, scope: !1159)
!1182 = !DILocation(line: 201, scope: !466, inlinedAt: !1181)
!1183 = !DILocation(line: 702, scope: !1159)
!1184 = !DILocation(line: 0, scope: !1159)
!1185 = !DILocation(line: 703, scope: !1159)
!1186 = !DILocation(line: 0, scope: !1165)
!1187 = !DILocation(line: 706, scope: !1164)
!1188 = !DILocation(line: 707, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !6, line: 706)
!1190 = distinct !DILexicalBlock(scope: !1164, file: !6, line: 706)
!1191 = !DILocation(line: 708, scope: !1189)
!1192 = !DILocation(line: 710, scope: !1164)
!1193 = !DILocation(line: 0, scope: !1162)
!1194 = !DILocation(line: 712, scope: !1162)
!1195 = !DILocation(line: 0, scope: !1167)
!1196 = !DILocation(line: 713, scope: !1167)
!1197 = !DILocation(line: 716, scope: !1162)
!1198 = !DILocation(line: 717, scope: !1162)
!1199 = !DILocation(line: 714, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !6, line: 713)
!1201 = distinct !DILexicalBlock(scope: !1167, file: !6, line: 713)
!1202 = !DILocation(line: 713, scope: !1201)
!1203 = distinct !{!1203, !1196, !1204, !575}
!1204 = !DILocation(line: 715, scope: !1167)
!1205 = !DILocation(line: 718, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !6, line: 717)
!1207 = distinct !DILexicalBlock(scope: !1162, file: !6, line: 717)
!1208 = !DILocation(line: 719, scope: !1206)
!1209 = !DILocation(line: 722, scope: !1164)
!1210 = !DILocation(line: 724, scope: !1164)
!1211 = !DILocation(line: 0, scope: !692, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 725, scope: !1164)
!1213 = !DILocation(line: 120, scope: !692, inlinedAt: !1212)
!1214 = !DILocation(line: 728, scope: !1164)
!1215 = distinct !{!1215, !1178, !1216, !575}
!1216 = !DILocation(line: 733, scope: !1139)
!1217 = !DILocation(line: 0, scope: !855, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 735, scope: !1139)
!1219 = !DILocation(line: 307, scope: !855, inlinedAt: !1218)
!1220 = !DILocation(line: 0, scope: !866, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 307, scope: !855, inlinedAt: !1218)
!1222 = !DILocation(line: 196, scope: !866, inlinedAt: !1221)
!1223 = !DILocation(line: 310, scope: !855, inlinedAt: !1218)
!1224 = !DILocation(line: 313, scope: !855, inlinedAt: !1218)
!1225 = !DILocation(line: 735, scope: !1139)
!1226 = !DILocation(line: 314, scope: !876, inlinedAt: !1218)
!1227 = !DILocation(line: 315, scope: !876, inlinedAt: !1218)
!1228 = !DILocation(line: 0, scope: !1169)
!1229 = !DILocation(line: 737, scope: !1169)
!1230 = !DILocation(line: 0, scope: !1171)
!1231 = !DILocation(line: 742, scope: !1171)
!1232 = !DILocation(line: 738, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !6, line: 737)
!1234 = distinct !DILexicalBlock(scope: !1169, file: !6, line: 737)
!1235 = !DILocation(line: 0, scope: !698, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 738, scope: !1233)
!1237 = !DILocation(line: 124, scope: !698, inlinedAt: !1236)
!1238 = !DILocation(line: 125, scope: !698, inlinedAt: !1236)
!1239 = !DILocation(line: 737, scope: !1234)
!1240 = distinct !{!1240, !1229, !1241, !575}
!1241 = !DILocation(line: 739, scope: !1169)
!1242 = !DILocation(line: 746, scope: !1139)
!1243 = !DILocation(line: 743, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !6, line: 742)
!1245 = distinct !DILexicalBlock(scope: !1171, file: !6, line: 742)
!1246 = !DILocation(line: 0, scope: !705, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 743, scope: !1244)
!1248 = !DILocation(line: 129, scope: !705, inlinedAt: !1247)
!1249 = !DILocation(line: 742, scope: !1245)
!1250 = distinct !{!1250, !1231, !1251, !575}
!1251 = !DILocation(line: 744, scope: !1171)
!1252 = !DILocation(line: 747, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !6, line: 746)
!1254 = distinct !DILexicalBlock(scope: !1139, file: !6, line: 746)
!1255 = !DILocation(line: 748, scope: !1253)
!1256 = !DILocation(line: 751, scope: !1139)
!1257 = !DILocation(line: 750, scope: !1139)
!1258 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAH_K0AEAUparking_control@1234@0@Z", scope: !2, file: !6, line: 753, type: !1259, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!29, !22, !22, !957, !22}
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1276}
!1262 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1258, file: !6, line: 753, type: !22)
!1263 = !DILocalVariable(name: "control", arg: 3, scope: !1258, file: !6, line: 753, type: !957)
!1264 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1258, file: !6, line: 753, type: !22)
!1265 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1258, file: !6, line: 753, type: !22)
!1266 = !DILocalVariable(name: "buckets", scope: !1258, file: !6, line: 754, type: !755)
!1267 = !DILocalVariable(name: "action", scope: !1258, file: !6, line: 756, type: !274)
!1268 = !DILocalVariable(name: "data_location", scope: !1258, file: !6, line: 762, type: !262)
!1269 = !DILocalVariable(name: "prev", scope: !1258, file: !6, line: 763, type: !247)
!1270 = !DILocalVariable(name: "data", scope: !1258, file: !6, line: 764, type: !247)
!1271 = !DILocalVariable(name: "requeue", scope: !1258, file: !6, line: 765, type: !247)
!1272 = !DILocalVariable(name: "requeue_tail", scope: !1258, file: !6, line: 766, type: !247)
!1273 = !DILocalVariable(name: "wakeup", scope: !1258, file: !6, line: 767, type: !247)
!1274 = !DILocalVariable(name: "cur_addr", scope: !1275, file: !6, line: 770, type: !22)
!1275 = distinct !DILexicalBlock(scope: !1258, file: !6, line: 769)
!1276 = !DILocalVariable(name: "next", scope: !1275, file: !6, line: 773, type: !247)
!1277 = !DILocation(line: 0, scope: !1258)
!1278 = !DILocation(line: 754, scope: !1258)
!1279 = !DILocation(line: 756, scope: !1258)
!1280 = !DILocation(line: 0, scope: !984, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 756, scope: !1258)
!1282 = !DILocation(line: 580, scope: !984, inlinedAt: !1281)
!1283 = !DILocation(line: 757, scope: !1258)
!1284 = !DILocation(line: 758, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !6, line: 757)
!1286 = distinct !DILexicalBlock(scope: !1258, file: !6, line: 757)
!1287 = !DILocation(line: 759, scope: !1285)
!1288 = !DILocation(line: 762, scope: !1258)
!1289 = !DILocation(line: 764, scope: !1258)
!1290 = !DILocation(line: 769, scope: !1258)
!1291 = !DILocation(line: 771, scope: !1275)
!1292 = !DILocation(line: 0, scope: !466, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 771, scope: !1275)
!1294 = !DILocation(line: 201, scope: !466, inlinedAt: !1293)
!1295 = !DILocation(line: 773, scope: !1275)
!1296 = !DILocation(line: 0, scope: !1275)
!1297 = !DILocation(line: 774, scope: !1275)
!1298 = !DILocation(line: 775, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !6, line: 774)
!1300 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 774)
!1301 = !DILocation(line: 777, scope: !1299)
!1302 = !DILocation(line: 778, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !6, line: 777)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !6, line: 777)
!1305 = !DILocation(line: 779, scope: !1303)
!1306 = !DILocation(line: 781, scope: !1299)
!1307 = !DILocation(line: 784, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !6, line: 783)
!1309 = distinct !DILexicalBlock(scope: !1299, file: !6, line: 781)
!1310 = !DILocation(line: 787, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !6, line: 786)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !6, line: 784)
!1313 = !DILocation(line: 788, scope: !1311)
!1314 = !DILocalVariable(name: "val", arg: 2, scope: !1315, file: !6, line: 213, type: !298)
!1315 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "?atomic_store_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPEA_K0@Z", scope: !467, file: !6, line: 213, type: !1316, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !298, !298}
!1318 = !{!1314, !1319}
!1319 = !DILocalVariable(name: "addr", arg: 1, scope: !1315, file: !6, line: 213, type: !298)
!1320 = !DILocation(line: 0, scope: !1315, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 791, scope: !1308)
!1322 = !DILocation(line: 214, scope: !1315, inlinedAt: !1321)
!1323 = !DILocation(line: 792, scope: !1308)
!1324 = !DILocation(line: 765, scope: !1258)
!1325 = !DILocation(line: 766, scope: !1258)
!1326 = distinct !{!1326, !1290, !1327, !575}
!1327 = !DILocation(line: 800, scope: !1258)
!1328 = !DILocation(line: 802, scope: !1258)
!1329 = !DILocation(line: 803, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !6, line: 802)
!1331 = distinct !DILexicalBlock(scope: !1258, file: !6, line: 802)
!1332 = !DILocation(line: 804, scope: !1330)
!1333 = !DILocation(line: 807, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !6, line: 806)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !6, line: 804)
!1336 = !DILocation(line: 808, scope: !1334)
!1337 = !DILocation(line: 0, scope: !1335)
!1338 = !DILocation(line: 809, scope: !1330)
!1339 = !DILocation(line: 810, scope: !1330)
!1340 = !DILocation(line: 812, scope: !1258)
!1341 = !{!995, !396, i64 24}
!1342 = !DILocation(line: 814, scope: !1258)
!1343 = !DILocation(line: 815, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 814)
!1345 = distinct !DILexicalBlock(scope: !1258, file: !6, line: 814)
!1346 = !DILocation(line: 0, scope: !692, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 816, scope: !1344)
!1348 = !DILocation(line: 120, scope: !692, inlinedAt: !1347)
!1349 = !DILocation(line: 817, scope: !1344)
!1350 = !DILocation(line: 0, scope: !698, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 818, scope: !1344)
!1352 = !DILocation(line: 124, scope: !698, inlinedAt: !1351)
!1353 = !DILocation(line: 125, scope: !698, inlinedAt: !1351)
!1354 = !DILocation(line: 0, scope: !705, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 819, scope: !1344)
!1356 = !DILocation(line: 129, scope: !705, inlinedAt: !1355)
!1357 = !DILocation(line: 820, scope: !1344)
!1358 = !DILocation(line: 821, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1345, file: !6, line: 820)
!1360 = !DILocation(line: 822, scope: !1359)
!1361 = !DILocation(line: 824, scope: !1258)
!1362 = !DILocation(line: 825, scope: !1258)
!1363 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 840, type: !271, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1364)
!1364 = !{!1365, !1366, !1367, !1368}
!1365 = !DILocalVariable(name: "action", arg: 2, scope: !1363, file: !6, line: 840, type: !273)
!1366 = !DILocalVariable(name: "control", arg: 1, scope: !1363, file: !6, line: 840, type: !43)
!1367 = !DILocalVariable(name: "mutex_control", scope: !1363, file: !6, line: 841, type: !263)
!1368 = !DILocalVariable(name: "result", scope: !1363, file: !6, line: 843, type: !22)
!1369 = !DILocation(line: 0, scope: !1363)
!1370 = !DILocation(line: 844, scope: !1363)
!1371 = !{!1372, !396, i64 32}
!1372 = !{!"?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@", !396, i64 32}
!1373 = !DILocation(line: 0, scope: !466, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 844, scope: !1363)
!1375 = !DILocation(line: 201, scope: !466, inlinedAt: !1374)
!1376 = !DILocation(line: 845, scope: !1363)
!1377 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 849, type: !285, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383}
!1379 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1377, file: !6, line: 849, type: !64)
!1380 = !DILocalVariable(name: "unparked", arg: 2, scope: !1377, file: !6, line: 849, type: !29)
!1381 = !DILocalVariable(name: "control", arg: 1, scope: !1377, file: !6, line: 849, type: !43)
!1382 = !DILocalVariable(name: "mutex_control", scope: !1377, file: !6, line: 850, type: !263)
!1383 = !DILocalVariable(name: "return_state", scope: !1377, file: !6, line: 853, type: !22)
!1384 = !DILocation(line: 0, scope: !1377)
!1385 = !DILocation(line: 853, scope: !1377)
!1386 = !DILocation(line: 854, scope: !1377)
!1387 = !DILocalVariable(name: "val", arg: 2, scope: !1388, file: !6, line: 218, type: !470)
!1388 = distinct !DISubprogram(name: "atomic_store_release<unsigned long long>", linkageName: "??$atomic_store_release@_K@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPEA_K0@Z", scope: !467, file: !6, line: 218, type: !468, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !473, retainedNodes: !1389)
!1389 = !{!1387, !1390}
!1390 = !DILocalVariable(name: "addr", arg: 1, scope: !1388, file: !6, line: 218, type: !470)
!1391 = !DILocation(line: 0, scope: !1388, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 854, scope: !1377)
!1393 = !DILocation(line: 219, scope: !1388, inlinedAt: !1392)
!1394 = !DILocation(line: 856, scope: !1377)
!1395 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 968, type: !285, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401}
!1397 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1395, file: !6, line: 968, type: !64)
!1398 = !DILocalVariable(name: "unparked", arg: 2, scope: !1395, file: !6, line: 968, type: !29)
!1399 = !DILocalVariable(name: "control", arg: 1, scope: !1395, file: !6, line: 968, type: !43)
!1400 = !DILocalVariable(name: "signal_control", scope: !1395, file: !6, line: 969, type: !303)
!1401 = !DILocalVariable(name: "val", scope: !1402, file: !6, line: 972, type: !22)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !6, line: 971)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !6, line: 971)
!1404 = !DILocation(line: 0, scope: !1395)
!1405 = !DILocation(line: 971, scope: !1395)
!1406 = !DILocation(line: 0, scope: !1402)
!1407 = !DILocation(line: 973, scope: !1402)
!1408 = !{!1409, !396, i64 32}
!1409 = !{!"?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@", !396, i64 32, !396, i64 40}
!1410 = !DILocation(line: 0, scope: !1315, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 973, scope: !1402)
!1412 = !DILocation(line: 214, scope: !1315, inlinedAt: !1411)
!1413 = !DILocation(line: 974, scope: !1402)
!1414 = !DILocation(line: 979, scope: !1395)
!1415 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 996, type: !271, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1416)
!1416 = !{!1417, !1418, !1419, !1420}
!1417 = !DILocalVariable(name: "action", arg: 2, scope: !1415, file: !6, line: 996, type: !273)
!1418 = !DILocalVariable(name: "control", arg: 1, scope: !1415, file: !6, line: 996, type: !43)
!1419 = !DILocalVariable(name: "broadcast_control", scope: !1415, file: !6, line: 997, type: !328)
!1420 = !DILocalVariable(name: "val", scope: !1415, file: !6, line: 999, type: !22)
!1421 = !DILocation(line: 0, scope: !1415)
!1422 = !DILocation(line: 1000, scope: !1415)
!1423 = !{!1424, !396, i64 32}
!1424 = !{!"?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@", !396, i64 32, !396, i64 40}
!1425 = !DILocation(line: 0, scope: !466, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 1000, scope: !1415)
!1427 = !DILocation(line: 201, scope: !466, inlinedAt: !1426)
!1428 = !DILocation(line: 1004, scope: !1415)
!1429 = !{!1424, !396, i64 40}
!1430 = !DILocation(line: 0, scope: !1315, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 1009, scope: !1415)
!1432 = !DILocation(line: 214, scope: !1315, inlinedAt: !1431)
!1433 = !DILocation(line: 1011, scope: !1415)
!1434 = !DILocalVariable(name: "this", arg: 1, scope: !1435, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1435 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "?make_parked_if_locked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAA_NXZ", scope: !310, file: !6, line: 938, type: !321, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !320, retainedNodes: !1436)
!1436 = !{!1434, !1437, !1438}
!1437 = !DILocalVariable(name: "val", scope: !1435, file: !6, line: 939, type: !22)
!1438 = !DILocalVariable(name: "desired", scope: !1439, file: !6, line: 946, type: !22)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !6, line: 941)
!1440 = !DILocation(line: 0, scope: !1435, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 1011, scope: !1415)
!1442 = !DILocation(line: 940, scope: !1435, inlinedAt: !1441)
!1443 = !DILocation(line: 0, scope: !466, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 940, scope: !1435, inlinedAt: !1441)
!1445 = !DILocation(line: 201, scope: !466, inlinedAt: !1444)
!1446 = !DILocation(line: 942, scope: !1439, inlinedAt: !1441)
!1447 = !DILocation(line: 946, scope: !1439, inlinedAt: !1441)
!1448 = !DILocation(line: 0, scope: !1439, inlinedAt: !1441)
!1449 = !DILocalVariable(name: "desired", arg: 3, scope: !1450, file: !6, line: 187, type: !298)
!1450 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "?atomic_cas_weak_relaxed_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !467, file: !6, line: 187, type: !484, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1451)
!1451 = !{!1449, !1452, !1453}
!1452 = !DILocalVariable(name: "expected", arg: 2, scope: !1450, file: !6, line: 187, type: !298)
!1453 = !DILocalVariable(name: "addr", arg: 1, scope: !1450, file: !6, line: 187, type: !298)
!1454 = !DILocation(line: 0, scope: !1450, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 947, scope: !1439, inlinedAt: !1441)
!1456 = !DILocation(line: 188, scope: !1450, inlinedAt: !1455)
!1457 = !DILocation(line: 1013, scope: !1415)
!1458 = !DILocation(line: 1014, scope: !1415)
!1459 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPEAXAEBUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 1016, type: !289, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465}
!1461 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1459, file: !6, line: 1016, type: !64)
!1462 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1459, file: !6, line: 1016, type: !64)
!1463 = !DILocalVariable(name: "action", arg: 2, scope: !1459, file: !6, line: 1016, type: !291)
!1464 = !DILocalVariable(name: "control", arg: 1, scope: !1459, file: !6, line: 1016, type: !43)
!1465 = !DILocalVariable(name: "broadcast_control", scope: !1459, file: !6, line: 1017, type: !328)
!1466 = !DILocation(line: 0, scope: !1459)
!1467 = !DILocation(line: 1019, scope: !1459)
!1468 = !DILocation(line: 1020, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 1019)
!1470 = distinct !DILexicalBlock(scope: !1459, file: !6, line: 1019)
!1471 = !DILocalVariable(name: "this", arg: 1, scope: !1472, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1472 = distinct !DISubprogram(name: "make_parked", linkageName: "?make_parked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 953, type: !314, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !323, retainedNodes: !1473)
!1473 = !{!1471}
!1474 = !DILocation(line: 0, scope: !1472, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 1020, scope: !1469)
!1476 = !DILocation(line: 954, scope: !1472, inlinedAt: !1475)
!1477 = !DILocalVariable(name: "val", arg: 2, scope: !1478, file: !6, line: 209, type: !22)
!1478 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "?atomic_or_fetch_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_KPEA_K_K@Z", scope: !467, file: !6, line: 209, type: !683, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1479)
!1479 = !{!1477, !1480}
!1480 = !DILocalVariable(name: "addr", arg: 1, scope: !1478, file: !6, line: 209, type: !298)
!1481 = !DILocation(line: 0, scope: !1478, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 954, scope: !1472, inlinedAt: !1475)
!1483 = !DILocation(line: 210, scope: !1478, inlinedAt: !1482)
!1484 = !DILocation(line: 1021, scope: !1469)
!1485 = !DILocation(line: 1022, scope: !1459)
!1486 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPEAXAEAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 1038, type: !271, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1487)
!1487 = !{!1488, !1489, !1490, !1491}
!1488 = !DILocalVariable(name: "action", arg: 2, scope: !1486, file: !6, line: 1038, type: !273)
!1489 = !DILocalVariable(name: "control", arg: 1, scope: !1486, file: !6, line: 1038, type: !43)
!1490 = !DILocalVariable(name: "wait_control", scope: !1486, file: !6, line: 1039, type: !338)
!1491 = !DILocalVariable(name: "val", scope: !1486, file: !6, line: 1041, type: !22)
!1492 = !DILocation(line: 0, scope: !1486)
!1493 = !DILocation(line: 1042, scope: !1486)
!1494 = !{!1495, !396, i64 32}
!1495 = !{!"?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@", !396, i64 32, !396, i64 40}
!1496 = !DILocation(line: 0, scope: !466, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 1042, scope: !1486)
!1498 = !DILocation(line: 201, scope: !466, inlinedAt: !1497)
!1499 = !DILocation(line: 1044, scope: !1486)
!1500 = !DILocation(line: 0, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1486, file: !6, line: 1044)
!1502 = !{!1495, !396, i64 40}
!1503 = !DILocation(line: 0, scope: !1315, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 1046, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !6, line: 1044)
!1506 = !DILocation(line: 214, scope: !1315, inlinedAt: !1504)
!1507 = !DILocation(line: 1047, scope: !1505)
!1508 = !DILocation(line: 1047, scope: !1501)
!1509 = !DILocation(line: 1049, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !6, line: 1047)
!1511 = distinct !DILexicalBlock(scope: !1501, file: !6, line: 1047)
!1512 = !DILocation(line: 1050, scope: !1510)
!1513 = !DILocation(line: 1054, scope: !1486)
!1514 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1515)
!1515 = !{!1516, !1517}
!1516 = !DILocalVariable(name: "control", arg: 1, scope: !1514, file: !6, line: 1056, type: !43)
!1517 = !DILocalVariable(name: "wait_control", scope: !1514, file: !6, line: 1057, type: !338)
!1518 = !DILocation(line: 0, scope: !1514)
!1519 = !DILocation(line: 1059, scope: !1514)
!1520 = !DILocalVariable(name: "this", arg: 1, scope: !1521, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1521 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 929, type: !314, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !319, retainedNodes: !1522)
!1522 = !{!1520, !1523, !1524}
!1523 = !DILocalVariable(name: "expected", scope: !1521, file: !6, line: 930, type: !22)
!1524 = !DILocalVariable(name: "desired", scope: !1521, file: !6, line: 931, type: !22)
!1525 = !DILocation(line: 0, scope: !1521, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 1059, scope: !1514)
!1527 = !DILocation(line: 933, scope: !1521, inlinedAt: !1526)
!1528 = !DILocation(line: 0, scope: !554, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 933, scope: !1521, inlinedAt: !1526)
!1530 = !DILocation(line: 184, scope: !554, inlinedAt: !1529)
!1531 = !DILocalVariable(name: "this", arg: 1, scope: !1532, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1532 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !310, file: !6, line: 906, type: !314, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !317, retainedNodes: !1533)
!1533 = !{!1531, !1534, !1535, !1536}
!1534 = !DILocalVariable(name: "expected", scope: !1532, file: !6, line: 907, type: !22)
!1535 = !DILocalVariable(name: "desired", scope: !1532, file: !6, line: 908, type: !22)
!1536 = !DILocalVariable(name: "control", scope: !1532, file: !6, line: 915, type: !264)
!1537 = !DILocation(line: 0, scope: !1532, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 934, scope: !1539, inlinedAt: !1526)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !6, line: 933)
!1540 = distinct !DILexicalBlock(scope: !1521, file: !6, line: 933)
!1541 = !DILocalVariable(name: "desired", arg: 3, scope: !1542, file: !6, line: 174, type: !298)
!1542 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "?atomic_cas_strong_release_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPEA_K00@Z", scope: !467, file: !6, line: 174, type: !484, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1543)
!1543 = !{!1541, !1544, !1545}
!1544 = !DILocalVariable(name: "expected", arg: 2, scope: !1542, file: !6, line: 174, type: !298)
!1545 = !DILocalVariable(name: "addr", arg: 1, scope: !1542, file: !6, line: 174, type: !298)
!1546 = !DILocation(line: 0, scope: !1542, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 911, scope: !1532, inlinedAt: !1538)
!1548 = !DILocation(line: 175, scope: !1542, inlinedAt: !1547)
!1549 = !DILocation(line: 911, scope: !1532, inlinedAt: !1538)
!1550 = !DILocation(line: 915, scope: !1532, inlinedAt: !1538)
!1551 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1552, file: !6, line: 832, type: !298)
!1552 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "??0mutex_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_K@Z", scope: !264, file: !6, line: 832, type: !300, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !299, retainedNodes: !1553)
!1553 = !{!1551, !1554}
!1554 = !DILocalVariable(name: "this", arg: 1, scope: !1552, type: !263, flags: DIFlagArtificial | DIFlagObjectPointer)
!1555 = !DILocation(line: 0, scope: !1552, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 915, scope: !1532, inlinedAt: !1538)
!1557 = !DILocalVariable(name: "this", arg: 1, scope: !1558, type: !1560, flags: DIFlagArtificial | DIFlagObjectPointer)
!1558 = distinct !DISubprogram(name: "parking_control", linkageName: "??0parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@XZ", scope: !267, file: !6, line: 598, type: !294, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !293, retainedNodes: !1559)
!1559 = !{!1557}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1561 = !DILocation(line: 0, scope: !1558, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 833, scope: !1552, inlinedAt: !1556)
!1563 = !DILocation(line: 600, scope: !1558, inlinedAt: !1562)
!1564 = !DILocation(line: 833, scope: !1552, inlinedAt: !1556)
!1565 = !DILocation(line: 834, scope: !1566, inlinedAt: !1556)
!1566 = distinct !DILexicalBlock(scope: !1552, file: !6, line: 833)
!1567 = !DILocation(line: 835, scope: !1566, inlinedAt: !1556)
!1568 = !DILocation(line: 916, scope: !1532, inlinedAt: !1538)
!1569 = !DILocation(line: 917, scope: !1532, inlinedAt: !1538)
!1570 = !DILocation(line: 1060, scope: !1514)
!1571 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YA_KPEAXH_N@Z", scope: !2, file: !6, line: 1062, type: !285, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1577}
!1573 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1571, file: !6, line: 1062, type: !64)
!1574 = !DILocalVariable(name: "unparked", arg: 2, scope: !1571, file: !6, line: 1062, type: !29)
!1575 = !DILocalVariable(name: "control", arg: 1, scope: !1571, file: !6, line: 1062, type: !43)
!1576 = !DILocalVariable(name: "wait_control", scope: !1571, file: !6, line: 1063, type: !338)
!1577 = !DILocalVariable(name: "val", scope: !1578, file: !6, line: 1066, type: !22)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !6, line: 1065)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !6, line: 1065)
!1580 = !DILocation(line: 0, scope: !1571)
!1581 = !DILocation(line: 1065, scope: !1571)
!1582 = !DILocation(line: 0, scope: !1578)
!1583 = !DILocation(line: 1067, scope: !1578)
!1584 = !DILocation(line: 0, scope: !1315, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 1067, scope: !1578)
!1586 = !DILocation(line: 214, scope: !1315, inlinedAt: !1585)
!1587 = !DILocation(line: 1068, scope: !1578)
!1588 = !DILocation(line: 1069, scope: !1571)
!1589 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1590, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !365}
!1592 = !{!1593, !1594}
!1593 = !DILocalVariable(name: "mutex", arg: 1, scope: !1589, file: !6, line: 1131, type: !365)
!1594 = !DILocalVariable(name: "fast_mutex", scope: !1589, file: !6, line: 1132, type: !309)
!1595 = !DILocation(line: 0, scope: !1589)
!1596 = !DILocalVariable(name: "this", arg: 1, scope: !1597, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1597 = distinct !DISubprogram(name: "lock", linkageName: "?lock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !310, file: !6, line: 920, type: !314, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !318, retainedNodes: !1598)
!1598 = !{!1596, !1599, !1600}
!1599 = !DILocalVariable(name: "expected", scope: !1597, file: !6, line: 921, type: !22)
!1600 = !DILocalVariable(name: "desired", scope: !1597, file: !6, line: 922, type: !22)
!1601 = !DILocation(line: 0, scope: !1597, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1134, scope: !1589)
!1603 = !DILocation(line: 924, scope: !1597, inlinedAt: !1602)
!1604 = !DILocation(line: 0, scope: !483, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 924, scope: !1597, inlinedAt: !1602)
!1606 = !DILocation(line: 192, scope: !483, inlinedAt: !1605)
!1607 = !DILocalVariable(name: "this", arg: 1, scope: !1608, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!1608 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AEAAXXZ", scope: !310, file: !6, line: 862, type: !314, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !313, retainedNodes: !1609)
!1609 = !{!1607, !1610, !1611, !1612, !1616, !1619, !1620}
!1610 = !DILocalVariable(name: "spinner", scope: !1608, file: !6, line: 864, type: !444)
!1611 = !DILocalVariable(name: "expected", scope: !1608, file: !6, line: 865, type: !22)
!1612 = !DILocalVariable(name: "desired", scope: !1613, file: !6, line: 870, type: !22)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !6, line: 869)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !6, line: 869)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !6, line: 868)
!1616 = !DILocalVariable(name: "desired", scope: !1617, file: !6, line: 888, type: !22)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !6, line: 887)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !6, line: 887)
!1619 = !DILocalVariable(name: "control", scope: !1615, file: !6, line: 895, type: !264)
!1620 = !DILocalVariable(name: "result", scope: !1615, file: !6, line: 896, type: !22)
!1621 = !DILocation(line: 0, scope: !1608, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 925, scope: !1623, inlinedAt: !1602)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !6, line: 924)
!1624 = distinct !DILexicalBlock(scope: !1597, file: !6, line: 924)
!1625 = !DILocation(line: 0, scope: !466, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 866, scope: !1608, inlinedAt: !1622)
!1627 = !DILocation(line: 201, scope: !466, inlinedAt: !1626)
!1628 = !DILocation(line: 868, scope: !1608, inlinedAt: !1622)
!1629 = !DILocation(line: 869, scope: !1615, inlinedAt: !1622)
!1630 = !DILocation(line: 870, scope: !1613, inlinedAt: !1622)
!1631 = !DILocation(line: 0, scope: !1613, inlinedAt: !1622)
!1632 = !DILocation(line: 0, scope: !483, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 871, scope: !1613, inlinedAt: !1622)
!1634 = !DILocation(line: 192, scope: !483, inlinedAt: !1633)
!1635 = !DILocation(line: 238, scope: !494, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 880, scope: !1615, inlinedAt: !1622)
!1637 = !DILocation(line: 0, scope: !494, inlinedAt: !1636)
!1638 = !DILocation(line: 241, scope: !494, inlinedAt: !1636)
!1639 = !DILocation(line: 880, scope: !1615, inlinedAt: !1622)
!1640 = !DILocation(line: 239, scope: !501, inlinedAt: !1636)
!1641 = !DILocation(line: 881, scope: !1642, inlinedAt: !1622)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !6, line: 880)
!1643 = distinct !DILexicalBlock(scope: !1615, file: !6, line: 880)
!1644 = !DILocation(line: 0, scope: !466, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 882, scope: !1642, inlinedAt: !1622)
!1646 = !DILocation(line: 201, scope: !466, inlinedAt: !1645)
!1647 = !DILocation(line: 883, scope: !1642, inlinedAt: !1622)
!1648 = !DILocation(line: 887, scope: !1615, inlinedAt: !1622)
!1649 = !DILocation(line: 888, scope: !1617, inlinedAt: !1622)
!1650 = !DILocation(line: 0, scope: !1617, inlinedAt: !1622)
!1651 = !DILocation(line: 0, scope: !1450, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 889, scope: !1617, inlinedAt: !1622)
!1653 = !DILocation(line: 188, scope: !1450, inlinedAt: !1652)
!1654 = !DILocation(line: 895, scope: !1615, inlinedAt: !1622)
!1655 = !DILocation(line: 0, scope: !1552, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 895, scope: !1615, inlinedAt: !1622)
!1657 = !DILocation(line: 0, scope: !1558, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 833, scope: !1552, inlinedAt: !1656)
!1659 = !DILocation(line: 600, scope: !1558, inlinedAt: !1658)
!1660 = !DILocation(line: 833, scope: !1552, inlinedAt: !1656)
!1661 = !DILocation(line: 834, scope: !1566, inlinedAt: !1656)
!1662 = !DILocation(line: 835, scope: !1566, inlinedAt: !1656)
!1663 = !DILocation(line: 896, scope: !1615, inlinedAt: !1622)
!1664 = !DILocation(line: 0, scope: !1615, inlinedAt: !1622)
!1665 = !DILocation(line: 897, scope: !1615, inlinedAt: !1622)
!1666 = !DILocation(line: 0, scope: !466, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 902, scope: !1615, inlinedAt: !1622)
!1668 = !DILocation(line: 201, scope: !466, inlinedAt: !1667)
!1669 = !DILocation(line: 903, scope: !1615, inlinedAt: !1622)
!1670 = distinct !{!1670, !1628, !1671}
!1671 = !DILocation(line: 903, scope: !1608, inlinedAt: !1622)
!1672 = !DILocation(line: 1135, scope: !1589)
!1673 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1590, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1674)
!1674 = !{!1675, !1676}
!1675 = !DILocalVariable(name: "mutex", arg: 1, scope: !1673, file: !6, line: 1137, type: !365)
!1676 = !DILocalVariable(name: "fast_mutex", scope: !1673, file: !6, line: 1138, type: !309)
!1677 = !DILocation(line: 0, scope: !1673)
!1678 = !DILocation(line: 0, scope: !1521, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 1140, scope: !1673)
!1680 = !DILocation(line: 933, scope: !1521, inlinedAt: !1679)
!1681 = !DILocation(line: 0, scope: !554, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 933, scope: !1521, inlinedAt: !1679)
!1683 = !DILocation(line: 184, scope: !554, inlinedAt: !1682)
!1684 = !DILocation(line: 0, scope: !1532, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 934, scope: !1539, inlinedAt: !1679)
!1686 = !DILocation(line: 0, scope: !1542, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 911, scope: !1532, inlinedAt: !1685)
!1688 = !DILocation(line: 175, scope: !1542, inlinedAt: !1687)
!1689 = !DILocation(line: 911, scope: !1532, inlinedAt: !1685)
!1690 = !DILocation(line: 915, scope: !1532, inlinedAt: !1685)
!1691 = !DILocation(line: 0, scope: !1552, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 915, scope: !1532, inlinedAt: !1685)
!1693 = !DILocation(line: 0, scope: !1558, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 833, scope: !1552, inlinedAt: !1692)
!1695 = !DILocation(line: 600, scope: !1558, inlinedAt: !1694)
!1696 = !DILocation(line: 833, scope: !1552, inlinedAt: !1692)
!1697 = !DILocation(line: 834, scope: !1566, inlinedAt: !1692)
!1698 = !DILocation(line: 835, scope: !1566, inlinedAt: !1692)
!1699 = !DILocation(line: 916, scope: !1532, inlinedAt: !1685)
!1700 = !DILocation(line: 917, scope: !1532, inlinedAt: !1685)
!1701 = !DILocation(line: 1141, scope: !1673)
!1702 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !1703, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1706)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1706 = !{!1707, !1708}
!1707 = !DILocalVariable(name: "cond", arg: 1, scope: !1702, file: !6, line: 1143, type: !1705)
!1708 = !DILocalVariable(name: "fast_cond", scope: !1702, file: !6, line: 1144, type: !348)
!1709 = !DILocation(line: 0, scope: !1702)
!1710 = !DILocalVariable(name: "this", arg: 1, scope: !1711, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1711 = distinct !DISubprogram(name: "broadcast", linkageName: "?broadcast@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !349, file: !6, line: 1092, type: !353, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !357, retainedNodes: !1712)
!1712 = !{!1710, !1713, !1714}
!1713 = !DILocalVariable(name: "val", scope: !1711, file: !6, line: 1094, type: !22)
!1714 = !DILocalVariable(name: "control", scope: !1711, file: !6, line: 1100, type: !329)
!1715 = !DILocation(line: 0, scope: !1711, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 1146, scope: !1702)
!1717 = !DILocation(line: 1095, scope: !1711, inlinedAt: !1716)
!1718 = !DILocation(line: 0, scope: !466, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 1095, scope: !1711, inlinedAt: !1716)
!1720 = !DILocation(line: 201, scope: !466, inlinedAt: !1719)
!1721 = !DILocation(line: 1096, scope: !1711, inlinedAt: !1716)
!1722 = !DILocation(line: 1100, scope: !1711, inlinedAt: !1716)
!1723 = !DILocalVariable(name: "mutex", arg: 3, scope: !1724, file: !6, line: 989, type: !309)
!1724 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "??0broadcast_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_KPEAVfast_mutex@1234@@Z", scope: !329, file: !6, line: 989, type: !335, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !334, retainedNodes: !1725)
!1725 = !{!1723, !1726, !1727}
!1726 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1724, file: !6, line: 989, type: !298)
!1727 = !DILocalVariable(name: "this", arg: 1, scope: !1724, type: !328, flags: DIFlagArtificial | DIFlagObjectPointer)
!1728 = !DILocation(line: 0, scope: !1724, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 1100, scope: !1711, inlinedAt: !1716)
!1730 = !DILocation(line: 0, scope: !1558, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 990, scope: !1724, inlinedAt: !1729)
!1732 = !DILocation(line: 600, scope: !1558, inlinedAt: !1731)
!1733 = !DILocation(line: 990, scope: !1724, inlinedAt: !1729)
!1734 = !DILocation(line: 991, scope: !1735, inlinedAt: !1729)
!1735 = distinct !DILexicalBlock(scope: !1724, file: !6, line: 990)
!1736 = !DILocation(line: 992, scope: !1735, inlinedAt: !1729)
!1737 = !DILocation(line: 1101, scope: !1711, inlinedAt: !1716)
!1738 = !DILocation(line: 1103, scope: !1711, inlinedAt: !1716)
!1739 = !DILocation(line: 1147, scope: !1702)
!1740 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !1703, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1741)
!1741 = !{!1742, !1743}
!1742 = !DILocalVariable(name: "cond", arg: 1, scope: !1740, file: !6, line: 1149, type: !1705)
!1743 = !DILocalVariable(name: "fast_cond", scope: !1740, file: !6, line: 1150, type: !348)
!1744 = !DILocation(line: 0, scope: !1740)
!1745 = !DILocalVariable(name: "this", arg: 1, scope: !1746, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1746 = distinct !DISubprogram(name: "signal", linkageName: "?signal@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXXZ", scope: !349, file: !6, line: 1078, type: !353, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !356, retainedNodes: !1747)
!1747 = !{!1745, !1748, !1749}
!1748 = !DILocalVariable(name: "val", scope: !1746, file: !6, line: 1081, type: !22)
!1749 = !DILocalVariable(name: "control", scope: !1746, file: !6, line: 1087, type: !304)
!1750 = !DILocation(line: 0, scope: !1746, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 1152, scope: !1740)
!1752 = !DILocation(line: 1082, scope: !1746, inlinedAt: !1751)
!1753 = !DILocation(line: 0, scope: !466, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 1082, scope: !1746, inlinedAt: !1751)
!1755 = !DILocation(line: 201, scope: !466, inlinedAt: !1754)
!1756 = !DILocation(line: 1083, scope: !1746, inlinedAt: !1751)
!1757 = !DILocation(line: 1087, scope: !1746, inlinedAt: !1751)
!1758 = !DILocalVariable(name: "mutex", arg: 3, scope: !1759, file: !6, line: 962, type: !309)
!1759 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "??0signal_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_KPEAVfast_mutex@1234@@Z", scope: !304, file: !6, line: 962, type: !325, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !324, retainedNodes: !1760)
!1760 = !{!1758, !1761, !1762}
!1761 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1759, file: !6, line: 962, type: !298)
!1762 = !DILocalVariable(name: "this", arg: 1, scope: !1759, type: !303, flags: DIFlagArtificial | DIFlagObjectPointer)
!1763 = !DILocation(line: 0, scope: !1759, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 1087, scope: !1746, inlinedAt: !1751)
!1765 = !DILocation(line: 0, scope: !1558, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 963, scope: !1759, inlinedAt: !1764)
!1767 = !DILocation(line: 600, scope: !1558, inlinedAt: !1766)
!1768 = !DILocation(line: 963, scope: !1759, inlinedAt: !1764)
!1769 = !{!1409, !396, i64 40}
!1770 = !DILocation(line: 964, scope: !1771, inlinedAt: !1764)
!1771 = distinct !DILexicalBlock(scope: !1759, file: !6, line: 963)
!1772 = !DILocation(line: 1088, scope: !1746, inlinedAt: !1751)
!1773 = !DILocation(line: 1090, scope: !1746, inlinedAt: !1751)
!1774 = !DILocation(line: 1153, scope: !1740)
!1775 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !1776, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1705, !365}
!1778 = !{!1779, !1780, !1781, !1782}
!1779 = !DILocalVariable(name: "mutex", arg: 2, scope: !1775, file: !6, line: 1155, type: !365)
!1780 = !DILocalVariable(name: "cond", arg: 1, scope: !1775, file: !6, line: 1155, type: !1705)
!1781 = !DILocalVariable(name: "fast_cond", scope: !1775, file: !6, line: 1156, type: !348)
!1782 = !DILocalVariable(name: "fast_mutex", scope: !1775, file: !6, line: 1158, type: !309)
!1783 = !DILocation(line: 0, scope: !1775)
!1784 = !DILocalVariable(name: "mutex", arg: 2, scope: !1785, file: !6, line: 1105, type: !309)
!1785 = distinct !DISubprogram(name: "wait", linkageName: "?wait@fast_cond@Synchronization@Internal@Runtime@Halide@@QEAAXPEAVfast_mutex@2345@@Z", scope: !349, file: !6, line: 1105, type: !359, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !358, retainedNodes: !1786)
!1786 = !{!1784, !1787, !1788, !1789, !1790}
!1787 = !DILocalVariable(name: "this", arg: 1, scope: !1785, type: !348, flags: DIFlagArtificial | DIFlagObjectPointer)
!1788 = !DILocalVariable(name: "control", scope: !1785, file: !6, line: 1106, type: !339)
!1789 = !DILocalVariable(name: "result", scope: !1785, file: !6, line: 1107, type: !22)
!1790 = !DILocalVariable(name: "val", scope: !1791, file: !6, line: 1114, type: !22)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !6, line: 1110)
!1792 = distinct !DILexicalBlock(scope: !1785, file: !6, line: 1108)
!1793 = !DILocation(line: 0, scope: !1785, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 1160, scope: !1775)
!1795 = !DILocation(line: 1106, scope: !1785, inlinedAt: !1794)
!1796 = !DILocalVariable(name: "mutex", arg: 3, scope: !1797, file: !6, line: 1030, type: !309)
!1797 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "??0wait_parking_control@Synchronization@Internal@Runtime@Halide@@QEAA@PEA_KPEAVfast_mutex@1234@@Z", scope: !339, file: !6, line: 1030, type: !345, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !344, retainedNodes: !1798)
!1798 = !{!1796, !1799, !1800}
!1799 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1797, file: !6, line: 1030, type: !298)
!1800 = !DILocalVariable(name: "this", arg: 1, scope: !1797, type: !338, flags: DIFlagArtificial | DIFlagObjectPointer)
!1801 = !DILocation(line: 0, scope: !1797, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 1106, scope: !1785, inlinedAt: !1794)
!1803 = !DILocation(line: 0, scope: !1558, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 1031, scope: !1797, inlinedAt: !1802)
!1805 = !DILocation(line: 600, scope: !1558, inlinedAt: !1804)
!1806 = !DILocation(line: 1031, scope: !1797, inlinedAt: !1802)
!1807 = !DILocation(line: 1032, scope: !1808, inlinedAt: !1802)
!1808 = distinct !DILexicalBlock(scope: !1797, file: !6, line: 1031)
!1809 = !DILocation(line: 1033, scope: !1808, inlinedAt: !1802)
!1810 = !DILocation(line: 1034, scope: !1808, inlinedAt: !1802)
!1811 = !DILocation(line: 1107, scope: !1785, inlinedAt: !1794)
!1812 = !DILocation(line: 1108, scope: !1785, inlinedAt: !1794)
!1813 = !DILocation(line: 0, scope: !1792, inlinedAt: !1794)
!1814 = !DILocation(line: 0, scope: !1597, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 1109, scope: !1816, inlinedAt: !1794)
!1816 = distinct !DILexicalBlock(scope: !1792, file: !6, line: 1108)
!1817 = !DILocation(line: 0, scope: !483, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 924, scope: !1597, inlinedAt: !1815)
!1819 = !DILocation(line: 192, scope: !483, inlinedAt: !1818)
!1820 = !DILocation(line: 924, scope: !1597, inlinedAt: !1815)
!1821 = !DILocation(line: 0, scope: !1608, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 925, scope: !1623, inlinedAt: !1815)
!1823 = !DILocation(line: 0, scope: !466, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 866, scope: !1608, inlinedAt: !1822)
!1825 = !DILocation(line: 201, scope: !466, inlinedAt: !1824)
!1826 = !DILocation(line: 868, scope: !1608, inlinedAt: !1822)
!1827 = !DILocation(line: 869, scope: !1615, inlinedAt: !1822)
!1828 = !DILocation(line: 870, scope: !1613, inlinedAt: !1822)
!1829 = !DILocation(line: 0, scope: !1613, inlinedAt: !1822)
!1830 = !DILocation(line: 0, scope: !483, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 871, scope: !1613, inlinedAt: !1822)
!1832 = !DILocation(line: 192, scope: !483, inlinedAt: !1831)
!1833 = !DILocation(line: 238, scope: !494, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 880, scope: !1615, inlinedAt: !1822)
!1835 = !DILocation(line: 0, scope: !494, inlinedAt: !1834)
!1836 = !DILocation(line: 241, scope: !494, inlinedAt: !1834)
!1837 = !DILocation(line: 880, scope: !1615, inlinedAt: !1822)
!1838 = !DILocation(line: 239, scope: !501, inlinedAt: !1834)
!1839 = !DILocation(line: 881, scope: !1642, inlinedAt: !1822)
!1840 = !DILocation(line: 0, scope: !466, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 882, scope: !1642, inlinedAt: !1822)
!1842 = !DILocation(line: 201, scope: !466, inlinedAt: !1841)
!1843 = !DILocation(line: 883, scope: !1642, inlinedAt: !1822)
!1844 = !DILocation(line: 887, scope: !1615, inlinedAt: !1822)
!1845 = !DILocation(line: 888, scope: !1617, inlinedAt: !1822)
!1846 = !DILocation(line: 0, scope: !1617, inlinedAt: !1822)
!1847 = !DILocation(line: 0, scope: !1450, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 889, scope: !1617, inlinedAt: !1822)
!1849 = !DILocation(line: 188, scope: !1450, inlinedAt: !1848)
!1850 = !DILocation(line: 895, scope: !1615, inlinedAt: !1822)
!1851 = !DILocation(line: 0, scope: !1552, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 895, scope: !1615, inlinedAt: !1822)
!1853 = !DILocation(line: 0, scope: !1558, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 833, scope: !1552, inlinedAt: !1852)
!1855 = !DILocation(line: 600, scope: !1558, inlinedAt: !1854)
!1856 = !DILocation(line: 833, scope: !1552, inlinedAt: !1852)
!1857 = !DILocation(line: 834, scope: !1566, inlinedAt: !1852)
!1858 = !DILocation(line: 835, scope: !1566, inlinedAt: !1852)
!1859 = !DILocation(line: 896, scope: !1615, inlinedAt: !1822)
!1860 = !DILocation(line: 0, scope: !1615, inlinedAt: !1822)
!1861 = !DILocation(line: 897, scope: !1615, inlinedAt: !1822)
!1862 = !DILocation(line: 0, scope: !466, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 902, scope: !1615, inlinedAt: !1822)
!1864 = !DILocation(line: 201, scope: !466, inlinedAt: !1863)
!1865 = !DILocation(line: 903, scope: !1615, inlinedAt: !1822)
!1866 = distinct !{!1866, !1826, !1867}
!1867 = !DILocation(line: 903, scope: !1608, inlinedAt: !1822)
!1868 = !DILocation(line: 0, scope: !466, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 1115, scope: !1791, inlinedAt: !1794)
!1870 = !DILocation(line: 201, scope: !466, inlinedAt: !1869)
!1871 = !DILocation(line: 0, scope: !1791, inlinedAt: !1794)
!1872 = !DILocation(line: 1116, scope: !1873, inlinedAt: !1794)
!1873 = distinct !DILexicalBlock(scope: !1791, file: !6, line: 1116)
!1874 = !DILocation(line: 1116, scope: !1875, inlinedAt: !1794)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !6, line: 1116)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !6, line: 1116)
!1877 = !DILocation(line: 1120, scope: !1785, inlinedAt: !1794)
!1878 = !DILocation(line: 1161, scope: !1775)
!1879 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !1880, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!361, !29}
!1882 = !{!1883, !1884}
!1883 = !DILocalVariable(name: "sz", arg: 1, scope: !1879, file: !6, line: 1168, type: !29)
!1884 = !DILocalVariable(name: "array", scope: !1879, file: !6, line: 1171, type: !361)
!1885 = !DILocation(line: 0, scope: !1879)
!1886 = !DILocation(line: 1171, scope: !1879)
!1887 = !DILocation(line: 1173, scope: !1879)
!1888 = !DILocation(line: 1177, scope: !1879)
!1889 = !{!1890, !396, i64 0}
!1890 = !{!"?AUhalide_mutex_array@@", !396, i64 0}
!1891 = !DILocation(line: 1179, scope: !1879)
!1892 = !DILocation(line: 1180, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !6, line: 1179)
!1894 = distinct !DILexicalBlock(scope: !1879, file: !6, line: 1179)
!1895 = !DILocation(line: 1182, scope: !1893)
!1896 = !DILocation(line: 1184, scope: !1879)
!1897 = !DILocation(line: 1185, scope: !1879)
!1898 = !DILocation(line: 1186, scope: !1879)
!1899 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !1900, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !43, !43}
!1902 = !{!1903, !1904, !1905}
!1903 = !DILocalVariable(name: "array", arg: 2, scope: !1899, file: !6, line: 1188, type: !43)
!1904 = !DILocalVariable(name: "user_context", arg: 1, scope: !1899, file: !6, line: 1188, type: !43)
!1905 = !DILocalVariable(name: "arr_ptr", scope: !1899, file: !6, line: 1189, type: !361)
!1906 = !DILocation(line: 0, scope: !1899)
!1907 = !DILocation(line: 1190, scope: !1899)
!1908 = !DILocation(line: 1191, scope: !1899)
!1909 = !DILocation(line: 1192, scope: !1899)
!1910 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !1911, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!29, !361, !29}
!1913 = !{!1914, !1915}
!1914 = !DILocalVariable(name: "entry", arg: 2, scope: !1910, file: !6, line: 1194, type: !29)
!1915 = !DILocalVariable(name: "array", arg: 1, scope: !1910, file: !6, line: 1194, type: !361)
!1916 = !DILocation(line: 0, scope: !1910)
!1917 = !DILocation(line: 1195, scope: !1910)
!1918 = !DILocation(line: 1196, scope: !1910)
!1919 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !1911, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1920)
!1920 = !{!1921, !1922}
!1921 = !DILocalVariable(name: "entry", arg: 2, scope: !1919, file: !6, line: 1199, type: !29)
!1922 = !DILocalVariable(name: "array", arg: 1, scope: !1919, file: !6, line: 1199, type: !361)
!1923 = !DILocation(line: 0, scope: !1919)
!1924 = !DILocation(line: 1200, scope: !1919)
!1925 = !DILocation(line: 1201, scope: !1919)
!1926 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z", scope: !3, file: !13, line: 69, type: !1927, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!29, !29}
!1929 = !{!1930}
!1930 = !DILocalVariable(name: "threads", arg: 1, scope: !1926, file: !13, line: 69, type: !29)
!1931 = !DILocation(line: 0, scope: !1926)
!1932 = !DILocation(line: 70, scope: !1926)
!1933 = !DILocation(line: 72, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1926, file: !13, line: 70)
!1935 = !DILocation(line: 75, scope: !1926)
!1936 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ", scope: !3, file: !13, line: 78, type: !402, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1937)
!1937 = !{!1938, !1939}
!1938 = !DILocalVariable(name: "desired_num_threads", scope: !1936, file: !13, line: 79, type: !29)
!1939 = !DILocalVariable(name: "threads_str", scope: !1936, file: !13, line: 80, type: !370)
!1940 = !DILocation(line: 0, scope: !1936)
!1941 = !DILocation(line: 80, scope: !1936)
!1942 = !DILocation(line: 81, scope: !1936)
!1943 = !DILocation(line: 83, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !13, line: 81)
!1945 = distinct !DILexicalBlock(scope: !1936, file: !13, line: 81)
!1946 = !DILocation(line: 85, scope: !1936)
!1947 = !DILocation(line: 86, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !13, line: 85)
!1949 = distinct !DILexicalBlock(scope: !1936, file: !13, line: 85)
!1950 = !DILocation(line: 87, scope: !1948)
!1951 = !DILocation(line: 88, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !13, line: 87)
!1953 = !DILocation(line: 89, scope: !1952)
!1954 = !DILocation(line: 0, scope: !1949)
!1955 = !DILocation(line: 90, scope: !1936)
!1956 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPEAUwork@123@@Z", scope: !3, file: !13, line: 197, type: !1957, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !32}
!1959 = !{!1960, !1961, !1962, !1964, !1966, !1968, !1970, !1971, !1972, !1973, !1974, !1975, !1978, !1979, !1981, !1982}
!1960 = !DILocalVariable(name: "owned_job", arg: 1, scope: !1956, file: !13, line: 197, type: !32)
!1961 = !DILocalVariable(name: "spin_count", scope: !1956, file: !13, line: 198, type: !29)
!1962 = !DILocalVariable(name: "max_spin_count", scope: !1956, file: !13, line: 199, type: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1964 = !DILocalVariable(name: "job", scope: !1965, file: !13, line: 202, type: !32)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !13, line: 201)
!1966 = !DILocalVariable(name: "prev_ptr", scope: !1965, file: !13, line: 203, type: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!1968 = !DILocalVariable(name: "enough_threads", scope: !1969, file: !13, line: 235, type: !64)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 229)
!1970 = !DILocalVariable(name: "parent_job", scope: !1969, file: !13, line: 237, type: !32)
!1971 = !DILocalVariable(name: "threads_available", scope: !1969, file: !13, line: 239, type: !29)
!1972 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !1969, file: !13, line: 256, type: !64)
!1973 = !DILocalVariable(name: "can_add_worker", scope: !1969, file: !13, line: 260, type: !64)
!1974 = !DILocalVariable(name: "result", scope: !1965, file: !13, line: 328, type: !29)
!1975 = !DILocalVariable(name: "total_iters", scope: !1976, file: !13, line: 336, type: !29)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !13, line: 330)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 330)
!1978 = !DILocalVariable(name: "iters", scope: !1976, file: !13, line: 337, type: !29)
!1979 = !DILocalVariable(name: "myjob", scope: !1980, file: !13, line: 369, type: !33)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !13, line: 367)
!1981 = !DILocalVariable(name: "wake_owners", scope: !1965, file: !13, line: 396, type: !64)
!1982 = !DILocalVariable(name: "i", scope: !1983, file: !13, line: 402, type: !29)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !13, line: 402)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !13, line: 399)
!1985 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 399)
!1986 = !DILocation(line: 0, scope: !1956)
!1987 = !DILocation(line: 63, scope: !1988, inlinedAt: !1992)
!1988 = distinct !DISubprogram(name: "running", linkageName: "?running@work@Internal@Runtime@Halide@@QEBA_NXZ", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !1989)
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "this", arg: 1, scope: !1988, type: !1991, flags: DIFlagArtificial | DIFlagObjectPointer)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1992 = distinct !DILocation(line: 201, scope: !1956)
!1993 = !DILocation(line: 201, scope: !1956)
!1994 = !DILocation(line: 198, scope: !1956)
!1995 = !DILocation(line: 0, scope: !1988, inlinedAt: !1992)
!1996 = !{!1997, !1999, i64 40}
!1997 = !{!"?AUwork@Internal@Runtime@Halide@@", !1998, i64 0, !396, i64 56, !396, i64 64, !396, i64 72, !1999, i64 80, !396, i64 88, !1999, i64 96, !396, i64 104, !1999, i64 112, !1999, i64 116, !1999, i64 120, !527, i64 124}
!1998 = !{!"?AUhalide_parallel_task_t@@", !396, i64 0, !396, i64 8, !396, i64 16, !396, i64 24, !1999, i64 32, !1999, i64 36, !1999, i64 40, !1999, i64 44, !527, i64 48}
!1999 = !{!"int", !397, i64 0}
!2000 = !{!2001, !527, i64 2120}
!2001 = !{!"?AUwork_queue_t@Internal@Runtime@Halide@@", !2002, i64 0, !1999, i64 8, !1999, i64 12, !396, i64 16, !1999, i64 24, !1999, i64 28, !1999, i64 32, !2003, i64 40, !2003, i64 48, !2003, i64 56, !1999, i64 64, !1999, i64 68, !397, i64 72, !527, i64 2120, !527, i64 2121, !1999, i64 2124}
!2002 = !{!"?AUhalide_mutex@@", !397, i64 0}
!2003 = !{!"?AUhalide_cond@@", !397, i64 0}
!2004 = !{!1997, !1999, i64 112}
!2005 = !DILocation(line: 202, scope: !1965)
!2006 = !{!2001, !396, i64 16}
!2007 = !DILocation(line: 0, scope: !1965)
!2008 = !DILocation(line: 206, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !13, line: 205)
!2010 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 205)
!2011 = !{!1997, !1999, i64 116}
!2012 = !DILocation(line: 207, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !13, line: 206)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !13, line: 206)
!2015 = !DILocation(line: 208, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !13, line: 207)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !13, line: 207)
!2018 = !DILocation(line: 209, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !13, line: 208)
!2020 = !DILocation(line: 210, scope: !2019)
!2021 = !{!1997, !396, i64 64}
!2022 = distinct !{!2022, !2015, !2023, !575}
!2023 = !DILocation(line: 211, scope: !2016)
!2024 = !DILocation(line: 212, scope: !2016)
!2025 = !DILocation(line: 213, scope: !2016)
!2026 = !DILocation(line: 214, scope: !2016)
!2027 = !DILocation(line: 216, scope: !2014)
!2028 = !{!1997, !396, i64 88}
!2029 = !DILocation(line: 217, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !13, line: 216)
!2031 = distinct !DILexicalBlock(scope: !2014, file: !13, line: 216)
!2032 = !DILocation(line: 221, scope: !2030)
!2033 = !DILocation(line: 222, scope: !2030)
!2034 = !DILocation(line: 229, scope: !1965)
!2035 = !DILocation(line: 240, scope: !1969)
!2036 = !DILocation(line: 237, scope: !1969)
!2037 = !DILocation(line: 0, scope: !1969)
!2038 = !DILocation(line: 244, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !13, line: 243)
!2040 = distinct !DILexicalBlock(scope: !1969, file: !13, line: 240)
!2041 = !DILocation(line: 0, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !13, line: 244)
!2043 = !{!1997, !1999, i64 44}
!2044 = !DILocation(line: 247, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !13, line: 246)
!2046 = !{!1997, !1999, i64 96}
!2047 = !DILocation(line: 248, scope: !2045)
!2048 = !DILocation(line: 245, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2042, file: !13, line: 244)
!2050 = !DILocation(line: 246, scope: !2049)
!2051 = !DILocation(line: 242, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2040, file: !13, line: 240)
!2053 = !{!2001, !1999, i64 24}
!2054 = !{!2001, !1999, i64 2124}
!2055 = !DILocation(line: 243, scope: !2052)
!2056 = !DILocation(line: 0, scope: !2040)
!2057 = !DILocation(line: 250, scope: !1969)
!2058 = !DILocation(line: 260, scope: !1969)
!2059 = !{!1997, !527, i64 48}
!2060 = !DILocation(line: 265, scope: !1969)
!2061 = !DILocalVariable(name: "this", arg: 1, scope: !2062, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2062 = distinct !DISubprogram(name: "make_runnable", linkageName: "?make_runnable@work@Internal@Runtime@Halide@@QEAA_NXZ", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2063)
!2063 = !{!2061}
!2064 = !DILocation(line: 0, scope: !2062, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 266, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !13, line: 265)
!2067 = distinct !DILexicalBlock(scope: !1969, file: !13, line: 265)
!2068 = !DILocation(line: 47, scope: !2069, inlinedAt: !2065)
!2069 = distinct !DILexicalBlock(scope: !2062, file: !13, line: 47)
!2070 = !{!1997, !1999, i64 120}
!2071 = !{!1997, !1999, i64 32}
!2072 = !DILocation(line: 48, scope: !2073, inlinedAt: !2065)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !13, line: 47)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !13, line: 47)
!2075 = !{!1997, !396, i64 24}
!2076 = !{!2077, !1999, i64 8}
!2077 = !{!"?AUhalide_semaphore_acquire_t@@", !396, i64 0, !1999, i64 8}
!2078 = !{!2077, !396, i64 0}
!2079 = !DILocation(line: 47, scope: !2074, inlinedAt: !2065)
!2080 = distinct !{!2080, !2068, !2081, !575}
!2081 = !DILocation(line: 56, scope: !2069, inlinedAt: !2065)
!2082 = !DILocation(line: 272, scope: !1969)
!2083 = !DILocation(line: 273, scope: !1969)
!2084 = !DILocation(line: 256, scope: !1969)
!2085 = !{!1997, !396, i64 72}
!2086 = !DILocation(line: 278, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !13, line: 276)
!2088 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 276)
!2089 = !DILocation(line: 279, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !13, line: 278)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !13, line: 278)
!2092 = !DILocation(line: 281, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !13, line: 279)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !13, line: 279)
!2095 = !DILocation(line: 282, scope: !2093)
!2096 = !DILocation(line: 283, scope: !2093)
!2097 = !DILocation(line: 284, scope: !2093)
!2098 = !DILocation(line: 285, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !13, line: 284)
!2100 = !{!2001, !1999, i64 68}
!2101 = !DILocation(line: 286, scope: !2099)
!2102 = !{!1997, !527, i64 124}
!2103 = !DILocation(line: 287, scope: !2099)
!2104 = !DILocation(line: 288, scope: !2099)
!2105 = !DILocation(line: 289, scope: !2099)
!2106 = !DILocation(line: 290, scope: !2099)
!2107 = !DILocation(line: 292, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2091, file: !13, line: 291)
!2109 = !{!2001, !1999, i64 64}
!2110 = !DILocation(line: 293, scope: !2108)
!2111 = !{!2001, !1999, i64 28}
!2112 = !{!2001, !1999, i64 32}
!2113 = !DILocation(line: 295, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 293)
!2115 = distinct !DILexicalBlock(scope: !2108, file: !13, line: 293)
!2116 = !DILocation(line: 296, scope: !2114)
!2117 = !DILocation(line: 297, scope: !2114)
!2118 = !DILocation(line: 298, scope: !2114)
!2119 = !DILocation(line: 298, scope: !2115)
!2120 = !DILocation(line: 300, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !13, line: 298)
!2122 = distinct !DILexicalBlock(scope: !2115, file: !13, line: 298)
!2123 = !DILocation(line: 301, scope: !2121)
!2124 = !DILocation(line: 302, scope: !2121)
!2125 = !DILocation(line: 303, scope: !2121)
!2126 = !DILocation(line: 304, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !13, line: 303)
!2128 = !DILocation(line: 305, scope: !2127)
!2129 = !DILocation(line: 306, scope: !2108)
!2130 = !DILocation(line: 307, scope: !2108)
!2131 = !DILocation(line: 58, scope: !2062, inlinedAt: !2065)
!2132 = !DILocation(line: 318, scope: !1965)
!2133 = !DILocation(line: 320, scope: !1965)
!2134 = !DILocation(line: 0, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 320)
!2136 = !DILocation(line: 321, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !13, line: 320)
!2138 = !DILocation(line: 323, scope: !2137)
!2139 = !DILocation(line: 324, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !13, line: 323)
!2141 = !DILocation(line: 326, scope: !2140)
!2142 = !DILocation(line: 330, scope: !1965)
!2143 = !DILocation(line: 332, scope: !1976)
!2144 = !DILocation(line: 335, scope: !1976)
!2145 = !DILocation(line: 0, scope: !1976)
!2146 = !DILocation(line: 338, scope: !1976)
!2147 = !DILocation(line: 340, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1976, file: !13, line: 338)
!2149 = !DILocation(line: 47, scope: !2069, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 340, scope: !2148)
!2151 = !DILocation(line: 0, scope: !2062, inlinedAt: !2150)
!2152 = !DILocation(line: 48, scope: !2073, inlinedAt: !2150)
!2153 = !DILocation(line: 47, scope: !2074, inlinedAt: !2150)
!2154 = distinct !{!2154, !2149, !2155, !575}
!2155 = !DILocation(line: 56, scope: !2069, inlinedAt: !2150)
!2156 = !DILocation(line: 58, scope: !2062, inlinedAt: !2150)
!2157 = !DILocation(line: 342, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2148, file: !13, line: 341)
!2159 = distinct !{!2159, !2147, !2160, !575}
!2160 = !DILocation(line: 343, scope: !2148)
!2161 = !DILocation(line: 344, scope: !2148)
!2162 = !DILocation(line: 349, scope: !2148)
!2163 = !{!1997, !396, i64 8}
!2164 = !{!1997, !1999, i64 36}
!2165 = !{!1997, !396, i64 0}
!2166 = !{!1997, !396, i64 104}
!2167 = !DILocation(line: 352, scope: !2148)
!2168 = distinct !{!2168, !2146, !2169, !575}
!2169 = !DILocation(line: 354, scope: !1976)
!2170 = !DILocation(line: 355, scope: !1976)
!2171 = !DILocation(line: 357, scope: !1976)
!2172 = !DILocation(line: 358, scope: !1976)
!2173 = !DILocation(line: 361, scope: !1976)
!2174 = !DILocation(line: 362, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !13, line: 361)
!2176 = distinct !DILexicalBlock(scope: !1976, file: !13, line: 361)
!2177 = !DILocation(line: 399, scope: !1965)
!2178 = !DILocation(line: 363, scope: !2176)
!2179 = !DILocation(line: 364, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !13, line: 363)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !13, line: 363)
!2182 = !DILocation(line: 365, scope: !2180)
!2183 = !DILocation(line: 366, scope: !2180)
!2184 = !DILocation(line: 369, scope: !1980)
!2185 = !{i64 0, i64 8, !841, i64 8, i64 8, !841, i64 16, i64 8, !841, i64 24, i64 8, !841, i64 32, i64 4, !2186, i64 36, i64 4, !2186, i64 40, i64 4, !2186, i64 44, i64 4, !2186, i64 48, i64 1, !2187, i64 56, i64 8, !841, i64 64, i64 8, !841, i64 72, i64 8, !841, i64 80, i64 4, !2186, i64 88, i64 8, !841, i64 96, i64 4, !2186, i64 104, i64 8, !841, i64 112, i64 4, !2186, i64 116, i64 4, !2186, i64 120, i64 4, !2186, i64 124, i64 1, !2187}
!2186 = !{!1999, !1999, i64 0}
!2187 = !{!527, !527, i64 0}
!2188 = !DILocation(line: 0, scope: !1980)
!2189 = !{i64 0, i64 8, !841, i64 8, i64 8, !841, i64 16, i64 8, !841, i64 24, i64 4, !2186, i64 28, i64 4, !2186, i64 32, i64 4, !2186, i64 36, i64 4, !2186, i64 40, i64 1, !2187, i64 48, i64 8, !841, i64 56, i64 8, !841, i64 64, i64 8, !841, i64 72, i64 4, !2186, i64 80, i64 8, !841, i64 88, i64 4, !2186, i64 96, i64 8, !841, i64 104, i64 4, !2186, i64 108, i64 4, !2186, i64 112, i64 4, !2186, i64 116, i64 1, !2187}
!2190 = !{i64 0, i64 8, !841, i64 8, i64 8, !841, i64 16, i64 8, !841, i64 24, i64 4, !2186, i64 32, i64 8, !841, i64 40, i64 4, !2186, i64 48, i64 8, !841, i64 56, i64 4, !2186, i64 60, i64 4, !2186, i64 64, i64 4, !2186, i64 68, i64 1, !2187}
!2191 = !{i64 0, i64 8, !841, i64 8, i64 4, !2186, i64 12, i64 4, !2186, i64 16, i64 4, !2186, i64 20, i64 1, !2187}
!2192 = !DILocation(line: 370, scope: !1980)
!2193 = !DILocation(line: 371, scope: !1980)
!2194 = !DILocation(line: 375, scope: !1980)
!2195 = !DILocation(line: 376, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !13, line: 375)
!2197 = distinct !DILexicalBlock(scope: !1980, file: !13, line: 375)
!2198 = !DILocation(line: 377, scope: !2196)
!2199 = !DILocation(line: 380, scope: !1980)
!2200 = !DILocation(line: 381, scope: !1980)
!2201 = !DILocation(line: 382, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !13, line: 381)
!2203 = distinct !DILexicalBlock(scope: !1980, file: !13, line: 381)
!2204 = !DILocation(line: 384, scope: !2202)
!2205 = !DILocation(line: 385, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !13, line: 384)
!2207 = !DILocation(line: 388, scope: !2206)
!2208 = !DILocation(line: 0, scope: !2203)
!2209 = !DILocation(line: 389, scope: !1980)
!2210 = !DILocation(line: 400, scope: !1984)
!2211 = !DILocation(line: 0, scope: !1983)
!2212 = !DILocation(line: 402, scope: !1983)
!2213 = !{!1997, !1999, i64 80}
!2214 = !DILocation(line: 404, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !13, line: 402)
!2216 = distinct !DILexicalBlock(scope: !1983, file: !13, line: 402)
!2217 = !DILocation(line: 405, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !13, line: 404)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !13, line: 404)
!2220 = !DILocation(line: 406, scope: !2218)
!2221 = !DILocation(line: 407, scope: !2218)
!2222 = !DILocation(line: 402, scope: !2216)
!2223 = distinct !{!2223, !2212, !2224, !575}
!2224 = !DILocation(line: 409, scope: !1983)
!2225 = !DILocation(line: 396, scope: !1965)
!2226 = !DILocation(line: 412, scope: !1965)
!2227 = !DILocation(line: 0, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 412)
!2229 = !DILocation(line: 413, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !13, line: 412)
!2231 = !DILocation(line: 415, scope: !2230)
!2232 = !DILocation(line: 416, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !13, line: 415)
!2234 = !DILocation(line: 418, scope: !2233)
!2235 = !DILocation(line: 421, scope: !1965)
!2236 = !DILocation(line: 425, scope: !1965)
!2237 = distinct !{!2237, !1993, !2238, !575}
!2238 = !DILocation(line: 430, scope: !1956)
!2239 = !DILocation(line: 428, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !13, line: 426)
!2241 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 425)
!2242 = !DILocation(line: 429, scope: !2240)
!2243 = !DILocation(line: 431, scope: !1956)
!2244 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251}
!2246 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2244, file: !13, line: 798, type: !43)
!2247 = !DILocalVariable(name: "closure", arg: 5, scope: !2244, file: !13, line: 798, type: !44)
!2248 = !DILocalVariable(name: "size", arg: 4, scope: !2244, file: !13, line: 798, type: !29)
!2249 = !DILocalVariable(name: "min", arg: 3, scope: !2244, file: !13, line: 798, type: !29)
!2250 = !DILocalVariable(name: "f", arg: 2, scope: !2244, file: !13, line: 797, type: !39)
!2251 = !DILocalVariable(name: "user_context", arg: 1, scope: !2244, file: !13, line: 797, type: !43)
!2252 = !DILocation(line: 0, scope: !2244)
!2253 = !DILocation(line: 799, scope: !2244)
!2254 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2255)
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DILocalVariable(name: "closure", arg: 4, scope: !2254, file: !13, line: 788, type: !44)
!2257 = !DILocalVariable(name: "idx", arg: 3, scope: !2254, file: !13, line: 787, type: !29)
!2258 = !DILocalVariable(name: "f", arg: 2, scope: !2254, file: !13, line: 787, type: !66)
!2259 = !DILocalVariable(name: "user_context", arg: 1, scope: !2254, file: !13, line: 787, type: !43)
!2260 = !DILocation(line: 0, scope: !2254)
!2261 = !DILocation(line: 789, scope: !2254)
!2262 = distinct !DISubprogram(name: "worker_thread", linkageName: "?worker_thread@Internal@Runtime@Halide@@YAXPEAX@Z", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2263)
!2263 = !{!2264}
!2264 = !DILocalVariable(name: "arg", arg: 1, scope: !2262, file: !13, line: 433, type: !43)
!2265 = !DILocation(line: 0, scope: !2262)
!2266 = !DILocation(line: 434, scope: !2262)
!2267 = !DILocation(line: 435, scope: !2262)
!2268 = !DILocation(line: 436, scope: !2262)
!2269 = !DILocation(line: 437, scope: !2262)
!2270 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPEAUwork@123@0@Z", scope: !3, file: !13, line: 439, type: !2271, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !29, !32, !32}
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2284, !2286}
!2274 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2270, file: !13, line: 439, type: !32)
!2275 = !DILocalVariable(name: "jobs", arg: 2, scope: !2270, file: !13, line: 439, type: !32)
!2276 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2270, file: !13, line: 439, type: !29)
!2277 = !DILocalVariable(name: "min_threads", scope: !2270, file: !13, line: 457, type: !29)
!2278 = !DILocalVariable(name: "workers_to_wake", scope: !2270, file: !13, line: 461, type: !29)
!2279 = !DILocalVariable(name: "stealable_jobs", scope: !2270, file: !13, line: 465, type: !64)
!2280 = !DILocalVariable(name: "job_has_acquires", scope: !2270, file: !13, line: 467, type: !64)
!2281 = !DILocalVariable(name: "job_may_block", scope: !2270, file: !13, line: 468, type: !64)
!2282 = !DILocalVariable(name: "i", scope: !2283, file: !13, line: 469, type: !29)
!2283 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 469)
!2284 = !DILocalVariable(name: "i", scope: !2285, file: !13, line: 527, type: !29)
!2285 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 527)
!2286 = !DILocalVariable(name: "nested_parallelism", scope: !2270, file: !13, line: 537, type: !64)
!2287 = !DILocation(line: 0, scope: !2270)
!2288 = !DILocation(line: 440, scope: !2270)
!2289 = !{!2001, !527, i64 2121}
!2290 = !DILocalVariable(name: "bytes", scope: !2291, file: !13, line: 148, type: !49)
!2291 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "?assert_zeroed@work_queue_t@Internal@Runtime@Halide@@QEBAXXZ", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2292)
!2292 = !{!2293, !2290, !2295}
!2293 = !DILocalVariable(name: "this", arg: 1, scope: !2291, type: !2294, flags: DIFlagArtificial | DIFlagObjectPointer)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2295 = !DILocalVariable(name: "limit", scope: !2291, file: !13, line: 149, type: !49)
!2296 = !DILocation(line: 0, scope: !2291, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 441, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !13, line: 440)
!2299 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 440)
!2300 = !DILocation(line: 150, scope: !2291, inlinedAt: !2297)
!2301 = !{!397, !397, i64 0}
!2302 = !DILocation(line: 151, scope: !2303, inlinedAt: !2297)
!2303 = distinct !DILexicalBlock(scope: !2291, file: !13, line: 150)
!2304 = distinct !{!2304, !2300, !2305, !575}
!2305 = !DILocation(line: 152, scope: !2291, inlinedAt: !2297)
!2306 = !DILocation(line: 153, scope: !2307, inlinedAt: !2297)
!2307 = distinct !DILexicalBlock(scope: !2291, file: !13, line: 153)
!2308 = !DILocation(line: 153, scope: !2309, inlinedAt: !2297)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !13, line: 153)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !13, line: 153)
!2311 = !DILocation(line: 446, scope: !2298)
!2312 = !{!2001, !1999, i64 8}
!2313 = !DILocation(line: 447, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !13, line: 446)
!2315 = distinct !DILexicalBlock(scope: !2298, file: !13, line: 446)
!2316 = !DILocation(line: 448, scope: !2314)
!2317 = !DILocation(line: 449, scope: !2298)
!2318 = !DILocation(line: 450, scope: !2298)
!2319 = !DILocation(line: 451, scope: !2298)
!2320 = !DILocation(line: 0, scope: !2283)
!2321 = !DILocation(line: 469, scope: !2283)
!2322 = !DILocation(line: 487, scope: !2270)
!2323 = !DILocation(line: 468, scope: !2270)
!2324 = !DILocation(line: 457, scope: !2270)
!2325 = !DILocation(line: 470, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !13, line: 469)
!2327 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 469)
!2328 = !DILocation(line: 476, scope: !2326)
!2329 = !DILocation(line: 480, scope: !2326)
!2330 = !DILocation(line: 481, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !13, line: 480)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !13, line: 480)
!2333 = !DILocation(line: 482, scope: !2331)
!2334 = !DILocation(line: 483, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !13, line: 482)
!2336 = !DILocation(line: 484, scope: !2335)
!2337 = !DILocation(line: 0, scope: !2332)
!2338 = !DILocation(line: 469, scope: !2327)
!2339 = distinct !{!2339, !2321, !2340, !575}
!2340 = !DILocation(line: 485, scope: !2283)
!2341 = !DILocation(line: 497, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !13, line: 487)
!2343 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 487)
!2344 = !DILocation(line: 503, scope: !2342)
!2345 = !DILocation(line: 508, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !13, line: 505)
!2347 = !DILocation(line: 509, scope: !2346)
!2348 = distinct !{!2348, !2344, !2349, !575}
!2349 = !DILocation(line: 511, scope: !2342)
!2350 = !DILocation(line: 513, scope: !2342)
!2351 = !DILocation(line: 514, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !13, line: 513)
!2353 = distinct !DILexicalBlock(scope: !2342, file: !13, line: 513)
!2354 = !DILocation(line: 515, scope: !2352)
!2355 = !DILocation(line: 518, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !13, line: 518)
!2357 = distinct !DILexicalBlock(scope: !2343, file: !13, line: 516)
!2358 = !DILocation(line: 518, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !13, line: 518)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !13, line: 518)
!2361 = !DILocation(line: 521, scope: !2357)
!2362 = !DILocation(line: 522, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !13, line: 521)
!2364 = distinct !DILexicalBlock(scope: !2357, file: !13, line: 521)
!2365 = !DILocation(line: 523, scope: !2363)
!2366 = !DILocation(line: 0, scope: !2285)
!2367 = !DILocation(line: 527, scope: !2285)
!2368 = !DILocation(line: 0, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !13, line: 527)
!2370 = distinct !DILexicalBlock(scope: !2285, file: !13, line: 527)
!2371 = !DILocation(line: 537, scope: !2270)
!2372 = !DILocation(line: 542, scope: !2270)
!2373 = !DILocation(line: 0, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 542)
!2375 = !DILocation(line: 550, scope: !2270)
!2376 = !DILocation(line: 551, scope: !2270)
!2377 = !DILocation(line: 530, scope: !2369)
!2378 = !DILocation(line: 531, scope: !2369)
!2379 = !DILocation(line: 532, scope: !2369)
!2380 = !DILocation(line: 533, scope: !2369)
!2381 = distinct !{!2381, !2367, !2382, !575}
!2382 = !DILocation(line: 535, scope: !2285)
!2383 = !DILocation(line: 552, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 551)
!2385 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 551)
!2386 = !DILocation(line: 553, scope: !2384)
!2387 = !DILocation(line: 554, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !13, line: 553)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !13, line: 553)
!2390 = !DILocation(line: 555, scope: !2388)
!2391 = !DILocation(line: 558, scope: !2270)
!2392 = !DILocation(line: 559, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !13, line: 558)
!2394 = distinct !DILexicalBlock(scope: !2270, file: !13, line: 558)
!2395 = !DILocation(line: 560, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !13, line: 559)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !13, line: 559)
!2398 = !DILocation(line: 561, scope: !2396)
!2399 = !DILocation(line: 562, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !13, line: 561)
!2401 = !DILocation(line: 563, scope: !2400)
!2402 = !DILocation(line: 565, scope: !2270)
!2403 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2404)
!2404 = !{!2405, !2406, !2407, !2408}
!2405 = !DILocalVariable(name: "closure", arg: 4, scope: !2403, file: !13, line: 590, type: !44)
!2406 = !DILocalVariable(name: "idx", arg: 3, scope: !2403, file: !13, line: 589, type: !29)
!2407 = !DILocalVariable(name: "f", arg: 2, scope: !2403, file: !13, line: 589, type: !66)
!2408 = !DILocalVariable(name: "user_context", arg: 1, scope: !2403, file: !13, line: 589, type: !43)
!2409 = !DILocation(line: 0, scope: !2403)
!2410 = !DILocation(line: 591, scope: !2403)
!2411 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418}
!2413 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2411, file: !13, line: 596, type: !43)
!2414 = !DILocalVariable(name: "closure", arg: 5, scope: !2411, file: !13, line: 595, type: !44)
!2415 = !DILocalVariable(name: "extent", arg: 4, scope: !2411, file: !13, line: 595, type: !29)
!2416 = !DILocalVariable(name: "min", arg: 3, scope: !2411, file: !13, line: 595, type: !29)
!2417 = !DILocalVariable(name: "f", arg: 2, scope: !2411, file: !13, line: 594, type: !39)
!2418 = !DILocalVariable(name: "user_context", arg: 1, scope: !2411, file: !13, line: 594, type: !43)
!2419 = !DILocation(line: 0, scope: !2411)
!2420 = !DILocation(line: 597, scope: !2411)
!2421 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428}
!2423 = !DILocalVariable(name: "closure", arg: 5, scope: !2421, file: !13, line: 601, type: !44)
!2424 = !DILocalVariable(name: "size", arg: 4, scope: !2421, file: !13, line: 601, type: !29)
!2425 = !DILocalVariable(name: "min", arg: 3, scope: !2421, file: !13, line: 601, type: !29)
!2426 = !DILocalVariable(name: "f", arg: 2, scope: !2421, file: !13, line: 600, type: !66)
!2427 = !DILocalVariable(name: "user_context", arg: 1, scope: !2421, file: !13, line: 600, type: !43)
!2428 = !DILocalVariable(name: "job", scope: !2421, file: !13, line: 606, type: !33)
!2429 = !DILocation(line: 0, scope: !2421)
!2430 = !DILocation(line: 602, scope: !2421)
!2431 = !DILocation(line: 606, scope: !2421)
!2432 = !DILocation(line: 607, scope: !2421)
!2433 = !DILocation(line: 608, scope: !2421)
!2434 = !DILocation(line: 609, scope: !2421)
!2435 = !DILocation(line: 610, scope: !2421)
!2436 = !DILocation(line: 611, scope: !2421)
!2437 = !DILocation(line: 612, scope: !2421)
!2438 = !DILocation(line: 613, scope: !2421)
!2439 = !DILocation(line: 614, scope: !2421)
!2440 = !DILocation(line: 615, scope: !2421)
!2441 = !{!1997, !396, i64 16}
!2442 = !DILocation(line: 616, scope: !2421)
!2443 = !{!1997, !396, i64 56}
!2444 = !DILocation(line: 617, scope: !2421)
!2445 = !DILocation(line: 618, scope: !2421)
!2446 = !DILocation(line: 619, scope: !2421)
!2447 = !DILocation(line: 620, scope: !2421)
!2448 = !DILocation(line: 621, scope: !2421)
!2449 = !DILocation(line: 622, scope: !2421)
!2450 = !DILocation(line: 623, scope: !2421)
!2451 = !DILocation(line: 624, scope: !2421)
!2452 = !DILocation(line: 625, scope: !2421)
!2453 = !DILocation(line: 626, scope: !2421)
!2454 = !DILocation(line: 627, scope: !2421)
!2455 = !DILocation(line: 628, scope: !2421)
!2456 = !DILocation(line: 629, scope: !2421)
!2457 = !DILocation(line: 630, scope: !2421)
!2458 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2467, !2468}
!2460 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2458, file: !13, line: 634, type: !43)
!2461 = !DILocalVariable(name: "tasks", arg: 3, scope: !2458, file: !13, line: 633, type: !145)
!2462 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2458, file: !13, line: 632, type: !29)
!2463 = !DILocalVariable(name: "user_context", arg: 1, scope: !2458, file: !13, line: 632, type: !43)
!2464 = !DILocalVariable(name: "jobs", scope: !2458, file: !13, line: 635, type: !32)
!2465 = !DILocalVariable(name: "i", scope: !2466, file: !13, line: 637, type: !29)
!2466 = distinct !DILexicalBlock(scope: !2458, file: !13, line: 637)
!2467 = !DILocalVariable(name: "exit_status", scope: !2458, file: !13, line: 659, type: !29)
!2468 = !DILocalVariable(name: "i", scope: !2469, file: !13, line: 660, type: !29)
!2469 = distinct !DILexicalBlock(scope: !2458, file: !13, line: 660)
!2470 = !DILocation(line: 0, scope: !2458)
!2471 = !DILocation(line: 635, scope: !2458)
!2472 = !DILocation(line: 0, scope: !2466)
!2473 = !DILocation(line: 637, scope: !2466)
!2474 = !DILocation(line: 653, scope: !2458)
!2475 = !DILocation(line: 638, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !13, line: 637)
!2477 = distinct !DILexicalBlock(scope: !2466, file: !13, line: 637)
!2478 = !{!1998, !1999, i64 40}
!2479 = !DILocation(line: 640, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !13, line: 638)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !13, line: 638)
!2482 = !DILocation(line: 641, scope: !2480)
!2483 = !DILocation(line: 643, scope: !2476)
!2484 = !{i64 0, i64 8, !841, i64 8, i64 8, !841, i64 16, i64 8, !841, i64 24, i64 8, !841, i64 32, i64 4, !2186, i64 36, i64 4, !2186, i64 40, i64 4, !2186, i64 44, i64 4, !2186, i64 48, i64 1, !2187}
!2485 = !DILocation(line: 644, scope: !2476)
!2486 = !DILocation(line: 645, scope: !2476)
!2487 = !DILocation(line: 646, scope: !2476)
!2488 = !DILocation(line: 647, scope: !2476)
!2489 = !DILocation(line: 648, scope: !2476)
!2490 = !DILocation(line: 649, scope: !2476)
!2491 = !DILocation(line: 650, scope: !2476)
!2492 = !DILocation(line: 651, scope: !2476)
!2493 = !DILocation(line: 637, scope: !2477)
!2494 = distinct !{!2494, !2473, !2495, !575}
!2495 = !DILocation(line: 651, scope: !2466)
!2496 = !DILocation(line: 657, scope: !2458)
!2497 = !DILocation(line: 658, scope: !2458)
!2498 = !DILocation(line: 0, scope: !2469)
!2499 = !DILocation(line: 660, scope: !2469)
!2500 = !DILocation(line: 668, scope: !2458)
!2501 = !DILocation(line: 663, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !13, line: 660)
!2503 = distinct !DILexicalBlock(scope: !2469, file: !13, line: 660)
!2504 = !DILocation(line: 664, scope: !2502)
!2505 = !DILocation(line: 660, scope: !2503)
!2506 = distinct !{!2506, !2499, !2507, !575}
!2507 = !DILocation(line: 667, scope: !2469)
!2508 = !DILocation(line: 670, scope: !2458)
!2509 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2510)
!2510 = !{!2511, !2512, !2513}
!2511 = !DILocalVariable(name: "n", arg: 2, scope: !2509, file: !13, line: 715, type: !29)
!2512 = !DILocalVariable(name: "s", arg: 1, scope: !2509, file: !13, line: 715, type: !56)
!2513 = !DILocalVariable(name: "sem", scope: !2509, file: !13, line: 716, type: !366)
!2514 = !DILocation(line: 0, scope: !2509)
!2515 = !DILocation(line: 717, scope: !2509)
!2516 = !DILocalVariable(name: "val", arg: 2, scope: !2517, file: !6, line: 218, type: !2520)
!2517 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "??$atomic_store_release@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPEAH0@Z", scope: !467, file: !6, line: 218, type: !2518, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2523, retainedNodes: !2521)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !2520, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!2521 = !{!2516, !2522}
!2522 = !DILocalVariable(name: "addr", arg: 1, scope: !2517, file: !6, line: 218, type: !2520)
!2523 = !{!2524}
!2524 = !DITemplateTypeParameter(name: "T", type: !29)
!2525 = !DILocation(line: 0, scope: !2517, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 717, scope: !2509)
!2527 = !DILocation(line: 219, scope: !2517, inlinedAt: !2526)
!2528 = !DILocation(line: 718, scope: !2509)
!2529 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535}
!2531 = !DILocalVariable(name: "n", arg: 2, scope: !2529, file: !13, line: 735, type: !29)
!2532 = !DILocalVariable(name: "s", arg: 1, scope: !2529, file: !13, line: 735, type: !56)
!2533 = !DILocalVariable(name: "sem", scope: !2529, file: !13, line: 739, type: !366)
!2534 = !DILocalVariable(name: "expected", scope: !2529, file: !13, line: 741, type: !29)
!2535 = !DILocalVariable(name: "desired", scope: !2529, file: !13, line: 742, type: !29)
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 736, scope: !2529)
!2538 = !DILocation(line: 743, scope: !2529)
!2539 = !DILocalVariable(name: "val", arg: 2, scope: !2540, file: !6, line: 205, type: !2520)
!2540 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "??$atomic_load_acquire@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPEAH0@Z", scope: !467, file: !6, line: 205, type: !2518, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2523, retainedNodes: !2541)
!2541 = !{!2539, !2542}
!2542 = !DILocalVariable(name: "addr", arg: 1, scope: !2540, file: !6, line: 205, type: !2520)
!2543 = !DILocation(line: 0, scope: !2540, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 743, scope: !2529)
!2545 = !DILocation(line: 206, scope: !2540, inlinedAt: !2544)
!2546 = !DILocation(line: 745, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2529, file: !13, line: 744)
!2548 = !DILocation(line: 746, scope: !2547)
!2549 = !DILocalVariable(name: "desired", arg: 3, scope: !2550, file: !6, line: 179, type: !2520)
!2550 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "??$atomic_cas_weak_relacq_relaxed@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPEAH00@Z", scope: !467, file: !6, line: 179, type: !2551, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2523, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!64, !2520, !2520, !2520}
!2553 = !{!2549, !2554, !2555}
!2554 = !DILocalVariable(name: "expected", arg: 2, scope: !2550, file: !6, line: 179, type: !2520)
!2555 = !DILocalVariable(name: "addr", arg: 1, scope: !2550, file: !6, line: 179, type: !2520)
!2556 = !DILocation(line: 0, scope: !2550, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 746, scope: !2547)
!2558 = !DILocation(line: 180, scope: !2550, inlinedAt: !2557)
!2559 = !DILocation(line: 749, scope: !2529)
!2560 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2561)
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DILocalVariable(name: "n", arg: 2, scope: !2560, file: !13, line: 721, type: !29)
!2563 = !DILocalVariable(name: "s", arg: 1, scope: !2560, file: !13, line: 721, type: !56)
!2564 = !DILocalVariable(name: "sem", scope: !2560, file: !13, line: 722, type: !366)
!2565 = !DILocalVariable(name: "old_val", scope: !2560, file: !13, line: 723, type: !29)
!2566 = !DILocation(line: 0, scope: !2560)
!2567 = !DILocation(line: 723, scope: !2560)
!2568 = !DILocalVariable(name: "val", arg: 2, scope: !2569, file: !6, line: 170, type: !29)
!2569 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "??$atomic_fetch_add_acquire_release@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAHPEAHH@Z", scope: !467, file: !6, line: 170, type: !2570, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2523, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!29, !2520, !29}
!2572 = !{!2568, !2573}
!2573 = !DILocalVariable(name: "addr", arg: 1, scope: !2569, file: !6, line: 170, type: !2520)
!2574 = !DILocation(line: 0, scope: !2569, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 723, scope: !2560)
!2576 = !DILocation(line: 171, scope: !2569, inlinedAt: !2575)
!2577 = !DILocation(line: 725, scope: !2560)
!2578 = !DILocation(line: 727, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !13, line: 725)
!2580 = distinct !DILexicalBlock(scope: !2560, file: !13, line: 725)
!2581 = !DILocation(line: 728, scope: !2579)
!2582 = !DILocation(line: 729, scope: !2579)
!2583 = !DILocation(line: 730, scope: !2579)
!2584 = !DILocation(line: 731, scope: !2579)
!2585 = !DILocation(line: 732, scope: !2560)
!2586 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !2587, file: !13, line: 584, type: !2588, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!2587 = !DINamespace(scope: null)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null}
!2590 = !DILocation(line: 585, scope: !2586)
!2591 = !DILocation(line: 586, scope: !2586)
!2592 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !2588, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2593)
!2593 = !{!2594}
!2594 = !DILocalVariable(name: "i", scope: !2595, file: !13, line: 702, type: !29)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !13, line: 702)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !13, line: 690)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !13, line: 690)
!2598 = !DILocation(line: 690, scope: !2592)
!2599 = !DILocation(line: 693, scope: !2596)
!2600 = !DILocation(line: 695, scope: !2596)
!2601 = !DILocation(line: 696, scope: !2596)
!2602 = !DILocation(line: 697, scope: !2596)
!2603 = !DILocation(line: 698, scope: !2596)
!2604 = !DILocation(line: 699, scope: !2596)
!2605 = !DILocation(line: 0, scope: !2595)
!2606 = !DILocation(line: 702, scope: !2595)
!2607 = !DILocalVariable(name: "this", arg: 1, scope: !2608, type: !2612, flags: DIFlagArtificial | DIFlagObjectPointer)
!2608 = distinct !DISubprogram(name: "reset", linkageName: "?reset@work_queue_t@Internal@Runtime@Halide@@QEAAXXZ", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !2609)
!2609 = !{!2607, !2610, !2611}
!2610 = !DILocalVariable(name: "bytes", scope: !2608, file: !13, line: 160, type: !370)
!2611 = !DILocalVariable(name: "limit", scope: !2608, file: !13, line: 161, type: !370)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2613 = !DILocation(line: 0, scope: !2608, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 707, scope: !2596)
!2615 = !DILocation(line: 162, scope: !2608, inlinedAt: !2614)
!2616 = !DILocation(line: 708, scope: !2596)
!2617 = !DILocation(line: 703, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !13, line: 702)
!2619 = distinct !DILexicalBlock(scope: !2595, file: !13, line: 702)
!2620 = !DILocation(line: 702, scope: !2619)
!2621 = distinct !{!2621, !2606, !2622, !575}
!2622 = !DILocation(line: 704, scope: !2595)
!2623 = !DILocation(line: 709, scope: !2592)
!2624 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !1927, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2625)
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !13, line: 672, type: !29)
!2627 = !DILocalVariable(name: "old", scope: !2624, file: !13, line: 683, type: !29)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocation(line: 673, scope: !2624)
!2630 = !DILocation(line: 674, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !13, line: 673)
!2632 = distinct !DILexicalBlock(scope: !2624, file: !13, line: 673)
!2633 = !DILocation(line: 679, scope: !2624)
!2634 = !DILocation(line: 680, scope: !2624)
!2635 = !DILocation(line: 681, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !13, line: 680)
!2637 = distinct !DILexicalBlock(scope: !2624, file: !13, line: 680)
!2638 = !DILocation(line: 682, scope: !2636)
!2639 = !DILocation(line: 683, scope: !2624)
!2640 = !DILocation(line: 684, scope: !2624)
!2641 = !DILocation(line: 685, scope: !2624)
!2642 = !DILocation(line: 686, scope: !2624)
!2643 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !2644, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!123, !123}
!2646 = !{!2647, !2648}
!2647 = !DILocalVariable(name: "f", arg: 1, scope: !2643, file: !13, line: 751, type: !123)
!2648 = !DILocalVariable(name: "result", scope: !2643, file: !13, line: 752, type: !123)
!2649 = !DILocation(line: 0, scope: !2643)
!2650 = !DILocation(line: 752, scope: !2643)
!2651 = !DILocation(line: 753, scope: !2643)
!2652 = !DILocation(line: 754, scope: !2643)
!2653 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !2654, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!129, !129}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "f", arg: 1, scope: !2653, file: !13, line: 757, type: !129)
!2658 = !DILocalVariable(name: "result", scope: !2653, file: !13, line: 758, type: !129)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 758, scope: !2653)
!2661 = !DILocation(line: 759, scope: !2653)
!2662 = !DILocation(line: 760, scope: !2653)
!2663 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !2664, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!135, !135}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "f", arg: 1, scope: !2663, file: !13, line: 763, type: !135)
!2668 = !DILocalVariable(name: "result", scope: !2663, file: !13, line: 764, type: !135)
!2669 = !DILocation(line: 0, scope: !2663)
!2670 = !DILocation(line: 764, scope: !2663)
!2671 = !DILocation(line: 765, scope: !2663)
!2672 = !DILocation(line: 766, scope: !2663)
!2673 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !2674, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !135, !123, !129, !141, !148, !154, !160}
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2677 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !2673, file: !13, line: 776, type: !160)
!2678 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !2673, file: !13, line: 775, type: !154)
!2679 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !2673, file: !13, line: 774, type: !148)
!2680 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !2673, file: !13, line: 773, type: !141)
!2681 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !2673, file: !13, line: 772, type: !129)
!2682 = !DILocalVariable(name: "do_task", arg: 2, scope: !2673, file: !13, line: 771, type: !123)
!2683 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !2673, file: !13, line: 770, type: !135)
!2684 = !DILocation(line: 0, scope: !2673)
!2685 = !DILocation(line: 778, scope: !2673)
!2686 = !DILocation(line: 779, scope: !2673)
!2687 = !DILocation(line: 780, scope: !2673)
!2688 = !DILocation(line: 781, scope: !2673)
!2689 = !DILocation(line: 782, scope: !2673)
!2690 = !DILocation(line: 783, scope: !2673)
!2691 = !DILocation(line: 784, scope: !2673)
!2692 = !DILocation(line: 785, scope: !2673)
!2693 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699}
!2695 = !DILocalVariable(name: "closure", arg: 5, scope: !2693, file: !13, line: 793, type: !44)
!2696 = !DILocalVariable(name: "size", arg: 4, scope: !2693, file: !13, line: 793, type: !29)
!2697 = !DILocalVariable(name: "min", arg: 3, scope: !2693, file: !13, line: 793, type: !29)
!2698 = !DILocalVariable(name: "f", arg: 2, scope: !2693, file: !13, line: 792, type: !66)
!2699 = !DILocalVariable(name: "user_context", arg: 1, scope: !2693, file: !13, line: 792, type: !43)
!2700 = !DILocation(line: 0, scope: !2693)
!2701 = !DILocation(line: 794, scope: !2693)
!2702 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2703)
!2703 = !{!2704, !2705, !2706, !2707}
!2704 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2702, file: !13, line: 804, type: !43)
!2705 = !DILocalVariable(name: "tasks", arg: 3, scope: !2702, file: !13, line: 803, type: !145)
!2706 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2702, file: !13, line: 802, type: !29)
!2707 = !DILocalVariable(name: "user_context", arg: 1, scope: !2702, file: !13, line: 802, type: !43)
!2708 = !DILocation(line: 0, scope: !2702)
!2709 = !DILocation(line: 805, scope: !2702)
!2710 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2711)
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "count", arg: 2, scope: !2710, file: !13, line: 808, type: !29)
!2713 = !DILocalVariable(name: "sema", arg: 1, scope: !2710, file: !13, line: 808, type: !56)
!2714 = !DILocation(line: 0, scope: !2710)
!2715 = !DILocation(line: 809, scope: !2710)
!2716 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2717)
!2717 = !{!2718, !2719}
!2718 = !DILocalVariable(name: "count", arg: 2, scope: !2716, file: !13, line: 812, type: !29)
!2719 = !DILocalVariable(name: "sema", arg: 1, scope: !2716, file: !13, line: 812, type: !56)
!2720 = !DILocation(line: 0, scope: !2716)
!2721 = !DILocation(line: 813, scope: !2716)
!2722 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2723)
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "count", arg: 2, scope: !2722, file: !13, line: 816, type: !29)
!2725 = !DILocalVariable(name: "sema", arg: 1, scope: !2722, file: !13, line: 816, type: !56)
!2726 = !DILocation(line: 0, scope: !2722)
!2727 = !DILocation(line: 817, scope: !2722)
