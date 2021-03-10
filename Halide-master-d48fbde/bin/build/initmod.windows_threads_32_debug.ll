; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp"
target datalayout = "e-m:x-p:32:32-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i386-unknown-windows-msvc19.11.0"

%"struct.Halide::Runtime::Internal::work_queue_t" = type { %struct.halide_mutex, i32, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i32, i32, %struct.halide_cond, %struct.halide_cond, %struct.halide_cond, i32, i32, [256 x %struct.halide_thread*], i8, i8, i32 }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::work" = type { %struct.halide_parallel_task_t, i32 (i8*, i32, i8*)*, %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"*, i32, %"struct.Halide::Runtime::Internal::work"*, i32, i8*, i32, i32, i32, i8 }
%struct.halide_parallel_task_t = type { i32 (i8*, i32, i32, i8*, i8*)*, i8*, i8*, %struct.halide_semaphore_acquire_t*, i32, i32, i32, i32, i8 }
%struct.halide_semaphore_acquire_t = type { %struct.halide_semaphore_t*, i32 }
%struct.halide_semaphore_t = type { [2 x i64] }
%struct.halide_cond = type { [1 x i32] }
%struct.halide_thread = type opaque
%"struct.Halide::Runtime::Internal::spawned_thread" = type { void (i8*)*, i8*, i8* }
%"class.Halide::Runtime::Internal::Synchronization::word_lock" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::thread_parker" = type { %struct.CriticalSection, i64, i8 }
%struct.CriticalSection = type { [5 x i64] }
%"class.Halide::Runtime::Internal::Synchronization::spin_control" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::hash_bucket" = type { %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* }
%"struct.Halide::Runtime::Internal::Synchronization::queue_data" = type { %"struct.Halide::Runtime::Internal::Synchronization::thread_parker", i32, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, i32 }
%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair" = type { %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* }
%"struct.Halide::Runtime::Internal::Synchronization::validate_action" = type { i8, i32 }
%"struct.Halide::Runtime::Internal::Synchronization::parking_control" = type { i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, void (i8*)*, i32 (i8*, i32, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* }
%"class.Halide::Runtime::Internal::Synchronization::fast_mutex" = type { i32 }
%"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32* }
%"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
%"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control" = type { %"struct.Halide::Runtime::Internal::Synchronization::parking_control", i32*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* }
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
@"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" = weak dso_local global [12288 x i8] zeroinitializer, align 1, !dbg !0
@"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [15 x i8] c"HL_NUM_THREADS\00", comdat, align 1
@"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"HL_NUMTHREADS\00", comdat, align 1
@"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A" = weak dso_local global %"struct.Halide::Runtime::Internal::work_queue_t" zeroinitializer, align 4, !dbg !11
@"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [256 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:520 Assert failed: (min_threads <= ((task_parent->task.min_threads * task_parent->active_workers) - task_parent->threads_reserved)) && \22Logic error: thread over commit.\\n\22\0A\00", comdat, align 1
@"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_default_do_task, align 4, !dbg !121
@"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_default_do_loop_task, align 4, !dbg !127
@"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_default_do_par_for, align 4, !dbg !133
@"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA" = weak dso_local local_unnamed_addr global i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* @halide_default_do_parallel_tasks, align 4, !dbg !139
@"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_init, align 4, !dbg !146
@"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA" = weak dso_local local_unnamed_addr global i1 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_try_acquire, align 4, !dbg !152
@"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA" = weak dso_local local_unnamed_addr global i32 (%struct.halide_semaphore_t*, i32)* @halide_default_semaphore_release, align 4, !dbg !158
@"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@" = linkonce_odr dso_local unnamed_addr constant [38 x i8] c"halide_set_num_threads: must be >= 0.\00", comdat, align 1
@"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [118 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/synchronization_common.h:1116 Assert failed: val & 0x1\0A\00", comdat, align 1
@"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@" = linkonce_odr dso_local unnamed_addr constant [179 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/thread_pool_common.h:153 Assert failed: bytes == limit && \22Logic error in thread pool work queue initialization.\\n\22\0A\00", comdat, align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_thread_pool_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z"(i8* %0) #0 !dbg !389 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !395
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !396
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !dbg !396, !tbaa !397
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !396
  %5 = bitcast i8* %4 to i8**, !dbg !396
  %6 = load i8*, i8** %5, align 4, !dbg !396, !tbaa !402
  tail call void %3(i8* %6) #6, !dbg !396
  ret i8* null, !dbg !403
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !404 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@", i32 0, i32 0)) #6, !dbg !409
  call void @llvm.dbg.value(metadata i8* %1, metadata !408, metadata !DIExpression()), !dbg !410
  %2 = icmp eq i8* %1, null, !dbg !411
  br i1 %2, label %5, label %3, !dbg !411

3:                                                ; preds = %0
  %4 = tail call i32 @atoi(i8* nonnull %1) #6, !dbg !412
  br label %5, !dbg !412

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 8, %0 ], !dbg !415
  ret i32 %6, !dbg !416
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !417 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !421, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !422, metadata !DIExpression()), !dbg !424
  %3 = tail call i8* @malloc(i32 12) #6, !dbg !425
  call void @llvm.dbg.value(metadata i8* %3, metadata !423, metadata !DIExpression()), !dbg !424
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !426
  store void (i8*)* %0, void (i8*)** %4, align 4, !dbg !426, !tbaa !397
  %5 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !427
  %6 = bitcast i8* %5 to i8**, !dbg !427
  store i8* %1, i8** %6, align 4, !dbg !427, !tbaa !402
  %7 = tail call x86_stdcallcc i8* @"\01_CreateThread@24"(i8* null, i32 0, i8* (i8*)* nonnull @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z", i8* %3, i32 0, i32* null) #6, !dbg !428
  %8 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !428
  %9 = bitcast i8* %8 to i8**, !dbg !428
  store i8* %7, i8** %9, align 4, !dbg !428, !tbaa !429
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !430
  ret %struct.halide_thread* %10, !dbg !430
}

declare dso_local i8* @malloc(i32) local_unnamed_addr #3

declare dso_local x86_stdcallcc i8* @"\01_CreateThread@24"(i8*, i32, i8* (i8*)*, i8*, i32, i32*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !431 {
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !435, metadata !DIExpression()), !dbg !437
  %2 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !438
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %2, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %2, i32 0, i32 2, !dbg !439
  %4 = load i8*, i8** %3, align 4, !dbg !439, !tbaa !429
  %5 = tail call x86_stdcallcc i32 @"\01_WaitForSingleObject@8"(i8* %4, i32 -1) #6, !dbg !439
  %6 = bitcast %struct.halide_thread* %0 to i8*, !dbg !440
  tail call void @free(i8* %6) #6, !dbg !440
  ret void, !dbg !441
}

declare dso_local x86_stdcallcc i32 @"\01_WaitForSingleObject@8"(i8*, i32) local_unnamed_addr #3

declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !442 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !444, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 40, metadata !446, metadata !DIExpression()), !dbg !466
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !467
  %4 = load i32, i32* %3, align 4, !dbg !467, !tbaa !468
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13, !dbg !470

13:                                               ; preds = %58, %1
  %14 = phi i32 [ %4, %1 ], [ %59, %58 ]
  %15 = phi i32 [ 40, %1 ], [ %60, %58 ]
  br label %16, !dbg !471

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %15, metadata !446, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 %17, metadata !458, metadata !DIExpression()), !dbg !466
  %18 = and i32 %17, 1, !dbg !471
  %19 = icmp eq i32 %18, 0, !dbg !471
  br i1 %19, label %20, label %25, !dbg !471

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !458, metadata !DIExpression()), !dbg !466
  %21 = or i32 %17, 1, !dbg !472
  call void @llvm.dbg.value(metadata i32 %21, metadata !459, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32* %3, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata i32 %17, metadata !492, metadata !DIExpression()), !dbg !496
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst, !dbg !498
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !498
  call void @llvm.dbg.value(metadata i32 %23, metadata !493, metadata !DIExpression()), !dbg !496
  %24 = icmp eq i32 %17, %23, !dbg !499
  br i1 %24, label %61, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3, !dbg !500
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27, !dbg !500
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !501, metadata !DIExpression()), !dbg !505
  br i1 %28, label %29, label %34, !dbg !500

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %15, metadata !446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !466
  %30 = icmp sgt i32 %15, 1, !dbg !507
  br i1 %30, label %31, label %34, !dbg !500

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1, !dbg !508
  call void @llvm.dbg.value(metadata i32 %32, metadata !446, metadata !DIExpression()), !dbg !466
  call void @halide_thread_yield() #6, !dbg !511
  %33 = load i32, i32* %3, align 4, !dbg !514, !tbaa !468
  br label %58, !dbg !515

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %35, metadata !446, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #7, !dbg !516
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !463, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !517, metadata !DIExpression()) #7, !dbg !520
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !522, metadata !DIExpression()) #7, !dbg !526
  store i8 0, i8* %6, align 8, !dbg !528, !tbaa !529
  call x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !534
  call x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64* nonnull %8) #6, !dbg !536
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !537, !tbaa !538
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !dbg !537, !tbaa !540
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !537, !tbaa !541
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !542, metadata !DIExpression()), !dbg !545
  store i8 1, i8* %6, align 8, !dbg !547, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %17, metadata !458, metadata !DIExpression()), !dbg !466
  %36 = and i32 %17, -4, !dbg !548
  call void @llvm.dbg.value(metadata i32 %36, metadata !464, metadata !DIExpression()), !dbg !549
  %37 = icmp eq i32 %36, 0, !dbg !550
  br i1 %37, label %38, label %39, !dbg !550

38:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !551, !tbaa !541
  br label %41, !dbg !554

39:                                               ; preds = %34
  %40 = inttoptr i32 %36 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !548
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, metadata !464, metadata !DIExpression()), !dbg !549
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !555, !tbaa !538
  br label %41, !dbg !557

41:                                               ; preds = %39, %38
  call void @llvm.dbg.value(metadata i32 %17, metadata !458, metadata !DIExpression()), !dbg !466
  %42 = and i32 %17, 3, !dbg !558
  %43 = or i32 %42, %12, !dbg !558
  call void @llvm.dbg.value(metadata i32 %43, metadata !465, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32* undef, metadata !559, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32* undef, metadata !562, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32* %3, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32 %17, metadata !492, metadata !DIExpression()), !dbg !566
  %44 = cmpxchg i32* %3, i32 %17, i32 %43 seq_cst seq_cst, !dbg !568
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !568
  call void @llvm.dbg.value(metadata i32 %45, metadata !493, metadata !DIExpression()), !dbg !566
  %46 = icmp eq i32 %17, %45, !dbg !569
  br i1 %46, label %47, label %55, !dbg !570

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !571, metadata !DIExpression()) #7, !dbg !574
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !578
  %48 = load i8, i8* %6, align 8, !dbg !579, !tbaa !529, !range !580
  %49 = icmp eq i8 %48, 0, !dbg !579
  br i1 %49, label %53, label %50, !dbg !579

50:                                               ; preds = %47, %50
  call x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !581
  %51 = load i8, i8* %6, align 8, !dbg !579, !tbaa !529, !range !580
  %52 = icmp eq i8 %51, 0, !dbg !579
  br i1 %52, label %53, label %50, !dbg !579, !llvm.loop !583

53:                                               ; preds = %50, %47
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !586
  call void @llvm.dbg.value(metadata i32 40, metadata !446, metadata !DIExpression()), !dbg !466
  %54 = load i32, i32* %3, align 4, !dbg !587, !tbaa !468
  br label %55, !dbg !588

55:                                               ; preds = %53, %41
  %56 = phi i32 [ %54, %53 ], [ %45, %41 ], !dbg !549
  %57 = phi i32 [ 40, %53 ], [ %35, %41 ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %57, metadata !446, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !589, metadata !DIExpression()) #7, !dbg !592
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !594, metadata !DIExpression()) #7, !dbg !597
  call x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !600
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #7, !dbg !602
  br label %58, !dbg !470

58:                                               ; preds = %55, %31
  %59 = phi i32 [ %33, %31 ], [ %56, %55 ]
  %60 = phi i32 [ %32, %31 ], [ %57, %55 ]
  br label %13, !dbg !471, !llvm.loop !603

61:                                               ; preds = %20
  ret void, !dbg !605
}

declare dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !606 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !608, metadata !DIExpression()), !dbg !630
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !631
  %3 = load i32, i32* %2, align 4, !dbg !631, !tbaa !468
  call void @llvm.dbg.value(metadata i32* undef, metadata !632, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32* undef, metadata !637, metadata !DIExpression()), !dbg !638
  br label %4, !dbg !640

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ], !dbg !641
  call void @llvm.dbg.value(metadata i32 %5, metadata !609, metadata !DIExpression()), !dbg !630
  %6 = and i32 %5, 2, !dbg !642
  %7 = icmp ne i32 %6, 0, !dbg !642
  call void @llvm.dbg.value(metadata i1 %7, metadata !610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !643
  call void @llvm.dbg.value(metadata i1 undef, metadata !612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !643
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7, !dbg !644
  call void @llvm.dbg.value(metadata i1 %8, metadata !612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !643
  br i1 %9, label %64, label %10, !dbg !644

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %5, metadata !609, metadata !DIExpression()), !dbg !630
  %11 = or i32 %5, 2, !dbg !645
  call void @llvm.dbg.value(metadata i32 %11, metadata !613, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32* %2, metadata !481, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32* %2, metadata !491, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %5, metadata !492, metadata !DIExpression()), !dbg !648
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst, !dbg !650
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !650
  call void @llvm.dbg.value(metadata i32 %13, metadata !493, metadata !DIExpression()), !dbg !648
  %14 = icmp eq i32 %5, %13, !dbg !651
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %62
  %16 = phi i32 [ %63, %62 ], [ %5, %10 ], !dbg !630
  call void @llvm.dbg.value(metadata i32 %16, metadata !609, metadata !DIExpression()), !dbg !630
  %17 = and i32 %16, -4, !dbg !652
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !652
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !614, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !616, metadata !DIExpression()), !dbg !653
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3, !dbg !654
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !617, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 0, metadata !618, metadata !DIExpression()), !dbg !653
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !653, !tbaa !541
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !616, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !618, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, metadata !617, metadata !DIExpression()), !dbg !653
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null, !dbg !655
  br i1 %21, label %22, label %33, !dbg !655

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, metadata !616, metadata !DIExpression()), !dbg !653
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1, !dbg !656
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !dbg !656, !tbaa !538
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !619, metadata !DIExpression()), !dbg !657
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null, !dbg !658
  br i1 %26, label %27, label %28, !dbg !658

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !660
  tail call void @abort() #6, !dbg !660
  br label %28, !dbg !660

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2, !dbg !663
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !dbg !663, !tbaa !540
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !616, metadata !DIExpression()), !dbg !653
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3, !dbg !664
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !617, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata i32 undef, metadata !618, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !653
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !653, !tbaa !541
  call void @llvm.dbg.value(metadata i32 undef, metadata !618, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, metadata !617, metadata !DIExpression()), !dbg !653
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null, !dbg !655
  br i1 %32, label %22, label %33, !dbg !655, !llvm.loop !665

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ], !dbg !653
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !667, !tbaa !541
  call void @llvm.dbg.value(metadata i32 %16, metadata !609, metadata !DIExpression()), !dbg !630
  %35 = and i32 %16, 1, !dbg !668
  %36 = icmp eq i32 %35, 0, !dbg !668
  br i1 %36, label %42, label %37, !dbg !668

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %16, metadata !609, metadata !DIExpression()), !dbg !630
  %38 = and i32 %16, -3, !dbg !669
  call void @llvm.dbg.value(metadata i32 %38, metadata !621, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* undef, metadata !671, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32* undef, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32* %2, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32* %2, metadata !491, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 %16, metadata !492, metadata !DIExpression()), !dbg !678
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst, !dbg !680
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !680
  call void @llvm.dbg.value(metadata i32 %40, metadata !493, metadata !DIExpression()), !dbg !678
  %41 = icmp eq i32 %16, %40, !dbg !681
  br i1 %41, label %64, label %62, !dbg !682, !llvm.loop !683

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2, !dbg !686
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !dbg !686, !tbaa !540
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !624, metadata !DIExpression()), !dbg !653
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !687
  br i1 %45, label %46, label %56, !dbg !687

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !625, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %47, metadata !609, metadata !DIExpression()), !dbg !630
  %48 = and i32 %47, 1, !dbg !689
  call void @llvm.dbg.value(metadata i32 %48, metadata !628, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i32* undef, metadata !671, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i32* undef, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i32* %2, metadata !675, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32* %2, metadata !491, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32 %47, metadata !492, metadata !DIExpression()), !dbg !693
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst, !dbg !695
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !695
  call void @llvm.dbg.value(metadata i32 %50, metadata !493, metadata !DIExpression()), !dbg !693
  %51 = icmp eq i32 %47, %50, !dbg !696
  br i1 %51, label %58, label %52, !dbg !697

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %50, metadata !609, metadata !DIExpression()), !dbg !630
  %53 = icmp ult i32 %50, 4, !dbg !698
  br i1 %53, label %46, label %54, !dbg !698, !llvm.loop !699

54:                                               ; preds = %52
  %55 = extractvalue { i32, i1 } %49, 0, !dbg !695
  call void @llvm.dbg.value(metadata i8 0, metadata !625, metadata !DIExpression()), !dbg !688
  br label %62

56:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !702, !tbaa !541
  call void @llvm.dbg.value(metadata i32 -3, metadata !704, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32* %2, metadata !709, metadata !DIExpression()), !dbg !710
  %57 = atomicrmw and i32* %2, i32 -3 seq_cst, !dbg !712
  br label %58, !dbg !713

58:                                               ; preds = %46, %56
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !714, metadata !DIExpression()) #7, !dbg !717
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0, !dbg !719
  tail call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %59) #6, !dbg !719
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !720, metadata !DIExpression()) #7, !dbg !723
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2, !dbg !725
  store i8 0, i8* %60, align 8, !dbg !725, !tbaa !529
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1, !dbg !726
  tail call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %61) #6, !dbg !726
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !727, metadata !DIExpression()) #7, !dbg !730
  tail call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %59) #6, !dbg !732
  br label %64, !dbg !733

62:                                               ; preds = %37, %54
  %63 = phi i32 [ %55, %54 ], [ %40, %37 ], !dbg !653
  fence seq_cst, !dbg !653
  br label %15

64:                                               ; preds = %4, %37, %58
  ret void, !dbg !734
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #3

declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) local_unnamed_addr #0 !dbg !735 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !740, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 10, metadata !744, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %0, metadata !749, metadata !DIExpression()), !dbg !750
  %2 = mul i32 %0, -1640531527, !dbg !752
  %3 = lshr i32 %2, 22, !dbg !752
  call void @llvm.dbg.value(metadata i32 %3, metadata !741, metadata !DIExpression()), !dbg !743
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3, !dbg !755
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !756, metadata !DIExpression()) #7, !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()) #7, !dbg !761
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()) #7, !dbg !761
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !763
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !764
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !764
  call void @llvm.dbg.value(metadata i32* %5, metadata !481, metadata !DIExpression()) #7, !dbg !764
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !766
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !766
  call void @llvm.dbg.value(metadata i32* %5, metadata !491, metadata !DIExpression()) #7, !dbg !766
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !766
  %6 = cmpxchg i32* %5, i32 0, i32 1 seq_cst seq_cst, !dbg !768
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !766
  %7 = extractvalue { i32, i1 } %6, 1, !dbg !769
  br i1 %7, label %10, label %8, !dbg !763

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !770
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %9, metadata !756, metadata !DIExpression()) #7, !dbg !761
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %9) #6, !dbg !771
  br label %10, !dbg !774

10:                                               ; preds = %1, %8
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !775
}

; Function Attrs: nounwind
define weak dso_local void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #4 !dbg !776 {
  call void @llvm.dbg.value(metadata i32 %2, metadata !788, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 %1, metadata !789, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 10, metadata !744, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i32 %1, metadata !749, metadata !DIExpression()), !dbg !803
  %4 = mul i32 %1, -1640531527, !dbg !805
  %5 = lshr i32 %4, 22, !dbg !805
  call void @llvm.dbg.value(metadata i32 %5, metadata !790, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 10, metadata !744, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i32 %2, metadata !749, metadata !DIExpression()), !dbg !806
  %6 = mul i32 %2, -1640531527, !dbg !808
  %7 = lshr i32 %6, 22, !dbg !808
  call void @llvm.dbg.value(metadata i32 %7, metadata !791, metadata !DIExpression()), !dbg !802
  %8 = icmp eq i32 %5, %7, !dbg !809
  br i1 %8, label %9, label %16, !dbg !809

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !810
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !792, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !756, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()) #7, !dbg !812
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()) #7, !dbg !812
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0, !dbg !814
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !815
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !815
  call void @llvm.dbg.value(metadata i32* %11, metadata !481, metadata !DIExpression()) #7, !dbg !815
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32* %11, metadata !491, metadata !DIExpression()) #7, !dbg !817
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !817
  %12 = cmpxchg i32* %11, i32 0, i32 1 seq_cst seq_cst, !dbg !819
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !817
  %13 = extractvalue { i32, i1 } %12, 1, !dbg !820
  br i1 %13, label %46, label %14, !dbg !814

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, !dbg !821
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !756, metadata !DIExpression()) #7, !dbg !812
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #6, !dbg !822
  br label %46, !dbg !823

16:                                               ; preds = %3
  %17 = icmp ult i32 %5, %7, !dbg !824
  br i1 %17, label %18, label %32, !dbg !824

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !825
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !795, metadata !DIExpression()), !dbg !826
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !827
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !798, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, metadata !756, metadata !DIExpression()) #7, !dbg !828
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()) #7, !dbg !828
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()) #7, !dbg !828
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, i32 0, !dbg !830
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i32* %21, metadata !481, metadata !DIExpression()) #7, !dbg !831
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !833
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !833
  call void @llvm.dbg.value(metadata i32* %21, metadata !491, metadata !DIExpression()) #7, !dbg !833
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !833
  %22 = cmpxchg i32* %21, i32 0, i32 1 seq_cst seq_cst, !dbg !835
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !833
  %23 = extractvalue { i32, i1 } %22, 1, !dbg !836
  br i1 %23, label %26, label %24, !dbg !830

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %19, i32 0, i32 0, !dbg !837
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %25, metadata !756, metadata !DIExpression()) #7, !dbg !828
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %25) #6, !dbg !838
  br label %26, !dbg !839

26:                                               ; preds = %18, %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !756, metadata !DIExpression()) #7, !dbg !840
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()) #7, !dbg !840
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()) #7, !dbg !840
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0, !dbg !842
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !843
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !843
  call void @llvm.dbg.value(metadata i32* %27, metadata !481, metadata !DIExpression()) #7, !dbg !843
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !845
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !845
  call void @llvm.dbg.value(metadata i32* %27, metadata !491, metadata !DIExpression()) #7, !dbg !845
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !845
  %28 = cmpxchg i32* %27, i32 0, i32 1 seq_cst seq_cst, !dbg !847
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !845
  %29 = extractvalue { i32, i1 } %28, 1, !dbg !848
  br i1 %29, label %46, label %30, !dbg !842

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, !dbg !849
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %31, metadata !756, metadata !DIExpression()) #7, !dbg !840
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %31) #6, !dbg !850
  br label %46, !dbg !851

32:                                               ; preds = %16
  %33 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !852
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !799, metadata !DIExpression()), !dbg !853
  %34 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !854
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !801, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, metadata !756, metadata !DIExpression()) #7, !dbg !855
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()) #7, !dbg !855
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()) #7, !dbg !855
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, i32 0, !dbg !857
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !858
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !858
  call void @llvm.dbg.value(metadata i32* %35, metadata !481, metadata !DIExpression()) #7, !dbg !858
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !860
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !860
  call void @llvm.dbg.value(metadata i32* %35, metadata !491, metadata !DIExpression()) #7, !dbg !860
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !860
  %36 = cmpxchg i32* %35, i32 0, i32 1 seq_cst seq_cst, !dbg !862
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !860
  %37 = extractvalue { i32, i1 } %36, 1, !dbg !863
  br i1 %37, label %40, label %38, !dbg !857

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %33, i32 0, i32 0, !dbg !864
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %39, metadata !756, metadata !DIExpression()) #7, !dbg !855
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %39) #6, !dbg !865
  br label %40, !dbg !866

40:                                               ; preds = %32, %38
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, metadata !756, metadata !DIExpression()) #7, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()) #7, !dbg !867
  call void @llvm.dbg.value(metadata i32 1, metadata !760, metadata !DIExpression()) #7, !dbg !867
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, i32 0, !dbg !869
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !870
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !870
  call void @llvm.dbg.value(metadata i32* %41, metadata !481, metadata !DIExpression()) #7, !dbg !870
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i32* %41, metadata !491, metadata !DIExpression()) #7, !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !872
  %42 = cmpxchg i32* %41, i32 0, i32 1 seq_cst seq_cst, !dbg !874
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !872
  %43 = extractvalue { i32, i1 } %42, 1, !dbg !875
  br i1 %43, label %46, label %44, !dbg !869

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %34, i32 0, i32 0, !dbg !876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !756, metadata !DIExpression()) #7, !dbg !867
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #6, !dbg !877
  br label %46, !dbg !878

46:                                               ; preds = %44, %40, %30, %26, %14, %9
  %47 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %19, %26 ], [ %19, %30 ], [ %34, %40 ], [ %34, %44 ]
  %48 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %14 ], [ %20, %26 ], [ %20, %30 ], [ %33, %40 ], [ %33, %44 ]
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !879
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %49, align 4, !dbg !879, !tbaa !880
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !879
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %48, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %50, align 4, !dbg !879, !tbaa !880
  ret void, !dbg !881
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 !dbg !882 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !887, metadata !DIExpression()), !dbg !888
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !889
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !889, !tbaa !890
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !889
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !889, !tbaa !892
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !889
  br i1 %6, label %7, label %16, !dbg !889

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !893, metadata !DIExpression()) #7, !dbg !899
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !903
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !908
  call void @llvm.dbg.value(metadata i32* %8, metadata !907, metadata !DIExpression()) #7, !dbg !908
  %9 = atomicrmw and i32* %8, i32 -2 seq_cst, !dbg !910
  call void @llvm.dbg.value(metadata i32 %9, metadata !896, metadata !DIExpression()) #7, !dbg !899
  %10 = and i32 %9, 2, !dbg !911
  %11 = icmp ne i32 %10, 0, !dbg !911
  call void @llvm.dbg.value(metadata i1 %11, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !899
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !899
  %12 = icmp ult i32 %9, 4
  %13 = or i1 %12, %11, !dbg !912
  call void @llvm.dbg.value(metadata i1 %12, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !899
  br i1 %13, label %56, label %14, !dbg !912

14:                                               ; preds = %7
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !913
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %15, metadata !893, metadata !DIExpression()) #7, !dbg !899
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %15) #6, !dbg !914
  br label %56, !dbg !917

16:                                               ; preds = %1
  %17 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !918
  br i1 %17, label %18, label %37, !dbg !918

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !893, metadata !DIExpression()) #7, !dbg !919
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !923
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !924
  call void @llvm.dbg.value(metadata i32* %19, metadata !907, metadata !DIExpression()) #7, !dbg !924
  %20 = atomicrmw and i32* %19, i32 -2 seq_cst, !dbg !926
  call void @llvm.dbg.value(metadata i32 %20, metadata !896, metadata !DIExpression()) #7, !dbg !919
  %21 = and i32 %20, 2, !dbg !927
  %22 = icmp ne i32 %21, 0, !dbg !927
  call void @llvm.dbg.value(metadata i1 %22, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !919
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !919
  %23 = icmp ult i32 %20, 4
  %24 = or i1 %23, %22, !dbg !928
  call void @llvm.dbg.value(metadata i1 %23, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !919
  br i1 %24, label %27, label %25, !dbg !928

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !929
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %26, metadata !893, metadata !DIExpression()) #7, !dbg !919
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %26) #6, !dbg !930
  br label %27, !dbg !931

27:                                               ; preds = %18, %25
  %28 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !932, !tbaa !892
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, metadata !893, metadata !DIExpression()) #7, !dbg !933
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, i32 0, !dbg !935
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !936
  call void @llvm.dbg.value(metadata i32* %29, metadata !907, metadata !DIExpression()) #7, !dbg !936
  %30 = atomicrmw and i32* %29, i32 -2 seq_cst, !dbg !938
  call void @llvm.dbg.value(metadata i32 %30, metadata !896, metadata !DIExpression()) #7, !dbg !933
  %31 = and i32 %30, 2, !dbg !939
  %32 = icmp ne i32 %31, 0, !dbg !939
  call void @llvm.dbg.value(metadata i1 %32, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !933
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !933
  %33 = icmp ult i32 %30, 4
  %34 = or i1 %33, %32, !dbg !940
  call void @llvm.dbg.value(metadata i1 %33, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !933
  br i1 %34, label %56, label %35, !dbg !940

35:                                               ; preds = %27
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %28, i32 0, i32 0, !dbg !932
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %36, metadata !893, metadata !DIExpression()) #7, !dbg !933
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %36) #6, !dbg !941
  br label %56, !dbg !942

37:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !893, metadata !DIExpression()) #7, !dbg !943
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0, !dbg !946
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !947
  call void @llvm.dbg.value(metadata i32* %38, metadata !907, metadata !DIExpression()) #7, !dbg !947
  %39 = atomicrmw and i32* %38, i32 -2 seq_cst, !dbg !949
  call void @llvm.dbg.value(metadata i32 %39, metadata !896, metadata !DIExpression()) #7, !dbg !943
  %40 = and i32 %39, 2, !dbg !950
  %41 = icmp ne i32 %40, 0, !dbg !950
  call void @llvm.dbg.value(metadata i1 %41, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !943
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !943
  %42 = icmp ult i32 %39, 4
  %43 = or i1 %42, %41, !dbg !951
  call void @llvm.dbg.value(metadata i1 %42, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !943
  br i1 %43, label %46, label %44, !dbg !951

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, !dbg !952
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %45, metadata !893, metadata !DIExpression()) #7, !dbg !943
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %45) #6, !dbg !953
  br label %46, !dbg !954

46:                                               ; preds = %37, %44
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !955, !tbaa !890
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, metadata !893, metadata !DIExpression()) #7, !dbg !956
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, i32 0, !dbg !958
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !959
  call void @llvm.dbg.value(metadata i32* %48, metadata !907, metadata !DIExpression()) #7, !dbg !959
  %49 = atomicrmw and i32* %48, i32 -2 seq_cst, !dbg !961
  call void @llvm.dbg.value(metadata i32 %49, metadata !896, metadata !DIExpression()) #7, !dbg !956
  %50 = and i32 %49, 2, !dbg !962
  %51 = icmp ne i32 %50, 0, !dbg !962
  call void @llvm.dbg.value(metadata i1 %51, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !956
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !956
  %52 = icmp ult i32 %49, 4
  %53 = or i1 %52, %51, !dbg !963
  call void @llvm.dbg.value(metadata i1 %52, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !956
  br i1 %53, label %56, label %54, !dbg !963

54:                                               ; preds = %46
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %47, i32 0, i32 0, !dbg !955
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %55, metadata !893, metadata !DIExpression()) #7, !dbg !956
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %55) #6, !dbg !964
  br label %56, !dbg !965

56:                                               ; preds = %54, %46, %35, %27, %14, %7
  ret void, !dbg !966
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !967 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %0, metadata !970, metadata !DIExpression()), !dbg !971
  ret i1 true, !dbg !972
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #5 !dbg !973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()), !dbg !976
  ret void, !dbg !977
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !978 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !980, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !983
  call void @llvm.dbg.value(metadata i32 %1, metadata !981, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %0, metadata !982, metadata !DIExpression()), !dbg !983
  ret i32 0, !dbg !984
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !985 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !991
  call void @llvm.dbg.value(metadata i1 %2, metadata !988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !991
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !989, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i8* %0, metadata !990, metadata !DIExpression()), !dbg !991
  ret void, !dbg !992
}

; Function Attrs: nounwind
define weak dso_local i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 !dbg !993 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !998, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 %0, metadata !999, metadata !DIExpression()), !dbg !1003
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #7, !dbg !1004
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1000, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1005, metadata !DIExpression()) #7, !dbg !1008
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !522, metadata !DIExpression()) #7, !dbg !1010
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2, !dbg !1012
  store i8 0, i8* %6, align 8, !dbg !1012, !tbaa !529
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0, !dbg !1013
  call x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1013
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1, !dbg !1014
  call x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64* nonnull %8) #6, !dbg !1014
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1, !dbg !1015
  store i32 0, i32* %9, align 8, !dbg !1015, !tbaa !1016
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2, !dbg !1015
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1015, !tbaa !1018
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3, !dbg !1015
  store i32 0, i32* %11, align 8, !dbg !1015, !tbaa !1019
  %12 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #8, !dbg !1020
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1001, metadata !DIExpression()), !dbg !1003
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1021
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1002, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1022, metadata !DIExpression()), !dbg !1026
  store i8 0, i8* %13, align 4, !dbg !1028, !tbaa !1029
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1, !dbg !1028
  store i32 0, i32* %14, align 4, !dbg !1028, !tbaa !1031
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0, !dbg !1032
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 4, !dbg !1032, !tbaa !1033
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1032
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #6, !dbg !1032
  br i1 %18, label %30, label %19, !dbg !1032

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !893, metadata !DIExpression()) #7, !dbg !1035
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1039
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !1040
  call void @llvm.dbg.value(metadata i32* %20, metadata !907, metadata !DIExpression()) #7, !dbg !1040
  %21 = atomicrmw and i32* %20, i32 -2 seq_cst, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %21, metadata !896, metadata !DIExpression()) #7, !dbg !1035
  %22 = and i32 %21, 2, !dbg !1043
  %23 = icmp ne i32 %22, 0, !dbg !1043
  call void @llvm.dbg.value(metadata i1 %23, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1035
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1035
  %24 = icmp ult i32 %21, 4
  %25 = or i1 %24, %23, !dbg !1044
  call void @llvm.dbg.value(metadata i1 %24, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1035
  br i1 %25, label %28, label %26, !dbg !1044

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1045
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !893, metadata !DIExpression()) #7, !dbg !1035
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %27) #6, !dbg !1046
  br label %28, !dbg !1047

28:                                               ; preds = %19, %26
  %29 = load i32, i32* %14, align 4, !dbg !1048, !tbaa !1031
  br label %57, !dbg !1048

30:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1049, !tbaa !1018
  store i32 %0, i32* %9, align 8, !dbg !1050, !tbaa !1016
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !542, metadata !DIExpression()), !dbg !1051
  store i8 1, i8* %6, align 8, !dbg !1053, !tbaa !529
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 1, !dbg !1054
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, align 4, !dbg !1054, !tbaa !1055
  %33 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %32, null, !dbg !1054
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1054
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 4, !dbg !1054
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, i32 0, i32 2, !dbg !1054
  %37 = select i1 %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %31, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, !dbg !1054
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %37, align 4, !dbg !1058, !tbaa !880
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1060
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1060, !tbaa !1061
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !893, metadata !DIExpression()) #7, !dbg !1062
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1064
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !1065
  call void @llvm.dbg.value(metadata i32* %39, metadata !907, metadata !DIExpression()) #7, !dbg !1065
  %40 = atomicrmw and i32* %39, i32 -2 seq_cst, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %40, metadata !896, metadata !DIExpression()) #7, !dbg !1062
  %41 = and i32 %40, 2, !dbg !1068
  %42 = icmp ne i32 %41, 0, !dbg !1068
  call void @llvm.dbg.value(metadata i1 %42, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1062
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1062
  %43 = icmp ult i32 %40, 4
  %44 = or i1 %43, %42, !dbg !1069
  call void @llvm.dbg.value(metadata i1 %43, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1062
  br i1 %44, label %47, label %45, !dbg !1069

45:                                               ; preds = %30
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1070
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %46, metadata !893, metadata !DIExpression()) #7, !dbg !1062
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %46) #6, !dbg !1071
  br label %47, !dbg !1072

47:                                               ; preds = %30, %45
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1, !dbg !1073
  %49 = load void (i8*)*, void (i8*)** %48, align 4, !dbg !1073, !tbaa !1074
  call void %49(i8* nonnull %17) #6, !dbg !1073
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !571, metadata !DIExpression()) #7, !dbg !1075
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1077
  %50 = load i8, i8* %6, align 8, !dbg !1078, !tbaa !529, !range !580
  %51 = icmp eq i8 %50, 0, !dbg !1078
  br i1 %51, label %55, label %52, !dbg !1078

52:                                               ; preds = %47, %52
  call x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !1079
  %53 = load i8, i8* %6, align 8, !dbg !1078, !tbaa !529, !range !580
  %54 = icmp eq i8 %53, 0, !dbg !1078
  br i1 %54, label %55, label %52, !dbg !1078, !llvm.loop !1080

55:                                               ; preds = %52, %47
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1082
  %56 = load i32, i32* %11, align 8, !dbg !1083, !tbaa !1019
  br label %57, !dbg !1083

57:                                               ; preds = %55, %28
  %58 = phi i32 [ %56, %55 ], [ %29, %28 ], !dbg !1003
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1084
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1085, metadata !DIExpression()) #7, !dbg !1088
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !594, metadata !DIExpression()) #7, !dbg !1090
  call x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1093
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #7, !dbg !1084
  ret i32 %58, !dbg !1084
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 !dbg !1094 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1096, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %0, metadata !1097, metadata !DIExpression()), !dbg !1113
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #8, !dbg !1114
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1098, metadata !DIExpression()), !dbg !1113
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1, !dbg !1115
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1099, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1100, metadata !DIExpression()), !dbg !1113
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !dbg !1116, !tbaa !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1101, metadata !DIExpression()), !dbg !1113
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %11, !dbg !1117

11:                                               ; preds = %57, %2
  %12 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %58, %57 ], !dbg !1115
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %59, %57 ], !dbg !1118
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %60, %57 ], !dbg !1116
  %15 = phi i32 [ undef, %2 ], [ %61, %57 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1101, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1100, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, metadata !1099, metadata !DIExpression()), !dbg !1113
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, null, !dbg !1117
  br i1 %16, label %62, label %17, !dbg !1117

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1119
  %19 = load i32, i32* %18, align 4, !dbg !1119, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %19, metadata !1102, metadata !DIExpression()), !dbg !1120
  %20 = icmp eq i32 %19, %0, !dbg !1121
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1122
  %22 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %21, align 4, !dbg !1122, !tbaa !1018
  br i1 %20, label %23, label %57, !dbg !1121

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1104, metadata !DIExpression()), !dbg !1123
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %12, align 4, !dbg !1124, !tbaa !880
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1123
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1125, !tbaa !1061
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1125
  br i1 %25, label %28, label %26, !dbg !1125

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, metadata !1108, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8 0, metadata !1107, metadata !DIExpression()), !dbg !1123
  %27 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %22, null, !dbg !1127
  br i1 %27, label %40, label %29, !dbg !1127

28:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1128, !tbaa !1061
  br label %40, !dbg !1130

29:                                               ; preds = %26, %29
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %35, %29 ], [ %22, %26 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, metadata !1108, metadata !DIExpression()), !dbg !1126
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 1, !dbg !1131
  %32 = load i32, i32* %31, align 4, !dbg !1131, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %32, metadata !1111, metadata !DIExpression()), !dbg !1132
  %33 = icmp eq i32 %32, %0, !dbg !1133
  call void @llvm.dbg.value(metadata i1 %33, metadata !1107, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1123
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %30, i32 0, i32 2, !dbg !1134
  %35 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %34, align 4, !dbg !1134, !tbaa !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, metadata !1108, metadata !DIExpression()), !dbg !1126
  %36 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %35, null, !dbg !1127
  %37 = or i1 %33, %36, !dbg !1127
  br i1 %37, label %38, label %29, !dbg !1127, !llvm.loop !1135

38:                                               ; preds = %29
  %39 = zext i1 %33 to i8, !dbg !1133
  call void @llvm.dbg.value(metadata i8 %39, metadata !1107, metadata !DIExpression()), !dbg !1123
  br label %40, !dbg !1137

40:                                               ; preds = %38, %26, %28
  %41 = phi i8 [ 0, %28 ], [ 0, %26 ], [ %39, %38 ], !dbg !1138
  call void @llvm.dbg.value(metadata i8 %41, metadata !1107, metadata !DIExpression()), !dbg !1123
  %42 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1137, !tbaa !1139
  %43 = icmp ne i8 %41, 0, !dbg !1137
  %44 = tail call i32 %42(i8* nonnull %8, i32 1, i1 zeroext %43) #6, !dbg !1137
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1137
  store i32 %44, i32* %45, align 8, !dbg !1137, !tbaa !1019
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !714, metadata !DIExpression()) #7, !dbg !1140
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1142
  tail call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %46) #6, !dbg !1142
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !893, metadata !DIExpression()) #7, !dbg !1143
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !1145
  call void @llvm.dbg.value(metadata i32* %9, metadata !907, metadata !DIExpression()) #7, !dbg !1145
  %47 = atomicrmw and i32* %9, i32 -2 seq_cst, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %47, metadata !896, metadata !DIExpression()) #7, !dbg !1143
  %48 = and i32 %47, 2, !dbg !1148
  %49 = icmp ne i32 %48, 0, !dbg !1148
  call void @llvm.dbg.value(metadata i1 %49, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1143
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1143
  %50 = icmp ult i32 %47, 4
  %51 = or i1 %50, %49, !dbg !1149
  call void @llvm.dbg.value(metadata i1 %50, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1143
  br i1 %51, label %53, label %52, !dbg !1149

52:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !893, metadata !DIExpression()) #7, !dbg !1143
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #6, !dbg !1150
  br label %53, !dbg !1151

53:                                               ; preds = %40, %52
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !720, metadata !DIExpression()) #7, !dbg !1152
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 2, !dbg !1154
  store i8 0, i8* %54, align 8, !dbg !1154, !tbaa !529
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 1, !dbg !1155
  tail call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %55) #6, !dbg !1155
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !727, metadata !DIExpression()) #7, !dbg !1156
  tail call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %46) #6, !dbg !1158
  %56 = zext i8 %41 to i32, !dbg !1159
  br label %57

57:                                               ; preds = %17, %53
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %12, %53 ], [ %21, %17 ], !dbg !1113
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %53 ], [ %14, %17 ], !dbg !1113
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %53 ], [ %22, %17 ], !dbg !1113
  %61 = phi i32 [ %56, %53 ], [ %15, %17 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1101, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1100, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, metadata !1099, metadata !DIExpression()), !dbg !1113
  br i1 %20, label %71, label %11, !llvm.loop !1160

62:                                               ; preds = %11
  %63 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1162, !tbaa !1139
  %64 = tail call i32 %63(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1162
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !893, metadata !DIExpression()) #7, !dbg !1163
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !1165
  call void @llvm.dbg.value(metadata i32* %9, metadata !907, metadata !DIExpression()) #7, !dbg !1165
  %65 = atomicrmw and i32* %9, i32 -2 seq_cst, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %65, metadata !896, metadata !DIExpression()) #7, !dbg !1163
  %66 = and i32 %65, 2, !dbg !1168
  %67 = icmp ne i32 %66, 0, !dbg !1168
  call void @llvm.dbg.value(metadata i1 %67, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1163
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1163
  %68 = icmp ult i32 %65, 4
  %69 = or i1 %68, %67, !dbg !1169
  call void @llvm.dbg.value(metadata i1 %68, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1163
  br i1 %69, label %71, label %70, !dbg !1169

70:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !893, metadata !DIExpression()) #7, !dbg !1163
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #6, !dbg !1170
  br label %71, !dbg !1171

71:                                               ; preds = %57, %70, %62
  %72 = phi i32 [ 0, %62 ], [ 0, %70 ], [ %61, %57 ], !dbg !1113
  ret i32 %72, !dbg !1172
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?unpark_all@Synchronization@Internal@Runtime@Halide@@YAIII@Z"(i32 %0, i32 %1) local_unnamed_addr #0 !dbg !1173 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1177, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %0, metadata !1178, metadata !DIExpression()), !dbg !1205
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #8, !dbg !1206
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1179, metadata !DIExpression()), !dbg !1205
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1, !dbg !1207
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1180, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1181, metadata !DIExpression()), !dbg !1205
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1208, !tbaa !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1182, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 0, metadata !1183, metadata !DIExpression()), !dbg !1205
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1209
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1209
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1185, metadata !DIExpression()), !dbg !1209
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0, !dbg !1210
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1189, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 16, metadata !1190, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1181, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1182, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 0, metadata !1183, metadata !DIExpression()), !dbg !1205
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1211
  br i1 %9, label %91, label %10, !dbg !1211

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12, !dbg !1211

12:                                               ; preds = %10, %85
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %89, %85 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %85 ]
  %15 = phi i32 [ 16, %10 ], [ %88, %85 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %87, %85 ]
  %17 = phi i32 [ 0, %10 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1181, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1182, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %15, metadata !1190, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1189, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %17, metadata !1183, metadata !DIExpression()), !dbg !1205
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1212
  %19 = load i32, i32* %18, align 4, !dbg !1212, !tbaa !468
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1213
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !dbg !1213, !tbaa !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1193, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32 %19, metadata !1191, metadata !DIExpression()), !dbg !1214
  %22 = icmp eq i32 %19, %0, !dbg !1215
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1216, !tbaa !880
  br i1 %22, label %23, label %85, !dbg !1215

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1217, !tbaa !1061
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1217
  br i1 %25, label %26, label %27, !dbg !1217

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1218, !tbaa !1061
  br label %27, !dbg !1221

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15, !dbg !1222
  br i1 %28, label %29, label %78, !dbg !1222

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1194, metadata !DIExpression()), !dbg !1223
  %30 = shl i32 %15, 3, !dbg !1224
  %31 = call i8* @malloc(i32 %30) #6, !dbg !1224
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1224
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1189, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 0, metadata !1199, metadata !DIExpression()), !dbg !1225
  %33 = icmp eq i32 %15, 0, !dbg !1226
  br i1 %33, label %52, label %34, !dbg !1226

34:                                               ; preds = %29
  %35 = add i32 %15, -1, !dbg !1226
  %36 = and i32 %15, 3, !dbg !1226
  %37 = icmp ult i32 %35, 3, !dbg !1226
  br i1 %37, label %40, label %38, !dbg !1226

38:                                               ; preds = %34
  %39 = and i32 %15, -4, !dbg !1226
  br label %55, !dbg !1226

40:                                               ; preds = %55, %34
  %41 = phi i32 [ 0, %34 ], [ %73, %55 ]
  %42 = icmp eq i32 %36, 0, !dbg !1226
  br i1 %42, label %52, label %43, !dbg !1226

43:                                               ; preds = %40, %43
  %44 = phi i32 [ %49, %43 ], [ %41, %40 ]
  %45 = phi i32 [ %50, %43 ], [ %36, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, metadata !1199, metadata !DIExpression()), !dbg !1225
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %44, !dbg !1227
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %46, align 4, !dbg !1227, !tbaa !880
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %44, !dbg !1227
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %47, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %48, align 4, !dbg !1227, !tbaa !880
  %49 = add nuw i32 %44, 1, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %49, metadata !1199, metadata !DIExpression()), !dbg !1225
  %50 = add i32 %45, -1, !dbg !1226
  %51 = icmp eq i32 %50, 0, !dbg !1226
  br i1 %51, label %52, label %43, !dbg !1226, !llvm.loop !1231

52:                                               ; preds = %40, %43, %29
  %53 = shl i32 %15, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %53, metadata !1190, metadata !DIExpression()), !dbg !1205
  %54 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1234
  br i1 %54, label %78, label %76, !dbg !1234

55:                                               ; preds = %55, %38
  %56 = phi i32 [ 0, %38 ], [ %73, %55 ]
  %57 = phi i32 [ %39, %38 ], [ %74, %55 ]
  call void @llvm.dbg.value(metadata i32 %56, metadata !1199, metadata !DIExpression()), !dbg !1225
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %56, !dbg !1227
  %59 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, align 4, !dbg !1227, !tbaa !880
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %56, !dbg !1227
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 4, !dbg !1227, !tbaa !880
  %61 = or i32 %56, 1, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %61, metadata !1199, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %61, metadata !1199, metadata !DIExpression()), !dbg !1225
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %61, !dbg !1227
  %63 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1227, !tbaa !880
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %61, !dbg !1227
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %63, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %64, align 4, !dbg !1227, !tbaa !880
  %65 = or i32 %56, 2, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %65, metadata !1199, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %65, metadata !1199, metadata !DIExpression()), !dbg !1225
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %65, !dbg !1227
  %67 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %66, align 4, !dbg !1227, !tbaa !880
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %65, !dbg !1227
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %67, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %68, align 4, !dbg !1227, !tbaa !880
  %69 = or i32 %56, 3, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %69, metadata !1199, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %69, metadata !1199, metadata !DIExpression()), !dbg !1225
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %69, !dbg !1227
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1227, !tbaa !880
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %69, !dbg !1227
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 4, !dbg !1227, !tbaa !880
  %73 = add nuw i32 %56, 4, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %73, metadata !1199, metadata !DIExpression()), !dbg !1225
  %74 = add i32 %57, -4, !dbg !1226
  %75 = icmp eq i32 %74, 0, !dbg !1226
  br i1 %75, label %40, label %55, !dbg !1226, !llvm.loop !1235

76:                                               ; preds = %52
  %77 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1237
  call void @free(i8* %77) #6, !dbg !1237
  br label %78, !dbg !1240

78:                                               ; preds = %52, %76, %27
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %76 ], [ %32, %52 ], !dbg !1205
  %80 = phi i32 [ %15, %27 ], [ %53, %76 ], [ %53, %52 ], !dbg !1205
  call void @llvm.dbg.value(metadata i32 %80, metadata !1190, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %79, metadata !1189, metadata !DIExpression()), !dbg !1205
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1241
  store i32 %1, i32* %81, align 8, !dbg !1241, !tbaa !1019
  %82 = add i32 %17, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %82, metadata !1183, metadata !DIExpression()), !dbg !1205
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %79, i32 %17, !dbg !1242
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %83, align 4, !dbg !1242, !tbaa !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !714, metadata !DIExpression()) #7, !dbg !1243
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1245
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %84) #6, !dbg !1245
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1182, metadata !DIExpression()), !dbg !1205
  br label %85, !dbg !1246

85:                                               ; preds = %12, %78
  %86 = phi i32 [ %82, %78 ], [ %17, %12 ], !dbg !1205
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %79, %78 ], [ %16, %12 ], !dbg !1205
  %88 = phi i32 [ %80, %78 ], [ %15, %12 ], !dbg !1205
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %78 ], [ %14, %12 ], !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !1181, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1182, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %88, metadata !1190, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %87, metadata !1189, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %86, metadata !1183, metadata !DIExpression()), !dbg !1205
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1211
  br i1 %90, label %91, label %12, !dbg !1211, !llvm.loop !1247

91:                                               ; preds = %85, %2
  %92 = phi i32 [ 0, %2 ], [ %86, %85 ], !dbg !1205
  %93 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %87, %85 ], !dbg !1205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !893, metadata !DIExpression()) #7, !dbg !1249
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !1251
  call void @llvm.dbg.value(metadata i32 -2, metadata !904, metadata !DIExpression()) #7, !dbg !1252
  call void @llvm.dbg.value(metadata i32* %94, metadata !907, metadata !DIExpression()) #7, !dbg !1252
  %95 = atomicrmw and i32* %94, i32 -2 seq_cst, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %95, metadata !896, metadata !DIExpression()) #7, !dbg !1249
  %96 = and i32 %95, 2, !dbg !1255
  %97 = icmp ne i32 %96, 0, !dbg !1255
  call void @llvm.dbg.value(metadata i1 %97, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1249
  call void @llvm.dbg.value(metadata i1 undef, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1249
  %98 = icmp ult i32 %95, 4
  %99 = or i1 %98, %97, !dbg !1256
  call void @llvm.dbg.value(metadata i1 %98, metadata !898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1249
  br i1 %99, label %102, label %100, !dbg !1256

100:                                              ; preds = %91
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !1257
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %101, metadata !893, metadata !DIExpression()) #7, !dbg !1249
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %101) #6, !dbg !1258
  br label %102, !dbg !1259

102:                                              ; preds = %91, %100
  call void @llvm.dbg.value(metadata i32 0, metadata !1201, metadata !DIExpression()), !dbg !1260
  %103 = icmp eq i32 %92, 0, !dbg !1261
  br i1 %103, label %113, label %105, !dbg !1261

104:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i32 0, metadata !1203, metadata !DIExpression()), !dbg !1262
  br i1 %103, label %113, label %115, !dbg !1263

105:                                              ; preds = %102, %105
  %106 = phi i32 [ %111, %105 ], [ 0, %102 ]
  call void @llvm.dbg.value(metadata i32 %106, metadata !1201, metadata !DIExpression()), !dbg !1260
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, i32 %106, !dbg !1264
  %108 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %107, align 4, !dbg !1264, !tbaa !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %108, metadata !720, metadata !DIExpression()) #7, !dbg !1267
  %109 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %108, i32 0, i32 0, i32 2, !dbg !1269
  store i8 0, i8* %109, align 8, !dbg !1269, !tbaa !529
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %108, i32 0, i32 0, i32 1, !dbg !1270
  call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %110) #6, !dbg !1270
  %111 = add nuw i32 %106, 1, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %111, metadata !1201, metadata !DIExpression()), !dbg !1260
  %112 = icmp eq i32 %111, %92, !dbg !1261
  br i1 %112, label %104, label %105, !dbg !1261, !llvm.loop !1272

113:                                              ; preds = %115, %102, %104
  %114 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, %8, !dbg !1274
  br i1 %114, label %124, label %122, !dbg !1274

115:                                              ; preds = %104, %115
  %116 = phi i32 [ %120, %115 ], [ 0, %104 ]
  call void @llvm.dbg.value(metadata i32 %116, metadata !1203, metadata !DIExpression()), !dbg !1262
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, i32 %116, !dbg !1275
  %118 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %117, align 4, !dbg !1275, !tbaa !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %118, metadata !727, metadata !DIExpression()) #7, !dbg !1278
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %118, i32 0, i32 0, i32 0, !dbg !1280
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %119) #6, !dbg !1280
  %120 = add nuw i32 %116, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %120, metadata !1203, metadata !DIExpression()), !dbg !1262
  %121 = icmp eq i32 %120, %92, !dbg !1263
  br i1 %121, label %113, label %115, !dbg !1263, !llvm.loop !1282

122:                                              ; preds = %113
  %123 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93 to i8*, !dbg !1284
  call void @free(i8* %123) #6, !dbg !1284
  br label %124, !dbg !1287

124:                                              ; preds = %122, %113
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1288
  ret i32 %92, !dbg !1289
}

; Function Attrs: nounwind
define weak dso_local i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z"(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #4 !dbg !1290 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %3, metadata !1294, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1295, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %1, metadata !1296, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %0, metadata !1297, metadata !DIExpression()), !dbg !1309
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1310
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1298, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i32 %1, metadata !1296, metadata !DIExpression()), !dbg !1309
  call void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #8, !dbg !1310
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0, !dbg !1311
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1311
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1299, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1022, metadata !DIExpression()), !dbg !1312
  store i8 0, i8* %8, align 4, !dbg !1314, !tbaa !1029
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1, !dbg !1314
  store i32 0, i32* %9, align 4, !dbg !1314, !tbaa !1031
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0, !dbg !1315
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !dbg !1315, !tbaa !1033
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1315
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #6, !dbg !1315
  br i1 %13, label %15, label %14, !dbg !1315

14:                                               ; preds = %4
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1316
  br label %123, !dbg !1319

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0, !dbg !1320
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1320, !tbaa !890
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1, !dbg !1320
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1300, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1301, metadata !DIExpression()), !dbg !1309
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !dbg !1321, !tbaa !880
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1302, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1300, metadata !DIExpression()), !dbg !1309
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1322
  br i1 %20, label %105, label %21, !dbg !1322

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24, !dbg !1322

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1302, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, metadata !1300, metadata !DIExpression()), !dbg !1309
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1, !dbg !1323
  %32 = load i32, i32* %31, align 4, !dbg !1323, !tbaa !468
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2, !dbg !1324
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1324, !tbaa !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1308, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %32, metadata !1306, metadata !DIExpression()), !dbg !1325
  %35 = icmp eq i32 %32, %0, !dbg !1326
  br i1 %35, label %36, label %50, !dbg !1326

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !dbg !1327, !tbaa !880
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1330, !tbaa !890
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2, !dbg !1330
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1330, !tbaa !1061
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28, !dbg !1330
  br i1 %40, label %41, label %42, !dbg !1330

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1331, !tbaa !1061
  br label %42, !dbg !1334

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null, !dbg !1335
  br i1 %43, label %50, label %44, !dbg !1335

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null, !dbg !1336
  br i1 %45, label %48, label %46, !dbg !1336

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2, !dbg !1339
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !dbg !1339, !tbaa !1018
  br label %48, !dbg !1342

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ], !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32* undef, metadata !1343, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i32* %31, metadata !1348, metadata !DIExpression()), !dbg !1349
  store i32 %1, i32* %31, align 4, !dbg !1351, !tbaa !468
  br label %50, !dbg !1352

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ], !dbg !1309
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ], !dbg !1309
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ], !dbg !1353
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ], !dbg !1354
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ], !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1302, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1300, metadata !DIExpression()), !dbg !1309
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1322
  br i1 %56, label %86, label %24, !dbg !1322, !llvm.loop !1355

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1302, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, metadata !1300, metadata !DIExpression()), !dbg !1309
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1, !dbg !1323
  %64 = load i32, i32* %63, align 4, !dbg !1323, !tbaa !468
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2, !dbg !1324
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !dbg !1324, !tbaa !1018
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1308, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %64, metadata !1306, metadata !DIExpression()), !dbg !1325
  %67 = icmp eq i32 %64, %0, !dbg !1326
  br i1 %67, label %68, label %80, !dbg !1326

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1327, !tbaa !880
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1330, !tbaa !890
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2, !dbg !1330
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1330, !tbaa !1061
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60, !dbg !1330
  br i1 %72, label %73, label %74, !dbg !1330

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1331, !tbaa !1061
  br label %74, !dbg !1334

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null, !dbg !1336
  br i1 %75, label %78, label %76, !dbg !1336

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2, !dbg !1339
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1339, !tbaa !1018
  br label %78, !dbg !1342

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ], !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32* undef, metadata !1343, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i32* %63, metadata !1348, metadata !DIExpression()), !dbg !1349
  store i32 %1, i32* %63, align 4, !dbg !1351, !tbaa !468
  br label %80, !dbg !1352

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ], !dbg !1309
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ], !dbg !1309
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ], !dbg !1353
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ], !dbg !1354
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %84, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %83, metadata !1303, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1302, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %82, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %81, metadata !1300, metadata !DIExpression()), !dbg !1309
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null, !dbg !1322
  br i1 %85, label %86, label %57, !dbg !1322, !llvm.loop !1355

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ], !dbg !1353
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ], !dbg !1354
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ], !dbg !1309
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null, !dbg !1357
  br i1 %90, label %105, label %91, !dbg !1357

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2, !dbg !1358
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !dbg !1358, !tbaa !1018
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1, !dbg !1361
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !dbg !1361, !tbaa !892
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1, !dbg !1361
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !dbg !1361, !tbaa !1055
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null, !dbg !1361
  br i1 %97, label %102, label %98, !dbg !1361

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1362
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !dbg !1362, !tbaa !1061
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2, !dbg !1362
  br label %102, !dbg !1365

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !dbg !1366, !tbaa !880
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1367
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !dbg !1367, !tbaa !1061
  br label %105, !dbg !1368

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3, !dbg !1369
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !dbg !1369, !tbaa !1370
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null, !dbg !1369
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #6, !dbg !1369
  br i1 %110, label %111, label %116, !dbg !1371

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3, !dbg !1372
  store i32 %3, i32* %112, align 8, !dbg !1372, !tbaa !1019
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !714, metadata !DIExpression()) #7, !dbg !1375
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0, !dbg !1377
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %113) #6, !dbg !1377
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1378
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !720, metadata !DIExpression()) #7, !dbg !1379
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2, !dbg !1381
  store i8 0, i8* %114, align 8, !dbg !1381, !tbaa !529
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1, !dbg !1382
  call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %115) #6, !dbg !1382
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !727, metadata !DIExpression()) #7, !dbg !1383
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %113) #6, !dbg !1385
  br label %117, !dbg !1386

116:                                              ; preds = %105
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1387
  br label %117, !dbg !1389

117:                                              ; preds = %116, %111
  %118 = load i8, i8* %8, align 4, !dbg !1390
  %119 = and i8 %118, 1, !dbg !1390
  %120 = icmp ne i8 %119, 0, !dbg !1390
  %121 = and i1 %110, %120, !dbg !1390
  %122 = zext i1 %121 to i32, !dbg !1390
  br label %123

123:                                              ; preds = %117, %14
  %124 = phi i32 [ %122, %117 ], [ 0, %14 ], !dbg !1309
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1391
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1391
  ret i32 %124, !dbg !1391
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1392 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1394, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %0, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %0, metadata !1396, metadata !DIExpression()), !dbg !1398
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1399
  %4 = bitcast i8* %3 to i32**, !dbg !1399
  %5 = load i32*, i32** %4, align 4, !dbg !1399, !tbaa !1400
  %6 = load i32, i32* %5, align 4, !dbg !1399, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %6, metadata !1397, metadata !DIExpression()), !dbg !1398
  %7 = icmp eq i32 %6, 3, !dbg !1402
  ret i1 %7, !dbg !1402
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1403 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1405, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1410
  call void @llvm.dbg.value(metadata i32 %1, metadata !1406, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %0, metadata !1407, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %0, metadata !1408, metadata !DIExpression()), !dbg !1410
  %4 = select i1 %2, i32 2, i32 0, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %4, metadata !1409, metadata !DIExpression()), !dbg !1410
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1412
  %6 = bitcast i8* %5 to i32**, !dbg !1412
  %7 = load i32*, i32** %6, align 4, !dbg !1412, !tbaa !1400
  call void @llvm.dbg.value(metadata i32* undef, metadata !1413, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i32* %7, metadata !1416, metadata !DIExpression()), !dbg !1417
  store i32 %4, i32* %7, align 4, !dbg !1419, !tbaa !468
  fence seq_cst, !dbg !1420
  ret i32 0, !dbg !1421
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1422 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %1, metadata !1425, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %0, metadata !1426, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %0, metadata !1427, metadata !DIExpression()), !dbg !1431
  br i1 %2, label %8, label %4, !dbg !1432

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1427, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 0, metadata !1428, metadata !DIExpression()), !dbg !1433
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1434
  %6 = bitcast i8* %5 to i32**, !dbg !1434
  %7 = load i32*, i32** %6, align 4, !dbg !1434, !tbaa !1435
  call void @llvm.dbg.value(metadata i32* undef, metadata !1343, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32* %7, metadata !1348, metadata !DIExpression()), !dbg !1437
  store i32 0, i32* %7, align 4, !dbg !1439, !tbaa !468
  br label %8, !dbg !1440

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1441
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 !dbg !1442 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1444, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8* %0, metadata !1445, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8* %0, metadata !1446, metadata !DIExpression()), !dbg !1448
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1449
  %4 = bitcast i8* %3 to i32**, !dbg !1449
  %5 = load i32*, i32** %4, align 4, !dbg !1449, !tbaa !1450
  %6 = load i32, i32* %5, align 4, !dbg !1449, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %6, metadata !1447, metadata !DIExpression()), !dbg !1448
  %7 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1452
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1452
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !dbg !1452, !tbaa !1453
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32, !dbg !1452
  %11 = icmp eq i32 %6, %10, !dbg !1452
  br i1 %11, label %12, label %27, !dbg !1452

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32* undef, metadata !1343, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i32* %5, metadata !1348, metadata !DIExpression()), !dbg !1454
  store i32 0, i32* %5, align 4, !dbg !1456, !tbaa !468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, metadata !1457, metadata !DIExpression()), !dbg !1463
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0, !dbg !1465
  %14 = load i32, i32* %13, align 4, !dbg !1465, !tbaa !468
  br label %15, !dbg !1466

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ], !dbg !1463
  call void @llvm.dbg.value(metadata i32 %16, metadata !1460, metadata !DIExpression()), !dbg !1463
  %17 = and i32 %16, 1, !dbg !1467
  %18 = icmp eq i32 %17, 0, !dbg !1467
  br i1 %18, label %24, label %19, !dbg !1467

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1460, metadata !DIExpression()), !dbg !1463
  %20 = or i32 %16, 2, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %20, metadata !1461, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32* undef, metadata !1470, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32* undef, metadata !1473, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32* %13, metadata !1474, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32* %13, metadata !491, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %16, metadata !492, metadata !DIExpression()), !dbg !1477
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst, !dbg !1479
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %22, metadata !493, metadata !DIExpression()), !dbg !1477
  %23 = icmp eq i32 %16, %22, !dbg !1480
  br i1 %23, label %24, label %15, !llvm.loop !1481

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1483
  store i8 %25, i8* %26, align 4, !dbg !1483, !tbaa !1029
  br label %27, !dbg !1484

27:                                               ; preds = %2, %24
  ret i1 %11, !dbg !1485
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1486 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !1488, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1493
  call void @llvm.dbg.value(metadata i1 %2, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1493
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1490, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %0, metadata !1491, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %0, metadata !1492, metadata !DIExpression()), !dbg !1493
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1494
  %6 = load i8, i8* %5, align 4, !dbg !1494, !tbaa !1029, !range !580
  %7 = icmp ne i8 %6, 0, !dbg !1494
  %8 = and i1 %7, %3, !dbg !1494
  br i1 %8, label %9, label %15, !dbg !1494

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1495
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1495
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !dbg !1495, !tbaa !1453
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1498, metadata !DIExpression()), !dbg !1501
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0, !dbg !1503
  call void @llvm.dbg.value(metadata i32 2, metadata !1504, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32* %13, metadata !1507, metadata !DIExpression()), !dbg !1508
  %14 = atomicrmw or i32* %13, i32 2 seq_cst, !dbg !1510
  br label %15, !dbg !1511

15:                                               ; preds = %4, %9
  ret void, !dbg !1512
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1513 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1515, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !1516, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !1517, metadata !DIExpression()), !dbg !1519
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1520
  %4 = bitcast i8* %3 to i32**, !dbg !1520
  %5 = load i32*, i32** %4, align 4, !dbg !1520, !tbaa !1521
  %6 = load i32, i32* %5, align 4, !dbg !1520, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %6, metadata !1518, metadata !DIExpression()), !dbg !1519
  %7 = icmp eq i32 %6, 0, !dbg !1523
  %8 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1524
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1524
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !dbg !1524, !tbaa !1526
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32, !dbg !1524
  br i1 %7, label %16, label %12, !dbg !1523

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11, !dbg !1527
  br i1 %13, label %18, label %14, !dbg !1527

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1, !dbg !1528
  br label %16, !dbg !1531

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !dbg !1524, !tbaa !468
  br label %18, !dbg !1532

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ], !dbg !1519
  ret i1 %19, !dbg !1532
}

; Function Attrs: nounwind
define weak dso_local void @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #4 !dbg !1533 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1535, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i8* %0, metadata !1536, metadata !DIExpression()), !dbg !1537
  %3 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1538
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1538
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !dbg !1538, !tbaa !1526
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1539, metadata !DIExpression()) #7, !dbg !1544
  call void @llvm.dbg.value(metadata i32 1, metadata !1542, metadata !DIExpression()) #7, !dbg !1544
  call void @llvm.dbg.value(metadata i32 0, metadata !1543, metadata !DIExpression()) #7, !dbg !1544
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0, !dbg !1546
  call void @llvm.dbg.value(metadata i32* undef, metadata !559, metadata !DIExpression()) #7, !dbg !1547
  call void @llvm.dbg.value(metadata i32* undef, metadata !562, metadata !DIExpression()) #7, !dbg !1547
  call void @llvm.dbg.value(metadata i32* %6, metadata !563, metadata !DIExpression()) #7, !dbg !1547
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1549
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1549
  call void @llvm.dbg.value(metadata i32* %6, metadata !491, metadata !DIExpression()) #7, !dbg !1549
  call void @llvm.dbg.value(metadata i32 1, metadata !492, metadata !DIExpression()) #7, !dbg !1549
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1551
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !1549
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1552
  br i1 %8, label %22, label %9, !dbg !1546

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1553, metadata !DIExpression()) #7, !dbg !1559
  call void @llvm.dbg.value(metadata i32 1, metadata !1556, metadata !DIExpression()) #7, !dbg !1559
  call void @llvm.dbg.value(metadata i32 0, metadata !1557, metadata !DIExpression()) #7, !dbg !1559
  call void @llvm.dbg.value(metadata i32* undef, metadata !1563, metadata !DIExpression()) #7, !dbg !1568
  call void @llvm.dbg.value(metadata i32* undef, metadata !1566, metadata !DIExpression()) #7, !dbg !1568
  call void @llvm.dbg.value(metadata i32* %6, metadata !1567, metadata !DIExpression()) #7, !dbg !1568
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1570
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1570
  call void @llvm.dbg.value(metadata i32* %6, metadata !491, metadata !DIExpression()) #7, !dbg !1570
  call void @llvm.dbg.value(metadata i32 1, metadata !492, metadata !DIExpression()) #7, !dbg !1570
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1572
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !1570
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !1573
  br i1 %11, label %22, label %12, !dbg !1574

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1575
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1558, metadata !DIExpression()) #7, !dbg !1575
  call void @llvm.dbg.value(metadata i32* %6, metadata !1576, metadata !DIExpression()) #7, !dbg !1580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1579, metadata !DIExpression()) #7, !dbg !1580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1582, metadata !DIExpression()) #7, !dbg !1586
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1588
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1588
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %15, align 4, !dbg !1588, !tbaa !1074
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1588
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1588
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !dbg !1588, !tbaa !1370
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1589
  store i32* %6, i32** %18, align 4, !dbg !1589, !tbaa !1400
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !dbg !1590, !tbaa !1033
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %16, align 4, !dbg !1592, !tbaa !1139
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1593
  %20 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32, !dbg !1593
  %21 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %20, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %19) #6, !dbg !1593
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1594
  br label %22, !dbg !1594

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1595
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1596 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %1, metadata !1599, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %0, metadata !1600, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %0, metadata !1601, metadata !DIExpression()), !dbg !1605
  br i1 %2, label %8, label %4, !dbg !1606

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1601, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 0, metadata !1602, metadata !DIExpression()), !dbg !1607
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1608
  %6 = bitcast i8* %5 to i32**, !dbg !1608
  %7 = load i32*, i32** %6, align 4, !dbg !1608, !tbaa !1521
  call void @llvm.dbg.value(metadata i32* undef, metadata !1343, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32* %7, metadata !1348, metadata !DIExpression()), !dbg !1609
  store i32 0, i32* %7, align 4, !dbg !1611, !tbaa !468
  br label %8, !dbg !1612

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1613
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1614 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1618, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1621, metadata !DIExpression()) #7, !dbg !1626
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()) #7, !dbg !1626
  call void @llvm.dbg.value(metadata i32 1, metadata !1625, metadata !DIExpression()) #7, !dbg !1626
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1628
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !1629
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !1629
  call void @llvm.dbg.value(metadata i32* %3, metadata !481, metadata !DIExpression()) #7, !dbg !1629
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1631
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1631
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()) #7, !dbg !1631
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !1631
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst, !dbg !1633
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !1631
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1634
  br i1 %5, label %53, label %6, !dbg !1628

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1621, metadata !DIExpression()) #7, !dbg !1626
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1635, metadata !DIExpression()) #7, !dbg !1649
  call void @llvm.dbg.value(metadata i32 40, metadata !1638, metadata !DIExpression()) #7, !dbg !1649
  %7 = load i32, i32* %3, align 4, !dbg !1653, !tbaa !468
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %15 = ptrtoint %struct.halide_mutex* %0 to i32
  br label %16, !dbg !1654

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19, !dbg !1655

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ], !dbg !1649
  call void @llvm.dbg.value(metadata i32 %18, metadata !1638, metadata !DIExpression()) #7, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %20, metadata !1639, metadata !DIExpression()) #7, !dbg !1649
  %21 = and i32 %20, 1, !dbg !1655
  %22 = icmp eq i32 %21, 0, !dbg !1655
  br i1 %22, label %23, label %28, !dbg !1655

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1639, metadata !DIExpression()) #7, !dbg !1649
  %24 = or i32 %20, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %24, metadata !1640, metadata !DIExpression()) #7, !dbg !1657
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32* %3, metadata !481, metadata !DIExpression()) #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1660
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1660
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()) #7, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %20, metadata !492, metadata !DIExpression()) #7, !dbg !1660
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst, !dbg !1662
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %26, metadata !493, metadata !DIExpression()) #7, !dbg !1660
  %27 = icmp eq i32 %20, %26, !dbg !1663
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !501, metadata !DIExpression()) #7, !dbg !1664
  %29 = icmp sgt i32 %18, 0, !dbg !1666
  br i1 %29, label %30, label %35, !dbg !1666

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %18, metadata !1638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1649
  %31 = icmp eq i32 %18, 1, !dbg !1667
  br i1 %31, label %35, label %32, !dbg !1668

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %33, metadata !1638, metadata !DIExpression()) #7, !dbg !1649
  call void @halide_thread_yield() #6, !dbg !1670
  %34 = load i32, i32* %3, align 4, !dbg !1673, !tbaa !468
  br label %49, !dbg !1674

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !1639, metadata !DIExpression()) #7, !dbg !1649
  %37 = and i32 %20, 2, !dbg !1675
  %38 = icmp eq i32 %37, 0, !dbg !1675
  br i1 %38, label %39, label %44, !dbg !1675

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %20, metadata !1639, metadata !DIExpression()) #7, !dbg !1649
  %40 = or i32 %20, 2, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %40, metadata !1644, metadata !DIExpression()) #7, !dbg !1677
  call void @llvm.dbg.value(metadata i32* undef, metadata !1470, metadata !DIExpression()) #7, !dbg !1678
  call void @llvm.dbg.value(metadata i32* undef, metadata !1473, metadata !DIExpression()) #7, !dbg !1678
  call void @llvm.dbg.value(metadata i32* %3, metadata !1474, metadata !DIExpression()) #7, !dbg !1678
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1680
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1680
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()) #7, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %20, metadata !492, metadata !DIExpression()) #7, !dbg !1680
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst, !dbg !1682
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %42, metadata !493, metadata !DIExpression()) #7, !dbg !1680
  %43 = icmp eq i32 %20, %42, !dbg !1683
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1684
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1647, metadata !DIExpression()) #7, !dbg !1684
  call void @llvm.dbg.value(metadata i32* %3, metadata !1576, metadata !DIExpression()) #7, !dbg !1685
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1579, metadata !DIExpression()) #7, !dbg !1685
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1582, metadata !DIExpression()) #7, !dbg !1687
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %10, align 4, !dbg !1689, !tbaa !1074
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1689, !tbaa !1370
  store i32* %3, i32** %13, align 4, !dbg !1690, !tbaa !1400
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1691, !tbaa !1033
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %11, align 4, !dbg !1692, !tbaa !1139
  %45 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %14) #6, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %45, metadata !1648, metadata !DIExpression()) #7, !dbg !1694
  %46 = icmp eq i32 %45, %15, !dbg !1695
  br i1 %46, label %52, label %47, !dbg !1695

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 40, metadata !1638, metadata !DIExpression()) #7, !dbg !1649
  %48 = load i32, i32* %3, align 4, !dbg !1696, !tbaa !468
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1697
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16, !dbg !1655, !llvm.loop !1698

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1697
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void, !dbg !1700
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1701 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1704, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1539, metadata !DIExpression()) #7, !dbg !1706
  call void @llvm.dbg.value(metadata i32 1, metadata !1542, metadata !DIExpression()) #7, !dbg !1706
  call void @llvm.dbg.value(metadata i32 0, metadata !1543, metadata !DIExpression()) #7, !dbg !1706
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1708
  call void @llvm.dbg.value(metadata i32* undef, metadata !559, metadata !DIExpression()) #7, !dbg !1709
  call void @llvm.dbg.value(metadata i32* undef, metadata !562, metadata !DIExpression()) #7, !dbg !1709
  call void @llvm.dbg.value(metadata i32* %3, metadata !563, metadata !DIExpression()) #7, !dbg !1709
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata i32 1, metadata !492, metadata !DIExpression()) #7, !dbg !1711
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !1713
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !1711
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1714
  br i1 %5, label %19, label %6, !dbg !1708

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1553, metadata !DIExpression()) #7, !dbg !1715
  call void @llvm.dbg.value(metadata i32 1, metadata !1556, metadata !DIExpression()) #7, !dbg !1715
  call void @llvm.dbg.value(metadata i32 0, metadata !1557, metadata !DIExpression()) #7, !dbg !1715
  call void @llvm.dbg.value(metadata i32* undef, metadata !1563, metadata !DIExpression()) #7, !dbg !1717
  call void @llvm.dbg.value(metadata i32* undef, metadata !1566, metadata !DIExpression()) #7, !dbg !1717
  call void @llvm.dbg.value(metadata i32* %3, metadata !1567, metadata !DIExpression()) #7, !dbg !1717
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1719
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1719
  call void @llvm.dbg.value(metadata i32* %3, metadata !491, metadata !DIExpression()) #7, !dbg !1719
  call void @llvm.dbg.value(metadata i32 1, metadata !492, metadata !DIExpression()) #7, !dbg !1719
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !1721
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !1719
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1722
  br i1 %8, label %19, label %9, !dbg !1723

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1724
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #7, !dbg !1724
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1558, metadata !DIExpression()) #7, !dbg !1724
  call void @llvm.dbg.value(metadata i32* %3, metadata !1576, metadata !DIExpression()) #7, !dbg !1725
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1579, metadata !DIExpression()) #7, !dbg !1725
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1582, metadata !DIExpression()) #7, !dbg !1727
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1729
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1729
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !dbg !1729, !tbaa !1074
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1729
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1729
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !1729, !tbaa !1370
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1730
  store i32* %3, i32** %15, align 4, !dbg !1730, !tbaa !1400
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !1731, !tbaa !1033
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !dbg !1732, !tbaa !1139
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1733
  %17 = ptrtoint %struct.halide_mutex* %0 to i32, !dbg !1733
  %18 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16) #6, !dbg !1733
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #7, !dbg !1734
  br label %19, !dbg !1734

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !1735
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1736 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1741, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1742, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1744, metadata !DIExpression()) #7, !dbg !1749
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1751
  %4 = load i32, i32* %3, align 4, !dbg !1751, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %4, metadata !1747, metadata !DIExpression()) #7, !dbg !1749
  %5 = icmp eq i32 %4, 0, !dbg !1752
  br i1 %5, label %18, label %6, !dbg !1752

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1744, metadata !DIExpression()) #7, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1742, metadata !DIExpression()), !dbg !1743
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !1753
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !1753
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1748, metadata !DIExpression()) #7, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %4, metadata !1747, metadata !DIExpression()) #7, !dbg !1749
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1753
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1754, metadata !DIExpression()) #7, !dbg !1759
  call void @llvm.dbg.value(metadata i32* %3, metadata !1757, metadata !DIExpression()) #7, !dbg !1759
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1758, metadata !DIExpression()) #7, !dbg !1759
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1582, metadata !DIExpression()) #7, !dbg !1761
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1763
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1763
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %10, align 4, !dbg !1763, !tbaa !1074
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1763
  store i32 (i8*, i32, i1)* @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %11, align 4, !dbg !1763, !tbaa !1139
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1763
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1, !dbg !1764
  store i32* %3, i32** %13, align 4, !dbg !1764, !tbaa !1450
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2, !dbg !1764
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !dbg !1764, !tbaa !1453
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1765, !tbaa !1033
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1767, !tbaa !1370
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, !dbg !1768
  %16 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1768
  %17 = call i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z"(i32 %16, i32 %4, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15, i32 0) #6, !dbg !1768
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !1769
  br label %18, !dbg !1769

18:                                               ; preds = %1, %6
  ret void, !dbg !1770
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1771 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1774, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1776, metadata !DIExpression()) #7, !dbg !1781
  %3 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1783
  %4 = load i32, i32* %3, align 4, !dbg !1783, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %4, metadata !1779, metadata !DIExpression()) #7, !dbg !1781
  %5 = icmp eq i32 %4, 0, !dbg !1784
  br i1 %5, label %18, label %6, !dbg !1784

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1776, metadata !DIExpression()) #7, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1774, metadata !DIExpression()), !dbg !1775
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !1785
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !1785
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1780, metadata !DIExpression()) #7, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %4, metadata !1779, metadata !DIExpression()) #7, !dbg !1781
  %8 = inttoptr i32 %4 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1785
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, metadata !1786, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata i32* %3, metadata !1789, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1790, metadata !DIExpression()) #7, !dbg !1791
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1582, metadata !DIExpression()) #7, !dbg !1793
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1795
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1795, !tbaa !1033
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1795
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %10, align 4, !dbg !1795, !tbaa !1074
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1795
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1795
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1795, !tbaa !1370
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1, !dbg !1796
  store i32* %3, i32** %13, align 4, !dbg !1796, !tbaa !1435
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2, !dbg !1796
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %8, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %14, align 4, !dbg !1796, !tbaa !1797
  store i32 (i8*, i32, i1)* @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %11, align 4, !dbg !1798, !tbaa !1139
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, !dbg !1800
  %16 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1800
  %17 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %16, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %15) #6, !dbg !1800
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !1801
  br label %18, !dbg !1801

18:                                               ; preds = %1, %6
  ret void, !dbg !1802
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !1803 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1807, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1808, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1809, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1810, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1812, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1815, metadata !DIExpression()) #7, !dbg !1821
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !1823
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1823
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1816, metadata !DIExpression()) #7, !dbg !1823
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1824, metadata !DIExpression()) #7, !dbg !1829
  call void @llvm.dbg.value(metadata i32* %6, metadata !1827, metadata !DIExpression()) #7, !dbg !1829
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1828, metadata !DIExpression()) #7, !dbg !1829
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1582, metadata !DIExpression()) #7, !dbg !1831
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0, !dbg !1833
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1, !dbg !1833
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2, !dbg !1833
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3, !dbg !1833
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !dbg !1833, !tbaa !1370
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1, !dbg !1834
  store i32* %6, i32** %11, align 4, !dbg !1834, !tbaa !1521
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2, !dbg !1834
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !1834
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !dbg !1834, !tbaa !1526
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !dbg !1835, !tbaa !1033
  store void (i8*)* @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %8, align 4, !dbg !1837, !tbaa !1074
  store i32 (i8*, i32, i1)* @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %9, align 4, !dbg !1838, !tbaa !1139
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, !dbg !1839
  %15 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1839
  %16 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %14) #6, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %16, metadata !1817, metadata !DIExpression()) #7, !dbg !1821
  %17 = ptrtoint %struct.halide_mutex* %1 to i32, !dbg !1840
  %18 = icmp eq i32 %16, %17, !dbg !1840
  %19 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !1841
  br i1 %18, label %69, label %20, !dbg !1840

20:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1621, metadata !DIExpression()) #7, !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()) #7, !dbg !1842
  call void @llvm.dbg.value(metadata i32 1, metadata !1625, metadata !DIExpression()) #7, !dbg !1842
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !1845
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !1845
  call void @llvm.dbg.value(metadata i32* %19, metadata !481, metadata !DIExpression()) #7, !dbg !1845
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1847
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1847
  call void @llvm.dbg.value(metadata i32* %19, metadata !491, metadata !DIExpression()) #7, !dbg !1847
  call void @llvm.dbg.value(metadata i32 0, metadata !492, metadata !DIExpression()) #7, !dbg !1847
  %21 = cmpxchg i32* %19, i32 0, i32 1 seq_cst seq_cst, !dbg !1849
  call void @llvm.dbg.value(metadata i32 undef, metadata !493, metadata !DIExpression()) #7, !dbg !1847
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !1850
  br i1 %22, label %74, label %23, !dbg !1851

23:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1635, metadata !DIExpression()) #7, !dbg !1852
  call void @llvm.dbg.value(metadata i32 40, metadata !1638, metadata !DIExpression()) #7, !dbg !1852
  %24 = load i32, i32* %19, align 4, !dbg !1854, !tbaa !468
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32, !dbg !1855

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35, !dbg !1856

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ], !dbg !1852
  call void @llvm.dbg.value(metadata i32 %34, metadata !1638, metadata !DIExpression()) #7, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %36, metadata !1639, metadata !DIExpression()) #7, !dbg !1852
  %37 = and i32 %36, 1, !dbg !1856
  %38 = icmp eq i32 %37, 0, !dbg !1856
  br i1 %38, label %39, label %44, !dbg !1856

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1639, metadata !DIExpression()) #7, !dbg !1852
  %40 = or i32 %36, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %40, metadata !1640, metadata !DIExpression()) #7, !dbg !1858
  call void @llvm.dbg.value(metadata i32* undef, metadata !474, metadata !DIExpression()) #7, !dbg !1859
  call void @llvm.dbg.value(metadata i32* undef, metadata !480, metadata !DIExpression()) #7, !dbg !1859
  call void @llvm.dbg.value(metadata i32* %19, metadata !481, metadata !DIExpression()) #7, !dbg !1859
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1861
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1861
  call void @llvm.dbg.value(metadata i32* %19, metadata !491, metadata !DIExpression()) #7, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %36, metadata !492, metadata !DIExpression()) #7, !dbg !1861
  %41 = cmpxchg i32* %19, i32 %36, i32 %40 seq_cst seq_cst, !dbg !1863
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %42, metadata !493, metadata !DIExpression()) #7, !dbg !1861
  %43 = icmp eq i32 %36, %42, !dbg !1864
  br i1 %43, label %74, label %35

44:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !501, metadata !DIExpression()) #7, !dbg !1865
  %45 = icmp sgt i32 %34, 0, !dbg !1867
  br i1 %45, label %46, label %51, !dbg !1867

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %34, metadata !1638, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1852
  %47 = icmp eq i32 %34, 1, !dbg !1868
  br i1 %47, label %51, label %48, !dbg !1869

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %49, metadata !1638, metadata !DIExpression()) #7, !dbg !1852
  call void @halide_thread_yield() #6, !dbg !1871
  %50 = load i32, i32* %19, align 4, !dbg !1872, !tbaa !468
  br label %65, !dbg !1873

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !1639, metadata !DIExpression()) #7, !dbg !1852
  %53 = and i32 %36, 2, !dbg !1874
  %54 = icmp eq i32 %53, 0, !dbg !1874
  br i1 %54, label %55, label %60, !dbg !1874

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %36, metadata !1639, metadata !DIExpression()) #7, !dbg !1852
  %56 = or i32 %36, 2, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %56, metadata !1644, metadata !DIExpression()) #7, !dbg !1876
  call void @llvm.dbg.value(metadata i32* undef, metadata !1470, metadata !DIExpression()) #7, !dbg !1877
  call void @llvm.dbg.value(metadata i32* undef, metadata !1473, metadata !DIExpression()) #7, !dbg !1877
  call void @llvm.dbg.value(metadata i32* %19, metadata !1474, metadata !DIExpression()) #7, !dbg !1877
  call void @llvm.dbg.value(metadata i32* undef, metadata !484, metadata !DIExpression()) #7, !dbg !1879
  call void @llvm.dbg.value(metadata i32* undef, metadata !490, metadata !DIExpression()) #7, !dbg !1879
  call void @llvm.dbg.value(metadata i32* %19, metadata !491, metadata !DIExpression()) #7, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %36, metadata !492, metadata !DIExpression()) #7, !dbg !1879
  %57 = cmpxchg i32* %19, i32 %36, i32 %56 seq_cst seq_cst, !dbg !1881
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %58, metadata !493, metadata !DIExpression()) #7, !dbg !1879
  %59 = icmp eq i32 %36, %58, !dbg !1882
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #7, !dbg !1883
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1647, metadata !DIExpression()) #7, !dbg !1883
  call void @llvm.dbg.value(metadata i32* %19, metadata !1576, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1579, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1582, metadata !DIExpression()) #7, !dbg !1886
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %27, align 4, !dbg !1888, !tbaa !1074
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !dbg !1888, !tbaa !1370
  store i32* %19, i32** %30, align 4, !dbg !1889, !tbaa !1400
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !dbg !1890, !tbaa !1033
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %28, align 4, !dbg !1891, !tbaa !1139
  %61 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #6, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %61, metadata !1648, metadata !DIExpression()) #7, !dbg !1893
  %62 = icmp eq i32 %61, %17, !dbg !1894
  br i1 %62, label %68, label %63, !dbg !1894

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 40, metadata !1638, metadata !DIExpression()) #7, !dbg !1852
  %64 = load i32, i32* %19, align 4, !dbg !1895, !tbaa !468
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !1896
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32, !dbg !1856, !llvm.loop !1897

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !1896
  br label %74

69:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1824, metadata !DIExpression()) #7, !dbg !1829
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1812, metadata !DIExpression()) #7, !dbg !1821
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1810, metadata !DIExpression()), !dbg !1811
  %70 = load i32, i32* %19, align 4, !dbg !1899, !tbaa !468
  call void @llvm.dbg.value(metadata i32 %70, metadata !1818, metadata !DIExpression()) #7, !dbg !1900
  %71 = and i32 %70, 1, !dbg !1901
  %72 = icmp eq i32 %71, 0, !dbg !1901
  br i1 %72, label %73, label %74, !dbg !1901

73:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !1903
  call void @abort() #6, !dbg !1903
  br label %74, !dbg !1903

74:                                               ; preds = %39, %20, %68, %69, %73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1906
  ret void, !dbg !1907
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !1908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1912, metadata !DIExpression()), !dbg !1914
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #6, !dbg !1915
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !1915
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !1913, metadata !DIExpression()), !dbg !1914
  %4 = icmp eq i8* %2, null, !dbg !1916
  br i1 %4, label %13, label %5, !dbg !1916

5:                                                ; preds = %1
  %6 = shl i32 %0, 2, !dbg !1917
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #6, !dbg !1917
  %8 = bitcast i8* %2 to i8**, !dbg !1917
  store i8* %7, i8** %8, align 4, !dbg !1917, !tbaa !1918
  %9 = icmp eq i8* %7, null, !dbg !1920
  br i1 %9, label %10, label %11, !dbg !1920

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !1921
  br label %13, !dbg !1924

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #6, !dbg !1925
  br label %13, !dbg !1926

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ], !dbg !1914
  ret %struct.halide_mutex_array* %14, !dbg !1927
}

declare dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

declare dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1928 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !1932, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %0, metadata !1933, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %1, metadata !1934, metadata !DIExpression()), !dbg !1935
  %3 = bitcast i8* %1 to i8**, !dbg !1936
  %4 = load i8*, i8** %3, align 4, !dbg !1936, !tbaa !1918
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !1936
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !1937
  ret void, !dbg !1938
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !1939 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !1943, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !1944, metadata !DIExpression()), !dbg !1945
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !1946
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !1946, !tbaa !1918
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !1946
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #8, !dbg !1946
  ret i32 0, !dbg !1947
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !1948 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !1951, metadata !DIExpression()), !dbg !1952
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !1953
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !1953, !tbaa !1918
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !1953
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #8, !dbg !1953
  ret i32 0, !dbg !1954
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %0) local_unnamed_addr #5 !dbg !1955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1959, metadata !DIExpression()), !dbg !1960
  %2 = icmp sgt i32 %0, 256, !dbg !1961
  br i1 %2, label %6, label %3, !dbg !1961

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !1962
  %5 = select i1 %4, i32 %0, i32 1, !dbg !1962
  ret i32 %5, !dbg !1962

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !1959, metadata !DIExpression()), !dbg !1960
  ret i32 256, !dbg !1964
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() local_unnamed_addr #0 !dbg !1965 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1967, metadata !DIExpression()), !dbg !1969
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@", i32 0, i32 0)) #6, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %1, metadata !1968, metadata !DIExpression()), !dbg !1969
  %2 = icmp eq i8* %1, null, !dbg !1971
  br i1 %2, label %3, label %6, !dbg !1971

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@", i32 0, i32 0)) #6, !dbg !1972
  call void @llvm.dbg.value(metadata i8* %4, metadata !1968, metadata !DIExpression()), !dbg !1969
  %5 = icmp eq i8* %4, null, !dbg !1975
  br i1 %5, label %9, label %6, !dbg !1975

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %8, metadata !1967, metadata !DIExpression()), !dbg !1969
  br label %11, !dbg !1979

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #8, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %10, metadata !1967, metadata !DIExpression()), !dbg !1969
  br label %11, !dbg !1982

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !1983
  call void @llvm.dbg.value(metadata i32 %12, metadata !1967, metadata !DIExpression()), !dbg !1969
  ret i32 %12, !dbg !1984
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !1985 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !1989, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 40, metadata !1991, metadata !DIExpression()), !dbg !2015
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8, !dbg !2016
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10, !dbg !2022

10:                                               ; preds = %388, %1
  %11 = phi i32 [ 0, %1 ], [ %389, %388 ], !dbg !2023
  call void @llvm.dbg.value(metadata i32 %11, metadata !1990, metadata !DIExpression()), !dbg !2015
  br i1 %3, label %15, label %12, !dbg !2022

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2019, metadata !DIExpression()), !dbg !2024
  %13 = load i32, i32* %4, align 4, !dbg !2016, !tbaa !2025
  %14 = icmp eq i32 %13, 0, !dbg !2016
  br i1 %14, label %18, label %21, !dbg !2016

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 13), align 4, !dbg !2022, !tbaa !2028, !range !580
  %17 = icmp eq i8 %16, 0, !dbg !2022
  br i1 %17, label %50, label %403, !dbg !2022

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !2016, !tbaa !2032
  %20 = icmp eq i32 %19, 0, !dbg !2016
  br i1 %20, label %403, label %21, !dbg !2022

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2033, !tbaa !2034
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %51, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !1995, metadata !DIExpression()), !dbg !2035
  %23 = load i32, i32* %5, align 4, !dbg !2036, !tbaa !2039
  %24 = icmp eq i32 %23, 0, !dbg !2036
  br i1 %24, label %40, label %25, !dbg !2036

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !2040, !tbaa !2032
  %27 = icmp eq i32 %26, 0, !dbg !2040
  br i1 %27, label %28, label %48, !dbg !2040

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !1995, metadata !DIExpression()), !dbg !2035
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2043
  br i1 %29, label %37, label %30, !dbg !2043

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !1993, metadata !DIExpression()), !dbg !2035
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2046
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !1995, metadata !DIExpression()), !dbg !2035
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !dbg !2048, !tbaa !2049
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !1993, metadata !DIExpression()), !dbg !2035
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2043
  br i1 %34, label %35, label %30, !dbg !2043, !llvm.loop !2050

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2046
  br label %37, !dbg !2052

37:                                               ; preds = %35, %28
  %38 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %28 ], [ %36, %35 ], !dbg !2035
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !dbg !2052, !tbaa !2049
  store %"struct.Halide::Runtime::Internal::work"* %39, %"struct.Halide::Runtime::Internal::work"** %38, align 4, !dbg !2052, !tbaa !880
  store i32 0, i32* %4, align 4, !dbg !2053, !tbaa !2025
  br label %388, !dbg !2054

40:                                               ; preds = %21
  %41 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !dbg !2055, !tbaa !2056
  %42 = icmp eq %"struct.Halide::Runtime::Internal::work"* %41, null, !dbg !2055
  br i1 %42, label %48, label %43, !dbg !2055

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %41, i32 0, i32 9, !dbg !2055
  %45 = load i32, i32* %44, align 4, !dbg !2055, !tbaa !2039
  %46 = icmp eq i32 %45, 0, !dbg !2055
  br i1 %46, label %48, label %47, !dbg !2055

47:                                               ; preds = %43
  store i32 %45, i32* %5, align 4, !dbg !2057, !tbaa !2039
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2060
  br label %388, !dbg !2061

48:                                               ; preds = %25, %43, %40
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !1995, metadata !DIExpression()), !dbg !2035
  %49 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2062
  br i1 %49, label %190, label %53, !dbg !2062

50:                                               ; preds = %15
  %51 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2033, !tbaa !2034
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !1995, metadata !DIExpression()), !dbg !2035
  %52 = icmp eq %"struct.Halide::Runtime::Internal::work"* %51, null, !dbg !2062
  br i1 %52, label %200, label %54, !dbg !2062

53:                                               ; preds = %48
  br i1 %3, label %54, label %119, !dbg !2062

54:                                               ; preds = %50, %53
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %51, %50 ], [ %22, %53 ]
  br label %56, !dbg !2063

56:                                               ; preds = %54, %115
  %57 = phi %"struct.Halide::Runtime::Internal::work"* [ %117, %115 ], [ %55, %54 ]
  %58 = phi %"struct.Halide::Runtime::Internal::work"** [ %116, %115 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %57, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %58, metadata !1995, metadata !DIExpression()), !dbg !2035
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 5, !dbg !2064
  %60 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %59, align 4, !dbg !2064, !tbaa !2056
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %60, metadata !1999, metadata !DIExpression()), !dbg !2065
  %61 = icmp eq %"struct.Halide::Runtime::Internal::work"* %60, null, !dbg !2063
  br i1 %61, label %73, label %62, !dbg !2063

62:                                               ; preds = %56
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 8, !dbg !2066
  %64 = load i32, i32* %63, align 4, !dbg !2066, !tbaa !2032
  %65 = icmp eq i32 %64, 0, !dbg !2066
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 0, i32 7, !dbg !2069
  %67 = load i32, i32* %66, align 4, !dbg !2069, !tbaa !2071
  br i1 %65, label %71, label %68, !dbg !2066

68:                                               ; preds = %62
  %69 = mul nsw i32 %67, %64, !dbg !2072
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 6, !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression()), !dbg !2065
  br label %76, !dbg !2074

71:                                               ; preds = %62
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 6, !dbg !2075
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression()), !dbg !2065
  br label %76, !dbg !2077

73:                                               ; preds = %56
  %74 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2078, !tbaa !2080
  %75 = add nsw i32 %74, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i32 %80, metadata !2000, metadata !DIExpression()), !dbg !2065
  br label %76, !dbg !2081

76:                                               ; preds = %73, %71, %68
  %77 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), %73 ], [ %72, %71 ], [ %70, %68 ]
  %78 = phi i32 [ %75, %73 ], [ %67, %71 ], [ %69, %68 ]
  %79 = load i32, i32* %77, align 4, !dbg !2082, !tbaa !468
  %80 = sub i32 %78, %79, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %80, metadata !2000, metadata !DIExpression()), !dbg !2065
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 7, !dbg !2083
  %82 = load i32, i32* %81, align 4, !dbg !2083, !tbaa !2071
  %83 = icmp sge i32 %80, %82, !dbg !2083
  call void @llvm.dbg.value(metadata i1 %83, metadata !1997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  call void @llvm.dbg.value(metadata i1 true, metadata !2001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 8, !dbg !2084
  %85 = load i8, i8* %84, align 4, !dbg !2084, !tbaa !2085, !range !580
  %86 = icmp eq i8 %85, 0, !dbg !2084
  br i1 %86, label %91, label %87, !dbg !2084

87:                                               ; preds = %76
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 8, !dbg !2084
  %89 = load i32, i32* %88, align 4, !dbg !2084, !tbaa !2032
  %90 = icmp eq i32 %89, 0, !dbg !2084
  br label %91, !dbg !2084

91:                                               ; preds = %87, %76
  %92 = phi i1 [ true, %76 ], [ %90, %87 ]
  call void @llvm.dbg.value(metadata i1 %92, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %93 = and i1 %92, %83, !dbg !2086
  br i1 %93, label %94, label %115, !dbg !2086

94:                                               ; preds = %91
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %57, metadata !2087, metadata !DIExpression()) #7, !dbg !2090
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 10, !dbg !2094
  %96 = load i32, i32* %95, align 4, !dbg !2094, !tbaa !2096
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 4, !dbg !2094
  %98 = load i32, i32* %97, align 4, !dbg !2094, !tbaa !2097
  %99 = icmp slt i32 %96, %98, !dbg !2094
  br i1 %99, label %100, label %219, !dbg !2094

100:                                              ; preds = %94
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 3
  br label %102, !dbg !2094

102:                                              ; preds = %110, %100
  %103 = phi i32 [ %96, %100 ], [ %112, %110 ]
  %104 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %101, align 4, !dbg !2098, !tbaa !2101
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %104, i32 %103, i32 1, !dbg !2098
  %106 = load i32, i32* %105, align 4, !dbg !2098, !tbaa !2102
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %104, i32 %103, i32 0, !dbg !2098
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 4, !dbg !2098, !tbaa !2104
  %109 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %106) #6, !dbg !2098
  br i1 %109, label %110, label %115, !dbg !2098

110:                                              ; preds = %102
  %111 = load i32, i32* %95, align 4, !dbg !2105, !tbaa !2096
  %112 = add nsw i32 %111, 1, !dbg !2105
  store i32 %112, i32* %95, align 4, !dbg !2105, !tbaa !2096
  %113 = load i32, i32* %97, align 4, !dbg !2094, !tbaa !2097
  %114 = icmp slt i32 %112, %113, !dbg !2094
  br i1 %114, label %102, label %219, !dbg !2094, !llvm.loop !2106

115:                                              ; preds = %102, %91
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 2, !dbg !2108
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %116, metadata !1995, metadata !DIExpression()), !dbg !2035
  %117 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %116, align 4, !dbg !2109, !tbaa !2049
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %117, metadata !1993, metadata !DIExpression()), !dbg !2035
  %118 = icmp eq %"struct.Halide::Runtime::Internal::work"* %117, null, !dbg !2062
  br i1 %118, label %190, label %56, !dbg !2062

119:                                              ; preds = %53, %186
  %120 = phi %"struct.Halide::Runtime::Internal::work"* [ %188, %186 ], [ %22, %53 ]
  %121 = phi %"struct.Halide::Runtime::Internal::work"** [ %187, %186 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %120, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %121, metadata !1995, metadata !DIExpression()), !dbg !2035
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 5, !dbg !2064
  %123 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %122, align 4, !dbg !2064, !tbaa !2056
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %123, metadata !1999, metadata !DIExpression()), !dbg !2065
  %124 = icmp eq %"struct.Halide::Runtime::Internal::work"* %123, null, !dbg !2063
  br i1 %124, label %125, label %128, !dbg !2063

125:                                              ; preds = %119
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2078, !tbaa !2080
  %127 = add nsw i32 %126, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression()), !dbg !2065
  br label %139, !dbg !2081

128:                                              ; preds = %119
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 8, !dbg !2066
  %130 = load i32, i32* %129, align 4, !dbg !2066, !tbaa !2032
  %131 = icmp eq i32 %130, 0, !dbg !2066
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 0, i32 7, !dbg !2069
  %133 = load i32, i32* %132, align 4, !dbg !2069, !tbaa !2071
  br i1 %131, label %134, label %136, !dbg !2066

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 6, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %143, metadata !2000, metadata !DIExpression()), !dbg !2065
  br label %139, !dbg !2077

136:                                              ; preds = %128
  %137 = mul nsw i32 %133, %130, !dbg !2072
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 6, !dbg !2072
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression()), !dbg !2065
  br label %139, !dbg !2074

139:                                              ; preds = %134, %136, %125
  %140 = phi i32* [ %135, %134 ], [ %138, %136 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), %125 ]
  %141 = phi i32 [ %133, %134 ], [ %137, %136 ], [ %127, %125 ]
  %142 = load i32, i32* %140, align 4, !dbg !2082, !tbaa !468
  %143 = sub i32 %141, %142, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %143, metadata !2000, metadata !DIExpression()), !dbg !2065
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 7, !dbg !2083
  %145 = load i32, i32* %144, align 4, !dbg !2083, !tbaa !2071
  %146 = icmp slt i32 %143, %145, !dbg !2083
  call void @llvm.dbg.value(metadata i1 %146, metadata !1997, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 3, !dbg !2110
  %148 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %147, align 4, !dbg !2110, !tbaa !2111
  %149 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !dbg !2110, !tbaa !2111
  %150 = icmp ne %"struct.Halide::Runtime::Internal::work"* %148, %149, !dbg !2110
  %151 = icmp ne i32 %145, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 8, !dbg !2084
  %153 = load i8, i8* %152, align 4, !dbg !2084, !tbaa !2085, !range !580
  %154 = icmp eq i8 %153, 0, !dbg !2084
  br i1 %154, label %159, label %155, !dbg !2084

155:                                              ; preds = %139
  %156 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 8, !dbg !2084
  %157 = load i32, i32* %156, align 4, !dbg !2084, !tbaa !2032
  %158 = icmp eq i32 %157, 0, !dbg !2084
  br label %159, !dbg !2084

159:                                              ; preds = %155, %139
  %160 = phi i1 [ true, %139 ], [ %158, %155 ]
  call void @llvm.dbg.value(metadata i1 %160, metadata !2002, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %161 = and i1 %151, %150, !dbg !2086
  %162 = or i1 %146, %161, !dbg !2086
  %163 = xor i1 %160, true, !dbg !2086
  %164 = or i1 %162, %163, !dbg !2086
  br i1 %164, label %186, label %165, !dbg !2086

165:                                              ; preds = %159
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %120, metadata !2087, metadata !DIExpression()) #7, !dbg !2090
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 10, !dbg !2094
  %167 = load i32, i32* %166, align 4, !dbg !2094, !tbaa !2096
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 4, !dbg !2094
  %169 = load i32, i32* %168, align 4, !dbg !2094, !tbaa !2097
  %170 = icmp slt i32 %167, %169, !dbg !2094
  br i1 %170, label %171, label %219, !dbg !2094

171:                                              ; preds = %165
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 3
  br label %173, !dbg !2094

173:                                              ; preds = %181, %171
  %174 = phi i32 [ %167, %171 ], [ %183, %181 ]
  %175 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %172, align 4, !dbg !2098, !tbaa !2101
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %175, i32 %174, i32 1, !dbg !2098
  %177 = load i32, i32* %176, align 4, !dbg !2098, !tbaa !2102
  %178 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %175, i32 %174, i32 0, !dbg !2098
  %179 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %178, align 4, !dbg !2098, !tbaa !2104
  %180 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %179, i32 %177) #6, !dbg !2098
  br i1 %180, label %181, label %186, !dbg !2098

181:                                              ; preds = %173
  %182 = load i32, i32* %166, align 4, !dbg !2105, !tbaa !2096
  %183 = add nsw i32 %182, 1, !dbg !2105
  store i32 %183, i32* %166, align 4, !dbg !2105, !tbaa !2096
  %184 = load i32, i32* %168, align 4, !dbg !2094, !tbaa !2097
  %185 = icmp slt i32 %183, %184, !dbg !2094
  br i1 %185, label %173, label %219, !dbg !2094, !llvm.loop !2106

186:                                              ; preds = %173, %159
  %187 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 2, !dbg !2108
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %187, metadata !1995, metadata !DIExpression()), !dbg !2035
  %188 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %187, align 4, !dbg !2109, !tbaa !2049
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %188, metadata !1993, metadata !DIExpression()), !dbg !2035
  %189 = icmp eq %"struct.Halide::Runtime::Internal::work"* %188, null, !dbg !2062
  br i1 %189, label %190, label %119, !dbg !2062

190:                                              ; preds = %186, %115, %48
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !1995, metadata !DIExpression()), !dbg !2035
  br i1 %3, label %200, label %191, !dbg !2112

191:                                              ; preds = %190
  %192 = add nsw i32 %11, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %192, metadata !1990, metadata !DIExpression()), !dbg !2015
  %193 = icmp slt i32 %11, 40, !dbg !2115
  br i1 %193, label %194, label %195, !dbg !2115

194:                                              ; preds = %191
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2118
  tail call void @halide_thread_yield() #6, !dbg !2121
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2122
  br label %388, !dbg !2123

195:                                              ; preds = %191
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2124, !tbaa !2126
  %197 = add nsw i32 %196, 1, !dbg !2124
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2124, !tbaa !2126
  store i8 1, i8* %8, align 4, !dbg !2127, !tbaa !2128
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2129
  store i8 0, i8* %8, align 4, !dbg !2130, !tbaa !2128
  %198 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2131, !tbaa !2126
  %199 = add nsw i32 %198, -1, !dbg !2131
  store i32 %199, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2131, !tbaa !2126
  br label %388, !dbg !2132

200:                                              ; preds = %50, %190
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2133, !tbaa !2135
  %202 = add nsw i32 %201, 1, !dbg !2133
  store i32 %202, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2133, !tbaa !2135
  %203 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2136, !tbaa !2137
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !dbg !2136, !tbaa !2138
  %205 = icmp sgt i32 %203, %204, !dbg !2136
  br i1 %205, label %206, label %210, !dbg !2136

206:                                              ; preds = %200
  %207 = add nsw i32 %203, -1, !dbg !2139
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2139, !tbaa !2137
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2142
  %208 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2143, !tbaa !2137
  %209 = add nsw i32 %208, 1, !dbg !2143
  store i32 %209, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2143, !tbaa !2137
  br label %215, !dbg !2144

210:                                              ; preds = %200
  %211 = add nsw i32 %11, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %211, metadata !1990, metadata !DIExpression()), !dbg !2015
  %212 = icmp slt i32 %11, 40, !dbg !2145
  br i1 %212, label %213, label %214, !dbg !2145

213:                                              ; preds = %210
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2146
  tail call void @halide_thread_yield() #6, !dbg !2149
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2150
  br label %215, !dbg !2151

214:                                              ; preds = %210
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2152
  br label %215, !dbg !2154

215:                                              ; preds = %213, %214, %206
  %216 = phi i32 [ %11, %206 ], [ %211, %213 ], [ %211, %214 ], !dbg !2015
  call void @llvm.dbg.value(metadata i32 %216, metadata !1990, metadata !DIExpression()), !dbg !2015
  %217 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2155, !tbaa !2135
  %218 = add nsw i32 %217, -1, !dbg !2155
  store i32 %218, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2155, !tbaa !2135
  br label %388, !dbg !2156

219:                                              ; preds = %165, %94, %181, %110
  %220 = phi i32* [ %95, %110 ], [ %166, %181 ], [ %95, %94 ], [ %166, %165 ]
  %221 = phi %"struct.Halide::Runtime::Internal::work"** [ %58, %110 ], [ %121, %181 ], [ %58, %94 ], [ %121, %165 ]
  %222 = phi %"struct.Halide::Runtime::Internal::work"* [ %57, %110 ], [ %120, %181 ], [ %57, %94 ], [ %120, %165 ]
  store i32 0, i32* %220, align 4, !dbg !2157, !tbaa !2096
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %222, metadata !1993, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %221, metadata !1995, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 0, metadata !1990, metadata !DIExpression()), !dbg !2015
  %223 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 8, !dbg !2158
  %224 = load i32, i32* %223, align 4, !dbg !2158, !tbaa !2032
  %225 = add nsw i32 %224, 1, !dbg !2158
  store i32 %225, i32* %223, align 4, !dbg !2158, !tbaa !2032
  %226 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 5, !dbg !2159
  %227 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %226, align 4, !dbg !2159, !tbaa !2056
  %228 = icmp eq %"struct.Halide::Runtime::Internal::work"* %227, null, !dbg !2159
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 7, !dbg !2160
  %230 = load i32, i32* %229, align 4, !dbg !2160, !tbaa !2071
  %231 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %227, i32 0, i32 6, !dbg !2159
  %232 = select i1 %228, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %231, !dbg !2159
  %233 = select i1 %228, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %231, !dbg !2159
  %234 = load i32, i32* %232, align 4, !dbg !2160, !tbaa !468
  %235 = add nsw i32 %234, %230, !dbg !2160
  store i32 %235, i32* %233, align 4, !dbg !2160, !tbaa !468
  call void @llvm.dbg.value(metadata i32 0, metadata !2003, metadata !DIExpression()), !dbg !2035
  %236 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 8, !dbg !2162
  %237 = load i8, i8* %236, align 4, !dbg !2162, !tbaa !2085, !range !580
  %238 = icmp eq i8 %237, 0, !dbg !2162
  br i1 %238, label %313, label %239, !dbg !2162

239:                                              ; preds = %219
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 2, !dbg !2163
  %241 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %240, align 4, !dbg !2163, !tbaa !2049
  store %"struct.Halide::Runtime::Internal::work"* %241, %"struct.Halide::Runtime::Internal::work"** %221, align 4, !dbg !2163, !tbaa !880
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2164
  call void @llvm.dbg.value(metadata i32 0, metadata !2004, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !2003, metadata !DIExpression()), !dbg !2035
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 10
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 4
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 3
  %246 = bitcast %"struct.Halide::Runtime::Internal::work"* %222 to i8*
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 1
  %248 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 5
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 0
  %250 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 7
  br label %251, !dbg !2166

251:                                              ; preds = %239, %290
  %252 = phi i32 [ 1, %239 ], [ 0, %290 ]
  %253 = phi i32 [ 0, %239 ], [ %298, %290 ]
  call void @llvm.dbg.value(metadata i32 %253, metadata !2004, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 0, metadata !2003, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %252, metadata !2007, metadata !DIExpression()), !dbg !2165
  %254 = load i32, i32* %242, align 4, !dbg !2167, !tbaa !2025
  %255 = sub nsw i32 %254, %253, !dbg !2167
  %256 = icmp sgt i32 %255, %252, !dbg !2167
  br i1 %256, label %257, label %287, !dbg !2167

257:                                              ; preds = %251
  %258 = load i32, i32* %243, align 4, !dbg !2169, !tbaa !2096
  %259 = load i32, i32* %244, align 4, !dbg !2169, !tbaa !2097
  br label %260, !dbg !2167

260:                                              ; preds = %257, %281
  %261 = phi i32 [ %282, %281 ], [ %254, %257 ]
  %262 = phi i32 [ %283, %281 ], [ %259, %257 ], !dbg !2169
  %263 = phi i32 [ 0, %281 ], [ %258, %257 ], !dbg !2169
  %264 = phi i32 [ %284, %281 ], [ %252, %257 ]
  call void @llvm.dbg.value(metadata i32 %264, metadata !2007, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %222, metadata !2087, metadata !DIExpression()) #7, !dbg !2171
  %265 = icmp slt i32 %263, %262, !dbg !2169
  br i1 %265, label %266, label %281, !dbg !2169

266:                                              ; preds = %260, %274
  %267 = phi i32 [ %276, %274 ], [ %263, %260 ]
  %268 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %245, align 4, !dbg !2172, !tbaa !2101
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %268, i32 %267, i32 1, !dbg !2172
  %270 = load i32, i32* %269, align 4, !dbg !2172, !tbaa !2102
  %271 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %268, i32 %267, i32 0, !dbg !2172
  %272 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %271, align 4, !dbg !2172, !tbaa !2104
  %273 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %272, i32 %270) #6, !dbg !2172
  br i1 %273, label %274, label %287, !dbg !2172

274:                                              ; preds = %266
  %275 = load i32, i32* %243, align 4, !dbg !2173, !tbaa !2096
  %276 = add nsw i32 %275, 1, !dbg !2173
  store i32 %276, i32* %243, align 4, !dbg !2173, !tbaa !2096
  %277 = load i32, i32* %244, align 4, !dbg !2169, !tbaa !2097
  %278 = icmp slt i32 %276, %277, !dbg !2169
  br i1 %278, label %266, label %279, !dbg !2169, !llvm.loop !2174

279:                                              ; preds = %274
  %280 = load i32, i32* %242, align 4, !dbg !2167, !tbaa !2025
  br label %281, !dbg !2176

281:                                              ; preds = %279, %260
  %282 = phi i32 [ %280, %279 ], [ %261, %260 ], !dbg !2167
  %283 = phi i32 [ %277, %279 ], [ %262, %260 ]
  store i32 0, i32* %243, align 4, !dbg !2176, !tbaa !2096
  %284 = add nuw nsw i32 %264, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %284, metadata !2007, metadata !DIExpression()), !dbg !2165
  %285 = sub nsw i32 %282, %253, !dbg !2167
  %286 = icmp sgt i32 %285, %284, !dbg !2167
  br i1 %286, label %260, label %290, !dbg !2167, !llvm.loop !2179

287:                                              ; preds = %266, %251
  %288 = phi i32 [ %252, %251 ], [ %264, %266 ]
  %289 = icmp eq i32 %288, 0, !dbg !2181
  br i1 %289, label %300, label %290, !dbg !2181

290:                                              ; preds = %281, %287
  %291 = phi i32 [ %288, %287 ], [ %284, %281 ]
  %292 = load i8*, i8** %247, align 4, !dbg !2182, !tbaa !2183
  %293 = load i32, i32* %248, align 4, !dbg !2182, !tbaa !2184
  %294 = add nsw i32 %293, %253, !dbg !2182
  %295 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %249, align 4, !dbg !2182, !tbaa !2185
  %296 = load i8*, i8** %250, align 4, !dbg !2182, !tbaa !2186
  %297 = tail call i32 @halide_do_loop_task(i8* %296, i32 (i8*, i32, i32, i8*, i8*)* %295, i32 %294, i32 %291, i8* %292, i8* nonnull %246) #8, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %297, metadata !2003, metadata !DIExpression()), !dbg !2035
  %298 = add nuw nsw i32 %291, %253, !dbg !2187
  call void @llvm.dbg.value(metadata i32 0, metadata !2007, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %298, metadata !2004, metadata !DIExpression()), !dbg !2165
  %299 = icmp eq i32 %297, 0, !dbg !2166
  br i1 %299, label %251, label %300, !dbg !2166, !llvm.loop !2188

300:                                              ; preds = %287, %290
  %301 = phi i1 [ true, %287 ], [ false, %290 ]
  %302 = phi i32 [ 0, %287 ], [ %297, %290 ], !dbg !2035
  %303 = phi i32 [ %253, %287 ], [ %298, %290 ], !dbg !2165
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2190
  %304 = load i32, i32* %248, align 4, !dbg !2191, !tbaa !2184
  %305 = add nsw i32 %304, %303, !dbg !2191
  store i32 %305, i32* %248, align 4, !dbg !2191, !tbaa !2184
  %306 = load i32, i32* %242, align 4, !dbg !2192, !tbaa !2025
  %307 = sub nsw i32 %306, %303, !dbg !2192
  store i32 %307, i32* %242, align 4, !dbg !2192, !tbaa !2025
  br i1 %301, label %309, label %308, !dbg !2193

308:                                              ; preds = %300
  store i32 0, i32* %242, align 4, !dbg !2194, !tbaa !2025
  call void @llvm.dbg.value(metadata i32 %340, metadata !2003, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2035
  br label %342, !dbg !2197

309:                                              ; preds = %300
  %310 = icmp sgt i32 %307, 0, !dbg !2198
  br i1 %310, label %311, label %371, !dbg !2198

311:                                              ; preds = %309
  %312 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2199, !tbaa !2034
  store %"struct.Halide::Runtime::Internal::work"* %312, %"struct.Halide::Runtime::Internal::work"** %240, align 4, !dbg !2199, !tbaa !2049
  store %"struct.Halide::Runtime::Internal::work"* %222, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2202, !tbaa !2034
  br label %371, !dbg !2203

313:                                              ; preds = %219
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 0, !dbg !2204
  %315 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %314, align 4, !dbg !2204, !tbaa.struct !2205
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %315, metadata !2008, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2207
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 1, !dbg !2204
  %317 = load i8*, i8** %316, align 4, !dbg !2204, !tbaa.struct !2208
  call void @llvm.dbg.value(metadata i8* %317, metadata !2008, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2207
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 5, !dbg !2204
  %319 = load i32, i32* %318, align 4, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %319, metadata !2008, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2207
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 1, !dbg !2204
  %321 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %320, align 4, !dbg !2204, !tbaa.struct !2209
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %321, metadata !2008, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2207
  %322 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 7, !dbg !2204
  %323 = load i8*, i8** %322, align 4, !dbg !2204, !tbaa.struct !2210
  call void @llvm.dbg.value(metadata i8* %323, metadata !2008, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2207
  %324 = add nsw i32 %319, 1, !dbg !2211
  store i32 %324, i32* %318, align 4, !dbg !2211, !tbaa !2184
  %325 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6, !dbg !2212
  %326 = load i32, i32* %325, align 4, !dbg !2212, !tbaa !2025
  %327 = add nsw i32 %326, -1, !dbg !2212
  store i32 %327, i32* %325, align 4, !dbg !2212, !tbaa !2025
  %328 = icmp eq i32 %327, 0, !dbg !2213
  br i1 %328, label %329, label %332, !dbg !2213

329:                                              ; preds = %313
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 2, !dbg !2204
  %331 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %330, align 4, !dbg !2214, !tbaa !2049
  store %"struct.Halide::Runtime::Internal::work"* %331, %"struct.Halide::Runtime::Internal::work"** %221, align 4, !dbg !2214, !tbaa !880
  br label %332, !dbg !2217

332:                                              ; preds = %329, %313
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2218
  %333 = icmp eq i32 (i8*, i32, i8*)* %321, null, !dbg !2219
  br i1 %333, label %336, label %334, !dbg !2219

334:                                              ; preds = %332
  %335 = tail call i32 @halide_do_task(i8* %323, i32 (i8*, i32, i8*)* nonnull %321, i32 %319, i8* %317) #8, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %335, metadata !2003, metadata !DIExpression()), !dbg !2035
  br label %339, !dbg !2223

336:                                              ; preds = %332
  %337 = bitcast %"struct.Halide::Runtime::Internal::work"* %222 to i8*, !dbg !2224
  %338 = tail call i32 @halide_do_loop_task(i8* %323, i32 (i8*, i32, i32, i8*, i8*)* %315, i32 %319, i32 1, i8* %317, i8* %337) #8, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %338, metadata !2003, metadata !DIExpression()), !dbg !2035
  br label %339, !dbg !2226

339:                                              ; preds = %334, %336
  %340 = phi i32 [ %335, %334 ], [ %338, %336 ], !dbg !2227
  call void @llvm.dbg.value(metadata i32 %340, metadata !2003, metadata !DIExpression()), !dbg !2035
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2228
  call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2035
  %341 = icmp eq i32 %340, 0, !dbg !2197
  br i1 %341, label %371, label %342, !dbg !2197

342:                                              ; preds = %308, %339
  %343 = phi i32 [ %302, %308 ], [ %340, %339 ]
  %344 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 9, !dbg !2229
  store i32 %343, i32* %344, align 4, !dbg !2229, !tbaa !2039
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2035
  %345 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 4, !dbg !2231
  %346 = load i32, i32* %345, align 4, !dbg !2231, !tbaa !2232
  %347 = icmp sgt i32 %346, 0, !dbg !2231
  br i1 %347, label %348, label %371, !dbg !2231

348:                                              ; preds = %342
  %349 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 3
  %350 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %349, align 4, !tbaa !2111
  br label %351, !dbg !2231

351:                                              ; preds = %348, %367
  %352 = phi i32 [ 0, %348 ], [ %369, %367 ]
  %353 = phi i8 [ 0, %348 ], [ %368, %367 ]
  call void @llvm.dbg.value(metadata i32 %352, metadata !2011, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 %353, metadata !2010, metadata !DIExpression()), !dbg !2035
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %350, i32 %352, i32 9, !dbg !2233
  %355 = load i32, i32* %354, align 4, !dbg !2233, !tbaa !2039
  %356 = icmp eq i32 %355, 0, !dbg !2233
  br i1 %356, label %357, label %367, !dbg !2233

357:                                              ; preds = %351
  store i32 %343, i32* %354, align 4, !dbg !2236, !tbaa !2039
  %358 = load i32, i32* %223, align 4, !dbg !2239, !tbaa !2032
  %359 = icmp eq i32 %358, 0, !dbg !2239
  br i1 %359, label %360, label %363, !dbg !2239

360:                                              ; preds = %357
  %361 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %350, i32 %352, i32 11, !dbg !2239
  %362 = load i8, i8* %361, align 4, !dbg !2239, !tbaa !2128, !range !580
  br label %363, !dbg !2239

363:                                              ; preds = %360, %357
  %364 = phi i8 [ 0, %357 ], [ %362, %360 ], !dbg !2239
  %365 = and i8 %353, 1, !dbg !2239
  %366 = or i8 %364, %365, !dbg !2239
  call void @llvm.dbg.value(metadata i8 %366, metadata !2010, metadata !DIExpression()), !dbg !2035
  br label %367, !dbg !2240

367:                                              ; preds = %351, %363
  %368 = phi i8 [ %366, %363 ], [ %353, %351 ], !dbg !2035
  call void @llvm.dbg.value(metadata i8 %368, metadata !2010, metadata !DIExpression()), !dbg !2035
  %369 = add nuw nsw i32 %352, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %369, metadata !2011, metadata !DIExpression()), !dbg !2230
  %370 = icmp eq i32 %369, %346, !dbg !2231
  br i1 %370, label %371, label %351, !dbg !2231, !llvm.loop !2242

371:                                              ; preds = %367, %342, %311, %309, %339
  %372 = phi i8 [ 0, %339 ], [ 0, %309 ], [ 0, %311 ], [ 0, %342 ], [ %368, %367 ], !dbg !2244
  call void @llvm.dbg.value(metadata i8 %372, metadata !2010, metadata !DIExpression()), !dbg !2035
  %373 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %226, align 4, !dbg !2245, !tbaa !2056
  %374 = icmp eq %"struct.Halide::Runtime::Internal::work"* %373, null, !dbg !2245
  %375 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 7, !dbg !2246
  %376 = load i32, i32* %375, align 4, !dbg !2246, !tbaa !2071
  %377 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %373, i32 0, i32 6, !dbg !2245
  %378 = select i1 %374, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %377, !dbg !2245
  %379 = select i1 %374, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %377, !dbg !2245
  %380 = load i32, i32* %378, align 4, !dbg !2246, !tbaa !468
  %381 = sub nsw i32 %380, %376, !dbg !2246
  store i32 %381, i32* %379, align 4, !dbg !2246, !tbaa !468
  %382 = load i32, i32* %223, align 4, !dbg !2248, !tbaa !2032
  %383 = add nsw i32 %382, -1, !dbg !2248
  store i32 %383, i32* %223, align 4, !dbg !2248, !tbaa !2032
  %384 = and i8 %372, 1, !dbg !2249
  %385 = icmp eq i8 %384, 0, !dbg !2249
  br i1 %385, label %386, label %402, !dbg !2249

386:                                              ; preds = %371
  %387 = icmp eq i32 %383, 0, !dbg !2249
  br i1 %387, label %390, label %388, !dbg !2249

388:                                              ; preds = %386, %394, %398, %402, %215, %195, %194, %47, %37
  %389 = phi i32 [ %11, %37 ], [ %11, %47 ], [ %192, %194 ], [ %192, %195 ], [ %216, %215 ], [ 0, %402 ], [ 0, %398 ], [ 0, %394 ], [ 0, %386 ]
  br label %10, !dbg !2015, !llvm.loop !2250

390:                                              ; preds = %386
  %391 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6, !dbg !2249
  %392 = load i32, i32* %391, align 4, !dbg !2249, !tbaa !2025
  %393 = icmp eq i32 %392, 0, !dbg !2249
  br i1 %393, label %398, label %394, !dbg !2249

394:                                              ; preds = %390
  %395 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 9, !dbg !2249
  %396 = load i32, i32* %395, align 4, !dbg !2249, !tbaa !2039
  %397 = icmp eq i32 %396, 0, !dbg !2249
  br i1 %397, label %388, label %398, !dbg !2249

398:                                              ; preds = %394, %390
  %399 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 11, !dbg !2249
  %400 = load i8, i8* %399, align 4, !dbg !2249, !tbaa !2128, !range !580
  %401 = icmp eq i8 %400, 0, !dbg !2249
  br i1 %401, label %388, label %402, !dbg !2249

402:                                              ; preds = %398, %371
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2252
  br label %388, !dbg !2255

403:                                              ; preds = %15, %18
  ret void, !dbg !2256
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2257 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2259, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %4, metadata !2260, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %3, metadata !2261, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %2, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()), !dbg !2265
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2266, !tbaa !880
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2266
  ret i32 %8, !dbg !2266
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2267 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %2, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2273
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2274, !tbaa !880
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2274
  ret i32 %6, !dbg !2274
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #0 !dbg !2275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2277, metadata !DIExpression()), !dbg !2278
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2279
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2280
  tail call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2280
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2281
  ret void, !dbg !2282
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2283 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2287, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2288, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %0, metadata !2289, metadata !DIExpression()), !dbg !2300
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !dbg !2301, !tbaa !2302, !range !580
  %5 = icmp eq i8 %4, 0, !dbg !2301
  br i1 %5, label %6, label %25, !dbg !2301

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2303, metadata !DIExpression()) #7, !dbg !2309
  %8 = load i8, i8* %7, align 1, !dbg !2313, !tbaa !2314
  %9 = icmp eq i8 %8, 0, !dbg !2313
  br i1 %9, label %10, label %13, !dbg !2313

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %11, metadata !2303, metadata !DIExpression()) #7, !dbg !2309
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2313
  br i1 %12, label %13, label %6, !dbg !2313, !llvm.loop !2317

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2309
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), !dbg !2319
  br i1 %15, label %17, label %16, !dbg !2319

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !2321
  tail call void @abort() #6, !dbg !2321
  br label %17, !dbg !2321

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2324, !tbaa !2325
  %19 = icmp eq i32 %18, 0, !dbg !2324
  br i1 %19, label %20, label %22, !dbg !2324

20:                                               ; preds = %17
  %21 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2326
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2326, !tbaa !2325
  br label %22, !dbg !2329

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2330
  %24 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %23) #8, !dbg !2330
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2330, !tbaa !2325
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !dbg !2331, !tbaa !2302
  br label %25, !dbg !2332

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 -1, metadata !2291, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2293, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2294, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 0, metadata !2295, metadata !DIExpression()), !dbg !2333
  %26 = icmp sgt i32 %0, 0, !dbg !2334
  br i1 %26, label %36, label %29, !dbg !2334

27:                                               ; preds = %62
  %28 = and i8 %47, 1, !dbg !2335
  br label %29, !dbg !2335

29:                                               ; preds = %27, %25
  %30 = phi i32 [ -1, %25 ], [ %63, %27 ], !dbg !2300
  %31 = phi i8 [ 0, %25 ], [ %28, %27 ]
  %32 = phi i8 [ 0, %25 ], [ %52, %27 ], !dbg !2300
  %33 = phi i8 [ 0, %25 ], [ %48, %27 ], !dbg !2336
  %34 = phi i32 [ 0, %25 ], [ %46, %27 ], !dbg !2337
  %35 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2335
  br i1 %35, label %66, label %97, !dbg !2335

36:                                               ; preds = %25, %62
  %37 = phi i32 [ %46, %62 ], [ 0, %25 ]
  %38 = phi i32 [ %64, %62 ], [ 0, %25 ]
  %39 = phi i8 [ %48, %62 ], [ 0, %25 ]
  %40 = phi i8 [ %52, %62 ], [ 0, %25 ]
  %41 = phi i8 [ %47, %62 ], [ 0, %25 ]
  %42 = phi i32 [ %63, %62 ], [ -1, %25 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !2290, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %38, metadata !2295, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %39, metadata !2294, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %40, metadata !2293, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %41, metadata !2292, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %42, metadata !2291, metadata !DIExpression()), !dbg !2300
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 7, !dbg !2338
  %44 = load i32, i32* %43, align 4, !dbg !2338, !tbaa !2071
  %45 = icmp eq i32 %44, 0, !dbg !2338
  %46 = add i32 %44, %37, !dbg !2338
  %47 = select i1 %45, i8 1, i8 %41, !dbg !2338
  %48 = select i1 %45, i8 %39, i8 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %46, metadata !2290, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %48, metadata !2294, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %47, metadata !2292, metadata !DIExpression()), !dbg !2300
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 4, !dbg !2341
  %50 = load i32, i32* %49, align 4, !dbg !2341, !tbaa !2097
  %51 = icmp eq i32 %50, 0, !dbg !2341
  %52 = select i1 %51, i8 %40, i8 1, !dbg !2341
  call void @llvm.dbg.value(metadata i8 %52, metadata !2293, metadata !DIExpression()), !dbg !2300
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 8, !dbg !2342
  %54 = load i8, i8* %53, align 4, !dbg !2342, !tbaa !2085, !range !580
  %55 = icmp eq i8 %54, 0, !dbg !2342
  br i1 %55, label %58, label %56, !dbg !2342

56:                                               ; preds = %36
  %57 = add nsw i32 %42, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %57, metadata !2291, metadata !DIExpression()), !dbg !2300
  br label %62, !dbg !2346

58:                                               ; preds = %36
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 6, !dbg !2347
  %60 = load i32, i32* %59, align 4, !dbg !2347, !tbaa !2025
  %61 = add nsw i32 %60, %42, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %61, metadata !2291, metadata !DIExpression()), !dbg !2300
  br label %62, !dbg !2349

62:                                               ; preds = %56, %58
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !2350
  call void @llvm.dbg.value(metadata i32 %63, metadata !2291, metadata !DIExpression()), !dbg !2300
  %64 = add nuw nsw i32 %38, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %46, metadata !2290, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i32 %64, metadata !2295, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8 %48, metadata !2294, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %52, metadata !2293, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 %47, metadata !2292, metadata !DIExpression()), !dbg !2300
  %65 = icmp eq i32 %64, %0, !dbg !2334
  br i1 %65, label %27, label %36, !dbg !2334, !llvm.loop !2352

66:                                               ; preds = %29
  %67 = or i8 %33, %32, !dbg !2354
  %68 = and i8 %67, 1, !dbg !2354
  %69 = icmp eq i8 %68, 0, !dbg !2354
  %70 = xor i1 %69, true, !dbg !2354
  %71 = zext i1 %70 to i32, !dbg !2354
  %72 = add nsw i32 %34, %71, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %72, metadata !2290, metadata !DIExpression()), !dbg !2300
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2357, !tbaa !2080
  %74 = icmp slt i32 %73, 256, !dbg !2357
  br i1 %74, label %75, label %93, !dbg !2357

75:                                               ; preds = %66, %85
  %76 = phi i32 [ %90, %85 ], [ %73, %66 ]
  %77 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2357, !tbaa !2325
  %78 = add nsw i32 %77, -1, !dbg !2357
  %79 = icmp slt i32 %76, %78, !dbg !2357
  br i1 %79, label %85, label %80, !dbg !2357

80:                                               ; preds = %75
  %81 = add nsw i32 %76, 1, !dbg !2357
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !dbg !2357, !tbaa !2358
  %83 = sub i32 %81, %82, !dbg !2357
  %84 = icmp slt i32 %83, %72, !dbg !2357
  br i1 %84, label %85, label %93, !dbg !2357

85:                                               ; preds = %75, %80
  %86 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2359, !tbaa !2137
  %87 = add nsw i32 %86, 1, !dbg !2359
  store i32 %87, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2359, !tbaa !2137
  %88 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z", i8* null) #8, !dbg !2361
  %89 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2361, !tbaa !2080
  %90 = add nsw i32 %89, 1, !dbg !2361
  store i32 %90, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2361, !tbaa !2080
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 12, i32 %89, !dbg !2361
  store %struct.halide_thread* %88, %struct.halide_thread** %91, align 4, !dbg !2361, !tbaa !880
  %92 = icmp slt i32 %89, 255, !dbg !2357
  br i1 %92, label %75, label %93, !dbg !2357, !llvm.loop !2362

93:                                               ; preds = %80, %85, %66
  br i1 %69, label %115, label %94, !dbg !2364

94:                                               ; preds = %93
  %95 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !dbg !2365, !tbaa !2358
  %96 = add nsw i32 %95, 1, !dbg !2365
  store i32 %96, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !dbg !2365, !tbaa !2358
  br label %115, !dbg !2368

97:                                               ; preds = %29
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7, !dbg !2369
  %99 = load i32, i32* %98, align 4, !dbg !2369, !tbaa !2071
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8, !dbg !2369
  %101 = load i32, i32* %100, align 4, !dbg !2369, !tbaa !2032
  %102 = mul nsw i32 %101, %99, !dbg !2369
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2369
  %104 = load i32, i32* %103, align 4, !dbg !2369, !tbaa !2372
  %105 = sub nsw i32 %102, %104, !dbg !2369
  %106 = icmp sgt i32 %34, %105, !dbg !2369
  br i1 %106, label %107, label %108, !dbg !2369

107:                                              ; preds = %97
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !2373
  tail call void @abort() #6, !dbg !2373
  br label %108, !dbg !2373

108:                                              ; preds = %107, %97
  %109 = or i8 %33, %32, !dbg !2376
  %110 = and i8 %109, 1, !dbg !2376
  %111 = icmp eq i8 %110, 0, !dbg !2376
  br i1 %111, label %115, label %112, !dbg !2376

112:                                              ; preds = %108
  %113 = load i32, i32* %103, align 4, !dbg !2377, !tbaa !2372
  %114 = add nsw i32 %113, 1, !dbg !2377
  store i32 %114, i32* %103, align 4, !dbg !2377, !tbaa !2372
  br label %115, !dbg !2380

115:                                              ; preds = %108, %93, %112, %94
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2381
  br i1 %26, label %116, label %119, !dbg !2382

116:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2381
  %117 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !2034
  br label %132, !dbg !2382

118:                                              ; preds = %132
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2383, !tbaa !2034
  br label %119, !dbg !2382

119:                                              ; preds = %118, %115
  %120 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2386, !tbaa !2126
  %121 = icmp ne i32 %120, 0, !dbg !2386
  %122 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2386
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2386
  %124 = icmp slt i32 %122, %123, !dbg !2386
  %125 = or i1 %121, %124, !dbg !2386
  call void @llvm.dbg.value(metadata i1 %125, metadata !2299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2300
  %126 = icmp sgt i32 %30, %122, !dbg !2387
  %127 = or i1 %126, %125, !dbg !2387
  %128 = select i1 %127, i32 %123, i32 %30, !dbg !2387
  store i32 %128, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !dbg !2388, !tbaa !2138
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #8, !dbg !2390
  %129 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !dbg !2391, !tbaa !2138
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2391, !tbaa !2137
  %131 = icmp sgt i32 %129, %130, !dbg !2391
  br i1 %131, label %142, label %145, !dbg !2391

132:                                              ; preds = %116, %132
  %133 = phi %"struct.Halide::Runtime::Internal::work"* [ %117, %116 ], [ %136, %132 ], !dbg !2392
  %134 = phi i32 [ %0, %116 ], [ %135, %132 ]
  %135 = add nsw i32 %134, -1, !dbg !2381
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, !dbg !2392
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 2, !dbg !2392
  store %"struct.Halide::Runtime::Internal::work"* %133, %"struct.Halide::Runtime::Internal::work"** %137, align 4, !dbg !2392, !tbaa !2049
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 3, !dbg !2393
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %138, align 4, !dbg !2393, !tbaa !2111
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 4, !dbg !2394
  store i32 %0, i32* %139, align 4, !dbg !2394, !tbaa !2232
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 6, !dbg !2395
  store i32 0, i32* %140, align 4, !dbg !2395, !tbaa !2372
  call void @llvm.dbg.value(metadata i32 %135, metadata !2297, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2381
  %141 = icmp sgt i32 %134, 1, !dbg !2382
  br i1 %141, label %132, label %118, !dbg !2382, !llvm.loop !2396

142:                                              ; preds = %119
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8)) #8, !dbg !2398
  %143 = icmp eq i8 %31, 0, !dbg !2401
  br i1 %143, label %145, label %144, !dbg !2401

144:                                              ; preds = %142
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2402
  br label %145, !dbg !2405

145:                                              ; preds = %142, %144, %119
  %146 = or i8 %33, %32, !dbg !2406
  %147 = and i8 %146, 1, !dbg !2406
  %148 = icmp eq i8 %147, 0, !dbg !2406
  br i1 %148, label %154, label %149, !dbg !2406

149:                                              ; preds = %145
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2407
  %151 = select i1 %35, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %150, !dbg !2407
  %152 = load i32, i32* %151, align 4, !dbg !2410, !tbaa !468
  %153 = add nsw i32 %152, -1, !dbg !2410
  store i32 %153, i32* %151, align 4, !dbg !2410, !tbaa !468
  br label %154, !dbg !2412

154:                                              ; preds = %149, %145
  ret void, !dbg !2412
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2413 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2415, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %2, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %0, metadata !2418, metadata !DIExpression()), !dbg !2419
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2420
  ret i32 %5, !dbg !2420
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2421 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2423, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %4, metadata !2424, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %3, metadata !2425, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %2, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()), !dbg !2429
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2430
  ret i32 %7, !dbg !2430
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2431 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  call void @llvm.dbg.value(metadata i8* %4, metadata !2433, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %3, metadata !2434, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %2, metadata !2435, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* %0, metadata !2437, metadata !DIExpression()), !dbg !2439
  %7 = icmp slt i32 %3, 1, !dbg !2440
  br i1 %7, label %29, label %8, !dbg !2440

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2441
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #7, !dbg !2441
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2438, metadata !DIExpression()), !dbg !2441
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0, !dbg !2442
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !dbg !2442, !tbaa !2185
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5, !dbg !2443
  store i32 %2, i32* %11, align 4, !dbg !2443, !tbaa !2184
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6, !dbg !2444
  store i32 %3, i32* %12, align 4, !dbg !2444, !tbaa !2025
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8, !dbg !2445
  store i8 0, i8* %13, align 4, !dbg !2445, !tbaa !2085
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3, !dbg !2446
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !dbg !2446, !tbaa !2101
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4, !dbg !2447
  store i32 0, i32* %15, align 4, !dbg !2447, !tbaa !2097
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1, !dbg !2448
  store i8* %4, i8** %16, align 4, !dbg !2448, !tbaa !2183
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7, !dbg !2449
  store i32 0, i32* %17, align 4, !dbg !2449, !tbaa !2071
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2, !dbg !2450
  store i8* null, i8** %18, align 4, !dbg !2450, !tbaa !2451
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1, !dbg !2452
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !dbg !2452, !tbaa !2453
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7, !dbg !2454
  store i8* %0, i8** %20, align 4, !dbg !2454, !tbaa !2186
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9, !dbg !2455
  store i32 0, i32* %21, align 4, !dbg !2455, !tbaa !2039
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8, !dbg !2456
  store i32 0, i32* %22, align 4, !dbg !2456, !tbaa !2032
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10, !dbg !2457
  store i32 0, i32* %23, align 4, !dbg !2457, !tbaa !2096
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11, !dbg !2458
  store i8 0, i8* %24, align 4, !dbg !2458, !tbaa !2128
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3, !dbg !2459
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !dbg !2459, !tbaa !2111
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4, !dbg !2460
  store i32 0, i32* %26, align 4, !dbg !2460, !tbaa !2232
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5, !dbg !2461
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !dbg !2461, !tbaa !2056
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2462
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !2463
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !2464
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2465
  %28 = load i32, i32* %21, align 4, !dbg !2466, !tbaa !2039
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #7, !dbg !2467
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2439
  ret i32 %30, !dbg !2467
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !2468 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2470, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2471, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %1, metadata !2472, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %0, metadata !2473, metadata !DIExpression()), !dbg !2480
  %5 = mul i32 %1, 80, !dbg !2481
  %6 = alloca i8, i32 %5, align 16, !dbg !2481
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2481
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %7, metadata !2474, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 0, metadata !2475, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2471, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %1, metadata !2472, metadata !DIExpression()), !dbg !2480
  %8 = icmp sgt i32 %1, 0, !dbg !2483
  br i1 %8, label %12, label %9, !dbg !2483

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %35, %34 ]
  %11 = icmp eq i32 %10, 0, !dbg !2484
  br i1 %11, label %54, label %39, !dbg !2484

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %36, %34 ], [ %2, %4 ]
  %15 = phi i32 [ %35, %34 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2475, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %14, metadata !2471, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %15, metadata !2472, metadata !DIExpression()), !dbg !2480
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i32 0, i32 6, !dbg !2485
  %17 = load i32, i32* %16, align 4, !dbg !2485, !tbaa !2488
  %18 = icmp slt i32 %17, 1, !dbg !2485
  br i1 %18, label %19, label %21, !dbg !2485

19:                                               ; preds = %12
  %20 = add nsw i32 %15, -1, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %20, metadata !2472, metadata !DIExpression()), !dbg !2480
  br label %34, !dbg !2492

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i32 1, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %22, metadata !2471, metadata !DIExpression()), !dbg !2480
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, !dbg !2493
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*, !dbg !2493
  %25 = bitcast %struct.halide_parallel_task_t* %14 to i8*, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 16 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !dbg !2493, !tbaa.struct !2494
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1, !dbg !2495
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !dbg !2495, !tbaa !2453
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7, !dbg !2496
  store i8* %0, i8** %27, align 4, !dbg !2496, !tbaa !2186
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9, !dbg !2497
  store i32 0, i32* %28, align 4, !dbg !2497, !tbaa !2039
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8, !dbg !2498
  store i32 0, i32* %29, align 16, !dbg !2498, !tbaa !2032
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10, !dbg !2499
  store i32 0, i32* %30, align 8, !dbg !2499, !tbaa !2096
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11, !dbg !2500
  store i8 0, i8* %31, align 4, !dbg !2500, !tbaa !2128
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5, !dbg !2501
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**, !dbg !2501
  store i8* %3, i8** %33, align 4, !dbg !2501, !tbaa !2056
  br label %34, !dbg !2502

34:                                               ; preds = %21, %19
  %35 = phi i32 [ %20, %19 ], [ %15, %21 ]
  %36 = phi %struct.halide_parallel_task_t* [ %14, %19 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %36, metadata !2471, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %35, metadata !2472, metadata !DIExpression()), !dbg !2480
  %37 = add nuw nsw i32 %13, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %37, metadata !2475, metadata !DIExpression()), !dbg !2482
  %38 = icmp slt i32 %37, %35, !dbg !2483
  br i1 %38, label %12, label %9, !dbg !2483, !llvm.loop !2504

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2506
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2507
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !2507
  call void @llvm.dbg.value(metadata i32 0, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 0, metadata !2478, metadata !DIExpression()), !dbg !2508
  %41 = icmp sgt i32 %10, 0, !dbg !2509
  br i1 %41, label %44, label %42, !dbg !2509

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ], !dbg !2480
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2510
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !2478, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 %46, metadata !2477, metadata !DIExpression()), !dbg !2480
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, !dbg !2511
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #8, !dbg !2511
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9, !dbg !2514
  %49 = load i32, i32* %48, align 4, !dbg !2514, !tbaa !2039
  %50 = icmp eq i32 %49, 0, !dbg !2514
  %51 = select i1 %50, i32 %46, i32 %49, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %51, metadata !2477, metadata !DIExpression()), !dbg !2480
  %52 = add nuw nsw i32 %45, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %52, metadata !2478, metadata !DIExpression()), !dbg !2508
  %53 = icmp eq i32 %52, %10, !dbg !2509
  br i1 %53, label %42, label %44, !dbg !2509, !llvm.loop !2516

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ], !dbg !2480
  ret i32 %55, !dbg !2518
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !2519 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2523, metadata !DIExpression()), !dbg !2524
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2525
  call void @llvm.dbg.value(metadata i32* undef, metadata !2526, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32* %3, metadata !2532, metadata !DIExpression()), !dbg !2535
  store i32 %1, i32* %3, align 4, !dbg !2537, !tbaa !468
  fence seq_cst, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %1, metadata !2521, metadata !DIExpression()), !dbg !2524
  ret i32 %1, !dbg !2539
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2540 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2542, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2543, metadata !DIExpression()), !dbg !2547
  %3 = icmp eq i32 %1, 0, !dbg !2548
  br i1 %3, label %15, label %4, !dbg !2548

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2544, metadata !DIExpression()), !dbg !2547
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2549
  call void @llvm.dbg.value(metadata i32* undef, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32* %5, metadata !2553, metadata !DIExpression()), !dbg !2554
  fence seq_cst, !dbg !2556
  %6 = load i32, i32* %5, align 4, !dbg !2557, !tbaa !468
  br label %7, !dbg !2558

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ], !dbg !2547
  call void @llvm.dbg.value(metadata i32 %8, metadata !2545, metadata !DIExpression()), !dbg !2547
  %9 = sub nsw i32 %8, %1, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %9, metadata !2546, metadata !DIExpression()), !dbg !2547
  %10 = icmp sgt i32 %9, -1, !dbg !2561
  br i1 %10, label %11, label %15, !dbg !2561

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* undef, metadata !2562, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32* undef, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32* %5, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32* undef, metadata !2571, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32* undef, metadata !2574, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32* %5, metadata !2575, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 %8, metadata !2576, metadata !DIExpression()), !dbg !2578
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst, !dbg !2580
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %13, metadata !2577, metadata !DIExpression()), !dbg !2578
  %14 = icmp eq i32 %8, %13, !dbg !2581
  br i1 %14, label %15, label %7, !dbg !2561, !llvm.loop !2582

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ], !dbg !2547
  ret i1 %16, !dbg !2584
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2585 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2589, metadata !DIExpression()), !dbg !2591
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %1, metadata !2593, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32* %3, metadata !2598, metadata !DIExpression()), !dbg !2599
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %4, metadata !2590, metadata !DIExpression()), !dbg !2591
  %5 = icmp eq i32 %4, 0, !dbg !2602
  %6 = icmp ne i32 %1, 0, !dbg !2602
  %7 = and i1 %6, %5, !dbg !2602
  br i1 %7, label %8, label %9, !dbg !2602

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2603
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #8, !dbg !2606
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2607
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2608
  br label %9, !dbg !2609

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !2610
  ret i32 %10, !dbg !2610
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !2611 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !2617 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !dbg !2623, !tbaa !2302, !range !580
  %2 = icmp eq i8 %1, 0, !dbg !2623
  br i1 %2, label %15, label %3, !dbg !2623

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2624
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 13), align 4, !dbg !2625, !tbaa !2028
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2626
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #8, !dbg !2627
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8)) #8, !dbg !2628
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2629
  call void @llvm.dbg.value(metadata i32 0, metadata !2619, metadata !DIExpression()), !dbg !2630
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2631, !tbaa !2080
  %5 = icmp sgt i32 %4, 0, !dbg !2631
  br i1 %5, label %8, label %6, !dbg !2631

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2632, metadata !DIExpression()) #7, !dbg !2638
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), metadata !2635, metadata !DIExpression()) #7, !dbg !2638
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2636, metadata !DIExpression(DW_OP_plus_uconst, 1080, DW_OP_stack_value)) #7, !dbg !2638
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 0, i32 1072) #6, !dbg !2640
  br label %15, !dbg !2641

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2619, metadata !DIExpression()), !dbg !2630
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 12, i32 %9, !dbg !2642
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !dbg !2642, !tbaa !880
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !2642
  %12 = add nuw nsw i32 %9, 1, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %12, metadata !2619, metadata !DIExpression()), !dbg !2630
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2631, !tbaa !2080
  %14 = icmp slt i32 %12, %13, !dbg !2631
  br i1 %14, label %8, label %6, !dbg !2631, !llvm.loop !2646

15:                                               ; preds = %6, %0
  ret void, !dbg !2648
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !2649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2651, metadata !DIExpression()), !dbg !2653
  %2 = icmp slt i32 %0, 0, !dbg !2654
  br i1 %2, label %3, label %4, !dbg !2654

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@", i32 0, i32 0)) #6, !dbg !2655
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2658
  br label %8, !dbg !2659

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2658
  %5 = icmp eq i32 %0, 0, !dbg !2659
  br i1 %5, label %6, label %8, !dbg !2659

6:                                                ; preds = %4
  %7 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %7, metadata !2651, metadata !DIExpression()), !dbg !2653
  br label %8, !dbg !2663

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2651, metadata !DIExpression()), !dbg !2653
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2664, !tbaa !2325
  call void @llvm.dbg.value(metadata i32 %10, metadata !2652, metadata !DIExpression()), !dbg !2653
  %11 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %9) #8, !dbg !2665
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2665, !tbaa !2325
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2666
  ret i32 %10, !dbg !2667
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2668 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !2672, metadata !DIExpression()), !dbg !2674
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2675, !tbaa !880
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2676, !tbaa !880
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !2677
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !2678 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !2682, metadata !DIExpression()), !dbg !2684
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2685, !tbaa !880
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2686, !tbaa !880
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !2687
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2688 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2692, metadata !DIExpression()), !dbg !2694
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2695, !tbaa !880
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !2693, metadata !DIExpression()), !dbg !2694
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2696, !tbaa !880
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !2697
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !2698 {
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !2702, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !2703, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !2704, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !2705, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2710, !tbaa !880
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2711, !tbaa !880
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2712, !tbaa !880
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", align 4, !dbg !2713, !tbaa !880
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2714, !tbaa !880
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2715, !tbaa !880
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2716, !tbaa !880
  ret void, !dbg !2717
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !2718 {
  call void @llvm.dbg.value(metadata i8* %4, metadata !2720, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 %3, metadata !2721, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 %2, metadata !2722, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()), !dbg !2725
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2726, !tbaa !880
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !2726
  ret i32 %7, !dbg !2726
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !2727 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2729, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2730, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %1, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2732, metadata !DIExpression()), !dbg !2733
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", align 4, !dbg !2734, !tbaa !880
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !2734
  ret i32 %6, !dbg !2734
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2735 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2738, metadata !DIExpression()), !dbg !2739
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2740, !tbaa !880
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2740
  ret i32 %4, !dbg !2740
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2741 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2744, metadata !DIExpression()), !dbg !2745
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2746, !tbaa !880
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2746
  ret i32 %4, !dbg !2746
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2747 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2750, metadata !DIExpression()), !dbg !2751
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2752, !tbaa !880
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2752
  ret i1 %4, !dbg !2752
}

declare dso_local x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64*, %struct.CriticalSection*, i32) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!161}
!llvm.module.flags = !{!384, !385, !386, !387}
!llvm.ident = !{!388}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "table_storage", linkageName: "?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA", scope: !2, file: !6, line: 478, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Synchronization", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/synchronization_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b400fbacf7de8493908f4259eb79919f")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 98304, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 12288)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "work_queue", linkageName: "?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", scope: !3, file: !13, line: 166, type: !14, isLocal: false, isDefinition: true)
!13 = !DIFile(filename: "src/runtime/thread_pool_common.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "385167390ae95a5e646994afa54aa508")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_queue_t", scope: !3, file: !13, line: 94, size: 8640, flags: DIFlagTypePassByValue, elements: !15, identifier: ".?AUwork_queue_t@Internal@Runtime@Halide@@")
!15 = !{!16, !28, !30, !31, !89, !90, !91, !92, !96, !97, !98, !99, !100, !106, !107, !108, !109, !114, !117}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !14, file: !13, line: 96, baseType: !17, size: 32)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !18, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !19, identifier: ".?AUhalide_mutex@@")
!18 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "b7ab0d29491f0813a909553a9435c0e2")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !17, file: !18, line: 121, baseType: !21, size: 32)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !26)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 68, baseType: !24)
!23 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "0c7b3d8a4f3a5581b3edea53998e0f01")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 12, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 1)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desired_threads_working", scope: !14, file: !13, line: 99, baseType: !29, size: 32, offset: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "zero_marker", scope: !14, file: !13, line: 103, baseType: !29, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !14, file: !13, line: 106, baseType: !32, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work", scope: !3, file: !13, line: 26, size: 640, flags: DIFlagTypePassByValue, elements: !34, identifier: ".?AUwork@Internal@Runtime@Halide@@")
!34 = !{!35, !65, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !84}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !33, file: !13, line: 27, baseType: !36, size: 288)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_parallel_task_t", file: !18, line: 201, size: 288, flags: DIFlagTypePassByValue, elements: !37, identifier: ".?AUhalide_parallel_task_t@@")
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
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_acquire_t", file: !18, line: 177, size: 64, flags: DIFlagTypePassByValue, elements: !54, identifier: ".?AUhalide_semaphore_acquire_t@@")
!54 = !{!55, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !53, file: !18, line: 178, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_t", file: !18, line: 171, size: 128, flags: DIFlagFwdDecl, identifier: ".?AUhalide_semaphore_t@@")
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
!80 = !DISubprogram(name: "make_runnable", linkageName: "?make_runnable@work@Internal@Runtime@Halide@@QAE_NXZ", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !82)
!82 = !{!64, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!84 = !DISubprogram(name: "running", linkageName: "?running@work@Internal@Runtime@Halide@@QBE_NXZ", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !86)
!86 = !{!64, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "threads_created", scope: !14, file: !13, line: 109, baseType: !29, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "target_a_team_size", scope: !14, file: !13, line: 116, baseType: !29, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "wake_a_team", scope: !14, file: !13, line: 122, baseType: !93, size: 32, offset: 224)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_cond", file: !18, line: 125, size: 32, flags: DIFlagTypePassByValue, elements: !94, identifier: ".?AUhalide_cond@@")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !93, file: !18, line: 126, baseType: !21, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "wake_b_team", scope: !14, file: !13, line: 122, baseType: !93, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "wake_owners", scope: !14, file: !13, line: 122, baseType: !93, size: 32, offset: 288)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "workers_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owners_sleeping", scope: !14, file: !13, line: 126, baseType: !29, size: 32, offset: 352)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !14, file: !13, line: 129, baseType: !101, size: 8192, offset: 384)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 8192, elements: !104)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 32)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_thread", file: !18, line: 312, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: ".?AUhalide_thread@@")
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 8576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !14, file: !13, line: 133, baseType: !64, size: 8, offset: 8584)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "threads_reserved", scope: !14, file: !13, line: 139, baseType: !29, size: 32, offset: 8608)
!109 = !DISubprogram(name: "running", linkageName: "?running@work_queue_t@Internal@Runtime@Halide@@QBE_NXZ", scope: !14, file: !13, line: 141, type: !110, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !111)
!111 = !{!64, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!114 = !DISubprogram(name: "assert_zeroed", linkageName: "?assert_zeroed@work_queue_t@Internal@Runtime@Halide@@QBEXXZ", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !116)
!116 = !{null, !112}
!117 = !DISubprogram(name: "reset", linkageName: "?reset@work_queue_t@Internal@Runtime@Halide@@QAEXXZ", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !119)
!119 = !{null, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "custom_do_task", linkageName: "?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", scope: !3, file: !13, line: 567, type: !123, isLocal: false, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_task_t", file: !18, line: 259, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DISubroutineType(types: !126)
!126 = !{!29, !43, !66, !29, !44}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "custom_do_loop_task", linkageName: "?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", scope: !3, file: !13, line: 568, type: !129, isLocal: false, isDefinition: true)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_loop_task_t", file: !18, line: 268, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!131 = !DISubroutineType(types: !132)
!132 = !{!29, !43, !39, !29, !29, !44, !43}
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "custom_do_par_for", linkageName: "?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", scope: !3, file: !13, line: 569, type: !135, isLocal: false, isDefinition: true)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_par_for_t", file: !18, line: 167, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DISubroutineType(types: !138)
!138 = !{!29, !43, !66, !29, !29, !44}
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "custom_do_parallel_tasks", linkageName: "?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", scope: !3, file: !13, line: 570, type: !141, isLocal: false, isDefinition: true)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_do_parallel_tasks_t", file: !18, line: 281, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DISubroutineType(types: !144)
!144 = !{!29, !43, !29, !145, !43}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "custom_semaphore_init", linkageName: "?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", scope: !3, file: !13, line: 571, type: !148, isLocal: false, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_init_t", file: !18, line: 184, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = !DISubroutineType(types: !151)
!151 = !{!29, !56, !29}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "custom_semaphore_try_acquire", linkageName: "?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", scope: !3, file: !13, line: 572, type: !154, isLocal: false, isDefinition: true)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_try_acquire_t", file: !18, line: 186, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = !DISubroutineType(types: !157)
!157 = !{!64, !56, !29}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "custom_semaphore_release", linkageName: "?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", scope: !3, file: !13, line: 573, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_semaphore_release_t", file: !18, line: 185, baseType: !149)
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !373, imports: !381, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "6b47adcd64c88f8a38b8b1700cd2db58")
!163 = !{}
!164 = !{!165, !102, !22, !176, !229, !264, !265, !305, !330, !340, !311, !350, !363, !367, !32, !368, !300, !49, !372}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spawned_thread", scope: !3, file: !167, line: 38, size: 96, flags: DIFlagTypePassByValue, elements: !168, identifier: ".?AUspawned_thread@Internal@Runtime@Halide@@")
!167 = !DIFile(filename: "src/runtime/windows_threads.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "6b47adcd64c88f8a38b8b1700cd2db58")
!168 = !{!169, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !166, file: !167, line: 39, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !166, file: !167, line: 40, baseType: !43, size: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !166, file: !167, line: 41, baseType: !175, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Thread", file: !167, line: 17, baseType: !43)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "word_lock_queue_data", scope: !2, file: !6, line: 254, size: 576, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !178, identifier: ".?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@")
!178 = !{!179, !221, !222, !223, !224, !228}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !177, file: !6, line: 255, baseType: !180, size: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_parker", scope: !2, file: !167, line: 87, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !181, identifier: ".?AUthread_parker@Synchronization@Internal@Runtime@Halide@@")
!181 = !{!182, !192, !194, !195, !201, !205, !209, !212, !215, !216, !217, !218, !219, !220}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "critical_section", scope: !180, file: !167, line: 88, baseType: !183, size: 320)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "CriticalSection", file: !167, line: 20, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CriticalSection", file: !167, line: 18, size: 320, flags: DIFlagTypePassByValue, elements: !185, identifier: ".?AUCriticalSection@@")
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !184, file: !167, line: 19, baseType: !187, size: 320)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 10, baseType: !189)
!189 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 5)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "condvar", scope: !180, file: !167, line: 89, baseType: !193, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConditionVariable", file: !167, line: 16, baseType: !188)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "should_park", scope: !180, file: !167, line: 90, baseType: !64, size: 8, offset: 384)
!195 = !DISubprogram(name: "thread_parker", scope: !180, file: !167, line: 92, type: !196, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!196 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !197)
!197 = !{null, !198, !199}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!199 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!201 = !DISubprogram(name: "operator=", linkageName: "??4thread_parker@Synchronization@Internal@Runtime@Halide@@QAEAAU01234@ABU01234@@Z", scope: !180, file: !167, line: 93, type: !202, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!202 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !203)
!203 = !{!204, !198, !199}
!204 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !180, size: 32)
!205 = !DISubprogram(name: "thread_parker", scope: !180, file: !167, line: 94, type: !206, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!206 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !207)
!207 = !{null, !198, !208}
!208 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !180, size: 32)
!209 = !DISubprogram(name: "operator=", linkageName: "??4thread_parker@Synchronization@Internal@Runtime@Halide@@QAEAAU01234@$$QAU01234@@Z", scope: !180, file: !167, line: 95, type: !210, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!210 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !211)
!211 = !{!204, !198, !208}
!212 = !DISubprogram(name: "thread_parker", scope: !180, file: !167, line: 97, type: !213, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !214)
!214 = !{null, !198}
!215 = !DISubprogram(name: "~thread_parker", scope: !180, file: !167, line: 102, type: !213, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubprogram(name: "prepare_park", linkageName: "?prepare_park@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 107, type: !213, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubprogram(name: "park", linkageName: "?park@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 111, type: !213, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubprogram(name: "unpark_start", linkageName: "?unpark_start@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 119, type: !213, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "unpark", linkageName: "?unpark@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 123, type: !213, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubprogram(name: "unpark_finish", linkageName: "?unpark_finish@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 128, type: !213, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !6, line: 273, baseType: !176, size: 32, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !177, file: !6, line: 274, baseType: !176, size: 32, offset: 480)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !177, file: !6, line: 275, baseType: !176, size: 32, offset: 512)
!224 = !DISubprogram(name: "word_lock_queue_data", scope: !177, file: !6, line: 277, type: !225, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !226)
!226 = !{null, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!228 = !DISubprogram(name: "~word_lock_queue_data", scope: !177, file: !6, line: 280, type: !225, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", scope: !2, file: !6, line: 475, size: 98304, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !231, identifier: ".?AUhash_table@Synchronization@Internal@Runtime@Halide@@")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !230, file: !6, line: 476, baseType: !233, size: 98304)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 98304, elements: !262)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_bucket", scope: !2, file: !6, line: 463, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !235, identifier: ".?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@")
!235 = !{!236, !248, !261}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !234, file: !6, line: 464, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "word_lock", scope: !2, file: !6, line: 283, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !238, identifier: ".?AVword_lock@Synchronization@Internal@Runtime@Halide@@")
!238 = !{!239, !240, !244, !245, !246, !247}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !237, file: !6, line: 284, baseType: !22, size: 32)
!240 = !DISubprogram(name: "lock_full", linkageName: "?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !237, file: !6, line: 286, type: !241, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !242)
!242 = !{null, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!244 = !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !237, file: !6, line: 287, type: !241, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "word_lock", scope: !237, file: !6, line: 290, type: !241, scopeLine: 290, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubprogram(name: "lock", linkageName: "?lock@word_lock@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !237, file: !6, line: 291, type: !241, scopeLine: 291, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubprogram(name: "unlock", linkageName: "?unlock@word_lock@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !237, file: !6, line: 304, type: !241, scopeLine: 304, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !234, file: !6, line: 466, baseType: !249, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_data", scope: !2, file: !6, line: 448, size: 576, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !251, identifier: ".?AUqueue_data@Synchronization@Internal@Runtime@Halide@@")
!251 = !{!252, !253, !254, !255, !256, !260}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parker", scope: !250, file: !6, line: 449, baseType: !180, size: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_address", scope: !250, file: !6, line: 451, baseType: !22, size: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !6, line: 452, baseType: !249, size: 32, offset: 480)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_info", scope: !250, file: !6, line: 453, baseType: !22, size: 32, offset: 512)
!256 = !DISubprogram(name: "queue_data", scope: !250, file: !6, line: 455, type: !257, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !258)
!258 = !{null, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "~queue_data", scope: !250, file: !6, line: 457, type: !257, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !6, line: 467, baseType: !249, size: 32, offset: 64)
!262 = !{!263}
!263 = !DISubrange(count: 1024)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex_parking_control", scope: !2, file: !6, line: 829, size: 160, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !267, identifier: ".?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@")
!267 = !{!268, !299, !301}
!268 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !266, baseType: !269, extraData: i32 0)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parking_control", scope: !2, file: !6, line: 592, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !270, identifier: ".?AUparking_control@Synchronization@Internal@Runtime@Halide@@")
!270 = !{!271, !284, !285, !289, !295}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !269, file: !6, line: 593, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 32)
!273 = !DISubroutineType(types: !274)
!274 = !{!64, !43, !275}
!275 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "validate_action", scope: !2, file: !6, line: 576, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !277, identifier: ".?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@")
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "unpark_one", scope: !276, file: !6, line: 577, baseType: !64, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_unpark_info", scope: !276, file: !6, line: 578, baseType: !22, size: 32, offset: 32)
!280 = !DISubprogram(name: "validate_action", scope: !276, file: !6, line: 580, type: !281, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !282)
!282 = !{null, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "before_sleep", scope: !269, file: !6, line: 594, baseType: !170, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "unpark", scope: !269, file: !6, line: 595, baseType: !286, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DISubroutineType(types: !288)
!288 = !{!22, !43, !29, !64}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_callback", scope: !269, file: !6, line: 596, baseType: !290, size: 32, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !43, !293, !64, !64}
!293 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !294, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!295 = !DISubprogram(name: "parking_control", scope: !269, file: !6, line: 598, type: !296, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lock_state", scope: !266, file: !6, line: 830, baseType: !300, size: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!301 = !DISubprogram(name: "mutex_parking_control", scope: !266, file: !6, line: 832, type: !302, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !303)
!303 = !{null, !304, !300}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_parking_control", scope: !2, file: !6, line: 958, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !307, identifier: ".?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@")
!307 = !{!308, !309, !310, !326}
!308 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !306, baseType: !269, extraData: i32 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !306, file: !6, line: 959, baseType: !300, size: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !306, file: !6, line: 960, baseType: !311, size: 32, offset: 160)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_mutex", scope: !2, file: !6, line: 859, size: 32, flags: DIFlagTypePassByValue, elements: !313, identifier: ".?AVfast_mutex@Synchronization@Internal@Runtime@Halide@@")
!313 = !{!314, !315, !319, !320, !321, !322, !325}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !6, line: 860, baseType: !22, size: 32)
!315 = !DISubprogram(name: "lock_full", linkageName: "?lock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !312, file: !6, line: 862, type: !316, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !317)
!317 = !{null, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!319 = !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !312, file: !6, line: 906, type: !316, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "lock", linkageName: "?lock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 920, type: !316, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubprogram(name: "unlock", linkageName: "?unlock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 929, type: !316, scopeLine: 929, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubprogram(name: "make_parked_if_locked", linkageName: "?make_parked_if_locked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !312, file: !6, line: 938, type: !323, scopeLine: 938, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !324)
!324 = !{!64, !318}
!325 = !DISubprogram(name: "make_parked", linkageName: "?make_parked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 953, type: !316, scopeLine: 953, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubprogram(name: "signal_parking_control", scope: !306, file: !6, line: 962, type: !327, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !328)
!328 = !{null, !329, !300, !311}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "broadcast_parking_control", scope: !2, file: !6, line: 985, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !332, identifier: ".?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@")
!332 = !{!333, !334, !335, !336}
!333 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !331, baseType: !269, extraData: i32 0)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !331, file: !6, line: 986, baseType: !300, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !331, file: !6, line: 987, baseType: !311, size: 32, offset: 160)
!336 = !DISubprogram(name: "broadcast_parking_control", scope: !331, file: !6, line: 989, type: !337, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !338)
!338 = !{null, !339, !300, !311}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_parking_control", scope: !2, file: !6, line: 1026, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !342, identifier: ".?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@")
!342 = !{!343, !344, !345, !346}
!343 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !341, baseType: !269, extraData: i32 0)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cond_state", scope: !341, file: !6, line: 1027, baseType: !300, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !341, file: !6, line: 1028, baseType: !311, size: 32, offset: 160)
!346 = !DISubprogram(name: "wait_parking_control", scope: !341, file: !6, line: 1030, type: !347, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !348)
!348 = !{null, !349, !300, !311}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "fast_cond", scope: !2, file: !6, line: 1072, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !352, identifier: ".?AVfast_cond@Synchronization@Internal@Runtime@Halide@@")
!352 = !{!353, !354, !358, !359, !360}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !6, line: 1073, baseType: !22, size: 32)
!354 = !DISubprogram(name: "fast_cond", scope: !351, file: !6, line: 1076, type: !355, scopeLine: 1076, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !356)
!356 = !{null, !357}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!358 = !DISubprogram(name: "signal", linkageName: "?signal@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !351, file: !6, line: 1078, type: !355, scopeLine: 1078, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubprogram(name: "broadcast", linkageName: "?broadcast@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !351, file: !6, line: 1092, type: !355, scopeLine: 1092, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubprogram(name: "wait", linkageName: "?wait@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXPAVfast_mutex@2345@@Z", scope: !351, file: !6, line: 1105, type: !361, scopeLine: 1105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !362)
!362 = !{null, !357, !311}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 32)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex_array", file: !6, line: 1164, size: 32, flags: DIFlagTypePassByValue, elements: !365, identifier: ".?AUhalide_mutex_array@@")
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !364, file: !6, line: 1165, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_semaphore_impl_t", file: !13, line: 711, size: 32, flags: DIFlagTypePassByValue, elements: !370, identifier: ".?AUhalide_semaphore_impl_t@@")
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !13, line: 712, baseType: !29, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!373 = !{!374, !377, !0, !379, !11, !121, !127, !133, !139, !146, !152, !158}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression(DW_OP_constu, 1, DW_OP_stack_value))
!375 = distinct !DIGlobalVariable(name: "lock_bit", scope: !2, file: !6, line: 250, type: !376, isLocal: true, isDefinition: true)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!378 = distinct !DIGlobalVariable(name: "queue_lock_bit", scope: !2, file: !6, line: 251, type: !376, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression(DW_OP_constu, 2, DW_OP_stack_value))
!380 = distinct !DIGlobalVariable(name: "parked_bit", scope: !2, file: !6, line: 252, type: !376, isLocal: true, isDefinition: true)
!381 = !{!382, !383}
!382 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!383 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!384 = !{i32 1, !"NumRegisterParameters", i32 0}
!385 = !{i32 2, !"CodeView", i32 1}
!386 = !{i32 2, !"Debug Info Version", i32 3}
!387 = !{i32 1, !"wchar_size", i32 2}
!388 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!389 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z", scope: !3, file: !167, line: 43, type: !390, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!43, !43}
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "arg", arg: 1, scope: !389, file: !167, line: 43, type: !43)
!394 = !DILocalVariable(name: "t", scope: !389, file: !167, line: 44, type: !165)
!395 = !DILocation(line: 0, scope: !389)
!396 = !DILocation(line: 45, scope: !389)
!397 = !{!398, !399, i64 0}
!398 = !{!"?AUspawned_thread@Internal@Runtime@Halide@@", !399, i64 0, !399, i64 4, !399, i64 8}
!399 = !{!"any pointer", !400, i64 0}
!400 = !{!"omnipotent char", !401, i64 0}
!401 = !{!"Simple C++ TBAA"}
!402 = !{!398, !399, i64 4}
!403 = !DILocation(line: 46, scope: !389)
!404 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !167, file: !167, line: 55, type: !405, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!29}
!407 = !{!408}
!408 = !DILocalVariable(name: "num_cores", scope: !404, file: !167, line: 57, type: !372)
!409 = !DILocation(line: 57, scope: !404)
!410 = !DILocation(line: 0, scope: !404)
!411 = !DILocation(line: 58, scope: !404)
!412 = !DILocation(line: 59, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !167, line: 58)
!414 = distinct !DILexicalBlock(scope: !404, file: !167, line: 58)
!415 = !DILocation(line: 0, scope: !414)
!416 = !DILocation(line: 63, scope: !404)
!417 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 65, type: !418, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!102, !170, !43}
!420 = !{!421, !422, !423}
!421 = !DILocalVariable(name: "closure", arg: 2, scope: !417, file: !167, line: 65, type: !43)
!422 = !DILocalVariable(name: "f", arg: 1, scope: !417, file: !167, line: 65, type: !170)
!423 = !DILocalVariable(name: "t", scope: !417, file: !167, line: 66, type: !165)
!424 = !DILocation(line: 0, scope: !417)
!425 = !DILocation(line: 66, scope: !417)
!426 = !DILocation(line: 67, scope: !417)
!427 = !DILocation(line: 68, scope: !417)
!428 = !DILocation(line: 69, scope: !417)
!429 = !{!398, !399, i64 8}
!430 = !DILocation(line: 70, scope: !417)
!431 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !432, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !102}
!434 = !{!435, !436}
!435 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !431, file: !167, line: 73, type: !102)
!436 = !DILocalVariable(name: "thread", scope: !431, file: !167, line: 74, type: !165)
!437 = !DILocation(line: 0, scope: !431)
!438 = !DILocation(line: 74, scope: !431)
!439 = !DILocation(line: 75, scope: !431)
!440 = !DILocation(line: 76, scope: !431)
!441 = !DILocation(line: 77, scope: !431)
!442 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !237, file: !6, line: 321, type: !241, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !240, retainedNodes: !443)
!443 = !{!444, !446, !458, !459, !463, !464, !465}
!444 = !DILocalVariable(name: "this", arg: 1, scope: !442, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!446 = !DILocalVariable(name: "spinner", scope: !442, file: !6, line: 322, type: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !448, identifier: ".?AVspin_control@Synchronization@Internal@Runtime@Halide@@")
!448 = !{!449, !450, !454, !457}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !447, file: !6, line: 231, baseType: !29, size: 32)
!450 = !DISubprogram(name: "spin_control", scope: !447, file: !6, line: 235, type: !451, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !452)
!452 = !{null, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!454 = !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !447, file: !6, line: 237, type: !455, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !456)
!456 = !{!64, !453}
!457 = !DISubprogram(name: "reset", linkageName: "?reset@spin_control@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !447, file: !6, line: 244, type: !451, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DILocalVariable(name: "expected", scope: !442, file: !6, line: 323, type: !22)
!459 = !DILocalVariable(name: "desired", scope: !460, file: !6, line: 328, type: !22)
!460 = distinct !DILexicalBlock(scope: !461, file: !6, line: 327)
!461 = distinct !DILexicalBlock(scope: !462, file: !6, line: 327)
!462 = distinct !DILexicalBlock(scope: !442, file: !6, line: 326)
!463 = !DILocalVariable(name: "node", scope: !462, file: !6, line: 342, type: !177)
!464 = !DILocalVariable(name: "head", scope: !462, file: !6, line: 347, type: !176)
!465 = !DILocalVariable(name: "desired", scope: !462, file: !6, line: 359, type: !22)
!466 = !DILocation(line: 0, scope: !442)
!467 = !DILocation(line: 324, scope: !442)
!468 = !{!469, !469, i64 0}
!469 = !{!"int", !400, i64 0}
!470 = !DILocation(line: 326, scope: !442)
!471 = !DILocation(line: 327, scope: !462)
!472 = !DILocation(line: 328, scope: !460)
!473 = !DILocation(line: 0, scope: !460)
!474 = !DILocalVariable(name: "desired", arg: 3, scope: !475, file: !6, line: 126, type: !300)
!475 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "?atomic_cas_weak_acquire_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !476, file: !6, line: 126, type: !477, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !479)
!476 = !DINamespace(scope: !2)
!477 = !DISubroutineType(types: !478)
!478 = !{!64, !300, !300, !300}
!479 = !{!474, !480, !481}
!480 = !DILocalVariable(name: "expected", arg: 2, scope: !475, file: !6, line: 126, type: !300)
!481 = !DILocalVariable(name: "addr", arg: 1, scope: !475, file: !6, line: 126, type: !300)
!482 = !DILocation(line: 0, scope: !475, inlinedAt: !483)
!483 = distinct !DILocation(line: 330, scope: !460)
!484 = !DILocalVariable(name: "desired", arg: 3, scope: !485, file: !6, line: 102, type: !488)
!485 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<unsigned int>", linkageName: "??$cas_strong_sequentially_consistent_helper@I@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !476, file: !6, line: 102, type: !486, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !494, retainedNodes: !489)
!486 = !DISubroutineType(types: !487)
!487 = !{!64, !488, !488, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!489 = !{!484, !490, !491, !492, !493}
!490 = !DILocalVariable(name: "expected", arg: 2, scope: !485, file: !6, line: 102, type: !488)
!491 = !DILocalVariable(name: "addr", arg: 1, scope: !485, file: !6, line: 102, type: !488)
!492 = !DILocalVariable(name: "oldval", scope: !485, file: !6, line: 103, type: !25)
!493 = !DILocalVariable(name: "gotval", scope: !485, file: !6, line: 104, type: !25)
!494 = !{!495}
!495 = !DITemplateTypeParameter(name: "T", type: !25)
!496 = !DILocation(line: 0, scope: !485, inlinedAt: !497)
!497 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !483)
!498 = !DILocation(line: 104, scope: !485, inlinedAt: !497)
!499 = !DILocation(line: 106, scope: !485, inlinedAt: !497)
!500 = !DILocation(line: 336, scope: !462)
!501 = !DILocalVariable(name: "this", arg: 1, scope: !502, type: !504, flags: DIFlagArtificial | DIFlagObjectPointer)
!502 = distinct !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !447, file: !6, line: 237, type: !455, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !454, retainedNodes: !503)
!503 = !{!501}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 32)
!505 = !DILocation(line: 0, scope: !502, inlinedAt: !506)
!506 = distinct !DILocation(line: 336, scope: !462)
!507 = !DILocation(line: 241, scope: !502, inlinedAt: !506)
!508 = !DILocation(line: 239, scope: !509, inlinedAt: !506)
!509 = distinct !DILexicalBlock(scope: !510, file: !6, line: 238)
!510 = distinct !DILexicalBlock(scope: !502, file: !6, line: 238)
!511 = !DILocation(line: 337, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !6, line: 336)
!513 = distinct !DILexicalBlock(scope: !462, file: !6, line: 336)
!514 = !DILocation(line: 338, scope: !512)
!515 = !DILocation(line: 339, scope: !512)
!516 = !DILocation(line: 342, scope: !462)
!517 = !DILocalVariable(name: "this", arg: 1, scope: !518, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!518 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "??0word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !177, file: !6, line: 277, type: !225, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !224, retainedNodes: !519)
!519 = !{!517}
!520 = !DILocation(line: 0, scope: !518, inlinedAt: !521)
!521 = distinct !DILocation(line: 342, scope: !462)
!522 = !DILocalVariable(name: "this", arg: 1, scope: !523, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!523 = distinct !DISubprogram(name: "thread_parker", linkageName: "??0thread_parker@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !180, file: !167, line: 97, type: !213, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !212, retainedNodes: !524)
!524 = !{!522}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!526 = !DILocation(line: 0, scope: !523, inlinedAt: !527)
!527 = distinct !DILocation(line: 277, scope: !518, inlinedAt: !521)
!528 = !DILocation(line: 97, scope: !523, inlinedAt: !527)
!529 = !{!530, !533, i64 48}
!530 = !{!"?AUthread_parker@Synchronization@Internal@Runtime@Halide@@", !531, i64 0, !532, i64 40, !533, i64 48}
!531 = !{!"?AUCriticalSection@@", !400, i64 0}
!532 = !{!"long long", !400, i64 0}
!533 = !{!"bool", !400, i64 0}
!534 = !DILocation(line: 98, scope: !535, inlinedAt: !527)
!535 = distinct !DILexicalBlock(scope: !523, file: !167, line: 97)
!536 = !DILocation(line: 99, scope: !535, inlinedAt: !527)
!537 = !DILocation(line: 277, scope: !518, inlinedAt: !521)
!538 = !{!539, !399, i64 56}
!539 = !{!"?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@", !530, i64 0, !399, i64 56, !399, i64 60, !399, i64 64}
!540 = !{!539, !399, i64 60}
!541 = !{!539, !399, i64 64}
!542 = !DILocalVariable(name: "this", arg: 1, scope: !543, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!543 = distinct !DISubprogram(name: "prepare_park", linkageName: "?prepare_park@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 107, type: !213, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !216, retainedNodes: !544)
!544 = !{!542}
!545 = !DILocation(line: 0, scope: !543, inlinedAt: !546)
!546 = distinct !DILocation(line: 344, scope: !462)
!547 = !DILocation(line: 108, scope: !543, inlinedAt: !546)
!548 = !DILocation(line: 347, scope: !462)
!549 = !DILocation(line: 0, scope: !462)
!550 = !DILocation(line: 348, scope: !462)
!551 = !DILocation(line: 349, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !6, line: 348)
!553 = distinct !DILexicalBlock(scope: !462, file: !6, line: 348)
!554 = !DILocation(line: 351, scope: !552)
!555 = !DILocation(line: 356, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !6, line: 351)
!557 = !DILocation(line: 357, scope: !556)
!558 = !DILocation(line: 359, scope: !462)
!559 = !DILocalVariable(name: "desired", arg: 3, scope: !560, file: !6, line: 113, type: !300)
!560 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "?atomic_cas_weak_release_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !476, file: !6, line: 113, type: !477, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !561)
!561 = !{!559, !562, !563}
!562 = !DILocalVariable(name: "expected", arg: 2, scope: !560, file: !6, line: 113, type: !300)
!563 = !DILocalVariable(name: "addr", arg: 1, scope: !560, file: !6, line: 113, type: !300)
!564 = !DILocation(line: 0, scope: !560, inlinedAt: !565)
!565 = distinct !DILocation(line: 360, scope: !462)
!566 = !DILocation(line: 0, scope: !485, inlinedAt: !567)
!567 = distinct !DILocation(line: 114, scope: !560, inlinedAt: !565)
!568 = !DILocation(line: 104, scope: !485, inlinedAt: !567)
!569 = !DILocation(line: 106, scope: !485, inlinedAt: !567)
!570 = !DILocation(line: 360, scope: !462)
!571 = !DILocalVariable(name: "this", arg: 1, scope: !572, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!572 = distinct !DISubprogram(name: "park", linkageName: "?park@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 111, type: !213, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !573)
!573 = !{!571}
!574 = !DILocation(line: 0, scope: !572, inlinedAt: !575)
!575 = distinct !DILocation(line: 361, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !6, line: 360)
!577 = distinct !DILexicalBlock(scope: !462, file: !6, line: 360)
!578 = !DILocation(line: 112, scope: !572, inlinedAt: !575)
!579 = !DILocation(line: 113, scope: !572, inlinedAt: !575)
!580 = !{i8 0, i8 2}
!581 = !DILocation(line: 114, scope: !582, inlinedAt: !575)
!582 = distinct !DILexicalBlock(scope: !572, file: !167, line: 113)
!583 = distinct !{!583, !579, !584, !585}
!584 = !DILocation(line: 115, scope: !572, inlinedAt: !575)
!585 = !{!"llvm.loop.mustprogress"}
!586 = !DILocation(line: 116, scope: !572, inlinedAt: !575)
!587 = !DILocation(line: 363, scope: !576)
!588 = !DILocation(line: 364, scope: !576)
!589 = !DILocalVariable(name: "this", arg: 1, scope: !590, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!590 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "??1word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !177, file: !6, line: 280, type: !225, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !228, retainedNodes: !591)
!591 = !{!589}
!592 = !DILocation(line: 0, scope: !590, inlinedAt: !593)
!593 = distinct !DILocation(line: 365, scope: !462)
!594 = !DILocalVariable(name: "this", arg: 1, scope: !595, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!595 = distinct !DISubprogram(name: "~thread_parker", linkageName: "??1thread_parker@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !180, file: !167, line: 102, type: !213, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !215, retainedNodes: !596)
!596 = !{!594}
!597 = !DILocation(line: 0, scope: !595, inlinedAt: !598)
!598 = distinct !DILocation(line: 280, scope: !599, inlinedAt: !593)
!599 = distinct !DILexicalBlock(scope: !590, file: !6, line: 280)
!600 = !DILocation(line: 104, scope: !601, inlinedAt: !598)
!601 = distinct !DILexicalBlock(scope: !595, file: !167, line: 102)
!602 = !DILocation(line: 365, scope: !462)
!603 = distinct !{!603, !470, !604}
!604 = !DILocation(line: 365, scope: !442)
!605 = !DILocation(line: 366, scope: !442)
!606 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !237, file: !6, line: 368, type: !241, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !244, retainedNodes: !607)
!607 = !{!608, !609, !610, !612, !613, !614, !616, !617, !618, !619, !621, !624, !625, !628}
!608 = !DILocalVariable(name: "this", arg: 1, scope: !606, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!609 = !DILocalVariable(name: "expected", scope: !606, file: !6, line: 369, type: !22)
!610 = !DILocalVariable(name: "thread_queuing", scope: !611, file: !6, line: 375, type: !64)
!611 = distinct !DILexicalBlock(scope: !606, file: !6, line: 372)
!612 = !DILocalVariable(name: "none_queued", scope: !611, file: !6, line: 377, type: !64)
!613 = !DILocalVariable(name: "desired", scope: !611, file: !6, line: 382, type: !22)
!614 = !DILocalVariable(name: "head", scope: !615, file: !6, line: 389, type: !176)
!615 = distinct !DILexicalBlock(scope: !606, file: !6, line: 388)
!616 = !DILocalVariable(name: "current", scope: !615, file: !6, line: 390, type: !176)
!617 = !DILocalVariable(name: "tail", scope: !615, file: !6, line: 391, type: !176)
!618 = !DILocalVariable(name: "times_through", scope: !615, file: !6, line: 392, type: !29)
!619 = !DILocalVariable(name: "next", scope: !620, file: !6, line: 394, type: !176)
!620 = distinct !DILexicalBlock(scope: !615, file: !6, line: 393)
!621 = !DILocalVariable(name: "desired", scope: !622, file: !6, line: 406, type: !22)
!622 = distinct !DILexicalBlock(scope: !623, file: !6, line: 405)
!623 = distinct !DILexicalBlock(scope: !615, file: !6, line: 405)
!624 = !DILocalVariable(name: "new_tail", scope: !615, file: !6, line: 414, type: !176)
!625 = !DILocalVariable(name: "continue_outer", scope: !626, file: !6, line: 416, type: !64)
!626 = distinct !DILexicalBlock(scope: !627, file: !6, line: 415)
!627 = distinct !DILexicalBlock(scope: !615, file: !6, line: 415)
!628 = !DILocalVariable(name: "desired", scope: !629, file: !6, line: 418, type: !22)
!629 = distinct !DILexicalBlock(scope: !626, file: !6, line: 417)
!630 = !DILocation(line: 0, scope: !606)
!631 = !DILocation(line: 370, scope: !606)
!632 = !DILocalVariable(name: "val", arg: 2, scope: !633, file: !6, line: 135, type: !488)
!633 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned int>", linkageName: "??$atomic_load_relaxed@I@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPAI0@Z", scope: !476, file: !6, line: 135, type: !634, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !494, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !488, !488}
!636 = !{!632, !637}
!637 = !DILocalVariable(name: "addr", arg: 1, scope: !633, file: !6, line: 135, type: !488)
!638 = !DILocation(line: 0, scope: !633, inlinedAt: !639)
!639 = distinct !DILocation(line: 370, scope: !606)
!640 = !DILocation(line: 372, scope: !606)
!641 = !DILocation(line: 136, scope: !633, inlinedAt: !639)
!642 = !DILocation(line: 375, scope: !611)
!643 = !DILocation(line: 0, scope: !611)
!644 = !DILocation(line: 378, scope: !611)
!645 = !DILocation(line: 382, scope: !611)
!646 = !DILocation(line: 0, scope: !475, inlinedAt: !647)
!647 = distinct !DILocation(line: 383, scope: !611)
!648 = !DILocation(line: 0, scope: !485, inlinedAt: !649)
!649 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !647)
!650 = !DILocation(line: 104, scope: !485, inlinedAt: !649)
!651 = !DILocation(line: 106, scope: !485, inlinedAt: !649)
!652 = !DILocation(line: 389, scope: !615)
!653 = !DILocation(line: 0, scope: !615)
!654 = !DILocation(line: 391, scope: !615)
!655 = !DILocation(line: 393, scope: !615)
!656 = !DILocation(line: 394, scope: !620)
!657 = !DILocation(line: 0, scope: !620)
!658 = !DILocation(line: 395, scope: !659)
!659 = distinct !DILexicalBlock(scope: !620, file: !6, line: 395)
!660 = !DILocation(line: 395, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !6, line: 395)
!662 = distinct !DILexicalBlock(scope: !659, file: !6, line: 395)
!663 = !DILocation(line: 396, scope: !620)
!664 = !DILocation(line: 398, scope: !620)
!665 = distinct !{!665, !655, !666, !585}
!666 = !DILocation(line: 400, scope: !615)
!667 = !DILocation(line: 401, scope: !615)
!668 = !DILocation(line: 405, scope: !615)
!669 = !DILocation(line: 406, scope: !622)
!670 = !DILocation(line: 0, scope: !622)
!671 = !DILocalVariable(name: "desired", arg: 3, scope: !672, file: !6, line: 118, type: !488)
!672 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned int>", linkageName: "??$atomic_cas_weak_relacq_relaxed@I@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !476, file: !6, line: 118, type: !486, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !494, retainedNodes: !673)
!673 = !{!671, !674, !675}
!674 = !DILocalVariable(name: "expected", arg: 2, scope: !672, file: !6, line: 118, type: !488)
!675 = !DILocalVariable(name: "addr", arg: 1, scope: !672, file: !6, line: 118, type: !488)
!676 = !DILocation(line: 0, scope: !672, inlinedAt: !677)
!677 = distinct !DILocation(line: 407, scope: !622)
!678 = !DILocation(line: 0, scope: !485, inlinedAt: !679)
!679 = distinct !DILocation(line: 119, scope: !672, inlinedAt: !677)
!680 = !DILocation(line: 104, scope: !485, inlinedAt: !679)
!681 = !DILocation(line: 106, scope: !485, inlinedAt: !679)
!682 = !DILocation(line: 407, scope: !622)
!683 = distinct !{!683, !684, !685}
!684 = !DILocation(line: 388, scope: !606)
!685 = !DILocation(line: 445, scope: !606)
!686 = !DILocation(line: 414, scope: !615)
!687 = !DILocation(line: 415, scope: !615)
!688 = !DILocation(line: 0, scope: !626)
!689 = !DILocation(line: 418, scope: !629)
!690 = !DILocation(line: 0, scope: !629)
!691 = !DILocation(line: 0, scope: !672, inlinedAt: !692)
!692 = distinct !DILocation(line: 419, scope: !629)
!693 = !DILocation(line: 0, scope: !485, inlinedAt: !694)
!694 = distinct !DILocation(line: 119, scope: !672, inlinedAt: !692)
!695 = !DILocation(line: 104, scope: !485, inlinedAt: !694)
!696 = !DILocation(line: 106, scope: !485, inlinedAt: !694)
!697 = !DILocation(line: 419, scope: !629)
!698 = !DILocation(line: 422, scope: !629)
!699 = distinct !{!699, !700, !701, !585}
!700 = !DILocation(line: 417, scope: !626)
!701 = !DILocation(line: 428, scope: !626)
!702 = !DILocation(line: 434, scope: !703)
!703 = distinct !DILexicalBlock(scope: !627, file: !6, line: 433)
!704 = !DILocalVariable(name: "val", arg: 2, scope: !705, file: !6, line: 92, type: !22)
!705 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "?atomic_and_fetch_release@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAIPAII@Z", scope: !476, file: !6, line: 92, type: !706, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!22, !300, !22}
!708 = !{!704, !709}
!709 = !DILocalVariable(name: "addr", arg: 1, scope: !705, file: !6, line: 92, type: !300)
!710 = !DILocation(line: 0, scope: !705, inlinedAt: !711)
!711 = distinct !DILocation(line: 435, scope: !703)
!712 = !DILocation(line: 93, scope: !705, inlinedAt: !711)
!713 = !DILocation(line: 436, scope: !703)
!714 = !DILocalVariable(name: "this", arg: 1, scope: !715, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!715 = distinct !DISubprogram(name: "unpark_start", linkageName: "?unpark_start@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 119, type: !213, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !716)
!716 = !{!714}
!717 = !DILocation(line: 0, scope: !715, inlinedAt: !718)
!718 = distinct !DILocation(line: 441, scope: !615)
!719 = !DILocation(line: 120, scope: !715, inlinedAt: !718)
!720 = !DILocalVariable(name: "this", arg: 1, scope: !721, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!721 = distinct !DISubprogram(name: "unpark", linkageName: "?unpark@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 123, type: !213, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !219, retainedNodes: !722)
!722 = !{!720}
!723 = !DILocation(line: 0, scope: !721, inlinedAt: !724)
!724 = distinct !DILocation(line: 442, scope: !615)
!725 = !DILocation(line: 124, scope: !721, inlinedAt: !724)
!726 = !DILocation(line: 125, scope: !721, inlinedAt: !724)
!727 = !DILocalVariable(name: "this", arg: 1, scope: !728, type: !525, flags: DIFlagArtificial | DIFlagObjectPointer)
!728 = distinct !DISubprogram(name: "unpark_finish", linkageName: "?unpark_finish@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 128, type: !213, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !220, retainedNodes: !729)
!729 = !{!727}
!730 = !DILocation(line: 0, scope: !728, inlinedAt: !731)
!731 = distinct !DILocation(line: 443, scope: !615)
!732 = !DILocation(line: 129, scope: !728, inlinedAt: !731)
!733 = !DILocation(line: 444, scope: !615)
!734 = !DILocation(line: 446, scope: !606)
!735 = distinct !DISubprogram(name: "lock_bucket", linkageName: "?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z", scope: !2, file: !6, line: 509, type: !736, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !739)
!736 = !DISubroutineType(types: !737)
!737 = !{!738, !22}
!738 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 32)
!739 = !{!740, !741, !742}
!740 = !DILocalVariable(name: "addr", arg: 1, scope: !735, file: !6, line: 509, type: !22)
!741 = !DILocalVariable(name: "hash", scope: !735, file: !6, line: 510, type: !22)
!742 = !DILocalVariable(name: "bucket", scope: !735, file: !6, line: 515, type: !738)
!743 = !DILocation(line: 0, scope: !735)
!744 = !DILocalVariable(name: "bits", arg: 2, scope: !745, file: !6, line: 499, type: !24)
!745 = distinct !DISubprogram(name: "addr_hash", linkageName: "?addr_hash@Synchronization@Internal@Runtime@Halide@@YAIII@Z", scope: !2, file: !6, line: 499, type: !746, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!22, !22, !24}
!748 = !{!744, !749}
!749 = !DILocalVariable(name: "addr", arg: 1, scope: !745, file: !6, line: 499, type: !22)
!750 = !DILocation(line: 0, scope: !745, inlinedAt: !751)
!751 = distinct !DILocation(line: 510, scope: !735)
!752 = !DILocation(line: 505, scope: !753, inlinedAt: !751)
!753 = distinct !DILexicalBlock(scope: !754, file: !6, line: 504)
!754 = distinct !DILexicalBlock(scope: !745, file: !6, line: 502)
!755 = !DILocation(line: 515, scope: !735)
!756 = !DILocalVariable(name: "this", arg: 1, scope: !757, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!757 = distinct !DISubprogram(name: "lock", linkageName: "?lock@word_lock@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !237, file: !6, line: 291, type: !241, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !246, retainedNodes: !758)
!758 = !{!756, !759, !760}
!759 = !DILocalVariable(name: "expected", scope: !757, file: !6, line: 294, type: !22)
!760 = !DILocalVariable(name: "desired", scope: !757, file: !6, line: 295, type: !22)
!761 = !DILocation(line: 0, scope: !757, inlinedAt: !762)
!762 = distinct !DILocation(line: 517, scope: !735)
!763 = !DILocation(line: 297, scope: !757, inlinedAt: !762)
!764 = !DILocation(line: 0, scope: !475, inlinedAt: !765)
!765 = distinct !DILocation(line: 297, scope: !757, inlinedAt: !762)
!766 = !DILocation(line: 0, scope: !485, inlinedAt: !767)
!767 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !765)
!768 = !DILocation(line: 104, scope: !485, inlinedAt: !767)
!769 = !DILocation(line: 106, scope: !485, inlinedAt: !767)
!770 = !DILocation(line: 517, scope: !735)
!771 = !DILocation(line: 298, scope: !772, inlinedAt: !762)
!772 = distinct !DILexicalBlock(scope: !773, file: !6, line: 297)
!773 = distinct !DILexicalBlock(scope: !757, file: !6, line: 297)
!774 = !DILocation(line: 299, scope: !772, inlinedAt: !762)
!775 = !DILocation(line: 519, scope: !735)
!776 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z", scope: !2, file: !6, line: 531, type: !777, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !787)
!777 = !DISubroutineType(types: !778)
!778 = !{!779, !22, !22}
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !780, identifier: ".?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@")
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !779, file: !6, line: 523, baseType: !738, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !779, file: !6, line: 524, baseType: !738, size: 32, offset: 32)
!783 = !DISubprogram(name: "bucket_pair", scope: !779, file: !6, line: 526, type: !784, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !785)
!785 = !{null, !786, !738, !738}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!787 = !{!788, !789, !790, !791, !792, !795, !798, !799, !801}
!788 = !DILocalVariable(name: "addr_to", arg: 2, scope: !776, file: !6, line: 531, type: !22)
!789 = !DILocalVariable(name: "addr_from", arg: 1, scope: !776, file: !6, line: 531, type: !22)
!790 = !DILocalVariable(name: "hash_from", scope: !776, file: !6, line: 533, type: !22)
!791 = !DILocalVariable(name: "hash_to", scope: !776, file: !6, line: 534, type: !22)
!792 = !DILocalVariable(name: "first", scope: !793, file: !6, line: 542, type: !738)
!793 = distinct !DILexicalBlock(scope: !794, file: !6, line: 541)
!794 = distinct !DILexicalBlock(scope: !776, file: !6, line: 541)
!795 = !DILocalVariable(name: "first", scope: !796, file: !6, line: 546, type: !738)
!796 = distinct !DILexicalBlock(scope: !797, file: !6, line: 545)
!797 = distinct !DILexicalBlock(scope: !794, file: !6, line: 545)
!798 = !DILocalVariable(name: "second", scope: !796, file: !6, line: 547, type: !738)
!799 = !DILocalVariable(name: "first", scope: !800, file: !6, line: 552, type: !738)
!800 = distinct !DILexicalBlock(scope: !797, file: !6, line: 551)
!801 = !DILocalVariable(name: "second", scope: !800, file: !6, line: 553, type: !738)
!802 = !DILocation(line: 0, scope: !776)
!803 = !DILocation(line: 0, scope: !745, inlinedAt: !804)
!804 = distinct !DILocation(line: 533, scope: !776)
!805 = !DILocation(line: 505, scope: !753, inlinedAt: !804)
!806 = !DILocation(line: 0, scope: !745, inlinedAt: !807)
!807 = distinct !DILocation(line: 534, scope: !776)
!808 = !DILocation(line: 505, scope: !753, inlinedAt: !807)
!809 = !DILocation(line: 541, scope: !776)
!810 = !DILocation(line: 542, scope: !793)
!811 = !DILocation(line: 0, scope: !793)
!812 = !DILocation(line: 0, scope: !757, inlinedAt: !813)
!813 = distinct !DILocation(line: 543, scope: !793)
!814 = !DILocation(line: 297, scope: !757, inlinedAt: !813)
!815 = !DILocation(line: 0, scope: !475, inlinedAt: !816)
!816 = distinct !DILocation(line: 297, scope: !757, inlinedAt: !813)
!817 = !DILocation(line: 0, scope: !485, inlinedAt: !818)
!818 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !816)
!819 = !DILocation(line: 104, scope: !485, inlinedAt: !818)
!820 = !DILocation(line: 106, scope: !485, inlinedAt: !818)
!821 = !DILocation(line: 543, scope: !793)
!822 = !DILocation(line: 298, scope: !772, inlinedAt: !813)
!823 = !DILocation(line: 299, scope: !772, inlinedAt: !813)
!824 = !DILocation(line: 545, scope: !794)
!825 = !DILocation(line: 546, scope: !796)
!826 = !DILocation(line: 0, scope: !796)
!827 = !DILocation(line: 547, scope: !796)
!828 = !DILocation(line: 0, scope: !757, inlinedAt: !829)
!829 = distinct !DILocation(line: 548, scope: !796)
!830 = !DILocation(line: 297, scope: !757, inlinedAt: !829)
!831 = !DILocation(line: 0, scope: !475, inlinedAt: !832)
!832 = distinct !DILocation(line: 297, scope: !757, inlinedAt: !829)
!833 = !DILocation(line: 0, scope: !485, inlinedAt: !834)
!834 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !832)
!835 = !DILocation(line: 104, scope: !485, inlinedAt: !834)
!836 = !DILocation(line: 106, scope: !485, inlinedAt: !834)
!837 = !DILocation(line: 548, scope: !796)
!838 = !DILocation(line: 298, scope: !772, inlinedAt: !829)
!839 = !DILocation(line: 299, scope: !772, inlinedAt: !829)
!840 = !DILocation(line: 0, scope: !757, inlinedAt: !841)
!841 = distinct !DILocation(line: 549, scope: !796)
!842 = !DILocation(line: 297, scope: !757, inlinedAt: !841)
!843 = !DILocation(line: 0, scope: !475, inlinedAt: !844)
!844 = distinct !DILocation(line: 297, scope: !757, inlinedAt: !841)
!845 = !DILocation(line: 0, scope: !485, inlinedAt: !846)
!846 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !844)
!847 = !DILocation(line: 104, scope: !485, inlinedAt: !846)
!848 = !DILocation(line: 106, scope: !485, inlinedAt: !846)
!849 = !DILocation(line: 549, scope: !796)
!850 = !DILocation(line: 298, scope: !772, inlinedAt: !841)
!851 = !DILocation(line: 299, scope: !772, inlinedAt: !841)
!852 = !DILocation(line: 552, scope: !800)
!853 = !DILocation(line: 0, scope: !800)
!854 = !DILocation(line: 553, scope: !800)
!855 = !DILocation(line: 0, scope: !757, inlinedAt: !856)
!856 = distinct !DILocation(line: 554, scope: !800)
!857 = !DILocation(line: 297, scope: !757, inlinedAt: !856)
!858 = !DILocation(line: 0, scope: !475, inlinedAt: !859)
!859 = distinct !DILocation(line: 297, scope: !757, inlinedAt: !856)
!860 = !DILocation(line: 0, scope: !485, inlinedAt: !861)
!861 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !859)
!862 = !DILocation(line: 104, scope: !485, inlinedAt: !861)
!863 = !DILocation(line: 106, scope: !485, inlinedAt: !861)
!864 = !DILocation(line: 554, scope: !800)
!865 = !DILocation(line: 298, scope: !772, inlinedAt: !856)
!866 = !DILocation(line: 299, scope: !772, inlinedAt: !856)
!867 = !DILocation(line: 0, scope: !757, inlinedAt: !868)
!868 = distinct !DILocation(line: 555, scope: !800)
!869 = !DILocation(line: 297, scope: !757, inlinedAt: !868)
!870 = !DILocation(line: 0, scope: !475, inlinedAt: !871)
!871 = distinct !DILocation(line: 297, scope: !757, inlinedAt: !868)
!872 = !DILocation(line: 0, scope: !485, inlinedAt: !873)
!873 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !871)
!874 = !DILocation(line: 104, scope: !485, inlinedAt: !873)
!875 = !DILocation(line: 106, scope: !485, inlinedAt: !873)
!876 = !DILocation(line: 555, scope: !800)
!877 = !DILocation(line: 298, scope: !772, inlinedAt: !868)
!878 = !DILocation(line: 299, scope: !772, inlinedAt: !868)
!879 = !DILocation(line: 0, scope: !794)
!880 = !{!399, !399, i64 0}
!881 = !DILocation(line: 558, scope: !776)
!882 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z", scope: !2, file: !6, line: 560, type: !883, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !886)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885}
!885 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !779, size: 32)
!886 = !{!887}
!887 = !DILocalVariable(name: "buckets", arg: 1, scope: !882, file: !6, line: 560, type: !885)
!888 = !DILocation(line: 0, scope: !882)
!889 = !DILocation(line: 565, scope: !882)
!890 = !{!891, !399, i64 0}
!891 = !{!"?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@", !399, i64 0, !399, i64 4}
!892 = !{!891, !399, i64 4}
!893 = !DILocalVariable(name: "this", arg: 1, scope: !894, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!894 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@word_lock@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !237, file: !6, line: 304, type: !241, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !247, retainedNodes: !895)
!895 = !{!893, !896, !897, !898}
!896 = !DILocalVariable(name: "val", scope: !894, file: !6, line: 307, type: !22)
!897 = !DILocalVariable(name: "no_thread_queuing", scope: !894, file: !6, line: 310, type: !64)
!898 = !DILocalVariable(name: "some_queued", scope: !894, file: !6, line: 312, type: !64)
!899 = !DILocation(line: 0, scope: !894, inlinedAt: !900)
!900 = distinct !DILocation(line: 566, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !6, line: 565)
!902 = distinct !DILexicalBlock(scope: !882, file: !6, line: 565)
!903 = !DILocation(line: 307, scope: !894, inlinedAt: !900)
!904 = !DILocalVariable(name: "val", arg: 2, scope: !905, file: !6, line: 130, type: !22)
!905 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "?atomic_fetch_and_release@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAIPAII@Z", scope: !476, file: !6, line: 130, type: !706, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !906)
!906 = !{!904, !907}
!907 = !DILocalVariable(name: "addr", arg: 1, scope: !905, file: !6, line: 130, type: !300)
!908 = !DILocation(line: 0, scope: !905, inlinedAt: !909)
!909 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !900)
!910 = !DILocation(line: 131, scope: !905, inlinedAt: !909)
!911 = !DILocation(line: 310, scope: !894, inlinedAt: !900)
!912 = !DILocation(line: 313, scope: !894, inlinedAt: !900)
!913 = !DILocation(line: 566, scope: !901)
!914 = !DILocation(line: 314, scope: !915, inlinedAt: !900)
!915 = distinct !DILexicalBlock(scope: !916, file: !6, line: 313)
!916 = distinct !DILexicalBlock(scope: !894, file: !6, line: 313)
!917 = !DILocation(line: 315, scope: !915, inlinedAt: !900)
!918 = !DILocation(line: 567, scope: !902)
!919 = !DILocation(line: 0, scope: !894, inlinedAt: !920)
!920 = distinct !DILocation(line: 568, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !6, line: 567)
!922 = distinct !DILexicalBlock(scope: !902, file: !6, line: 567)
!923 = !DILocation(line: 307, scope: !894, inlinedAt: !920)
!924 = !DILocation(line: 0, scope: !905, inlinedAt: !925)
!925 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !920)
!926 = !DILocation(line: 131, scope: !905, inlinedAt: !925)
!927 = !DILocation(line: 310, scope: !894, inlinedAt: !920)
!928 = !DILocation(line: 313, scope: !894, inlinedAt: !920)
!929 = !DILocation(line: 568, scope: !921)
!930 = !DILocation(line: 314, scope: !915, inlinedAt: !920)
!931 = !DILocation(line: 315, scope: !915, inlinedAt: !920)
!932 = !DILocation(line: 569, scope: !921)
!933 = !DILocation(line: 0, scope: !894, inlinedAt: !934)
!934 = distinct !DILocation(line: 569, scope: !921)
!935 = !DILocation(line: 307, scope: !894, inlinedAt: !934)
!936 = !DILocation(line: 0, scope: !905, inlinedAt: !937)
!937 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !934)
!938 = !DILocation(line: 131, scope: !905, inlinedAt: !937)
!939 = !DILocation(line: 310, scope: !894, inlinedAt: !934)
!940 = !DILocation(line: 313, scope: !894, inlinedAt: !934)
!941 = !DILocation(line: 314, scope: !915, inlinedAt: !934)
!942 = !DILocation(line: 315, scope: !915, inlinedAt: !934)
!943 = !DILocation(line: 0, scope: !894, inlinedAt: !944)
!944 = distinct !DILocation(line: 571, scope: !945)
!945 = distinct !DILexicalBlock(scope: !922, file: !6, line: 570)
!946 = !DILocation(line: 307, scope: !894, inlinedAt: !944)
!947 = !DILocation(line: 0, scope: !905, inlinedAt: !948)
!948 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !944)
!949 = !DILocation(line: 131, scope: !905, inlinedAt: !948)
!950 = !DILocation(line: 310, scope: !894, inlinedAt: !944)
!951 = !DILocation(line: 313, scope: !894, inlinedAt: !944)
!952 = !DILocation(line: 571, scope: !945)
!953 = !DILocation(line: 314, scope: !915, inlinedAt: !944)
!954 = !DILocation(line: 315, scope: !915, inlinedAt: !944)
!955 = !DILocation(line: 572, scope: !945)
!956 = !DILocation(line: 0, scope: !894, inlinedAt: !957)
!957 = distinct !DILocation(line: 572, scope: !945)
!958 = !DILocation(line: 307, scope: !894, inlinedAt: !957)
!959 = !DILocation(line: 0, scope: !905, inlinedAt: !960)
!960 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !957)
!961 = !DILocation(line: 131, scope: !905, inlinedAt: !960)
!962 = !DILocation(line: 310, scope: !894, inlinedAt: !957)
!963 = !DILocation(line: 313, scope: !894, inlinedAt: !957)
!964 = !DILocation(line: 314, scope: !915, inlinedAt: !957)
!965 = !DILocation(line: 315, scope: !915, inlinedAt: !957)
!966 = !DILocation(line: 574, scope: !882)
!967 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 583, type: !273, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !968)
!968 = !{!969, !970}
!969 = !DILocalVariable(name: "action", arg: 2, scope: !967, file: !6, line: 583, type: !275)
!970 = !DILocalVariable(name: "control", arg: 1, scope: !967, file: !6, line: 583, type: !43)
!971 = !DILocation(line: 0, scope: !967)
!972 = !DILocation(line: 584, scope: !967)
!973 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !974)
!974 = !{!975}
!975 = !DILocalVariable(name: "control", arg: 1, scope: !973, file: !6, line: 586, type: !43)
!976 = !DILocation(line: 0, scope: !973)
!977 = !DILocation(line: 586, scope: !973)
!978 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 587, type: !287, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !979)
!979 = !{!980, !981, !982}
!980 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !978, file: !6, line: 587, type: !64)
!981 = !DILocalVariable(name: "unparked", arg: 2, scope: !978, file: !6, line: 587, type: !29)
!982 = !DILocalVariable(name: "control", arg: 1, scope: !978, file: !6, line: 587, type: !43)
!983 = !DILocation(line: 0, scope: !978)
!984 = !DILocation(line: 588, scope: !978)
!985 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 590, type: !291, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !986)
!986 = !{!987, !988, !989, !990}
!987 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !985, file: !6, line: 590, type: !64)
!988 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !985, file: !6, line: 590, type: !64)
!989 = !DILocalVariable(name: "action", arg: 2, scope: !985, file: !6, line: 590, type: !293)
!990 = !DILocalVariable(name: "control", arg: 1, scope: !985, file: !6, line: 590, type: !43)
!991 = !DILocation(line: 0, scope: !985)
!992 = !DILocation(line: 590, scope: !985)
!993 = distinct !DISubprogram(name: "park", linkageName: "?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z", scope: !2, file: !6, line: 605, type: !994, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !997)
!994 = !DISubroutineType(types: !995)
!995 = !{!22, !22, !996}
!996 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !269, size: 32)
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DILocalVariable(name: "control", arg: 2, scope: !993, file: !6, line: 605, type: !996)
!999 = !DILocalVariable(name: "addr", arg: 1, scope: !993, file: !6, line: 605, type: !22)
!1000 = !DILocalVariable(name: "queue_data", scope: !993, file: !6, line: 606, type: !250)
!1001 = !DILocalVariable(name: "bucket", scope: !993, file: !6, line: 608, type: !738)
!1002 = !DILocalVariable(name: "action", scope: !993, file: !6, line: 610, type: !276)
!1003 = !DILocation(line: 0, scope: !993)
!1004 = !DILocation(line: 606, scope: !993)
!1005 = !DILocalVariable(name: "this", arg: 1, scope: !1006, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1006 = distinct !DISubprogram(name: "queue_data", linkageName: "??0queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !250, file: !6, line: 455, type: !257, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !256, retainedNodes: !1007)
!1007 = !{!1005}
!1008 = !DILocation(line: 0, scope: !1006, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 606, scope: !993)
!1010 = !DILocation(line: 0, scope: !523, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 455, scope: !1006, inlinedAt: !1009)
!1012 = !DILocation(line: 97, scope: !523, inlinedAt: !1011)
!1013 = !DILocation(line: 98, scope: !535, inlinedAt: !1011)
!1014 = !DILocation(line: 99, scope: !535, inlinedAt: !1011)
!1015 = !DILocation(line: 455, scope: !1006, inlinedAt: !1009)
!1016 = !{!1017, !469, i64 56}
!1017 = !{!"?AUqueue_data@Synchronization@Internal@Runtime@Halide@@", !530, i64 0, !469, i64 56, !399, i64 60, !469, i64 64}
!1018 = !{!1017, !399, i64 60}
!1019 = !{!1017, !469, i64 64}
!1020 = !DILocation(line: 608, scope: !993)
!1021 = !DILocation(line: 610, scope: !993)
!1022 = !DILocalVariable(name: "this", arg: 1, scope: !1023, type: !1025, flags: DIFlagArtificial | DIFlagObjectPointer)
!1023 = distinct !DISubprogram(name: "validate_action", linkageName: "??0validate_action@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !276, file: !6, line: 580, type: !281, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !280, retainedNodes: !1024)
!1024 = !{!1022}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!1026 = !DILocation(line: 0, scope: !1023, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 610, scope: !993)
!1028 = !DILocation(line: 580, scope: !1023, inlinedAt: !1027)
!1029 = !{!1030, !533, i64 0}
!1030 = !{!"?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@", !533, i64 0, !469, i64 4}
!1031 = !{!1030, !469, i64 4}
!1032 = !DILocation(line: 611, scope: !993)
!1033 = !{!1034, !399, i64 0}
!1034 = !{!"?AUparking_control@Synchronization@Internal@Runtime@Halide@@", !399, i64 0, !399, i64 4, !399, i64 8, !399, i64 12}
!1035 = !DILocation(line: 0, scope: !894, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 612, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !6, line: 611)
!1038 = distinct !DILexicalBlock(scope: !993, file: !6, line: 611)
!1039 = !DILocation(line: 307, scope: !894, inlinedAt: !1036)
!1040 = !DILocation(line: 0, scope: !905, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !1036)
!1042 = !DILocation(line: 131, scope: !905, inlinedAt: !1041)
!1043 = !DILocation(line: 310, scope: !894, inlinedAt: !1036)
!1044 = !DILocation(line: 313, scope: !894, inlinedAt: !1036)
!1045 = !DILocation(line: 612, scope: !1037)
!1046 = !DILocation(line: 314, scope: !915, inlinedAt: !1036)
!1047 = !DILocation(line: 315, scope: !915, inlinedAt: !1036)
!1048 = !DILocation(line: 613, scope: !1037)
!1049 = !DILocation(line: 616, scope: !993)
!1050 = !DILocation(line: 617, scope: !993)
!1051 = !DILocation(line: 0, scope: !543, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 618, scope: !993)
!1053 = !DILocation(line: 108, scope: !543, inlinedAt: !1052)
!1054 = !DILocation(line: 619, scope: !993)
!1055 = !{!1056, !399, i64 4}
!1056 = !{!"?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@", !1057, i64 0, !399, i64 4, !399, i64 8}
!1057 = !{!"?AVword_lock@Synchronization@Internal@Runtime@Halide@@", !469, i64 0}
!1058 = !DILocation(line: 0, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !993, file: !6, line: 619)
!1060 = !DILocation(line: 624, scope: !993)
!1061 = !{!1056, !399, i64 8}
!1062 = !DILocation(line: 0, scope: !894, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 625, scope: !993)
!1064 = !DILocation(line: 307, scope: !894, inlinedAt: !1063)
!1065 = !DILocation(line: 0, scope: !905, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !1063)
!1067 = !DILocation(line: 131, scope: !905, inlinedAt: !1066)
!1068 = !DILocation(line: 310, scope: !894, inlinedAt: !1063)
!1069 = !DILocation(line: 313, scope: !894, inlinedAt: !1063)
!1070 = !DILocation(line: 625, scope: !993)
!1071 = !DILocation(line: 314, scope: !915, inlinedAt: !1063)
!1072 = !DILocation(line: 315, scope: !915, inlinedAt: !1063)
!1073 = !DILocation(line: 627, scope: !993)
!1074 = !{!1034, !399, i64 4}
!1075 = !DILocation(line: 0, scope: !572, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 629, scope: !993)
!1077 = !DILocation(line: 112, scope: !572, inlinedAt: !1076)
!1078 = !DILocation(line: 113, scope: !572, inlinedAt: !1076)
!1079 = !DILocation(line: 114, scope: !582, inlinedAt: !1076)
!1080 = distinct !{!1080, !1078, !1081, !585}
!1081 = !DILocation(line: 115, scope: !572, inlinedAt: !1076)
!1082 = !DILocation(line: 116, scope: !572, inlinedAt: !1076)
!1083 = !DILocation(line: 631, scope: !993)
!1084 = !DILocation(line: 634, scope: !993)
!1085 = !DILocalVariable(name: "this", arg: 1, scope: !1086, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1086 = distinct !DISubprogram(name: "~queue_data", linkageName: "??1queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !250, file: !6, line: 457, type: !257, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !260, retainedNodes: !1087)
!1087 = !{!1085}
!1088 = !DILocation(line: 0, scope: !1086, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 634, scope: !993)
!1090 = !DILocation(line: 0, scope: !595, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 457, scope: !1092, inlinedAt: !1089)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !6, line: 457)
!1093 = !DILocation(line: 104, scope: !601, inlinedAt: !1091)
!1094 = distinct !DISubprogram(name: "unpark_one", linkageName: "?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z", scope: !2, file: !6, line: 636, type: !994, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1104, !1107, !1108, !1111}
!1096 = !DILocalVariable(name: "control", arg: 2, scope: !1094, file: !6, line: 636, type: !996)
!1097 = !DILocalVariable(name: "addr", arg: 1, scope: !1094, file: !6, line: 636, type: !22)
!1098 = !DILocalVariable(name: "bucket", scope: !1094, file: !6, line: 637, type: !738)
!1099 = !DILocalVariable(name: "data_location", scope: !1094, file: !6, line: 639, type: !264)
!1100 = !DILocalVariable(name: "prev", scope: !1094, file: !6, line: 640, type: !249)
!1101 = !DILocalVariable(name: "data", scope: !1094, file: !6, line: 641, type: !249)
!1102 = !DILocalVariable(name: "cur_addr", scope: !1103, file: !6, line: 643, type: !22)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !6, line: 642)
!1104 = !DILocalVariable(name: "next", scope: !1105, file: !6, line: 646, type: !249)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !6, line: 645)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !6, line: 645)
!1107 = !DILocalVariable(name: "more_waiters", scope: !1105, file: !6, line: 649, type: !64)
!1108 = !DILocalVariable(name: "data2", scope: !1109, file: !6, line: 654, type: !249)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !6, line: 653)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !6, line: 651)
!1111 = !DILocalVariable(name: "cur_addr2", scope: !1112, file: !6, line: 656, type: !22)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !6, line: 655)
!1113 = !DILocation(line: 0, scope: !1094)
!1114 = !DILocation(line: 637, scope: !1094)
!1115 = !DILocation(line: 639, scope: !1094)
!1116 = !DILocation(line: 641, scope: !1094)
!1117 = !DILocation(line: 642, scope: !1094)
!1118 = !DILocation(line: 640, scope: !1094)
!1119 = !DILocation(line: 644, scope: !1103)
!1120 = !DILocation(line: 0, scope: !1103)
!1121 = !DILocation(line: 645, scope: !1103)
!1122 = !DILocation(line: 0, scope: !1106)
!1123 = !DILocation(line: 0, scope: !1105)
!1124 = !DILocation(line: 647, scope: !1105)
!1125 = !DILocation(line: 651, scope: !1105)
!1126 = !DILocation(line: 0, scope: !1109)
!1127 = !DILocation(line: 655, scope: !1109)
!1128 = !DILocation(line: 652, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1110, file: !6, line: 651)
!1130 = !DILocation(line: 653, scope: !1129)
!1131 = !DILocation(line: 657, scope: !1112)
!1132 = !DILocation(line: 0, scope: !1112)
!1133 = !DILocation(line: 658, scope: !1112)
!1134 = !DILocation(line: 659, scope: !1112)
!1135 = distinct !{!1135, !1127, !1136, !585}
!1136 = !DILocation(line: 660, scope: !1109)
!1137 = !DILocation(line: 663, scope: !1105)
!1138 = !DILocation(line: 649, scope: !1105)
!1139 = !{!1034, !399, i64 8}
!1140 = !DILocation(line: 0, scope: !715, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 665, scope: !1105)
!1142 = !DILocation(line: 120, scope: !715, inlinedAt: !1141)
!1143 = !DILocation(line: 0, scope: !894, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 666, scope: !1105)
!1145 = !DILocation(line: 0, scope: !905, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !1144)
!1147 = !DILocation(line: 131, scope: !905, inlinedAt: !1146)
!1148 = !DILocation(line: 310, scope: !894, inlinedAt: !1144)
!1149 = !DILocation(line: 313, scope: !894, inlinedAt: !1144)
!1150 = !DILocation(line: 314, scope: !915, inlinedAt: !1144)
!1151 = !DILocation(line: 315, scope: !915, inlinedAt: !1144)
!1152 = !DILocation(line: 0, scope: !721, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 667, scope: !1105)
!1154 = !DILocation(line: 124, scope: !721, inlinedAt: !1153)
!1155 = !DILocation(line: 125, scope: !721, inlinedAt: !1153)
!1156 = !DILocation(line: 0, scope: !728, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 668, scope: !1105)
!1158 = !DILocation(line: 129, scope: !728, inlinedAt: !1157)
!1159 = !DILocation(line: 671, scope: !1105)
!1160 = distinct !{!1160, !1117, !1161, !585}
!1161 = !DILocation(line: 677, scope: !1094)
!1162 = !DILocation(line: 679, scope: !1094)
!1163 = !DILocation(line: 0, scope: !894, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 681, scope: !1094)
!1165 = !DILocation(line: 0, scope: !905, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !1164)
!1167 = !DILocation(line: 131, scope: !905, inlinedAt: !1166)
!1168 = !DILocation(line: 310, scope: !894, inlinedAt: !1164)
!1169 = !DILocation(line: 313, scope: !894, inlinedAt: !1164)
!1170 = !DILocation(line: 314, scope: !915, inlinedAt: !1164)
!1171 = !DILocation(line: 315, scope: !915, inlinedAt: !1164)
!1172 = !DILocation(line: 685, scope: !1094)
!1173 = distinct !DISubprogram(name: "unpark_all", linkageName: "?unpark_all@Synchronization@Internal@Runtime@Halide@@YAIII@Z", scope: !2, file: !6, line: 687, type: !1174, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!22, !22, !22}
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1185, !1189, !1190, !1191, !1193, !1194, !1199, !1201, !1203}
!1177 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1173, file: !6, line: 687, type: !22)
!1178 = !DILocalVariable(name: "addr", arg: 1, scope: !1173, file: !6, line: 687, type: !22)
!1179 = !DILocalVariable(name: "bucket", scope: !1173, file: !6, line: 688, type: !738)
!1180 = !DILocalVariable(name: "data_location", scope: !1173, file: !6, line: 690, type: !264)
!1181 = !DILocalVariable(name: "prev", scope: !1173, file: !6, line: 691, type: !249)
!1182 = !DILocalVariable(name: "data", scope: !1173, file: !6, line: 692, type: !249)
!1183 = !DILocalVariable(name: "waiters", scope: !1173, file: !6, line: 693, type: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !25)
!1185 = !DILocalVariable(name: "temp_list_storage", scope: !1173, file: !6, line: 694, type: !1186)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 512, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 16)
!1189 = !DILocalVariable(name: "temp_list", scope: !1173, file: !6, line: 695, type: !264)
!1190 = !DILocalVariable(name: "max_waiters", scope: !1173, file: !6, line: 696, type: !1184)
!1191 = !DILocalVariable(name: "cur_addr", scope: !1192, file: !6, line: 699, type: !22)
!1192 = distinct !DILexicalBlock(scope: !1173, file: !6, line: 698)
!1193 = !DILocalVariable(name: "next", scope: !1192, file: !6, line: 702, type: !249)
!1194 = !DILocalVariable(name: "temp", scope: !1195, file: !6, line: 711, type: !264)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !6, line: 710)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !6, line: 710)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !6, line: 703)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !6, line: 703)
!1199 = !DILocalVariable(name: "i", scope: !1200, file: !6, line: 713, type: !1184)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !6, line: 713)
!1201 = !DILocalVariable(name: "i", scope: !1202, file: !6, line: 737, type: !1184)
!1202 = distinct !DILexicalBlock(scope: !1173, file: !6, line: 737)
!1203 = !DILocalVariable(name: "i", scope: !1204, file: !6, line: 742, type: !1184)
!1204 = distinct !DILexicalBlock(scope: !1173, file: !6, line: 742)
!1205 = !DILocation(line: 0, scope: !1173)
!1206 = !DILocation(line: 688, scope: !1173)
!1207 = !DILocation(line: 690, scope: !1173)
!1208 = !DILocation(line: 692, scope: !1173)
!1209 = !DILocation(line: 694, scope: !1173)
!1210 = !DILocation(line: 695, scope: !1173)
!1211 = !DILocation(line: 698, scope: !1173)
!1212 = !DILocation(line: 700, scope: !1192)
!1213 = !DILocation(line: 702, scope: !1192)
!1214 = !DILocation(line: 0, scope: !1192)
!1215 = !DILocation(line: 703, scope: !1192)
!1216 = !DILocation(line: 0, scope: !1198)
!1217 = !DILocation(line: 706, scope: !1197)
!1218 = !DILocation(line: 707, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !6, line: 706)
!1220 = distinct !DILexicalBlock(scope: !1197, file: !6, line: 706)
!1221 = !DILocation(line: 708, scope: !1219)
!1222 = !DILocation(line: 710, scope: !1197)
!1223 = !DILocation(line: 0, scope: !1195)
!1224 = !DILocation(line: 712, scope: !1195)
!1225 = !DILocation(line: 0, scope: !1200)
!1226 = !DILocation(line: 713, scope: !1200)
!1227 = !DILocation(line: 714, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !6, line: 713)
!1229 = distinct !DILexicalBlock(scope: !1200, file: !6, line: 713)
!1230 = !DILocation(line: 713, scope: !1229)
!1231 = distinct !{!1231, !1232}
!1232 = !{!"llvm.loop.unroll.disable"}
!1233 = !DILocation(line: 716, scope: !1195)
!1234 = !DILocation(line: 717, scope: !1195)
!1235 = distinct !{!1235, !1226, !1236, !585}
!1236 = !DILocation(line: 715, scope: !1200)
!1237 = !DILocation(line: 718, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !6, line: 717)
!1239 = distinct !DILexicalBlock(scope: !1195, file: !6, line: 717)
!1240 = !DILocation(line: 719, scope: !1238)
!1241 = !DILocation(line: 722, scope: !1197)
!1242 = !DILocation(line: 724, scope: !1197)
!1243 = !DILocation(line: 0, scope: !715, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 725, scope: !1197)
!1245 = !DILocation(line: 120, scope: !715, inlinedAt: !1244)
!1246 = !DILocation(line: 728, scope: !1197)
!1247 = distinct !{!1247, !1211, !1248, !585}
!1248 = !DILocation(line: 733, scope: !1173)
!1249 = !DILocation(line: 0, scope: !894, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 735, scope: !1173)
!1251 = !DILocation(line: 307, scope: !894, inlinedAt: !1250)
!1252 = !DILocation(line: 0, scope: !905, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 307, scope: !894, inlinedAt: !1250)
!1254 = !DILocation(line: 131, scope: !905, inlinedAt: !1253)
!1255 = !DILocation(line: 310, scope: !894, inlinedAt: !1250)
!1256 = !DILocation(line: 313, scope: !894, inlinedAt: !1250)
!1257 = !DILocation(line: 735, scope: !1173)
!1258 = !DILocation(line: 314, scope: !915, inlinedAt: !1250)
!1259 = !DILocation(line: 315, scope: !915, inlinedAt: !1250)
!1260 = !DILocation(line: 0, scope: !1202)
!1261 = !DILocation(line: 737, scope: !1202)
!1262 = !DILocation(line: 0, scope: !1204)
!1263 = !DILocation(line: 742, scope: !1204)
!1264 = !DILocation(line: 738, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !6, line: 737)
!1266 = distinct !DILexicalBlock(scope: !1202, file: !6, line: 737)
!1267 = !DILocation(line: 0, scope: !721, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 738, scope: !1265)
!1269 = !DILocation(line: 124, scope: !721, inlinedAt: !1268)
!1270 = !DILocation(line: 125, scope: !721, inlinedAt: !1268)
!1271 = !DILocation(line: 737, scope: !1266)
!1272 = distinct !{!1272, !1261, !1273, !585}
!1273 = !DILocation(line: 739, scope: !1202)
!1274 = !DILocation(line: 746, scope: !1173)
!1275 = !DILocation(line: 743, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !6, line: 742)
!1277 = distinct !DILexicalBlock(scope: !1204, file: !6, line: 742)
!1278 = !DILocation(line: 0, scope: !728, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 743, scope: !1276)
!1280 = !DILocation(line: 129, scope: !728, inlinedAt: !1279)
!1281 = !DILocation(line: 742, scope: !1277)
!1282 = distinct !{!1282, !1263, !1283, !585}
!1283 = !DILocation(line: 744, scope: !1204)
!1284 = !DILocation(line: 747, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !6, line: 746)
!1286 = distinct !DILexicalBlock(scope: !1173, file: !6, line: 746)
!1287 = !DILocation(line: 748, scope: !1285)
!1288 = !DILocation(line: 751, scope: !1173)
!1289 = !DILocation(line: 750, scope: !1173)
!1290 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z", scope: !2, file: !6, line: 753, type: !1291, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1293)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!29, !22, !22, !996, !22}
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1308}
!1294 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1290, file: !6, line: 753, type: !22)
!1295 = !DILocalVariable(name: "control", arg: 3, scope: !1290, file: !6, line: 753, type: !996)
!1296 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1290, file: !6, line: 753, type: !22)
!1297 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1290, file: !6, line: 753, type: !22)
!1298 = !DILocalVariable(name: "buckets", scope: !1290, file: !6, line: 754, type: !779)
!1299 = !DILocalVariable(name: "action", scope: !1290, file: !6, line: 756, type: !276)
!1300 = !DILocalVariable(name: "data_location", scope: !1290, file: !6, line: 762, type: !264)
!1301 = !DILocalVariable(name: "prev", scope: !1290, file: !6, line: 763, type: !249)
!1302 = !DILocalVariable(name: "data", scope: !1290, file: !6, line: 764, type: !249)
!1303 = !DILocalVariable(name: "requeue", scope: !1290, file: !6, line: 765, type: !249)
!1304 = !DILocalVariable(name: "requeue_tail", scope: !1290, file: !6, line: 766, type: !249)
!1305 = !DILocalVariable(name: "wakeup", scope: !1290, file: !6, line: 767, type: !249)
!1306 = !DILocalVariable(name: "cur_addr", scope: !1307, file: !6, line: 770, type: !22)
!1307 = distinct !DILexicalBlock(scope: !1290, file: !6, line: 769)
!1308 = !DILocalVariable(name: "next", scope: !1307, file: !6, line: 773, type: !249)
!1309 = !DILocation(line: 0, scope: !1290)
!1310 = !DILocation(line: 754, scope: !1290)
!1311 = !DILocation(line: 756, scope: !1290)
!1312 = !DILocation(line: 0, scope: !1023, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 756, scope: !1290)
!1314 = !DILocation(line: 580, scope: !1023, inlinedAt: !1313)
!1315 = !DILocation(line: 757, scope: !1290)
!1316 = !DILocation(line: 758, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !6, line: 757)
!1318 = distinct !DILexicalBlock(scope: !1290, file: !6, line: 757)
!1319 = !DILocation(line: 759, scope: !1317)
!1320 = !DILocation(line: 762, scope: !1290)
!1321 = !DILocation(line: 764, scope: !1290)
!1322 = !DILocation(line: 769, scope: !1290)
!1323 = !DILocation(line: 771, scope: !1307)
!1324 = !DILocation(line: 773, scope: !1307)
!1325 = !DILocation(line: 0, scope: !1307)
!1326 = !DILocation(line: 774, scope: !1307)
!1327 = !DILocation(line: 775, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !6, line: 774)
!1329 = distinct !DILexicalBlock(scope: !1307, file: !6, line: 774)
!1330 = !DILocation(line: 777, scope: !1328)
!1331 = !DILocation(line: 778, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !6, line: 777)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !6, line: 777)
!1334 = !DILocation(line: 779, scope: !1332)
!1335 = !DILocation(line: 781, scope: !1328)
!1336 = !DILocation(line: 784, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !6, line: 783)
!1338 = distinct !DILexicalBlock(scope: !1328, file: !6, line: 781)
!1339 = !DILocation(line: 787, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !6, line: 786)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !6, line: 784)
!1342 = !DILocation(line: 788, scope: !1340)
!1343 = !DILocalVariable(name: "val", arg: 2, scope: !1344, file: !6, line: 149, type: !300)
!1344 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "?atomic_store_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPAI0@Z", scope: !476, file: !6, line: 149, type: !1345, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !300, !300}
!1347 = !{!1343, !1348}
!1348 = !DILocalVariable(name: "addr", arg: 1, scope: !1344, file: !6, line: 149, type: !300)
!1349 = !DILocation(line: 0, scope: !1344, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 791, scope: !1337)
!1351 = !DILocation(line: 150, scope: !1344, inlinedAt: !1350)
!1352 = !DILocation(line: 792, scope: !1337)
!1353 = !DILocation(line: 765, scope: !1290)
!1354 = !DILocation(line: 766, scope: !1290)
!1355 = distinct !{!1355, !1322, !1356, !585}
!1356 = !DILocation(line: 800, scope: !1290)
!1357 = !DILocation(line: 802, scope: !1290)
!1358 = !DILocation(line: 803, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !6, line: 802)
!1360 = distinct !DILexicalBlock(scope: !1290, file: !6, line: 802)
!1361 = !DILocation(line: 804, scope: !1359)
!1362 = !DILocation(line: 807, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !6, line: 806)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !6, line: 804)
!1365 = !DILocation(line: 808, scope: !1363)
!1366 = !DILocation(line: 0, scope: !1364)
!1367 = !DILocation(line: 809, scope: !1359)
!1368 = !DILocation(line: 810, scope: !1359)
!1369 = !DILocation(line: 812, scope: !1290)
!1370 = !{!1034, !399, i64 12}
!1371 = !DILocation(line: 814, scope: !1290)
!1372 = !DILocation(line: 815, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !6, line: 814)
!1374 = distinct !DILexicalBlock(scope: !1290, file: !6, line: 814)
!1375 = !DILocation(line: 0, scope: !715, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 816, scope: !1373)
!1377 = !DILocation(line: 120, scope: !715, inlinedAt: !1376)
!1378 = !DILocation(line: 817, scope: !1373)
!1379 = !DILocation(line: 0, scope: !721, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 818, scope: !1373)
!1381 = !DILocation(line: 124, scope: !721, inlinedAt: !1380)
!1382 = !DILocation(line: 125, scope: !721, inlinedAt: !1380)
!1383 = !DILocation(line: 0, scope: !728, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 819, scope: !1373)
!1385 = !DILocation(line: 129, scope: !728, inlinedAt: !1384)
!1386 = !DILocation(line: 820, scope: !1373)
!1387 = !DILocation(line: 821, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1374, file: !6, line: 820)
!1389 = !DILocation(line: 822, scope: !1388)
!1390 = !DILocation(line: 824, scope: !1290)
!1391 = !DILocation(line: 825, scope: !1290)
!1392 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 840, type: !273, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396, !1397}
!1394 = !DILocalVariable(name: "action", arg: 2, scope: !1392, file: !6, line: 840, type: !275)
!1395 = !DILocalVariable(name: "control", arg: 1, scope: !1392, file: !6, line: 840, type: !43)
!1396 = !DILocalVariable(name: "mutex_control", scope: !1392, file: !6, line: 841, type: !265)
!1397 = !DILocalVariable(name: "result", scope: !1392, file: !6, line: 843, type: !22)
!1398 = !DILocation(line: 0, scope: !1392)
!1399 = !DILocation(line: 844, scope: !1392)
!1400 = !{!1401, !399, i64 16}
!1401 = !{!"?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@", !399, i64 16}
!1402 = !DILocation(line: 845, scope: !1392)
!1403 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 849, type: !287, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1403, file: !6, line: 849, type: !64)
!1406 = !DILocalVariable(name: "unparked", arg: 2, scope: !1403, file: !6, line: 849, type: !29)
!1407 = !DILocalVariable(name: "control", arg: 1, scope: !1403, file: !6, line: 849, type: !43)
!1408 = !DILocalVariable(name: "mutex_control", scope: !1403, file: !6, line: 850, type: !265)
!1409 = !DILocalVariable(name: "return_state", scope: !1403, file: !6, line: 853, type: !22)
!1410 = !DILocation(line: 0, scope: !1403)
!1411 = !DILocation(line: 853, scope: !1403)
!1412 = !DILocation(line: 854, scope: !1403)
!1413 = !DILocalVariable(name: "val", arg: 2, scope: !1414, file: !6, line: 154, type: !488)
!1414 = distinct !DISubprogram(name: "atomic_store_release<unsigned int>", linkageName: "??$atomic_store_release@I@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPAI0@Z", scope: !476, file: !6, line: 154, type: !634, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !494, retainedNodes: !1415)
!1415 = !{!1413, !1416}
!1416 = !DILocalVariable(name: "addr", arg: 1, scope: !1414, file: !6, line: 154, type: !488)
!1417 = !DILocation(line: 0, scope: !1414, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 854, scope: !1403)
!1419 = !DILocation(line: 155, scope: !1414, inlinedAt: !1418)
!1420 = !DILocation(line: 156, scope: !1414, inlinedAt: !1418)
!1421 = !DILocation(line: 856, scope: !1403)
!1422 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 968, type: !287, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1422, file: !6, line: 968, type: !64)
!1425 = !DILocalVariable(name: "unparked", arg: 2, scope: !1422, file: !6, line: 968, type: !29)
!1426 = !DILocalVariable(name: "control", arg: 1, scope: !1422, file: !6, line: 968, type: !43)
!1427 = !DILocalVariable(name: "signal_control", scope: !1422, file: !6, line: 969, type: !305)
!1428 = !DILocalVariable(name: "val", scope: !1429, file: !6, line: 972, type: !22)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !6, line: 971)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !6, line: 971)
!1431 = !DILocation(line: 0, scope: !1422)
!1432 = !DILocation(line: 971, scope: !1422)
!1433 = !DILocation(line: 0, scope: !1429)
!1434 = !DILocation(line: 973, scope: !1429)
!1435 = !{!1436, !399, i64 16}
!1436 = !{!"?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@", !399, i64 16, !399, i64 20}
!1437 = !DILocation(line: 0, scope: !1344, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 973, scope: !1429)
!1439 = !DILocation(line: 150, scope: !1344, inlinedAt: !1438)
!1440 = !DILocation(line: 974, scope: !1429)
!1441 = !DILocation(line: 979, scope: !1422)
!1442 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 996, type: !273, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1443)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DILocalVariable(name: "action", arg: 2, scope: !1442, file: !6, line: 996, type: !275)
!1445 = !DILocalVariable(name: "control", arg: 1, scope: !1442, file: !6, line: 996, type: !43)
!1446 = !DILocalVariable(name: "broadcast_control", scope: !1442, file: !6, line: 997, type: !330)
!1447 = !DILocalVariable(name: "val", scope: !1442, file: !6, line: 999, type: !22)
!1448 = !DILocation(line: 0, scope: !1442)
!1449 = !DILocation(line: 1000, scope: !1442)
!1450 = !{!1451, !399, i64 16}
!1451 = !{!"?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@", !399, i64 16, !399, i64 20}
!1452 = !DILocation(line: 1004, scope: !1442)
!1453 = !{!1451, !399, i64 20}
!1454 = !DILocation(line: 0, scope: !1344, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 1009, scope: !1442)
!1456 = !DILocation(line: 150, scope: !1344, inlinedAt: !1455)
!1457 = !DILocalVariable(name: "this", arg: 1, scope: !1458, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1458 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "?make_parked_if_locked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !312, file: !6, line: 938, type: !323, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !322, retainedNodes: !1459)
!1459 = !{!1457, !1460, !1461}
!1460 = !DILocalVariable(name: "val", scope: !1458, file: !6, line: 939, type: !22)
!1461 = !DILocalVariable(name: "desired", scope: !1462, file: !6, line: 946, type: !22)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 941)
!1463 = !DILocation(line: 0, scope: !1458, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 1011, scope: !1442)
!1465 = !DILocation(line: 940, scope: !1458, inlinedAt: !1464)
!1466 = !DILocation(line: 941, scope: !1458, inlinedAt: !1464)
!1467 = !DILocation(line: 942, scope: !1462, inlinedAt: !1464)
!1468 = !DILocation(line: 946, scope: !1462, inlinedAt: !1464)
!1469 = !DILocation(line: 0, scope: !1462, inlinedAt: !1464)
!1470 = !DILocalVariable(name: "desired", arg: 3, scope: !1471, file: !6, line: 122, type: !300)
!1471 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "?atomic_cas_weak_relaxed_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !476, file: !6, line: 122, type: !477, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1472)
!1472 = !{!1470, !1473, !1474}
!1473 = !DILocalVariable(name: "expected", arg: 2, scope: !1471, file: !6, line: 122, type: !300)
!1474 = !DILocalVariable(name: "addr", arg: 1, scope: !1471, file: !6, line: 122, type: !300)
!1475 = !DILocation(line: 0, scope: !1471, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 947, scope: !1462, inlinedAt: !1464)
!1477 = !DILocation(line: 0, scope: !485, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 123, scope: !1471, inlinedAt: !1476)
!1479 = !DILocation(line: 104, scope: !485, inlinedAt: !1478)
!1480 = !DILocation(line: 106, scope: !485, inlinedAt: !1478)
!1481 = distinct !{!1481, !1466, !1482}
!1482 = !DILocation(line: 950, scope: !1458, inlinedAt: !1464)
!1483 = !DILocation(line: 1011, scope: !1442)
!1484 = !DILocation(line: 1013, scope: !1442)
!1485 = !DILocation(line: 1014, scope: !1442)
!1486 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 1016, type: !291, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492}
!1488 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1486, file: !6, line: 1016, type: !64)
!1489 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1486, file: !6, line: 1016, type: !64)
!1490 = !DILocalVariable(name: "action", arg: 2, scope: !1486, file: !6, line: 1016, type: !293)
!1491 = !DILocalVariable(name: "control", arg: 1, scope: !1486, file: !6, line: 1016, type: !43)
!1492 = !DILocalVariable(name: "broadcast_control", scope: !1486, file: !6, line: 1017, type: !330)
!1493 = !DILocation(line: 0, scope: !1486)
!1494 = !DILocation(line: 1019, scope: !1486)
!1495 = !DILocation(line: 1020, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !6, line: 1019)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !6, line: 1019)
!1498 = !DILocalVariable(name: "this", arg: 1, scope: !1499, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1499 = distinct !DISubprogram(name: "make_parked", linkageName: "?make_parked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 953, type: !316, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !325, retainedNodes: !1500)
!1500 = !{!1498}
!1501 = !DILocation(line: 0, scope: !1499, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 1020, scope: !1496)
!1503 = !DILocation(line: 954, scope: !1499, inlinedAt: !1502)
!1504 = !DILocalVariable(name: "val", arg: 2, scope: !1505, file: !6, line: 145, type: !22)
!1505 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "?atomic_or_fetch_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAIPAII@Z", scope: !476, file: !6, line: 145, type: !706, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1506)
!1506 = !{!1504, !1507}
!1507 = !DILocalVariable(name: "addr", arg: 1, scope: !1505, file: !6, line: 145, type: !300)
!1508 = !DILocation(line: 0, scope: !1505, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 954, scope: !1499, inlinedAt: !1502)
!1510 = !DILocation(line: 146, scope: !1505, inlinedAt: !1509)
!1511 = !DILocation(line: 1021, scope: !1496)
!1512 = !DILocation(line: 1022, scope: !1486)
!1513 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 1038, type: !273, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1514)
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = !DILocalVariable(name: "action", arg: 2, scope: !1513, file: !6, line: 1038, type: !275)
!1516 = !DILocalVariable(name: "control", arg: 1, scope: !1513, file: !6, line: 1038, type: !43)
!1517 = !DILocalVariable(name: "wait_control", scope: !1513, file: !6, line: 1039, type: !340)
!1518 = !DILocalVariable(name: "val", scope: !1513, file: !6, line: 1041, type: !22)
!1519 = !DILocation(line: 0, scope: !1513)
!1520 = !DILocation(line: 1042, scope: !1513)
!1521 = !{!1522, !399, i64 16}
!1522 = !{!"?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@", !399, i64 16, !399, i64 20}
!1523 = !DILocation(line: 1044, scope: !1513)
!1524 = !DILocation(line: 0, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1513, file: !6, line: 1044)
!1526 = !{!1522, !399, i64 20}
!1527 = !DILocation(line: 1047, scope: !1525)
!1528 = !DILocation(line: 1049, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !6, line: 1047)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !6, line: 1047)
!1531 = !DILocation(line: 1050, scope: !1529)
!1532 = !DILocation(line: 1054, scope: !1513)
!1533 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1534)
!1534 = !{!1535, !1536}
!1535 = !DILocalVariable(name: "control", arg: 1, scope: !1533, file: !6, line: 1056, type: !43)
!1536 = !DILocalVariable(name: "wait_control", scope: !1533, file: !6, line: 1057, type: !340)
!1537 = !DILocation(line: 0, scope: !1533)
!1538 = !DILocation(line: 1059, scope: !1533)
!1539 = !DILocalVariable(name: "this", arg: 1, scope: !1540, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1540 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 929, type: !316, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !321, retainedNodes: !1541)
!1541 = !{!1539, !1542, !1543}
!1542 = !DILocalVariable(name: "expected", scope: !1540, file: !6, line: 930, type: !22)
!1543 = !DILocalVariable(name: "desired", scope: !1540, file: !6, line: 931, type: !22)
!1544 = !DILocation(line: 0, scope: !1540, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 1059, scope: !1533)
!1546 = !DILocation(line: 933, scope: !1540, inlinedAt: !1545)
!1547 = !DILocation(line: 0, scope: !560, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 933, scope: !1540, inlinedAt: !1545)
!1549 = !DILocation(line: 0, scope: !485, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 114, scope: !560, inlinedAt: !1548)
!1551 = !DILocation(line: 104, scope: !485, inlinedAt: !1550)
!1552 = !DILocation(line: 106, scope: !485, inlinedAt: !1550)
!1553 = !DILocalVariable(name: "this", arg: 1, scope: !1554, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1554 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !312, file: !6, line: 906, type: !316, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !319, retainedNodes: !1555)
!1555 = !{!1553, !1556, !1557, !1558}
!1556 = !DILocalVariable(name: "expected", scope: !1554, file: !6, line: 907, type: !22)
!1557 = !DILocalVariable(name: "desired", scope: !1554, file: !6, line: 908, type: !22)
!1558 = !DILocalVariable(name: "control", scope: !1554, file: !6, line: 915, type: !266)
!1559 = !DILocation(line: 0, scope: !1554, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 934, scope: !1561, inlinedAt: !1545)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !6, line: 933)
!1562 = distinct !DILexicalBlock(scope: !1540, file: !6, line: 933)
!1563 = !DILocalVariable(name: "desired", arg: 3, scope: !1564, file: !6, line: 109, type: !300)
!1564 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "?atomic_cas_strong_release_relaxed@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !476, file: !6, line: 109, type: !477, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1565)
!1565 = !{!1563, !1566, !1567}
!1566 = !DILocalVariable(name: "expected", arg: 2, scope: !1564, file: !6, line: 109, type: !300)
!1567 = !DILocalVariable(name: "addr", arg: 1, scope: !1564, file: !6, line: 109, type: !300)
!1568 = !DILocation(line: 0, scope: !1564, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 911, scope: !1554, inlinedAt: !1560)
!1570 = !DILocation(line: 0, scope: !485, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 110, scope: !1564, inlinedAt: !1569)
!1572 = !DILocation(line: 104, scope: !485, inlinedAt: !1571)
!1573 = !DILocation(line: 106, scope: !485, inlinedAt: !1571)
!1574 = !DILocation(line: 911, scope: !1554, inlinedAt: !1560)
!1575 = !DILocation(line: 915, scope: !1554, inlinedAt: !1560)
!1576 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1577, file: !6, line: 832, type: !300)
!1577 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "??0mutex_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAI@Z", scope: !266, file: !6, line: 832, type: !302, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !301, retainedNodes: !1578)
!1578 = !{!1576, !1579}
!1579 = !DILocalVariable(name: "this", arg: 1, scope: !1577, type: !265, flags: DIFlagArtificial | DIFlagObjectPointer)
!1580 = !DILocation(line: 0, scope: !1577, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 915, scope: !1554, inlinedAt: !1560)
!1582 = !DILocalVariable(name: "this", arg: 1, scope: !1583, type: !1585, flags: DIFlagArtificial | DIFlagObjectPointer)
!1583 = distinct !DISubprogram(name: "parking_control", linkageName: "??0parking_control@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !269, file: !6, line: 598, type: !296, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !295, retainedNodes: !1584)
!1584 = !{!1582}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!1586 = !DILocation(line: 0, scope: !1583, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 833, scope: !1577, inlinedAt: !1581)
!1588 = !DILocation(line: 600, scope: !1583, inlinedAt: !1587)
!1589 = !DILocation(line: 833, scope: !1577, inlinedAt: !1581)
!1590 = !DILocation(line: 834, scope: !1591, inlinedAt: !1581)
!1591 = distinct !DILexicalBlock(scope: !1577, file: !6, line: 833)
!1592 = !DILocation(line: 835, scope: !1591, inlinedAt: !1581)
!1593 = !DILocation(line: 916, scope: !1554, inlinedAt: !1560)
!1594 = !DILocation(line: 917, scope: !1554, inlinedAt: !1560)
!1595 = !DILocation(line: 1060, scope: !1533)
!1596 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 1062, type: !287, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602}
!1598 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1596, file: !6, line: 1062, type: !64)
!1599 = !DILocalVariable(name: "unparked", arg: 2, scope: !1596, file: !6, line: 1062, type: !29)
!1600 = !DILocalVariable(name: "control", arg: 1, scope: !1596, file: !6, line: 1062, type: !43)
!1601 = !DILocalVariable(name: "wait_control", scope: !1596, file: !6, line: 1063, type: !340)
!1602 = !DILocalVariable(name: "val", scope: !1603, file: !6, line: 1066, type: !22)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !6, line: 1065)
!1604 = distinct !DILexicalBlock(scope: !1596, file: !6, line: 1065)
!1605 = !DILocation(line: 0, scope: !1596)
!1606 = !DILocation(line: 1065, scope: !1596)
!1607 = !DILocation(line: 0, scope: !1603)
!1608 = !DILocation(line: 1067, scope: !1603)
!1609 = !DILocation(line: 0, scope: !1344, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 1067, scope: !1603)
!1611 = !DILocation(line: 150, scope: !1344, inlinedAt: !1610)
!1612 = !DILocation(line: 1068, scope: !1603)
!1613 = !DILocation(line: 1069, scope: !1596)
!1614 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1615, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !367}
!1617 = !{!1618, !1619}
!1618 = !DILocalVariable(name: "mutex", arg: 1, scope: !1614, file: !6, line: 1131, type: !367)
!1619 = !DILocalVariable(name: "fast_mutex", scope: !1614, file: !6, line: 1132, type: !311)
!1620 = !DILocation(line: 0, scope: !1614)
!1621 = !DILocalVariable(name: "this", arg: 1, scope: !1622, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1622 = distinct !DISubprogram(name: "lock", linkageName: "?lock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 920, type: !316, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !320, retainedNodes: !1623)
!1623 = !{!1621, !1624, !1625}
!1624 = !DILocalVariable(name: "expected", scope: !1622, file: !6, line: 921, type: !22)
!1625 = !DILocalVariable(name: "desired", scope: !1622, file: !6, line: 922, type: !22)
!1626 = !DILocation(line: 0, scope: !1622, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 1134, scope: !1614)
!1628 = !DILocation(line: 924, scope: !1622, inlinedAt: !1627)
!1629 = !DILocation(line: 0, scope: !475, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 924, scope: !1622, inlinedAt: !1627)
!1631 = !DILocation(line: 0, scope: !485, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !1630)
!1633 = !DILocation(line: 104, scope: !485, inlinedAt: !1632)
!1634 = !DILocation(line: 106, scope: !485, inlinedAt: !1632)
!1635 = !DILocalVariable(name: "this", arg: 1, scope: !1636, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1636 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !312, file: !6, line: 862, type: !316, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !315, retainedNodes: !1637)
!1637 = !{!1635, !1638, !1639, !1640, !1644, !1647, !1648}
!1638 = !DILocalVariable(name: "spinner", scope: !1636, file: !6, line: 864, type: !447)
!1639 = !DILocalVariable(name: "expected", scope: !1636, file: !6, line: 865, type: !22)
!1640 = !DILocalVariable(name: "desired", scope: !1641, file: !6, line: 870, type: !22)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !6, line: 869)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !6, line: 869)
!1643 = distinct !DILexicalBlock(scope: !1636, file: !6, line: 868)
!1644 = !DILocalVariable(name: "desired", scope: !1645, file: !6, line: 888, type: !22)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !6, line: 887)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !6, line: 887)
!1647 = !DILocalVariable(name: "control", scope: !1643, file: !6, line: 895, type: !266)
!1648 = !DILocalVariable(name: "result", scope: !1643, file: !6, line: 896, type: !22)
!1649 = !DILocation(line: 0, scope: !1636, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 925, scope: !1651, inlinedAt: !1627)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !6, line: 924)
!1652 = distinct !DILexicalBlock(scope: !1622, file: !6, line: 924)
!1653 = !DILocation(line: 866, scope: !1636, inlinedAt: !1650)
!1654 = !DILocation(line: 868, scope: !1636, inlinedAt: !1650)
!1655 = !DILocation(line: 869, scope: !1643, inlinedAt: !1650)
!1656 = !DILocation(line: 870, scope: !1641, inlinedAt: !1650)
!1657 = !DILocation(line: 0, scope: !1641, inlinedAt: !1650)
!1658 = !DILocation(line: 0, scope: !475, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 871, scope: !1641, inlinedAt: !1650)
!1660 = !DILocation(line: 0, scope: !485, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !1659)
!1662 = !DILocation(line: 104, scope: !485, inlinedAt: !1661)
!1663 = !DILocation(line: 106, scope: !485, inlinedAt: !1661)
!1664 = !DILocation(line: 0, scope: !502, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 880, scope: !1643, inlinedAt: !1650)
!1666 = !DILocation(line: 238, scope: !502, inlinedAt: !1665)
!1667 = !DILocation(line: 241, scope: !502, inlinedAt: !1665)
!1668 = !DILocation(line: 880, scope: !1643, inlinedAt: !1650)
!1669 = !DILocation(line: 239, scope: !509, inlinedAt: !1665)
!1670 = !DILocation(line: 881, scope: !1671, inlinedAt: !1650)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !6, line: 880)
!1672 = distinct !DILexicalBlock(scope: !1643, file: !6, line: 880)
!1673 = !DILocation(line: 882, scope: !1671, inlinedAt: !1650)
!1674 = !DILocation(line: 883, scope: !1671, inlinedAt: !1650)
!1675 = !DILocation(line: 887, scope: !1643, inlinedAt: !1650)
!1676 = !DILocation(line: 888, scope: !1645, inlinedAt: !1650)
!1677 = !DILocation(line: 0, scope: !1645, inlinedAt: !1650)
!1678 = !DILocation(line: 0, scope: !1471, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 889, scope: !1645, inlinedAt: !1650)
!1680 = !DILocation(line: 0, scope: !485, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 123, scope: !1471, inlinedAt: !1679)
!1682 = !DILocation(line: 104, scope: !485, inlinedAt: !1681)
!1683 = !DILocation(line: 106, scope: !485, inlinedAt: !1681)
!1684 = !DILocation(line: 895, scope: !1643, inlinedAt: !1650)
!1685 = !DILocation(line: 0, scope: !1577, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 895, scope: !1643, inlinedAt: !1650)
!1687 = !DILocation(line: 0, scope: !1583, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 833, scope: !1577, inlinedAt: !1686)
!1689 = !DILocation(line: 600, scope: !1583, inlinedAt: !1688)
!1690 = !DILocation(line: 833, scope: !1577, inlinedAt: !1686)
!1691 = !DILocation(line: 834, scope: !1591, inlinedAt: !1686)
!1692 = !DILocation(line: 835, scope: !1591, inlinedAt: !1686)
!1693 = !DILocation(line: 896, scope: !1643, inlinedAt: !1650)
!1694 = !DILocation(line: 0, scope: !1643, inlinedAt: !1650)
!1695 = !DILocation(line: 897, scope: !1643, inlinedAt: !1650)
!1696 = !DILocation(line: 902, scope: !1643, inlinedAt: !1650)
!1697 = !DILocation(line: 903, scope: !1643, inlinedAt: !1650)
!1698 = distinct !{!1698, !1654, !1699}
!1699 = !DILocation(line: 903, scope: !1636, inlinedAt: !1650)
!1700 = !DILocation(line: 1135, scope: !1614)
!1701 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1615, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1702)
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "mutex", arg: 1, scope: !1701, file: !6, line: 1137, type: !367)
!1704 = !DILocalVariable(name: "fast_mutex", scope: !1701, file: !6, line: 1138, type: !311)
!1705 = !DILocation(line: 0, scope: !1701)
!1706 = !DILocation(line: 0, scope: !1540, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 1140, scope: !1701)
!1708 = !DILocation(line: 933, scope: !1540, inlinedAt: !1707)
!1709 = !DILocation(line: 0, scope: !560, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 933, scope: !1540, inlinedAt: !1707)
!1711 = !DILocation(line: 0, scope: !485, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 114, scope: !560, inlinedAt: !1710)
!1713 = !DILocation(line: 104, scope: !485, inlinedAt: !1712)
!1714 = !DILocation(line: 106, scope: !485, inlinedAt: !1712)
!1715 = !DILocation(line: 0, scope: !1554, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 934, scope: !1561, inlinedAt: !1707)
!1717 = !DILocation(line: 0, scope: !1564, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 911, scope: !1554, inlinedAt: !1716)
!1719 = !DILocation(line: 0, scope: !485, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 110, scope: !1564, inlinedAt: !1718)
!1721 = !DILocation(line: 104, scope: !485, inlinedAt: !1720)
!1722 = !DILocation(line: 106, scope: !485, inlinedAt: !1720)
!1723 = !DILocation(line: 911, scope: !1554, inlinedAt: !1716)
!1724 = !DILocation(line: 915, scope: !1554, inlinedAt: !1716)
!1725 = !DILocation(line: 0, scope: !1577, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 915, scope: !1554, inlinedAt: !1716)
!1727 = !DILocation(line: 0, scope: !1583, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 833, scope: !1577, inlinedAt: !1726)
!1729 = !DILocation(line: 600, scope: !1583, inlinedAt: !1728)
!1730 = !DILocation(line: 833, scope: !1577, inlinedAt: !1726)
!1731 = !DILocation(line: 834, scope: !1591, inlinedAt: !1726)
!1732 = !DILocation(line: 835, scope: !1591, inlinedAt: !1726)
!1733 = !DILocation(line: 916, scope: !1554, inlinedAt: !1716)
!1734 = !DILocation(line: 917, scope: !1554, inlinedAt: !1716)
!1735 = !DILocation(line: 1141, scope: !1701)
!1736 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !1737, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1740)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!1740 = !{!1741, !1742}
!1741 = !DILocalVariable(name: "cond", arg: 1, scope: !1736, file: !6, line: 1143, type: !1739)
!1742 = !DILocalVariable(name: "fast_cond", scope: !1736, file: !6, line: 1144, type: !350)
!1743 = !DILocation(line: 0, scope: !1736)
!1744 = !DILocalVariable(name: "this", arg: 1, scope: !1745, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1745 = distinct !DISubprogram(name: "broadcast", linkageName: "?broadcast@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !351, file: !6, line: 1092, type: !355, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !359, retainedNodes: !1746)
!1746 = !{!1744, !1747, !1748}
!1747 = !DILocalVariable(name: "val", scope: !1745, file: !6, line: 1094, type: !22)
!1748 = !DILocalVariable(name: "control", scope: !1745, file: !6, line: 1100, type: !331)
!1749 = !DILocation(line: 0, scope: !1745, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 1146, scope: !1736)
!1751 = !DILocation(line: 1095, scope: !1745, inlinedAt: !1750)
!1752 = !DILocation(line: 1096, scope: !1745, inlinedAt: !1750)
!1753 = !DILocation(line: 1100, scope: !1745, inlinedAt: !1750)
!1754 = !DILocalVariable(name: "mutex", arg: 3, scope: !1755, file: !6, line: 989, type: !311)
!1755 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "??0broadcast_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAIPAVfast_mutex@1234@@Z", scope: !331, file: !6, line: 989, type: !337, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !336, retainedNodes: !1756)
!1756 = !{!1754, !1757, !1758}
!1757 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1755, file: !6, line: 989, type: !300)
!1758 = !DILocalVariable(name: "this", arg: 1, scope: !1755, type: !330, flags: DIFlagArtificial | DIFlagObjectPointer)
!1759 = !DILocation(line: 0, scope: !1755, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 1100, scope: !1745, inlinedAt: !1750)
!1761 = !DILocation(line: 0, scope: !1583, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 990, scope: !1755, inlinedAt: !1760)
!1763 = !DILocation(line: 600, scope: !1583, inlinedAt: !1762)
!1764 = !DILocation(line: 990, scope: !1755, inlinedAt: !1760)
!1765 = !DILocation(line: 991, scope: !1766, inlinedAt: !1760)
!1766 = distinct !DILexicalBlock(scope: !1755, file: !6, line: 990)
!1767 = !DILocation(line: 992, scope: !1766, inlinedAt: !1760)
!1768 = !DILocation(line: 1101, scope: !1745, inlinedAt: !1750)
!1769 = !DILocation(line: 1103, scope: !1745, inlinedAt: !1750)
!1770 = !DILocation(line: 1147, scope: !1736)
!1771 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !1737, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1772)
!1772 = !{!1773, !1774}
!1773 = !DILocalVariable(name: "cond", arg: 1, scope: !1771, file: !6, line: 1149, type: !1739)
!1774 = !DILocalVariable(name: "fast_cond", scope: !1771, file: !6, line: 1150, type: !350)
!1775 = !DILocation(line: 0, scope: !1771)
!1776 = !DILocalVariable(name: "this", arg: 1, scope: !1777, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1777 = distinct !DISubprogram(name: "signal", linkageName: "?signal@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !351, file: !6, line: 1078, type: !355, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !358, retainedNodes: !1778)
!1778 = !{!1776, !1779, !1780}
!1779 = !DILocalVariable(name: "val", scope: !1777, file: !6, line: 1081, type: !22)
!1780 = !DILocalVariable(name: "control", scope: !1777, file: !6, line: 1087, type: !306)
!1781 = !DILocation(line: 0, scope: !1777, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 1152, scope: !1771)
!1783 = !DILocation(line: 1082, scope: !1777, inlinedAt: !1782)
!1784 = !DILocation(line: 1083, scope: !1777, inlinedAt: !1782)
!1785 = !DILocation(line: 1087, scope: !1777, inlinedAt: !1782)
!1786 = !DILocalVariable(name: "mutex", arg: 3, scope: !1787, file: !6, line: 962, type: !311)
!1787 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "??0signal_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAIPAVfast_mutex@1234@@Z", scope: !306, file: !6, line: 962, type: !327, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !326, retainedNodes: !1788)
!1788 = !{!1786, !1789, !1790}
!1789 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1787, file: !6, line: 962, type: !300)
!1790 = !DILocalVariable(name: "this", arg: 1, scope: !1787, type: !305, flags: DIFlagArtificial | DIFlagObjectPointer)
!1791 = !DILocation(line: 0, scope: !1787, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 1087, scope: !1777, inlinedAt: !1782)
!1793 = !DILocation(line: 0, scope: !1583, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 963, scope: !1787, inlinedAt: !1792)
!1795 = !DILocation(line: 600, scope: !1583, inlinedAt: !1794)
!1796 = !DILocation(line: 963, scope: !1787, inlinedAt: !1792)
!1797 = !{!1436, !399, i64 20}
!1798 = !DILocation(line: 964, scope: !1799, inlinedAt: !1792)
!1799 = distinct !DILexicalBlock(scope: !1787, file: !6, line: 963)
!1800 = !DILocation(line: 1088, scope: !1777, inlinedAt: !1782)
!1801 = !DILocation(line: 1090, scope: !1777, inlinedAt: !1782)
!1802 = !DILocation(line: 1153, scope: !1771)
!1803 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !1804, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1739, !367}
!1806 = !{!1807, !1808, !1809, !1810}
!1807 = !DILocalVariable(name: "mutex", arg: 2, scope: !1803, file: !6, line: 1155, type: !367)
!1808 = !DILocalVariable(name: "cond", arg: 1, scope: !1803, file: !6, line: 1155, type: !1739)
!1809 = !DILocalVariable(name: "fast_cond", scope: !1803, file: !6, line: 1156, type: !350)
!1810 = !DILocalVariable(name: "fast_mutex", scope: !1803, file: !6, line: 1158, type: !311)
!1811 = !DILocation(line: 0, scope: !1803)
!1812 = !DILocalVariable(name: "mutex", arg: 2, scope: !1813, file: !6, line: 1105, type: !311)
!1813 = distinct !DISubprogram(name: "wait", linkageName: "?wait@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXPAVfast_mutex@2345@@Z", scope: !351, file: !6, line: 1105, type: !361, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !360, retainedNodes: !1814)
!1814 = !{!1812, !1815, !1816, !1817, !1818}
!1815 = !DILocalVariable(name: "this", arg: 1, scope: !1813, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1816 = !DILocalVariable(name: "control", scope: !1813, file: !6, line: 1106, type: !341)
!1817 = !DILocalVariable(name: "result", scope: !1813, file: !6, line: 1107, type: !22)
!1818 = !DILocalVariable(name: "val", scope: !1819, file: !6, line: 1114, type: !22)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !6, line: 1110)
!1820 = distinct !DILexicalBlock(scope: !1813, file: !6, line: 1108)
!1821 = !DILocation(line: 0, scope: !1813, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 1160, scope: !1803)
!1823 = !DILocation(line: 1106, scope: !1813, inlinedAt: !1822)
!1824 = !DILocalVariable(name: "mutex", arg: 3, scope: !1825, file: !6, line: 1030, type: !311)
!1825 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "??0wait_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAIPAVfast_mutex@1234@@Z", scope: !341, file: !6, line: 1030, type: !347, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !346, retainedNodes: !1826)
!1826 = !{!1824, !1827, !1828}
!1827 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1825, file: !6, line: 1030, type: !300)
!1828 = !DILocalVariable(name: "this", arg: 1, scope: !1825, type: !340, flags: DIFlagArtificial | DIFlagObjectPointer)
!1829 = !DILocation(line: 0, scope: !1825, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 1106, scope: !1813, inlinedAt: !1822)
!1831 = !DILocation(line: 0, scope: !1583, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 1031, scope: !1825, inlinedAt: !1830)
!1833 = !DILocation(line: 600, scope: !1583, inlinedAt: !1832)
!1834 = !DILocation(line: 1031, scope: !1825, inlinedAt: !1830)
!1835 = !DILocation(line: 1032, scope: !1836, inlinedAt: !1830)
!1836 = distinct !DILexicalBlock(scope: !1825, file: !6, line: 1031)
!1837 = !DILocation(line: 1033, scope: !1836, inlinedAt: !1830)
!1838 = !DILocation(line: 1034, scope: !1836, inlinedAt: !1830)
!1839 = !DILocation(line: 1107, scope: !1813, inlinedAt: !1822)
!1840 = !DILocation(line: 1108, scope: !1813, inlinedAt: !1822)
!1841 = !DILocation(line: 0, scope: !1820, inlinedAt: !1822)
!1842 = !DILocation(line: 0, scope: !1622, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 1109, scope: !1844, inlinedAt: !1822)
!1844 = distinct !DILexicalBlock(scope: !1820, file: !6, line: 1108)
!1845 = !DILocation(line: 0, scope: !475, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 924, scope: !1622, inlinedAt: !1843)
!1847 = !DILocation(line: 0, scope: !485, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !1846)
!1849 = !DILocation(line: 104, scope: !485, inlinedAt: !1848)
!1850 = !DILocation(line: 106, scope: !485, inlinedAt: !1848)
!1851 = !DILocation(line: 924, scope: !1622, inlinedAt: !1843)
!1852 = !DILocation(line: 0, scope: !1636, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 925, scope: !1651, inlinedAt: !1843)
!1854 = !DILocation(line: 866, scope: !1636, inlinedAt: !1853)
!1855 = !DILocation(line: 868, scope: !1636, inlinedAt: !1853)
!1856 = !DILocation(line: 869, scope: !1643, inlinedAt: !1853)
!1857 = !DILocation(line: 870, scope: !1641, inlinedAt: !1853)
!1858 = !DILocation(line: 0, scope: !1641, inlinedAt: !1853)
!1859 = !DILocation(line: 0, scope: !475, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 871, scope: !1641, inlinedAt: !1853)
!1861 = !DILocation(line: 0, scope: !485, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 127, scope: !475, inlinedAt: !1860)
!1863 = !DILocation(line: 104, scope: !485, inlinedAt: !1862)
!1864 = !DILocation(line: 106, scope: !485, inlinedAt: !1862)
!1865 = !DILocation(line: 0, scope: !502, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 880, scope: !1643, inlinedAt: !1853)
!1867 = !DILocation(line: 238, scope: !502, inlinedAt: !1866)
!1868 = !DILocation(line: 241, scope: !502, inlinedAt: !1866)
!1869 = !DILocation(line: 880, scope: !1643, inlinedAt: !1853)
!1870 = !DILocation(line: 239, scope: !509, inlinedAt: !1866)
!1871 = !DILocation(line: 881, scope: !1671, inlinedAt: !1853)
!1872 = !DILocation(line: 882, scope: !1671, inlinedAt: !1853)
!1873 = !DILocation(line: 883, scope: !1671, inlinedAt: !1853)
!1874 = !DILocation(line: 887, scope: !1643, inlinedAt: !1853)
!1875 = !DILocation(line: 888, scope: !1645, inlinedAt: !1853)
!1876 = !DILocation(line: 0, scope: !1645, inlinedAt: !1853)
!1877 = !DILocation(line: 0, scope: !1471, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 889, scope: !1645, inlinedAt: !1853)
!1879 = !DILocation(line: 0, scope: !485, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 123, scope: !1471, inlinedAt: !1878)
!1881 = !DILocation(line: 104, scope: !485, inlinedAt: !1880)
!1882 = !DILocation(line: 106, scope: !485, inlinedAt: !1880)
!1883 = !DILocation(line: 895, scope: !1643, inlinedAt: !1853)
!1884 = !DILocation(line: 0, scope: !1577, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 895, scope: !1643, inlinedAt: !1853)
!1886 = !DILocation(line: 0, scope: !1583, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 833, scope: !1577, inlinedAt: !1885)
!1888 = !DILocation(line: 600, scope: !1583, inlinedAt: !1887)
!1889 = !DILocation(line: 833, scope: !1577, inlinedAt: !1885)
!1890 = !DILocation(line: 834, scope: !1591, inlinedAt: !1885)
!1891 = !DILocation(line: 835, scope: !1591, inlinedAt: !1885)
!1892 = !DILocation(line: 896, scope: !1643, inlinedAt: !1853)
!1893 = !DILocation(line: 0, scope: !1643, inlinedAt: !1853)
!1894 = !DILocation(line: 897, scope: !1643, inlinedAt: !1853)
!1895 = !DILocation(line: 902, scope: !1643, inlinedAt: !1853)
!1896 = !DILocation(line: 903, scope: !1643, inlinedAt: !1853)
!1897 = distinct !{!1897, !1855, !1898}
!1898 = !DILocation(line: 903, scope: !1636, inlinedAt: !1853)
!1899 = !DILocation(line: 1115, scope: !1819, inlinedAt: !1822)
!1900 = !DILocation(line: 0, scope: !1819, inlinedAt: !1822)
!1901 = !DILocation(line: 1116, scope: !1902, inlinedAt: !1822)
!1902 = distinct !DILexicalBlock(scope: !1819, file: !6, line: 1116)
!1903 = !DILocation(line: 1116, scope: !1904, inlinedAt: !1822)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !6, line: 1116)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !6, line: 1116)
!1906 = !DILocation(line: 1120, scope: !1813, inlinedAt: !1822)
!1907 = !DILocation(line: 1161, scope: !1803)
!1908 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !1909, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!363, !29}
!1911 = !{!1912, !1913}
!1912 = !DILocalVariable(name: "sz", arg: 1, scope: !1908, file: !6, line: 1168, type: !29)
!1913 = !DILocalVariable(name: "array", scope: !1908, file: !6, line: 1171, type: !363)
!1914 = !DILocation(line: 0, scope: !1908)
!1915 = !DILocation(line: 1171, scope: !1908)
!1916 = !DILocation(line: 1173, scope: !1908)
!1917 = !DILocation(line: 1177, scope: !1908)
!1918 = !{!1919, !399, i64 0}
!1919 = !{!"?AUhalide_mutex_array@@", !399, i64 0}
!1920 = !DILocation(line: 1179, scope: !1908)
!1921 = !DILocation(line: 1180, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !6, line: 1179)
!1923 = distinct !DILexicalBlock(scope: !1908, file: !6, line: 1179)
!1924 = !DILocation(line: 1182, scope: !1922)
!1925 = !DILocation(line: 1184, scope: !1908)
!1926 = !DILocation(line: 1185, scope: !1908)
!1927 = !DILocation(line: 1186, scope: !1908)
!1928 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !1929, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !43, !43}
!1931 = !{!1932, !1933, !1934}
!1932 = !DILocalVariable(name: "array", arg: 2, scope: !1928, file: !6, line: 1188, type: !43)
!1933 = !DILocalVariable(name: "user_context", arg: 1, scope: !1928, file: !6, line: 1188, type: !43)
!1934 = !DILocalVariable(name: "arr_ptr", scope: !1928, file: !6, line: 1189, type: !363)
!1935 = !DILocation(line: 0, scope: !1928)
!1936 = !DILocation(line: 1190, scope: !1928)
!1937 = !DILocation(line: 1191, scope: !1928)
!1938 = !DILocation(line: 1192, scope: !1928)
!1939 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !1940, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!29, !363, !29}
!1942 = !{!1943, !1944}
!1943 = !DILocalVariable(name: "entry", arg: 2, scope: !1939, file: !6, line: 1194, type: !29)
!1944 = !DILocalVariable(name: "array", arg: 1, scope: !1939, file: !6, line: 1194, type: !363)
!1945 = !DILocation(line: 0, scope: !1939)
!1946 = !DILocation(line: 1195, scope: !1939)
!1947 = !DILocation(line: 1196, scope: !1939)
!1948 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !1940, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1949)
!1949 = !{!1950, !1951}
!1950 = !DILocalVariable(name: "entry", arg: 2, scope: !1948, file: !6, line: 1199, type: !29)
!1951 = !DILocalVariable(name: "array", arg: 1, scope: !1948, file: !6, line: 1199, type: !363)
!1952 = !DILocation(line: 0, scope: !1948)
!1953 = !DILocation(line: 1200, scope: !1948)
!1954 = !DILocation(line: 1201, scope: !1948)
!1955 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z", scope: !3, file: !13, line: 69, type: !1956, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!29, !29}
!1958 = !{!1959}
!1959 = !DILocalVariable(name: "threads", arg: 1, scope: !1955, file: !13, line: 69, type: !29)
!1960 = !DILocation(line: 0, scope: !1955)
!1961 = !DILocation(line: 70, scope: !1955)
!1962 = !DILocation(line: 72, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1955, file: !13, line: 70)
!1964 = !DILocation(line: 75, scope: !1955)
!1965 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ", scope: !3, file: !13, line: 78, type: !405, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1966)
!1966 = !{!1967, !1968}
!1967 = !DILocalVariable(name: "desired_num_threads", scope: !1965, file: !13, line: 79, type: !29)
!1968 = !DILocalVariable(name: "threads_str", scope: !1965, file: !13, line: 80, type: !372)
!1969 = !DILocation(line: 0, scope: !1965)
!1970 = !DILocation(line: 80, scope: !1965)
!1971 = !DILocation(line: 81, scope: !1965)
!1972 = !DILocation(line: 83, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !13, line: 81)
!1974 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 81)
!1975 = !DILocation(line: 85, scope: !1965)
!1976 = !DILocation(line: 86, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !13, line: 85)
!1978 = distinct !DILexicalBlock(scope: !1965, file: !13, line: 85)
!1979 = !DILocation(line: 87, scope: !1977)
!1980 = !DILocation(line: 88, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !13, line: 87)
!1982 = !DILocation(line: 89, scope: !1981)
!1983 = !DILocation(line: 0, scope: !1978)
!1984 = !DILocation(line: 90, scope: !1965)
!1985 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z", scope: !3, file: !13, line: 197, type: !1986, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1988)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !32}
!1988 = !{!1989, !1990, !1991, !1993, !1995, !1997, !1999, !2000, !2001, !2002, !2003, !2004, !2007, !2008, !2010, !2011}
!1989 = !DILocalVariable(name: "owned_job", arg: 1, scope: !1985, file: !13, line: 197, type: !32)
!1990 = !DILocalVariable(name: "spin_count", scope: !1985, file: !13, line: 198, type: !29)
!1991 = !DILocalVariable(name: "max_spin_count", scope: !1985, file: !13, line: 199, type: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!1993 = !DILocalVariable(name: "job", scope: !1994, file: !13, line: 202, type: !32)
!1994 = distinct !DILexicalBlock(scope: !1985, file: !13, line: 201)
!1995 = !DILocalVariable(name: "prev_ptr", scope: !1994, file: !13, line: 203, type: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!1997 = !DILocalVariable(name: "enough_threads", scope: !1998, file: !13, line: 235, type: !64)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 229)
!1999 = !DILocalVariable(name: "parent_job", scope: !1998, file: !13, line: 237, type: !32)
!2000 = !DILocalVariable(name: "threads_available", scope: !1998, file: !13, line: 239, type: !29)
!2001 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !1998, file: !13, line: 256, type: !64)
!2002 = !DILocalVariable(name: "can_add_worker", scope: !1998, file: !13, line: 260, type: !64)
!2003 = !DILocalVariable(name: "result", scope: !1994, file: !13, line: 328, type: !29)
!2004 = !DILocalVariable(name: "total_iters", scope: !2005, file: !13, line: 336, type: !29)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !13, line: 330)
!2006 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 330)
!2007 = !DILocalVariable(name: "iters", scope: !2005, file: !13, line: 337, type: !29)
!2008 = !DILocalVariable(name: "myjob", scope: !2009, file: !13, line: 369, type: !33)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !13, line: 367)
!2010 = !DILocalVariable(name: "wake_owners", scope: !1994, file: !13, line: 396, type: !64)
!2011 = !DILocalVariable(name: "i", scope: !2012, file: !13, line: 402, type: !29)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !13, line: 402)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !13, line: 399)
!2014 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 399)
!2015 = !DILocation(line: 0, scope: !1985)
!2016 = !DILocation(line: 63, scope: !2017, inlinedAt: !2021)
!2017 = distinct !DISubprogram(name: "running", linkageName: "?running@work@Internal@Runtime@Halide@@QBE_NXZ", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "this", arg: 1, scope: !2017, type: !2020, flags: DIFlagArtificial | DIFlagObjectPointer)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!2021 = distinct !DILocation(line: 201, scope: !1985)
!2022 = !DILocation(line: 201, scope: !1985)
!2023 = !DILocation(line: 198, scope: !1985)
!2024 = !DILocation(line: 0, scope: !2017, inlinedAt: !2021)
!2025 = !{!2026, !469, i64 24}
!2026 = !{!"?AUwork@Internal@Runtime@Halide@@", !2027, i64 0, !399, i64 36, !399, i64 40, !399, i64 44, !469, i64 48, !399, i64 52, !469, i64 56, !399, i64 60, !469, i64 64, !469, i64 68, !469, i64 72, !533, i64 76}
!2027 = !{!"?AUhalide_parallel_task_t@@", !399, i64 0, !399, i64 4, !399, i64 8, !399, i64 12, !469, i64 16, !469, i64 20, !469, i64 24, !469, i64 28, !533, i64 32}
!2028 = !{!2029, !533, i64 1072}
!2029 = !{!"?AUwork_queue_t@Internal@Runtime@Halide@@", !2030, i64 0, !469, i64 4, !469, i64 8, !399, i64 12, !469, i64 16, !469, i64 20, !469, i64 24, !2031, i64 28, !2031, i64 32, !2031, i64 36, !469, i64 40, !469, i64 44, !400, i64 48, !533, i64 1072, !533, i64 1073, !469, i64 1076}
!2030 = !{!"?AUhalide_mutex@@", !400, i64 0}
!2031 = !{!"?AUhalide_cond@@", !400, i64 0}
!2032 = !{!2026, !469, i64 64}
!2033 = !DILocation(line: 202, scope: !1994)
!2034 = !{!2029, !399, i64 12}
!2035 = !DILocation(line: 0, scope: !1994)
!2036 = !DILocation(line: 206, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !13, line: 205)
!2038 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 205)
!2039 = !{!2026, !469, i64 68}
!2040 = !DILocation(line: 207, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !13, line: 206)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !13, line: 206)
!2043 = !DILocation(line: 208, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !13, line: 207)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !13, line: 207)
!2046 = !DILocation(line: 209, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !13, line: 208)
!2048 = !DILocation(line: 210, scope: !2047)
!2049 = !{!2026, !399, i64 40}
!2050 = distinct !{!2050, !2043, !2051, !585}
!2051 = !DILocation(line: 211, scope: !2044)
!2052 = !DILocation(line: 212, scope: !2044)
!2053 = !DILocation(line: 213, scope: !2044)
!2054 = !DILocation(line: 214, scope: !2044)
!2055 = !DILocation(line: 216, scope: !2042)
!2056 = !{!2026, !399, i64 52}
!2057 = !DILocation(line: 217, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !13, line: 216)
!2059 = distinct !DILexicalBlock(scope: !2042, file: !13, line: 216)
!2060 = !DILocation(line: 221, scope: !2058)
!2061 = !DILocation(line: 222, scope: !2058)
!2062 = !DILocation(line: 229, scope: !1994)
!2063 = !DILocation(line: 240, scope: !1998)
!2064 = !DILocation(line: 237, scope: !1998)
!2065 = !DILocation(line: 0, scope: !1998)
!2066 = !DILocation(line: 244, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !13, line: 243)
!2068 = distinct !DILexicalBlock(scope: !1998, file: !13, line: 240)
!2069 = !DILocation(line: 0, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !13, line: 244)
!2071 = !{!2026, !469, i64 28}
!2072 = !DILocation(line: 247, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !13, line: 246)
!2074 = !DILocation(line: 248, scope: !2073)
!2075 = !DILocation(line: 245, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !13, line: 244)
!2077 = !DILocation(line: 246, scope: !2076)
!2078 = !DILocation(line: 242, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2068, file: !13, line: 240)
!2080 = !{!2029, !469, i64 16}
!2081 = !DILocation(line: 243, scope: !2079)
!2082 = !DILocation(line: 0, scope: !2068)
!2083 = !DILocation(line: 250, scope: !1998)
!2084 = !DILocation(line: 260, scope: !1998)
!2085 = !{!2026, !533, i64 32}
!2086 = !DILocation(line: 265, scope: !1998)
!2087 = !DILocalVariable(name: "this", arg: 1, scope: !2088, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2088 = distinct !DISubprogram(name: "make_runnable", linkageName: "?make_runnable@work@Internal@Runtime@Halide@@QAE_NXZ", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2089)
!2089 = !{!2087}
!2090 = !DILocation(line: 0, scope: !2088, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 266, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !13, line: 265)
!2093 = distinct !DILexicalBlock(scope: !1998, file: !13, line: 265)
!2094 = !DILocation(line: 47, scope: !2095, inlinedAt: !2091)
!2095 = distinct !DILexicalBlock(scope: !2088, file: !13, line: 47)
!2096 = !{!2026, !469, i64 72}
!2097 = !{!2026, !469, i64 16}
!2098 = !DILocation(line: 48, scope: !2099, inlinedAt: !2091)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !13, line: 47)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !13, line: 47)
!2101 = !{!2026, !399, i64 12}
!2102 = !{!2103, !469, i64 4}
!2103 = !{!"?AUhalide_semaphore_acquire_t@@", !399, i64 0, !469, i64 4}
!2104 = !{!2103, !399, i64 0}
!2105 = !DILocation(line: 47, scope: !2100, inlinedAt: !2091)
!2106 = distinct !{!2106, !2094, !2107, !585}
!2107 = !DILocation(line: 56, scope: !2095, inlinedAt: !2091)
!2108 = !DILocation(line: 272, scope: !1998)
!2109 = !DILocation(line: 273, scope: !1998)
!2110 = !DILocation(line: 256, scope: !1998)
!2111 = !{!2026, !399, i64 44}
!2112 = !DILocation(line: 278, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !13, line: 276)
!2114 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 276)
!2115 = !DILocation(line: 279, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !13, line: 278)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !13, line: 278)
!2118 = !DILocation(line: 281, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !13, line: 279)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !13, line: 279)
!2121 = !DILocation(line: 282, scope: !2119)
!2122 = !DILocation(line: 283, scope: !2119)
!2123 = !DILocation(line: 284, scope: !2119)
!2124 = !DILocation(line: 285, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !13, line: 284)
!2126 = !{!2029, !469, i64 44}
!2127 = !DILocation(line: 286, scope: !2125)
!2128 = !{!2026, !533, i64 76}
!2129 = !DILocation(line: 287, scope: !2125)
!2130 = !DILocation(line: 288, scope: !2125)
!2131 = !DILocation(line: 289, scope: !2125)
!2132 = !DILocation(line: 290, scope: !2125)
!2133 = !DILocation(line: 292, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2117, file: !13, line: 291)
!2135 = !{!2029, !469, i64 40}
!2136 = !DILocation(line: 293, scope: !2134)
!2137 = !{!2029, !469, i64 20}
!2138 = !{!2029, !469, i64 24}
!2139 = !DILocation(line: 295, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !13, line: 293)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !13, line: 293)
!2142 = !DILocation(line: 296, scope: !2140)
!2143 = !DILocation(line: 297, scope: !2140)
!2144 = !DILocation(line: 298, scope: !2140)
!2145 = !DILocation(line: 298, scope: !2141)
!2146 = !DILocation(line: 300, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !13, line: 298)
!2148 = distinct !DILexicalBlock(scope: !2141, file: !13, line: 298)
!2149 = !DILocation(line: 301, scope: !2147)
!2150 = !DILocation(line: 302, scope: !2147)
!2151 = !DILocation(line: 303, scope: !2147)
!2152 = !DILocation(line: 304, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !13, line: 303)
!2154 = !DILocation(line: 305, scope: !2153)
!2155 = !DILocation(line: 306, scope: !2134)
!2156 = !DILocation(line: 307, scope: !2134)
!2157 = !DILocation(line: 58, scope: !2088, inlinedAt: !2091)
!2158 = !DILocation(line: 318, scope: !1994)
!2159 = !DILocation(line: 320, scope: !1994)
!2160 = !DILocation(line: 0, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 320)
!2162 = !DILocation(line: 330, scope: !1994)
!2163 = !DILocation(line: 332, scope: !2005)
!2164 = !DILocation(line: 335, scope: !2005)
!2165 = !DILocation(line: 0, scope: !2005)
!2166 = !DILocation(line: 338, scope: !2005)
!2167 = !DILocation(line: 340, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2005, file: !13, line: 338)
!2169 = !DILocation(line: 47, scope: !2095, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 340, scope: !2168)
!2171 = !DILocation(line: 0, scope: !2088, inlinedAt: !2170)
!2172 = !DILocation(line: 48, scope: !2099, inlinedAt: !2170)
!2173 = !DILocation(line: 47, scope: !2100, inlinedAt: !2170)
!2174 = distinct !{!2174, !2169, !2175, !585}
!2175 = !DILocation(line: 56, scope: !2095, inlinedAt: !2170)
!2176 = !DILocation(line: 58, scope: !2088, inlinedAt: !2170)
!2177 = !DILocation(line: 342, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2168, file: !13, line: 341)
!2179 = distinct !{!2179, !2167, !2180, !585}
!2180 = !DILocation(line: 343, scope: !2168)
!2181 = !DILocation(line: 344, scope: !2168)
!2182 = !DILocation(line: 349, scope: !2168)
!2183 = !{!2026, !399, i64 4}
!2184 = !{!2026, !469, i64 20}
!2185 = !{!2026, !399, i64 0}
!2186 = !{!2026, !399, i64 60}
!2187 = !DILocation(line: 352, scope: !2168)
!2188 = distinct !{!2188, !2166, !2189, !585}
!2189 = !DILocation(line: 354, scope: !2005)
!2190 = !DILocation(line: 355, scope: !2005)
!2191 = !DILocation(line: 357, scope: !2005)
!2192 = !DILocation(line: 358, scope: !2005)
!2193 = !DILocation(line: 361, scope: !2005)
!2194 = !DILocation(line: 362, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !13, line: 361)
!2196 = distinct !DILexicalBlock(scope: !2005, file: !13, line: 361)
!2197 = !DILocation(line: 399, scope: !1994)
!2198 = !DILocation(line: 363, scope: !2196)
!2199 = !DILocation(line: 364, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !13, line: 363)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !13, line: 363)
!2202 = !DILocation(line: 365, scope: !2200)
!2203 = !DILocation(line: 366, scope: !2200)
!2204 = !DILocation(line: 369, scope: !2009)
!2205 = !{i64 0, i64 4, !880, i64 4, i64 4, !880, i64 8, i64 4, !880, i64 12, i64 4, !880, i64 16, i64 4, !468, i64 20, i64 4, !468, i64 24, i64 4, !468, i64 28, i64 4, !468, i64 32, i64 1, !2206, i64 36, i64 4, !880, i64 40, i64 4, !880, i64 44, i64 4, !880, i64 48, i64 4, !468, i64 52, i64 4, !880, i64 56, i64 4, !468, i64 60, i64 4, !880, i64 64, i64 4, !468, i64 68, i64 4, !468, i64 72, i64 4, !468, i64 76, i64 1, !2206}
!2206 = !{!533, !533, i64 0}
!2207 = !DILocation(line: 0, scope: !2009)
!2208 = !{i64 0, i64 4, !880, i64 4, i64 4, !880, i64 8, i64 4, !880, i64 12, i64 4, !468, i64 16, i64 4, !468, i64 20, i64 4, !468, i64 24, i64 4, !468, i64 28, i64 1, !2206, i64 32, i64 4, !880, i64 36, i64 4, !880, i64 40, i64 4, !880, i64 44, i64 4, !468, i64 48, i64 4, !880, i64 52, i64 4, !468, i64 56, i64 4, !880, i64 60, i64 4, !468, i64 64, i64 4, !468, i64 68, i64 4, !468, i64 72, i64 1, !2206}
!2209 = !{i64 0, i64 4, !880, i64 4, i64 4, !880, i64 8, i64 4, !880, i64 12, i64 4, !468, i64 16, i64 4, !880, i64 20, i64 4, !468, i64 24, i64 4, !880, i64 28, i64 4, !468, i64 32, i64 4, !468, i64 36, i64 4, !468, i64 40, i64 1, !2206}
!2210 = !{i64 0, i64 4, !880, i64 4, i64 4, !468, i64 8, i64 4, !468, i64 12, i64 4, !468, i64 16, i64 1, !2206}
!2211 = !DILocation(line: 370, scope: !2009)
!2212 = !DILocation(line: 371, scope: !2009)
!2213 = !DILocation(line: 375, scope: !2009)
!2214 = !DILocation(line: 376, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !13, line: 375)
!2216 = distinct !DILexicalBlock(scope: !2009, file: !13, line: 375)
!2217 = !DILocation(line: 377, scope: !2215)
!2218 = !DILocation(line: 380, scope: !2009)
!2219 = !DILocation(line: 381, scope: !2009)
!2220 = !DILocation(line: 382, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !13, line: 381)
!2222 = distinct !DILexicalBlock(scope: !2009, file: !13, line: 381)
!2223 = !DILocation(line: 384, scope: !2221)
!2224 = !DILocation(line: 385, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !13, line: 384)
!2226 = !DILocation(line: 388, scope: !2225)
!2227 = !DILocation(line: 0, scope: !2222)
!2228 = !DILocation(line: 389, scope: !2009)
!2229 = !DILocation(line: 400, scope: !2013)
!2230 = !DILocation(line: 0, scope: !2012)
!2231 = !DILocation(line: 402, scope: !2012)
!2232 = !{!2026, !469, i64 48}
!2233 = !DILocation(line: 404, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !13, line: 402)
!2235 = distinct !DILexicalBlock(scope: !2012, file: !13, line: 402)
!2236 = !DILocation(line: 405, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !13, line: 404)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !13, line: 404)
!2239 = !DILocation(line: 406, scope: !2237)
!2240 = !DILocation(line: 407, scope: !2237)
!2241 = !DILocation(line: 402, scope: !2235)
!2242 = distinct !{!2242, !2231, !2243, !585}
!2243 = !DILocation(line: 409, scope: !2012)
!2244 = !DILocation(line: 396, scope: !1994)
!2245 = !DILocation(line: 412, scope: !1994)
!2246 = !DILocation(line: 0, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 412)
!2248 = !DILocation(line: 421, scope: !1994)
!2249 = !DILocation(line: 425, scope: !1994)
!2250 = distinct !{!2250, !2022, !2251, !585}
!2251 = !DILocation(line: 430, scope: !1985)
!2252 = !DILocation(line: 428, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !13, line: 426)
!2254 = distinct !DILexicalBlock(scope: !1994, file: !13, line: 425)
!2255 = !DILocation(line: 429, scope: !2253)
!2256 = !DILocation(line: 431, scope: !1985)
!2257 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264}
!2259 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2257, file: !13, line: 798, type: !43)
!2260 = !DILocalVariable(name: "closure", arg: 5, scope: !2257, file: !13, line: 798, type: !44)
!2261 = !DILocalVariable(name: "size", arg: 4, scope: !2257, file: !13, line: 798, type: !29)
!2262 = !DILocalVariable(name: "min", arg: 3, scope: !2257, file: !13, line: 798, type: !29)
!2263 = !DILocalVariable(name: "f", arg: 2, scope: !2257, file: !13, line: 797, type: !39)
!2264 = !DILocalVariable(name: "user_context", arg: 1, scope: !2257, file: !13, line: 797, type: !43)
!2265 = !DILocation(line: 0, scope: !2257)
!2266 = !DILocation(line: 799, scope: !2257)
!2267 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2268)
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "closure", arg: 4, scope: !2267, file: !13, line: 788, type: !44)
!2270 = !DILocalVariable(name: "idx", arg: 3, scope: !2267, file: !13, line: 787, type: !29)
!2271 = !DILocalVariable(name: "f", arg: 2, scope: !2267, file: !13, line: 787, type: !66)
!2272 = !DILocalVariable(name: "user_context", arg: 1, scope: !2267, file: !13, line: 787, type: !43)
!2273 = !DILocation(line: 0, scope: !2267)
!2274 = !DILocation(line: 789, scope: !2267)
!2275 = distinct !DISubprogram(name: "worker_thread", linkageName: "?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2276)
!2276 = !{!2277}
!2277 = !DILocalVariable(name: "arg", arg: 1, scope: !2275, file: !13, line: 433, type: !43)
!2278 = !DILocation(line: 0, scope: !2275)
!2279 = !DILocation(line: 434, scope: !2275)
!2280 = !DILocation(line: 435, scope: !2275)
!2281 = !DILocation(line: 436, scope: !2275)
!2282 = !DILocation(line: 437, scope: !2275)
!2283 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z", scope: !3, file: !13, line: 439, type: !2284, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !29, !32, !32}
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2297, !2299}
!2287 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2283, file: !13, line: 439, type: !32)
!2288 = !DILocalVariable(name: "jobs", arg: 2, scope: !2283, file: !13, line: 439, type: !32)
!2289 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2283, file: !13, line: 439, type: !29)
!2290 = !DILocalVariable(name: "min_threads", scope: !2283, file: !13, line: 457, type: !29)
!2291 = !DILocalVariable(name: "workers_to_wake", scope: !2283, file: !13, line: 461, type: !29)
!2292 = !DILocalVariable(name: "stealable_jobs", scope: !2283, file: !13, line: 465, type: !64)
!2293 = !DILocalVariable(name: "job_has_acquires", scope: !2283, file: !13, line: 467, type: !64)
!2294 = !DILocalVariable(name: "job_may_block", scope: !2283, file: !13, line: 468, type: !64)
!2295 = !DILocalVariable(name: "i", scope: !2296, file: !13, line: 469, type: !29)
!2296 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 469)
!2297 = !DILocalVariable(name: "i", scope: !2298, file: !13, line: 527, type: !29)
!2298 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 527)
!2299 = !DILocalVariable(name: "nested_parallelism", scope: !2283, file: !13, line: 537, type: !64)
!2300 = !DILocation(line: 0, scope: !2283)
!2301 = !DILocation(line: 440, scope: !2283)
!2302 = !{!2029, !533, i64 1073}
!2303 = !DILocalVariable(name: "bytes", scope: !2304, file: !13, line: 148, type: !49)
!2304 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "?assert_zeroed@work_queue_t@Internal@Runtime@Halide@@QBEXXZ", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2305)
!2305 = !{!2306, !2303, !2308}
!2306 = !DILocalVariable(name: "this", arg: 1, scope: !2304, type: !2307, flags: DIFlagArtificial | DIFlagObjectPointer)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!2308 = !DILocalVariable(name: "limit", scope: !2304, file: !13, line: 149, type: !49)
!2309 = !DILocation(line: 0, scope: !2304, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 441, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !13, line: 440)
!2312 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 440)
!2313 = !DILocation(line: 150, scope: !2304, inlinedAt: !2310)
!2314 = !{!400, !400, i64 0}
!2315 = !DILocation(line: 151, scope: !2316, inlinedAt: !2310)
!2316 = distinct !DILexicalBlock(scope: !2304, file: !13, line: 150)
!2317 = distinct !{!2317, !2313, !2318, !585}
!2318 = !DILocation(line: 152, scope: !2304, inlinedAt: !2310)
!2319 = !DILocation(line: 153, scope: !2320, inlinedAt: !2310)
!2320 = distinct !DILexicalBlock(scope: !2304, file: !13, line: 153)
!2321 = !DILocation(line: 153, scope: !2322, inlinedAt: !2310)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !13, line: 153)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !13, line: 153)
!2324 = !DILocation(line: 446, scope: !2311)
!2325 = !{!2029, !469, i64 4}
!2326 = !DILocation(line: 447, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !13, line: 446)
!2328 = distinct !DILexicalBlock(scope: !2311, file: !13, line: 446)
!2329 = !DILocation(line: 448, scope: !2327)
!2330 = !DILocation(line: 449, scope: !2311)
!2331 = !DILocation(line: 450, scope: !2311)
!2332 = !DILocation(line: 451, scope: !2311)
!2333 = !DILocation(line: 0, scope: !2296)
!2334 = !DILocation(line: 469, scope: !2296)
!2335 = !DILocation(line: 487, scope: !2283)
!2336 = !DILocation(line: 468, scope: !2283)
!2337 = !DILocation(line: 457, scope: !2283)
!2338 = !DILocation(line: 470, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !13, line: 469)
!2340 = distinct !DILexicalBlock(scope: !2296, file: !13, line: 469)
!2341 = !DILocation(line: 476, scope: !2339)
!2342 = !DILocation(line: 480, scope: !2339)
!2343 = !DILocation(line: 481, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !13, line: 480)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !13, line: 480)
!2346 = !DILocation(line: 482, scope: !2344)
!2347 = !DILocation(line: 483, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !13, line: 482)
!2349 = !DILocation(line: 484, scope: !2348)
!2350 = !DILocation(line: 0, scope: !2345)
!2351 = !DILocation(line: 469, scope: !2340)
!2352 = distinct !{!2352, !2334, !2353, !585}
!2353 = !DILocation(line: 485, scope: !2296)
!2354 = !DILocation(line: 497, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !13, line: 487)
!2356 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 487)
!2357 = !DILocation(line: 503, scope: !2355)
!2358 = !{!2029, !469, i64 1076}
!2359 = !DILocation(line: 508, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !13, line: 505)
!2361 = !DILocation(line: 509, scope: !2360)
!2362 = distinct !{!2362, !2357, !2363, !585}
!2363 = !DILocation(line: 511, scope: !2355)
!2364 = !DILocation(line: 513, scope: !2355)
!2365 = !DILocation(line: 514, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !13, line: 513)
!2367 = distinct !DILexicalBlock(scope: !2355, file: !13, line: 513)
!2368 = !DILocation(line: 515, scope: !2366)
!2369 = !DILocation(line: 518, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !13, line: 518)
!2371 = distinct !DILexicalBlock(scope: !2356, file: !13, line: 516)
!2372 = !{!2026, !469, i64 56}
!2373 = !DILocation(line: 518, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !13, line: 518)
!2375 = distinct !DILexicalBlock(scope: !2370, file: !13, line: 518)
!2376 = !DILocation(line: 521, scope: !2371)
!2377 = !DILocation(line: 522, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !13, line: 521)
!2379 = distinct !DILexicalBlock(scope: !2371, file: !13, line: 521)
!2380 = !DILocation(line: 523, scope: !2378)
!2381 = !DILocation(line: 0, scope: !2298)
!2382 = !DILocation(line: 527, scope: !2298)
!2383 = !DILocation(line: 0, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !13, line: 527)
!2385 = distinct !DILexicalBlock(scope: !2298, file: !13, line: 527)
!2386 = !DILocation(line: 537, scope: !2283)
!2387 = !DILocation(line: 542, scope: !2283)
!2388 = !DILocation(line: 0, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 542)
!2390 = !DILocation(line: 550, scope: !2283)
!2391 = !DILocation(line: 551, scope: !2283)
!2392 = !DILocation(line: 530, scope: !2384)
!2393 = !DILocation(line: 531, scope: !2384)
!2394 = !DILocation(line: 532, scope: !2384)
!2395 = !DILocation(line: 533, scope: !2384)
!2396 = distinct !{!2396, !2382, !2397, !585}
!2397 = !DILocation(line: 535, scope: !2298)
!2398 = !DILocation(line: 552, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !13, line: 551)
!2400 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 551)
!2401 = !DILocation(line: 553, scope: !2399)
!2402 = !DILocation(line: 554, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !13, line: 553)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !13, line: 553)
!2405 = !DILocation(line: 555, scope: !2403)
!2406 = !DILocation(line: 558, scope: !2283)
!2407 = !DILocation(line: 559, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !13, line: 558)
!2409 = distinct !DILexicalBlock(scope: !2283, file: !13, line: 558)
!2410 = !DILocation(line: 0, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !13, line: 559)
!2412 = !DILocation(line: 565, scope: !2283)
!2413 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2414)
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DILocalVariable(name: "closure", arg: 4, scope: !2413, file: !13, line: 590, type: !44)
!2416 = !DILocalVariable(name: "idx", arg: 3, scope: !2413, file: !13, line: 589, type: !29)
!2417 = !DILocalVariable(name: "f", arg: 2, scope: !2413, file: !13, line: 589, type: !66)
!2418 = !DILocalVariable(name: "user_context", arg: 1, scope: !2413, file: !13, line: 589, type: !43)
!2419 = !DILocation(line: 0, scope: !2413)
!2420 = !DILocation(line: 591, scope: !2413)
!2421 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428}
!2423 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2421, file: !13, line: 596, type: !43)
!2424 = !DILocalVariable(name: "closure", arg: 5, scope: !2421, file: !13, line: 595, type: !44)
!2425 = !DILocalVariable(name: "extent", arg: 4, scope: !2421, file: !13, line: 595, type: !29)
!2426 = !DILocalVariable(name: "min", arg: 3, scope: !2421, file: !13, line: 595, type: !29)
!2427 = !DILocalVariable(name: "f", arg: 2, scope: !2421, file: !13, line: 594, type: !39)
!2428 = !DILocalVariable(name: "user_context", arg: 1, scope: !2421, file: !13, line: 594, type: !43)
!2429 = !DILocation(line: 0, scope: !2421)
!2430 = !DILocation(line: 597, scope: !2421)
!2431 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438}
!2433 = !DILocalVariable(name: "closure", arg: 5, scope: !2431, file: !13, line: 601, type: !44)
!2434 = !DILocalVariable(name: "size", arg: 4, scope: !2431, file: !13, line: 601, type: !29)
!2435 = !DILocalVariable(name: "min", arg: 3, scope: !2431, file: !13, line: 601, type: !29)
!2436 = !DILocalVariable(name: "f", arg: 2, scope: !2431, file: !13, line: 600, type: !66)
!2437 = !DILocalVariable(name: "user_context", arg: 1, scope: !2431, file: !13, line: 600, type: !43)
!2438 = !DILocalVariable(name: "job", scope: !2431, file: !13, line: 606, type: !33)
!2439 = !DILocation(line: 0, scope: !2431)
!2440 = !DILocation(line: 602, scope: !2431)
!2441 = !DILocation(line: 606, scope: !2431)
!2442 = !DILocation(line: 607, scope: !2431)
!2443 = !DILocation(line: 608, scope: !2431)
!2444 = !DILocation(line: 609, scope: !2431)
!2445 = !DILocation(line: 610, scope: !2431)
!2446 = !DILocation(line: 611, scope: !2431)
!2447 = !DILocation(line: 612, scope: !2431)
!2448 = !DILocation(line: 613, scope: !2431)
!2449 = !DILocation(line: 614, scope: !2431)
!2450 = !DILocation(line: 615, scope: !2431)
!2451 = !{!2026, !399, i64 8}
!2452 = !DILocation(line: 616, scope: !2431)
!2453 = !{!2026, !399, i64 36}
!2454 = !DILocation(line: 617, scope: !2431)
!2455 = !DILocation(line: 618, scope: !2431)
!2456 = !DILocation(line: 619, scope: !2431)
!2457 = !DILocation(line: 620, scope: !2431)
!2458 = !DILocation(line: 621, scope: !2431)
!2459 = !DILocation(line: 622, scope: !2431)
!2460 = !DILocation(line: 623, scope: !2431)
!2461 = !DILocation(line: 624, scope: !2431)
!2462 = !DILocation(line: 625, scope: !2431)
!2463 = !DILocation(line: 626, scope: !2431)
!2464 = !DILocation(line: 627, scope: !2431)
!2465 = !DILocation(line: 628, scope: !2431)
!2466 = !DILocation(line: 629, scope: !2431)
!2467 = !DILocation(line: 630, scope: !2431)
!2468 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2477, !2478}
!2470 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2468, file: !13, line: 634, type: !43)
!2471 = !DILocalVariable(name: "tasks", arg: 3, scope: !2468, file: !13, line: 633, type: !145)
!2472 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2468, file: !13, line: 632, type: !29)
!2473 = !DILocalVariable(name: "user_context", arg: 1, scope: !2468, file: !13, line: 632, type: !43)
!2474 = !DILocalVariable(name: "jobs", scope: !2468, file: !13, line: 635, type: !32)
!2475 = !DILocalVariable(name: "i", scope: !2476, file: !13, line: 637, type: !29)
!2476 = distinct !DILexicalBlock(scope: !2468, file: !13, line: 637)
!2477 = !DILocalVariable(name: "exit_status", scope: !2468, file: !13, line: 659, type: !29)
!2478 = !DILocalVariable(name: "i", scope: !2479, file: !13, line: 660, type: !29)
!2479 = distinct !DILexicalBlock(scope: !2468, file: !13, line: 660)
!2480 = !DILocation(line: 0, scope: !2468)
!2481 = !DILocation(line: 635, scope: !2468)
!2482 = !DILocation(line: 0, scope: !2476)
!2483 = !DILocation(line: 637, scope: !2476)
!2484 = !DILocation(line: 653, scope: !2468)
!2485 = !DILocation(line: 638, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !13, line: 637)
!2487 = distinct !DILexicalBlock(scope: !2476, file: !13, line: 637)
!2488 = !{!2027, !469, i64 24}
!2489 = !DILocation(line: 640, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !13, line: 638)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !13, line: 638)
!2492 = !DILocation(line: 641, scope: !2490)
!2493 = !DILocation(line: 643, scope: !2486)
!2494 = !{i64 0, i64 4, !880, i64 4, i64 4, !880, i64 8, i64 4, !880, i64 12, i64 4, !880, i64 16, i64 4, !468, i64 20, i64 4, !468, i64 24, i64 4, !468, i64 28, i64 4, !468, i64 32, i64 1, !2206}
!2495 = !DILocation(line: 644, scope: !2486)
!2496 = !DILocation(line: 645, scope: !2486)
!2497 = !DILocation(line: 646, scope: !2486)
!2498 = !DILocation(line: 647, scope: !2486)
!2499 = !DILocation(line: 648, scope: !2486)
!2500 = !DILocation(line: 649, scope: !2486)
!2501 = !DILocation(line: 650, scope: !2486)
!2502 = !DILocation(line: 651, scope: !2486)
!2503 = !DILocation(line: 637, scope: !2487)
!2504 = distinct !{!2504, !2483, !2505, !585}
!2505 = !DILocation(line: 651, scope: !2476)
!2506 = !DILocation(line: 657, scope: !2468)
!2507 = !DILocation(line: 658, scope: !2468)
!2508 = !DILocation(line: 0, scope: !2479)
!2509 = !DILocation(line: 660, scope: !2479)
!2510 = !DILocation(line: 668, scope: !2468)
!2511 = !DILocation(line: 663, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !13, line: 660)
!2513 = distinct !DILexicalBlock(scope: !2479, file: !13, line: 660)
!2514 = !DILocation(line: 664, scope: !2512)
!2515 = !DILocation(line: 660, scope: !2513)
!2516 = distinct !{!2516, !2509, !2517, !585}
!2517 = !DILocation(line: 667, scope: !2479)
!2518 = !DILocation(line: 670, scope: !2468)
!2519 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "n", arg: 2, scope: !2519, file: !13, line: 715, type: !29)
!2522 = !DILocalVariable(name: "s", arg: 1, scope: !2519, file: !13, line: 715, type: !56)
!2523 = !DILocalVariable(name: "sem", scope: !2519, file: !13, line: 716, type: !368)
!2524 = !DILocation(line: 0, scope: !2519)
!2525 = !DILocation(line: 717, scope: !2519)
!2526 = !DILocalVariable(name: "val", arg: 2, scope: !2527, file: !6, line: 154, type: !2530)
!2527 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "??$atomic_store_release@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPAH0@Z", scope: !476, file: !6, line: 154, type: !2528, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2533, retainedNodes: !2531)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2530, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!2531 = !{!2526, !2532}
!2532 = !DILocalVariable(name: "addr", arg: 1, scope: !2527, file: !6, line: 154, type: !2530)
!2533 = !{!2534}
!2534 = !DITemplateTypeParameter(name: "T", type: !29)
!2535 = !DILocation(line: 0, scope: !2527, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 717, scope: !2519)
!2537 = !DILocation(line: 155, scope: !2527, inlinedAt: !2536)
!2538 = !DILocation(line: 156, scope: !2527, inlinedAt: !2536)
!2539 = !DILocation(line: 718, scope: !2519)
!2540 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546}
!2542 = !DILocalVariable(name: "n", arg: 2, scope: !2540, file: !13, line: 735, type: !29)
!2543 = !DILocalVariable(name: "s", arg: 1, scope: !2540, file: !13, line: 735, type: !56)
!2544 = !DILocalVariable(name: "sem", scope: !2540, file: !13, line: 739, type: !368)
!2545 = !DILocalVariable(name: "expected", scope: !2540, file: !13, line: 741, type: !29)
!2546 = !DILocalVariable(name: "desired", scope: !2540, file: !13, line: 742, type: !29)
!2547 = !DILocation(line: 0, scope: !2540)
!2548 = !DILocation(line: 736, scope: !2540)
!2549 = !DILocation(line: 743, scope: !2540)
!2550 = !DILocalVariable(name: "val", arg: 2, scope: !2551, file: !6, line: 140, type: !2530)
!2551 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "??$atomic_load_acquire@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAXPAH0@Z", scope: !476, file: !6, line: 140, type: !2528, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2533, retainedNodes: !2552)
!2552 = !{!2550, !2553}
!2553 = !DILocalVariable(name: "addr", arg: 1, scope: !2551, file: !6, line: 140, type: !2530)
!2554 = !DILocation(line: 0, scope: !2551, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 743, scope: !2540)
!2556 = !DILocation(line: 141, scope: !2551, inlinedAt: !2555)
!2557 = !DILocation(line: 142, scope: !2551, inlinedAt: !2555)
!2558 = !DILocation(line: 744, scope: !2540)
!2559 = !DILocation(line: 745, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2540, file: !13, line: 744)
!2561 = !DILocation(line: 746, scope: !2560)
!2562 = !DILocalVariable(name: "desired", arg: 3, scope: !2563, file: !6, line: 118, type: !2530)
!2563 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "??$atomic_cas_weak_relacq_relaxed@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAH00@Z", scope: !476, file: !6, line: 118, type: !2564, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2533, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!64, !2530, !2530, !2530}
!2566 = !{!2562, !2567, !2568}
!2567 = !DILocalVariable(name: "expected", arg: 2, scope: !2563, file: !6, line: 118, type: !2530)
!2568 = !DILocalVariable(name: "addr", arg: 1, scope: !2563, file: !6, line: 118, type: !2530)
!2569 = !DILocation(line: 0, scope: !2563, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 746, scope: !2560)
!2571 = !DILocalVariable(name: "desired", arg: 3, scope: !2572, file: !6, line: 102, type: !2530)
!2572 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<int>", linkageName: "??$cas_strong_sequentially_consistent_helper@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YA_NPAH00@Z", scope: !476, file: !6, line: 102, type: !2564, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2533, retainedNodes: !2573)
!2573 = !{!2571, !2574, !2575, !2576, !2577}
!2574 = !DILocalVariable(name: "expected", arg: 2, scope: !2572, file: !6, line: 102, type: !2530)
!2575 = !DILocalVariable(name: "addr", arg: 1, scope: !2572, file: !6, line: 102, type: !2530)
!2576 = !DILocalVariable(name: "oldval", scope: !2572, file: !6, line: 103, type: !29)
!2577 = !DILocalVariable(name: "gotval", scope: !2572, file: !6, line: 104, type: !29)
!2578 = !DILocation(line: 0, scope: !2572, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 119, scope: !2563, inlinedAt: !2570)
!2580 = !DILocation(line: 104, scope: !2572, inlinedAt: !2579)
!2581 = !DILocation(line: 106, scope: !2572, inlinedAt: !2579)
!2582 = distinct !{!2582, !2558, !2583, !585}
!2583 = !DILocation(line: 747, scope: !2540)
!2584 = !DILocation(line: 749, scope: !2540)
!2585 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2586)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "n", arg: 2, scope: !2585, file: !13, line: 721, type: !29)
!2588 = !DILocalVariable(name: "s", arg: 1, scope: !2585, file: !13, line: 721, type: !56)
!2589 = !DILocalVariable(name: "sem", scope: !2585, file: !13, line: 722, type: !368)
!2590 = !DILocalVariable(name: "old_val", scope: !2585, file: !13, line: 723, type: !29)
!2591 = !DILocation(line: 0, scope: !2585)
!2592 = !DILocation(line: 723, scope: !2585)
!2593 = !DILocalVariable(name: "val", arg: 2, scope: !2594, file: !6, line: 97, type: !29)
!2594 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "??$atomic_fetch_add_acquire_release@H@?A0xE93CD500@Synchronization@Internal@Runtime@Halide@@YAHPAHH@Z", scope: !476, file: !6, line: 97, type: !2595, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2533, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!29, !2530, !29}
!2597 = !{!2593, !2598}
!2598 = !DILocalVariable(name: "addr", arg: 1, scope: !2594, file: !6, line: 97, type: !2530)
!2599 = !DILocation(line: 0, scope: !2594, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 723, scope: !2585)
!2601 = !DILocation(line: 98, scope: !2594, inlinedAt: !2600)
!2602 = !DILocation(line: 725, scope: !2585)
!2603 = !DILocation(line: 727, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !13, line: 725)
!2605 = distinct !DILexicalBlock(scope: !2585, file: !13, line: 725)
!2606 = !DILocation(line: 728, scope: !2604)
!2607 = !DILocation(line: 729, scope: !2604)
!2608 = !DILocation(line: 730, scope: !2604)
!2609 = !DILocation(line: 731, scope: !2604)
!2610 = !DILocation(line: 732, scope: !2585)
!2611 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !2612, file: !13, line: 584, type: !2613, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!2612 = !DINamespace(scope: null)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null}
!2615 = !DILocation(line: 585, scope: !2611)
!2616 = !DILocation(line: 586, scope: !2611)
!2617 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !2613, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2618)
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "i", scope: !2620, file: !13, line: 702, type: !29)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !13, line: 702)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !13, line: 690)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !13, line: 690)
!2623 = !DILocation(line: 690, scope: !2617)
!2624 = !DILocation(line: 693, scope: !2621)
!2625 = !DILocation(line: 695, scope: !2621)
!2626 = !DILocation(line: 696, scope: !2621)
!2627 = !DILocation(line: 697, scope: !2621)
!2628 = !DILocation(line: 698, scope: !2621)
!2629 = !DILocation(line: 699, scope: !2621)
!2630 = !DILocation(line: 0, scope: !2620)
!2631 = !DILocation(line: 702, scope: !2620)
!2632 = !DILocalVariable(name: "this", arg: 1, scope: !2633, type: !2637, flags: DIFlagArtificial | DIFlagObjectPointer)
!2633 = distinct !DISubprogram(name: "reset", linkageName: "?reset@work_queue_t@Internal@Runtime@Halide@@QAEXXZ", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !2634)
!2634 = !{!2632, !2635, !2636}
!2635 = !DILocalVariable(name: "bytes", scope: !2633, file: !13, line: 160, type: !372)
!2636 = !DILocalVariable(name: "limit", scope: !2633, file: !13, line: 161, type: !372)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!2638 = !DILocation(line: 0, scope: !2633, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 707, scope: !2621)
!2640 = !DILocation(line: 162, scope: !2633, inlinedAt: !2639)
!2641 = !DILocation(line: 708, scope: !2621)
!2642 = !DILocation(line: 703, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !13, line: 702)
!2644 = distinct !DILexicalBlock(scope: !2620, file: !13, line: 702)
!2645 = !DILocation(line: 702, scope: !2644)
!2646 = distinct !{!2646, !2631, !2647, !585}
!2647 = !DILocation(line: 704, scope: !2620)
!2648 = !DILocation(line: 709, scope: !2617)
!2649 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !1956, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2650)
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "n", arg: 1, scope: !2649, file: !13, line: 672, type: !29)
!2652 = !DILocalVariable(name: "old", scope: !2649, file: !13, line: 683, type: !29)
!2653 = !DILocation(line: 0, scope: !2649)
!2654 = !DILocation(line: 673, scope: !2649)
!2655 = !DILocation(line: 674, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !13, line: 673)
!2657 = distinct !DILexicalBlock(scope: !2649, file: !13, line: 673)
!2658 = !DILocation(line: 679, scope: !2649)
!2659 = !DILocation(line: 680, scope: !2649)
!2660 = !DILocation(line: 681, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !13, line: 680)
!2662 = distinct !DILexicalBlock(scope: !2649, file: !13, line: 680)
!2663 = !DILocation(line: 682, scope: !2661)
!2664 = !DILocation(line: 683, scope: !2649)
!2665 = !DILocation(line: 684, scope: !2649)
!2666 = !DILocation(line: 685, scope: !2649)
!2667 = !DILocation(line: 686, scope: !2649)
!2668 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !2669, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!123, !123}
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "f", arg: 1, scope: !2668, file: !13, line: 751, type: !123)
!2673 = !DILocalVariable(name: "result", scope: !2668, file: !13, line: 752, type: !123)
!2674 = !DILocation(line: 0, scope: !2668)
!2675 = !DILocation(line: 752, scope: !2668)
!2676 = !DILocation(line: 753, scope: !2668)
!2677 = !DILocation(line: 754, scope: !2668)
!2678 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !2679, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!129, !129}
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "f", arg: 1, scope: !2678, file: !13, line: 757, type: !129)
!2683 = !DILocalVariable(name: "result", scope: !2678, file: !13, line: 758, type: !129)
!2684 = !DILocation(line: 0, scope: !2678)
!2685 = !DILocation(line: 758, scope: !2678)
!2686 = !DILocation(line: 759, scope: !2678)
!2687 = !DILocation(line: 760, scope: !2678)
!2688 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !2689, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!135, !135}
!2691 = !{!2692, !2693}
!2692 = !DILocalVariable(name: "f", arg: 1, scope: !2688, file: !13, line: 763, type: !135)
!2693 = !DILocalVariable(name: "result", scope: !2688, file: !13, line: 764, type: !135)
!2694 = !DILocation(line: 0, scope: !2688)
!2695 = !DILocation(line: 764, scope: !2688)
!2696 = !DILocation(line: 765, scope: !2688)
!2697 = !DILocation(line: 766, scope: !2688)
!2698 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !2699, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !135, !123, !129, !141, !148, !154, !160}
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708}
!2702 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !2698, file: !13, line: 776, type: !160)
!2703 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !2698, file: !13, line: 775, type: !154)
!2704 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !2698, file: !13, line: 774, type: !148)
!2705 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !2698, file: !13, line: 773, type: !141)
!2706 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !2698, file: !13, line: 772, type: !129)
!2707 = !DILocalVariable(name: "do_task", arg: 2, scope: !2698, file: !13, line: 771, type: !123)
!2708 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !2698, file: !13, line: 770, type: !135)
!2709 = !DILocation(line: 0, scope: !2698)
!2710 = !DILocation(line: 778, scope: !2698)
!2711 = !DILocation(line: 779, scope: !2698)
!2712 = !DILocation(line: 780, scope: !2698)
!2713 = !DILocation(line: 781, scope: !2698)
!2714 = !DILocation(line: 782, scope: !2698)
!2715 = !DILocation(line: 783, scope: !2698)
!2716 = !DILocation(line: 784, scope: !2698)
!2717 = !DILocation(line: 785, scope: !2698)
!2718 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2724}
!2720 = !DILocalVariable(name: "closure", arg: 5, scope: !2718, file: !13, line: 793, type: !44)
!2721 = !DILocalVariable(name: "size", arg: 4, scope: !2718, file: !13, line: 793, type: !29)
!2722 = !DILocalVariable(name: "min", arg: 3, scope: !2718, file: !13, line: 793, type: !29)
!2723 = !DILocalVariable(name: "f", arg: 2, scope: !2718, file: !13, line: 792, type: !66)
!2724 = !DILocalVariable(name: "user_context", arg: 1, scope: !2718, file: !13, line: 792, type: !43)
!2725 = !DILocation(line: 0, scope: !2718)
!2726 = !DILocation(line: 794, scope: !2718)
!2727 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2728)
!2728 = !{!2729, !2730, !2731, !2732}
!2729 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2727, file: !13, line: 804, type: !43)
!2730 = !DILocalVariable(name: "tasks", arg: 3, scope: !2727, file: !13, line: 803, type: !145)
!2731 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2727, file: !13, line: 802, type: !29)
!2732 = !DILocalVariable(name: "user_context", arg: 1, scope: !2727, file: !13, line: 802, type: !43)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 805, scope: !2727)
!2735 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2736)
!2736 = !{!2737, !2738}
!2737 = !DILocalVariable(name: "count", arg: 2, scope: !2735, file: !13, line: 808, type: !29)
!2738 = !DILocalVariable(name: "sema", arg: 1, scope: !2735, file: !13, line: 808, type: !56)
!2739 = !DILocation(line: 0, scope: !2735)
!2740 = !DILocation(line: 809, scope: !2735)
!2741 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2742)
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "count", arg: 2, scope: !2741, file: !13, line: 812, type: !29)
!2744 = !DILocalVariable(name: "sema", arg: 1, scope: !2741, file: !13, line: 812, type: !56)
!2745 = !DILocation(line: 0, scope: !2741)
!2746 = !DILocation(line: 813, scope: !2741)
!2747 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2748)
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "count", arg: 2, scope: !2747, file: !13, line: 816, type: !29)
!2750 = !DILocalVariable(name: "sema", arg: 1, scope: !2747, file: !13, line: 816, type: !56)
!2751 = !DILocation(line: 0, scope: !2747)
!2752 = !DILocation(line: 817, scope: !2747)
