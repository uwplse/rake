; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp"
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
define weak dso_local i8* @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z"(i8* %0) #0 !dbg !392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.value(metadata i8* %0, metadata !397, metadata !DIExpression()), !dbg !398
  %2 = bitcast i8* %0 to void (i8*)**, !dbg !399
  %3 = load void (i8*)*, void (i8*)** %2, align 4, !dbg !399, !tbaa !400
  %4 = getelementptr inbounds i8, i8* %0, i32 4, !dbg !399
  %5 = bitcast i8* %4 to i8**, !dbg !399
  %6 = load i8*, i8** %5, align 4, !dbg !399, !tbaa !405
  tail call void %3(i8* %6) #6, !dbg !399
  ret i8* null, !dbg !406
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_host_cpu_count() local_unnamed_addr #0 !dbg !407 {
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@GHJEOHAG@NUMBER_OF_PROCESSORS?$AA@", i32 0, i32 0)) #6, !dbg !412
  call void @llvm.dbg.value(metadata i8* %1, metadata !411, metadata !DIExpression()), !dbg !413
  %2 = icmp eq i8* %1, null, !dbg !414
  br i1 %2, label %5, label %3, !dbg !414

3:                                                ; preds = %0
  %4 = tail call i32 @atoi(i8* nonnull %1) #6, !dbg !415
  br label %5, !dbg !415

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 8, %0 ], !dbg !418
  ret i32 %6, !dbg !419
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_thread* @halide_spawn_thread(void (i8*)* %0, i8* %1) local_unnamed_addr #0 !dbg !420 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !424, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !425, metadata !DIExpression()), !dbg !427
  %3 = tail call i8* @malloc(i32 12) #6, !dbg !428
  call void @llvm.dbg.value(metadata i8* %3, metadata !426, metadata !DIExpression()), !dbg !427
  %4 = bitcast i8* %3 to void (i8*)**, !dbg !429
  store void (i8*)* %0, void (i8*)** %4, align 4, !dbg !429, !tbaa !400
  %5 = getelementptr inbounds i8, i8* %3, i32 4, !dbg !430
  %6 = bitcast i8* %5 to i8**, !dbg !430
  store i8* %1, i8** %6, align 4, !dbg !430, !tbaa !405
  %7 = tail call x86_stdcallcc i8* @"\01_CreateThread@24"(i8* null, i32 0, i8* (i8*)* nonnull @"?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z", i8* %3, i32 0, i32* null) #6, !dbg !431
  %8 = getelementptr inbounds i8, i8* %3, i32 8, !dbg !431
  %9 = bitcast i8* %8 to i8**, !dbg !431
  store i8* %7, i8** %9, align 4, !dbg !431, !tbaa !432
  %10 = bitcast i8* %3 to %struct.halide_thread*, !dbg !433
  ret %struct.halide_thread* %10, !dbg !433
}

declare dso_local i8* @malloc(i32) local_unnamed_addr #3

declare dso_local x86_stdcallcc i8* @"\01_CreateThread@24"(i8*, i32, i8* (i8*)*, i8*, i32, i32*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_join_thread(%struct.halide_thread* %0) local_unnamed_addr #0 !dbg !434 {
  call void @llvm.dbg.value(metadata %struct.halide_thread* %0, metadata !438, metadata !DIExpression()), !dbg !440
  %2 = bitcast %struct.halide_thread* %0 to %"struct.Halide::Runtime::Internal::spawned_thread"*, !dbg !441
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::spawned_thread"* %2, metadata !439, metadata !DIExpression()), !dbg !440
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::spawned_thread", %"struct.Halide::Runtime::Internal::spawned_thread"* %2, i32 0, i32 2, !dbg !442
  %4 = load i8*, i8** %3, align 4, !dbg !442, !tbaa !432
  %5 = tail call x86_stdcallcc i32 @"\01_WaitForSingleObject@8"(i8* %4, i32 -1) #6, !dbg !442
  %6 = bitcast %struct.halide_thread* %0 to i8*, !dbg !443
  tail call void @free(i8* %6) #6, !dbg !443
  ret void, !dbg !444
}

declare dso_local x86_stdcallcc i32 @"\01_WaitForSingleObject@8"(i8*, i32) local_unnamed_addr #3

declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !445 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", align 8
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !447, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i32 40, metadata !449, metadata !DIExpression()), !dbg !469
  %3 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !470
  %4 = load i32, i32* %3, align 4, !dbg !470, !tbaa !471
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i8*
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, i32 0, i32 3
  %12 = ptrtoint %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2 to i32
  br label %13, !dbg !473

13:                                               ; preds = %58, %1
  %14 = phi i32 [ %4, %1 ], [ %59, %58 ]
  %15 = phi i32 [ 40, %1 ], [ %60, %58 ]
  br label %16, !dbg !474

16:                                               ; preds = %13, %20
  %17 = phi i32 [ %23, %20 ], [ %14, %13 ], !dbg !469
  call void @llvm.dbg.value(metadata i32 %15, metadata !449, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i32 %17, metadata !461, metadata !DIExpression()), !dbg !469
  %18 = and i32 %17, 1, !dbg !474
  %19 = icmp eq i32 %18, 0, !dbg !474
  br i1 %19, label %20, label %25, !dbg !474

20:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 %17, metadata !461, metadata !DIExpression()), !dbg !469
  %21 = or i32 %17, 1, !dbg !475
  call void @llvm.dbg.value(metadata i32 %21, metadata !462, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i32* %3, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %17, metadata !495, metadata !DIExpression()), !dbg !499
  %22 = cmpxchg i32* %3, i32 %17, i32 %21 seq_cst seq_cst, !dbg !501
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !501
  call void @llvm.dbg.value(metadata i32 %23, metadata !496, metadata !DIExpression()), !dbg !499
  %24 = icmp eq i32 %17, %23, !dbg !502
  br i1 %24, label %61, label %16

25:                                               ; preds = %16
  %26 = icmp ugt i32 %17, 3, !dbg !503
  %27 = icmp sgt i32 %15, 0
  %28 = and i1 %26, %27, !dbg !503
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !504, metadata !DIExpression()), !dbg !508
  br i1 %28, label %29, label %34, !dbg !503

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 %15, metadata !449, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !469
  %30 = icmp sgt i32 %15, 1, !dbg !510
  br i1 %30, label %31, label %34, !dbg !503

31:                                               ; preds = %29
  %32 = add nsw i32 %15, -1, !dbg !511
  call void @llvm.dbg.value(metadata i32 %32, metadata !449, metadata !DIExpression()), !dbg !469
  call void @halide_thread_yield() #6, !dbg !514
  %33 = load i32, i32* %3, align 4, !dbg !517, !tbaa !471
  br label %58, !dbg !518

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %15, %25 ], [ 0, %29 ], !dbg !469
  call void @llvm.dbg.value(metadata i32 %35, metadata !449, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #7, !dbg !519
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !466, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !520, metadata !DIExpression()) #7, !dbg !523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !525, metadata !DIExpression()) #7, !dbg !529
  store i8 0, i8* %6, align 8, !dbg !531, !tbaa !532
  call x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !537
  call x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64* nonnull %8) #6, !dbg !539
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !540, !tbaa !541
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %10, align 4, !dbg !540, !tbaa !543
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !540, !tbaa !544
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !545, metadata !DIExpression()), !dbg !548
  store i8 1, i8* %6, align 8, !dbg !550, !tbaa !532
  call void @llvm.dbg.value(metadata i32 %17, metadata !461, metadata !DIExpression()), !dbg !469
  %36 = and i32 %17, -4, !dbg !551
  call void @llvm.dbg.value(metadata i32 %36, metadata !467, metadata !DIExpression()), !dbg !552
  %37 = icmp eq i32 %36, 0, !dbg !553
  br i1 %37, label %38, label %39, !dbg !553

38:                                               ; preds = %34
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %11, align 8, !dbg !554, !tbaa !544
  br label %41, !dbg !557

39:                                               ; preds = %34
  %40 = inttoptr i32 %36 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !551
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, metadata !467, metadata !DIExpression()), !dbg !552
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %40, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %9, align 8, !dbg !558, !tbaa !541
  br label %41, !dbg !560

41:                                               ; preds = %39, %38
  call void @llvm.dbg.value(metadata i32 %17, metadata !461, metadata !DIExpression()), !dbg !469
  %42 = and i32 %17, 3, !dbg !561
  %43 = or i32 %42, %12, !dbg !561
  call void @llvm.dbg.value(metadata i32 %43, metadata !468, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32* undef, metadata !562, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32* undef, metadata !565, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32* %3, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 %17, metadata !495, metadata !DIExpression()), !dbg !569
  %44 = cmpxchg i32* %3, i32 %17, i32 %43 seq_cst seq_cst, !dbg !571
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !571
  call void @llvm.dbg.value(metadata i32 %45, metadata !496, metadata !DIExpression()), !dbg !569
  %46 = icmp eq i32 %17, %45, !dbg !572
  br i1 %46, label %47, label %55, !dbg !573

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !574, metadata !DIExpression()) #7, !dbg !577
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !581
  %48 = load i8, i8* %6, align 8, !dbg !582, !tbaa !532, !range !583
  %49 = icmp eq i8 %48, 0, !dbg !582
  br i1 %49, label %53, label %50, !dbg !582

50:                                               ; preds = %47, %50
  call x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !584
  %51 = load i8, i8* %6, align 8, !dbg !582, !tbaa !532, !range !583
  %52 = icmp eq i8 %51, 0, !dbg !582
  br i1 %52, label %53, label %50, !dbg !582, !llvm.loop !586

53:                                               ; preds = %50, %47
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !589
  call void @llvm.dbg.value(metadata i32 40, metadata !449, metadata !DIExpression()), !dbg !469
  %54 = load i32, i32* %3, align 4, !dbg !590, !tbaa !471
  br label %55, !dbg !591

55:                                               ; preds = %53, %41
  %56 = phi i32 [ %54, %53 ], [ %45, %41 ], !dbg !552
  %57 = phi i32 [ 40, %53 ], [ %35, %41 ], !dbg !469
  call void @llvm.dbg.value(metadata i32 %57, metadata !449, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !592, metadata !DIExpression()) #7, !dbg !595
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %2, metadata !597, metadata !DIExpression()) #7, !dbg !600
  call x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !603
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #7, !dbg !605
  br label %58, !dbg !473

58:                                               ; preds = %55, %31
  %59 = phi i32 [ %33, %31 ], [ %56, %55 ]
  %60 = phi i32 [ %32, %31 ], [ %57, %55 ]
  br label %13, !dbg !474, !llvm.loop !606

61:                                               ; preds = %20
  ret void, !dbg !608
}

declare dso_local void @halide_thread_yield() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %0) local_unnamed_addr #4 align 2 !dbg !609 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, metadata !611, metadata !DIExpression()), !dbg !633
  %2 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::word_lock", %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %0, i32 0, i32 0, !dbg !634
  %3 = load i32, i32* %2, align 4, !dbg !634, !tbaa !471
  call void @llvm.dbg.value(metadata i32* undef, metadata !635, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i32* undef, metadata !640, metadata !DIExpression()), !dbg !641
  br label %4, !dbg !643

4:                                                ; preds = %10, %1
  %5 = phi i32 [ %3, %1 ], [ %13, %10 ], !dbg !644
  call void @llvm.dbg.value(metadata i32 %5, metadata !612, metadata !DIExpression()), !dbg !633
  %6 = and i32 %5, 2, !dbg !645
  %7 = icmp ne i32 %6, 0, !dbg !645
  call void @llvm.dbg.value(metadata i1 %7, metadata !613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !646
  call void @llvm.dbg.value(metadata i1 undef, metadata !615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !646
  %8 = icmp ult i32 %5, 4
  %9 = or i1 %8, %7, !dbg !647
  call void @llvm.dbg.value(metadata i1 %8, metadata !615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !646
  br i1 %9, label %64, label %10, !dbg !647

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %5, metadata !612, metadata !DIExpression()), !dbg !633
  %11 = or i32 %5, 2, !dbg !648
  call void @llvm.dbg.value(metadata i32 %11, metadata !616, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32* %2, metadata !484, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32* %2, metadata !494, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 %5, metadata !495, metadata !DIExpression()), !dbg !651
  %12 = cmpxchg i32* %2, i32 %5, i32 %11 seq_cst seq_cst, !dbg !653
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !653
  call void @llvm.dbg.value(metadata i32 %13, metadata !496, metadata !DIExpression()), !dbg !651
  %14 = icmp eq i32 %5, %13, !dbg !654
  br i1 %14, label %15, label %4

15:                                               ; preds = %10, %62
  %16 = phi i32 [ %63, %62 ], [ %5, %10 ], !dbg !633
  call void @llvm.dbg.value(metadata i32 %16, metadata !612, metadata !DIExpression()), !dbg !633
  %17 = and i32 %16, -4, !dbg !655
  %18 = inttoptr i32 %17 to %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, !dbg !655
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !617, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !619, metadata !DIExpression()), !dbg !656
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, i32 0, i32 3, !dbg !657
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !620, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 0, metadata !621, metadata !DIExpression()), !dbg !656
  %20 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !656, !tbaa !544
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %18, metadata !619, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, metadata !620, metadata !DIExpression()), !dbg !656
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %20, null, !dbg !658
  br i1 %21, label %22, label %33, !dbg !658

22:                                               ; preds = %15, %28
  %23 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %25, %28 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, metadata !619, metadata !DIExpression()), !dbg !656
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, i32 0, i32 1, !dbg !659
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %24, align 8, !dbg !659, !tbaa !541
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !622, metadata !DIExpression()), !dbg !660
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, null, !dbg !661
  br i1 %26, label %27, label %28, !dbg !661

27:                                               ; preds = %22
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @"??_C@_0HL@IBCKBNIJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !663
  tail call void @abort() #6, !dbg !663
  br label %28, !dbg !663

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 2, !dbg !666
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %29, align 4, !dbg !666, !tbaa !543
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, metadata !619, metadata !DIExpression()), !dbg !656
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %25, i32 0, i32 3, !dbg !667
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* undef, metadata !620, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !656
  %31 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %30, align 8, !dbg !656, !tbaa !544
  call void @llvm.dbg.value(metadata i32 undef, metadata !621, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, metadata !620, metadata !DIExpression()), !dbg !656
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %31, null, !dbg !658
  br i1 %32, label %22, label %33, !dbg !658, !llvm.loop !668

33:                                               ; preds = %28, %15
  %34 = phi %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* [ %20, %15 ], [ %31, %28 ], !dbg !656
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !670, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %16, metadata !612, metadata !DIExpression()), !dbg !633
  %35 = and i32 %16, 1, !dbg !671
  %36 = icmp eq i32 %35, 0, !dbg !671
  br i1 %36, label %42, label %37, !dbg !671

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 %16, metadata !612, metadata !DIExpression()), !dbg !633
  %38 = and i32 %16, -3, !dbg !672
  call void @llvm.dbg.value(metadata i32 %38, metadata !624, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata i32* undef, metadata !674, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32* undef, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32* %2, metadata !678, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32* %2, metadata !494, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 %16, metadata !495, metadata !DIExpression()), !dbg !681
  %39 = cmpxchg i32* %2, i32 %16, i32 %38 seq_cst seq_cst, !dbg !683
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !683
  call void @llvm.dbg.value(metadata i32 %40, metadata !496, metadata !DIExpression()), !dbg !681
  %41 = icmp eq i32 %16, %40, !dbg !684
  br i1 %41, label %64, label %62, !dbg !685, !llvm.loop !686

42:                                               ; preds = %33
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 2, !dbg !689
  %44 = load %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %43, align 4, !dbg !689, !tbaa !543
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, metadata !627, metadata !DIExpression()), !dbg !656
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, null, !dbg !690
  br i1 %45, label %46, label %56, !dbg !690

46:                                               ; preds = %42, %52
  %47 = phi i32 [ %50, %52 ], [ %16, %42 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !628, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i32 %47, metadata !612, metadata !DIExpression()), !dbg !633
  %48 = and i32 %47, 1, !dbg !692
  call void @llvm.dbg.value(metadata i32 %48, metadata !631, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32* undef, metadata !674, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32* undef, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32* %2, metadata !678, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32* %2, metadata !494, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 %47, metadata !495, metadata !DIExpression()), !dbg !696
  %49 = cmpxchg i32* %2, i32 %47, i32 %48 seq_cst seq_cst, !dbg !698
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !698
  call void @llvm.dbg.value(metadata i32 %50, metadata !496, metadata !DIExpression()), !dbg !696
  %51 = icmp eq i32 %47, %50, !dbg !699
  br i1 %51, label %58, label %52, !dbg !700

52:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %50, metadata !612, metadata !DIExpression()), !dbg !633
  %53 = icmp ult i32 %50, 4, !dbg !701
  br i1 %53, label %46, label %54, !dbg !701, !llvm.loop !702

54:                                               ; preds = %52
  %55 = extractvalue { i32, i1 } %49, 0, !dbg !698
  call void @llvm.dbg.value(metadata i8 0, metadata !628, metadata !DIExpression()), !dbg !691
  br label %62

56:                                               ; preds = %42
  store %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %44, %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"** %19, align 8, !dbg !705, !tbaa !544
  call void @llvm.dbg.value(metadata i32 -3, metadata !707, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.value(metadata i32* %2, metadata !712, metadata !DIExpression()), !dbg !713
  %57 = atomicrmw and i32* %2, i32 -3 seq_cst, !dbg !715
  br label %58, !dbg !716

58:                                               ; preds = %46, %56
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !717, metadata !DIExpression()) #7, !dbg !720
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 0, !dbg !722
  tail call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %59) #6, !dbg !722
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !723, metadata !DIExpression()) #7, !dbg !726
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 2, !dbg !728
  store i8 0, i8* %60, align 8, !dbg !728, !tbaa !532
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data", %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, i32 0, i32 0, i32 1, !dbg !729
  tail call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %61) #6, !dbg !729
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::word_lock_queue_data"* %34, metadata !730, metadata !DIExpression()) #7, !dbg !733
  tail call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %59) #6, !dbg !735
  br label %64, !dbg !736

62:                                               ; preds = %37, %54
  %63 = phi i32 [ %55, %54 ], [ %40, %37 ], !dbg !656
  fence seq_cst, !dbg !656
  br label %15

64:                                               ; preds = %4, %37, %58
  ret void, !dbg !737
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #3

declare dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) local_unnamed_addr #0 !dbg !738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !743, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i32 10, metadata !747, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i32 %0, metadata !752, metadata !DIExpression()), !dbg !753
  %2 = mul i32 %0, -1640531527, !dbg !755
  %3 = lshr i32 %2, 22, !dbg !755
  call void @llvm.dbg.value(metadata i32 %3, metadata !744, metadata !DIExpression()), !dbg !746
  %4 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %3, !dbg !758
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !759, metadata !DIExpression()) #7, !dbg !764
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !766
  call void @llvm.dbg.value(metadata i8* %5, metadata !767, metadata !DIExpression()) #7, !dbg !770
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %5, i32 1) #6, !dbg !772
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()) #7, !dbg !764
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #7, !dbg !764
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !773
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !774
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !774
  call void @llvm.dbg.value(metadata i32* %6, metadata !484, metadata !DIExpression()) #7, !dbg !774
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !776
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !776
  call void @llvm.dbg.value(metadata i32* %6, metadata !494, metadata !DIExpression()) #7, !dbg !776
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !776
  %7 = cmpxchg i32* %6, i32 0, i32 1 seq_cst seq_cst, !dbg !778
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !776
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !779
  br i1 %8, label %11, label %9, !dbg !773

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !780
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %10, metadata !759, metadata !DIExpression()) #7, !dbg !764
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %10) #6, !dbg !781
  br label %11, !dbg !784

11:                                               ; preds = %1, %9
  call void @llvm.dbg.value(metadata i8* %5, metadata !785, metadata !DIExpression()) #7, !dbg !788
  tail call void @__tsan_mutex_post_lock(i8* nonnull %5, i32 1, i32 1) #6, !dbg !790
  ret %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, !dbg !791
}

; Function Attrs: nounwind
define weak dso_local void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* noalias sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %0, i32 %1, i32 %2) local_unnamed_addr #4 !dbg !792 {
  call void @llvm.dbg.value(metadata i32 %2, metadata !804, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 %1, metadata !805, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 10, metadata !747, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %1, metadata !752, metadata !DIExpression()), !dbg !819
  %4 = mul i32 %1, -1640531527, !dbg !821
  %5 = lshr i32 %4, 22, !dbg !821
  call void @llvm.dbg.value(metadata i32 %5, metadata !806, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i32 10, metadata !747, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i32 %2, metadata !752, metadata !DIExpression()), !dbg !822
  %6 = mul i32 %2, -1640531527, !dbg !824
  %7 = lshr i32 %6, 22, !dbg !824
  call void @llvm.dbg.value(metadata i32 %7, metadata !807, metadata !DIExpression()), !dbg !818
  %8 = icmp eq i32 %5, %7, !dbg !825
  br i1 %8, label %9, label %17, !dbg !825

9:                                                ; preds = %3
  %10 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !826
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !808, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, metadata !759, metadata !DIExpression()) #7, !dbg !828
  %11 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10 to i8*, !dbg !830
  call void @llvm.dbg.value(metadata i8* %11, metadata !767, metadata !DIExpression()) #7, !dbg !831
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %11, i32 1) #6, !dbg !833
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()) #7, !dbg !828
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #7, !dbg !828
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, i32 0, !dbg !834
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !835
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !835
  call void @llvm.dbg.value(metadata i32* %12, metadata !484, metadata !DIExpression()) #7, !dbg !835
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !837
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !837
  call void @llvm.dbg.value(metadata i32* %12, metadata !494, metadata !DIExpression()) #7, !dbg !837
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !837
  %13 = cmpxchg i32* %12, i32 0, i32 1 seq_cst seq_cst, !dbg !839
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !837
  %14 = extractvalue { i32, i1 } %13, 1, !dbg !840
  br i1 %14, label %51, label %15, !dbg !834

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %10, i32 0, i32 0, !dbg !841
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %16, metadata !759, metadata !DIExpression()) #7, !dbg !828
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %16) #6, !dbg !842
  br label %51, !dbg !843

17:                                               ; preds = %3
  %18 = icmp ult i32 %5, %7, !dbg !844
  br i1 %18, label %19, label %35, !dbg !844

19:                                               ; preds = %17
  %20 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !845
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !811, metadata !DIExpression()), !dbg !846
  %21 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !847
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !814, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, metadata !759, metadata !DIExpression()) #7, !dbg !848
  %22 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20 to i8*, !dbg !850
  call void @llvm.dbg.value(metadata i8* %22, metadata !767, metadata !DIExpression()) #7, !dbg !851
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %22, i32 1) #6, !dbg !853
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()) #7, !dbg !848
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #7, !dbg !848
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, i32 0, !dbg !854
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !855
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !855
  call void @llvm.dbg.value(metadata i32* %23, metadata !484, metadata !DIExpression()) #7, !dbg !855
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !857
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !857
  call void @llvm.dbg.value(metadata i32* %23, metadata !494, metadata !DIExpression()) #7, !dbg !857
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !857
  %24 = cmpxchg i32* %23, i32 0, i32 1 seq_cst seq_cst, !dbg !859
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !857
  %25 = extractvalue { i32, i1 } %24, 1, !dbg !860
  br i1 %25, label %28, label %26, !dbg !854

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %20, i32 0, i32 0, !dbg !861
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %27, metadata !759, metadata !DIExpression()) #7, !dbg !848
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %27) #6, !dbg !862
  br label %28, !dbg !863

28:                                               ; preds = %19, %26
  call void @llvm.dbg.value(metadata i8* %22, metadata !785, metadata !DIExpression()) #7, !dbg !864
  tail call void @__tsan_mutex_post_lock(i8* nonnull %22, i32 1, i32 1) #6, !dbg !866
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, metadata !759, metadata !DIExpression()) #7, !dbg !867
  %29 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21 to i8*, !dbg !869
  call void @llvm.dbg.value(metadata i8* %29, metadata !767, metadata !DIExpression()) #7, !dbg !870
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %29, i32 1) #6, !dbg !872
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()) #7, !dbg !867
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #7, !dbg !867
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, i32 0, !dbg !873
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !874
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !874
  call void @llvm.dbg.value(metadata i32* %30, metadata !484, metadata !DIExpression()) #7, !dbg !874
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !876
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !876
  call void @llvm.dbg.value(metadata i32* %30, metadata !494, metadata !DIExpression()) #7, !dbg !876
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !876
  %31 = cmpxchg i32* %30, i32 0, i32 1 seq_cst seq_cst, !dbg !878
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !876
  %32 = extractvalue { i32, i1 } %31, 1, !dbg !879
  br i1 %32, label %51, label %33, !dbg !873

33:                                               ; preds = %28
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %21, i32 0, i32 0, !dbg !880
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %34, metadata !759, metadata !DIExpression()) #7, !dbg !867
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %34) #6, !dbg !881
  br label %51, !dbg !882

35:                                               ; preds = %17
  %36 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %7, !dbg !883
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !815, metadata !DIExpression()), !dbg !884
  %37 = getelementptr inbounds [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"], [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]* bitcast ([12288 x i8]* @"?table_storage@Synchronization@Internal@Runtime@Halide@@3PADA" to [1024 x %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"]*), i32 0, i32 %5, !dbg !885
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !817, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, metadata !759, metadata !DIExpression()) #7, !dbg !886
  %38 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36 to i8*, !dbg !888
  call void @llvm.dbg.value(metadata i8* %38, metadata !767, metadata !DIExpression()) #7, !dbg !889
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %38, i32 1) #6, !dbg !891
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()) #7, !dbg !886
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #7, !dbg !886
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, i32 0, !dbg !892
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !893
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !893
  call void @llvm.dbg.value(metadata i32* %39, metadata !484, metadata !DIExpression()) #7, !dbg !893
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32* %39, metadata !494, metadata !DIExpression()) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !895
  %40 = cmpxchg i32* %39, i32 0, i32 1 seq_cst seq_cst, !dbg !897
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !895
  %41 = extractvalue { i32, i1 } %40, 1, !dbg !898
  br i1 %41, label %44, label %42, !dbg !892

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %36, i32 0, i32 0, !dbg !899
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %43, metadata !759, metadata !DIExpression()) #7, !dbg !886
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %43) #6, !dbg !900
  br label %44, !dbg !901

44:                                               ; preds = %35, %42
  call void @llvm.dbg.value(metadata i8* %38, metadata !785, metadata !DIExpression()) #7, !dbg !902
  tail call void @__tsan_mutex_post_lock(i8* nonnull %38, i32 1, i32 1) #6, !dbg !904
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, metadata !759, metadata !DIExpression()) #7, !dbg !905
  %45 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37 to i8*, !dbg !907
  call void @llvm.dbg.value(metadata i8* %45, metadata !767, metadata !DIExpression()) #7, !dbg !908
  tail call void @__tsan_mutex_pre_lock(i8* nonnull %45, i32 1) #6, !dbg !910
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()) #7, !dbg !905
  call void @llvm.dbg.value(metadata i32 1, metadata !763, metadata !DIExpression()) #7, !dbg !905
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, i32 0, !dbg !911
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !912
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !912
  call void @llvm.dbg.value(metadata i32* %46, metadata !484, metadata !DIExpression()) #7, !dbg !912
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !914
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !914
  call void @llvm.dbg.value(metadata i32* %46, metadata !494, metadata !DIExpression()) #7, !dbg !914
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !914
  %47 = cmpxchg i32* %46, i32 0, i32 1 seq_cst seq_cst, !dbg !916
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !914
  %48 = extractvalue { i32, i1 } %47, 1, !dbg !917
  br i1 %48, label %51, label %49, !dbg !911

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 0, !dbg !918
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !759, metadata !DIExpression()) #7, !dbg !905
  tail call x86_thiscallcc void @"?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #6, !dbg !919
  br label %51, !dbg !920

51:                                               ; preds = %49, %44, %33, %28, %15, %9
  %52 = phi i8* [ %11, %9 ], [ %11, %15 ], [ %29, %28 ], [ %29, %33 ], [ %45, %44 ], [ %45, %49 ]
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %20, %28 ], [ %20, %33 ], [ %37, %44 ], [ %37, %49 ]
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* [ %10, %9 ], [ %10, %15 ], [ %21, %28 ], [ %21, %33 ], [ %36, %44 ], [ %36, %49 ]
  tail call void @__tsan_mutex_post_lock(i8* nonnull %52, i32 1, i32 1) #6, !dbg !921
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !921
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %53, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %55, align 4, !dbg !921, !tbaa !922
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !921
  store %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %54, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %56, align 4, !dbg !921, !tbaa !922
  ret void, !dbg !923
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 !dbg !924 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, metadata !929, metadata !DIExpression()), !dbg !930
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 0, !dbg !931
  %3 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !931, !tbaa !932
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %0, i32 0, i32 1, !dbg !931
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !931, !tbaa !934
  %6 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !931
  br i1 %6, label %7, label %18, !dbg !931

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !935, metadata !DIExpression()) #7, !dbg !941
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !945
  call void @llvm.dbg.value(metadata i8* %8, metadata !946, metadata !DIExpression()) #7, !dbg !949
  %9 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %8, i32 1) #6, !dbg !951
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !952
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !957
  call void @llvm.dbg.value(metadata i32* %10, metadata !956, metadata !DIExpression()) #7, !dbg !957
  %11 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !959
  call void @llvm.dbg.value(metadata i32 %11, metadata !938, metadata !DIExpression()) #7, !dbg !941
  %12 = and i32 %11, 2, !dbg !960
  %13 = icmp ne i32 %12, 0, !dbg !960
  call void @llvm.dbg.value(metadata i1 %13, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !941
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !941
  %14 = icmp ult i32 %11, 4
  %15 = or i1 %14, %13, !dbg !961
  call void @llvm.dbg.value(metadata i1 %14, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !941
  br i1 %15, label %66, label %16, !dbg !961

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !962
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %17, metadata !935, metadata !DIExpression()) #7, !dbg !941
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %17) #6, !dbg !963
  br label %66, !dbg !966

18:                                               ; preds = %1
  %19 = icmp ugt %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, %5, !dbg !967
  br i1 %19, label %20, label %43, !dbg !967

20:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !935, metadata !DIExpression()) #7, !dbg !968
  %21 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*, !dbg !972
  call void @llvm.dbg.value(metadata i8* %21, metadata !946, metadata !DIExpression()) #7, !dbg !973
  %22 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %21, i32 1) #6, !dbg !975
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0, !dbg !976
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !977
  call void @llvm.dbg.value(metadata i32* %23, metadata !956, metadata !DIExpression()) #7, !dbg !977
  %24 = atomicrmw and i32* %23, i32 -2 seq_cst, !dbg !979
  call void @llvm.dbg.value(metadata i32 %24, metadata !938, metadata !DIExpression()) #7, !dbg !968
  %25 = and i32 %24, 2, !dbg !980
  %26 = icmp ne i32 %25, 0, !dbg !980
  call void @llvm.dbg.value(metadata i1 %26, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !968
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !968
  %27 = icmp ult i32 %24, 4
  %28 = or i1 %27, %26, !dbg !981
  call void @llvm.dbg.value(metadata i1 %27, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !968
  br i1 %28, label %31, label %29, !dbg !981

29:                                               ; preds = %20
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, !dbg !982
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %30, metadata !935, metadata !DIExpression()) #7, !dbg !968
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %30) #6, !dbg !983
  br label %31, !dbg !984

31:                                               ; preds = %20, %29
  call void @llvm.dbg.value(metadata i8* %21, metadata !985, metadata !DIExpression()) #7, !dbg !988
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %21, i32 1) #6, !dbg !990
  %32 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %4, align 4, !dbg !991, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, metadata !935, metadata !DIExpression()) #7, !dbg !992
  %33 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32 to i8*, !dbg !994
  call void @llvm.dbg.value(metadata i8* %33, metadata !946, metadata !DIExpression()) #7, !dbg !995
  %34 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %33, i32 1) #6, !dbg !997
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, i32 0, !dbg !998
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !999
  call void @llvm.dbg.value(metadata i32* %35, metadata !956, metadata !DIExpression()) #7, !dbg !999
  %36 = atomicrmw and i32* %35, i32 -2 seq_cst, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %36, metadata !938, metadata !DIExpression()) #7, !dbg !992
  %37 = and i32 %36, 2, !dbg !1002
  %38 = icmp ne i32 %37, 0, !dbg !1002
  call void @llvm.dbg.value(metadata i1 %38, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !992
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !992
  %39 = icmp ult i32 %36, 4
  %40 = or i1 %39, %38, !dbg !1003
  call void @llvm.dbg.value(metadata i1 %39, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !992
  br i1 %40, label %66, label %41, !dbg !1003

41:                                               ; preds = %31
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %32, i32 0, i32 0, !dbg !991
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %42, metadata !935, metadata !DIExpression()) #7, !dbg !992
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %42) #6, !dbg !1004
  br label %66, !dbg !1005

43:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, metadata !935, metadata !DIExpression()) #7, !dbg !1006
  %44 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5 to i8*, !dbg !1009
  call void @llvm.dbg.value(metadata i8* %44, metadata !946, metadata !DIExpression()) #7, !dbg !1010
  %45 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %44, i32 1) #6, !dbg !1012
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, i32 0, !dbg !1013
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1014
  call void @llvm.dbg.value(metadata i32* %46, metadata !956, metadata !DIExpression()) #7, !dbg !1014
  %47 = atomicrmw and i32* %46, i32 -2 seq_cst, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %47, metadata !938, metadata !DIExpression()) #7, !dbg !1006
  %48 = and i32 %47, 2, !dbg !1017
  %49 = icmp ne i32 %48, 0, !dbg !1017
  call void @llvm.dbg.value(metadata i1 %49, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1006
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1006
  %50 = icmp ult i32 %47, 4
  %51 = or i1 %50, %49, !dbg !1018
  call void @llvm.dbg.value(metadata i1 %50, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1006
  br i1 %51, label %54, label %52, !dbg !1018

52:                                               ; preds = %43
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %5, i32 0, i32 0, !dbg !1019
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %53, metadata !935, metadata !DIExpression()) #7, !dbg !1006
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %53) #6, !dbg !1020
  br label %54, !dbg !1021

54:                                               ; preds = %43, %52
  call void @llvm.dbg.value(metadata i8* %44, metadata !985, metadata !DIExpression()) #7, !dbg !1022
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %44, i32 1) #6, !dbg !1024
  %55 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %2, align 4, !dbg !1025, !tbaa !932
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, metadata !935, metadata !DIExpression()) #7, !dbg !1026
  %56 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55 to i8*, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %56, metadata !946, metadata !DIExpression()) #7, !dbg !1029
  %57 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %56, i32 1) #6, !dbg !1031
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, i32 0, !dbg !1032
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1033
  call void @llvm.dbg.value(metadata i32* %58, metadata !956, metadata !DIExpression()) #7, !dbg !1033
  %59 = atomicrmw and i32* %58, i32 -2 seq_cst, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %59, metadata !938, metadata !DIExpression()) #7, !dbg !1026
  %60 = and i32 %59, 2, !dbg !1036
  %61 = icmp ne i32 %60, 0, !dbg !1036
  call void @llvm.dbg.value(metadata i1 %61, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1026
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1026
  %62 = icmp ult i32 %59, 4
  %63 = or i1 %62, %61, !dbg !1037
  call void @llvm.dbg.value(metadata i1 %62, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1026
  br i1 %63, label %66, label %64, !dbg !1037

64:                                               ; preds = %54
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %55, i32 0, i32 0, !dbg !1025
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %65, metadata !935, metadata !DIExpression()) #7, !dbg !1026
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %65) #6, !dbg !1038
  br label %66, !dbg !1039

66:                                               ; preds = %64, %54, %41, %31, %16, %7
  %67 = phi i8* [ %8, %7 ], [ %8, %16 ], [ %33, %31 ], [ %33, %41 ], [ %56, %54 ], [ %56, %64 ]
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %67, i32 1) #6, !dbg !1040
  ret void, !dbg !1041
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1042 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1044, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %0, metadata !1045, metadata !DIExpression()), !dbg !1046
  ret i1 true, !dbg !1047
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #5 !dbg !1048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1050, metadata !DIExpression()), !dbg !1051
  ret void, !dbg !1052
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1053 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %1, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %0, metadata !1057, metadata !DIExpression()), !dbg !1058
  ret i32 0, !dbg !1059
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1060 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !1062, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1066
  call void @llvm.dbg.value(metadata i1 %2, metadata !1063, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1066
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1064, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i8* %0, metadata !1065, metadata !DIExpression()), !dbg !1066
  ret void, !dbg !1067
}

; Function Attrs: nounwind
define weak dso_local i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 !dbg !1068 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::queue_data", align 8
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1073, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i32 %0, metadata !1074, metadata !DIExpression()), !dbg !1078
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3 to i8*, !dbg !1079
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %5) #7, !dbg !1079
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1075, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1080, metadata !DIExpression()) #7, !dbg !1083
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !525, metadata !DIExpression()) #7, !dbg !1085
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 2, !dbg !1087
  store i8 0, i8* %6, align 8, !dbg !1087, !tbaa !532
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 0, !dbg !1088
  call x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1088
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 0, i32 1, !dbg !1089
  call x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64* nonnull %8) #6, !dbg !1089
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 1, !dbg !1090
  store i32 0, i32* %9, align 8, !dbg !1090, !tbaa !1091
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 2, !dbg !1090
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1090, !tbaa !1093
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, i32 0, i32 3, !dbg !1090
  store i32 0, i32* %11, align 8, !dbg !1090, !tbaa !1094
  %12 = call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #8, !dbg !1095
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !1076, metadata !DIExpression()), !dbg !1078
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 0, !dbg !1096
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1096
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1077, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, metadata !1097, metadata !DIExpression()), !dbg !1101
  store i8 0, i8* %13, align 4, !dbg !1103, !tbaa !1104
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %4, i32 0, i32 1, !dbg !1103
  store i32 0, i32* %14, align 4, !dbg !1103, !tbaa !1106
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 0, !dbg !1107
  %16 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %15, align 4, !dbg !1107, !tbaa !1108
  %17 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*, !dbg !1107
  %18 = call zeroext i1 %16(i8* nonnull %17, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %4) #6, !dbg !1107
  br i1 %18, label %32, label %19, !dbg !1107

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !935, metadata !DIExpression()) #7, !dbg !1110
  %20 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1114
  call void @llvm.dbg.value(metadata i8* %20, metadata !946, metadata !DIExpression()) #7, !dbg !1115
  %21 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %20, i32 1) #6, !dbg !1117
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1118
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1119
  call void @llvm.dbg.value(metadata i32* %22, metadata !956, metadata !DIExpression()) #7, !dbg !1119
  %23 = atomicrmw and i32* %22, i32 -2 seq_cst, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %23, metadata !938, metadata !DIExpression()) #7, !dbg !1110
  %24 = and i32 %23, 2, !dbg !1122
  %25 = icmp ne i32 %24, 0, !dbg !1122
  call void @llvm.dbg.value(metadata i1 %25, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1110
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1110
  %26 = icmp ult i32 %23, 4
  %27 = or i1 %26, %25, !dbg !1123
  call void @llvm.dbg.value(metadata i1 %26, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1110
  br i1 %27, label %30, label %28, !dbg !1123

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1124
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %29, metadata !935, metadata !DIExpression()) #7, !dbg !1110
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %29) #6, !dbg !1125
  br label %30, !dbg !1126

30:                                               ; preds = %19, %28
  call void @llvm.dbg.value(metadata i8* %20, metadata !985, metadata !DIExpression()) #7, !dbg !1127
  call void @__tsan_mutex_post_unlock(i8* nonnull %20, i32 1) #6, !dbg !1129
  %31 = load i32, i32* %14, align 4, !dbg !1130, !tbaa !1106
  br label %61, !dbg !1130

32:                                               ; preds = %2
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %10, align 4, !dbg !1131, !tbaa !1093
  store i32 %0, i32* %9, align 8, !dbg !1132, !tbaa !1091
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !545, metadata !DIExpression()), !dbg !1133
  store i8 1, i8* %6, align 8, !dbg !1135, !tbaa !532
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 1, !dbg !1136
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1136, !tbaa !1137
  %35 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1136
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1136
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %36, align 4, !dbg !1136
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %37, i32 0, i32 2, !dbg !1136
  %39 = select i1 %35, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, !dbg !1136
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %39, align 4, !dbg !1140, !tbaa !922
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 2, !dbg !1142
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %40, align 4, !dbg !1142, !tbaa !1143
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, metadata !935, metadata !DIExpression()) #7, !dbg !1144
  %41 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12 to i8*, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %41, metadata !946, metadata !DIExpression()) #7, !dbg !1147
  %42 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %41, i32 1) #6, !dbg !1149
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, i32 0, !dbg !1150
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1151
  call void @llvm.dbg.value(metadata i32* %43, metadata !956, metadata !DIExpression()) #7, !dbg !1151
  %44 = atomicrmw and i32* %43, i32 -2 seq_cst, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %44, metadata !938, metadata !DIExpression()) #7, !dbg !1144
  %45 = and i32 %44, 2, !dbg !1154
  %46 = icmp ne i32 %45, 0, !dbg !1154
  call void @llvm.dbg.value(metadata i1 %46, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1144
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1144
  %47 = icmp ult i32 %44, 4
  %48 = or i1 %47, %46, !dbg !1155
  call void @llvm.dbg.value(metadata i1 %47, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1144
  br i1 %48, label %51, label %49, !dbg !1155

49:                                               ; preds = %32
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %12, i32 0, i32 0, !dbg !1156
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %50, metadata !935, metadata !DIExpression()) #7, !dbg !1144
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %50) #6, !dbg !1157
  br label %51, !dbg !1158

51:                                               ; preds = %32, %49
  call void @llvm.dbg.value(metadata i8* %41, metadata !985, metadata !DIExpression()) #7, !dbg !1159
  call void @__tsan_mutex_post_unlock(i8* nonnull %41, i32 1) #6, !dbg !1161
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 1, !dbg !1162
  %53 = load void (i8*)*, void (i8*)** %52, align 4, !dbg !1162, !tbaa !1163
  call void %53(i8* nonnull %17) #6, !dbg !1162
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !574, metadata !DIExpression()) #7, !dbg !1164
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1166
  %54 = load i8, i8* %6, align 8, !dbg !1167, !tbaa !532, !range !583
  %55 = icmp eq i8 %54, 0, !dbg !1167
  br i1 %55, label %59, label %56, !dbg !1167

56:                                               ; preds = %51, %56
  call x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64* nonnull %8, %struct.CriticalSection* nonnull %7, i32 -1) #6, !dbg !1168
  %57 = load i8, i8* %6, align 8, !dbg !1167, !tbaa !532, !range !583
  %58 = icmp eq i8 %57, 0, !dbg !1167
  br i1 %58, label %59, label %56, !dbg !1167, !llvm.loop !1169

59:                                               ; preds = %56, %51
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1171
  %60 = load i32, i32* %11, align 8, !dbg !1172, !tbaa !1094
  br label %61, !dbg !1172

61:                                               ; preds = %59, %30
  %62 = phi i32 [ %60, %59 ], [ %31, %30 ], !dbg !1078
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1173
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !1174, metadata !DIExpression()) #7, !dbg !1177
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %3, metadata !597, metadata !DIExpression()) #7, !dbg !1179
  call x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection* nonnull %7) #6, !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %5) #7, !dbg !1173
  ret i32 %62, !dbg !1173
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %0, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 !dbg !1183 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, metadata !1185, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %0, metadata !1186, metadata !DIExpression()), !dbg !1202
  %3 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #8, !dbg !1203
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !1187, metadata !DIExpression()), !dbg !1202
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 1, !dbg !1204
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, metadata !1188, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1189, metadata !DIExpression()), !dbg !1202
  %5 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %4, align 4, !dbg !1205, !tbaa !922
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %5, metadata !1190, metadata !DIExpression()), !dbg !1202
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1, i32 0, i32 2
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %1 to i8*
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3 to i8*
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, i32 0, i32 0
  br label %12, !dbg !1206

12:                                               ; preds = %59, %2
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %4, %2 ], [ %60, %59 ], !dbg !1204
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %2 ], [ %61, %59 ], !dbg !1207
  %15 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %5, %2 ], [ %62, %59 ], !dbg !1205
  %16 = phi i32 [ undef, %2 ], [ %63, %59 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !1190, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1189, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, metadata !1188, metadata !DIExpression()), !dbg !1202
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, null, !dbg !1206
  br i1 %17, label %64, label %18, !dbg !1206

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 1, !dbg !1208
  %20 = load i32, i32* %19, align 4, !dbg !1208, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %20, metadata !1191, metadata !DIExpression()), !dbg !1209
  %21 = icmp eq i32 %20, %0, !dbg !1210
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 2, !dbg !1211
  %23 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %22, align 4, !dbg !1211, !tbaa !1093
  br i1 %21, label %24, label %59, !dbg !1210

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1193, metadata !DIExpression()), !dbg !1212
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %13, align 4, !dbg !1213, !tbaa !922
  call void @llvm.dbg.value(metadata i8 0, metadata !1196, metadata !DIExpression()), !dbg !1212
  %25 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1214, !tbaa !1143
  %26 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, %15, !dbg !1214
  br i1 %26, label %29, label %27, !dbg !1214

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, metadata !1197, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 0, metadata !1196, metadata !DIExpression()), !dbg !1212
  %28 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %23, null, !dbg !1216
  br i1 %28, label %41, label %30, !dbg !1216

29:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %6, align 4, !dbg !1217, !tbaa !1143
  br label %41, !dbg !1219

30:                                               ; preds = %27, %30
  %31 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %36, %30 ], [ %23, %27 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, metadata !1197, metadata !DIExpression()), !dbg !1215
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 1, !dbg !1220
  %33 = load i32, i32* %32, align 4, !dbg !1220, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %33, metadata !1200, metadata !DIExpression()), !dbg !1221
  %34 = icmp eq i32 %33, %0, !dbg !1222
  call void @llvm.dbg.value(metadata i1 %34, metadata !1196, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1212
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %31, i32 0, i32 2, !dbg !1223
  %36 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %35, align 4, !dbg !1223, !tbaa !1093
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, metadata !1197, metadata !DIExpression()), !dbg !1215
  %37 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %36, null, !dbg !1216
  %38 = or i1 %34, %37, !dbg !1216
  br i1 %38, label %39, label %30, !dbg !1216, !llvm.loop !1224

39:                                               ; preds = %30
  %40 = zext i1 %34 to i8, !dbg !1222
  call void @llvm.dbg.value(metadata i8 %40, metadata !1196, metadata !DIExpression()), !dbg !1212
  br label %41, !dbg !1226

41:                                               ; preds = %39, %27, %29
  %42 = phi i8 [ 0, %29 ], [ 0, %27 ], [ %40, %39 ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %42, metadata !1196, metadata !DIExpression()), !dbg !1212
  %43 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1226, !tbaa !1228
  %44 = icmp ne i8 %42, 0, !dbg !1226
  %45 = tail call i32 %43(i8* nonnull %8, i32 1, i1 zeroext %44) #6, !dbg !1226
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 3, !dbg !1226
  store i32 %45, i32* %46, align 8, !dbg !1226, !tbaa !1094
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !717, metadata !DIExpression()) #7, !dbg !1229
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 0, !dbg !1231
  tail call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %47) #6, !dbg !1231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !935, metadata !DIExpression()) #7, !dbg !1232
  call void @llvm.dbg.value(metadata i8* %9, metadata !946, metadata !DIExpression()) #7, !dbg !1234
  %48 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1236
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1237
  call void @llvm.dbg.value(metadata i32* %10, metadata !956, metadata !DIExpression()) #7, !dbg !1237
  %49 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %49, metadata !938, metadata !DIExpression()) #7, !dbg !1232
  %50 = and i32 %49, 2, !dbg !1240
  %51 = icmp ne i32 %50, 0, !dbg !1240
  call void @llvm.dbg.value(metadata i1 %51, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1232
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1232
  %52 = icmp ult i32 %49, 4
  %53 = or i1 %52, %51, !dbg !1241
  call void @llvm.dbg.value(metadata i1 %52, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1232
  br i1 %53, label %55, label %54, !dbg !1241

54:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !935, metadata !DIExpression()) #7, !dbg !1232
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #6, !dbg !1242
  br label %55, !dbg !1243

55:                                               ; preds = %41, %54
  call void @llvm.dbg.value(metadata i8* %9, metadata !985, metadata !DIExpression()) #7, !dbg !1244
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1246
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !723, metadata !DIExpression()) #7, !dbg !1247
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 2, !dbg !1249
  store i8 0, i8* %56, align 8, !dbg !1249, !tbaa !532
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, i32 0, i32 0, i32 1, !dbg !1250
  tail call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %57) #6, !dbg !1250
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %15, metadata !730, metadata !DIExpression()) #7, !dbg !1251
  tail call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %47) #6, !dbg !1253
  %58 = zext i8 %42 to i32, !dbg !1254
  br label %59

59:                                               ; preds = %18, %55
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %13, %55 ], [ %22, %18 ], !dbg !1202
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %14, %55 ], [ %15, %18 ], !dbg !1202
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %15, %55 ], [ %23, %18 ], !dbg !1202
  %63 = phi i32 [ %58, %55 ], [ %16, %18 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %62, metadata !1190, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1189, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, metadata !1188, metadata !DIExpression()), !dbg !1202
  br i1 %21, label %75, label %12, !llvm.loop !1255

64:                                               ; preds = %12
  %65 = load i32 (i8*, i32, i1)*, i32 (i8*, i32, i1)** %7, align 4, !dbg !1257, !tbaa !1228
  %66 = tail call i32 %65(i8* nonnull %8, i32 0, i1 zeroext false) #6, !dbg !1257
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %3, metadata !935, metadata !DIExpression()) #7, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %9, metadata !946, metadata !DIExpression()) #7, !dbg !1260
  %67 = tail call i32 @__tsan_mutex_pre_unlock(i8* nonnull %9, i32 1) #6, !dbg !1262
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1263
  call void @llvm.dbg.value(metadata i32* %10, metadata !956, metadata !DIExpression()) #7, !dbg !1263
  %68 = atomicrmw and i32* %10, i32 -2 seq_cst, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %68, metadata !938, metadata !DIExpression()) #7, !dbg !1258
  %69 = and i32 %68, 2, !dbg !1266
  %70 = icmp ne i32 %69, 0, !dbg !1266
  call void @llvm.dbg.value(metadata i1 %70, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1258
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1258
  %71 = icmp ult i32 %68, 4
  %72 = or i1 %71, %70, !dbg !1267
  call void @llvm.dbg.value(metadata i1 %71, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1258
  br i1 %72, label %74, label %73, !dbg !1267

73:                                               ; preds = %64
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %11, metadata !935, metadata !DIExpression()) #7, !dbg !1258
  tail call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %11) #6, !dbg !1268
  br label %74, !dbg !1269

74:                                               ; preds = %64, %73
  call void @llvm.dbg.value(metadata i8* %9, metadata !985, metadata !DIExpression()) #7, !dbg !1270
  tail call void @__tsan_mutex_post_unlock(i8* nonnull %9, i32 1) #6, !dbg !1272
  br label %75, !dbg !1273

75:                                               ; preds = %59, %74
  %76 = phi i32 [ 0, %74 ], [ %63, %59 ], !dbg !1202
  ret i32 %76, !dbg !1274
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?unpark_all@Synchronization@Internal@Runtime@Halide@@YAIII@Z"(i32 %0, i32 %1) local_unnamed_addr #0 !dbg !1275 {
  %3 = alloca [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], align 4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1279, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %0, metadata !1280, metadata !DIExpression()), !dbg !1307
  %4 = tail call nonnull align 4 dereferenceable(12) %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* @"?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z"(i32 %0) #8, !dbg !1308
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !1281, metadata !DIExpression()), !dbg !1307
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 1, !dbg !1309
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, metadata !1282, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1283, metadata !DIExpression()), !dbg !1307
  %6 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1310, !tbaa !922
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1284, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression()), !dbg !1307
  %7 = bitcast [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3 to i8*, !dbg !1311
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1311
  call void @llvm.dbg.declare(metadata [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, metadata !1287, metadata !DIExpression()), !dbg !1311
  %8 = getelementptr inbounds [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*], [16 x %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*]* %3, i32 0, i32 0, !dbg !1312
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %8, metadata !1291, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 16, metadata !1292, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1283, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, metadata !1284, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 0, metadata !1285, metadata !DIExpression()), !dbg !1307
  %9 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %6, null, !dbg !1313
  br i1 %9, label %91, label %10, !dbg !1313

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 2
  br label %12, !dbg !1313

12:                                               ; preds = %10, %85
  %13 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %10 ], [ %89, %85 ]
  %14 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %6, %10 ], [ %21, %85 ]
  %15 = phi i32 [ 16, %10 ], [ %88, %85 ]
  %16 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %10 ], [ %87, %85 ]
  %17 = phi i32 [ 0, %10 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, metadata !1283, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !1284, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %15, metadata !1292, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1291, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %17, metadata !1285, metadata !DIExpression()), !dbg !1307
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 1, !dbg !1314
  %19 = load i32, i32* %18, align 4, !dbg !1314, !tbaa !471
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 2, !dbg !1315
  %21 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %20, align 4, !dbg !1315, !tbaa !1093
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1295, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32 %19, metadata !1293, metadata !DIExpression()), !dbg !1316
  %22 = icmp eq i32 %19, %0, !dbg !1317
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %5, align 4, !dbg !1318, !tbaa !922
  br i1 %22, label %23, label %85, !dbg !1317

23:                                               ; preds = %12
  %24 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1319, !tbaa !1143
  %25 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %24, %14, !dbg !1319
  br i1 %25, label %26, label %27, !dbg !1319

26:                                               ; preds = %23
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %13, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %11, align 4, !dbg !1320, !tbaa !1143
  br label %27, !dbg !1323

27:                                               ; preds = %26, %23
  %28 = icmp eq i32 %17, %15, !dbg !1324
  br i1 %28, label %29, label %78, !dbg !1324

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, metadata !1296, metadata !DIExpression()), !dbg !1325
  %30 = shl i32 %15, 3, !dbg !1326
  %31 = call i8* @malloc(i32 %30) #6, !dbg !1326
  %32 = bitcast i8* %31 to %"struct.Halide::Runtime::Internal::Synchronization::queue_data"**, !dbg !1326
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, metadata !1291, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 0, metadata !1301, metadata !DIExpression()), !dbg !1327
  %33 = icmp eq i32 %15, 0, !dbg !1328
  br i1 %33, label %52, label %34, !dbg !1328

34:                                               ; preds = %29
  %35 = add i32 %15, -1, !dbg !1328
  %36 = and i32 %15, 3, !dbg !1328
  %37 = icmp ult i32 %35, 3, !dbg !1328
  br i1 %37, label %40, label %38, !dbg !1328

38:                                               ; preds = %34
  %39 = and i32 %15, -4, !dbg !1328
  br label %55, !dbg !1328

40:                                               ; preds = %55, %34
  %41 = phi i32 [ 0, %34 ], [ %73, %55 ]
  %42 = icmp eq i32 %36, 0, !dbg !1328
  br i1 %42, label %52, label %43, !dbg !1328

43:                                               ; preds = %40, %43
  %44 = phi i32 [ %49, %43 ], [ %41, %40 ]
  %45 = phi i32 [ %50, %43 ], [ %36, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, metadata !1301, metadata !DIExpression()), !dbg !1327
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %44, !dbg !1329
  %47 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %46, align 4, !dbg !1329, !tbaa !922
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %44, !dbg !1329
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %47, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %48, align 4, !dbg !1329, !tbaa !922
  %49 = add nuw i32 %44, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %49, metadata !1301, metadata !DIExpression()), !dbg !1327
  %50 = add i32 %45, -1, !dbg !1328
  %51 = icmp eq i32 %50, 0, !dbg !1328
  br i1 %51, label %52, label %43, !dbg !1328, !llvm.loop !1333

52:                                               ; preds = %40, %43, %29
  %53 = shl i32 %15, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %53, metadata !1292, metadata !DIExpression()), !dbg !1307
  %54 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, %8, !dbg !1336
  br i1 %54, label %78, label %76, !dbg !1336

55:                                               ; preds = %55, %38
  %56 = phi i32 [ 0, %38 ], [ %73, %55 ]
  %57 = phi i32 [ %39, %38 ], [ %74, %55 ]
  call void @llvm.dbg.value(metadata i32 %56, metadata !1301, metadata !DIExpression()), !dbg !1327
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %56, !dbg !1329
  %59 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %58, align 4, !dbg !1329, !tbaa !922
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %56, !dbg !1329
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %60, align 4, !dbg !1329, !tbaa !922
  %61 = or i32 %56, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %61, metadata !1301, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %61, metadata !1301, metadata !DIExpression()), !dbg !1327
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %61, !dbg !1329
  %63 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1329, !tbaa !922
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %61, !dbg !1329
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %63, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %64, align 4, !dbg !1329, !tbaa !922
  %65 = or i32 %56, 2, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %65, metadata !1301, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %65, metadata !1301, metadata !DIExpression()), !dbg !1327
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %65, !dbg !1329
  %67 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %66, align 4, !dbg !1329, !tbaa !922
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %65, !dbg !1329
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %67, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %68, align 4, !dbg !1329, !tbaa !922
  %69 = or i32 %56, 3, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %69, metadata !1301, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 %69, metadata !1301, metadata !DIExpression()), !dbg !1327
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16, i32 %69, !dbg !1329
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1329, !tbaa !922
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %32, i32 %69, !dbg !1329
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %72, align 4, !dbg !1329, !tbaa !922
  %73 = add nuw i32 %56, 4, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %73, metadata !1301, metadata !DIExpression()), !dbg !1327
  %74 = add i32 %57, -4, !dbg !1328
  %75 = icmp eq i32 %74, 0, !dbg !1328
  br i1 %75, label %40, label %55, !dbg !1328, !llvm.loop !1337

76:                                               ; preds = %52
  %77 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %16 to i8*, !dbg !1339
  call void @free(i8* %77) #6, !dbg !1339
  br label %78, !dbg !1342

78:                                               ; preds = %52, %76, %27
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %16, %27 ], [ %32, %76 ], [ %32, %52 ], !dbg !1307
  %80 = phi i32 [ %15, %27 ], [ %53, %76 ], [ %53, %52 ], !dbg !1307
  call void @llvm.dbg.value(metadata i32 %80, metadata !1292, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %79, metadata !1291, metadata !DIExpression()), !dbg !1307
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 3, !dbg !1343
  store i32 %1, i32* %81, align 8, !dbg !1343, !tbaa !1094
  %82 = add i32 %17, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %82, metadata !1285, metadata !DIExpression()), !dbg !1307
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %79, i32 %17, !dbg !1344
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %83, align 4, !dbg !1344, !tbaa !922
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, metadata !717, metadata !DIExpression()) #7, !dbg !1345
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %14, i32 0, i32 0, i32 0, !dbg !1347
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %84) #6, !dbg !1347
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1284, metadata !DIExpression()), !dbg !1307
  br label %85, !dbg !1348

85:                                               ; preds = %12, %78
  %86 = phi i32 [ %82, %78 ], [ %17, %12 ], !dbg !1307
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %79, %78 ], [ %16, %12 ], !dbg !1307
  %88 = phi i32 [ %80, %78 ], [ %15, %12 ], !dbg !1307
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %13, %78 ], [ %14, %12 ], !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !1283, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, metadata !1284, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %88, metadata !1292, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %87, metadata !1291, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %86, metadata !1285, metadata !DIExpression()), !dbg !1307
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %21, null, !dbg !1313
  br i1 %90, label %91, label %12, !dbg !1313, !llvm.loop !1349

91:                                               ; preds = %85, %2
  %92 = phi i32 [ 0, %2 ], [ %86, %85 ], !dbg !1307
  %93 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %8, %2 ], [ %87, %85 ], !dbg !1307
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, metadata !935, metadata !DIExpression()) #7, !dbg !1351
  %94 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4 to i8*, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %94, metadata !946, metadata !DIExpression()) #7, !dbg !1354
  %95 = call i32 @__tsan_mutex_pre_unlock(i8* nonnull %94, i32 1) #6, !dbg !1356
  %96 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, i32 0, !dbg !1357
  call void @llvm.dbg.value(metadata i32 -2, metadata !953, metadata !DIExpression()) #7, !dbg !1358
  call void @llvm.dbg.value(metadata i32* %96, metadata !956, metadata !DIExpression()) #7, !dbg !1358
  %97 = atomicrmw and i32* %96, i32 -2 seq_cst, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %97, metadata !938, metadata !DIExpression()) #7, !dbg !1351
  %98 = and i32 %97, 2, !dbg !1361
  %99 = icmp ne i32 %98, 0, !dbg !1361
  call void @llvm.dbg.value(metadata i1 %99, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1351
  call void @llvm.dbg.value(metadata i1 undef, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1351
  %100 = icmp ult i32 %97, 4
  %101 = or i1 %100, %99, !dbg !1362
  call void @llvm.dbg.value(metadata i1 %100, metadata !940, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1351
  br i1 %101, label %104, label %102, !dbg !1362

102:                                              ; preds = %91
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %4, i32 0, i32 0, !dbg !1363
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::word_lock"* %103, metadata !935, metadata !DIExpression()) #7, !dbg !1351
  call x86_thiscallcc void @"?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ"(%"class.Halide::Runtime::Internal::Synchronization::word_lock"* nonnull dereferenceable(4) %103) #6, !dbg !1364
  br label %104, !dbg !1365

104:                                              ; preds = %91, %102
  call void @llvm.dbg.value(metadata i8* %94, metadata !985, metadata !DIExpression()) #7, !dbg !1366
  call void @__tsan_mutex_post_unlock(i8* nonnull %94, i32 1) #6, !dbg !1368
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()), !dbg !1369
  %105 = icmp eq i32 %92, 0, !dbg !1370
  br i1 %105, label %115, label %107, !dbg !1370

106:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i32 0, metadata !1305, metadata !DIExpression()), !dbg !1371
  br i1 %105, label %115, label %117, !dbg !1372

107:                                              ; preds = %104, %107
  %108 = phi i32 [ %113, %107 ], [ 0, %104 ]
  call void @llvm.dbg.value(metadata i32 %108, metadata !1303, metadata !DIExpression()), !dbg !1369
  %109 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, i32 %108, !dbg !1373
  %110 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %109, align 4, !dbg !1373, !tbaa !922
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %110, metadata !723, metadata !DIExpression()) #7, !dbg !1376
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %110, i32 0, i32 0, i32 2, !dbg !1378
  store i8 0, i8* %111, align 8, !dbg !1378, !tbaa !532
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %110, i32 0, i32 0, i32 1, !dbg !1379
  call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %112) #6, !dbg !1379
  %113 = add nuw i32 %108, 1, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %113, metadata !1303, metadata !DIExpression()), !dbg !1369
  %114 = icmp eq i32 %113, %92, !dbg !1370
  br i1 %114, label %106, label %107, !dbg !1370, !llvm.loop !1381

115:                                              ; preds = %117, %104, %106
  %116 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, %8, !dbg !1383
  br i1 %116, label %126, label %124, !dbg !1383

117:                                              ; preds = %106, %117
  %118 = phi i32 [ %122, %117 ], [ 0, %106 ]
  call void @llvm.dbg.value(metadata i32 %118, metadata !1305, metadata !DIExpression()), !dbg !1371
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93, i32 %118, !dbg !1384
  %120 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %119, align 4, !dbg !1384, !tbaa !922
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %120, metadata !730, metadata !DIExpression()) #7, !dbg !1387
  %121 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %120, i32 0, i32 0, i32 0, !dbg !1389
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %121) #6, !dbg !1389
  %122 = add nuw i32 %118, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %122, metadata !1305, metadata !DIExpression()), !dbg !1371
  %123 = icmp eq i32 %122, %92, !dbg !1372
  br i1 %123, label %115, label %117, !dbg !1372, !llvm.loop !1391

124:                                              ; preds = %115
  %125 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %93 to i8*, !dbg !1393
  call void @free(i8* %125) #6, !dbg !1393
  br label %126, !dbg !1396

126:                                              ; preds = %124, %115
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1397
  ret i32 %92, !dbg !1398
}

; Function Attrs: nounwind
define weak dso_local i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z"(i32 %0, i32 %1, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %2, i32 %3) local_unnamed_addr #4 !dbg !1399 {
  %5 = alloca %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::Synchronization::validate_action", align 4
  call void @llvm.dbg.value(metadata i32 %3, metadata !1403, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, metadata !1404, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %1, metadata !1405, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %0, metadata !1406, metadata !DIExpression()), !dbg !1418
  %7 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5 to i8*, !dbg !1419
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1419
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, metadata !1407, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %1, metadata !1405, metadata !DIExpression()), !dbg !1418
  call void @"?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull sret(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair") align 4 %5, i32 %0, i32 %1) #8, !dbg !1419
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 0, !dbg !1420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1420
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1408, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, metadata !1097, metadata !DIExpression()), !dbg !1421
  store i8 0, i8* %8, align 4, !dbg !1423, !tbaa !1104
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %6, i32 0, i32 1, !dbg !1423
  store i32 0, i32* %9, align 4, !dbg !1423, !tbaa !1106
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 0, !dbg !1424
  %11 = load i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)*, i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %10, align 4, !dbg !1424, !tbaa !1108
  %12 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2 to i8*, !dbg !1424
  %13 = call zeroext i1 %11(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6) #6, !dbg !1424
  br i1 %13, label %15, label %14, !dbg !1424

14:                                               ; preds = %4
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1425
  br label %123, !dbg !1428

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 0, !dbg !1429
  %17 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1429, !tbaa !932
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %17, i32 0, i32 1, !dbg !1429
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1409, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1410, metadata !DIExpression()), !dbg !1418
  %19 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, align 4, !dbg !1430, !tbaa !922
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %18, metadata !1409, metadata !DIExpression()), !dbg !1418
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %19, null, !dbg !1431
  br i1 %20, label %105, label %21, !dbg !1431

21:                                               ; preds = %15
  %22 = load i8, i8* %8, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24, !dbg !1431

24:                                               ; preds = %21, %50
  %25 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %55, %50 ], [ null, %21 ]
  %26 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %54, %50 ], [ null, %21 ]
  %27 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %53, %50 ], [ null, %21 ]
  %28 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %34, %50 ], [ %19, %21 ]
  %29 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %52, %50 ], [ null, %21 ]
  %30 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %51, %50 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, metadata !1409, metadata !DIExpression()), !dbg !1418
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 1, !dbg !1432
  %32 = load i32, i32* %31, align 4, !dbg !1432, !tbaa !471
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, i32 0, i32 2, !dbg !1433
  %34 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %33, align 4, !dbg !1433, !tbaa !1093
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1417, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %32, metadata !1415, metadata !DIExpression()), !dbg !1434
  %35 = icmp eq i32 %32, %0, !dbg !1435
  br i1 %35, label %36, label %50, !dbg !1435

36:                                               ; preds = %24
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %30, align 4, !dbg !1436, !tbaa !922
  %37 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1439, !tbaa !932
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %37, i32 0, i32 2, !dbg !1439
  %39 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1439, !tbaa !1143
  %40 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %39, %28, !dbg !1439
  br i1 %40, label %41, label %42, !dbg !1439

41:                                               ; preds = %36
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %29, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %38, align 4, !dbg !1440, !tbaa !1143
  br label %42, !dbg !1443

42:                                               ; preds = %41, %36
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %25, null, !dbg !1444
  br i1 %43, label %50, label %44, !dbg !1444

44:                                               ; preds = %42
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %27, null, !dbg !1445
  br i1 %45, label %48, label %46, !dbg !1445

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %26, i32 0, i32 2, !dbg !1448
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %47, align 4, !dbg !1448, !tbaa !1093
  br label %48, !dbg !1451

48:                                               ; preds = %46, %44
  %49 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %46 ], [ %28, %44 ], !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %49, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %28, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32* undef, metadata !1452, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i32* %31, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i32 %1, i32* %31, align 4, !dbg !1460, !tbaa !471
  br label %50, !dbg !1461

50:                                               ; preds = %48, %42, %24
  %51 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %30, %42 ], [ %30, %48 ], [ %33, %24 ], !dbg !1418
  %52 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %29, %42 ], [ %29, %48 ], [ %28, %24 ], !dbg !1418
  %53 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %27, %42 ], [ %49, %48 ], [ %27, %24 ], !dbg !1462
  %54 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %26, %42 ], [ %28, %48 ], [ %26, %24 ], !dbg !1463
  %55 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %28, %42 ], [ %25, %48 ], [ %25, %24 ], !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %55, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %54, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %53, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %52, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %51, metadata !1409, metadata !DIExpression()), !dbg !1418
  %56 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %34, null, !dbg !1431
  br i1 %56, label %86, label %24, !dbg !1431, !llvm.loop !1464

57:                                               ; preds = %21, %80
  %58 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ null, %21 ]
  %59 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ null, %21 ]
  %60 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %66, %80 ], [ %19, %21 ]
  %61 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %82, %80 ], [ null, %21 ]
  %62 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %81, %80 ], [ %18, %21 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, metadata !1409, metadata !DIExpression()), !dbg !1418
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 1, !dbg !1432
  %64 = load i32, i32* %63, align 4, !dbg !1432, !tbaa !471
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, i32 0, i32 2, !dbg !1433
  %66 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %65, align 4, !dbg !1433, !tbaa !1093
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1417, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %64, metadata !1415, metadata !DIExpression()), !dbg !1434
  %67 = icmp eq i32 %64, %0, !dbg !1435
  br i1 %67, label %68, label %80, !dbg !1435

68:                                               ; preds = %57
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %62, align 4, !dbg !1436, !tbaa !922
  %69 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %16, align 4, !dbg !1439, !tbaa !932
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %69, i32 0, i32 2, !dbg !1439
  %71 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1439, !tbaa !1143
  %72 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %71, %60, !dbg !1439
  br i1 %72, label %73, label %74, !dbg !1439

73:                                               ; preds = %68
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %61, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %70, align 4, !dbg !1440, !tbaa !1143
  br label %74, !dbg !1443

74:                                               ; preds = %68, %73
  %75 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %59, null, !dbg !1445
  br i1 %75, label %78, label %76, !dbg !1445

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %58, i32 0, i32 2, !dbg !1448
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %77, align 4, !dbg !1448, !tbaa !1093
  br label %78, !dbg !1451

78:                                               ; preds = %74, %76
  %79 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %59, %76 ], [ %60, %74 ], !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %79, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %60, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32* undef, metadata !1452, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i32* %63, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i32 %1, i32* %63, align 4, !dbg !1460, !tbaa !471
  br label %80, !dbg !1461

80:                                               ; preds = %57, %78
  %81 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %62, %78 ], [ %65, %57 ], !dbg !1418
  %82 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %61, %78 ], [ %60, %57 ], !dbg !1418
  %83 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %79, %78 ], [ %59, %57 ], !dbg !1462
  %84 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %60, %78 ], [ %58, %57 ], !dbg !1463
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %84, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %83, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %82, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %81, metadata !1409, metadata !DIExpression()), !dbg !1418
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %66, null, !dbg !1431
  br i1 %85, label %86, label %57, !dbg !1431, !llvm.loop !1464

86:                                               ; preds = %50, %80
  %87 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %83, %80 ], [ %53, %50 ], !dbg !1462
  %88 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %84, %80 ], [ %54, %50 ], !dbg !1463
  %89 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ null, %80 ], [ %55, %50 ], !dbg !1418
  %90 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, null, !dbg !1466
  br i1 %90, label %105, label %91, !dbg !1466

91:                                               ; preds = %86
  %92 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, i32 0, i32 2, !dbg !1467
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* null, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %92, align 4, !dbg !1467, !tbaa !1093
  %93 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair", %"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* %5, i32 0, i32 1, !dbg !1470
  %94 = load %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"*, %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"** %93, align 4, !dbg !1470, !tbaa !934
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 1, !dbg !1470
  %96 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %95, align 4, !dbg !1470, !tbaa !1137
  %97 = icmp eq %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %96, null, !dbg !1470
  br i1 %97, label %102, label %98, !dbg !1470

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1471
  %100 = load %"struct.Halide::Runtime::Internal::Synchronization::queue_data"*, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %99, align 4, !dbg !1471, !tbaa !1143
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %100, i32 0, i32 2, !dbg !1471
  br label %102, !dbg !1474

102:                                              ; preds = %91, %98
  %103 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** [ %101, %98 ], [ %95, %91 ]
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %87, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %103, align 4, !dbg !1475, !tbaa !922
  %104 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket", %"struct.Halide::Runtime::Internal::Synchronization::hash_bucket"* %94, i32 0, i32 2, !dbg !1476
  store %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %88, %"struct.Halide::Runtime::Internal::Synchronization::queue_data"** %104, align 4, !dbg !1476, !tbaa !1143
  br label %105, !dbg !1477

105:                                              ; preds = %15, %102, %86
  %106 = phi i1 [ true, %102 ], [ false, %86 ], [ false, %15 ]
  %107 = phi %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* [ %89, %102 ], [ %89, %86 ], [ null, %15 ]
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::parking_control", %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* %2, i32 0, i32 3, !dbg !1478
  %109 = load void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)*, void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %108, align 4, !dbg !1478, !tbaa !1479
  %110 = icmp ne %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, null, !dbg !1478
  call void %109(i8* nonnull %12, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %6, i1 zeroext %110, i1 zeroext %106) #6, !dbg !1478
  br i1 %110, label %111, label %116, !dbg !1480

111:                                              ; preds = %105
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 3, !dbg !1481
  store i32 %3, i32* %112, align 8, !dbg !1481, !tbaa !1094
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !717, metadata !DIExpression()) #7, !dbg !1484
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 0, !dbg !1486
  call x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection* nonnull %113) #6, !dbg !1486
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1487
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !723, metadata !DIExpression()) #7, !dbg !1488
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 2, !dbg !1490
  store i8 0, i8* %114, align 8, !dbg !1490, !tbaa !532
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::queue_data", %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %107, i32 0, i32 0, i32 1, !dbg !1491
  call x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64* nonnull %115) #6, !dbg !1491
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::queue_data"* %89, metadata !730, metadata !DIExpression()) #7, !dbg !1492
  call x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection* nonnull %113) #6, !dbg !1494
  br label %117, !dbg !1495

116:                                              ; preds = %105
  call void @"?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z"(%"struct.Halide::Runtime::Internal::Synchronization::bucket_pair"* nonnull align 4 dereferenceable(8) %5) #8, !dbg !1496
  br label %117, !dbg !1498

117:                                              ; preds = %116, %111
  %118 = load i8, i8* %8, align 4, !dbg !1499
  %119 = and i8 %118, 1, !dbg !1499
  %120 = icmp ne i8 %119, 0, !dbg !1499
  %121 = and i1 %110, %120, !dbg !1499
  %122 = zext i1 %121 to i32, !dbg !1499
  br label %123

123:                                              ; preds = %117, %14
  %124 = phi i32 [ %122, %117 ], [ 0, %14 ], !dbg !1418
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1500
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1500
  ret i32 %124, !dbg !1500
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1501 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1503, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8* %0, metadata !1504, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8* %0, metadata !1505, metadata !DIExpression()), !dbg !1507
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1508
  %4 = bitcast i8* %3 to i32**, !dbg !1508
  %5 = load i32*, i32** %4, align 4, !dbg !1508, !tbaa !1509
  %6 = load i32, i32* %5, align 4, !dbg !1508, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %6, metadata !1506, metadata !DIExpression()), !dbg !1507
  %7 = icmp eq i32 %6, 3, !dbg !1511
  ret i1 %7, !dbg !1511
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1512 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1514, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1519
  call void @llvm.dbg.value(metadata i32 %1, metadata !1515, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !1516, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !1517, metadata !DIExpression()), !dbg !1519
  %4 = select i1 %2, i32 2, i32 0, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %4, metadata !1518, metadata !DIExpression()), !dbg !1519
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1521
  %6 = bitcast i8* %5 to i32**, !dbg !1521
  %7 = load i32*, i32** %6, align 4, !dbg !1521, !tbaa !1509
  call void @llvm.dbg.value(metadata i32* undef, metadata !1522, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32* %7, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %4, i32* %7, align 4, !dbg !1528, !tbaa !471
  fence seq_cst, !dbg !1529
  ret i32 0, !dbg !1530
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1531 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1533, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1540
  call void @llvm.dbg.value(metadata i32 %1, metadata !1534, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %0, metadata !1535, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8* %0, metadata !1536, metadata !DIExpression()), !dbg !1540
  br i1 %2, label %8, label %4, !dbg !1541

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1536, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32 0, metadata !1537, metadata !DIExpression()), !dbg !1542
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1543
  %6 = bitcast i8* %5 to i32**, !dbg !1543
  %7 = load i32*, i32** %6, align 4, !dbg !1543, !tbaa !1544
  call void @llvm.dbg.value(metadata i32* undef, metadata !1452, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32* %7, metadata !1457, metadata !DIExpression()), !dbg !1546
  store i32 0, i32* %7, align 4, !dbg !1548, !tbaa !471
  br label %8, !dbg !1549

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1550
}

; Function Attrs: nounwind
define weak dso_local zeroext i1 @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #4 !dbg !1551 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1553, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8* %0, metadata !1554, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8* %0, metadata !1555, metadata !DIExpression()), !dbg !1557
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1558
  %4 = bitcast i8* %3 to i32**, !dbg !1558
  %5 = load i32*, i32** %4, align 4, !dbg !1558, !tbaa !1559
  %6 = load i32, i32* %5, align 4, !dbg !1558, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %6, metadata !1556, metadata !DIExpression()), !dbg !1557
  %7 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1561
  %8 = bitcast i8* %7 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1561
  %9 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %8, align 4, !dbg !1561, !tbaa !1562
  %10 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9 to i32, !dbg !1561
  %11 = icmp eq i32 %6, %10, !dbg !1561
  br i1 %11, label %12, label %27, !dbg !1561

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1556, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i32* undef, metadata !1452, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i32* %5, metadata !1457, metadata !DIExpression()), !dbg !1563
  store i32 0, i32* %5, align 4, !dbg !1565, !tbaa !471
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, metadata !1566, metadata !DIExpression()), !dbg !1572
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %9, i32 0, i32 0, !dbg !1574
  %14 = load i32, i32* %13, align 4, !dbg !1574, !tbaa !471
  br label %15, !dbg !1575

15:                                               ; preds = %19, %12
  %16 = phi i32 [ %14, %12 ], [ %22, %19 ], !dbg !1572
  call void @llvm.dbg.value(metadata i32 %16, metadata !1569, metadata !DIExpression()), !dbg !1572
  %17 = and i32 %16, 1, !dbg !1576
  %18 = icmp eq i32 %17, 0, !dbg !1576
  br i1 %18, label %24, label %19, !dbg !1576

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %16, metadata !1569, metadata !DIExpression()), !dbg !1572
  %20 = or i32 %16, 2, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %20, metadata !1570, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32* undef, metadata !1579, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32* undef, metadata !1582, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32* %13, metadata !1583, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32* %13, metadata !494, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %16, metadata !495, metadata !DIExpression()), !dbg !1586
  %21 = cmpxchg i32* %13, i32 %16, i32 %20 seq_cst seq_cst, !dbg !1588
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %22, metadata !496, metadata !DIExpression()), !dbg !1586
  %23 = icmp eq i32 %16, %22, !dbg !1589
  br i1 %23, label %24, label %15, !llvm.loop !1590

24:                                               ; preds = %15, %19
  %25 = phi i8 [ 1, %15 ], [ 0, %19 ]
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1592
  store i8 %25, i8* %26, align 4, !dbg !1592, !tbaa !1104
  br label %27, !dbg !1593

27:                                               ; preds = %2, %24
  ret i1 %11, !dbg !1594
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1, i1 zeroext %2, i1 zeroext %3) #5 !dbg !1595 {
  call void @llvm.dbg.value(metadata i1 %3, metadata !1597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  call void @llvm.dbg.value(metadata i1 %2, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1602
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %0, metadata !1600, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %0, metadata !1601, metadata !DIExpression()), !dbg !1602
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 0, !dbg !1603
  %6 = load i8, i8* %5, align 4, !dbg !1603, !tbaa !1104, !range !583
  %7 = icmp ne i8 %6, 0, !dbg !1603
  %8 = and i1 %7, %3, !dbg !1603
  br i1 %8, label %9, label %15, !dbg !1603

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1604
  %11 = bitcast i8* %10 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1604
  %12 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %11, align 4, !dbg !1604, !tbaa !1562
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, metadata !1607, metadata !DIExpression()), !dbg !1610
  %13 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %12, i32 0, i32 0, !dbg !1612
  call void @llvm.dbg.value(metadata i32 2, metadata !1613, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32* %13, metadata !1616, metadata !DIExpression()), !dbg !1617
  %14 = atomicrmw or i32* %13, i32 2 seq_cst, !dbg !1619
  br label %15, !dbg !1620

15:                                               ; preds = %4, %9
  ret void, !dbg !1621
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local zeroext i1 @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z"(i8* %0, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* nonnull align 4 dereferenceable(8) %1) #5 !dbg !1622 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, metadata !1624, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %0, metadata !1625, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %0, metadata !1626, metadata !DIExpression()), !dbg !1628
  %3 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1629
  %4 = bitcast i8* %3 to i32**, !dbg !1629
  %5 = load i32*, i32** %4, align 4, !dbg !1629, !tbaa !1630
  %6 = load i32, i32* %5, align 4, !dbg !1629, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %6, metadata !1627, metadata !DIExpression()), !dbg !1628
  %7 = icmp eq i32 %6, 0, !dbg !1632
  %8 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1633
  %9 = bitcast i8* %8 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1633
  %10 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %9, align 4, !dbg !1633, !tbaa !1635
  %11 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10 to i32, !dbg !1633
  br i1 %7, label %16, label %12, !dbg !1632

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, %11, !dbg !1636
  br i1 %13, label %18, label %14, !dbg !1636

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::validate_action", %"struct.Halide::Runtime::Internal::Synchronization::validate_action"* %1, i32 0, i32 1, !dbg !1637
  br label %16, !dbg !1640

16:                                               ; preds = %2, %14
  %17 = phi i32* [ %15, %14 ], [ %5, %2 ]
  store i32 %11, i32* %17, align 4, !dbg !1633, !tbaa !471
  br label %18, !dbg !1641

18:                                               ; preds = %16, %12
  %19 = phi i1 [ true, %12 ], [ %7, %16 ], !dbg !1628
  ret i1 %19, !dbg !1641
}

; Function Attrs: nounwind
define weak dso_local void @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #4 !dbg !1642 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1644, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %0, metadata !1645, metadata !DIExpression()), !dbg !1646
  %3 = getelementptr inbounds i8, i8* %0, i32 20, !dbg !1647
  %4 = bitcast i8* %3 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"**, !dbg !1647
  %5 = load %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %4, align 4, !dbg !1647, !tbaa !1635
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1648, metadata !DIExpression()) #7, !dbg !1653
  call void @llvm.dbg.value(metadata i32 1, metadata !1651, metadata !DIExpression()) #7, !dbg !1653
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()) #7, !dbg !1653
  %6 = getelementptr inbounds %"class.Halide::Runtime::Internal::Synchronization::fast_mutex", %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, i32 0, i32 0, !dbg !1655
  call void @llvm.dbg.value(metadata i32* undef, metadata !562, metadata !DIExpression()) #7, !dbg !1656
  call void @llvm.dbg.value(metadata i32* undef, metadata !565, metadata !DIExpression()) #7, !dbg !1656
  call void @llvm.dbg.value(metadata i32* %6, metadata !566, metadata !DIExpression()) #7, !dbg !1656
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32* %6, metadata !494, metadata !DIExpression()) #7, !dbg !1658
  call void @llvm.dbg.value(metadata i32 1, metadata !495, metadata !DIExpression()) #7, !dbg !1658
  %7 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1660
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !1658
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1661
  br i1 %8, label %22, label %9, !dbg !1655

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5, metadata !1662, metadata !DIExpression()) #7, !dbg !1668
  call void @llvm.dbg.value(metadata i32 1, metadata !1665, metadata !DIExpression()) #7, !dbg !1668
  call void @llvm.dbg.value(metadata i32 0, metadata !1666, metadata !DIExpression()) #7, !dbg !1668
  call void @llvm.dbg.value(metadata i32* undef, metadata !1672, metadata !DIExpression()) #7, !dbg !1677
  call void @llvm.dbg.value(metadata i32* undef, metadata !1675, metadata !DIExpression()) #7, !dbg !1677
  call void @llvm.dbg.value(metadata i32* %6, metadata !1676, metadata !DIExpression()) #7, !dbg !1677
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1679
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1679
  call void @llvm.dbg.value(metadata i32* %6, metadata !494, metadata !DIExpression()) #7, !dbg !1679
  call void @llvm.dbg.value(metadata i32 1, metadata !495, metadata !DIExpression()) #7, !dbg !1679
  %10 = cmpxchg i32* %6, i32 1, i32 0 seq_cst seq_cst, !dbg !1681
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !1679
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !1682
  br i1 %11, label %22, label %12, !dbg !1683

12:                                               ; preds = %9
  %13 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1684
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1684
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1684
  call void @llvm.dbg.value(metadata i32* %6, metadata !1685, metadata !DIExpression()) #7, !dbg !1689
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1688, metadata !DIExpression()) #7, !dbg !1689
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1691, metadata !DIExpression()) #7, !dbg !1695
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1697
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1697
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %15, align 4, !dbg !1697, !tbaa !1163
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1697
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1697
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %17, align 4, !dbg !1697, !tbaa !1479
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1698
  store i32* %6, i32** %18, align 4, !dbg !1698, !tbaa !1509
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %14, align 4, !dbg !1699, !tbaa !1108
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %16, align 4, !dbg !1701, !tbaa !1228
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1702
  %20 = ptrtoint %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %5 to i32, !dbg !1702
  %21 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %20, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %19) #6, !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #7, !dbg !1703
  br label %22, !dbg !1703

22:                                               ; preds = %1, %9, %12
  ret void, !dbg !1704
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z"(i8* %0, i32 %1, i1 zeroext %2) #5 !dbg !1705 {
  call void @llvm.dbg.value(metadata i1 %2, metadata !1707, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1714
  call void @llvm.dbg.value(metadata i32 %1, metadata !1708, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8* %0, metadata !1709, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8* %0, metadata !1710, metadata !DIExpression()), !dbg !1714
  br i1 %2, label %8, label %4, !dbg !1715

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %0, metadata !1710, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1716
  %5 = getelementptr inbounds i8, i8* %0, i32 16, !dbg !1717
  %6 = bitcast i8* %5 to i32**, !dbg !1717
  %7 = load i32*, i32** %6, align 4, !dbg !1717, !tbaa !1630
  call void @llvm.dbg.value(metadata i32* undef, metadata !1452, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32* %7, metadata !1457, metadata !DIExpression()), !dbg !1718
  store i32 0, i32* %7, align 4, !dbg !1720, !tbaa !471
  br label %8, !dbg !1721

8:                                                ; preds = %4, %3
  ret i32 0, !dbg !1722
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_lock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1723 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1727, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1728, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1730, metadata !DIExpression()) #7, !dbg !1735
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()) #7, !dbg !1735
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()) #7, !dbg !1735
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1737
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !1738
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !1738
  call void @llvm.dbg.value(metadata i32* %3, metadata !484, metadata !DIExpression()) #7, !dbg !1738
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1740
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1740
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()) #7, !dbg !1740
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !1740
  %4 = cmpxchg i32* %3, i32 0, i32 1 seq_cst seq_cst, !dbg !1742
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !1740
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1743
  br i1 %5, label %53, label %6, !dbg !1737

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1730, metadata !DIExpression()) #7, !dbg !1735
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1728, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1744, metadata !DIExpression()) #7, !dbg !1758
  call void @llvm.dbg.value(metadata i32 40, metadata !1747, metadata !DIExpression()) #7, !dbg !1758
  %7 = load i32, i32* %3, align 4, !dbg !1762, !tbaa !471
  %8 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0
  %15 = ptrtoint %struct.halide_mutex* %0 to i32
  br label %16, !dbg !1763

16:                                               ; preds = %49, %6
  %17 = phi i32 [ %7, %6 ], [ %50, %49 ]
  %18 = phi i32 [ 40, %6 ], [ %51, %49 ]
  br label %19, !dbg !1764

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %26, %23 ], [ %17, %16 ], !dbg !1758
  call void @llvm.dbg.value(metadata i32 %18, metadata !1747, metadata !DIExpression()) #7, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %20, metadata !1748, metadata !DIExpression()) #7, !dbg !1758
  %21 = and i32 %20, 1, !dbg !1764
  %22 = icmp eq i32 %21, 0, !dbg !1764
  br i1 %22, label %23, label %28, !dbg !1764

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %20, metadata !1748, metadata !DIExpression()) #7, !dbg !1758
  %24 = or i32 %20, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %24, metadata !1749, metadata !DIExpression()) #7, !dbg !1766
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !1767
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !1767
  call void @llvm.dbg.value(metadata i32* %3, metadata !484, metadata !DIExpression()) #7, !dbg !1767
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1769
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1769
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()) #7, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %20, metadata !495, metadata !DIExpression()) #7, !dbg !1769
  %25 = cmpxchg i32* %3, i32 %20, i32 %24 seq_cst seq_cst, !dbg !1771
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %26, metadata !496, metadata !DIExpression()) #7, !dbg !1769
  %27 = icmp eq i32 %20, %26, !dbg !1772
  br i1 %27, label %53, label %19

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !504, metadata !DIExpression()) #7, !dbg !1773
  %29 = icmp sgt i32 %18, 0, !dbg !1775
  br i1 %29, label %30, label %35, !dbg !1775

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %18, metadata !1747, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1758
  %31 = icmp eq i32 %18, 1, !dbg !1776
  br i1 %31, label %35, label %32, !dbg !1777

32:                                               ; preds = %30
  %33 = add nsw i32 %18, -1, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %33, metadata !1747, metadata !DIExpression()) #7, !dbg !1758
  call void @halide_thread_yield() #6, !dbg !1779
  %34 = load i32, i32* %3, align 4, !dbg !1782, !tbaa !471
  br label %49, !dbg !1783

35:                                               ; preds = %30, %28
  %36 = phi i32 [ 0, %30 ], [ %18, %28 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !1748, metadata !DIExpression()) #7, !dbg !1758
  %37 = and i32 %20, 2, !dbg !1784
  %38 = icmp eq i32 %37, 0, !dbg !1784
  br i1 %38, label %39, label %44, !dbg !1784

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %20, metadata !1748, metadata !DIExpression()) #7, !dbg !1758
  %40 = or i32 %20, 2, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %40, metadata !1753, metadata !DIExpression()) #7, !dbg !1786
  call void @llvm.dbg.value(metadata i32* undef, metadata !1579, metadata !DIExpression()) #7, !dbg !1787
  call void @llvm.dbg.value(metadata i32* undef, metadata !1582, metadata !DIExpression()) #7, !dbg !1787
  call void @llvm.dbg.value(metadata i32* %3, metadata !1583, metadata !DIExpression()) #7, !dbg !1787
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1789
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1789
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()) #7, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %20, metadata !495, metadata !DIExpression()) #7, !dbg !1789
  %41 = cmpxchg i32* %3, i32 %20, i32 %40 seq_cst seq_cst, !dbg !1791
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %42, metadata !496, metadata !DIExpression()) #7, !dbg !1789
  %43 = icmp eq i32 %20, %42, !dbg !1792
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1793
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1756, metadata !DIExpression()) #7, !dbg !1793
  call void @llvm.dbg.value(metadata i32* %3, metadata !1685, metadata !DIExpression()) #7, !dbg !1794
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1688, metadata !DIExpression()) #7, !dbg !1794
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1691, metadata !DIExpression()) #7, !dbg !1796
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %10, align 4, !dbg !1798, !tbaa !1163
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %12, align 4, !dbg !1798, !tbaa !1479
  store i32* %3, i32** %13, align 4, !dbg !1799, !tbaa !1509
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %9, align 4, !dbg !1800, !tbaa !1108
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %11, align 4, !dbg !1801, !tbaa !1228
  %45 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %14) #6, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %45, metadata !1757, metadata !DIExpression()) #7, !dbg !1803
  %46 = icmp eq i32 %45, %15, !dbg !1804
  br i1 %46, label %52, label %47, !dbg !1804

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 40, metadata !1747, metadata !DIExpression()) #7, !dbg !1758
  %48 = load i32, i32* %3, align 4, !dbg !1805, !tbaa !471
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1806
  br label %49

49:                                               ; preds = %47, %39, %32
  %50 = phi i32 [ %42, %39 ], [ %48, %47 ], [ %34, %32 ]
  %51 = phi i32 [ %36, %39 ], [ 40, %47 ], [ %33, %32 ]
  br label %16, !dbg !1764, !llvm.loop !1807

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #7, !dbg !1806
  br label %53

53:                                               ; preds = %23, %1, %52
  ret void, !dbg !1809
}

; Function Attrs: nounwind
define weak dso_local void @halide_mutex_unlock(%struct.halide_mutex* %0) local_unnamed_addr #4 !dbg !1810 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1812, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1813, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1648, metadata !DIExpression()) #7, !dbg !1815
  call void @llvm.dbg.value(metadata i32 1, metadata !1651, metadata !DIExpression()) #7, !dbg !1815
  call void @llvm.dbg.value(metadata i32 0, metadata !1652, metadata !DIExpression()) #7, !dbg !1815
  %3 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %0, i32 0, i32 0, i32 0, !dbg !1817
  call void @llvm.dbg.value(metadata i32* undef, metadata !562, metadata !DIExpression()) #7, !dbg !1818
  call void @llvm.dbg.value(metadata i32* undef, metadata !565, metadata !DIExpression()) #7, !dbg !1818
  call void @llvm.dbg.value(metadata i32* %3, metadata !566, metadata !DIExpression()) #7, !dbg !1818
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1820
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1820
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()) #7, !dbg !1820
  call void @llvm.dbg.value(metadata i32 1, metadata !495, metadata !DIExpression()) #7, !dbg !1820
  %4 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !1822
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !1820
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !1823
  br i1 %5, label %19, label %6, !dbg !1817

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %0, metadata !1662, metadata !DIExpression()) #7, !dbg !1824
  call void @llvm.dbg.value(metadata i32 1, metadata !1665, metadata !DIExpression()) #7, !dbg !1824
  call void @llvm.dbg.value(metadata i32 0, metadata !1666, metadata !DIExpression()) #7, !dbg !1824
  call void @llvm.dbg.value(metadata i32* undef, metadata !1672, metadata !DIExpression()) #7, !dbg !1826
  call void @llvm.dbg.value(metadata i32* undef, metadata !1675, metadata !DIExpression()) #7, !dbg !1826
  call void @llvm.dbg.value(metadata i32* %3, metadata !1676, metadata !DIExpression()) #7, !dbg !1826
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1828
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1828
  call void @llvm.dbg.value(metadata i32* %3, metadata !494, metadata !DIExpression()) #7, !dbg !1828
  call void @llvm.dbg.value(metadata i32 1, metadata !495, metadata !DIExpression()) #7, !dbg !1828
  %7 = cmpxchg i32* %3, i32 1, i32 0 seq_cst seq_cst, !dbg !1830
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !1828
  %8 = extractvalue { i32, i1 } %7, 1, !dbg !1831
  br i1 %8, label %19, label %9, !dbg !1832

9:                                                ; preds = %6
  %10 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2 to i8*, !dbg !1833
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #7, !dbg !1833
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1667, metadata !DIExpression()) #7, !dbg !1833
  call void @llvm.dbg.value(metadata i32* %3, metadata !1685, metadata !DIExpression()) #7, !dbg !1834
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1688, metadata !DIExpression()) #7, !dbg !1834
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, metadata !1691, metadata !DIExpression()) #7, !dbg !1836
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1838
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1838
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !dbg !1838, !tbaa !1163
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1838
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1838
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !1838, !tbaa !1479
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 1, !dbg !1839
  store i32* %3, i32** %15, align 4, !dbg !1839, !tbaa !1509
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !1840, !tbaa !1108
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !dbg !1841, !tbaa !1228
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %2, i32 0, i32 0, !dbg !1842
  %17 = ptrtoint %struct.halide_mutex* %0 to i32, !dbg !1842
  %18 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %16) #6, !dbg !1842
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #7, !dbg !1843
  br label %19, !dbg !1843

19:                                               ; preds = %1, %6, %9
  ret void, !dbg !1844
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_broadcast(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1845 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1851, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1853, metadata !DIExpression()) #7, !dbg !1858
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %3, metadata !1861, metadata !DIExpression()) #7, !dbg !1864
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !1866
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1867
  %5 = load i32, i32* %4, align 4, !dbg !1867, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %5, metadata !1856, metadata !DIExpression()) #7, !dbg !1858
  %6 = icmp eq i32 %5, 0, !dbg !1868
  br i1 %6, label %7, label %8, !dbg !1868

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !1869, metadata !DIExpression()) #7, !dbg !1872
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1876
  br label %20, !dbg !1877

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1853, metadata !DIExpression()) #7, !dbg !1858
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1851, metadata !DIExpression()), !dbg !1852
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2 to i8*, !dbg !1878
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !1878
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1857, metadata !DIExpression()) #7, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %5, metadata !1856, metadata !DIExpression()) #7, !dbg !1858
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1878
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !1879, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata i32* %4, metadata !1882, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1883, metadata !DIExpression()) #7, !dbg !1884
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, metadata !1691, metadata !DIExpression()) #7, !dbg !1886
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1888
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1888
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !dbg !1888, !tbaa !1163
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1888
  store i32 (i8*, i32, i1)* @"?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !dbg !1888, !tbaa !1228
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1888
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 1, !dbg !1889
  store i32* %4, i32** %15, align 4, !dbg !1889, !tbaa !1559
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 2, !dbg !1889
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !dbg !1889, !tbaa !1562
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !1890, !tbaa !1108
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !1892, !tbaa !1479
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::broadcast_parking_control"* %2, i32 0, i32 0, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %5, metadata !1856, metadata !DIExpression()) #7, !dbg !1858
  %18 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1893
  %19 = call i32 @"?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z"(i32 %18, i32 %5, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17, i32 0) #6, !dbg !1893
  call void @llvm.dbg.value(metadata i8* %3, metadata !1869, metadata !DIExpression()) #7, !dbg !1894
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1896
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !1897
  br label %20, !dbg !1897

20:                                               ; preds = %7, %8
  ret void, !dbg !1898
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_signal(%struct.halide_cond* %0) local_unnamed_addr #4 !dbg !1899 {
  %2 = alloca %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1902, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1904, metadata !DIExpression()) #7, !dbg !1909
  %3 = bitcast %struct.halide_cond* %0 to i8*, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %3, metadata !1861, metadata !DIExpression()) #7, !dbg !1912
  tail call void @__tsan_mutex_pre_signal(i8* nonnull %3, i32 0) #6, !dbg !1914
  %4 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1915
  %5 = load i32, i32* %4, align 4, !dbg !1915, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %5, metadata !1907, metadata !DIExpression()) #7, !dbg !1909
  %6 = icmp eq i32 %5, 0, !dbg !1916
  br i1 %6, label %7, label %8, !dbg !1916

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !1869, metadata !DIExpression()) #7, !dbg !1917
  tail call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1921
  br label %20, !dbg !1922

8:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1904, metadata !DIExpression()) #7, !dbg !1909
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1902, metadata !DIExpression()), !dbg !1903
  %9 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2 to i8*, !dbg !1923
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !1923
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1908, metadata !DIExpression()) #7, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %5, metadata !1907, metadata !DIExpression()) #7, !dbg !1909
  %10 = inttoptr i32 %5 to %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"*, !dbg !1923
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, metadata !1924, metadata !DIExpression()) #7, !dbg !1929
  call void @llvm.dbg.value(metadata i32* %4, metadata !1927, metadata !DIExpression()) #7, !dbg !1929
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1928, metadata !DIExpression()) #7, !dbg !1929
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, metadata !1691, metadata !DIExpression()) #7, !dbg !1931
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 0, !dbg !1933
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %11, align 4, !dbg !1933, !tbaa !1108
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 1, !dbg !1933
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %12, align 4, !dbg !1933, !tbaa !1163
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 2, !dbg !1933
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, i32 3, !dbg !1933
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %14, align 4, !dbg !1933, !tbaa !1479
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 1, !dbg !1934
  store i32* %4, i32** %15, align 4, !dbg !1934, !tbaa !1544
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 2, !dbg !1934
  store %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"* %10, %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %16, align 4, !dbg !1934, !tbaa !1935
  store i32 (i8*, i32, i1)* @"?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %13, align 4, !dbg !1936, !tbaa !1228
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::signal_parking_control"* %2, i32 0, i32 0, !dbg !1938
  %18 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1938
  %19 = call i32 @"?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %18, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %17) #6, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %3, metadata !1869, metadata !DIExpression()) #7, !dbg !1939
  call void @__tsan_mutex_post_signal(i8* nonnull %3, i32 0) #6, !dbg !1941
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !1942
  br label %20, !dbg !1942

20:                                               ; preds = %7, %8
  ret void, !dbg !1943
}

; Function Attrs: nounwind
define weak dso_local void @halide_cond_wait(%struct.halide_cond* %0, %struct.halide_mutex* %1) local_unnamed_addr #4 !dbg !1944 {
  %3 = alloca %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", align 4
  %4 = alloca %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", align 4
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1949, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1951, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1953, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata %struct.halide_cond* %0, metadata !1956, metadata !DIExpression()) #7, !dbg !1962
  %5 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4 to i8*, !dbg !1964
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1964
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1957, metadata !DIExpression()) #7, !dbg !1964
  %6 = getelementptr %struct.halide_cond, %struct.halide_cond* %0, i32 0, i32 0, i32 0, !dbg !1964
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1965, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata i32* %6, metadata !1968, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1969, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, metadata !1691, metadata !DIExpression()) #7, !dbg !1972
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 0, !dbg !1974
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 1, !dbg !1974
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 2, !dbg !1974
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, i32 3, !dbg !1974
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %10, align 4, !dbg !1974, !tbaa !1479
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 1, !dbg !1975
  store i32* %6, i32** %11, align 4, !dbg !1975, !tbaa !1630
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 2, !dbg !1975
  %13 = bitcast %"class.Halide::Runtime::Internal::Synchronization::fast_mutex"** %12 to %struct.halide_mutex**, !dbg !1975
  store %struct.halide_mutex* %1, %struct.halide_mutex** %13, align 4, !dbg !1975, !tbaa !1635
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %7, align 4, !dbg !1976, !tbaa !1108
  store void (i8*)* @"?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %8, align 4, !dbg !1978, !tbaa !1163
  store i32 (i8*, i32, i1)* @"?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %9, align 4, !dbg !1979, !tbaa !1228
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::wait_parking_control"* %4, i32 0, i32 0, !dbg !1980
  %15 = ptrtoint %struct.halide_cond* %0 to i32, !dbg !1980
  %16 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %15, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %14) #6, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %16, metadata !1958, metadata !DIExpression()) #7, !dbg !1962
  %17 = ptrtoint %struct.halide_mutex* %1 to i32, !dbg !1981
  %18 = icmp eq i32 %16, %17, !dbg !1981
  br i1 %18, label %69, label %19, !dbg !1981

19:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1730, metadata !DIExpression()) #7, !dbg !1982
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()) #7, !dbg !1982
  call void @llvm.dbg.value(metadata i32 1, metadata !1734, metadata !DIExpression()) #7, !dbg !1982
  %20 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !1985
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !1986
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !1986
  call void @llvm.dbg.value(metadata i32* %20, metadata !484, metadata !DIExpression()) #7, !dbg !1986
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i32* %20, metadata !494, metadata !DIExpression()) #7, !dbg !1988
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()) #7, !dbg !1988
  %21 = cmpxchg i32* %20, i32 0, i32 1 seq_cst seq_cst, !dbg !1990
  call void @llvm.dbg.value(metadata i32 undef, metadata !496, metadata !DIExpression()) #7, !dbg !1988
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !1991
  br i1 %22, label %77, label %23, !dbg !1985

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1744, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i32 40, metadata !1747, metadata !DIExpression()) #7, !dbg !1992
  %24 = load i32, i32* %20, align 4, !dbg !1994, !tbaa !471
  %25 = bitcast %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3 to i8*
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 1
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 2
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0, i32 3
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 1
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control", %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, i32 0, i32 0
  br label %32, !dbg !1995

32:                                               ; preds = %65, %23
  %33 = phi i32 [ %24, %23 ], [ %66, %65 ]
  %34 = phi i32 [ 40, %23 ], [ %67, %65 ]
  br label %35, !dbg !1996

35:                                               ; preds = %39, %32
  %36 = phi i32 [ %42, %39 ], [ %33, %32 ], !dbg !1992
  call void @llvm.dbg.value(metadata i32 %34, metadata !1747, metadata !DIExpression()) #7, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %36, metadata !1748, metadata !DIExpression()) #7, !dbg !1992
  %37 = and i32 %36, 1, !dbg !1996
  %38 = icmp eq i32 %37, 0, !dbg !1996
  br i1 %38, label %39, label %44, !dbg !1996

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1748, metadata !DIExpression()) #7, !dbg !1992
  %40 = or i32 %36, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %40, metadata !1749, metadata !DIExpression()) #7, !dbg !1998
  call void @llvm.dbg.value(metadata i32* undef, metadata !477, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata i32* undef, metadata !483, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata i32* %20, metadata !484, metadata !DIExpression()) #7, !dbg !1999
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !2001
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !2001
  call void @llvm.dbg.value(metadata i32* %20, metadata !494, metadata !DIExpression()) #7, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %36, metadata !495, metadata !DIExpression()) #7, !dbg !2001
  %41 = cmpxchg i32* %20, i32 %36, i32 %40 seq_cst seq_cst, !dbg !2003
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %42, metadata !496, metadata !DIExpression()) #7, !dbg !2001
  %43 = icmp eq i32 %36, %42, !dbg !2004
  br i1 %43, label %77, label %35

44:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::Synchronization::spin_control"* undef, metadata !504, metadata !DIExpression()) #7, !dbg !2005
  %45 = icmp sgt i32 %34, 0, !dbg !2007
  br i1 %45, label %46, label %51, !dbg !2007

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 %34, metadata !1747, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1992
  %47 = icmp eq i32 %34, 1, !dbg !2008
  br i1 %47, label %51, label %48, !dbg !2009

48:                                               ; preds = %46
  %49 = add nsw i32 %34, -1, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %49, metadata !1747, metadata !DIExpression()) #7, !dbg !1992
  call void @halide_thread_yield() #6, !dbg !2011
  %50 = load i32, i32* %20, align 4, !dbg !2012, !tbaa !471
  br label %65, !dbg !2013

51:                                               ; preds = %46, %44
  %52 = phi i32 [ 0, %46 ], [ %34, %44 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !1748, metadata !DIExpression()) #7, !dbg !1992
  %53 = and i32 %36, 2, !dbg !2014
  %54 = icmp eq i32 %53, 0, !dbg !2014
  br i1 %54, label %55, label %60, !dbg !2014

55:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %36, metadata !1748, metadata !DIExpression()) #7, !dbg !1992
  %56 = or i32 %36, 2, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %56, metadata !1753, metadata !DIExpression()) #7, !dbg !2016
  call void @llvm.dbg.value(metadata i32* undef, metadata !1579, metadata !DIExpression()) #7, !dbg !2017
  call void @llvm.dbg.value(metadata i32* undef, metadata !1582, metadata !DIExpression()) #7, !dbg !2017
  call void @llvm.dbg.value(metadata i32* %20, metadata !1583, metadata !DIExpression()) #7, !dbg !2017
  call void @llvm.dbg.value(metadata i32* undef, metadata !487, metadata !DIExpression()) #7, !dbg !2019
  call void @llvm.dbg.value(metadata i32* undef, metadata !493, metadata !DIExpression()) #7, !dbg !2019
  call void @llvm.dbg.value(metadata i32* %20, metadata !494, metadata !DIExpression()) #7, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %36, metadata !495, metadata !DIExpression()) #7, !dbg !2019
  %57 = cmpxchg i32* %20, i32 %36, i32 %56 seq_cst seq_cst, !dbg !2021
  %58 = extractvalue { i32, i1 } %57, 0, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %58, metadata !496, metadata !DIExpression()) #7, !dbg !2019
  %59 = icmp eq i32 %36, %58, !dbg !2022
  br i1 %59, label %60, label %65

60:                                               ; preds = %55, %51
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2023
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1756, metadata !DIExpression()) #7, !dbg !2023
  call void @llvm.dbg.value(metadata i32* %20, metadata !1685, metadata !DIExpression()) #7, !dbg !2024
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1688, metadata !DIExpression()) #7, !dbg !2024
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Synchronization::mutex_parking_control"* %3, metadata !1691, metadata !DIExpression()) #7, !dbg !2026
  store void (i8*)* @"?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", void (i8*)** %27, align 4, !dbg !2028, !tbaa !1163
  store void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)* @"?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", void (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*, i1, i1)** %29, align 4, !dbg !2028, !tbaa !1479
  store i32* %20, i32** %30, align 4, !dbg !2029, !tbaa !1509
  store i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)* @"?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", i1 (i8*, %"struct.Halide::Runtime::Internal::Synchronization::validate_action"*)** %26, align 4, !dbg !2030, !tbaa !1108
  store i32 (i8*, i32, i1)* @"?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", i32 (i8*, i32, i1)** %28, align 4, !dbg !2031, !tbaa !1228
  %61 = call i32 @"?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z"(i32 %17, %"struct.Halide::Runtime::Internal::Synchronization::parking_control"* nonnull align 4 dereferenceable(16) %31) #6, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %61, metadata !1757, metadata !DIExpression()) #7, !dbg !2033
  %62 = icmp eq i32 %61, %17, !dbg !2034
  br i1 %62, label %68, label %63, !dbg !2034

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 40, metadata !1747, metadata !DIExpression()) #7, !dbg !1992
  %64 = load i32, i32* %20, align 4, !dbg !2035, !tbaa !471
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2036
  br label %65

65:                                               ; preds = %63, %55, %48
  %66 = phi i32 [ %58, %55 ], [ %64, %63 ], [ %50, %48 ]
  %67 = phi i32 [ %52, %55 ], [ 40, %63 ], [ %49, %48 ]
  br label %32, !dbg !1996, !llvm.loop !2037

68:                                               ; preds = %60
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %25) #7, !dbg !2036
  br label %77

69:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1965, metadata !DIExpression()) #7, !dbg !1970
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1953, metadata !DIExpression()) #7, !dbg !1962
  call void @llvm.dbg.value(metadata %struct.halide_mutex* %1, metadata !1951, metadata !DIExpression()), !dbg !1952
  %70 = bitcast %struct.halide_mutex* %1 to i8*, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %70, metadata !767, metadata !DIExpression()) #7, !dbg !2040
  call void @__tsan_mutex_pre_lock(i8* %70, i32 1) #6, !dbg !2042
  %71 = getelementptr %struct.halide_mutex, %struct.halide_mutex* %1, i32 0, i32 0, i32 0, !dbg !2043
  %72 = load i32, i32* %71, align 4, !dbg !2043, !tbaa !471
  call void @llvm.dbg.value(metadata i32 %72, metadata !1959, metadata !DIExpression()) #7, !dbg !2044
  %73 = and i32 %72, 1, !dbg !2045
  %74 = icmp eq i32 %73, 0, !dbg !2045
  br i1 %74, label %75, label %76, !dbg !2045

75:                                               ; preds = %69
  call void @halide_print(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @"??_C@_0HG@DNBPGMBM@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !2047
  call void @abort() #6, !dbg !2047
  br label %76, !dbg !2047

76:                                               ; preds = %75, %69
  call void @llvm.dbg.value(metadata i8* %70, metadata !785, metadata !DIExpression()) #7, !dbg !2050
  call void @__tsan_mutex_post_lock(i8* nonnull %70, i32 1, i32 1) #6, !dbg !2052
  br label %77, !dbg !2053

77:                                               ; preds = %39, %19, %68, %76
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2054
  ret void, !dbg !2055
}

; Function Attrs: nounwind mustprogress
define weak dso_local %struct.halide_mutex_array* @halide_mutex_array_create(i32 %0) local_unnamed_addr #0 !dbg !2056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()), !dbg !2062
  %2 = tail call i8* @halide_malloc(i8* null, i32 4) #6, !dbg !2063
  %3 = bitcast i8* %2 to %struct.halide_mutex_array*, !dbg !2063
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %3, metadata !2061, metadata !DIExpression()), !dbg !2062
  %4 = icmp eq i8* %2, null, !dbg !2064
  br i1 %4, label %13, label %5, !dbg !2064

5:                                                ; preds = %1
  %6 = shl i32 %0, 2, !dbg !2065
  %7 = tail call i8* @halide_malloc(i8* null, i32 %6) #6, !dbg !2065
  %8 = bitcast i8* %2 to i8**, !dbg !2065
  store i8* %7, i8** %8, align 4, !dbg !2065, !tbaa !2066
  %9 = icmp eq i8* %7, null, !dbg !2068
  br i1 %9, label %10, label %11, !dbg !2068

10:                                               ; preds = %5
  tail call void @halide_free(i8* null, i8* nonnull %2) #6, !dbg !2069
  br label %13, !dbg !2072

11:                                               ; preds = %5
  %12 = tail call i8* @memset(i8* nonnull %7, i32 0, i32 %6) #6, !dbg !2073
  br label %13, !dbg !2074

13:                                               ; preds = %1, %11, %10
  %14 = phi %struct.halide_mutex_array* [ null, %10 ], [ %3, %11 ], [ null, %1 ], !dbg !2062
  ret %struct.halide_mutex_array* %14, !dbg !2075
}

declare dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

declare dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

declare dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_mutex_array_destroy(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !2076 {
  call void @llvm.dbg.value(metadata i8* %1, metadata !2080, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %0, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i8* %1, metadata !2082, metadata !DIExpression()), !dbg !2083
  %3 = bitcast i8* %1 to i8**, !dbg !2084
  %4 = load i8*, i8** %3, align 4, !dbg !2084, !tbaa !2066
  tail call void @halide_free(i8* %0, i8* %4) #6, !dbg !2084
  tail call void @halide_free(i8* %0, i8* %1) #6, !dbg !2085
  ret void, !dbg !2086
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_lock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2087 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2091, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2092, metadata !DIExpression()), !dbg !2093
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2094
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2094, !tbaa !2066
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2094
  tail call void @halide_mutex_lock(%struct.halide_mutex* %5) #8, !dbg !2094
  ret i32 0, !dbg !2095
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_mutex_array_unlock(%struct.halide_mutex_array* %0, i32 %1) local_unnamed_addr #0 !dbg !2096 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2098, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.halide_mutex_array* %0, metadata !2099, metadata !DIExpression()), !dbg !2100
  %3 = getelementptr inbounds %struct.halide_mutex_array, %struct.halide_mutex_array* %0, i32 0, i32 0, !dbg !2101
  %4 = load %struct.halide_mutex*, %struct.halide_mutex** %3, align 4, !dbg !2101, !tbaa !2066
  %5 = getelementptr inbounds %struct.halide_mutex, %struct.halide_mutex* %4, i32 %1, !dbg !2101
  tail call void @halide_mutex_unlock(%struct.halide_mutex* %5) #8, !dbg !2101
  ret i32 0, !dbg !2102
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %0) local_unnamed_addr #5 !dbg !2103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2107, metadata !DIExpression()), !dbg !2108
  %2 = icmp sgt i32 %0, 256, !dbg !2109
  br i1 %2, label %6, label %3, !dbg !2109

3:                                                ; preds = %1
  %4 = icmp sgt i32 %0, 1, !dbg !2110
  %5 = select i1 %4, i32 %0, i32 1, !dbg !2110
  ret i32 %5, !dbg !2110

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 256, metadata !2107, metadata !DIExpression()), !dbg !2108
  ret i32 256, !dbg !2112
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() local_unnamed_addr #0 !dbg !2113 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2115, metadata !DIExpression()), !dbg !2117
  %1 = tail call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"??_C@_0P@MMIMHEHB@HL_NUM_THREADS?$AA@", i32 0, i32 0)) #6, !dbg !2118
  call void @llvm.dbg.value(metadata i8* %1, metadata !2116, metadata !DIExpression()), !dbg !2117
  %2 = icmp eq i8* %1, null, !dbg !2119
  br i1 %2, label %3, label %6, !dbg !2119

3:                                                ; preds = %0
  %4 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"??_C@_0O@HDNCLFFD@HL_NUMTHREADS?$AA@", i32 0, i32 0)) #6, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %4, metadata !2116, metadata !DIExpression()), !dbg !2117
  %5 = icmp eq i8* %4, null, !dbg !2123
  br i1 %5, label %9, label %6, !dbg !2123

6:                                                ; preds = %0, %3
  %7 = phi i8* [ %4, %3 ], [ %1, %0 ]
  %8 = tail call i32 @atoi(i8* nonnull %7) #6, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %8, metadata !2115, metadata !DIExpression()), !dbg !2117
  br label %11, !dbg !2127

9:                                                ; preds = %3
  %10 = tail call i32 @halide_host_cpu_count() #8, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %10, metadata !2115, metadata !DIExpression()), !dbg !2117
  br label %11, !dbg !2130

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !2131
  call void @llvm.dbg.value(metadata i32 %12, metadata !2115, metadata !DIExpression()), !dbg !2117
  ret i32 %12, !dbg !2132
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %0) local_unnamed_addr #0 !dbg !2133 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2137, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 40, metadata !2139, metadata !DIExpression()), !dbg !2163
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 8, !dbg !2164
  %3 = icmp eq %"struct.Halide::Runtime::Internal::work"* %0, null
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 0, i32 6
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 5
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 3
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 11
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %0, i32 0, i32 2
  br label %10, !dbg !2170

10:                                               ; preds = %388, %1
  %11 = phi i32 [ 0, %1 ], [ %389, %388 ], !dbg !2171
  call void @llvm.dbg.value(metadata i32 %11, metadata !2138, metadata !DIExpression()), !dbg !2163
  br i1 %3, label %15, label %12, !dbg !2170

12:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %0, metadata !2167, metadata !DIExpression()), !dbg !2172
  %13 = load i32, i32* %4, align 4, !dbg !2164, !tbaa !2173
  %14 = icmp eq i32 %13, 0, !dbg !2164
  br i1 %14, label %18, label %21, !dbg !2164

15:                                               ; preds = %10
  %16 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 13), align 4, !dbg !2170, !tbaa !2176, !range !583
  %17 = icmp eq i8 %16, 0, !dbg !2170
  br i1 %17, label %50, label %403, !dbg !2170

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !2164, !tbaa !2180
  %20 = icmp eq i32 %19, 0, !dbg !2164
  br i1 %20, label %403, label %21, !dbg !2170

21:                                               ; preds = %12, %18
  %22 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2181, !tbaa !2182
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %51, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !2143, metadata !DIExpression()), !dbg !2183
  %23 = load i32, i32* %5, align 4, !dbg !2184, !tbaa !2187
  %24 = icmp eq i32 %23, 0, !dbg !2184
  br i1 %24, label %40, label %25, !dbg !2184

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !2188, !tbaa !2180
  %27 = icmp eq i32 %26, 0, !dbg !2188
  br i1 %27, label %28, label %48, !dbg !2188

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !2143, metadata !DIExpression()), !dbg !2183
  %29 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, %0, !dbg !2191
  br i1 %29, label %37, label %30, !dbg !2191

30:                                               ; preds = %28, %30
  %31 = phi %"struct.Halide::Runtime::Internal::work"* [ %33, %30 ], [ %22, %28 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %31, metadata !2141, metadata !DIExpression()), !dbg !2183
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2194
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %32, metadata !2143, metadata !DIExpression()), !dbg !2183
  %33 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %32, align 4, !dbg !2196, !tbaa !2197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %33, metadata !2141, metadata !DIExpression()), !dbg !2183
  %34 = icmp eq %"struct.Halide::Runtime::Internal::work"* %33, %0, !dbg !2191
  br i1 %34, label %35, label %30, !dbg !2191, !llvm.loop !2198

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %31, i32 0, i32 2, !dbg !2194
  br label %37, !dbg !2200

37:                                               ; preds = %35, %28
  %38 = phi %"struct.Halide::Runtime::Internal::work"** [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %28 ], [ %36, %35 ], !dbg !2183
  %39 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %9, align 4, !dbg !2200, !tbaa !2197
  store %"struct.Halide::Runtime::Internal::work"* %39, %"struct.Halide::Runtime::Internal::work"** %38, align 4, !dbg !2200, !tbaa !922
  store i32 0, i32* %4, align 4, !dbg !2201, !tbaa !2173
  br label %388, !dbg !2202

40:                                               ; preds = %21
  %41 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %6, align 4, !dbg !2203, !tbaa !2204
  %42 = icmp eq %"struct.Halide::Runtime::Internal::work"* %41, null, !dbg !2203
  br i1 %42, label %48, label %43, !dbg !2203

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %41, i32 0, i32 9, !dbg !2203
  %45 = load i32, i32* %44, align 4, !dbg !2203, !tbaa !2187
  %46 = icmp eq i32 %45, 0, !dbg !2203
  br i1 %46, label %48, label %47, !dbg !2203

47:                                               ; preds = %43
  store i32 %45, i32* %5, align 4, !dbg !2205, !tbaa !2187
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2208
  br label %388, !dbg !2209

48:                                               ; preds = %25, %43, %40
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !2143, metadata !DIExpression()), !dbg !2183
  %49 = icmp eq %"struct.Halide::Runtime::Internal::work"* %22, null, !dbg !2210
  br i1 %49, label %190, label %53, !dbg !2210

50:                                               ; preds = %15
  %51 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2181, !tbaa !2182
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %22, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), metadata !2143, metadata !DIExpression()), !dbg !2183
  %52 = icmp eq %"struct.Halide::Runtime::Internal::work"* %51, null, !dbg !2210
  br i1 %52, label %200, label %54, !dbg !2210

53:                                               ; preds = %48
  br i1 %3, label %54, label %119, !dbg !2210

54:                                               ; preds = %50, %53
  %55 = phi %"struct.Halide::Runtime::Internal::work"* [ %51, %50 ], [ %22, %53 ]
  br label %56, !dbg !2211

56:                                               ; preds = %54, %115
  %57 = phi %"struct.Halide::Runtime::Internal::work"* [ %117, %115 ], [ %55, %54 ]
  %58 = phi %"struct.Halide::Runtime::Internal::work"** [ %116, %115 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %54 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %57, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %58, metadata !2143, metadata !DIExpression()), !dbg !2183
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 5, !dbg !2212
  %60 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %59, align 4, !dbg !2212, !tbaa !2204
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %60, metadata !2147, metadata !DIExpression()), !dbg !2213
  %61 = icmp eq %"struct.Halide::Runtime::Internal::work"* %60, null, !dbg !2211
  br i1 %61, label %73, label %62, !dbg !2211

62:                                               ; preds = %56
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 8, !dbg !2214
  %64 = load i32, i32* %63, align 4, !dbg !2214, !tbaa !2180
  %65 = icmp eq i32 %64, 0, !dbg !2214
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 0, i32 7, !dbg !2217
  %67 = load i32, i32* %66, align 4, !dbg !2217, !tbaa !2219
  br i1 %65, label %71, label %68, !dbg !2214

68:                                               ; preds = %62
  %69 = mul nsw i32 %67, %64, !dbg !2220
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 6, !dbg !2220
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression()), !dbg !2213
  br label %76, !dbg !2222

71:                                               ; preds = %62
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %60, i32 0, i32 6, !dbg !2223
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression()), !dbg !2213
  br label %76, !dbg !2225

73:                                               ; preds = %56
  %74 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2226, !tbaa !2228
  %75 = add nsw i32 %74, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %80, metadata !2148, metadata !DIExpression()), !dbg !2213
  br label %76, !dbg !2229

76:                                               ; preds = %73, %71, %68
  %77 = phi i32* [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), %73 ], [ %72, %71 ], [ %70, %68 ]
  %78 = phi i32 [ %75, %73 ], [ %67, %71 ], [ %69, %68 ]
  %79 = load i32, i32* %77, align 4, !dbg !2230, !tbaa !471
  %80 = sub i32 %78, %79, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %80, metadata !2148, metadata !DIExpression()), !dbg !2213
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 7, !dbg !2231
  %82 = load i32, i32* %81, align 4, !dbg !2231, !tbaa !2219
  %83 = icmp sge i32 %80, %82, !dbg !2231
  call void @llvm.dbg.value(metadata i1 %83, metadata !2145, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  call void @llvm.dbg.value(metadata i1 true, metadata !2149, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 8, !dbg !2232
  %85 = load i8, i8* %84, align 4, !dbg !2232, !tbaa !2233, !range !583
  %86 = icmp eq i8 %85, 0, !dbg !2232
  br i1 %86, label %91, label %87, !dbg !2232

87:                                               ; preds = %76
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 8, !dbg !2232
  %89 = load i32, i32* %88, align 4, !dbg !2232, !tbaa !2180
  %90 = icmp eq i32 %89, 0, !dbg !2232
  br label %91, !dbg !2232

91:                                               ; preds = %87, %76
  %92 = phi i1 [ true, %76 ], [ %90, %87 ]
  call void @llvm.dbg.value(metadata i1 %92, metadata !2150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  %93 = and i1 %92, %83, !dbg !2234
  br i1 %93, label %94, label %115, !dbg !2234

94:                                               ; preds = %91
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %57, metadata !2235, metadata !DIExpression()) #7, !dbg !2238
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 10, !dbg !2242
  %96 = load i32, i32* %95, align 4, !dbg !2242, !tbaa !2244
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 4, !dbg !2242
  %98 = load i32, i32* %97, align 4, !dbg !2242, !tbaa !2245
  %99 = icmp slt i32 %96, %98, !dbg !2242
  br i1 %99, label %100, label %219, !dbg !2242

100:                                              ; preds = %94
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 0, i32 3
  br label %102, !dbg !2242

102:                                              ; preds = %110, %100
  %103 = phi i32 [ %96, %100 ], [ %112, %110 ]
  %104 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %101, align 4, !dbg !2246, !tbaa !2249
  %105 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %104, i32 %103, i32 1, !dbg !2246
  %106 = load i32, i32* %105, align 4, !dbg !2246, !tbaa !2250
  %107 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %104, i32 %103, i32 0, !dbg !2246
  %108 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %107, align 4, !dbg !2246, !tbaa !2252
  %109 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %108, i32 %106) #6, !dbg !2246
  br i1 %109, label %110, label %115, !dbg !2246

110:                                              ; preds = %102
  %111 = load i32, i32* %95, align 4, !dbg !2253, !tbaa !2244
  %112 = add nsw i32 %111, 1, !dbg !2253
  store i32 %112, i32* %95, align 4, !dbg !2253, !tbaa !2244
  %113 = load i32, i32* %97, align 4, !dbg !2242, !tbaa !2245
  %114 = icmp slt i32 %112, %113, !dbg !2242
  br i1 %114, label %102, label %219, !dbg !2242, !llvm.loop !2254

115:                                              ; preds = %102, %91
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %57, i32 0, i32 2, !dbg !2256
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %116, metadata !2143, metadata !DIExpression()), !dbg !2183
  %117 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %116, align 4, !dbg !2257, !tbaa !2197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %117, metadata !2141, metadata !DIExpression()), !dbg !2183
  %118 = icmp eq %"struct.Halide::Runtime::Internal::work"* %117, null, !dbg !2210
  br i1 %118, label %190, label %56, !dbg !2210

119:                                              ; preds = %53, %186
  %120 = phi %"struct.Halide::Runtime::Internal::work"* [ %188, %186 ], [ %22, %53 ]
  %121 = phi %"struct.Halide::Runtime::Internal::work"** [ %187, %186 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), %53 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %120, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %121, metadata !2143, metadata !DIExpression()), !dbg !2183
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 5, !dbg !2212
  %123 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %122, align 4, !dbg !2212, !tbaa !2204
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %123, metadata !2147, metadata !DIExpression()), !dbg !2213
  %124 = icmp eq %"struct.Halide::Runtime::Internal::work"* %123, null, !dbg !2211
  br i1 %124, label %125, label %128, !dbg !2211

125:                                              ; preds = %119
  %126 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2226, !tbaa !2228
  %127 = add nsw i32 %126, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression()), !dbg !2213
  br label %139, !dbg !2229

128:                                              ; preds = %119
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 8, !dbg !2214
  %130 = load i32, i32* %129, align 4, !dbg !2214, !tbaa !2180
  %131 = icmp eq i32 %130, 0, !dbg !2214
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 0, i32 7, !dbg !2217
  %133 = load i32, i32* %132, align 4, !dbg !2217, !tbaa !2219
  br i1 %131, label %134, label %136, !dbg !2214

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 6, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %143, metadata !2148, metadata !DIExpression()), !dbg !2213
  br label %139, !dbg !2225

136:                                              ; preds = %128
  %137 = mul nsw i32 %133, %130, !dbg !2220
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %123, i32 0, i32 6, !dbg !2220
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression()), !dbg !2213
  br label %139, !dbg !2222

139:                                              ; preds = %134, %136, %125
  %140 = phi i32* [ %135, %134 ], [ %138, %136 ], [ getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), %125 ]
  %141 = phi i32 [ %133, %134 ], [ %137, %136 ], [ %127, %125 ]
  %142 = load i32, i32* %140, align 4, !dbg !2230, !tbaa !471
  %143 = sub i32 %141, %142, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %143, metadata !2148, metadata !DIExpression()), !dbg !2213
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 7, !dbg !2231
  %145 = load i32, i32* %144, align 4, !dbg !2231, !tbaa !2219
  %146 = icmp slt i32 %143, %145, !dbg !2231
  call void @llvm.dbg.value(metadata i1 %146, metadata !2145, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 3, !dbg !2258
  %148 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %147, align 4, !dbg !2258, !tbaa !2259
  %149 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %7, align 4, !dbg !2258, !tbaa !2259
  %150 = icmp ne %"struct.Halide::Runtime::Internal::work"* %148, %149, !dbg !2258
  %151 = icmp ne i32 %145, 0
  call void @llvm.dbg.value(metadata i1 undef, metadata !2149, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 8, !dbg !2232
  %153 = load i8, i8* %152, align 4, !dbg !2232, !tbaa !2233, !range !583
  %154 = icmp eq i8 %153, 0, !dbg !2232
  br i1 %154, label %159, label %155, !dbg !2232

155:                                              ; preds = %139
  %156 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 8, !dbg !2232
  %157 = load i32, i32* %156, align 4, !dbg !2232, !tbaa !2180
  %158 = icmp eq i32 %157, 0, !dbg !2232
  br label %159, !dbg !2232

159:                                              ; preds = %155, %139
  %160 = phi i1 [ true, %139 ], [ %158, %155 ]
  call void @llvm.dbg.value(metadata i1 %160, metadata !2150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  %161 = and i1 %151, %150, !dbg !2234
  %162 = or i1 %146, %161, !dbg !2234
  %163 = xor i1 %160, true, !dbg !2234
  %164 = or i1 %162, %163, !dbg !2234
  br i1 %164, label %186, label %165, !dbg !2234

165:                                              ; preds = %159
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %120, metadata !2235, metadata !DIExpression()) #7, !dbg !2238
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 10, !dbg !2242
  %167 = load i32, i32* %166, align 4, !dbg !2242, !tbaa !2244
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 4, !dbg !2242
  %169 = load i32, i32* %168, align 4, !dbg !2242, !tbaa !2245
  %170 = icmp slt i32 %167, %169, !dbg !2242
  br i1 %170, label %171, label %219, !dbg !2242

171:                                              ; preds = %165
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 0, i32 3
  br label %173, !dbg !2242

173:                                              ; preds = %181, %171
  %174 = phi i32 [ %167, %171 ], [ %183, %181 ]
  %175 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %172, align 4, !dbg !2246, !tbaa !2249
  %176 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %175, i32 %174, i32 1, !dbg !2246
  %177 = load i32, i32* %176, align 4, !dbg !2246, !tbaa !2250
  %178 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %175, i32 %174, i32 0, !dbg !2246
  %179 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %178, align 4, !dbg !2246, !tbaa !2252
  %180 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %179, i32 %177) #6, !dbg !2246
  br i1 %180, label %181, label %186, !dbg !2246

181:                                              ; preds = %173
  %182 = load i32, i32* %166, align 4, !dbg !2253, !tbaa !2244
  %183 = add nsw i32 %182, 1, !dbg !2253
  store i32 %183, i32* %166, align 4, !dbg !2253, !tbaa !2244
  %184 = load i32, i32* %168, align 4, !dbg !2242, !tbaa !2245
  %185 = icmp slt i32 %183, %184, !dbg !2242
  br i1 %185, label %173, label %219, !dbg !2242, !llvm.loop !2254

186:                                              ; preds = %173, %159
  %187 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %120, i32 0, i32 2, !dbg !2256
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %187, metadata !2143, metadata !DIExpression()), !dbg !2183
  %188 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %187, align 4, !dbg !2257, !tbaa !2197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %188, metadata !2141, metadata !DIExpression()), !dbg !2183
  %189 = icmp eq %"struct.Halide::Runtime::Internal::work"* %188, null, !dbg !2210
  br i1 %189, label %190, label %119, !dbg !2210

190:                                              ; preds = %186, %115, %48
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* undef, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** undef, metadata !2143, metadata !DIExpression()), !dbg !2183
  br i1 %3, label %200, label %191, !dbg !2260

191:                                              ; preds = %190
  %192 = add nsw i32 %11, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %192, metadata !2138, metadata !DIExpression()), !dbg !2163
  %193 = icmp slt i32 %11, 40, !dbg !2263
  br i1 %193, label %194, label %195, !dbg !2263

194:                                              ; preds = %191
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2266
  tail call void @halide_thread_yield() #6, !dbg !2269
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2270
  br label %388, !dbg !2271

195:                                              ; preds = %191
  %196 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2272, !tbaa !2274
  %197 = add nsw i32 %196, 1, !dbg !2272
  store i32 %197, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2272, !tbaa !2274
  store i8 1, i8* %8, align 4, !dbg !2275, !tbaa !2276
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2277
  store i8 0, i8* %8, align 4, !dbg !2278, !tbaa !2276
  %198 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2279, !tbaa !2274
  %199 = add nsw i32 %198, -1, !dbg !2279
  store i32 %199, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2279, !tbaa !2274
  br label %388, !dbg !2280

200:                                              ; preds = %50, %190
  %201 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2281, !tbaa !2283
  %202 = add nsw i32 %201, 1, !dbg !2281
  store i32 %202, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2281, !tbaa !2283
  %203 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2284, !tbaa !2285
  %204 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !dbg !2284, !tbaa !2286
  %205 = icmp sgt i32 %203, %204, !dbg !2284
  br i1 %205, label %206, label %210, !dbg !2284

206:                                              ; preds = %200
  %207 = add nsw i32 %203, -1, !dbg !2287
  store i32 %207, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2287, !tbaa !2285
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2290
  %208 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2291, !tbaa !2285
  %209 = add nsw i32 %208, 1, !dbg !2291
  store i32 %209, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2291, !tbaa !2285
  br label %215, !dbg !2292

210:                                              ; preds = %200
  %211 = add nsw i32 %11, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %211, metadata !2138, metadata !DIExpression()), !dbg !2163
  %212 = icmp slt i32 %11, 40, !dbg !2293
  br i1 %212, label %213, label %214, !dbg !2293

213:                                              ; preds = %210
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2294
  tail call void @halide_thread_yield() #6, !dbg !2297
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2298
  br label %215, !dbg !2299

214:                                              ; preds = %210
  tail call void @halide_cond_wait(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7), %struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2300
  br label %215, !dbg !2302

215:                                              ; preds = %213, %214, %206
  %216 = phi i32 [ %11, %206 ], [ %211, %213 ], [ %211, %214 ], !dbg !2163
  call void @llvm.dbg.value(metadata i32 %216, metadata !2138, metadata !DIExpression()), !dbg !2163
  %217 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2303, !tbaa !2283
  %218 = add nsw i32 %217, -1, !dbg !2303
  store i32 %218, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2303, !tbaa !2283
  br label %388, !dbg !2304

219:                                              ; preds = %165, %94, %181, %110
  %220 = phi i32* [ %95, %110 ], [ %166, %181 ], [ %95, %94 ], [ %166, %165 ]
  %221 = phi %"struct.Halide::Runtime::Internal::work"** [ %58, %110 ], [ %121, %181 ], [ %58, %94 ], [ %121, %165 ]
  %222 = phi %"struct.Halide::Runtime::Internal::work"* [ %57, %110 ], [ %120, %181 ], [ %57, %94 ], [ %120, %165 ]
  store i32 0, i32* %220, align 4, !dbg !2305, !tbaa !2244
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %222, metadata !2141, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"** %221, metadata !2143, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression()), !dbg !2163
  %223 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 8, !dbg !2306
  %224 = load i32, i32* %223, align 4, !dbg !2306, !tbaa !2180
  %225 = add nsw i32 %224, 1, !dbg !2306
  store i32 %225, i32* %223, align 4, !dbg !2306, !tbaa !2180
  %226 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 5, !dbg !2307
  %227 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %226, align 4, !dbg !2307, !tbaa !2204
  %228 = icmp eq %"struct.Halide::Runtime::Internal::work"* %227, null, !dbg !2307
  %229 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 7, !dbg !2308
  %230 = load i32, i32* %229, align 4, !dbg !2308, !tbaa !2219
  %231 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %227, i32 0, i32 6, !dbg !2307
  %232 = select i1 %228, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %231, !dbg !2307
  %233 = select i1 %228, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %231, !dbg !2307
  %234 = load i32, i32* %232, align 4, !dbg !2308, !tbaa !471
  %235 = add nsw i32 %234, %230, !dbg !2308
  store i32 %235, i32* %233, align 4, !dbg !2308, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression()), !dbg !2183
  %236 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 8, !dbg !2310
  %237 = load i8, i8* %236, align 4, !dbg !2310, !tbaa !2233, !range !583
  %238 = icmp eq i8 %237, 0, !dbg !2310
  br i1 %238, label %313, label %239, !dbg !2310

239:                                              ; preds = %219
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 2, !dbg !2311
  %241 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %240, align 4, !dbg !2311, !tbaa !2197
  store %"struct.Halide::Runtime::Internal::work"* %241, %"struct.Halide::Runtime::Internal::work"** %221, align 4, !dbg !2311, !tbaa !922
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2152, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 1, metadata !2155, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression()), !dbg !2183
  %242 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6
  %243 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 10
  %244 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 4
  %245 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 3
  %246 = bitcast %"struct.Halide::Runtime::Internal::work"* %222 to i8*
  %247 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 1
  %248 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 5
  %249 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 0
  %250 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 7
  br label %251, !dbg !2314

251:                                              ; preds = %239, %290
  %252 = phi i32 [ 1, %239 ], [ 0, %290 ]
  %253 = phi i32 [ 0, %239 ], [ %298, %290 ]
  call void @llvm.dbg.value(metadata i32 %253, metadata !2152, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 %252, metadata !2155, metadata !DIExpression()), !dbg !2313
  %254 = load i32, i32* %242, align 4, !dbg !2315, !tbaa !2173
  %255 = sub nsw i32 %254, %253, !dbg !2315
  %256 = icmp sgt i32 %255, %252, !dbg !2315
  br i1 %256, label %257, label %287, !dbg !2315

257:                                              ; preds = %251
  %258 = load i32, i32* %243, align 4, !dbg !2317, !tbaa !2244
  %259 = load i32, i32* %244, align 4, !dbg !2317, !tbaa !2245
  br label %260, !dbg !2315

260:                                              ; preds = %257, %281
  %261 = phi i32 [ %282, %281 ], [ %254, %257 ]
  %262 = phi i32 [ %283, %281 ], [ %259, %257 ], !dbg !2317
  %263 = phi i32 [ 0, %281 ], [ %258, %257 ], !dbg !2317
  %264 = phi i32 [ %284, %281 ], [ %252, %257 ]
  call void @llvm.dbg.value(metadata i32 %264, metadata !2155, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %222, metadata !2235, metadata !DIExpression()) #7, !dbg !2319
  %265 = icmp slt i32 %263, %262, !dbg !2317
  br i1 %265, label %266, label %281, !dbg !2317

266:                                              ; preds = %260, %274
  %267 = phi i32 [ %276, %274 ], [ %263, %260 ]
  %268 = load %struct.halide_semaphore_acquire_t*, %struct.halide_semaphore_acquire_t** %245, align 4, !dbg !2320, !tbaa !2249
  %269 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %268, i32 %267, i32 1, !dbg !2320
  %270 = load i32, i32* %269, align 4, !dbg !2320, !tbaa !2250
  %271 = getelementptr inbounds %struct.halide_semaphore_acquire_t, %struct.halide_semaphore_acquire_t* %268, i32 %267, i32 0, !dbg !2320
  %272 = load %struct.halide_semaphore_t*, %struct.halide_semaphore_t** %271, align 4, !dbg !2320, !tbaa !2252
  %273 = tail call zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %272, i32 %270) #6, !dbg !2320
  br i1 %273, label %274, label %287, !dbg !2320

274:                                              ; preds = %266
  %275 = load i32, i32* %243, align 4, !dbg !2321, !tbaa !2244
  %276 = add nsw i32 %275, 1, !dbg !2321
  store i32 %276, i32* %243, align 4, !dbg !2321, !tbaa !2244
  %277 = load i32, i32* %244, align 4, !dbg !2317, !tbaa !2245
  %278 = icmp slt i32 %276, %277, !dbg !2317
  br i1 %278, label %266, label %279, !dbg !2317, !llvm.loop !2322

279:                                              ; preds = %274
  %280 = load i32, i32* %242, align 4, !dbg !2315, !tbaa !2173
  br label %281, !dbg !2324

281:                                              ; preds = %279, %260
  %282 = phi i32 [ %280, %279 ], [ %261, %260 ], !dbg !2315
  %283 = phi i32 [ %277, %279 ], [ %262, %260 ]
  store i32 0, i32* %243, align 4, !dbg !2324, !tbaa !2244
  %284 = add nuw nsw i32 %264, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i32 %284, metadata !2155, metadata !DIExpression()), !dbg !2313
  %285 = sub nsw i32 %282, %253, !dbg !2315
  %286 = icmp sgt i32 %285, %284, !dbg !2315
  br i1 %286, label %260, label %290, !dbg !2315, !llvm.loop !2327

287:                                              ; preds = %266, %251
  %288 = phi i32 [ %252, %251 ], [ %264, %266 ]
  %289 = icmp eq i32 %288, 0, !dbg !2329
  br i1 %289, label %300, label %290, !dbg !2329

290:                                              ; preds = %281, %287
  %291 = phi i32 [ %288, %287 ], [ %284, %281 ]
  %292 = load i8*, i8** %247, align 4, !dbg !2330, !tbaa !2331
  %293 = load i32, i32* %248, align 4, !dbg !2330, !tbaa !2332
  %294 = add nsw i32 %293, %253, !dbg !2330
  %295 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %249, align 4, !dbg !2330, !tbaa !2333
  %296 = load i8*, i8** %250, align 4, !dbg !2330, !tbaa !2334
  %297 = tail call i32 @halide_do_loop_task(i8* %296, i32 (i8*, i32, i32, i8*, i8*)* %295, i32 %294, i32 %291, i8* %292, i8* nonnull %246) #8, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %297, metadata !2151, metadata !DIExpression()), !dbg !2183
  %298 = add nuw nsw i32 %291, %253, !dbg !2335
  call void @llvm.dbg.value(metadata i32 0, metadata !2155, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 %298, metadata !2152, metadata !DIExpression()), !dbg !2313
  %299 = icmp eq i32 %297, 0, !dbg !2314
  br i1 %299, label %251, label %300, !dbg !2314, !llvm.loop !2336

300:                                              ; preds = %287, %290
  %301 = phi i1 [ true, %287 ], [ false, %290 ]
  %302 = phi i32 [ 0, %287 ], [ %297, %290 ], !dbg !2183
  %303 = phi i32 [ %253, %287 ], [ %298, %290 ], !dbg !2313
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2338
  %304 = load i32, i32* %248, align 4, !dbg !2339, !tbaa !2332
  %305 = add nsw i32 %304, %303, !dbg !2339
  store i32 %305, i32* %248, align 4, !dbg !2339, !tbaa !2332
  %306 = load i32, i32* %242, align 4, !dbg !2340, !tbaa !2173
  %307 = sub nsw i32 %306, %303, !dbg !2340
  store i32 %307, i32* %242, align 4, !dbg !2340, !tbaa !2173
  br i1 %301, label %309, label %308, !dbg !2341

308:                                              ; preds = %300
  store i32 0, i32* %242, align 4, !dbg !2342, !tbaa !2173
  call void @llvm.dbg.value(metadata i32 %340, metadata !2151, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2183
  br label %342, !dbg !2345

309:                                              ; preds = %300
  %310 = icmp sgt i32 %307, 0, !dbg !2346
  br i1 %310, label %311, label %371, !dbg !2346

311:                                              ; preds = %309
  %312 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2347, !tbaa !2182
  store %"struct.Halide::Runtime::Internal::work"* %312, %"struct.Halide::Runtime::Internal::work"** %240, align 4, !dbg !2347, !tbaa !2197
  store %"struct.Halide::Runtime::Internal::work"* %222, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2350, !tbaa !2182
  br label %371, !dbg !2351

313:                                              ; preds = %219
  %314 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 0, !dbg !2352
  %315 = load i32 (i8*, i32, i32, i8*, i8*)*, i32 (i8*, i32, i32, i8*, i8*)** %314, align 4, !dbg !2352, !tbaa.struct !2353
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %315, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2355
  %316 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 1, !dbg !2352
  %317 = load i8*, i8** %316, align 4, !dbg !2352, !tbaa.struct !2356
  call void @llvm.dbg.value(metadata i8* %317, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2355
  %318 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 5, !dbg !2352
  %319 = load i32, i32* %318, align 4, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %319, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 160, 32)), !dbg !2355
  %320 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 1, !dbg !2352
  %321 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %320, align 4, !dbg !2352, !tbaa.struct !2357
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %321, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !2355
  %322 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 7, !dbg !2352
  %323 = load i8*, i8** %322, align 4, !dbg !2352, !tbaa.struct !2358
  call void @llvm.dbg.value(metadata i8* %323, metadata !2156, metadata !DIExpression(DW_OP_LLVM_fragment, 480, 32)), !dbg !2355
  %324 = add nsw i32 %319, 1, !dbg !2359
  store i32 %324, i32* %318, align 4, !dbg !2359, !tbaa !2332
  %325 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6, !dbg !2360
  %326 = load i32, i32* %325, align 4, !dbg !2360, !tbaa !2173
  %327 = add nsw i32 %326, -1, !dbg !2360
  store i32 %327, i32* %325, align 4, !dbg !2360, !tbaa !2173
  %328 = icmp eq i32 %327, 0, !dbg !2361
  br i1 %328, label %329, label %332, !dbg !2361

329:                                              ; preds = %313
  %330 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 2, !dbg !2352
  %331 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %330, align 4, !dbg !2362, !tbaa !2197
  store %"struct.Halide::Runtime::Internal::work"* %331, %"struct.Halide::Runtime::Internal::work"** %221, align 4, !dbg !2362, !tbaa !922
  br label %332, !dbg !2365

332:                                              ; preds = %329, %313
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2366
  %333 = icmp eq i32 (i8*, i32, i8*)* %321, null, !dbg !2367
  br i1 %333, label %336, label %334, !dbg !2367

334:                                              ; preds = %332
  %335 = tail call i32 @halide_do_task(i8* %323, i32 (i8*, i32, i8*)* nonnull %321, i32 %319, i8* %317) #8, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %335, metadata !2151, metadata !DIExpression()), !dbg !2183
  br label %339, !dbg !2371

336:                                              ; preds = %332
  %337 = bitcast %"struct.Halide::Runtime::Internal::work"* %222 to i8*, !dbg !2372
  %338 = tail call i32 @halide_do_loop_task(i8* %323, i32 (i8*, i32, i32, i8*, i8*)* %315, i32 %319, i32 1, i8* %317, i8* %337) #8, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %338, metadata !2151, metadata !DIExpression()), !dbg !2183
  br label %339, !dbg !2374

339:                                              ; preds = %334, %336
  %340 = phi i32 [ %335, %334 ], [ %338, %336 ], !dbg !2375
  call void @llvm.dbg.value(metadata i32 %340, metadata !2151, metadata !DIExpression()), !dbg !2183
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2376
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2183
  %341 = icmp eq i32 %340, 0, !dbg !2345
  br i1 %341, label %371, label %342, !dbg !2345

342:                                              ; preds = %308, %339
  %343 = phi i32 [ %302, %308 ], [ %340, %339 ]
  %344 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 9, !dbg !2377
  store i32 %343, i32* %344, align 4, !dbg !2377, !tbaa !2187
  call void @llvm.dbg.value(metadata i32 0, metadata !2159, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2183
  %345 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 4, !dbg !2379
  %346 = load i32, i32* %345, align 4, !dbg !2379, !tbaa !2380
  %347 = icmp sgt i32 %346, 0, !dbg !2379
  br i1 %347, label %348, label %371, !dbg !2379

348:                                              ; preds = %342
  %349 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 3
  %350 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %349, align 4, !tbaa !2259
  br label %351, !dbg !2379

351:                                              ; preds = %348, %367
  %352 = phi i32 [ 0, %348 ], [ %369, %367 ]
  %353 = phi i8 [ 0, %348 ], [ %368, %367 ]
  call void @llvm.dbg.value(metadata i32 %352, metadata !2159, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8 %353, metadata !2158, metadata !DIExpression()), !dbg !2183
  %354 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %350, i32 %352, i32 9, !dbg !2381
  %355 = load i32, i32* %354, align 4, !dbg !2381, !tbaa !2187
  %356 = icmp eq i32 %355, 0, !dbg !2381
  br i1 %356, label %357, label %367, !dbg !2381

357:                                              ; preds = %351
  store i32 %343, i32* %354, align 4, !dbg !2384, !tbaa !2187
  %358 = load i32, i32* %223, align 4, !dbg !2387, !tbaa !2180
  %359 = icmp eq i32 %358, 0, !dbg !2387
  br i1 %359, label %360, label %363, !dbg !2387

360:                                              ; preds = %357
  %361 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %350, i32 %352, i32 11, !dbg !2387
  %362 = load i8, i8* %361, align 4, !dbg !2387, !tbaa !2276, !range !583
  br label %363, !dbg !2387

363:                                              ; preds = %360, %357
  %364 = phi i8 [ 0, %357 ], [ %362, %360 ], !dbg !2387
  %365 = and i8 %353, 1, !dbg !2387
  %366 = or i8 %364, %365, !dbg !2387
  call void @llvm.dbg.value(metadata i8 %366, metadata !2158, metadata !DIExpression()), !dbg !2183
  br label %367, !dbg !2388

367:                                              ; preds = %351, %363
  %368 = phi i8 [ %366, %363 ], [ %353, %351 ], !dbg !2183
  call void @llvm.dbg.value(metadata i8 %368, metadata !2158, metadata !DIExpression()), !dbg !2183
  %369 = add nuw nsw i32 %352, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %369, metadata !2159, metadata !DIExpression()), !dbg !2378
  %370 = icmp eq i32 %369, %346, !dbg !2379
  br i1 %370, label %371, label %351, !dbg !2379, !llvm.loop !2390

371:                                              ; preds = %367, %342, %311, %309, %339
  %372 = phi i8 [ 0, %339 ], [ 0, %309 ], [ 0, %311 ], [ 0, %342 ], [ %368, %367 ], !dbg !2392
  call void @llvm.dbg.value(metadata i8 %372, metadata !2158, metadata !DIExpression()), !dbg !2183
  %373 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** %226, align 4, !dbg !2393, !tbaa !2204
  %374 = icmp eq %"struct.Halide::Runtime::Internal::work"* %373, null, !dbg !2393
  %375 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 7, !dbg !2394
  %376 = load i32, i32* %375, align 4, !dbg !2394, !tbaa !2219
  %377 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %373, i32 0, i32 6, !dbg !2393
  %378 = select i1 %374, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %377, !dbg !2393
  %379 = select i1 %374, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %377, !dbg !2393
  %380 = load i32, i32* %378, align 4, !dbg !2394, !tbaa !471
  %381 = sub nsw i32 %380, %376, !dbg !2394
  store i32 %381, i32* %379, align 4, !dbg !2394, !tbaa !471
  %382 = load i32, i32* %223, align 4, !dbg !2396, !tbaa !2180
  %383 = add nsw i32 %382, -1, !dbg !2396
  store i32 %383, i32* %223, align 4, !dbg !2396, !tbaa !2180
  %384 = and i8 %372, 1, !dbg !2397
  %385 = icmp eq i8 %384, 0, !dbg !2397
  br i1 %385, label %386, label %402, !dbg !2397

386:                                              ; preds = %371
  %387 = icmp eq i32 %383, 0, !dbg !2397
  br i1 %387, label %390, label %388, !dbg !2397

388:                                              ; preds = %386, %394, %398, %402, %215, %195, %194, %47, %37
  %389 = phi i32 [ %11, %37 ], [ %11, %47 ], [ %192, %194 ], [ %192, %195 ], [ %216, %215 ], [ 0, %402 ], [ 0, %398 ], [ 0, %394 ], [ 0, %386 ]
  br label %10, !dbg !2163, !llvm.loop !2398

390:                                              ; preds = %386
  %391 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 0, i32 6, !dbg !2397
  %392 = load i32, i32* %391, align 4, !dbg !2397, !tbaa !2173
  %393 = icmp eq i32 %392, 0, !dbg !2397
  br i1 %393, label %398, label %394, !dbg !2397

394:                                              ; preds = %390
  %395 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 9, !dbg !2397
  %396 = load i32, i32* %395, align 4, !dbg !2397, !tbaa !2187
  %397 = icmp eq i32 %396, 0, !dbg !2397
  br i1 %397, label %388, label %398, !dbg !2397

398:                                              ; preds = %394, %390
  %399 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %222, i32 0, i32 11, !dbg !2397
  %400 = load i8, i8* %399, align 4, !dbg !2397, !tbaa !2276, !range !583
  %401 = icmp eq i8 %400, 0, !dbg !2397
  br i1 %401, label %388, label %402, !dbg !2397

402:                                              ; preds = %398, %371
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2400
  br label %388, !dbg !2403

403:                                              ; preds = %15, %18
  ret void, !dbg !2404
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) local_unnamed_addr #0 !dbg !2405 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %4, metadata !2408, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %3, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %2, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %0, metadata !2412, metadata !DIExpression()), !dbg !2413
  %7 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2414, !tbaa !922
  %8 = tail call i32 %7(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2414
  ret i32 %8, !dbg !2414
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) local_unnamed_addr #0 !dbg !2415 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2417, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 %2, metadata !2418, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %0, metadata !2420, metadata !DIExpression()), !dbg !2421
  %5 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2422, !tbaa !922
  %6 = tail call i32 %5(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #6, !dbg !2422
  ret i32 %6, !dbg !2422
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z"(i8* %0) #0 !dbg !2423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()), !dbg !2426
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2427
  %2 = bitcast i8* %0 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2428
  tail call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* %2) #8, !dbg !2428
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2429
  ret void, !dbg !2430
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 %0, %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"* %2) local_unnamed_addr #0 !dbg !2431 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %2, metadata !2435, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %1, metadata !2436, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2448
  %4 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !dbg !2449, !tbaa !2450, !range !583
  %5 = icmp eq i8 %4, 0, !dbg !2449
  br i1 %5, label %6, label %25, !dbg !2449

6:                                                ; preds = %3, %10
  %7 = phi i8* [ %11, %10 ], [ bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), %3 ]
  call void @llvm.dbg.value(metadata i8* %7, metadata !2451, metadata !DIExpression()) #7, !dbg !2457
  %8 = load i8, i8* %7, align 1, !dbg !2461, !tbaa !2462
  %9 = icmp eq i8 %8, 0, !dbg !2461
  br i1 %9, label %10, label %13, !dbg !2461

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !2463
  call void @llvm.dbg.value(metadata i8* %11, metadata !2451, metadata !DIExpression()) #7, !dbg !2457
  %12 = icmp eq i8* %11, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), !dbg !2461
  br i1 %12, label %13, label %6, !dbg !2461, !llvm.loop !2465

13:                                               ; preds = %10, %6
  %14 = phi i8* [ %7, %6 ], [ bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* select (i1 icmp ugt (i8* bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1)), %"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1), %"struct.Halide::Runtime::Internal::work_queue_t"* bitcast (i8* getelementptr (i8, i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 1) to %"struct.Halide::Runtime::Internal::work_queue_t"*)) to i8*), %10 ], !dbg !2457
  %15 = icmp eq i8* %14, bitcast (%"struct.Halide::Runtime::Internal::work_queue_t"* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 1) to i8*), !dbg !2467
  br i1 %15, label %17, label %16, !dbg !2467

16:                                               ; preds = %13
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @"??_C@_0LD@GCOAOKDJ@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !2469
  tail call void @abort() #6, !dbg !2469
  br label %17, !dbg !2469

17:                                               ; preds = %13, %16
  %18 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2472, !tbaa !2473
  %19 = icmp eq i32 %18, 0, !dbg !2472
  br i1 %19, label %20, label %22, !dbg !2472

20:                                               ; preds = %17
  %21 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2474
  store i32 %21, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2474, !tbaa !2473
  br label %22, !dbg !2477

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ], !dbg !2478
  %24 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %23) #8, !dbg !2478
  store i32 %24, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2478, !tbaa !2473
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !dbg !2479, !tbaa !2450
  br label %25, !dbg !2480

25:                                               ; preds = %22, %3
  call void @llvm.dbg.value(metadata i32 0, metadata !2438, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 -1, metadata !2439, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2441, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2442, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2481
  %26 = icmp sgt i32 %0, 0, !dbg !2482
  br i1 %26, label %36, label %29, !dbg !2482

27:                                               ; preds = %62
  %28 = and i8 %47, 1, !dbg !2483
  br label %29, !dbg !2483

29:                                               ; preds = %27, %25
  %30 = phi i32 [ -1, %25 ], [ %63, %27 ], !dbg !2448
  %31 = phi i8 [ 0, %25 ], [ %28, %27 ]
  %32 = phi i8 [ 0, %25 ], [ %52, %27 ], !dbg !2448
  %33 = phi i8 [ 0, %25 ], [ %48, %27 ], !dbg !2484
  %34 = phi i32 [ 0, %25 ], [ %46, %27 ], !dbg !2485
  %35 = icmp eq %"struct.Halide::Runtime::Internal::work"* %2, null, !dbg !2483
  br i1 %35, label %66, label %97, !dbg !2483

36:                                               ; preds = %25, %62
  %37 = phi i32 [ %46, %62 ], [ 0, %25 ]
  %38 = phi i32 [ %64, %62 ], [ 0, %25 ]
  %39 = phi i8 [ %48, %62 ], [ 0, %25 ]
  %40 = phi i8 [ %52, %62 ], [ 0, %25 ]
  %41 = phi i8 [ %47, %62 ], [ 0, %25 ]
  %42 = phi i32 [ %63, %62 ], [ -1, %25 ]
  call void @llvm.dbg.value(metadata i32 %37, metadata !2438, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %38, metadata !2443, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %39, metadata !2442, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %40, metadata !2441, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %41, metadata !2440, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %42, metadata !2439, metadata !DIExpression()), !dbg !2448
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 7, !dbg !2486
  %44 = load i32, i32* %43, align 4, !dbg !2486, !tbaa !2219
  %45 = icmp eq i32 %44, 0, !dbg !2486
  %46 = add i32 %44, %37, !dbg !2486
  %47 = select i1 %45, i8 1, i8 %41, !dbg !2486
  %48 = select i1 %45, i8 %39, i8 1, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %46, metadata !2438, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %48, metadata !2442, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %47, metadata !2440, metadata !DIExpression()), !dbg !2448
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 4, !dbg !2489
  %50 = load i32, i32* %49, align 4, !dbg !2489, !tbaa !2245
  %51 = icmp eq i32 %50, 0, !dbg !2489
  %52 = select i1 %51, i8 %40, i8 1, !dbg !2489
  call void @llvm.dbg.value(metadata i8 %52, metadata !2441, metadata !DIExpression()), !dbg !2448
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 8, !dbg !2490
  %54 = load i8, i8* %53, align 4, !dbg !2490, !tbaa !2233, !range !583
  %55 = icmp eq i8 %54, 0, !dbg !2490
  br i1 %55, label %58, label %56, !dbg !2490

56:                                               ; preds = %36
  %57 = add nsw i32 %42, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %57, metadata !2439, metadata !DIExpression()), !dbg !2448
  br label %62, !dbg !2494

58:                                               ; preds = %36
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %38, i32 0, i32 6, !dbg !2495
  %60 = load i32, i32* %59, align 4, !dbg !2495, !tbaa !2173
  %61 = add nsw i32 %60, %42, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %61, metadata !2439, metadata !DIExpression()), !dbg !2448
  br label %62, !dbg !2497

62:                                               ; preds = %56, %58
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !2498
  call void @llvm.dbg.value(metadata i32 %63, metadata !2439, metadata !DIExpression()), !dbg !2448
  %64 = add nuw nsw i32 %38, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %46, metadata !2438, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %64, metadata !2443, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 %48, metadata !2442, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %52, metadata !2441, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %47, metadata !2440, metadata !DIExpression()), !dbg !2448
  %65 = icmp eq i32 %64, %0, !dbg !2482
  br i1 %65, label %27, label %36, !dbg !2482, !llvm.loop !2500

66:                                               ; preds = %29
  %67 = or i8 %33, %32, !dbg !2502
  %68 = and i8 %67, 1, !dbg !2502
  %69 = icmp eq i8 %68, 0, !dbg !2502
  %70 = xor i1 %69, true, !dbg !2502
  %71 = zext i1 %70 to i32, !dbg !2502
  %72 = add nsw i32 %34, %71, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %72, metadata !2438, metadata !DIExpression()), !dbg !2448
  %73 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2505, !tbaa !2228
  %74 = icmp slt i32 %73, 256, !dbg !2505
  br i1 %74, label %75, label %93, !dbg !2505

75:                                               ; preds = %66, %85
  %76 = phi i32 [ %90, %85 ], [ %73, %66 ]
  %77 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2505, !tbaa !2473
  %78 = add nsw i32 %77, -1, !dbg !2505
  %79 = icmp slt i32 %76, %78, !dbg !2505
  br i1 %79, label %85, label %80, !dbg !2505

80:                                               ; preds = %75
  %81 = add nsw i32 %76, 1, !dbg !2505
  %82 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !dbg !2505, !tbaa !2506
  %83 = sub i32 %81, %82, !dbg !2505
  %84 = icmp slt i32 %83, %72, !dbg !2505
  br i1 %84, label %85, label %93, !dbg !2505

85:                                               ; preds = %75, %80
  %86 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2507, !tbaa !2285
  %87 = add nsw i32 %86, 1, !dbg !2507
  store i32 %87, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2507, !tbaa !2285
  %88 = tail call %struct.halide_thread* @halide_spawn_thread(void (i8*)* nonnull @"?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z", i8* null) #8, !dbg !2509
  %89 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2509, !tbaa !2228
  %90 = add nsw i32 %89, 1, !dbg !2509
  store i32 %90, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2509, !tbaa !2228
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 12, i32 %89, !dbg !2509
  store %struct.halide_thread* %88, %struct.halide_thread** %91, align 4, !dbg !2509, !tbaa !922
  %92 = icmp slt i32 %89, 255, !dbg !2505
  br i1 %92, label %75, label %93, !dbg !2505, !llvm.loop !2510

93:                                               ; preds = %80, %85, %66
  br i1 %69, label %115, label %94, !dbg !2512

94:                                               ; preds = %93
  %95 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !dbg !2513, !tbaa !2506
  %96 = add nsw i32 %95, 1, !dbg !2513
  store i32 %96, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), align 4, !dbg !2513, !tbaa !2506
  br label %115, !dbg !2516

97:                                               ; preds = %29
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 0, i32 7, !dbg !2517
  %99 = load i32, i32* %98, align 4, !dbg !2517, !tbaa !2219
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 8, !dbg !2517
  %101 = load i32, i32* %100, align 4, !dbg !2517, !tbaa !2180
  %102 = mul nsw i32 %101, %99, !dbg !2517
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2517
  %104 = load i32, i32* %103, align 4, !dbg !2517, !tbaa !2520
  %105 = sub nsw i32 %102, %104, !dbg !2517
  %106 = icmp sgt i32 %34, %105, !dbg !2517
  br i1 %106, label %107, label %108, !dbg !2517

107:                                              ; preds = %97
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @"??_C@_0BAA@OBACBFKN@?1media?1maaz?1Data?1Repos?1rake?1Hali@", i32 0, i32 0)) #6, !dbg !2521
  tail call void @abort() #6, !dbg !2521
  br label %108, !dbg !2521

108:                                              ; preds = %107, %97
  %109 = or i8 %33, %32, !dbg !2524
  %110 = and i8 %109, 1, !dbg !2524
  %111 = icmp eq i8 %110, 0, !dbg !2524
  br i1 %111, label %115, label %112, !dbg !2524

112:                                              ; preds = %108
  %113 = load i32, i32* %103, align 4, !dbg !2525, !tbaa !2520
  %114 = add nsw i32 %113, 1, !dbg !2525
  store i32 %114, i32* %103, align 4, !dbg !2525, !tbaa !2520
  br label %115, !dbg !2528

115:                                              ; preds = %108, %93, %112, %94
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2529
  br i1 %26, label %116, label %119, !dbg !2530

116:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2529
  %117 = load %"struct.Halide::Runtime::Internal::work"*, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !tbaa !2182
  br label %132, !dbg !2530

118:                                              ; preds = %132
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 3), align 4, !dbg !2531, !tbaa !2182
  br label %119, !dbg !2530

119:                                              ; preds = %118, %115
  %120 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 11), align 4, !dbg !2534, !tbaa !2274
  %121 = icmp ne i32 %120, 0, !dbg !2534
  %122 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 10), align 4, !dbg !2534
  %123 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2534
  %124 = icmp slt i32 %122, %123, !dbg !2534
  %125 = or i1 %121, %124, !dbg !2534
  call void @llvm.dbg.value(metadata i1 %125, metadata !2447, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2448
  %126 = icmp sgt i32 %30, %122, !dbg !2535
  %127 = or i1 %126, %125, !dbg !2535
  %128 = select i1 %127, i32 %123, i32 %30, !dbg !2535
  store i32 %128, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !dbg !2536, !tbaa !2286
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #8, !dbg !2538
  %129 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 6), align 4, !dbg !2539, !tbaa !2286
  %130 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 5), align 4, !dbg !2539, !tbaa !2285
  %131 = icmp sgt i32 %129, %130, !dbg !2539
  br i1 %131, label %142, label %145, !dbg !2539

132:                                              ; preds = %116, %132
  %133 = phi %"struct.Halide::Runtime::Internal::work"* [ %117, %116 ], [ %136, %132 ], !dbg !2540
  %134 = phi i32 [ %0, %116 ], [ %135, %132 ]
  %135 = add nsw i32 %134, -1, !dbg !2529
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, !dbg !2540
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 2, !dbg !2540
  store %"struct.Halide::Runtime::Internal::work"* %133, %"struct.Halide::Runtime::Internal::work"** %137, align 4, !dbg !2540, !tbaa !2197
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 3, !dbg !2541
  store %"struct.Halide::Runtime::Internal::work"* %1, %"struct.Halide::Runtime::Internal::work"** %138, align 4, !dbg !2541, !tbaa !2259
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 4, !dbg !2542
  store i32 %0, i32* %139, align 4, !dbg !2542, !tbaa !2380
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %1, i32 %135, i32 6, !dbg !2543
  store i32 0, i32* %140, align 4, !dbg !2543, !tbaa !2520
  call void @llvm.dbg.value(metadata i32 %135, metadata !2445, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2529
  %141 = icmp sgt i32 %134, 1, !dbg !2530
  br i1 %141, label %132, label %118, !dbg !2530, !llvm.loop !2544

142:                                              ; preds = %119
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8)) #8, !dbg !2546
  %143 = icmp eq i8 %31, 0, !dbg !2549
  br i1 %143, label %145, label %144, !dbg !2549

144:                                              ; preds = %142
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2550
  br label %145, !dbg !2553

145:                                              ; preds = %142, %144, %119
  %146 = or i8 %33, %32, !dbg !2554
  %147 = and i8 %146, 1, !dbg !2554
  %148 = icmp eq i8 %147, 0, !dbg !2554
  br i1 %148, label %154, label %149, !dbg !2554

149:                                              ; preds = %145
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %2, i32 0, i32 6, !dbg !2555
  %151 = select i1 %35, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 15), i32* %150, !dbg !2555
  %152 = load i32, i32* %151, align 4, !dbg !2558, !tbaa !471
  %153 = add nsw i32 %152, -1, !dbg !2558
  store i32 %153, i32* %151, align 4, !dbg !2558, !tbaa !471
  br label %154, !dbg !2560

154:                                              ; preds = %149, %145
  ret void, !dbg !2560
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_task(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i8* %3) #0 !dbg !2561 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2563, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %2, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()), !dbg !2567
  %5 = tail call i32 %1(i8* %0, i32 %2, i8* %3) #6, !dbg !2568
  ret i32 %5, !dbg !2568
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_loop_task(i8* %0, i32 (i8*, i32, i32, i8*, i8*)* %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 !dbg !2569 {
  call void @llvm.dbg.value(metadata i8* %5, metadata !2571, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %4, metadata !2572, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %3, metadata !2573, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %2, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i32, i8*, i8*)* %1, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()), !dbg !2577
  %7 = tail call i32 %1(i8* %0, i32 %2, i32 %3, i8* %4, i8* %5) #6, !dbg !2578
  ret i32 %7, !dbg !2578
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #0 !dbg !2579 {
  %6 = alloca %"struct.Halide::Runtime::Internal::work", align 4
  call void @llvm.dbg.value(metadata i8* %4, metadata !2581, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %3, metadata !2582, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %2, metadata !2583, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %0, metadata !2585, metadata !DIExpression()), !dbg !2587
  %7 = icmp slt i32 %3, 1, !dbg !2588
  br i1 %7, label %29, label %8, !dbg !2588

8:                                                ; preds = %5
  %9 = bitcast %"struct.Halide::Runtime::Internal::work"* %6 to i8*, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #7, !dbg !2589
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::work"* %6, metadata !2586, metadata !DIExpression()), !dbg !2589
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 0, !dbg !2590
  store i32 (i8*, i32, i32, i8*, i8*)* null, i32 (i8*, i32, i32, i8*, i8*)** %10, align 4, !dbg !2590, !tbaa !2333
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 5, !dbg !2591
  store i32 %2, i32* %11, align 4, !dbg !2591, !tbaa !2332
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 6, !dbg !2592
  store i32 %3, i32* %12, align 4, !dbg !2592, !tbaa !2173
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 8, !dbg !2593
  store i8 0, i8* %13, align 4, !dbg !2593, !tbaa !2233
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 3, !dbg !2594
  store %struct.halide_semaphore_acquire_t* null, %struct.halide_semaphore_acquire_t** %14, align 4, !dbg !2594, !tbaa !2249
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 4, !dbg !2595
  store i32 0, i32* %15, align 4, !dbg !2595, !tbaa !2245
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 1, !dbg !2596
  store i8* %4, i8** %16, align 4, !dbg !2596, !tbaa !2331
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 7, !dbg !2597
  store i32 0, i32* %17, align 4, !dbg !2597, !tbaa !2219
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 0, i32 2, !dbg !2598
  store i8* null, i8** %18, align 4, !dbg !2598, !tbaa !2599
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 1, !dbg !2600
  store i32 (i8*, i32, i8*)* %1, i32 (i8*, i32, i8*)** %19, align 4, !dbg !2600, !tbaa !2601
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 7, !dbg !2602
  store i8* %0, i8** %20, align 4, !dbg !2602, !tbaa !2334
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 9, !dbg !2603
  store i32 0, i32* %21, align 4, !dbg !2603, !tbaa !2187
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 8, !dbg !2604
  store i32 0, i32* %22, align 4, !dbg !2604, !tbaa !2180
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 10, !dbg !2605
  store i32 0, i32* %23, align 4, !dbg !2605, !tbaa !2244
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 11, !dbg !2606
  store i8 0, i8* %24, align 4, !dbg !2606, !tbaa !2276
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 3, !dbg !2607
  store %"struct.Halide::Runtime::Internal::work"* %6, %"struct.Halide::Runtime::Internal::work"** %25, align 4, !dbg !2607, !tbaa !2259
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 4, !dbg !2608
  store i32 0, i32* %26, align 4, !dbg !2608, !tbaa !2380
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %6, i32 0, i32 5, !dbg !2609
  store %"struct.Halide::Runtime::Internal::work"* null, %"struct.Halide::Runtime::Internal::work"** %27, align 4, !dbg !2609, !tbaa !2204
  call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2610
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 1, %"struct.Halide::Runtime::Internal::work"* nonnull %6, %"struct.Halide::Runtime::Internal::work"* null) #8, !dbg !2611
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %6) #8, !dbg !2612
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2613
  %28 = load i32, i32* %21, align 4, !dbg !2614, !tbaa !2187
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #7, !dbg !2615
  br label %29

29:                                               ; preds = %5, %8
  %30 = phi i32 [ %28, %8 ], [ 0, %5 ], !dbg !2587
  ret i32 %30, !dbg !2615
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #0 !dbg !2616 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2618, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2619, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %1, metadata !2620, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %0, metadata !2621, metadata !DIExpression()), !dbg !2628
  %5 = mul i32 %1, 80, !dbg !2629
  %6 = alloca i8, i32 %5, align 16, !dbg !2629
  %7 = bitcast i8* %6 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2629
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work"* %7, metadata !2622, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2619, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %1, metadata !2620, metadata !DIExpression()), !dbg !2628
  %8 = icmp sgt i32 %1, 0, !dbg !2631
  br i1 %8, label %12, label %9, !dbg !2631

9:                                                ; preds = %34, %4
  %10 = phi i32 [ %1, %4 ], [ %35, %34 ]
  %11 = icmp eq i32 %10, 0, !dbg !2632
  br i1 %11, label %54, label %39, !dbg !2632

12:                                               ; preds = %4, %34
  %13 = phi i32 [ %37, %34 ], [ 0, %4 ]
  %14 = phi %struct.halide_parallel_task_t* [ %36, %34 ], [ %2, %4 ]
  %15 = phi i32 [ %35, %34 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2623, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %14, metadata !2619, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %15, metadata !2620, metadata !DIExpression()), !dbg !2628
  %16 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i32 0, i32 6, !dbg !2633
  %17 = load i32, i32* %16, align 4, !dbg !2633, !tbaa !2636
  %18 = icmp slt i32 %17, 1, !dbg !2633
  br i1 %18, label %19, label %21, !dbg !2633

19:                                               ; preds = %12
  %20 = add nsw i32 %15, -1, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %20, metadata !2620, metadata !DIExpression()), !dbg !2628
  br label %34, !dbg !2640

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.halide_parallel_task_t, %struct.halide_parallel_task_t* %14, i32 1, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %22, metadata !2619, metadata !DIExpression()), !dbg !2628
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, !dbg !2641
  %24 = bitcast %"struct.Halide::Runtime::Internal::work"* %23 to i8*, !dbg !2641
  %25 = bitcast %struct.halide_parallel_task_t* %14 to i8*, !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 16 dereferenceable(36) %24, i8* nonnull align 4 dereferenceable(36) %25, i32 36, i1 false), !dbg !2641, !tbaa.struct !2642
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 1, !dbg !2643
  store i32 (i8*, i32, i8*)* null, i32 (i8*, i32, i8*)** %26, align 4, !dbg !2643, !tbaa !2601
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 7, !dbg !2644
  store i8* %0, i8** %27, align 4, !dbg !2644, !tbaa !2334
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 9, !dbg !2645
  store i32 0, i32* %28, align 4, !dbg !2645, !tbaa !2187
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 8, !dbg !2646
  store i32 0, i32* %29, align 16, !dbg !2646, !tbaa !2180
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 10, !dbg !2647
  store i32 0, i32* %30, align 8, !dbg !2647, !tbaa !2244
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 11, !dbg !2648
  store i8 0, i8* %31, align 4, !dbg !2648, !tbaa !2276
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %13, i32 5, !dbg !2649
  %33 = bitcast %"struct.Halide::Runtime::Internal::work"** %32 to i8**, !dbg !2649
  store i8* %3, i8** %33, align 4, !dbg !2649, !tbaa !2204
  br label %34, !dbg !2650

34:                                               ; preds = %21, %19
  %35 = phi i32 [ %20, %19 ], [ %15, %21 ]
  %36 = phi %struct.halide_parallel_task_t* [ %14, %19 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %36, metadata !2619, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %35, metadata !2620, metadata !DIExpression()), !dbg !2628
  %37 = add nuw nsw i32 %13, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %37, metadata !2623, metadata !DIExpression()), !dbg !2630
  %38 = icmp slt i32 %37, %35, !dbg !2631
  br i1 %38, label %12, label %9, !dbg !2631, !llvm.loop !2652

39:                                               ; preds = %9
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2654
  %40 = bitcast i8* %3 to %"struct.Halide::Runtime::Internal::work"*, !dbg !2655
  call void @"?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z"(i32 %10, %"struct.Halide::Runtime::Internal::work"* nonnull %7, %"struct.Halide::Runtime::Internal::work"* %40) #8, !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2626, metadata !DIExpression()), !dbg !2656
  %41 = icmp sgt i32 %10, 0, !dbg !2657
  br i1 %41, label %44, label %42, !dbg !2657

42:                                               ; preds = %44, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %44 ], !dbg !2628
  call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2658
  br label %54

44:                                               ; preds = %39, %44
  %45 = phi i32 [ %52, %44 ], [ 0, %39 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %39 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !2626, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 %46, metadata !2625, metadata !DIExpression()), !dbg !2628
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, !dbg !2659
  call void @"?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z"(%"struct.Halide::Runtime::Internal::work"* nonnull %47) #8, !dbg !2659
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work", %"struct.Halide::Runtime::Internal::work"* %7, i32 %45, i32 9, !dbg !2662
  %49 = load i32, i32* %48, align 4, !dbg !2662, !tbaa !2187
  %50 = icmp eq i32 %49, 0, !dbg !2662
  %51 = select i1 %50, i32 %46, i32 %49, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %51, metadata !2625, metadata !DIExpression()), !dbg !2628
  %52 = add nuw nsw i32 %45, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %52, metadata !2626, metadata !DIExpression()), !dbg !2656
  %53 = icmp eq i32 %52, %10, !dbg !2657
  br i1 %53, label %42, label %44, !dbg !2657, !llvm.loop !2664

54:                                               ; preds = %9, %42
  %55 = phi i32 [ %43, %42 ], [ 0, %9 ], !dbg !2628
  ret i32 %55, !dbg !2666
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 @halide_default_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) #5 !dbg !2667 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2671, metadata !DIExpression()), !dbg !2672
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2673
  call void @llvm.dbg.value(metadata i32* undef, metadata !2674, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32* %3, metadata !2680, metadata !DIExpression()), !dbg !2683
  store i32 %1, i32* %3, align 4, !dbg !2685, !tbaa !471
  fence seq_cst, !dbg !2686
  call void @llvm.dbg.value(metadata i32 %1, metadata !2669, metadata !DIExpression()), !dbg !2672
  ret i32 %1, !dbg !2687
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_default_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2688 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2690, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2691, metadata !DIExpression()), !dbg !2695
  %3 = icmp eq i32 %1, 0, !dbg !2696
  br i1 %3, label %15, label %4, !dbg !2696

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2692, metadata !DIExpression()), !dbg !2695
  %5 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2697
  call void @llvm.dbg.value(metadata i32* undef, metadata !2698, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32* %5, metadata !2701, metadata !DIExpression()), !dbg !2702
  fence seq_cst, !dbg !2704
  %6 = load i32, i32* %5, align 4, !dbg !2705, !tbaa !471
  br label %7, !dbg !2706

7:                                                ; preds = %11, %4
  %8 = phi i32 [ %6, %4 ], [ %13, %11 ], !dbg !2695
  call void @llvm.dbg.value(metadata i32 %8, metadata !2693, metadata !DIExpression()), !dbg !2695
  %9 = sub nsw i32 %8, %1, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %9, metadata !2694, metadata !DIExpression()), !dbg !2695
  %10 = icmp sgt i32 %9, -1, !dbg !2709
  br i1 %10, label %11, label %15, !dbg !2709

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32* undef, metadata !2710, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32* undef, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32* %5, metadata !2716, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32* undef, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32* undef, metadata !2722, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32* %5, metadata !2723, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %8, metadata !2724, metadata !DIExpression()), !dbg !2726
  %12 = cmpxchg i32* %5, i32 %8, i32 %9 seq_cst seq_cst, !dbg !2728
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !2728
  call void @llvm.dbg.value(metadata i32 %13, metadata !2725, metadata !DIExpression()), !dbg !2726
  %14 = icmp eq i32 %8, %13, !dbg !2729
  br i1 %14, label %15, label %7, !dbg !2709, !llvm.loop !2730

15:                                               ; preds = %11, %7, %2
  %16 = phi i1 [ true, %2 ], [ %10, %7 ], [ %10, %11 ], !dbg !2695
  ret i1 %16, !dbg !2732
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_default_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) #0 !dbg !2733 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2735, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2736, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2737, metadata !DIExpression()), !dbg !2739
  %3 = bitcast %struct.halide_semaphore_t* %0 to i32*, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %1, metadata !2741, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32* %3, metadata !2746, metadata !DIExpression()), !dbg !2747
  %4 = atomicrmw add i32* %3, i32 %1 seq_cst, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %4, metadata !2738, metadata !DIExpression()), !dbg !2739
  %5 = icmp eq i32 %4, 0, !dbg !2750
  %6 = icmp ne i32 %1, 0, !dbg !2750
  %7 = and i1 %6, %5, !dbg !2750
  br i1 %7, label %8, label %9, !dbg !2750

8:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2751
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #8, !dbg !2754
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2755
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2756
  br label %9, !dbg !2757

9:                                                ; preds = %8, %2
  %10 = add nsw i32 %4, %1, !dbg !2758
  ret i32 %10, !dbg !2758
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_thread_pool_cleanup() #0 !dbg !2759 {
  tail call void @halide_shutdown_thread_pool() #8, !dbg !2763
  ret void, !dbg !2764
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_shutdown_thread_pool() local_unnamed_addr #0 !dbg !2765 {
  %1 = load i8, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 14), align 1, !dbg !2771, !tbaa !2450, !range !583
  %2 = icmp eq i8 %1, 0, !dbg !2771
  br i1 %2, label %15, label %3, !dbg !2771

3:                                                ; preds = %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2772
  store i8 1, i8* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 13), align 4, !dbg !2773, !tbaa !2176
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 9)) #8, !dbg !2774
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 7)) #8, !dbg !2775
  tail call void @halide_cond_broadcast(%struct.halide_cond* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 8)) #8, !dbg !2776
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression()), !dbg !2778
  %4 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2779, !tbaa !2228
  %5 = icmp sgt i32 %4, 0, !dbg !2779
  br i1 %5, label %8, label %6, !dbg !2779

6:                                                ; preds = %8, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2780, metadata !DIExpression()) #7, !dbg !2786
  call void @llvm.dbg.value(metadata i8* bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), metadata !2783, metadata !DIExpression()) #7, !dbg !2786
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", metadata !2784, metadata !DIExpression(DW_OP_plus_uconst, 1080, DW_OP_stack_value)) #7, !dbg !2786
  %7 = tail call i8* @memset(i8* nonnull bitcast (i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 2) to i8*), i32 0, i32 1072) #6, !dbg !2788
  br label %15, !dbg !2789

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2767, metadata !DIExpression()), !dbg !2778
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 12, i32 %9, !dbg !2790
  %11 = load %struct.halide_thread*, %struct.halide_thread** %10, align 4, !dbg !2790, !tbaa !922
  tail call void @halide_join_thread(%struct.halide_thread* %11) #8, !dbg !2790
  %12 = add nuw nsw i32 %9, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %12, metadata !2767, metadata !DIExpression()), !dbg !2778
  %13 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 4), align 4, !dbg !2779, !tbaa !2228
  %14 = icmp slt i32 %12, %13, !dbg !2779
  br i1 %14, label %8, label %6, !dbg !2779, !llvm.loop !2794

15:                                               ; preds = %6, %0
  ret void, !dbg !2796
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_set_num_threads(i32 %0) local_unnamed_addr #0 !dbg !2797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2799, metadata !DIExpression()), !dbg !2801
  %2 = icmp slt i32 %0, 0, !dbg !2802
  br i1 %2, label %3, label %4, !dbg !2802

3:                                                ; preds = %1
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"??_C@_0CG@GEJKLGAJ@halide_set_num_threads?3?5must?5be?5@", i32 0, i32 0)) #6, !dbg !2803
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2806
  br label %8, !dbg !2807

4:                                                ; preds = %1
  tail call void @halide_mutex_lock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2806
  %5 = icmp eq i32 %0, 0, !dbg !2807
  br i1 %5, label %6, label %8, !dbg !2807

6:                                                ; preds = %4
  %7 = tail call i32 @"?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ"() #8, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %7, metadata !2799, metadata !DIExpression()), !dbg !2801
  br label %8, !dbg !2811

8:                                                ; preds = %3, %6, %4
  %9 = phi i32 [ %7, %6 ], [ %0, %4 ], [ %0, %3 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2799, metadata !DIExpression()), !dbg !2801
  %10 = load i32, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2812, !tbaa !2473
  call void @llvm.dbg.value(metadata i32 %10, metadata !2800, metadata !DIExpression()), !dbg !2801
  %11 = tail call i32 @"?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z"(i32 %9) #8, !dbg !2813
  store i32 %11, i32* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 1), align 4, !dbg !2813, !tbaa !2473
  tail call void @halide_mutex_unlock(%struct.halide_mutex* getelementptr inbounds (%"struct.Halide::Runtime::Internal::work_queue_t", %"struct.Halide::Runtime::Internal::work_queue_t"* @"?work_queue@Internal@Runtime@Halide@@3Uwork_queue_t@123@A", i32 0, i32 0)) #8, !dbg !2814
  ret i32 %10, !dbg !2815
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* @halide_set_custom_do_task(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2816 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, metadata !2820, metadata !DIExpression()), !dbg !2822
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2823, !tbaa !922
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, metadata !2821, metadata !DIExpression()), !dbg !2822
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2824, !tbaa !922
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %2, !dbg !2825
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* @halide_set_custom_do_loop_task(i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0) local_unnamed_addr #5 !dbg !2826 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, metadata !2830, metadata !DIExpression()), !dbg !2832
  %2 = load i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)*, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2833, !tbaa !922
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %0, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2834, !tbaa !922
  ret i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, !dbg !2835
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* @halide_set_custom_do_par_for(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0) local_unnamed_addr #5 !dbg !2836 {
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2840, metadata !DIExpression()), !dbg !2842
  %2 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2843, !tbaa !922
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, metadata !2841, metadata !DIExpression()), !dbg !2842
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2844, !tbaa !922
  ret i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %2, !dbg !2845
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_custom_parallel_runtime(i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (%struct.halide_semaphore_t*, i32)* %4, i1 (%struct.halide_semaphore_t*, i32)* %5, i32 (%struct.halide_semaphore_t*, i32)* %6) local_unnamed_addr #5 !dbg !2846 {
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %6, metadata !2850, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i1 (%struct.halide_semaphore_t*, i32)* %5, metadata !2851, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 (%struct.halide_semaphore_t*, i32)* %4, metadata !2852, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, metadata !2853, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, metadata !2855, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, metadata !2856, metadata !DIExpression()), !dbg !2857
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)* %0, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2858, !tbaa !922
  store i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)* %1, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i8*)** @"?custom_do_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZH1@ZA", align 4, !dbg !2859, !tbaa !922
  store i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)* %2, i32 (i8*, i32 (i8*, i32, i32, i8*, i8*)*, i32, i32, i8*, i8*)** @"?custom_do_loop_task@Internal@Runtime@Halide@@3P6AHPAXP6AH0HHPAE0@ZHH10@ZA", align 4, !dbg !2860, !tbaa !922
  store i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)* %3, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", align 4, !dbg !2861, !tbaa !922
  store i32 (%struct.halide_semaphore_t*, i32)* %4, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2862, !tbaa !922
  store i1 (%struct.halide_semaphore_t*, i32)* %5, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2863, !tbaa !922
  store i32 (%struct.halide_semaphore_t*, i32)* %6, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2864, !tbaa !922
  ret void, !dbg !2865
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_par_for(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) local_unnamed_addr #0 !dbg !2866 {
  call void @llvm.dbg.value(metadata i8* %4, metadata !2868, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %3, metadata !2869, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %2, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 (i8*, i32, i8*)* %1, metadata !2871, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %0, metadata !2872, metadata !DIExpression()), !dbg !2873
  %6 = load i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)*, i32 (i8*, i32 (i8*, i32, i8*)*, i32, i32, i8*)** @"?custom_do_par_for@Internal@Runtime@Halide@@3P6AHPAXP6AH0HPAE@ZHH1@ZA", align 4, !dbg !2874, !tbaa !922
  %7 = tail call i32 %6(i8* %0, i32 (i8*, i32, i8*)* %1, i32 %2, i32 %3, i8* %4) #6, !dbg !2874
  ret i32 %7, !dbg !2874
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_do_parallel_tasks(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) local_unnamed_addr #0 !dbg !2875 {
  call void @llvm.dbg.value(metadata i8* %3, metadata !2877, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata %struct.halide_parallel_task_t* %2, metadata !2878, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %1, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2880, metadata !DIExpression()), !dbg !2881
  %5 = load i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)*, i32 (i8*, i32, %struct.halide_parallel_task_t*, i8*)** @"?custom_do_parallel_tasks@Internal@Runtime@Halide@@3P6AHPAXHPAUhalide_parallel_task_t@@0@ZA", align 4, !dbg !2882, !tbaa !922
  %6 = tail call i32 %5(i8* %0, i32 %1, %struct.halide_parallel_task_t* %2, i8* %3) #6, !dbg !2882
  ret i32 %6, !dbg !2882
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_init(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2883 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2886, metadata !DIExpression()), !dbg !2887
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_init@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2888, !tbaa !922
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2888
  ret i32 %4, !dbg !2888
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_semaphore_release(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2889 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2892, metadata !DIExpression()), !dbg !2893
  %3 = load i32 (%struct.halide_semaphore_t*, i32)*, i32 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_release@Internal@Runtime@Halide@@3P6AHPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2894, !tbaa !922
  %4 = tail call i32 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2894
  ret i32 %4, !dbg !2894
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @halide_semaphore_try_acquire(%struct.halide_semaphore_t* %0, i32 %1) local_unnamed_addr #0 !dbg !2895 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata %struct.halide_semaphore_t* %0, metadata !2898, metadata !DIExpression()), !dbg !2899
  %3 = load i1 (%struct.halide_semaphore_t*, i32)*, i1 (%struct.halide_semaphore_t*, i32)** @"?custom_semaphore_try_acquire@Internal@Runtime@Halide@@3P6A_NPAUhalide_semaphore_t@@H@ZA", align 4, !dbg !2900, !tbaa !922
  %4 = tail call zeroext i1 %3(%struct.halide_semaphore_t* %0, i32 %1) #6, !dbg !2900
  ret i1 %4, !dbg !2900
}

declare dso_local x86_stdcallcc void @"\01_InitializeCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_InitializeConditionVariable@4"(i64*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_EnterCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_SleepConditionVariableCS@12"(i64*, %struct.CriticalSection*, i32) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_LeaveCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_DeleteCriticalSection@4"(%struct.CriticalSection*) local_unnamed_addr #3

declare dso_local x86_stdcallcc void @"\01_WakeConditionVariable@4"(i64*) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_pre_lock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_lock(i8*, i32, i32) local_unnamed_addr #3

declare dso_local i32 @__tsan_mutex_pre_unlock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_unlock(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_pre_signal(i8*, i32) local_unnamed_addr #3

declare dso_local void @__tsan_mutex_post_signal(i8*, i32) local_unnamed_addr #3

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
!llvm.module.flags = !{!387, !388, !389, !390}
!llvm.ident = !{!391}

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
!161 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !162, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !164, globals: !373, imports: !384, nameTableKind: None)
!162 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/windows_threads_tsan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde", checksumkind: CSK_MD5, checksum: "50ae3740d88f85cff08b4f2677cebdf4")
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
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!384 = !{!385, !386}
!385 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !23, line: 225)
!386 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !161, entity: !3, file: !13, line: 579)
!387 = !{i32 1, !"NumRegisterParameters", i32 0}
!388 = !{i32 2, !"CodeView", i32 1}
!389 = !{i32 2, !"Debug Info Version", i32 3}
!390 = !{i32 1, !"wchar_size", i32 2}
!391 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!392 = distinct !DISubprogram(name: "spawn_thread_helper", linkageName: "?spawn_thread_helper@Internal@Runtime@Halide@@YAPAXPAX@Z", scope: !3, file: !167, line: 43, type: !393, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{!43, !43}
!395 = !{!396, !397}
!396 = !DILocalVariable(name: "arg", arg: 1, scope: !392, file: !167, line: 43, type: !43)
!397 = !DILocalVariable(name: "t", scope: !392, file: !167, line: 44, type: !165)
!398 = !DILocation(line: 0, scope: !392)
!399 = !DILocation(line: 45, scope: !392)
!400 = !{!401, !402, i64 0}
!401 = !{!"?AUspawned_thread@Internal@Runtime@Halide@@", !402, i64 0, !402, i64 4, !402, i64 8}
!402 = !{!"any pointer", !403, i64 0}
!403 = !{!"omnipotent char", !404, i64 0}
!404 = !{!"Simple C++ TBAA"}
!405 = !{!401, !402, i64 4}
!406 = !DILocation(line: 46, scope: !392)
!407 = distinct !DISubprogram(name: "halide_host_cpu_count", scope: !167, file: !167, line: 55, type: !408, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!29}
!410 = !{!411}
!411 = !DILocalVariable(name: "num_cores", scope: !407, file: !167, line: 57, type: !372)
!412 = !DILocation(line: 57, scope: !407)
!413 = !DILocation(line: 0, scope: !407)
!414 = !DILocation(line: 58, scope: !407)
!415 = !DILocation(line: 59, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !167, line: 58)
!417 = distinct !DILexicalBlock(scope: !407, file: !167, line: 58)
!418 = !DILocation(line: 0, scope: !417)
!419 = !DILocation(line: 63, scope: !407)
!420 = distinct !DISubprogram(name: "halide_spawn_thread", scope: !167, file: !167, line: 65, type: !421, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!102, !170, !43}
!423 = !{!424, !425, !426}
!424 = !DILocalVariable(name: "closure", arg: 2, scope: !420, file: !167, line: 65, type: !43)
!425 = !DILocalVariable(name: "f", arg: 1, scope: !420, file: !167, line: 65, type: !170)
!426 = !DILocalVariable(name: "t", scope: !420, file: !167, line: 66, type: !165)
!427 = !DILocation(line: 0, scope: !420)
!428 = !DILocation(line: 66, scope: !420)
!429 = !DILocation(line: 67, scope: !420)
!430 = !DILocation(line: 68, scope: !420)
!431 = !DILocation(line: 69, scope: !420)
!432 = !{!401, !402, i64 8}
!433 = !DILocation(line: 70, scope: !420)
!434 = distinct !DISubprogram(name: "halide_join_thread", scope: !167, file: !167, line: 73, type: !435, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !102}
!437 = !{!438, !439}
!438 = !DILocalVariable(name: "thread_arg", arg: 1, scope: !434, file: !167, line: 73, type: !102)
!439 = !DILocalVariable(name: "thread", scope: !434, file: !167, line: 74, type: !165)
!440 = !DILocation(line: 0, scope: !434)
!441 = !DILocation(line: 74, scope: !434)
!442 = !DILocation(line: 75, scope: !434)
!443 = !DILocation(line: 76, scope: !434)
!444 = !DILocation(line: 77, scope: !434)
!445 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !237, file: !6, line: 321, type: !241, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !240, retainedNodes: !446)
!446 = !{!447, !449, !461, !462, !466, !467, !468}
!447 = !DILocalVariable(name: "this", arg: 1, scope: !445, type: !448, flags: DIFlagArtificial | DIFlagObjectPointer)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!449 = !DILocalVariable(name: "spinner", scope: !445, file: !6, line: 322, type: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "spin_control", scope: !2, file: !6, line: 230, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !451, identifier: ".?AVspin_control@Synchronization@Internal@Runtime@Halide@@")
!451 = !{!452, !453, !457, !460}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "spin_count", scope: !450, file: !6, line: 231, baseType: !29, size: 32)
!453 = !DISubprogram(name: "spin_control", scope: !450, file: !6, line: 235, type: !454, scopeLine: 235, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !455)
!455 = !{null, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!457 = !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !450, file: !6, line: 237, type: !458, scopeLine: 237, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !459)
!459 = !{!64, !456}
!460 = !DISubprogram(name: "reset", linkageName: "?reset@spin_control@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !450, file: !6, line: 244, type: !454, scopeLine: 244, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DILocalVariable(name: "expected", scope: !445, file: !6, line: 323, type: !22)
!462 = !DILocalVariable(name: "desired", scope: !463, file: !6, line: 328, type: !22)
!463 = distinct !DILexicalBlock(scope: !464, file: !6, line: 327)
!464 = distinct !DILexicalBlock(scope: !465, file: !6, line: 327)
!465 = distinct !DILexicalBlock(scope: !445, file: !6, line: 326)
!466 = !DILocalVariable(name: "node", scope: !465, file: !6, line: 342, type: !177)
!467 = !DILocalVariable(name: "head", scope: !465, file: !6, line: 347, type: !176)
!468 = !DILocalVariable(name: "desired", scope: !465, file: !6, line: 359, type: !22)
!469 = !DILocation(line: 0, scope: !445)
!470 = !DILocation(line: 324, scope: !445)
!471 = !{!472, !472, i64 0}
!472 = !{!"int", !403, i64 0}
!473 = !DILocation(line: 326, scope: !445)
!474 = !DILocation(line: 327, scope: !465)
!475 = !DILocation(line: 328, scope: !463)
!476 = !DILocation(line: 0, scope: !463)
!477 = !DILocalVariable(name: "desired", arg: 3, scope: !478, file: !6, line: 126, type: !300)
!478 = distinct !DISubprogram(name: "atomic_cas_weak_acquire_relaxed", linkageName: "?atomic_cas_weak_acquire_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !479, file: !6, line: 126, type: !480, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !482)
!479 = !DINamespace(scope: !2)
!480 = !DISubroutineType(types: !481)
!481 = !{!64, !300, !300, !300}
!482 = !{!477, !483, !484}
!483 = !DILocalVariable(name: "expected", arg: 2, scope: !478, file: !6, line: 126, type: !300)
!484 = !DILocalVariable(name: "addr", arg: 1, scope: !478, file: !6, line: 126, type: !300)
!485 = !DILocation(line: 0, scope: !478, inlinedAt: !486)
!486 = distinct !DILocation(line: 330, scope: !463)
!487 = !DILocalVariable(name: "desired", arg: 3, scope: !488, file: !6, line: 102, type: !491)
!488 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<unsigned int>", linkageName: "??$cas_strong_sequentially_consistent_helper@I@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !479, file: !6, line: 102, type: !489, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !492)
!489 = !DISubroutineType(types: !490)
!490 = !{!64, !491, !491, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!492 = !{!487, !493, !494, !495, !496}
!493 = !DILocalVariable(name: "expected", arg: 2, scope: !488, file: !6, line: 102, type: !491)
!494 = !DILocalVariable(name: "addr", arg: 1, scope: !488, file: !6, line: 102, type: !491)
!495 = !DILocalVariable(name: "oldval", scope: !488, file: !6, line: 103, type: !25)
!496 = !DILocalVariable(name: "gotval", scope: !488, file: !6, line: 104, type: !25)
!497 = !{!498}
!498 = !DITemplateTypeParameter(name: "T", type: !25)
!499 = !DILocation(line: 0, scope: !488, inlinedAt: !500)
!500 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !486)
!501 = !DILocation(line: 104, scope: !488, inlinedAt: !500)
!502 = !DILocation(line: 106, scope: !488, inlinedAt: !500)
!503 = !DILocation(line: 336, scope: !465)
!504 = !DILocalVariable(name: "this", arg: 1, scope: !505, type: !507, flags: DIFlagArtificial | DIFlagObjectPointer)
!505 = distinct !DISubprogram(name: "should_spin", linkageName: "?should_spin@spin_control@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !450, file: !6, line: 237, type: !458, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !457, retainedNodes: !506)
!506 = !{!504}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 32)
!508 = !DILocation(line: 0, scope: !505, inlinedAt: !509)
!509 = distinct !DILocation(line: 336, scope: !465)
!510 = !DILocation(line: 241, scope: !505, inlinedAt: !509)
!511 = !DILocation(line: 239, scope: !512, inlinedAt: !509)
!512 = distinct !DILexicalBlock(scope: !513, file: !6, line: 238)
!513 = distinct !DILexicalBlock(scope: !505, file: !6, line: 238)
!514 = !DILocation(line: 337, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !6, line: 336)
!516 = distinct !DILexicalBlock(scope: !465, file: !6, line: 336)
!517 = !DILocation(line: 338, scope: !515)
!518 = !DILocation(line: 339, scope: !515)
!519 = !DILocation(line: 342, scope: !465)
!520 = !DILocalVariable(name: "this", arg: 1, scope: !521, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!521 = distinct !DISubprogram(name: "word_lock_queue_data", linkageName: "??0word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !177, file: !6, line: 277, type: !225, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !224, retainedNodes: !522)
!522 = !{!520}
!523 = !DILocation(line: 0, scope: !521, inlinedAt: !524)
!524 = distinct !DILocation(line: 342, scope: !465)
!525 = !DILocalVariable(name: "this", arg: 1, scope: !526, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = distinct !DISubprogram(name: "thread_parker", linkageName: "??0thread_parker@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !180, file: !167, line: 97, type: !213, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !212, retainedNodes: !527)
!527 = !{!525}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!529 = !DILocation(line: 0, scope: !526, inlinedAt: !530)
!530 = distinct !DILocation(line: 277, scope: !521, inlinedAt: !524)
!531 = !DILocation(line: 97, scope: !526, inlinedAt: !530)
!532 = !{!533, !536, i64 48}
!533 = !{!"?AUthread_parker@Synchronization@Internal@Runtime@Halide@@", !534, i64 0, !535, i64 40, !536, i64 48}
!534 = !{!"?AUCriticalSection@@", !403, i64 0}
!535 = !{!"long long", !403, i64 0}
!536 = !{!"bool", !403, i64 0}
!537 = !DILocation(line: 98, scope: !538, inlinedAt: !530)
!538 = distinct !DILexicalBlock(scope: !526, file: !167, line: 97)
!539 = !DILocation(line: 99, scope: !538, inlinedAt: !530)
!540 = !DILocation(line: 277, scope: !521, inlinedAt: !524)
!541 = !{!542, !402, i64 56}
!542 = !{!"?AUword_lock_queue_data@Synchronization@Internal@Runtime@Halide@@", !533, i64 0, !402, i64 56, !402, i64 60, !402, i64 64}
!543 = !{!542, !402, i64 60}
!544 = !{!542, !402, i64 64}
!545 = !DILocalVariable(name: "this", arg: 1, scope: !546, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!546 = distinct !DISubprogram(name: "prepare_park", linkageName: "?prepare_park@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 107, type: !213, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !216, retainedNodes: !547)
!547 = !{!545}
!548 = !DILocation(line: 0, scope: !546, inlinedAt: !549)
!549 = distinct !DILocation(line: 344, scope: !465)
!550 = !DILocation(line: 108, scope: !546, inlinedAt: !549)
!551 = !DILocation(line: 347, scope: !465)
!552 = !DILocation(line: 0, scope: !465)
!553 = !DILocation(line: 348, scope: !465)
!554 = !DILocation(line: 349, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !6, line: 348)
!556 = distinct !DILexicalBlock(scope: !465, file: !6, line: 348)
!557 = !DILocation(line: 351, scope: !555)
!558 = !DILocation(line: 356, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !6, line: 351)
!560 = !DILocation(line: 357, scope: !559)
!561 = !DILocation(line: 359, scope: !465)
!562 = !DILocalVariable(name: "desired", arg: 3, scope: !563, file: !6, line: 113, type: !300)
!563 = distinct !DISubprogram(name: "atomic_cas_weak_release_relaxed", linkageName: "?atomic_cas_weak_release_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !479, file: !6, line: 113, type: !480, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !564)
!564 = !{!562, !565, !566}
!565 = !DILocalVariable(name: "expected", arg: 2, scope: !563, file: !6, line: 113, type: !300)
!566 = !DILocalVariable(name: "addr", arg: 1, scope: !563, file: !6, line: 113, type: !300)
!567 = !DILocation(line: 0, scope: !563, inlinedAt: !568)
!568 = distinct !DILocation(line: 360, scope: !465)
!569 = !DILocation(line: 0, scope: !488, inlinedAt: !570)
!570 = distinct !DILocation(line: 114, scope: !563, inlinedAt: !568)
!571 = !DILocation(line: 104, scope: !488, inlinedAt: !570)
!572 = !DILocation(line: 106, scope: !488, inlinedAt: !570)
!573 = !DILocation(line: 360, scope: !465)
!574 = !DILocalVariable(name: "this", arg: 1, scope: !575, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!575 = distinct !DISubprogram(name: "park", linkageName: "?park@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 111, type: !213, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !217, retainedNodes: !576)
!576 = !{!574}
!577 = !DILocation(line: 0, scope: !575, inlinedAt: !578)
!578 = distinct !DILocation(line: 361, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !6, line: 360)
!580 = distinct !DILexicalBlock(scope: !465, file: !6, line: 360)
!581 = !DILocation(line: 112, scope: !575, inlinedAt: !578)
!582 = !DILocation(line: 113, scope: !575, inlinedAt: !578)
!583 = !{i8 0, i8 2}
!584 = !DILocation(line: 114, scope: !585, inlinedAt: !578)
!585 = distinct !DILexicalBlock(scope: !575, file: !167, line: 113)
!586 = distinct !{!586, !582, !587, !588}
!587 = !DILocation(line: 115, scope: !575, inlinedAt: !578)
!588 = !{!"llvm.loop.mustprogress"}
!589 = !DILocation(line: 116, scope: !575, inlinedAt: !578)
!590 = !DILocation(line: 363, scope: !579)
!591 = !DILocation(line: 364, scope: !579)
!592 = !DILocalVariable(name: "this", arg: 1, scope: !593, type: !176, flags: DIFlagArtificial | DIFlagObjectPointer)
!593 = distinct !DISubprogram(name: "~word_lock_queue_data", linkageName: "??1word_lock_queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !177, file: !6, line: 280, type: !225, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !228, retainedNodes: !594)
!594 = !{!592}
!595 = !DILocation(line: 0, scope: !593, inlinedAt: !596)
!596 = distinct !DILocation(line: 365, scope: !465)
!597 = !DILocalVariable(name: "this", arg: 1, scope: !598, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!598 = distinct !DISubprogram(name: "~thread_parker", linkageName: "??1thread_parker@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !180, file: !167, line: 102, type: !213, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !215, retainedNodes: !599)
!599 = !{!597}
!600 = !DILocation(line: 0, scope: !598, inlinedAt: !601)
!601 = distinct !DILocation(line: 280, scope: !602, inlinedAt: !596)
!602 = distinct !DILexicalBlock(scope: !593, file: !6, line: 280)
!603 = !DILocation(line: 104, scope: !604, inlinedAt: !601)
!604 = distinct !DILexicalBlock(scope: !598, file: !167, line: 102)
!605 = !DILocation(line: 365, scope: !465)
!606 = distinct !{!606, !473, !607}
!607 = !DILocation(line: 365, scope: !445)
!608 = !DILocation(line: 366, scope: !445)
!609 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@word_lock@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !237, file: !6, line: 368, type: !241, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !244, retainedNodes: !610)
!610 = !{!611, !612, !613, !615, !616, !617, !619, !620, !621, !622, !624, !627, !628, !631}
!611 = !DILocalVariable(name: "this", arg: 1, scope: !609, type: !448, flags: DIFlagArtificial | DIFlagObjectPointer)
!612 = !DILocalVariable(name: "expected", scope: !609, file: !6, line: 369, type: !22)
!613 = !DILocalVariable(name: "thread_queuing", scope: !614, file: !6, line: 375, type: !64)
!614 = distinct !DILexicalBlock(scope: !609, file: !6, line: 372)
!615 = !DILocalVariable(name: "none_queued", scope: !614, file: !6, line: 377, type: !64)
!616 = !DILocalVariable(name: "desired", scope: !614, file: !6, line: 382, type: !22)
!617 = !DILocalVariable(name: "head", scope: !618, file: !6, line: 389, type: !176)
!618 = distinct !DILexicalBlock(scope: !609, file: !6, line: 388)
!619 = !DILocalVariable(name: "current", scope: !618, file: !6, line: 390, type: !176)
!620 = !DILocalVariable(name: "tail", scope: !618, file: !6, line: 391, type: !176)
!621 = !DILocalVariable(name: "times_through", scope: !618, file: !6, line: 392, type: !29)
!622 = !DILocalVariable(name: "next", scope: !623, file: !6, line: 394, type: !176)
!623 = distinct !DILexicalBlock(scope: !618, file: !6, line: 393)
!624 = !DILocalVariable(name: "desired", scope: !625, file: !6, line: 406, type: !22)
!625 = distinct !DILexicalBlock(scope: !626, file: !6, line: 405)
!626 = distinct !DILexicalBlock(scope: !618, file: !6, line: 405)
!627 = !DILocalVariable(name: "new_tail", scope: !618, file: !6, line: 414, type: !176)
!628 = !DILocalVariable(name: "continue_outer", scope: !629, file: !6, line: 416, type: !64)
!629 = distinct !DILexicalBlock(scope: !630, file: !6, line: 415)
!630 = distinct !DILexicalBlock(scope: !618, file: !6, line: 415)
!631 = !DILocalVariable(name: "desired", scope: !632, file: !6, line: 418, type: !22)
!632 = distinct !DILexicalBlock(scope: !629, file: !6, line: 417)
!633 = !DILocation(line: 0, scope: !609)
!634 = !DILocation(line: 370, scope: !609)
!635 = !DILocalVariable(name: "val", arg: 2, scope: !636, file: !6, line: 135, type: !491)
!636 = distinct !DISubprogram(name: "atomic_load_relaxed<unsigned int>", linkageName: "??$atomic_load_relaxed@I@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAI0@Z", scope: !479, file: !6, line: 135, type: !637, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !491, !491}
!639 = !{!635, !640}
!640 = !DILocalVariable(name: "addr", arg: 1, scope: !636, file: !6, line: 135, type: !491)
!641 = !DILocation(line: 0, scope: !636, inlinedAt: !642)
!642 = distinct !DILocation(line: 370, scope: !609)
!643 = !DILocation(line: 372, scope: !609)
!644 = !DILocation(line: 136, scope: !636, inlinedAt: !642)
!645 = !DILocation(line: 375, scope: !614)
!646 = !DILocation(line: 0, scope: !614)
!647 = !DILocation(line: 378, scope: !614)
!648 = !DILocation(line: 382, scope: !614)
!649 = !DILocation(line: 0, scope: !478, inlinedAt: !650)
!650 = distinct !DILocation(line: 383, scope: !614)
!651 = !DILocation(line: 0, scope: !488, inlinedAt: !652)
!652 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !650)
!653 = !DILocation(line: 104, scope: !488, inlinedAt: !652)
!654 = !DILocation(line: 106, scope: !488, inlinedAt: !652)
!655 = !DILocation(line: 389, scope: !618)
!656 = !DILocation(line: 0, scope: !618)
!657 = !DILocation(line: 391, scope: !618)
!658 = !DILocation(line: 393, scope: !618)
!659 = !DILocation(line: 394, scope: !623)
!660 = !DILocation(line: 0, scope: !623)
!661 = !DILocation(line: 395, scope: !662)
!662 = distinct !DILexicalBlock(scope: !623, file: !6, line: 395)
!663 = !DILocation(line: 395, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !6, line: 395)
!665 = distinct !DILexicalBlock(scope: !662, file: !6, line: 395)
!666 = !DILocation(line: 396, scope: !623)
!667 = !DILocation(line: 398, scope: !623)
!668 = distinct !{!668, !658, !669, !588}
!669 = !DILocation(line: 400, scope: !618)
!670 = !DILocation(line: 401, scope: !618)
!671 = !DILocation(line: 405, scope: !618)
!672 = !DILocation(line: 406, scope: !625)
!673 = !DILocation(line: 0, scope: !625)
!674 = !DILocalVariable(name: "desired", arg: 3, scope: !675, file: !6, line: 118, type: !491)
!675 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<unsigned int>", linkageName: "??$atomic_cas_weak_relacq_relaxed@I@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !479, file: !6, line: 118, type: !489, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !676)
!676 = !{!674, !677, !678}
!677 = !DILocalVariable(name: "expected", arg: 2, scope: !675, file: !6, line: 118, type: !491)
!678 = !DILocalVariable(name: "addr", arg: 1, scope: !675, file: !6, line: 118, type: !491)
!679 = !DILocation(line: 0, scope: !675, inlinedAt: !680)
!680 = distinct !DILocation(line: 407, scope: !625)
!681 = !DILocation(line: 0, scope: !488, inlinedAt: !682)
!682 = distinct !DILocation(line: 119, scope: !675, inlinedAt: !680)
!683 = !DILocation(line: 104, scope: !488, inlinedAt: !682)
!684 = !DILocation(line: 106, scope: !488, inlinedAt: !682)
!685 = !DILocation(line: 407, scope: !625)
!686 = distinct !{!686, !687, !688}
!687 = !DILocation(line: 388, scope: !609)
!688 = !DILocation(line: 445, scope: !609)
!689 = !DILocation(line: 414, scope: !618)
!690 = !DILocation(line: 415, scope: !618)
!691 = !DILocation(line: 0, scope: !629)
!692 = !DILocation(line: 418, scope: !632)
!693 = !DILocation(line: 0, scope: !632)
!694 = !DILocation(line: 0, scope: !675, inlinedAt: !695)
!695 = distinct !DILocation(line: 419, scope: !632)
!696 = !DILocation(line: 0, scope: !488, inlinedAt: !697)
!697 = distinct !DILocation(line: 119, scope: !675, inlinedAt: !695)
!698 = !DILocation(line: 104, scope: !488, inlinedAt: !697)
!699 = !DILocation(line: 106, scope: !488, inlinedAt: !697)
!700 = !DILocation(line: 419, scope: !632)
!701 = !DILocation(line: 422, scope: !632)
!702 = distinct !{!702, !703, !704, !588}
!703 = !DILocation(line: 417, scope: !629)
!704 = !DILocation(line: 428, scope: !629)
!705 = !DILocation(line: 434, scope: !706)
!706 = distinct !DILexicalBlock(scope: !630, file: !6, line: 433)
!707 = !DILocalVariable(name: "val", arg: 2, scope: !708, file: !6, line: 92, type: !22)
!708 = distinct !DISubprogram(name: "atomic_and_fetch_release", linkageName: "?atomic_and_fetch_release@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAIPAII@Z", scope: !479, file: !6, line: 92, type: !709, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{!22, !300, !22}
!711 = !{!707, !712}
!712 = !DILocalVariable(name: "addr", arg: 1, scope: !708, file: !6, line: 92, type: !300)
!713 = !DILocation(line: 0, scope: !708, inlinedAt: !714)
!714 = distinct !DILocation(line: 435, scope: !706)
!715 = !DILocation(line: 93, scope: !708, inlinedAt: !714)
!716 = !DILocation(line: 436, scope: !706)
!717 = !DILocalVariable(name: "this", arg: 1, scope: !718, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!718 = distinct !DISubprogram(name: "unpark_start", linkageName: "?unpark_start@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 119, type: !213, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !218, retainedNodes: !719)
!719 = !{!717}
!720 = !DILocation(line: 0, scope: !718, inlinedAt: !721)
!721 = distinct !DILocation(line: 441, scope: !618)
!722 = !DILocation(line: 120, scope: !718, inlinedAt: !721)
!723 = !DILocalVariable(name: "this", arg: 1, scope: !724, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!724 = distinct !DISubprogram(name: "unpark", linkageName: "?unpark@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 123, type: !213, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !219, retainedNodes: !725)
!725 = !{!723}
!726 = !DILocation(line: 0, scope: !724, inlinedAt: !727)
!727 = distinct !DILocation(line: 442, scope: !618)
!728 = !DILocation(line: 124, scope: !724, inlinedAt: !727)
!729 = !DILocation(line: 125, scope: !724, inlinedAt: !727)
!730 = !DILocalVariable(name: "this", arg: 1, scope: !731, type: !528, flags: DIFlagArtificial | DIFlagObjectPointer)
!731 = distinct !DISubprogram(name: "unpark_finish", linkageName: "?unpark_finish@thread_parker@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !180, file: !167, line: 128, type: !213, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !220, retainedNodes: !732)
!732 = !{!730}
!733 = !DILocation(line: 0, scope: !731, inlinedAt: !734)
!734 = distinct !DILocation(line: 443, scope: !618)
!735 = !DILocation(line: 129, scope: !731, inlinedAt: !734)
!736 = !DILocation(line: 444, scope: !618)
!737 = !DILocation(line: 446, scope: !609)
!738 = distinct !DISubprogram(name: "lock_bucket", linkageName: "?lock_bucket@Synchronization@Internal@Runtime@Halide@@YAAAUhash_bucket@1234@I@Z", scope: !2, file: !6, line: 509, type: !739, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{!741, !22}
!741 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !234, size: 32)
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(name: "addr", arg: 1, scope: !738, file: !6, line: 509, type: !22)
!744 = !DILocalVariable(name: "hash", scope: !738, file: !6, line: 510, type: !22)
!745 = !DILocalVariable(name: "bucket", scope: !738, file: !6, line: 515, type: !741)
!746 = !DILocation(line: 0, scope: !738)
!747 = !DILocalVariable(name: "bits", arg: 2, scope: !748, file: !6, line: 499, type: !24)
!748 = distinct !DISubprogram(name: "addr_hash", linkageName: "?addr_hash@Synchronization@Internal@Runtime@Halide@@YAIII@Z", scope: !2, file: !6, line: 499, type: !749, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{!22, !22, !24}
!751 = !{!747, !752}
!752 = !DILocalVariable(name: "addr", arg: 1, scope: !748, file: !6, line: 499, type: !22)
!753 = !DILocation(line: 0, scope: !748, inlinedAt: !754)
!754 = distinct !DILocation(line: 510, scope: !738)
!755 = !DILocation(line: 505, scope: !756, inlinedAt: !754)
!756 = distinct !DILexicalBlock(scope: !757, file: !6, line: 504)
!757 = distinct !DILexicalBlock(scope: !748, file: !6, line: 502)
!758 = !DILocation(line: 515, scope: !738)
!759 = !DILocalVariable(name: "this", arg: 1, scope: !760, type: !448, flags: DIFlagArtificial | DIFlagObjectPointer)
!760 = distinct !DISubprogram(name: "lock", linkageName: "?lock@word_lock@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !237, file: !6, line: 291, type: !241, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !246, retainedNodes: !761)
!761 = !{!759, !762, !763}
!762 = !DILocalVariable(name: "expected", scope: !760, file: !6, line: 294, type: !22)
!763 = !DILocalVariable(name: "desired", scope: !760, file: !6, line: 295, type: !22)
!764 = !DILocation(line: 0, scope: !760, inlinedAt: !765)
!765 = distinct !DILocation(line: 517, scope: !738)
!766 = !DILocation(line: 292, scope: !760, inlinedAt: !765)
!767 = !DILocalVariable(name: "mutex", arg: 1, scope: !768, file: !6, line: 56, type: !43)
!768 = distinct !DISubprogram(name: "if_tsan_pre_lock", linkageName: "?if_tsan_pre_lock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !479, file: !6, line: 56, type: !171, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !769)
!769 = !{!767}
!770 = !DILocation(line: 0, scope: !768, inlinedAt: !771)
!771 = distinct !DILocation(line: 292, scope: !760, inlinedAt: !765)
!772 = !DILocation(line: 57, scope: !768, inlinedAt: !771)
!773 = !DILocation(line: 297, scope: !760, inlinedAt: !765)
!774 = !DILocation(line: 0, scope: !478, inlinedAt: !775)
!775 = distinct !DILocation(line: 297, scope: !760, inlinedAt: !765)
!776 = !DILocation(line: 0, scope: !488, inlinedAt: !777)
!777 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !775)
!778 = !DILocation(line: 104, scope: !488, inlinedAt: !777)
!779 = !DILocation(line: 106, scope: !488, inlinedAt: !777)
!780 = !DILocation(line: 517, scope: !738)
!781 = !DILocation(line: 298, scope: !782, inlinedAt: !765)
!782 = distinct !DILexicalBlock(scope: !783, file: !6, line: 297)
!783 = distinct !DILexicalBlock(scope: !760, file: !6, line: 297)
!784 = !DILocation(line: 299, scope: !782, inlinedAt: !765)
!785 = !DILocalVariable(name: "mutex", arg: 1, scope: !786, file: !6, line: 60, type: !43)
!786 = distinct !DISubprogram(name: "if_tsan_post_lock", linkageName: "?if_tsan_post_lock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !479, file: !6, line: 60, type: !171, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !787)
!787 = !{!785}
!788 = !DILocation(line: 0, scope: !786, inlinedAt: !789)
!789 = distinct !DILocation(line: 301, scope: !760, inlinedAt: !765)
!790 = !DILocation(line: 61, scope: !786, inlinedAt: !789)
!791 = !DILocation(line: 519, scope: !738)
!792 = distinct !DISubprogram(name: "lock_bucket_pair", linkageName: "?lock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YA?AUbucket_pair@1234@II@Z", scope: !2, file: !6, line: 531, type: !793, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !803)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !22, !22}
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_pair", scope: !2, file: !6, line: 522, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !796, identifier: ".?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@")
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !795, file: !6, line: 523, baseType: !741, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !795, file: !6, line: 524, baseType: !741, size: 32, offset: 32)
!799 = !DISubprogram(name: "bucket_pair", scope: !795, file: !6, line: 526, type: !800, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DISubroutineType(cc: DW_CC_BORLAND_thiscall, types: !801)
!801 = !{null, !802, !741, !741}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!803 = !{!804, !805, !806, !807, !808, !811, !814, !815, !817}
!804 = !DILocalVariable(name: "addr_to", arg: 2, scope: !792, file: !6, line: 531, type: !22)
!805 = !DILocalVariable(name: "addr_from", arg: 1, scope: !792, file: !6, line: 531, type: !22)
!806 = !DILocalVariable(name: "hash_from", scope: !792, file: !6, line: 533, type: !22)
!807 = !DILocalVariable(name: "hash_to", scope: !792, file: !6, line: 534, type: !22)
!808 = !DILocalVariable(name: "first", scope: !809, file: !6, line: 542, type: !741)
!809 = distinct !DILexicalBlock(scope: !810, file: !6, line: 541)
!810 = distinct !DILexicalBlock(scope: !792, file: !6, line: 541)
!811 = !DILocalVariable(name: "first", scope: !812, file: !6, line: 546, type: !741)
!812 = distinct !DILexicalBlock(scope: !813, file: !6, line: 545)
!813 = distinct !DILexicalBlock(scope: !810, file: !6, line: 545)
!814 = !DILocalVariable(name: "second", scope: !812, file: !6, line: 547, type: !741)
!815 = !DILocalVariable(name: "first", scope: !816, file: !6, line: 552, type: !741)
!816 = distinct !DILexicalBlock(scope: !813, file: !6, line: 551)
!817 = !DILocalVariable(name: "second", scope: !816, file: !6, line: 553, type: !741)
!818 = !DILocation(line: 0, scope: !792)
!819 = !DILocation(line: 0, scope: !748, inlinedAt: !820)
!820 = distinct !DILocation(line: 533, scope: !792)
!821 = !DILocation(line: 505, scope: !756, inlinedAt: !820)
!822 = !DILocation(line: 0, scope: !748, inlinedAt: !823)
!823 = distinct !DILocation(line: 534, scope: !792)
!824 = !DILocation(line: 505, scope: !756, inlinedAt: !823)
!825 = !DILocation(line: 541, scope: !792)
!826 = !DILocation(line: 542, scope: !809)
!827 = !DILocation(line: 0, scope: !809)
!828 = !DILocation(line: 0, scope: !760, inlinedAt: !829)
!829 = distinct !DILocation(line: 543, scope: !809)
!830 = !DILocation(line: 292, scope: !760, inlinedAt: !829)
!831 = !DILocation(line: 0, scope: !768, inlinedAt: !832)
!832 = distinct !DILocation(line: 292, scope: !760, inlinedAt: !829)
!833 = !DILocation(line: 57, scope: !768, inlinedAt: !832)
!834 = !DILocation(line: 297, scope: !760, inlinedAt: !829)
!835 = !DILocation(line: 0, scope: !478, inlinedAt: !836)
!836 = distinct !DILocation(line: 297, scope: !760, inlinedAt: !829)
!837 = !DILocation(line: 0, scope: !488, inlinedAt: !838)
!838 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !836)
!839 = !DILocation(line: 104, scope: !488, inlinedAt: !838)
!840 = !DILocation(line: 106, scope: !488, inlinedAt: !838)
!841 = !DILocation(line: 543, scope: !809)
!842 = !DILocation(line: 298, scope: !782, inlinedAt: !829)
!843 = !DILocation(line: 299, scope: !782, inlinedAt: !829)
!844 = !DILocation(line: 545, scope: !810)
!845 = !DILocation(line: 546, scope: !812)
!846 = !DILocation(line: 0, scope: !812)
!847 = !DILocation(line: 547, scope: !812)
!848 = !DILocation(line: 0, scope: !760, inlinedAt: !849)
!849 = distinct !DILocation(line: 548, scope: !812)
!850 = !DILocation(line: 292, scope: !760, inlinedAt: !849)
!851 = !DILocation(line: 0, scope: !768, inlinedAt: !852)
!852 = distinct !DILocation(line: 292, scope: !760, inlinedAt: !849)
!853 = !DILocation(line: 57, scope: !768, inlinedAt: !852)
!854 = !DILocation(line: 297, scope: !760, inlinedAt: !849)
!855 = !DILocation(line: 0, scope: !478, inlinedAt: !856)
!856 = distinct !DILocation(line: 297, scope: !760, inlinedAt: !849)
!857 = !DILocation(line: 0, scope: !488, inlinedAt: !858)
!858 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !856)
!859 = !DILocation(line: 104, scope: !488, inlinedAt: !858)
!860 = !DILocation(line: 106, scope: !488, inlinedAt: !858)
!861 = !DILocation(line: 548, scope: !812)
!862 = !DILocation(line: 298, scope: !782, inlinedAt: !849)
!863 = !DILocation(line: 299, scope: !782, inlinedAt: !849)
!864 = !DILocation(line: 0, scope: !786, inlinedAt: !865)
!865 = distinct !DILocation(line: 301, scope: !760, inlinedAt: !849)
!866 = !DILocation(line: 61, scope: !786, inlinedAt: !865)
!867 = !DILocation(line: 0, scope: !760, inlinedAt: !868)
!868 = distinct !DILocation(line: 549, scope: !812)
!869 = !DILocation(line: 292, scope: !760, inlinedAt: !868)
!870 = !DILocation(line: 0, scope: !768, inlinedAt: !871)
!871 = distinct !DILocation(line: 292, scope: !760, inlinedAt: !868)
!872 = !DILocation(line: 57, scope: !768, inlinedAt: !871)
!873 = !DILocation(line: 297, scope: !760, inlinedAt: !868)
!874 = !DILocation(line: 0, scope: !478, inlinedAt: !875)
!875 = distinct !DILocation(line: 297, scope: !760, inlinedAt: !868)
!876 = !DILocation(line: 0, scope: !488, inlinedAt: !877)
!877 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !875)
!878 = !DILocation(line: 104, scope: !488, inlinedAt: !877)
!879 = !DILocation(line: 106, scope: !488, inlinedAt: !877)
!880 = !DILocation(line: 549, scope: !812)
!881 = !DILocation(line: 298, scope: !782, inlinedAt: !868)
!882 = !DILocation(line: 299, scope: !782, inlinedAt: !868)
!883 = !DILocation(line: 552, scope: !816)
!884 = !DILocation(line: 0, scope: !816)
!885 = !DILocation(line: 553, scope: !816)
!886 = !DILocation(line: 0, scope: !760, inlinedAt: !887)
!887 = distinct !DILocation(line: 554, scope: !816)
!888 = !DILocation(line: 292, scope: !760, inlinedAt: !887)
!889 = !DILocation(line: 0, scope: !768, inlinedAt: !890)
!890 = distinct !DILocation(line: 292, scope: !760, inlinedAt: !887)
!891 = !DILocation(line: 57, scope: !768, inlinedAt: !890)
!892 = !DILocation(line: 297, scope: !760, inlinedAt: !887)
!893 = !DILocation(line: 0, scope: !478, inlinedAt: !894)
!894 = distinct !DILocation(line: 297, scope: !760, inlinedAt: !887)
!895 = !DILocation(line: 0, scope: !488, inlinedAt: !896)
!896 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !894)
!897 = !DILocation(line: 104, scope: !488, inlinedAt: !896)
!898 = !DILocation(line: 106, scope: !488, inlinedAt: !896)
!899 = !DILocation(line: 554, scope: !816)
!900 = !DILocation(line: 298, scope: !782, inlinedAt: !887)
!901 = !DILocation(line: 299, scope: !782, inlinedAt: !887)
!902 = !DILocation(line: 0, scope: !786, inlinedAt: !903)
!903 = distinct !DILocation(line: 301, scope: !760, inlinedAt: !887)
!904 = !DILocation(line: 61, scope: !786, inlinedAt: !903)
!905 = !DILocation(line: 0, scope: !760, inlinedAt: !906)
!906 = distinct !DILocation(line: 555, scope: !816)
!907 = !DILocation(line: 292, scope: !760, inlinedAt: !906)
!908 = !DILocation(line: 0, scope: !768, inlinedAt: !909)
!909 = distinct !DILocation(line: 292, scope: !760, inlinedAt: !906)
!910 = !DILocation(line: 57, scope: !768, inlinedAt: !909)
!911 = !DILocation(line: 297, scope: !760, inlinedAt: !906)
!912 = !DILocation(line: 0, scope: !478, inlinedAt: !913)
!913 = distinct !DILocation(line: 297, scope: !760, inlinedAt: !906)
!914 = !DILocation(line: 0, scope: !488, inlinedAt: !915)
!915 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !913)
!916 = !DILocation(line: 104, scope: !488, inlinedAt: !915)
!917 = !DILocation(line: 106, scope: !488, inlinedAt: !915)
!918 = !DILocation(line: 555, scope: !816)
!919 = !DILocation(line: 298, scope: !782, inlinedAt: !906)
!920 = !DILocation(line: 299, scope: !782, inlinedAt: !906)
!921 = !DILocation(line: 0, scope: !810)
!922 = !{!402, !402, i64 0}
!923 = !DILocation(line: 558, scope: !792)
!924 = distinct !DISubprogram(name: "unlock_bucket_pair", linkageName: "?unlock_bucket_pair@Synchronization@Internal@Runtime@Halide@@YAXAAUbucket_pair@1234@@Z", scope: !2, file: !6, line: 560, type: !925, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !928)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !927}
!927 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !795, size: 32)
!928 = !{!929}
!929 = !DILocalVariable(name: "buckets", arg: 1, scope: !924, file: !6, line: 560, type: !927)
!930 = !DILocation(line: 0, scope: !924)
!931 = !DILocation(line: 565, scope: !924)
!932 = !{!933, !402, i64 0}
!933 = !{!"?AUbucket_pair@Synchronization@Internal@Runtime@Halide@@", !402, i64 0, !402, i64 4}
!934 = !{!933, !402, i64 4}
!935 = !DILocalVariable(name: "this", arg: 1, scope: !936, type: !448, flags: DIFlagArtificial | DIFlagObjectPointer)
!936 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@word_lock@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !237, file: !6, line: 304, type: !241, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !247, retainedNodes: !937)
!937 = !{!935, !938, !939, !940}
!938 = !DILocalVariable(name: "val", scope: !936, file: !6, line: 307, type: !22)
!939 = !DILocalVariable(name: "no_thread_queuing", scope: !936, file: !6, line: 310, type: !64)
!940 = !DILocalVariable(name: "some_queued", scope: !936, file: !6, line: 312, type: !64)
!941 = !DILocation(line: 0, scope: !936, inlinedAt: !942)
!942 = distinct !DILocation(line: 566, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !6, line: 565)
!944 = distinct !DILexicalBlock(scope: !924, file: !6, line: 565)
!945 = !DILocation(line: 305, scope: !936, inlinedAt: !942)
!946 = !DILocalVariable(name: "mutex", arg: 1, scope: !947, file: !6, line: 64, type: !43)
!947 = distinct !DISubprogram(name: "if_tsan_pre_unlock", linkageName: "?if_tsan_pre_unlock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !479, file: !6, line: 64, type: !171, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !948)
!948 = !{!946}
!949 = !DILocation(line: 0, scope: !947, inlinedAt: !950)
!950 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !942)
!951 = !DILocation(line: 65, scope: !947, inlinedAt: !950)
!952 = !DILocation(line: 307, scope: !936, inlinedAt: !942)
!953 = !DILocalVariable(name: "val", arg: 2, scope: !954, file: !6, line: 130, type: !22)
!954 = distinct !DISubprogram(name: "atomic_fetch_and_release", linkageName: "?atomic_fetch_and_release@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAIPAII@Z", scope: !479, file: !6, line: 130, type: !709, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !955)
!955 = !{!953, !956}
!956 = !DILocalVariable(name: "addr", arg: 1, scope: !954, file: !6, line: 130, type: !300)
!957 = !DILocation(line: 0, scope: !954, inlinedAt: !958)
!958 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !942)
!959 = !DILocation(line: 131, scope: !954, inlinedAt: !958)
!960 = !DILocation(line: 310, scope: !936, inlinedAt: !942)
!961 = !DILocation(line: 313, scope: !936, inlinedAt: !942)
!962 = !DILocation(line: 566, scope: !943)
!963 = !DILocation(line: 314, scope: !964, inlinedAt: !942)
!964 = distinct !DILexicalBlock(scope: !965, file: !6, line: 313)
!965 = distinct !DILexicalBlock(scope: !936, file: !6, line: 313)
!966 = !DILocation(line: 315, scope: !964, inlinedAt: !942)
!967 = !DILocation(line: 567, scope: !944)
!968 = !DILocation(line: 0, scope: !936, inlinedAt: !969)
!969 = distinct !DILocation(line: 568, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !6, line: 567)
!971 = distinct !DILexicalBlock(scope: !944, file: !6, line: 567)
!972 = !DILocation(line: 305, scope: !936, inlinedAt: !969)
!973 = !DILocation(line: 0, scope: !947, inlinedAt: !974)
!974 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !969)
!975 = !DILocation(line: 65, scope: !947, inlinedAt: !974)
!976 = !DILocation(line: 307, scope: !936, inlinedAt: !969)
!977 = !DILocation(line: 0, scope: !954, inlinedAt: !978)
!978 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !969)
!979 = !DILocation(line: 131, scope: !954, inlinedAt: !978)
!980 = !DILocation(line: 310, scope: !936, inlinedAt: !969)
!981 = !DILocation(line: 313, scope: !936, inlinedAt: !969)
!982 = !DILocation(line: 568, scope: !970)
!983 = !DILocation(line: 314, scope: !964, inlinedAt: !969)
!984 = !DILocation(line: 315, scope: !964, inlinedAt: !969)
!985 = !DILocalVariable(name: "mutex", arg: 1, scope: !986, file: !6, line: 67, type: !43)
!986 = distinct !DISubprogram(name: "if_tsan_post_unlock", linkageName: "?if_tsan_post_unlock@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !479, file: !6, line: 67, type: !171, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !987)
!987 = !{!985}
!988 = !DILocation(line: 0, scope: !986, inlinedAt: !989)
!989 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !969)
!990 = !DILocation(line: 68, scope: !986, inlinedAt: !989)
!991 = !DILocation(line: 569, scope: !970)
!992 = !DILocation(line: 0, scope: !936, inlinedAt: !993)
!993 = distinct !DILocation(line: 569, scope: !970)
!994 = !DILocation(line: 305, scope: !936, inlinedAt: !993)
!995 = !DILocation(line: 0, scope: !947, inlinedAt: !996)
!996 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !993)
!997 = !DILocation(line: 65, scope: !947, inlinedAt: !996)
!998 = !DILocation(line: 307, scope: !936, inlinedAt: !993)
!999 = !DILocation(line: 0, scope: !954, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !993)
!1001 = !DILocation(line: 131, scope: !954, inlinedAt: !1000)
!1002 = !DILocation(line: 310, scope: !936, inlinedAt: !993)
!1003 = !DILocation(line: 313, scope: !936, inlinedAt: !993)
!1004 = !DILocation(line: 314, scope: !964, inlinedAt: !993)
!1005 = !DILocation(line: 315, scope: !964, inlinedAt: !993)
!1006 = !DILocation(line: 0, scope: !936, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 571, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !971, file: !6, line: 570)
!1009 = !DILocation(line: 305, scope: !936, inlinedAt: !1007)
!1010 = !DILocation(line: 0, scope: !947, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1007)
!1012 = !DILocation(line: 65, scope: !947, inlinedAt: !1011)
!1013 = !DILocation(line: 307, scope: !936, inlinedAt: !1007)
!1014 = !DILocation(line: 0, scope: !954, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1007)
!1016 = !DILocation(line: 131, scope: !954, inlinedAt: !1015)
!1017 = !DILocation(line: 310, scope: !936, inlinedAt: !1007)
!1018 = !DILocation(line: 313, scope: !936, inlinedAt: !1007)
!1019 = !DILocation(line: 571, scope: !1008)
!1020 = !DILocation(line: 314, scope: !964, inlinedAt: !1007)
!1021 = !DILocation(line: 315, scope: !964, inlinedAt: !1007)
!1022 = !DILocation(line: 0, scope: !986, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !1007)
!1024 = !DILocation(line: 68, scope: !986, inlinedAt: !1023)
!1025 = !DILocation(line: 572, scope: !1008)
!1026 = !DILocation(line: 0, scope: !936, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 572, scope: !1008)
!1028 = !DILocation(line: 305, scope: !936, inlinedAt: !1027)
!1029 = !DILocation(line: 0, scope: !947, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1027)
!1031 = !DILocation(line: 65, scope: !947, inlinedAt: !1030)
!1032 = !DILocation(line: 307, scope: !936, inlinedAt: !1027)
!1033 = !DILocation(line: 0, scope: !954, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1027)
!1035 = !DILocation(line: 131, scope: !954, inlinedAt: !1034)
!1036 = !DILocation(line: 310, scope: !936, inlinedAt: !1027)
!1037 = !DILocation(line: 313, scope: !936, inlinedAt: !1027)
!1038 = !DILocation(line: 314, scope: !964, inlinedAt: !1027)
!1039 = !DILocation(line: 315, scope: !964, inlinedAt: !1027)
!1040 = !DILocation(line: 0, scope: !944)
!1041 = !DILocation(line: 574, scope: !924)
!1042 = distinct !DISubprogram(name: "parking_control_validate", linkageName: "?parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 583, type: !273, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1043)
!1043 = !{!1044, !1045}
!1044 = !DILocalVariable(name: "action", arg: 2, scope: !1042, file: !6, line: 583, type: !275)
!1045 = !DILocalVariable(name: "control", arg: 1, scope: !1042, file: !6, line: 583, type: !43)
!1046 = !DILocation(line: 0, scope: !1042)
!1047 = !DILocation(line: 584, scope: !1042)
!1048 = distinct !DISubprogram(name: "parking_control_before_sleep", linkageName: "?parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !2, file: !6, line: 586, type: !171, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1049)
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "control", arg: 1, scope: !1048, file: !6, line: 586, type: !43)
!1051 = !DILocation(line: 0, scope: !1048)
!1052 = !DILocation(line: 586, scope: !1048)
!1053 = distinct !DISubprogram(name: "parking_control_unpark", linkageName: "?parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 587, type: !287, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1053, file: !6, line: 587, type: !64)
!1056 = !DILocalVariable(name: "unparked", arg: 2, scope: !1053, file: !6, line: 587, type: !29)
!1057 = !DILocalVariable(name: "control", arg: 1, scope: !1053, file: !6, line: 587, type: !43)
!1058 = !DILocation(line: 0, scope: !1053)
!1059 = !DILocation(line: 588, scope: !1053)
!1060 = distinct !DISubprogram(name: "parking_control_requeue_callback", linkageName: "?parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 590, type: !291, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1061)
!1061 = !{!1062, !1063, !1064, !1065}
!1062 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1060, file: !6, line: 590, type: !64)
!1063 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1060, file: !6, line: 590, type: !64)
!1064 = !DILocalVariable(name: "action", arg: 2, scope: !1060, file: !6, line: 590, type: !293)
!1065 = !DILocalVariable(name: "control", arg: 1, scope: !1060, file: !6, line: 590, type: !43)
!1066 = !DILocation(line: 0, scope: !1060)
!1067 = !DILocation(line: 590, scope: !1060)
!1068 = distinct !DISubprogram(name: "park", linkageName: "?park@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z", scope: !2, file: !6, line: 605, type: !1069, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1072)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!22, !22, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !269, size: 32)
!1072 = !{!1073, !1074, !1075, !1076, !1077}
!1073 = !DILocalVariable(name: "control", arg: 2, scope: !1068, file: !6, line: 605, type: !1071)
!1074 = !DILocalVariable(name: "addr", arg: 1, scope: !1068, file: !6, line: 605, type: !22)
!1075 = !DILocalVariable(name: "queue_data", scope: !1068, file: !6, line: 606, type: !250)
!1076 = !DILocalVariable(name: "bucket", scope: !1068, file: !6, line: 608, type: !741)
!1077 = !DILocalVariable(name: "action", scope: !1068, file: !6, line: 610, type: !276)
!1078 = !DILocation(line: 0, scope: !1068)
!1079 = !DILocation(line: 606, scope: !1068)
!1080 = !DILocalVariable(name: "this", arg: 1, scope: !1081, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1081 = distinct !DISubprogram(name: "queue_data", linkageName: "??0queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !250, file: !6, line: 455, type: !257, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !256, retainedNodes: !1082)
!1082 = !{!1080}
!1083 = !DILocation(line: 0, scope: !1081, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 606, scope: !1068)
!1085 = !DILocation(line: 0, scope: !526, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 455, scope: !1081, inlinedAt: !1084)
!1087 = !DILocation(line: 97, scope: !526, inlinedAt: !1086)
!1088 = !DILocation(line: 98, scope: !538, inlinedAt: !1086)
!1089 = !DILocation(line: 99, scope: !538, inlinedAt: !1086)
!1090 = !DILocation(line: 455, scope: !1081, inlinedAt: !1084)
!1091 = !{!1092, !472, i64 56}
!1092 = !{!"?AUqueue_data@Synchronization@Internal@Runtime@Halide@@", !533, i64 0, !472, i64 56, !402, i64 60, !472, i64 64}
!1093 = !{!1092, !402, i64 60}
!1094 = !{!1092, !472, i64 64}
!1095 = !DILocation(line: 608, scope: !1068)
!1096 = !DILocation(line: 610, scope: !1068)
!1097 = !DILocalVariable(name: "this", arg: 1, scope: !1098, type: !1100, flags: DIFlagArtificial | DIFlagObjectPointer)
!1098 = distinct !DISubprogram(name: "validate_action", linkageName: "??0validate_action@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !276, file: !6, line: 580, type: !281, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !280, retainedNodes: !1099)
!1099 = !{!1097}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!1101 = !DILocation(line: 0, scope: !1098, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 610, scope: !1068)
!1103 = !DILocation(line: 580, scope: !1098, inlinedAt: !1102)
!1104 = !{!1105, !536, i64 0}
!1105 = !{!"?AUvalidate_action@Synchronization@Internal@Runtime@Halide@@", !536, i64 0, !472, i64 4}
!1106 = !{!1105, !472, i64 4}
!1107 = !DILocation(line: 611, scope: !1068)
!1108 = !{!1109, !402, i64 0}
!1109 = !{!"?AUparking_control@Synchronization@Internal@Runtime@Halide@@", !402, i64 0, !402, i64 4, !402, i64 8, !402, i64 12}
!1110 = !DILocation(line: 0, scope: !936, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 612, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !6, line: 611)
!1113 = distinct !DILexicalBlock(scope: !1068, file: !6, line: 611)
!1114 = !DILocation(line: 305, scope: !936, inlinedAt: !1111)
!1115 = !DILocation(line: 0, scope: !947, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1111)
!1117 = !DILocation(line: 65, scope: !947, inlinedAt: !1116)
!1118 = !DILocation(line: 307, scope: !936, inlinedAt: !1111)
!1119 = !DILocation(line: 0, scope: !954, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1111)
!1121 = !DILocation(line: 131, scope: !954, inlinedAt: !1120)
!1122 = !DILocation(line: 310, scope: !936, inlinedAt: !1111)
!1123 = !DILocation(line: 313, scope: !936, inlinedAt: !1111)
!1124 = !DILocation(line: 612, scope: !1112)
!1125 = !DILocation(line: 314, scope: !964, inlinedAt: !1111)
!1126 = !DILocation(line: 315, scope: !964, inlinedAt: !1111)
!1127 = !DILocation(line: 0, scope: !986, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !1111)
!1129 = !DILocation(line: 68, scope: !986, inlinedAt: !1128)
!1130 = !DILocation(line: 613, scope: !1112)
!1131 = !DILocation(line: 616, scope: !1068)
!1132 = !DILocation(line: 617, scope: !1068)
!1133 = !DILocation(line: 0, scope: !546, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 618, scope: !1068)
!1135 = !DILocation(line: 108, scope: !546, inlinedAt: !1134)
!1136 = !DILocation(line: 619, scope: !1068)
!1137 = !{!1138, !402, i64 4}
!1138 = !{!"?AUhash_bucket@Synchronization@Internal@Runtime@Halide@@", !1139, i64 0, !402, i64 4, !402, i64 8}
!1139 = !{!"?AVword_lock@Synchronization@Internal@Runtime@Halide@@", !472, i64 0}
!1140 = !DILocation(line: 0, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1068, file: !6, line: 619)
!1142 = !DILocation(line: 624, scope: !1068)
!1143 = !{!1138, !402, i64 8}
!1144 = !DILocation(line: 0, scope: !936, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 625, scope: !1068)
!1146 = !DILocation(line: 305, scope: !936, inlinedAt: !1145)
!1147 = !DILocation(line: 0, scope: !947, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1145)
!1149 = !DILocation(line: 65, scope: !947, inlinedAt: !1148)
!1150 = !DILocation(line: 307, scope: !936, inlinedAt: !1145)
!1151 = !DILocation(line: 0, scope: !954, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1145)
!1153 = !DILocation(line: 131, scope: !954, inlinedAt: !1152)
!1154 = !DILocation(line: 310, scope: !936, inlinedAt: !1145)
!1155 = !DILocation(line: 313, scope: !936, inlinedAt: !1145)
!1156 = !DILocation(line: 625, scope: !1068)
!1157 = !DILocation(line: 314, scope: !964, inlinedAt: !1145)
!1158 = !DILocation(line: 315, scope: !964, inlinedAt: !1145)
!1159 = !DILocation(line: 0, scope: !986, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !1145)
!1161 = !DILocation(line: 68, scope: !986, inlinedAt: !1160)
!1162 = !DILocation(line: 627, scope: !1068)
!1163 = !{!1109, !402, i64 4}
!1164 = !DILocation(line: 0, scope: !575, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 629, scope: !1068)
!1166 = !DILocation(line: 112, scope: !575, inlinedAt: !1165)
!1167 = !DILocation(line: 113, scope: !575, inlinedAt: !1165)
!1168 = !DILocation(line: 114, scope: !585, inlinedAt: !1165)
!1169 = distinct !{!1169, !1167, !1170, !588}
!1170 = !DILocation(line: 115, scope: !575, inlinedAt: !1165)
!1171 = !DILocation(line: 116, scope: !575, inlinedAt: !1165)
!1172 = !DILocation(line: 631, scope: !1068)
!1173 = !DILocation(line: 634, scope: !1068)
!1174 = !DILocalVariable(name: "this", arg: 1, scope: !1175, type: !249, flags: DIFlagArtificial | DIFlagObjectPointer)
!1175 = distinct !DISubprogram(name: "~queue_data", linkageName: "??1queue_data@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !250, file: !6, line: 457, type: !257, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !260, retainedNodes: !1176)
!1176 = !{!1174}
!1177 = !DILocation(line: 0, scope: !1175, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 634, scope: !1068)
!1179 = !DILocation(line: 0, scope: !598, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 457, scope: !1181, inlinedAt: !1178)
!1181 = distinct !DILexicalBlock(scope: !1175, file: !6, line: 457)
!1182 = !DILocation(line: 104, scope: !604, inlinedAt: !1180)
!1183 = distinct !DISubprogram(name: "unpark_one", linkageName: "?unpark_one@Synchronization@Internal@Runtime@Halide@@YAIIAAUparking_control@1234@@Z", scope: !2, file: !6, line: 636, type: !1069, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1193, !1196, !1197, !1200}
!1185 = !DILocalVariable(name: "control", arg: 2, scope: !1183, file: !6, line: 636, type: !1071)
!1186 = !DILocalVariable(name: "addr", arg: 1, scope: !1183, file: !6, line: 636, type: !22)
!1187 = !DILocalVariable(name: "bucket", scope: !1183, file: !6, line: 637, type: !741)
!1188 = !DILocalVariable(name: "data_location", scope: !1183, file: !6, line: 639, type: !264)
!1189 = !DILocalVariable(name: "prev", scope: !1183, file: !6, line: 640, type: !249)
!1190 = !DILocalVariable(name: "data", scope: !1183, file: !6, line: 641, type: !249)
!1191 = !DILocalVariable(name: "cur_addr", scope: !1192, file: !6, line: 643, type: !22)
!1192 = distinct !DILexicalBlock(scope: !1183, file: !6, line: 642)
!1193 = !DILocalVariable(name: "next", scope: !1194, file: !6, line: 646, type: !249)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !6, line: 645)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !6, line: 645)
!1196 = !DILocalVariable(name: "more_waiters", scope: !1194, file: !6, line: 649, type: !64)
!1197 = !DILocalVariable(name: "data2", scope: !1198, file: !6, line: 654, type: !249)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !6, line: 653)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !6, line: 651)
!1200 = !DILocalVariable(name: "cur_addr2", scope: !1201, file: !6, line: 656, type: !22)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !6, line: 655)
!1202 = !DILocation(line: 0, scope: !1183)
!1203 = !DILocation(line: 637, scope: !1183)
!1204 = !DILocation(line: 639, scope: !1183)
!1205 = !DILocation(line: 641, scope: !1183)
!1206 = !DILocation(line: 642, scope: !1183)
!1207 = !DILocation(line: 640, scope: !1183)
!1208 = !DILocation(line: 644, scope: !1192)
!1209 = !DILocation(line: 0, scope: !1192)
!1210 = !DILocation(line: 645, scope: !1192)
!1211 = !DILocation(line: 0, scope: !1195)
!1212 = !DILocation(line: 0, scope: !1194)
!1213 = !DILocation(line: 647, scope: !1194)
!1214 = !DILocation(line: 651, scope: !1194)
!1215 = !DILocation(line: 0, scope: !1198)
!1216 = !DILocation(line: 655, scope: !1198)
!1217 = !DILocation(line: 652, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1199, file: !6, line: 651)
!1219 = !DILocation(line: 653, scope: !1218)
!1220 = !DILocation(line: 657, scope: !1201)
!1221 = !DILocation(line: 0, scope: !1201)
!1222 = !DILocation(line: 658, scope: !1201)
!1223 = !DILocation(line: 659, scope: !1201)
!1224 = distinct !{!1224, !1216, !1225, !588}
!1225 = !DILocation(line: 660, scope: !1198)
!1226 = !DILocation(line: 663, scope: !1194)
!1227 = !DILocation(line: 649, scope: !1194)
!1228 = !{!1109, !402, i64 8}
!1229 = !DILocation(line: 0, scope: !718, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 665, scope: !1194)
!1231 = !DILocation(line: 120, scope: !718, inlinedAt: !1230)
!1232 = !DILocation(line: 0, scope: !936, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 666, scope: !1194)
!1234 = !DILocation(line: 0, scope: !947, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1233)
!1236 = !DILocation(line: 65, scope: !947, inlinedAt: !1235)
!1237 = !DILocation(line: 0, scope: !954, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1233)
!1239 = !DILocation(line: 131, scope: !954, inlinedAt: !1238)
!1240 = !DILocation(line: 310, scope: !936, inlinedAt: !1233)
!1241 = !DILocation(line: 313, scope: !936, inlinedAt: !1233)
!1242 = !DILocation(line: 314, scope: !964, inlinedAt: !1233)
!1243 = !DILocation(line: 315, scope: !964, inlinedAt: !1233)
!1244 = !DILocation(line: 0, scope: !986, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !1233)
!1246 = !DILocation(line: 68, scope: !986, inlinedAt: !1245)
!1247 = !DILocation(line: 0, scope: !724, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 667, scope: !1194)
!1249 = !DILocation(line: 124, scope: !724, inlinedAt: !1248)
!1250 = !DILocation(line: 125, scope: !724, inlinedAt: !1248)
!1251 = !DILocation(line: 0, scope: !731, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 668, scope: !1194)
!1253 = !DILocation(line: 129, scope: !731, inlinedAt: !1252)
!1254 = !DILocation(line: 671, scope: !1194)
!1255 = distinct !{!1255, !1206, !1256, !588}
!1256 = !DILocation(line: 677, scope: !1183)
!1257 = !DILocation(line: 679, scope: !1183)
!1258 = !DILocation(line: 0, scope: !936, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 681, scope: !1183)
!1260 = !DILocation(line: 0, scope: !947, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1259)
!1262 = !DILocation(line: 65, scope: !947, inlinedAt: !1261)
!1263 = !DILocation(line: 0, scope: !954, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1259)
!1265 = !DILocation(line: 131, scope: !954, inlinedAt: !1264)
!1266 = !DILocation(line: 310, scope: !936, inlinedAt: !1259)
!1267 = !DILocation(line: 313, scope: !936, inlinedAt: !1259)
!1268 = !DILocation(line: 314, scope: !964, inlinedAt: !1259)
!1269 = !DILocation(line: 315, scope: !964, inlinedAt: !1259)
!1270 = !DILocation(line: 0, scope: !986, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !1259)
!1272 = !DILocation(line: 68, scope: !986, inlinedAt: !1271)
!1273 = !DILocation(line: 684, scope: !1183)
!1274 = !DILocation(line: 685, scope: !1183)
!1275 = distinct !DISubprogram(name: "unpark_all", linkageName: "?unpark_all@Synchronization@Internal@Runtime@Halide@@YAIII@Z", scope: !2, file: !6, line: 687, type: !1276, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!22, !22, !22}
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1287, !1291, !1292, !1293, !1295, !1296, !1301, !1303, !1305}
!1279 = !DILocalVariable(name: "unpark_info", arg: 2, scope: !1275, file: !6, line: 687, type: !22)
!1280 = !DILocalVariable(name: "addr", arg: 1, scope: !1275, file: !6, line: 687, type: !22)
!1281 = !DILocalVariable(name: "bucket", scope: !1275, file: !6, line: 688, type: !741)
!1282 = !DILocalVariable(name: "data_location", scope: !1275, file: !6, line: 690, type: !264)
!1283 = !DILocalVariable(name: "prev", scope: !1275, file: !6, line: 691, type: !249)
!1284 = !DILocalVariable(name: "data", scope: !1275, file: !6, line: 692, type: !249)
!1285 = !DILocalVariable(name: "waiters", scope: !1275, file: !6, line: 693, type: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 27, baseType: !25)
!1287 = !DILocalVariable(name: "temp_list_storage", scope: !1275, file: !6, line: 694, type: !1288)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 512, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 16)
!1291 = !DILocalVariable(name: "temp_list", scope: !1275, file: !6, line: 695, type: !264)
!1292 = !DILocalVariable(name: "max_waiters", scope: !1275, file: !6, line: 696, type: !1286)
!1293 = !DILocalVariable(name: "cur_addr", scope: !1294, file: !6, line: 699, type: !22)
!1294 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 698)
!1295 = !DILocalVariable(name: "next", scope: !1294, file: !6, line: 702, type: !249)
!1296 = !DILocalVariable(name: "temp", scope: !1297, file: !6, line: 711, type: !264)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !6, line: 710)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !6, line: 710)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !6, line: 703)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !6, line: 703)
!1301 = !DILocalVariable(name: "i", scope: !1302, file: !6, line: 713, type: !1286)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !6, line: 713)
!1303 = !DILocalVariable(name: "i", scope: !1304, file: !6, line: 737, type: !1286)
!1304 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 737)
!1305 = !DILocalVariable(name: "i", scope: !1306, file: !6, line: 742, type: !1286)
!1306 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 742)
!1307 = !DILocation(line: 0, scope: !1275)
!1308 = !DILocation(line: 688, scope: !1275)
!1309 = !DILocation(line: 690, scope: !1275)
!1310 = !DILocation(line: 692, scope: !1275)
!1311 = !DILocation(line: 694, scope: !1275)
!1312 = !DILocation(line: 695, scope: !1275)
!1313 = !DILocation(line: 698, scope: !1275)
!1314 = !DILocation(line: 700, scope: !1294)
!1315 = !DILocation(line: 702, scope: !1294)
!1316 = !DILocation(line: 0, scope: !1294)
!1317 = !DILocation(line: 703, scope: !1294)
!1318 = !DILocation(line: 0, scope: !1300)
!1319 = !DILocation(line: 706, scope: !1299)
!1320 = !DILocation(line: 707, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !6, line: 706)
!1322 = distinct !DILexicalBlock(scope: !1299, file: !6, line: 706)
!1323 = !DILocation(line: 708, scope: !1321)
!1324 = !DILocation(line: 710, scope: !1299)
!1325 = !DILocation(line: 0, scope: !1297)
!1326 = !DILocation(line: 712, scope: !1297)
!1327 = !DILocation(line: 0, scope: !1302)
!1328 = !DILocation(line: 713, scope: !1302)
!1329 = !DILocation(line: 714, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !6, line: 713)
!1331 = distinct !DILexicalBlock(scope: !1302, file: !6, line: 713)
!1332 = !DILocation(line: 713, scope: !1331)
!1333 = distinct !{!1333, !1334}
!1334 = !{!"llvm.loop.unroll.disable"}
!1335 = !DILocation(line: 716, scope: !1297)
!1336 = !DILocation(line: 717, scope: !1297)
!1337 = distinct !{!1337, !1328, !1338, !588}
!1338 = !DILocation(line: 715, scope: !1302)
!1339 = !DILocation(line: 718, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !6, line: 717)
!1341 = distinct !DILexicalBlock(scope: !1297, file: !6, line: 717)
!1342 = !DILocation(line: 719, scope: !1340)
!1343 = !DILocation(line: 722, scope: !1299)
!1344 = !DILocation(line: 724, scope: !1299)
!1345 = !DILocation(line: 0, scope: !718, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 725, scope: !1299)
!1347 = !DILocation(line: 120, scope: !718, inlinedAt: !1346)
!1348 = !DILocation(line: 728, scope: !1299)
!1349 = distinct !{!1349, !1313, !1350, !588}
!1350 = !DILocation(line: 733, scope: !1275)
!1351 = !DILocation(line: 0, scope: !936, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 735, scope: !1275)
!1353 = !DILocation(line: 305, scope: !936, inlinedAt: !1352)
!1354 = !DILocation(line: 0, scope: !947, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 305, scope: !936, inlinedAt: !1352)
!1356 = !DILocation(line: 65, scope: !947, inlinedAt: !1355)
!1357 = !DILocation(line: 307, scope: !936, inlinedAt: !1352)
!1358 = !DILocation(line: 0, scope: !954, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 307, scope: !936, inlinedAt: !1352)
!1360 = !DILocation(line: 131, scope: !954, inlinedAt: !1359)
!1361 = !DILocation(line: 310, scope: !936, inlinedAt: !1352)
!1362 = !DILocation(line: 313, scope: !936, inlinedAt: !1352)
!1363 = !DILocation(line: 735, scope: !1275)
!1364 = !DILocation(line: 314, scope: !964, inlinedAt: !1352)
!1365 = !DILocation(line: 315, scope: !964, inlinedAt: !1352)
!1366 = !DILocation(line: 0, scope: !986, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 317, scope: !936, inlinedAt: !1352)
!1368 = !DILocation(line: 68, scope: !986, inlinedAt: !1367)
!1369 = !DILocation(line: 0, scope: !1304)
!1370 = !DILocation(line: 737, scope: !1304)
!1371 = !DILocation(line: 0, scope: !1306)
!1372 = !DILocation(line: 742, scope: !1306)
!1373 = !DILocation(line: 738, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !6, line: 737)
!1375 = distinct !DILexicalBlock(scope: !1304, file: !6, line: 737)
!1376 = !DILocation(line: 0, scope: !724, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 738, scope: !1374)
!1378 = !DILocation(line: 124, scope: !724, inlinedAt: !1377)
!1379 = !DILocation(line: 125, scope: !724, inlinedAt: !1377)
!1380 = !DILocation(line: 737, scope: !1375)
!1381 = distinct !{!1381, !1370, !1382, !588}
!1382 = !DILocation(line: 739, scope: !1304)
!1383 = !DILocation(line: 746, scope: !1275)
!1384 = !DILocation(line: 743, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !6, line: 742)
!1386 = distinct !DILexicalBlock(scope: !1306, file: !6, line: 742)
!1387 = !DILocation(line: 0, scope: !731, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 743, scope: !1385)
!1389 = !DILocation(line: 129, scope: !731, inlinedAt: !1388)
!1390 = !DILocation(line: 742, scope: !1386)
!1391 = distinct !{!1391, !1372, !1392, !588}
!1392 = !DILocation(line: 744, scope: !1306)
!1393 = !DILocation(line: 747, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !6, line: 746)
!1395 = distinct !DILexicalBlock(scope: !1275, file: !6, line: 746)
!1396 = !DILocation(line: 748, scope: !1394)
!1397 = !DILocation(line: 751, scope: !1275)
!1398 = !DILocation(line: 750, scope: !1275)
!1399 = distinct !DISubprogram(name: "unpark_requeue", linkageName: "?unpark_requeue@Synchronization@Internal@Runtime@Halide@@YAHIIAAUparking_control@1234@I@Z", scope: !2, file: !6, line: 753, type: !1400, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1402)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!29, !22, !22, !1071, !22}
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1417}
!1403 = !DILocalVariable(name: "unpark_info", arg: 4, scope: !1399, file: !6, line: 753, type: !22)
!1404 = !DILocalVariable(name: "control", arg: 3, scope: !1399, file: !6, line: 753, type: !1071)
!1405 = !DILocalVariable(name: "addr_to", arg: 2, scope: !1399, file: !6, line: 753, type: !22)
!1406 = !DILocalVariable(name: "addr_from", arg: 1, scope: !1399, file: !6, line: 753, type: !22)
!1407 = !DILocalVariable(name: "buckets", scope: !1399, file: !6, line: 754, type: !795)
!1408 = !DILocalVariable(name: "action", scope: !1399, file: !6, line: 756, type: !276)
!1409 = !DILocalVariable(name: "data_location", scope: !1399, file: !6, line: 762, type: !264)
!1410 = !DILocalVariable(name: "prev", scope: !1399, file: !6, line: 763, type: !249)
!1411 = !DILocalVariable(name: "data", scope: !1399, file: !6, line: 764, type: !249)
!1412 = !DILocalVariable(name: "requeue", scope: !1399, file: !6, line: 765, type: !249)
!1413 = !DILocalVariable(name: "requeue_tail", scope: !1399, file: !6, line: 766, type: !249)
!1414 = !DILocalVariable(name: "wakeup", scope: !1399, file: !6, line: 767, type: !249)
!1415 = !DILocalVariable(name: "cur_addr", scope: !1416, file: !6, line: 770, type: !22)
!1416 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 769)
!1417 = !DILocalVariable(name: "next", scope: !1416, file: !6, line: 773, type: !249)
!1418 = !DILocation(line: 0, scope: !1399)
!1419 = !DILocation(line: 754, scope: !1399)
!1420 = !DILocation(line: 756, scope: !1399)
!1421 = !DILocation(line: 0, scope: !1098, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 756, scope: !1399)
!1423 = !DILocation(line: 580, scope: !1098, inlinedAt: !1422)
!1424 = !DILocation(line: 757, scope: !1399)
!1425 = !DILocation(line: 758, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !6, line: 757)
!1427 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 757)
!1428 = !DILocation(line: 759, scope: !1426)
!1429 = !DILocation(line: 762, scope: !1399)
!1430 = !DILocation(line: 764, scope: !1399)
!1431 = !DILocation(line: 769, scope: !1399)
!1432 = !DILocation(line: 771, scope: !1416)
!1433 = !DILocation(line: 773, scope: !1416)
!1434 = !DILocation(line: 0, scope: !1416)
!1435 = !DILocation(line: 774, scope: !1416)
!1436 = !DILocation(line: 775, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !6, line: 774)
!1438 = distinct !DILexicalBlock(scope: !1416, file: !6, line: 774)
!1439 = !DILocation(line: 777, scope: !1437)
!1440 = !DILocation(line: 778, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !6, line: 777)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !6, line: 777)
!1443 = !DILocation(line: 779, scope: !1441)
!1444 = !DILocation(line: 781, scope: !1437)
!1445 = !DILocation(line: 784, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !6, line: 783)
!1447 = distinct !DILexicalBlock(scope: !1437, file: !6, line: 781)
!1448 = !DILocation(line: 787, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !6, line: 786)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !6, line: 784)
!1451 = !DILocation(line: 788, scope: !1449)
!1452 = !DILocalVariable(name: "val", arg: 2, scope: !1453, file: !6, line: 149, type: !300)
!1453 = distinct !DISubprogram(name: "atomic_store_relaxed", linkageName: "?atomic_store_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAI0@Z", scope: !479, file: !6, line: 149, type: !1454, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !300, !300}
!1456 = !{!1452, !1457}
!1457 = !DILocalVariable(name: "addr", arg: 1, scope: !1453, file: !6, line: 149, type: !300)
!1458 = !DILocation(line: 0, scope: !1453, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 791, scope: !1446)
!1460 = !DILocation(line: 150, scope: !1453, inlinedAt: !1459)
!1461 = !DILocation(line: 792, scope: !1446)
!1462 = !DILocation(line: 765, scope: !1399)
!1463 = !DILocation(line: 766, scope: !1399)
!1464 = distinct !{!1464, !1431, !1465, !588}
!1465 = !DILocation(line: 800, scope: !1399)
!1466 = !DILocation(line: 802, scope: !1399)
!1467 = !DILocation(line: 803, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !6, line: 802)
!1469 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 802)
!1470 = !DILocation(line: 804, scope: !1468)
!1471 = !DILocation(line: 807, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !6, line: 806)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !6, line: 804)
!1474 = !DILocation(line: 808, scope: !1472)
!1475 = !DILocation(line: 0, scope: !1473)
!1476 = !DILocation(line: 809, scope: !1468)
!1477 = !DILocation(line: 810, scope: !1468)
!1478 = !DILocation(line: 812, scope: !1399)
!1479 = !{!1109, !402, i64 12}
!1480 = !DILocation(line: 814, scope: !1399)
!1481 = !DILocation(line: 815, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !6, line: 814)
!1483 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 814)
!1484 = !DILocation(line: 0, scope: !718, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 816, scope: !1482)
!1486 = !DILocation(line: 120, scope: !718, inlinedAt: !1485)
!1487 = !DILocation(line: 817, scope: !1482)
!1488 = !DILocation(line: 0, scope: !724, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 818, scope: !1482)
!1490 = !DILocation(line: 124, scope: !724, inlinedAt: !1489)
!1491 = !DILocation(line: 125, scope: !724, inlinedAt: !1489)
!1492 = !DILocation(line: 0, scope: !731, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 819, scope: !1482)
!1494 = !DILocation(line: 129, scope: !731, inlinedAt: !1493)
!1495 = !DILocation(line: 820, scope: !1482)
!1496 = !DILocation(line: 821, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1483, file: !6, line: 820)
!1498 = !DILocation(line: 822, scope: !1497)
!1499 = !DILocation(line: 824, scope: !1399)
!1500 = !DILocation(line: 825, scope: !1399)
!1501 = distinct !DISubprogram(name: "mutex_parking_control_validate", linkageName: "?mutex_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 840, type: !273, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1505, !1506}
!1503 = !DILocalVariable(name: "action", arg: 2, scope: !1501, file: !6, line: 840, type: !275)
!1504 = !DILocalVariable(name: "control", arg: 1, scope: !1501, file: !6, line: 840, type: !43)
!1505 = !DILocalVariable(name: "mutex_control", scope: !1501, file: !6, line: 841, type: !265)
!1506 = !DILocalVariable(name: "result", scope: !1501, file: !6, line: 843, type: !22)
!1507 = !DILocation(line: 0, scope: !1501)
!1508 = !DILocation(line: 844, scope: !1501)
!1509 = !{!1510, !402, i64 16}
!1510 = !{!"?AUmutex_parking_control@Synchronization@Internal@Runtime@Halide@@", !402, i64 16}
!1511 = !DILocation(line: 845, scope: !1501)
!1512 = distinct !DISubprogram(name: "mutex_parking_control_unpark", linkageName: "?mutex_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 849, type: !287, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1513)
!1513 = !{!1514, !1515, !1516, !1517, !1518}
!1514 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1512, file: !6, line: 849, type: !64)
!1515 = !DILocalVariable(name: "unparked", arg: 2, scope: !1512, file: !6, line: 849, type: !29)
!1516 = !DILocalVariable(name: "control", arg: 1, scope: !1512, file: !6, line: 849, type: !43)
!1517 = !DILocalVariable(name: "mutex_control", scope: !1512, file: !6, line: 850, type: !265)
!1518 = !DILocalVariable(name: "return_state", scope: !1512, file: !6, line: 853, type: !22)
!1519 = !DILocation(line: 0, scope: !1512)
!1520 = !DILocation(line: 853, scope: !1512)
!1521 = !DILocation(line: 854, scope: !1512)
!1522 = !DILocalVariable(name: "val", arg: 2, scope: !1523, file: !6, line: 154, type: !491)
!1523 = distinct !DISubprogram(name: "atomic_store_release<unsigned int>", linkageName: "??$atomic_store_release@I@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAI0@Z", scope: !479, file: !6, line: 154, type: !637, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !497, retainedNodes: !1524)
!1524 = !{!1522, !1525}
!1525 = !DILocalVariable(name: "addr", arg: 1, scope: !1523, file: !6, line: 154, type: !491)
!1526 = !DILocation(line: 0, scope: !1523, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 854, scope: !1512)
!1528 = !DILocation(line: 155, scope: !1523, inlinedAt: !1527)
!1529 = !DILocation(line: 156, scope: !1523, inlinedAt: !1527)
!1530 = !DILocation(line: 856, scope: !1512)
!1531 = distinct !DISubprogram(name: "signal_parking_control_unpark", linkageName: "?signal_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 968, type: !287, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537}
!1533 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1531, file: !6, line: 968, type: !64)
!1534 = !DILocalVariable(name: "unparked", arg: 2, scope: !1531, file: !6, line: 968, type: !29)
!1535 = !DILocalVariable(name: "control", arg: 1, scope: !1531, file: !6, line: 968, type: !43)
!1536 = !DILocalVariable(name: "signal_control", scope: !1531, file: !6, line: 969, type: !305)
!1537 = !DILocalVariable(name: "val", scope: !1538, file: !6, line: 972, type: !22)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !6, line: 971)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !6, line: 971)
!1540 = !DILocation(line: 0, scope: !1531)
!1541 = !DILocation(line: 971, scope: !1531)
!1542 = !DILocation(line: 0, scope: !1538)
!1543 = !DILocation(line: 973, scope: !1538)
!1544 = !{!1545, !402, i64 16}
!1545 = !{!"?AUsignal_parking_control@Synchronization@Internal@Runtime@Halide@@", !402, i64 16, !402, i64 20}
!1546 = !DILocation(line: 0, scope: !1453, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 973, scope: !1538)
!1548 = !DILocation(line: 150, scope: !1453, inlinedAt: !1547)
!1549 = !DILocation(line: 974, scope: !1538)
!1550 = !DILocation(line: 979, scope: !1531)
!1551 = distinct !DISubprogram(name: "broadcast_parking_control_validate", linkageName: "?broadcast_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 996, type: !273, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1552)
!1552 = !{!1553, !1554, !1555, !1556}
!1553 = !DILocalVariable(name: "action", arg: 2, scope: !1551, file: !6, line: 996, type: !275)
!1554 = !DILocalVariable(name: "control", arg: 1, scope: !1551, file: !6, line: 996, type: !43)
!1555 = !DILocalVariable(name: "broadcast_control", scope: !1551, file: !6, line: 997, type: !330)
!1556 = !DILocalVariable(name: "val", scope: !1551, file: !6, line: 999, type: !22)
!1557 = !DILocation(line: 0, scope: !1551)
!1558 = !DILocation(line: 1000, scope: !1551)
!1559 = !{!1560, !402, i64 16}
!1560 = !{!"?AUbroadcast_parking_control@Synchronization@Internal@Runtime@Halide@@", !402, i64 16, !402, i64 20}
!1561 = !DILocation(line: 1004, scope: !1551)
!1562 = !{!1560, !402, i64 20}
!1563 = !DILocation(line: 0, scope: !1453, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 1009, scope: !1551)
!1565 = !DILocation(line: 150, scope: !1453, inlinedAt: !1564)
!1566 = !DILocalVariable(name: "this", arg: 1, scope: !1567, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1567 = distinct !DISubprogram(name: "make_parked_if_locked", linkageName: "?make_parked_if_locked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAE_NXZ", scope: !312, file: !6, line: 938, type: !323, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !322, retainedNodes: !1568)
!1568 = !{!1566, !1569, !1570}
!1569 = !DILocalVariable(name: "val", scope: !1567, file: !6, line: 939, type: !22)
!1570 = !DILocalVariable(name: "desired", scope: !1571, file: !6, line: 946, type: !22)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !6, line: 941)
!1572 = !DILocation(line: 0, scope: !1567, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 1011, scope: !1551)
!1574 = !DILocation(line: 940, scope: !1567, inlinedAt: !1573)
!1575 = !DILocation(line: 941, scope: !1567, inlinedAt: !1573)
!1576 = !DILocation(line: 942, scope: !1571, inlinedAt: !1573)
!1577 = !DILocation(line: 946, scope: !1571, inlinedAt: !1573)
!1578 = !DILocation(line: 0, scope: !1571, inlinedAt: !1573)
!1579 = !DILocalVariable(name: "desired", arg: 3, scope: !1580, file: !6, line: 122, type: !300)
!1580 = distinct !DISubprogram(name: "atomic_cas_weak_relaxed_relaxed", linkageName: "?atomic_cas_weak_relaxed_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !479, file: !6, line: 122, type: !480, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1581)
!1581 = !{!1579, !1582, !1583}
!1582 = !DILocalVariable(name: "expected", arg: 2, scope: !1580, file: !6, line: 122, type: !300)
!1583 = !DILocalVariable(name: "addr", arg: 1, scope: !1580, file: !6, line: 122, type: !300)
!1584 = !DILocation(line: 0, scope: !1580, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 947, scope: !1571, inlinedAt: !1573)
!1586 = !DILocation(line: 0, scope: !488, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 123, scope: !1580, inlinedAt: !1585)
!1588 = !DILocation(line: 104, scope: !488, inlinedAt: !1587)
!1589 = !DILocation(line: 106, scope: !488, inlinedAt: !1587)
!1590 = distinct !{!1590, !1575, !1591}
!1591 = !DILocation(line: 950, scope: !1567, inlinedAt: !1573)
!1592 = !DILocation(line: 1011, scope: !1551)
!1593 = !DILocation(line: 1013, scope: !1551)
!1594 = !DILocation(line: 1014, scope: !1551)
!1595 = distinct !DISubprogram(name: "broadcast_parking_control_requeue_callback", linkageName: "?broadcast_parking_control_requeue_callback@Synchronization@Internal@Runtime@Halide@@YAXPAXABUvalidate_action@1234@_N2@Z", scope: !2, file: !6, line: 1016, type: !291, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601}
!1597 = !DILocalVariable(name: "some_requeued", arg: 4, scope: !1595, file: !6, line: 1016, type: !64)
!1598 = !DILocalVariable(name: "one_to_wake", arg: 3, scope: !1595, file: !6, line: 1016, type: !64)
!1599 = !DILocalVariable(name: "action", arg: 2, scope: !1595, file: !6, line: 1016, type: !293)
!1600 = !DILocalVariable(name: "control", arg: 1, scope: !1595, file: !6, line: 1016, type: !43)
!1601 = !DILocalVariable(name: "broadcast_control", scope: !1595, file: !6, line: 1017, type: !330)
!1602 = !DILocation(line: 0, scope: !1595)
!1603 = !DILocation(line: 1019, scope: !1595)
!1604 = !DILocation(line: 1020, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !6, line: 1019)
!1606 = distinct !DILexicalBlock(scope: !1595, file: !6, line: 1019)
!1607 = !DILocalVariable(name: "this", arg: 1, scope: !1608, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1608 = distinct !DISubprogram(name: "make_parked", linkageName: "?make_parked@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 953, type: !316, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !325, retainedNodes: !1609)
!1609 = !{!1607}
!1610 = !DILocation(line: 0, scope: !1608, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 1020, scope: !1605)
!1612 = !DILocation(line: 954, scope: !1608, inlinedAt: !1611)
!1613 = !DILocalVariable(name: "val", arg: 2, scope: !1614, file: !6, line: 145, type: !22)
!1614 = distinct !DISubprogram(name: "atomic_or_fetch_relaxed", linkageName: "?atomic_or_fetch_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAIPAII@Z", scope: !479, file: !6, line: 145, type: !709, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1615)
!1615 = !{!1613, !1616}
!1616 = !DILocalVariable(name: "addr", arg: 1, scope: !1614, file: !6, line: 145, type: !300)
!1617 = !DILocation(line: 0, scope: !1614, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 954, scope: !1608, inlinedAt: !1611)
!1619 = !DILocation(line: 146, scope: !1614, inlinedAt: !1618)
!1620 = !DILocation(line: 1021, scope: !1605)
!1621 = !DILocation(line: 1022, scope: !1595)
!1622 = distinct !DISubprogram(name: "wait_parking_control_validate", linkageName: "?wait_parking_control_validate@Synchronization@Internal@Runtime@Halide@@YA_NPAXAAUvalidate_action@1234@@Z", scope: !2, file: !6, line: 1038, type: !273, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1623)
!1623 = !{!1624, !1625, !1626, !1627}
!1624 = !DILocalVariable(name: "action", arg: 2, scope: !1622, file: !6, line: 1038, type: !275)
!1625 = !DILocalVariable(name: "control", arg: 1, scope: !1622, file: !6, line: 1038, type: !43)
!1626 = !DILocalVariable(name: "wait_control", scope: !1622, file: !6, line: 1039, type: !340)
!1627 = !DILocalVariable(name: "val", scope: !1622, file: !6, line: 1041, type: !22)
!1628 = !DILocation(line: 0, scope: !1622)
!1629 = !DILocation(line: 1042, scope: !1622)
!1630 = !{!1631, !402, i64 16}
!1631 = !{!"?AUwait_parking_control@Synchronization@Internal@Runtime@Halide@@", !402, i64 16, !402, i64 20}
!1632 = !DILocation(line: 1044, scope: !1622)
!1633 = !DILocation(line: 0, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1622, file: !6, line: 1044)
!1635 = !{!1631, !402, i64 20}
!1636 = !DILocation(line: 1047, scope: !1634)
!1637 = !DILocation(line: 1049, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !6, line: 1047)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !6, line: 1047)
!1640 = !DILocation(line: 1050, scope: !1638)
!1641 = !DILocation(line: 1054, scope: !1622)
!1642 = distinct !DISubprogram(name: "wait_parking_control_before_sleep", linkageName: "?wait_parking_control_before_sleep@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !2, file: !6, line: 1056, type: !171, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1643)
!1643 = !{!1644, !1645}
!1644 = !DILocalVariable(name: "control", arg: 1, scope: !1642, file: !6, line: 1056, type: !43)
!1645 = !DILocalVariable(name: "wait_control", scope: !1642, file: !6, line: 1057, type: !340)
!1646 = !DILocation(line: 0, scope: !1642)
!1647 = !DILocation(line: 1059, scope: !1642)
!1648 = !DILocalVariable(name: "this", arg: 1, scope: !1649, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1649 = distinct !DISubprogram(name: "unlock", linkageName: "?unlock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 929, type: !316, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !321, retainedNodes: !1650)
!1650 = !{!1648, !1651, !1652}
!1651 = !DILocalVariable(name: "expected", scope: !1649, file: !6, line: 930, type: !22)
!1652 = !DILocalVariable(name: "desired", scope: !1649, file: !6, line: 931, type: !22)
!1653 = !DILocation(line: 0, scope: !1649, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 1059, scope: !1642)
!1655 = !DILocation(line: 933, scope: !1649, inlinedAt: !1654)
!1656 = !DILocation(line: 0, scope: !563, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 933, scope: !1649, inlinedAt: !1654)
!1658 = !DILocation(line: 0, scope: !488, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 114, scope: !563, inlinedAt: !1657)
!1660 = !DILocation(line: 104, scope: !488, inlinedAt: !1659)
!1661 = !DILocation(line: 106, scope: !488, inlinedAt: !1659)
!1662 = !DILocalVariable(name: "this", arg: 1, scope: !1663, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1663 = distinct !DISubprogram(name: "unlock_full", linkageName: "?unlock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !312, file: !6, line: 906, type: !316, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !319, retainedNodes: !1664)
!1664 = !{!1662, !1665, !1666, !1667}
!1665 = !DILocalVariable(name: "expected", scope: !1663, file: !6, line: 907, type: !22)
!1666 = !DILocalVariable(name: "desired", scope: !1663, file: !6, line: 908, type: !22)
!1667 = !DILocalVariable(name: "control", scope: !1663, file: !6, line: 915, type: !266)
!1668 = !DILocation(line: 0, scope: !1663, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 934, scope: !1670, inlinedAt: !1654)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !6, line: 933)
!1671 = distinct !DILexicalBlock(scope: !1649, file: !6, line: 933)
!1672 = !DILocalVariable(name: "desired", arg: 3, scope: !1673, file: !6, line: 109, type: !300)
!1673 = distinct !DISubprogram(name: "atomic_cas_strong_release_relaxed", linkageName: "?atomic_cas_strong_release_relaxed@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAI00@Z", scope: !479, file: !6, line: 109, type: !480, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1674)
!1674 = !{!1672, !1675, !1676}
!1675 = !DILocalVariable(name: "expected", arg: 2, scope: !1673, file: !6, line: 109, type: !300)
!1676 = !DILocalVariable(name: "addr", arg: 1, scope: !1673, file: !6, line: 109, type: !300)
!1677 = !DILocation(line: 0, scope: !1673, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 911, scope: !1663, inlinedAt: !1669)
!1679 = !DILocation(line: 0, scope: !488, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 110, scope: !1673, inlinedAt: !1678)
!1681 = !DILocation(line: 104, scope: !488, inlinedAt: !1680)
!1682 = !DILocation(line: 106, scope: !488, inlinedAt: !1680)
!1683 = !DILocation(line: 911, scope: !1663, inlinedAt: !1669)
!1684 = !DILocation(line: 915, scope: !1663, inlinedAt: !1669)
!1685 = !DILocalVariable(name: "lock_state", arg: 2, scope: !1686, file: !6, line: 832, type: !300)
!1686 = distinct !DISubprogram(name: "mutex_parking_control", linkageName: "??0mutex_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAI@Z", scope: !266, file: !6, line: 832, type: !302, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !301, retainedNodes: !1687)
!1687 = !{!1685, !1688}
!1688 = !DILocalVariable(name: "this", arg: 1, scope: !1686, type: !265, flags: DIFlagArtificial | DIFlagObjectPointer)
!1689 = !DILocation(line: 0, scope: !1686, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 915, scope: !1663, inlinedAt: !1669)
!1691 = !DILocalVariable(name: "this", arg: 1, scope: !1692, type: !1694, flags: DIFlagArtificial | DIFlagObjectPointer)
!1692 = distinct !DISubprogram(name: "parking_control", linkageName: "??0parking_control@Synchronization@Internal@Runtime@Halide@@QAE@XZ", scope: !269, file: !6, line: 598, type: !296, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !295, retainedNodes: !1693)
!1693 = !{!1691}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!1695 = !DILocation(line: 0, scope: !1692, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 833, scope: !1686, inlinedAt: !1690)
!1697 = !DILocation(line: 600, scope: !1692, inlinedAt: !1696)
!1698 = !DILocation(line: 833, scope: !1686, inlinedAt: !1690)
!1699 = !DILocation(line: 834, scope: !1700, inlinedAt: !1690)
!1700 = distinct !DILexicalBlock(scope: !1686, file: !6, line: 833)
!1701 = !DILocation(line: 835, scope: !1700, inlinedAt: !1690)
!1702 = !DILocation(line: 916, scope: !1663, inlinedAt: !1669)
!1703 = !DILocation(line: 917, scope: !1663, inlinedAt: !1669)
!1704 = !DILocation(line: 1060, scope: !1642)
!1705 = distinct !DISubprogram(name: "wait_parking_control_unpark", linkageName: "?wait_parking_control_unpark@Synchronization@Internal@Runtime@Halide@@YAIPAXH_N@Z", scope: !2, file: !6, line: 1062, type: !287, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711}
!1707 = !DILocalVariable(name: "more_waiters", arg: 3, scope: !1705, file: !6, line: 1062, type: !64)
!1708 = !DILocalVariable(name: "unparked", arg: 2, scope: !1705, file: !6, line: 1062, type: !29)
!1709 = !DILocalVariable(name: "control", arg: 1, scope: !1705, file: !6, line: 1062, type: !43)
!1710 = !DILocalVariable(name: "wait_control", scope: !1705, file: !6, line: 1063, type: !340)
!1711 = !DILocalVariable(name: "val", scope: !1712, file: !6, line: 1066, type: !22)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !6, line: 1065)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !6, line: 1065)
!1714 = !DILocation(line: 0, scope: !1705)
!1715 = !DILocation(line: 1065, scope: !1705)
!1716 = !DILocation(line: 0, scope: !1712)
!1717 = !DILocation(line: 1067, scope: !1712)
!1718 = !DILocation(line: 0, scope: !1453, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 1067, scope: !1712)
!1720 = !DILocation(line: 150, scope: !1453, inlinedAt: !1719)
!1721 = !DILocation(line: 1068, scope: !1712)
!1722 = !DILocation(line: 1069, scope: !1705)
!1723 = distinct !DISubprogram(name: "halide_mutex_lock", scope: !6, file: !6, line: 1131, type: !1724, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !367}
!1726 = !{!1727, !1728}
!1727 = !DILocalVariable(name: "mutex", arg: 1, scope: !1723, file: !6, line: 1131, type: !367)
!1728 = !DILocalVariable(name: "fast_mutex", scope: !1723, file: !6, line: 1132, type: !311)
!1729 = !DILocation(line: 0, scope: !1723)
!1730 = !DILocalVariable(name: "this", arg: 1, scope: !1731, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1731 = distinct !DISubprogram(name: "lock", linkageName: "?lock@fast_mutex@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !312, file: !6, line: 920, type: !316, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !320, retainedNodes: !1732)
!1732 = !{!1730, !1733, !1734}
!1733 = !DILocalVariable(name: "expected", scope: !1731, file: !6, line: 921, type: !22)
!1734 = !DILocalVariable(name: "desired", scope: !1731, file: !6, line: 922, type: !22)
!1735 = !DILocation(line: 0, scope: !1731, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 1134, scope: !1723)
!1737 = !DILocation(line: 924, scope: !1731, inlinedAt: !1736)
!1738 = !DILocation(line: 0, scope: !478, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 924, scope: !1731, inlinedAt: !1736)
!1740 = !DILocation(line: 0, scope: !488, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !1739)
!1742 = !DILocation(line: 104, scope: !488, inlinedAt: !1741)
!1743 = !DILocation(line: 106, scope: !488, inlinedAt: !1741)
!1744 = !DILocalVariable(name: "this", arg: 1, scope: !1745, type: !311, flags: DIFlagArtificial | DIFlagObjectPointer)
!1745 = distinct !DISubprogram(name: "lock_full", linkageName: "?lock_full@fast_mutex@Synchronization@Internal@Runtime@Halide@@AAEXXZ", scope: !312, file: !6, line: 862, type: !316, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !315, retainedNodes: !1746)
!1746 = !{!1744, !1747, !1748, !1749, !1753, !1756, !1757}
!1747 = !DILocalVariable(name: "spinner", scope: !1745, file: !6, line: 864, type: !450)
!1748 = !DILocalVariable(name: "expected", scope: !1745, file: !6, line: 865, type: !22)
!1749 = !DILocalVariable(name: "desired", scope: !1750, file: !6, line: 870, type: !22)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !6, line: 869)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !6, line: 869)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !6, line: 868)
!1753 = !DILocalVariable(name: "desired", scope: !1754, file: !6, line: 888, type: !22)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !6, line: 887)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !6, line: 887)
!1756 = !DILocalVariable(name: "control", scope: !1752, file: !6, line: 895, type: !266)
!1757 = !DILocalVariable(name: "result", scope: !1752, file: !6, line: 896, type: !22)
!1758 = !DILocation(line: 0, scope: !1745, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 925, scope: !1760, inlinedAt: !1736)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !6, line: 924)
!1761 = distinct !DILexicalBlock(scope: !1731, file: !6, line: 924)
!1762 = !DILocation(line: 866, scope: !1745, inlinedAt: !1759)
!1763 = !DILocation(line: 868, scope: !1745, inlinedAt: !1759)
!1764 = !DILocation(line: 869, scope: !1752, inlinedAt: !1759)
!1765 = !DILocation(line: 870, scope: !1750, inlinedAt: !1759)
!1766 = !DILocation(line: 0, scope: !1750, inlinedAt: !1759)
!1767 = !DILocation(line: 0, scope: !478, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 871, scope: !1750, inlinedAt: !1759)
!1769 = !DILocation(line: 0, scope: !488, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !1768)
!1771 = !DILocation(line: 104, scope: !488, inlinedAt: !1770)
!1772 = !DILocation(line: 106, scope: !488, inlinedAt: !1770)
!1773 = !DILocation(line: 0, scope: !505, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 880, scope: !1752, inlinedAt: !1759)
!1775 = !DILocation(line: 238, scope: !505, inlinedAt: !1774)
!1776 = !DILocation(line: 241, scope: !505, inlinedAt: !1774)
!1777 = !DILocation(line: 880, scope: !1752, inlinedAt: !1759)
!1778 = !DILocation(line: 239, scope: !512, inlinedAt: !1774)
!1779 = !DILocation(line: 881, scope: !1780, inlinedAt: !1759)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !6, line: 880)
!1781 = distinct !DILexicalBlock(scope: !1752, file: !6, line: 880)
!1782 = !DILocation(line: 882, scope: !1780, inlinedAt: !1759)
!1783 = !DILocation(line: 883, scope: !1780, inlinedAt: !1759)
!1784 = !DILocation(line: 887, scope: !1752, inlinedAt: !1759)
!1785 = !DILocation(line: 888, scope: !1754, inlinedAt: !1759)
!1786 = !DILocation(line: 0, scope: !1754, inlinedAt: !1759)
!1787 = !DILocation(line: 0, scope: !1580, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 889, scope: !1754, inlinedAt: !1759)
!1789 = !DILocation(line: 0, scope: !488, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 123, scope: !1580, inlinedAt: !1788)
!1791 = !DILocation(line: 104, scope: !488, inlinedAt: !1790)
!1792 = !DILocation(line: 106, scope: !488, inlinedAt: !1790)
!1793 = !DILocation(line: 895, scope: !1752, inlinedAt: !1759)
!1794 = !DILocation(line: 0, scope: !1686, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 895, scope: !1752, inlinedAt: !1759)
!1796 = !DILocation(line: 0, scope: !1692, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 833, scope: !1686, inlinedAt: !1795)
!1798 = !DILocation(line: 600, scope: !1692, inlinedAt: !1797)
!1799 = !DILocation(line: 833, scope: !1686, inlinedAt: !1795)
!1800 = !DILocation(line: 834, scope: !1700, inlinedAt: !1795)
!1801 = !DILocation(line: 835, scope: !1700, inlinedAt: !1795)
!1802 = !DILocation(line: 896, scope: !1752, inlinedAt: !1759)
!1803 = !DILocation(line: 0, scope: !1752, inlinedAt: !1759)
!1804 = !DILocation(line: 897, scope: !1752, inlinedAt: !1759)
!1805 = !DILocation(line: 902, scope: !1752, inlinedAt: !1759)
!1806 = !DILocation(line: 903, scope: !1752, inlinedAt: !1759)
!1807 = distinct !{!1807, !1763, !1808}
!1808 = !DILocation(line: 903, scope: !1745, inlinedAt: !1759)
!1809 = !DILocation(line: 1135, scope: !1723)
!1810 = distinct !DISubprogram(name: "halide_mutex_unlock", scope: !6, file: !6, line: 1137, type: !1724, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1811)
!1811 = !{!1812, !1813}
!1812 = !DILocalVariable(name: "mutex", arg: 1, scope: !1810, file: !6, line: 1137, type: !367)
!1813 = !DILocalVariable(name: "fast_mutex", scope: !1810, file: !6, line: 1138, type: !311)
!1814 = !DILocation(line: 0, scope: !1810)
!1815 = !DILocation(line: 0, scope: !1649, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 1140, scope: !1810)
!1817 = !DILocation(line: 933, scope: !1649, inlinedAt: !1816)
!1818 = !DILocation(line: 0, scope: !563, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 933, scope: !1649, inlinedAt: !1816)
!1820 = !DILocation(line: 0, scope: !488, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 114, scope: !563, inlinedAt: !1819)
!1822 = !DILocation(line: 104, scope: !488, inlinedAt: !1821)
!1823 = !DILocation(line: 106, scope: !488, inlinedAt: !1821)
!1824 = !DILocation(line: 0, scope: !1663, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 934, scope: !1670, inlinedAt: !1816)
!1826 = !DILocation(line: 0, scope: !1673, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 911, scope: !1663, inlinedAt: !1825)
!1828 = !DILocation(line: 0, scope: !488, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 110, scope: !1673, inlinedAt: !1827)
!1830 = !DILocation(line: 104, scope: !488, inlinedAt: !1829)
!1831 = !DILocation(line: 106, scope: !488, inlinedAt: !1829)
!1832 = !DILocation(line: 911, scope: !1663, inlinedAt: !1825)
!1833 = !DILocation(line: 915, scope: !1663, inlinedAt: !1825)
!1834 = !DILocation(line: 0, scope: !1686, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 915, scope: !1663, inlinedAt: !1825)
!1836 = !DILocation(line: 0, scope: !1692, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 833, scope: !1686, inlinedAt: !1835)
!1838 = !DILocation(line: 600, scope: !1692, inlinedAt: !1837)
!1839 = !DILocation(line: 833, scope: !1686, inlinedAt: !1835)
!1840 = !DILocation(line: 834, scope: !1700, inlinedAt: !1835)
!1841 = !DILocation(line: 835, scope: !1700, inlinedAt: !1835)
!1842 = !DILocation(line: 916, scope: !1663, inlinedAt: !1825)
!1843 = !DILocation(line: 917, scope: !1663, inlinedAt: !1825)
!1844 = !DILocation(line: 1141, scope: !1810)
!1845 = distinct !DISubprogram(name: "halide_cond_broadcast", scope: !6, file: !6, line: 1143, type: !1846, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1849)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1848}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "cond", arg: 1, scope: !1845, file: !6, line: 1143, type: !1848)
!1851 = !DILocalVariable(name: "fast_cond", scope: !1845, file: !6, line: 1144, type: !350)
!1852 = !DILocation(line: 0, scope: !1845)
!1853 = !DILocalVariable(name: "this", arg: 1, scope: !1854, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1854 = distinct !DISubprogram(name: "broadcast", linkageName: "?broadcast@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !351, file: !6, line: 1092, type: !355, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !359, retainedNodes: !1855)
!1855 = !{!1853, !1856, !1857}
!1856 = !DILocalVariable(name: "val", scope: !1854, file: !6, line: 1094, type: !22)
!1857 = !DILocalVariable(name: "control", scope: !1854, file: !6, line: 1100, type: !331)
!1858 = !DILocation(line: 0, scope: !1854, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 1146, scope: !1845)
!1860 = !DILocation(line: 1093, scope: !1854, inlinedAt: !1859)
!1861 = !DILocalVariable(name: "cond", arg: 1, scope: !1862, file: !6, line: 70, type: !43)
!1862 = distinct !DISubprogram(name: "if_tsan_pre_signal", linkageName: "?if_tsan_pre_signal@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !479, file: !6, line: 70, type: !171, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1863)
!1863 = !{!1861}
!1864 = !DILocation(line: 0, scope: !1862, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 1093, scope: !1854, inlinedAt: !1859)
!1866 = !DILocation(line: 71, scope: !1862, inlinedAt: !1865)
!1867 = !DILocation(line: 1095, scope: !1854, inlinedAt: !1859)
!1868 = !DILocation(line: 1096, scope: !1854, inlinedAt: !1859)
!1869 = !DILocalVariable(name: "cond", arg: 1, scope: !1870, file: !6, line: 73, type: !43)
!1870 = distinct !DISubprogram(name: "if_tsan_post_signal", linkageName: "?if_tsan_post_signal@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAX@Z", scope: !479, file: !6, line: 73, type: !171, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1871)
!1871 = !{!1869}
!1872 = !DILocation(line: 0, scope: !1870, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 1097, scope: !1874, inlinedAt: !1859)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !6, line: 1096)
!1875 = distinct !DILexicalBlock(scope: !1854, file: !6, line: 1096)
!1876 = !DILocation(line: 74, scope: !1870, inlinedAt: !1873)
!1877 = !DILocation(line: 1098, scope: !1874, inlinedAt: !1859)
!1878 = !DILocation(line: 1100, scope: !1854, inlinedAt: !1859)
!1879 = !DILocalVariable(name: "mutex", arg: 3, scope: !1880, file: !6, line: 989, type: !311)
!1880 = distinct !DISubprogram(name: "broadcast_parking_control", linkageName: "??0broadcast_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAIPAVfast_mutex@1234@@Z", scope: !331, file: !6, line: 989, type: !337, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !336, retainedNodes: !1881)
!1881 = !{!1879, !1882, !1883}
!1882 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1880, file: !6, line: 989, type: !300)
!1883 = !DILocalVariable(name: "this", arg: 1, scope: !1880, type: !330, flags: DIFlagArtificial | DIFlagObjectPointer)
!1884 = !DILocation(line: 0, scope: !1880, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 1100, scope: !1854, inlinedAt: !1859)
!1886 = !DILocation(line: 0, scope: !1692, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 990, scope: !1880, inlinedAt: !1885)
!1888 = !DILocation(line: 600, scope: !1692, inlinedAt: !1887)
!1889 = !DILocation(line: 990, scope: !1880, inlinedAt: !1885)
!1890 = !DILocation(line: 991, scope: !1891, inlinedAt: !1885)
!1891 = distinct !DILexicalBlock(scope: !1880, file: !6, line: 990)
!1892 = !DILocation(line: 992, scope: !1891, inlinedAt: !1885)
!1893 = !DILocation(line: 1101, scope: !1854, inlinedAt: !1859)
!1894 = !DILocation(line: 0, scope: !1870, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 1102, scope: !1854, inlinedAt: !1859)
!1896 = !DILocation(line: 74, scope: !1870, inlinedAt: !1895)
!1897 = !DILocation(line: 1103, scope: !1854, inlinedAt: !1859)
!1898 = !DILocation(line: 1147, scope: !1845)
!1899 = distinct !DISubprogram(name: "halide_cond_signal", scope: !6, file: !6, line: 1149, type: !1846, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1900)
!1900 = !{!1901, !1902}
!1901 = !DILocalVariable(name: "cond", arg: 1, scope: !1899, file: !6, line: 1149, type: !1848)
!1902 = !DILocalVariable(name: "fast_cond", scope: !1899, file: !6, line: 1150, type: !350)
!1903 = !DILocation(line: 0, scope: !1899)
!1904 = !DILocalVariable(name: "this", arg: 1, scope: !1905, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1905 = distinct !DISubprogram(name: "signal", linkageName: "?signal@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXXZ", scope: !351, file: !6, line: 1078, type: !355, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !358, retainedNodes: !1906)
!1906 = !{!1904, !1907, !1908}
!1907 = !DILocalVariable(name: "val", scope: !1905, file: !6, line: 1081, type: !22)
!1908 = !DILocalVariable(name: "control", scope: !1905, file: !6, line: 1087, type: !306)
!1909 = !DILocation(line: 0, scope: !1905, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 1152, scope: !1899)
!1911 = !DILocation(line: 1079, scope: !1905, inlinedAt: !1910)
!1912 = !DILocation(line: 0, scope: !1862, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 1079, scope: !1905, inlinedAt: !1910)
!1914 = !DILocation(line: 71, scope: !1862, inlinedAt: !1913)
!1915 = !DILocation(line: 1082, scope: !1905, inlinedAt: !1910)
!1916 = !DILocation(line: 1083, scope: !1905, inlinedAt: !1910)
!1917 = !DILocation(line: 0, scope: !1870, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 1084, scope: !1919, inlinedAt: !1910)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !6, line: 1083)
!1920 = distinct !DILexicalBlock(scope: !1905, file: !6, line: 1083)
!1921 = !DILocation(line: 74, scope: !1870, inlinedAt: !1918)
!1922 = !DILocation(line: 1085, scope: !1919, inlinedAt: !1910)
!1923 = !DILocation(line: 1087, scope: !1905, inlinedAt: !1910)
!1924 = !DILocalVariable(name: "mutex", arg: 3, scope: !1925, file: !6, line: 962, type: !311)
!1925 = distinct !DISubprogram(name: "signal_parking_control", linkageName: "??0signal_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAIPAVfast_mutex@1234@@Z", scope: !306, file: !6, line: 962, type: !327, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !326, retainedNodes: !1926)
!1926 = !{!1924, !1927, !1928}
!1927 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1925, file: !6, line: 962, type: !300)
!1928 = !DILocalVariable(name: "this", arg: 1, scope: !1925, type: !305, flags: DIFlagArtificial | DIFlagObjectPointer)
!1929 = !DILocation(line: 0, scope: !1925, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 1087, scope: !1905, inlinedAt: !1910)
!1931 = !DILocation(line: 0, scope: !1692, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 963, scope: !1925, inlinedAt: !1930)
!1933 = !DILocation(line: 600, scope: !1692, inlinedAt: !1932)
!1934 = !DILocation(line: 963, scope: !1925, inlinedAt: !1930)
!1935 = !{!1545, !402, i64 20}
!1936 = !DILocation(line: 964, scope: !1937, inlinedAt: !1930)
!1937 = distinct !DILexicalBlock(scope: !1925, file: !6, line: 963)
!1938 = !DILocation(line: 1088, scope: !1905, inlinedAt: !1910)
!1939 = !DILocation(line: 0, scope: !1870, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 1089, scope: !1905, inlinedAt: !1910)
!1941 = !DILocation(line: 74, scope: !1870, inlinedAt: !1940)
!1942 = !DILocation(line: 1090, scope: !1905, inlinedAt: !1910)
!1943 = !DILocation(line: 1153, scope: !1899)
!1944 = distinct !DISubprogram(name: "halide_cond_wait", scope: !6, file: !6, line: 1155, type: !1945, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1848, !367}
!1947 = !{!1948, !1949, !1950, !1951}
!1948 = !DILocalVariable(name: "mutex", arg: 2, scope: !1944, file: !6, line: 1155, type: !367)
!1949 = !DILocalVariable(name: "cond", arg: 1, scope: !1944, file: !6, line: 1155, type: !1848)
!1950 = !DILocalVariable(name: "fast_cond", scope: !1944, file: !6, line: 1156, type: !350)
!1951 = !DILocalVariable(name: "fast_mutex", scope: !1944, file: !6, line: 1158, type: !311)
!1952 = !DILocation(line: 0, scope: !1944)
!1953 = !DILocalVariable(name: "mutex", arg: 2, scope: !1954, file: !6, line: 1105, type: !311)
!1954 = distinct !DISubprogram(name: "wait", linkageName: "?wait@fast_cond@Synchronization@Internal@Runtime@Halide@@QAEXPAVfast_mutex@2345@@Z", scope: !351, file: !6, line: 1105, type: !361, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !360, retainedNodes: !1955)
!1955 = !{!1953, !1956, !1957, !1958, !1959}
!1956 = !DILocalVariable(name: "this", arg: 1, scope: !1954, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!1957 = !DILocalVariable(name: "control", scope: !1954, file: !6, line: 1106, type: !341)
!1958 = !DILocalVariable(name: "result", scope: !1954, file: !6, line: 1107, type: !22)
!1959 = !DILocalVariable(name: "val", scope: !1960, file: !6, line: 1114, type: !22)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !6, line: 1110)
!1961 = distinct !DILexicalBlock(scope: !1954, file: !6, line: 1108)
!1962 = !DILocation(line: 0, scope: !1954, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 1160, scope: !1944)
!1964 = !DILocation(line: 1106, scope: !1954, inlinedAt: !1963)
!1965 = !DILocalVariable(name: "mutex", arg: 3, scope: !1966, file: !6, line: 1030, type: !311)
!1966 = distinct !DISubprogram(name: "wait_parking_control", linkageName: "??0wait_parking_control@Synchronization@Internal@Runtime@Halide@@QAE@PAIPAVfast_mutex@1234@@Z", scope: !341, file: !6, line: 1030, type: !347, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !346, retainedNodes: !1967)
!1967 = !{!1965, !1968, !1969}
!1968 = !DILocalVariable(name: "cond_state", arg: 2, scope: !1966, file: !6, line: 1030, type: !300)
!1969 = !DILocalVariable(name: "this", arg: 1, scope: !1966, type: !340, flags: DIFlagArtificial | DIFlagObjectPointer)
!1970 = !DILocation(line: 0, scope: !1966, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 1106, scope: !1954, inlinedAt: !1963)
!1972 = !DILocation(line: 0, scope: !1692, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 1031, scope: !1966, inlinedAt: !1971)
!1974 = !DILocation(line: 600, scope: !1692, inlinedAt: !1973)
!1975 = !DILocation(line: 1031, scope: !1966, inlinedAt: !1971)
!1976 = !DILocation(line: 1032, scope: !1977, inlinedAt: !1971)
!1977 = distinct !DILexicalBlock(scope: !1966, file: !6, line: 1031)
!1978 = !DILocation(line: 1033, scope: !1977, inlinedAt: !1971)
!1979 = !DILocation(line: 1034, scope: !1977, inlinedAt: !1971)
!1980 = !DILocation(line: 1107, scope: !1954, inlinedAt: !1963)
!1981 = !DILocation(line: 1108, scope: !1954, inlinedAt: !1963)
!1982 = !DILocation(line: 0, scope: !1731, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 1109, scope: !1984, inlinedAt: !1963)
!1984 = distinct !DILexicalBlock(scope: !1961, file: !6, line: 1108)
!1985 = !DILocation(line: 924, scope: !1731, inlinedAt: !1983)
!1986 = !DILocation(line: 0, scope: !478, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 924, scope: !1731, inlinedAt: !1983)
!1988 = !DILocation(line: 0, scope: !488, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !1987)
!1990 = !DILocation(line: 104, scope: !488, inlinedAt: !1989)
!1991 = !DILocation(line: 106, scope: !488, inlinedAt: !1989)
!1992 = !DILocation(line: 0, scope: !1745, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 925, scope: !1760, inlinedAt: !1983)
!1994 = !DILocation(line: 866, scope: !1745, inlinedAt: !1993)
!1995 = !DILocation(line: 868, scope: !1745, inlinedAt: !1993)
!1996 = !DILocation(line: 869, scope: !1752, inlinedAt: !1993)
!1997 = !DILocation(line: 870, scope: !1750, inlinedAt: !1993)
!1998 = !DILocation(line: 0, scope: !1750, inlinedAt: !1993)
!1999 = !DILocation(line: 0, scope: !478, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 871, scope: !1750, inlinedAt: !1993)
!2001 = !DILocation(line: 0, scope: !488, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 127, scope: !478, inlinedAt: !2000)
!2003 = !DILocation(line: 104, scope: !488, inlinedAt: !2002)
!2004 = !DILocation(line: 106, scope: !488, inlinedAt: !2002)
!2005 = !DILocation(line: 0, scope: !505, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 880, scope: !1752, inlinedAt: !1993)
!2007 = !DILocation(line: 238, scope: !505, inlinedAt: !2006)
!2008 = !DILocation(line: 241, scope: !505, inlinedAt: !2006)
!2009 = !DILocation(line: 880, scope: !1752, inlinedAt: !1993)
!2010 = !DILocation(line: 239, scope: !512, inlinedAt: !2006)
!2011 = !DILocation(line: 881, scope: !1780, inlinedAt: !1993)
!2012 = !DILocation(line: 882, scope: !1780, inlinedAt: !1993)
!2013 = !DILocation(line: 883, scope: !1780, inlinedAt: !1993)
!2014 = !DILocation(line: 887, scope: !1752, inlinedAt: !1993)
!2015 = !DILocation(line: 888, scope: !1754, inlinedAt: !1993)
!2016 = !DILocation(line: 0, scope: !1754, inlinedAt: !1993)
!2017 = !DILocation(line: 0, scope: !1580, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 889, scope: !1754, inlinedAt: !1993)
!2019 = !DILocation(line: 0, scope: !488, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 123, scope: !1580, inlinedAt: !2018)
!2021 = !DILocation(line: 104, scope: !488, inlinedAt: !2020)
!2022 = !DILocation(line: 106, scope: !488, inlinedAt: !2020)
!2023 = !DILocation(line: 895, scope: !1752, inlinedAt: !1993)
!2024 = !DILocation(line: 0, scope: !1686, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 895, scope: !1752, inlinedAt: !1993)
!2026 = !DILocation(line: 0, scope: !1692, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 833, scope: !1686, inlinedAt: !2025)
!2028 = !DILocation(line: 600, scope: !1692, inlinedAt: !2027)
!2029 = !DILocation(line: 833, scope: !1686, inlinedAt: !2025)
!2030 = !DILocation(line: 834, scope: !1700, inlinedAt: !2025)
!2031 = !DILocation(line: 835, scope: !1700, inlinedAt: !2025)
!2032 = !DILocation(line: 896, scope: !1752, inlinedAt: !1993)
!2033 = !DILocation(line: 0, scope: !1752, inlinedAt: !1993)
!2034 = !DILocation(line: 897, scope: !1752, inlinedAt: !1993)
!2035 = !DILocation(line: 902, scope: !1752, inlinedAt: !1993)
!2036 = !DILocation(line: 903, scope: !1752, inlinedAt: !1993)
!2037 = distinct !{!2037, !1995, !2038}
!2038 = !DILocation(line: 903, scope: !1745, inlinedAt: !1993)
!2039 = !DILocation(line: 1111, scope: !1960, inlinedAt: !1963)
!2040 = !DILocation(line: 0, scope: !768, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 1111, scope: !1960, inlinedAt: !1963)
!2042 = !DILocation(line: 57, scope: !768, inlinedAt: !2041)
!2043 = !DILocation(line: 1115, scope: !1960, inlinedAt: !1963)
!2044 = !DILocation(line: 0, scope: !1960, inlinedAt: !1963)
!2045 = !DILocation(line: 1116, scope: !2046, inlinedAt: !1963)
!2046 = distinct !DILexicalBlock(scope: !1960, file: !6, line: 1116)
!2047 = !DILocation(line: 1116, scope: !2048, inlinedAt: !1963)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !6, line: 1116)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !6, line: 1116)
!2050 = !DILocation(line: 0, scope: !786, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 1118, scope: !1960, inlinedAt: !1963)
!2052 = !DILocation(line: 61, scope: !786, inlinedAt: !2051)
!2053 = !DILocation(line: 1119, scope: !1960, inlinedAt: !1963)
!2054 = !DILocation(line: 1120, scope: !1954, inlinedAt: !1963)
!2055 = !DILocation(line: 1161, scope: !1944)
!2056 = distinct !DISubprogram(name: "halide_mutex_array_create", scope: !6, file: !6, line: 1168, type: !2057, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!363, !29}
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "sz", arg: 1, scope: !2056, file: !6, line: 1168, type: !29)
!2061 = !DILocalVariable(name: "array", scope: !2056, file: !6, line: 1171, type: !363)
!2062 = !DILocation(line: 0, scope: !2056)
!2063 = !DILocation(line: 1171, scope: !2056)
!2064 = !DILocation(line: 1173, scope: !2056)
!2065 = !DILocation(line: 1177, scope: !2056)
!2066 = !{!2067, !402, i64 0}
!2067 = !{!"?AUhalide_mutex_array@@", !402, i64 0}
!2068 = !DILocation(line: 1179, scope: !2056)
!2069 = !DILocation(line: 1180, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !6, line: 1179)
!2071 = distinct !DILexicalBlock(scope: !2056, file: !6, line: 1179)
!2072 = !DILocation(line: 1182, scope: !2070)
!2073 = !DILocation(line: 1184, scope: !2056)
!2074 = !DILocation(line: 1185, scope: !2056)
!2075 = !DILocation(line: 1186, scope: !2056)
!2076 = distinct !DISubprogram(name: "halide_mutex_array_destroy", scope: !6, file: !6, line: 1188, type: !2077, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !43, !43}
!2079 = !{!2080, !2081, !2082}
!2080 = !DILocalVariable(name: "array", arg: 2, scope: !2076, file: !6, line: 1188, type: !43)
!2081 = !DILocalVariable(name: "user_context", arg: 1, scope: !2076, file: !6, line: 1188, type: !43)
!2082 = !DILocalVariable(name: "arr_ptr", scope: !2076, file: !6, line: 1189, type: !363)
!2083 = !DILocation(line: 0, scope: !2076)
!2084 = !DILocation(line: 1190, scope: !2076)
!2085 = !DILocation(line: 1191, scope: !2076)
!2086 = !DILocation(line: 1192, scope: !2076)
!2087 = distinct !DISubprogram(name: "halide_mutex_array_lock", scope: !6, file: !6, line: 1194, type: !2088, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!29, !363, !29}
!2090 = !{!2091, !2092}
!2091 = !DILocalVariable(name: "entry", arg: 2, scope: !2087, file: !6, line: 1194, type: !29)
!2092 = !DILocalVariable(name: "array", arg: 1, scope: !2087, file: !6, line: 1194, type: !363)
!2093 = !DILocation(line: 0, scope: !2087)
!2094 = !DILocation(line: 1195, scope: !2087)
!2095 = !DILocation(line: 1196, scope: !2087)
!2096 = distinct !DISubprogram(name: "halide_mutex_array_unlock", scope: !6, file: !6, line: 1199, type: !2088, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2097)
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "entry", arg: 2, scope: !2096, file: !6, line: 1199, type: !29)
!2099 = !DILocalVariable(name: "array", arg: 1, scope: !2096, file: !6, line: 1199, type: !363)
!2100 = !DILocation(line: 0, scope: !2096)
!2101 = !DILocation(line: 1200, scope: !2096)
!2102 = !DILocation(line: 1201, scope: !2096)
!2103 = distinct !DISubprogram(name: "clamp_num_threads", linkageName: "?clamp_num_threads@Internal@Runtime@Halide@@YAHH@Z", scope: !3, file: !13, line: 69, type: !2104, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!29, !29}
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "threads", arg: 1, scope: !2103, file: !13, line: 69, type: !29)
!2108 = !DILocation(line: 0, scope: !2103)
!2109 = !DILocation(line: 70, scope: !2103)
!2110 = !DILocation(line: 72, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2103, file: !13, line: 70)
!2112 = !DILocation(line: 75, scope: !2103)
!2113 = distinct !DISubprogram(name: "default_desired_num_threads", linkageName: "?default_desired_num_threads@Internal@Runtime@Halide@@YAHXZ", scope: !3, file: !13, line: 78, type: !408, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2114)
!2114 = !{!2115, !2116}
!2115 = !DILocalVariable(name: "desired_num_threads", scope: !2113, file: !13, line: 79, type: !29)
!2116 = !DILocalVariable(name: "threads_str", scope: !2113, file: !13, line: 80, type: !372)
!2117 = !DILocation(line: 0, scope: !2113)
!2118 = !DILocation(line: 80, scope: !2113)
!2119 = !DILocation(line: 81, scope: !2113)
!2120 = !DILocation(line: 83, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !13, line: 81)
!2122 = distinct !DILexicalBlock(scope: !2113, file: !13, line: 81)
!2123 = !DILocation(line: 85, scope: !2113)
!2124 = !DILocation(line: 86, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !13, line: 85)
!2126 = distinct !DILexicalBlock(scope: !2113, file: !13, line: 85)
!2127 = !DILocation(line: 87, scope: !2125)
!2128 = !DILocation(line: 88, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !13, line: 87)
!2130 = !DILocation(line: 89, scope: !2129)
!2131 = !DILocation(line: 0, scope: !2126)
!2132 = !DILocation(line: 90, scope: !2113)
!2133 = distinct !DISubprogram(name: "worker_thread_already_locked", linkageName: "?worker_thread_already_locked@Internal@Runtime@Halide@@YAXPAUwork@123@@Z", scope: !3, file: !13, line: 197, type: !2134, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !32}
!2136 = !{!2137, !2138, !2139, !2141, !2143, !2145, !2147, !2148, !2149, !2150, !2151, !2152, !2155, !2156, !2158, !2159}
!2137 = !DILocalVariable(name: "owned_job", arg: 1, scope: !2133, file: !13, line: 197, type: !32)
!2138 = !DILocalVariable(name: "spin_count", scope: !2133, file: !13, line: 198, type: !29)
!2139 = !DILocalVariable(name: "max_spin_count", scope: !2133, file: !13, line: 199, type: !2140)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!2141 = !DILocalVariable(name: "job", scope: !2142, file: !13, line: 202, type: !32)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !13, line: 201)
!2143 = !DILocalVariable(name: "prev_ptr", scope: !2142, file: !13, line: 203, type: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!2145 = !DILocalVariable(name: "enough_threads", scope: !2146, file: !13, line: 235, type: !64)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 229)
!2147 = !DILocalVariable(name: "parent_job", scope: !2146, file: !13, line: 237, type: !32)
!2148 = !DILocalVariable(name: "threads_available", scope: !2146, file: !13, line: 239, type: !29)
!2149 = !DILocalVariable(name: "can_use_this_thread_stack", scope: !2146, file: !13, line: 256, type: !64)
!2150 = !DILocalVariable(name: "can_add_worker", scope: !2146, file: !13, line: 260, type: !64)
!2151 = !DILocalVariable(name: "result", scope: !2142, file: !13, line: 328, type: !29)
!2152 = !DILocalVariable(name: "total_iters", scope: !2153, file: !13, line: 336, type: !29)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !13, line: 330)
!2154 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 330)
!2155 = !DILocalVariable(name: "iters", scope: !2153, file: !13, line: 337, type: !29)
!2156 = !DILocalVariable(name: "myjob", scope: !2157, file: !13, line: 369, type: !33)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !13, line: 367)
!2158 = !DILocalVariable(name: "wake_owners", scope: !2142, file: !13, line: 396, type: !64)
!2159 = !DILocalVariable(name: "i", scope: !2160, file: !13, line: 402, type: !29)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !13, line: 402)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !13, line: 399)
!2162 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 399)
!2163 = !DILocation(line: 0, scope: !2133)
!2164 = !DILocation(line: 63, scope: !2165, inlinedAt: !2169)
!2165 = distinct !DISubprogram(name: "running", linkageName: "?running@work@Internal@Runtime@Halide@@QBE_NXZ", scope: !33, file: !13, line: 62, type: !85, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !84, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "this", arg: 1, scope: !2165, type: !2168, flags: DIFlagArtificial | DIFlagObjectPointer)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!2169 = distinct !DILocation(line: 201, scope: !2133)
!2170 = !DILocation(line: 201, scope: !2133)
!2171 = !DILocation(line: 198, scope: !2133)
!2172 = !DILocation(line: 0, scope: !2165, inlinedAt: !2169)
!2173 = !{!2174, !472, i64 24}
!2174 = !{!"?AUwork@Internal@Runtime@Halide@@", !2175, i64 0, !402, i64 36, !402, i64 40, !402, i64 44, !472, i64 48, !402, i64 52, !472, i64 56, !402, i64 60, !472, i64 64, !472, i64 68, !472, i64 72, !536, i64 76}
!2175 = !{!"?AUhalide_parallel_task_t@@", !402, i64 0, !402, i64 4, !402, i64 8, !402, i64 12, !472, i64 16, !472, i64 20, !472, i64 24, !472, i64 28, !536, i64 32}
!2176 = !{!2177, !536, i64 1072}
!2177 = !{!"?AUwork_queue_t@Internal@Runtime@Halide@@", !2178, i64 0, !472, i64 4, !472, i64 8, !402, i64 12, !472, i64 16, !472, i64 20, !472, i64 24, !2179, i64 28, !2179, i64 32, !2179, i64 36, !472, i64 40, !472, i64 44, !403, i64 48, !536, i64 1072, !536, i64 1073, !472, i64 1076}
!2178 = !{!"?AUhalide_mutex@@", !403, i64 0}
!2179 = !{!"?AUhalide_cond@@", !403, i64 0}
!2180 = !{!2174, !472, i64 64}
!2181 = !DILocation(line: 202, scope: !2142)
!2182 = !{!2177, !402, i64 12}
!2183 = !DILocation(line: 0, scope: !2142)
!2184 = !DILocation(line: 206, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !13, line: 205)
!2186 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 205)
!2187 = !{!2174, !472, i64 68}
!2188 = !DILocation(line: 207, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !13, line: 206)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !13, line: 206)
!2191 = !DILocation(line: 208, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !13, line: 207)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !13, line: 207)
!2194 = !DILocation(line: 209, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !13, line: 208)
!2196 = !DILocation(line: 210, scope: !2195)
!2197 = !{!2174, !402, i64 40}
!2198 = distinct !{!2198, !2191, !2199, !588}
!2199 = !DILocation(line: 211, scope: !2192)
!2200 = !DILocation(line: 212, scope: !2192)
!2201 = !DILocation(line: 213, scope: !2192)
!2202 = !DILocation(line: 214, scope: !2192)
!2203 = !DILocation(line: 216, scope: !2190)
!2204 = !{!2174, !402, i64 52}
!2205 = !DILocation(line: 217, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !13, line: 216)
!2207 = distinct !DILexicalBlock(scope: !2190, file: !13, line: 216)
!2208 = !DILocation(line: 221, scope: !2206)
!2209 = !DILocation(line: 222, scope: !2206)
!2210 = !DILocation(line: 229, scope: !2142)
!2211 = !DILocation(line: 240, scope: !2146)
!2212 = !DILocation(line: 237, scope: !2146)
!2213 = !DILocation(line: 0, scope: !2146)
!2214 = !DILocation(line: 244, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !13, line: 243)
!2216 = distinct !DILexicalBlock(scope: !2146, file: !13, line: 240)
!2217 = !DILocation(line: 0, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !13, line: 244)
!2219 = !{!2174, !472, i64 28}
!2220 = !DILocation(line: 247, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !13, line: 246)
!2222 = !DILocation(line: 248, scope: !2221)
!2223 = !DILocation(line: 245, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !13, line: 244)
!2225 = !DILocation(line: 246, scope: !2224)
!2226 = !DILocation(line: 242, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !13, line: 240)
!2228 = !{!2177, !472, i64 16}
!2229 = !DILocation(line: 243, scope: !2227)
!2230 = !DILocation(line: 0, scope: !2216)
!2231 = !DILocation(line: 250, scope: !2146)
!2232 = !DILocation(line: 260, scope: !2146)
!2233 = !{!2174, !536, i64 32}
!2234 = !DILocation(line: 265, scope: !2146)
!2235 = !DILocalVariable(name: "this", arg: 1, scope: !2236, type: !32, flags: DIFlagArtificial | DIFlagObjectPointer)
!2236 = distinct !DISubprogram(name: "make_runnable", linkageName: "?make_runnable@work@Internal@Runtime@Halide@@QAE_NXZ", scope: !33, file: !13, line: 46, type: !81, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !80, retainedNodes: !2237)
!2237 = !{!2235}
!2238 = !DILocation(line: 0, scope: !2236, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 266, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !13, line: 265)
!2241 = distinct !DILexicalBlock(scope: !2146, file: !13, line: 265)
!2242 = !DILocation(line: 47, scope: !2243, inlinedAt: !2239)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !13, line: 47)
!2244 = !{!2174, !472, i64 72}
!2245 = !{!2174, !472, i64 16}
!2246 = !DILocation(line: 48, scope: !2247, inlinedAt: !2239)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !13, line: 47)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !13, line: 47)
!2249 = !{!2174, !402, i64 12}
!2250 = !{!2251, !472, i64 4}
!2251 = !{!"?AUhalide_semaphore_acquire_t@@", !402, i64 0, !472, i64 4}
!2252 = !{!2251, !402, i64 0}
!2253 = !DILocation(line: 47, scope: !2248, inlinedAt: !2239)
!2254 = distinct !{!2254, !2242, !2255, !588}
!2255 = !DILocation(line: 56, scope: !2243, inlinedAt: !2239)
!2256 = !DILocation(line: 272, scope: !2146)
!2257 = !DILocation(line: 273, scope: !2146)
!2258 = !DILocation(line: 256, scope: !2146)
!2259 = !{!2174, !402, i64 44}
!2260 = !DILocation(line: 278, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !13, line: 276)
!2262 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 276)
!2263 = !DILocation(line: 279, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !13, line: 278)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !13, line: 278)
!2266 = !DILocation(line: 281, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !13, line: 279)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !13, line: 279)
!2269 = !DILocation(line: 282, scope: !2267)
!2270 = !DILocation(line: 283, scope: !2267)
!2271 = !DILocation(line: 284, scope: !2267)
!2272 = !DILocation(line: 285, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !13, line: 284)
!2274 = !{!2177, !472, i64 44}
!2275 = !DILocation(line: 286, scope: !2273)
!2276 = !{!2174, !536, i64 76}
!2277 = !DILocation(line: 287, scope: !2273)
!2278 = !DILocation(line: 288, scope: !2273)
!2279 = !DILocation(line: 289, scope: !2273)
!2280 = !DILocation(line: 290, scope: !2273)
!2281 = !DILocation(line: 292, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2265, file: !13, line: 291)
!2283 = !{!2177, !472, i64 40}
!2284 = !DILocation(line: 293, scope: !2282)
!2285 = !{!2177, !472, i64 20}
!2286 = !{!2177, !472, i64 24}
!2287 = !DILocation(line: 295, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !13, line: 293)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !13, line: 293)
!2290 = !DILocation(line: 296, scope: !2288)
!2291 = !DILocation(line: 297, scope: !2288)
!2292 = !DILocation(line: 298, scope: !2288)
!2293 = !DILocation(line: 298, scope: !2289)
!2294 = !DILocation(line: 300, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !13, line: 298)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !13, line: 298)
!2297 = !DILocation(line: 301, scope: !2295)
!2298 = !DILocation(line: 302, scope: !2295)
!2299 = !DILocation(line: 303, scope: !2295)
!2300 = !DILocation(line: 304, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !13, line: 303)
!2302 = !DILocation(line: 305, scope: !2301)
!2303 = !DILocation(line: 306, scope: !2282)
!2304 = !DILocation(line: 307, scope: !2282)
!2305 = !DILocation(line: 58, scope: !2236, inlinedAt: !2239)
!2306 = !DILocation(line: 318, scope: !2142)
!2307 = !DILocation(line: 320, scope: !2142)
!2308 = !DILocation(line: 0, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 320)
!2310 = !DILocation(line: 330, scope: !2142)
!2311 = !DILocation(line: 332, scope: !2153)
!2312 = !DILocation(line: 335, scope: !2153)
!2313 = !DILocation(line: 0, scope: !2153)
!2314 = !DILocation(line: 338, scope: !2153)
!2315 = !DILocation(line: 340, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2153, file: !13, line: 338)
!2317 = !DILocation(line: 47, scope: !2243, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 340, scope: !2316)
!2319 = !DILocation(line: 0, scope: !2236, inlinedAt: !2318)
!2320 = !DILocation(line: 48, scope: !2247, inlinedAt: !2318)
!2321 = !DILocation(line: 47, scope: !2248, inlinedAt: !2318)
!2322 = distinct !{!2322, !2317, !2323, !588}
!2323 = !DILocation(line: 56, scope: !2243, inlinedAt: !2318)
!2324 = !DILocation(line: 58, scope: !2236, inlinedAt: !2318)
!2325 = !DILocation(line: 342, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2316, file: !13, line: 341)
!2327 = distinct !{!2327, !2315, !2328, !588}
!2328 = !DILocation(line: 343, scope: !2316)
!2329 = !DILocation(line: 344, scope: !2316)
!2330 = !DILocation(line: 349, scope: !2316)
!2331 = !{!2174, !402, i64 4}
!2332 = !{!2174, !472, i64 20}
!2333 = !{!2174, !402, i64 0}
!2334 = !{!2174, !402, i64 60}
!2335 = !DILocation(line: 352, scope: !2316)
!2336 = distinct !{!2336, !2314, !2337, !588}
!2337 = !DILocation(line: 354, scope: !2153)
!2338 = !DILocation(line: 355, scope: !2153)
!2339 = !DILocation(line: 357, scope: !2153)
!2340 = !DILocation(line: 358, scope: !2153)
!2341 = !DILocation(line: 361, scope: !2153)
!2342 = !DILocation(line: 362, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !13, line: 361)
!2344 = distinct !DILexicalBlock(scope: !2153, file: !13, line: 361)
!2345 = !DILocation(line: 399, scope: !2142)
!2346 = !DILocation(line: 363, scope: !2344)
!2347 = !DILocation(line: 364, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !13, line: 363)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !13, line: 363)
!2350 = !DILocation(line: 365, scope: !2348)
!2351 = !DILocation(line: 366, scope: !2348)
!2352 = !DILocation(line: 369, scope: !2157)
!2353 = !{i64 0, i64 4, !922, i64 4, i64 4, !922, i64 8, i64 4, !922, i64 12, i64 4, !922, i64 16, i64 4, !471, i64 20, i64 4, !471, i64 24, i64 4, !471, i64 28, i64 4, !471, i64 32, i64 1, !2354, i64 36, i64 4, !922, i64 40, i64 4, !922, i64 44, i64 4, !922, i64 48, i64 4, !471, i64 52, i64 4, !922, i64 56, i64 4, !471, i64 60, i64 4, !922, i64 64, i64 4, !471, i64 68, i64 4, !471, i64 72, i64 4, !471, i64 76, i64 1, !2354}
!2354 = !{!536, !536, i64 0}
!2355 = !DILocation(line: 0, scope: !2157)
!2356 = !{i64 0, i64 4, !922, i64 4, i64 4, !922, i64 8, i64 4, !922, i64 12, i64 4, !471, i64 16, i64 4, !471, i64 20, i64 4, !471, i64 24, i64 4, !471, i64 28, i64 1, !2354, i64 32, i64 4, !922, i64 36, i64 4, !922, i64 40, i64 4, !922, i64 44, i64 4, !471, i64 48, i64 4, !922, i64 52, i64 4, !471, i64 56, i64 4, !922, i64 60, i64 4, !471, i64 64, i64 4, !471, i64 68, i64 4, !471, i64 72, i64 1, !2354}
!2357 = !{i64 0, i64 4, !922, i64 4, i64 4, !922, i64 8, i64 4, !922, i64 12, i64 4, !471, i64 16, i64 4, !922, i64 20, i64 4, !471, i64 24, i64 4, !922, i64 28, i64 4, !471, i64 32, i64 4, !471, i64 36, i64 4, !471, i64 40, i64 1, !2354}
!2358 = !{i64 0, i64 4, !922, i64 4, i64 4, !471, i64 8, i64 4, !471, i64 12, i64 4, !471, i64 16, i64 1, !2354}
!2359 = !DILocation(line: 370, scope: !2157)
!2360 = !DILocation(line: 371, scope: !2157)
!2361 = !DILocation(line: 375, scope: !2157)
!2362 = !DILocation(line: 376, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !13, line: 375)
!2364 = distinct !DILexicalBlock(scope: !2157, file: !13, line: 375)
!2365 = !DILocation(line: 377, scope: !2363)
!2366 = !DILocation(line: 380, scope: !2157)
!2367 = !DILocation(line: 381, scope: !2157)
!2368 = !DILocation(line: 382, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !13, line: 381)
!2370 = distinct !DILexicalBlock(scope: !2157, file: !13, line: 381)
!2371 = !DILocation(line: 384, scope: !2369)
!2372 = !DILocation(line: 385, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !13, line: 384)
!2374 = !DILocation(line: 388, scope: !2373)
!2375 = !DILocation(line: 0, scope: !2370)
!2376 = !DILocation(line: 389, scope: !2157)
!2377 = !DILocation(line: 400, scope: !2161)
!2378 = !DILocation(line: 0, scope: !2160)
!2379 = !DILocation(line: 402, scope: !2160)
!2380 = !{!2174, !472, i64 48}
!2381 = !DILocation(line: 404, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !13, line: 402)
!2383 = distinct !DILexicalBlock(scope: !2160, file: !13, line: 402)
!2384 = !DILocation(line: 405, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !13, line: 404)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !13, line: 404)
!2387 = !DILocation(line: 406, scope: !2385)
!2388 = !DILocation(line: 407, scope: !2385)
!2389 = !DILocation(line: 402, scope: !2383)
!2390 = distinct !{!2390, !2379, !2391, !588}
!2391 = !DILocation(line: 409, scope: !2160)
!2392 = !DILocation(line: 396, scope: !2142)
!2393 = !DILocation(line: 412, scope: !2142)
!2394 = !DILocation(line: 0, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 412)
!2396 = !DILocation(line: 421, scope: !2142)
!2397 = !DILocation(line: 425, scope: !2142)
!2398 = distinct !{!2398, !2170, !2399, !588}
!2399 = !DILocation(line: 430, scope: !2133)
!2400 = !DILocation(line: 428, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !13, line: 426)
!2402 = distinct !DILexicalBlock(scope: !2142, file: !13, line: 425)
!2403 = !DILocation(line: 429, scope: !2401)
!2404 = !DILocation(line: 431, scope: !2133)
!2405 = distinct !DISubprogram(name: "halide_do_loop_task", scope: !13, file: !13, line: 797, type: !131, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412}
!2407 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2405, file: !13, line: 798, type: !43)
!2408 = !DILocalVariable(name: "closure", arg: 5, scope: !2405, file: !13, line: 798, type: !44)
!2409 = !DILocalVariable(name: "size", arg: 4, scope: !2405, file: !13, line: 798, type: !29)
!2410 = !DILocalVariable(name: "min", arg: 3, scope: !2405, file: !13, line: 798, type: !29)
!2411 = !DILocalVariable(name: "f", arg: 2, scope: !2405, file: !13, line: 797, type: !39)
!2412 = !DILocalVariable(name: "user_context", arg: 1, scope: !2405, file: !13, line: 797, type: !43)
!2413 = !DILocation(line: 0, scope: !2405)
!2414 = !DILocation(line: 799, scope: !2405)
!2415 = distinct !DISubprogram(name: "halide_do_task", scope: !13, file: !13, line: 787, type: !125, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2416)
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DILocalVariable(name: "closure", arg: 4, scope: !2415, file: !13, line: 788, type: !44)
!2418 = !DILocalVariable(name: "idx", arg: 3, scope: !2415, file: !13, line: 787, type: !29)
!2419 = !DILocalVariable(name: "f", arg: 2, scope: !2415, file: !13, line: 787, type: !66)
!2420 = !DILocalVariable(name: "user_context", arg: 1, scope: !2415, file: !13, line: 787, type: !43)
!2421 = !DILocation(line: 0, scope: !2415)
!2422 = !DILocation(line: 789, scope: !2415)
!2423 = distinct !DISubprogram(name: "worker_thread", linkageName: "?worker_thread@Internal@Runtime@Halide@@YAXPAX@Z", scope: !3, file: !13, line: 433, type: !171, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2424)
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "arg", arg: 1, scope: !2423, file: !13, line: 433, type: !43)
!2426 = !DILocation(line: 0, scope: !2423)
!2427 = !DILocation(line: 434, scope: !2423)
!2428 = !DILocation(line: 435, scope: !2423)
!2429 = !DILocation(line: 436, scope: !2423)
!2430 = !DILocation(line: 437, scope: !2423)
!2431 = distinct !DISubprogram(name: "enqueue_work_already_locked", linkageName: "?enqueue_work_already_locked@Internal@Runtime@Halide@@YAXHPAUwork@123@0@Z", scope: !3, file: !13, line: 439, type: !2432, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !29, !32, !32}
!2434 = !{!2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445, !2447}
!2435 = !DILocalVariable(name: "task_parent", arg: 3, scope: !2431, file: !13, line: 439, type: !32)
!2436 = !DILocalVariable(name: "jobs", arg: 2, scope: !2431, file: !13, line: 439, type: !32)
!2437 = !DILocalVariable(name: "num_jobs", arg: 1, scope: !2431, file: !13, line: 439, type: !29)
!2438 = !DILocalVariable(name: "min_threads", scope: !2431, file: !13, line: 457, type: !29)
!2439 = !DILocalVariable(name: "workers_to_wake", scope: !2431, file: !13, line: 461, type: !29)
!2440 = !DILocalVariable(name: "stealable_jobs", scope: !2431, file: !13, line: 465, type: !64)
!2441 = !DILocalVariable(name: "job_has_acquires", scope: !2431, file: !13, line: 467, type: !64)
!2442 = !DILocalVariable(name: "job_may_block", scope: !2431, file: !13, line: 468, type: !64)
!2443 = !DILocalVariable(name: "i", scope: !2444, file: !13, line: 469, type: !29)
!2444 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 469)
!2445 = !DILocalVariable(name: "i", scope: !2446, file: !13, line: 527, type: !29)
!2446 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 527)
!2447 = !DILocalVariable(name: "nested_parallelism", scope: !2431, file: !13, line: 537, type: !64)
!2448 = !DILocation(line: 0, scope: !2431)
!2449 = !DILocation(line: 440, scope: !2431)
!2450 = !{!2177, !536, i64 1073}
!2451 = !DILocalVariable(name: "bytes", scope: !2452, file: !13, line: 148, type: !49)
!2452 = distinct !DISubprogram(name: "assert_zeroed", linkageName: "?assert_zeroed@work_queue_t@Internal@Runtime@Halide@@QBEXXZ", scope: !14, file: !13, line: 146, type: !115, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !114, retainedNodes: !2453)
!2453 = !{!2454, !2451, !2456}
!2454 = !DILocalVariable(name: "this", arg: 1, scope: !2452, type: !2455, flags: DIFlagArtificial | DIFlagObjectPointer)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!2456 = !DILocalVariable(name: "limit", scope: !2452, file: !13, line: 149, type: !49)
!2457 = !DILocation(line: 0, scope: !2452, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 441, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !13, line: 440)
!2460 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 440)
!2461 = !DILocation(line: 150, scope: !2452, inlinedAt: !2458)
!2462 = !{!403, !403, i64 0}
!2463 = !DILocation(line: 151, scope: !2464, inlinedAt: !2458)
!2464 = distinct !DILexicalBlock(scope: !2452, file: !13, line: 150)
!2465 = distinct !{!2465, !2461, !2466, !588}
!2466 = !DILocation(line: 152, scope: !2452, inlinedAt: !2458)
!2467 = !DILocation(line: 153, scope: !2468, inlinedAt: !2458)
!2468 = distinct !DILexicalBlock(scope: !2452, file: !13, line: 153)
!2469 = !DILocation(line: 153, scope: !2470, inlinedAt: !2458)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !13, line: 153)
!2471 = distinct !DILexicalBlock(scope: !2468, file: !13, line: 153)
!2472 = !DILocation(line: 446, scope: !2459)
!2473 = !{!2177, !472, i64 4}
!2474 = !DILocation(line: 447, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !13, line: 446)
!2476 = distinct !DILexicalBlock(scope: !2459, file: !13, line: 446)
!2477 = !DILocation(line: 448, scope: !2475)
!2478 = !DILocation(line: 449, scope: !2459)
!2479 = !DILocation(line: 450, scope: !2459)
!2480 = !DILocation(line: 451, scope: !2459)
!2481 = !DILocation(line: 0, scope: !2444)
!2482 = !DILocation(line: 469, scope: !2444)
!2483 = !DILocation(line: 487, scope: !2431)
!2484 = !DILocation(line: 468, scope: !2431)
!2485 = !DILocation(line: 457, scope: !2431)
!2486 = !DILocation(line: 470, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !13, line: 469)
!2488 = distinct !DILexicalBlock(scope: !2444, file: !13, line: 469)
!2489 = !DILocation(line: 476, scope: !2487)
!2490 = !DILocation(line: 480, scope: !2487)
!2491 = !DILocation(line: 481, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !13, line: 480)
!2493 = distinct !DILexicalBlock(scope: !2487, file: !13, line: 480)
!2494 = !DILocation(line: 482, scope: !2492)
!2495 = !DILocation(line: 483, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !13, line: 482)
!2497 = !DILocation(line: 484, scope: !2496)
!2498 = !DILocation(line: 0, scope: !2493)
!2499 = !DILocation(line: 469, scope: !2488)
!2500 = distinct !{!2500, !2482, !2501, !588}
!2501 = !DILocation(line: 485, scope: !2444)
!2502 = !DILocation(line: 497, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !13, line: 487)
!2504 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 487)
!2505 = !DILocation(line: 503, scope: !2503)
!2506 = !{!2177, !472, i64 1076}
!2507 = !DILocation(line: 508, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !13, line: 505)
!2509 = !DILocation(line: 509, scope: !2508)
!2510 = distinct !{!2510, !2505, !2511, !588}
!2511 = !DILocation(line: 511, scope: !2503)
!2512 = !DILocation(line: 513, scope: !2503)
!2513 = !DILocation(line: 514, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !13, line: 513)
!2515 = distinct !DILexicalBlock(scope: !2503, file: !13, line: 513)
!2516 = !DILocation(line: 515, scope: !2514)
!2517 = !DILocation(line: 518, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !13, line: 518)
!2519 = distinct !DILexicalBlock(scope: !2504, file: !13, line: 516)
!2520 = !{!2174, !472, i64 56}
!2521 = !DILocation(line: 518, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !13, line: 518)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !13, line: 518)
!2524 = !DILocation(line: 521, scope: !2519)
!2525 = !DILocation(line: 522, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !13, line: 521)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !13, line: 521)
!2528 = !DILocation(line: 523, scope: !2526)
!2529 = !DILocation(line: 0, scope: !2446)
!2530 = !DILocation(line: 527, scope: !2446)
!2531 = !DILocation(line: 0, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !13, line: 527)
!2533 = distinct !DILexicalBlock(scope: !2446, file: !13, line: 527)
!2534 = !DILocation(line: 537, scope: !2431)
!2535 = !DILocation(line: 542, scope: !2431)
!2536 = !DILocation(line: 0, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 542)
!2538 = !DILocation(line: 550, scope: !2431)
!2539 = !DILocation(line: 551, scope: !2431)
!2540 = !DILocation(line: 530, scope: !2532)
!2541 = !DILocation(line: 531, scope: !2532)
!2542 = !DILocation(line: 532, scope: !2532)
!2543 = !DILocation(line: 533, scope: !2532)
!2544 = distinct !{!2544, !2530, !2545, !588}
!2545 = !DILocation(line: 535, scope: !2446)
!2546 = !DILocation(line: 552, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !13, line: 551)
!2548 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 551)
!2549 = !DILocation(line: 553, scope: !2547)
!2550 = !DILocation(line: 554, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !13, line: 553)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !13, line: 553)
!2553 = !DILocation(line: 555, scope: !2551)
!2554 = !DILocation(line: 558, scope: !2431)
!2555 = !DILocation(line: 559, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !13, line: 558)
!2557 = distinct !DILexicalBlock(scope: !2431, file: !13, line: 558)
!2558 = !DILocation(line: 0, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !13, line: 559)
!2560 = !DILocation(line: 565, scope: !2431)
!2561 = distinct !DISubprogram(name: "halide_default_do_task", scope: !13, file: !13, line: 589, type: !125, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2562)
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DILocalVariable(name: "closure", arg: 4, scope: !2561, file: !13, line: 590, type: !44)
!2564 = !DILocalVariable(name: "idx", arg: 3, scope: !2561, file: !13, line: 589, type: !29)
!2565 = !DILocalVariable(name: "f", arg: 2, scope: !2561, file: !13, line: 589, type: !66)
!2566 = !DILocalVariable(name: "user_context", arg: 1, scope: !2561, file: !13, line: 589, type: !43)
!2567 = !DILocation(line: 0, scope: !2561)
!2568 = !DILocation(line: 591, scope: !2561)
!2569 = distinct !DISubprogram(name: "halide_default_do_loop_task", scope: !13, file: !13, line: 594, type: !131, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576}
!2571 = !DILocalVariable(name: "task_parent", arg: 6, scope: !2569, file: !13, line: 596, type: !43)
!2572 = !DILocalVariable(name: "closure", arg: 5, scope: !2569, file: !13, line: 595, type: !44)
!2573 = !DILocalVariable(name: "extent", arg: 4, scope: !2569, file: !13, line: 595, type: !29)
!2574 = !DILocalVariable(name: "min", arg: 3, scope: !2569, file: !13, line: 595, type: !29)
!2575 = !DILocalVariable(name: "f", arg: 2, scope: !2569, file: !13, line: 594, type: !39)
!2576 = !DILocalVariable(name: "user_context", arg: 1, scope: !2569, file: !13, line: 594, type: !43)
!2577 = !DILocation(line: 0, scope: !2569)
!2578 = !DILocation(line: 597, scope: !2569)
!2579 = distinct !DISubprogram(name: "halide_default_do_par_for", scope: !13, file: !13, line: 600, type: !137, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586}
!2581 = !DILocalVariable(name: "closure", arg: 5, scope: !2579, file: !13, line: 601, type: !44)
!2582 = !DILocalVariable(name: "size", arg: 4, scope: !2579, file: !13, line: 601, type: !29)
!2583 = !DILocalVariable(name: "min", arg: 3, scope: !2579, file: !13, line: 601, type: !29)
!2584 = !DILocalVariable(name: "f", arg: 2, scope: !2579, file: !13, line: 600, type: !66)
!2585 = !DILocalVariable(name: "user_context", arg: 1, scope: !2579, file: !13, line: 600, type: !43)
!2586 = !DILocalVariable(name: "job", scope: !2579, file: !13, line: 606, type: !33)
!2587 = !DILocation(line: 0, scope: !2579)
!2588 = !DILocation(line: 602, scope: !2579)
!2589 = !DILocation(line: 606, scope: !2579)
!2590 = !DILocation(line: 607, scope: !2579)
!2591 = !DILocation(line: 608, scope: !2579)
!2592 = !DILocation(line: 609, scope: !2579)
!2593 = !DILocation(line: 610, scope: !2579)
!2594 = !DILocation(line: 611, scope: !2579)
!2595 = !DILocation(line: 612, scope: !2579)
!2596 = !DILocation(line: 613, scope: !2579)
!2597 = !DILocation(line: 614, scope: !2579)
!2598 = !DILocation(line: 615, scope: !2579)
!2599 = !{!2174, !402, i64 8}
!2600 = !DILocation(line: 616, scope: !2579)
!2601 = !{!2174, !402, i64 36}
!2602 = !DILocation(line: 617, scope: !2579)
!2603 = !DILocation(line: 618, scope: !2579)
!2604 = !DILocation(line: 619, scope: !2579)
!2605 = !DILocation(line: 620, scope: !2579)
!2606 = !DILocation(line: 621, scope: !2579)
!2607 = !DILocation(line: 622, scope: !2579)
!2608 = !DILocation(line: 623, scope: !2579)
!2609 = !DILocation(line: 624, scope: !2579)
!2610 = !DILocation(line: 625, scope: !2579)
!2611 = !DILocation(line: 626, scope: !2579)
!2612 = !DILocation(line: 627, scope: !2579)
!2613 = !DILocation(line: 628, scope: !2579)
!2614 = !DILocation(line: 629, scope: !2579)
!2615 = !DILocation(line: 630, scope: !2579)
!2616 = distinct !DISubprogram(name: "halide_default_do_parallel_tasks", scope: !13, file: !13, line: 632, type: !143, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2625, !2626}
!2618 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2616, file: !13, line: 634, type: !43)
!2619 = !DILocalVariable(name: "tasks", arg: 3, scope: !2616, file: !13, line: 633, type: !145)
!2620 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2616, file: !13, line: 632, type: !29)
!2621 = !DILocalVariable(name: "user_context", arg: 1, scope: !2616, file: !13, line: 632, type: !43)
!2622 = !DILocalVariable(name: "jobs", scope: !2616, file: !13, line: 635, type: !32)
!2623 = !DILocalVariable(name: "i", scope: !2624, file: !13, line: 637, type: !29)
!2624 = distinct !DILexicalBlock(scope: !2616, file: !13, line: 637)
!2625 = !DILocalVariable(name: "exit_status", scope: !2616, file: !13, line: 659, type: !29)
!2626 = !DILocalVariable(name: "i", scope: !2627, file: !13, line: 660, type: !29)
!2627 = distinct !DILexicalBlock(scope: !2616, file: !13, line: 660)
!2628 = !DILocation(line: 0, scope: !2616)
!2629 = !DILocation(line: 635, scope: !2616)
!2630 = !DILocation(line: 0, scope: !2624)
!2631 = !DILocation(line: 637, scope: !2624)
!2632 = !DILocation(line: 653, scope: !2616)
!2633 = !DILocation(line: 638, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !13, line: 637)
!2635 = distinct !DILexicalBlock(scope: !2624, file: !13, line: 637)
!2636 = !{!2175, !472, i64 24}
!2637 = !DILocation(line: 640, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !13, line: 638)
!2639 = distinct !DILexicalBlock(scope: !2634, file: !13, line: 638)
!2640 = !DILocation(line: 641, scope: !2638)
!2641 = !DILocation(line: 643, scope: !2634)
!2642 = !{i64 0, i64 4, !922, i64 4, i64 4, !922, i64 8, i64 4, !922, i64 12, i64 4, !922, i64 16, i64 4, !471, i64 20, i64 4, !471, i64 24, i64 4, !471, i64 28, i64 4, !471, i64 32, i64 1, !2354}
!2643 = !DILocation(line: 644, scope: !2634)
!2644 = !DILocation(line: 645, scope: !2634)
!2645 = !DILocation(line: 646, scope: !2634)
!2646 = !DILocation(line: 647, scope: !2634)
!2647 = !DILocation(line: 648, scope: !2634)
!2648 = !DILocation(line: 649, scope: !2634)
!2649 = !DILocation(line: 650, scope: !2634)
!2650 = !DILocation(line: 651, scope: !2634)
!2651 = !DILocation(line: 637, scope: !2635)
!2652 = distinct !{!2652, !2631, !2653, !588}
!2653 = !DILocation(line: 651, scope: !2624)
!2654 = !DILocation(line: 657, scope: !2616)
!2655 = !DILocation(line: 658, scope: !2616)
!2656 = !DILocation(line: 0, scope: !2627)
!2657 = !DILocation(line: 660, scope: !2627)
!2658 = !DILocation(line: 668, scope: !2616)
!2659 = !DILocation(line: 663, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !13, line: 660)
!2661 = distinct !DILexicalBlock(scope: !2627, file: !13, line: 660)
!2662 = !DILocation(line: 664, scope: !2660)
!2663 = !DILocation(line: 660, scope: !2661)
!2664 = distinct !{!2664, !2657, !2665, !588}
!2665 = !DILocation(line: 667, scope: !2627)
!2666 = !DILocation(line: 670, scope: !2616)
!2667 = distinct !DISubprogram(name: "halide_default_semaphore_init", scope: !13, file: !13, line: 715, type: !150, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DILocalVariable(name: "n", arg: 2, scope: !2667, file: !13, line: 715, type: !29)
!2670 = !DILocalVariable(name: "s", arg: 1, scope: !2667, file: !13, line: 715, type: !56)
!2671 = !DILocalVariable(name: "sem", scope: !2667, file: !13, line: 716, type: !368)
!2672 = !DILocation(line: 0, scope: !2667)
!2673 = !DILocation(line: 717, scope: !2667)
!2674 = !DILocalVariable(name: "val", arg: 2, scope: !2675, file: !6, line: 154, type: !2678)
!2675 = distinct !DISubprogram(name: "atomic_store_release<int>", linkageName: "??$atomic_store_release@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAH0@Z", scope: !479, file: !6, line: 154, type: !2676, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2681, retainedNodes: !2679)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2678, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!2679 = !{!2674, !2680}
!2680 = !DILocalVariable(name: "addr", arg: 1, scope: !2675, file: !6, line: 154, type: !2678)
!2681 = !{!2682}
!2682 = !DITemplateTypeParameter(name: "T", type: !29)
!2683 = !DILocation(line: 0, scope: !2675, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 717, scope: !2667)
!2685 = !DILocation(line: 155, scope: !2675, inlinedAt: !2684)
!2686 = !DILocation(line: 156, scope: !2675, inlinedAt: !2684)
!2687 = !DILocation(line: 718, scope: !2667)
!2688 = distinct !DISubprogram(name: "halide_default_semaphore_try_acquire", scope: !13, file: !13, line: 735, type: !156, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2689)
!2689 = !{!2690, !2691, !2692, !2693, !2694}
!2690 = !DILocalVariable(name: "n", arg: 2, scope: !2688, file: !13, line: 735, type: !29)
!2691 = !DILocalVariable(name: "s", arg: 1, scope: !2688, file: !13, line: 735, type: !56)
!2692 = !DILocalVariable(name: "sem", scope: !2688, file: !13, line: 739, type: !368)
!2693 = !DILocalVariable(name: "expected", scope: !2688, file: !13, line: 741, type: !29)
!2694 = !DILocalVariable(name: "desired", scope: !2688, file: !13, line: 742, type: !29)
!2695 = !DILocation(line: 0, scope: !2688)
!2696 = !DILocation(line: 736, scope: !2688)
!2697 = !DILocation(line: 743, scope: !2688)
!2698 = !DILocalVariable(name: "val", arg: 2, scope: !2699, file: !6, line: 140, type: !2678)
!2699 = distinct !DISubprogram(name: "atomic_load_acquire<int>", linkageName: "??$atomic_load_acquire@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAXPAH0@Z", scope: !479, file: !6, line: 140, type: !2676, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2681, retainedNodes: !2700)
!2700 = !{!2698, !2701}
!2701 = !DILocalVariable(name: "addr", arg: 1, scope: !2699, file: !6, line: 140, type: !2678)
!2702 = !DILocation(line: 0, scope: !2699, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 743, scope: !2688)
!2704 = !DILocation(line: 141, scope: !2699, inlinedAt: !2703)
!2705 = !DILocation(line: 142, scope: !2699, inlinedAt: !2703)
!2706 = !DILocation(line: 744, scope: !2688)
!2707 = !DILocation(line: 745, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2688, file: !13, line: 744)
!2709 = !DILocation(line: 746, scope: !2708)
!2710 = !DILocalVariable(name: "desired", arg: 3, scope: !2711, file: !6, line: 118, type: !2678)
!2711 = distinct !DISubprogram(name: "atomic_cas_weak_relacq_relaxed<int>", linkageName: "??$atomic_cas_weak_relacq_relaxed@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAH00@Z", scope: !479, file: !6, line: 118, type: !2712, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2681, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!64, !2678, !2678, !2678}
!2714 = !{!2710, !2715, !2716}
!2715 = !DILocalVariable(name: "expected", arg: 2, scope: !2711, file: !6, line: 118, type: !2678)
!2716 = !DILocalVariable(name: "addr", arg: 1, scope: !2711, file: !6, line: 118, type: !2678)
!2717 = !DILocation(line: 0, scope: !2711, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 746, scope: !2708)
!2719 = !DILocalVariable(name: "desired", arg: 3, scope: !2720, file: !6, line: 102, type: !2678)
!2720 = distinct !DISubprogram(name: "cas_strong_sequentially_consistent_helper<int>", linkageName: "??$cas_strong_sequentially_consistent_helper@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YA_NPAH00@Z", scope: !479, file: !6, line: 102, type: !2712, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2681, retainedNodes: !2721)
!2721 = !{!2719, !2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "expected", arg: 2, scope: !2720, file: !6, line: 102, type: !2678)
!2723 = !DILocalVariable(name: "addr", arg: 1, scope: !2720, file: !6, line: 102, type: !2678)
!2724 = !DILocalVariable(name: "oldval", scope: !2720, file: !6, line: 103, type: !29)
!2725 = !DILocalVariable(name: "gotval", scope: !2720, file: !6, line: 104, type: !29)
!2726 = !DILocation(line: 0, scope: !2720, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 119, scope: !2711, inlinedAt: !2718)
!2728 = !DILocation(line: 104, scope: !2720, inlinedAt: !2727)
!2729 = !DILocation(line: 106, scope: !2720, inlinedAt: !2727)
!2730 = distinct !{!2730, !2706, !2731, !588}
!2731 = !DILocation(line: 747, scope: !2688)
!2732 = !DILocation(line: 749, scope: !2688)
!2733 = distinct !DISubprogram(name: "halide_default_semaphore_release", scope: !13, file: !13, line: 721, type: !150, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2734)
!2734 = !{!2735, !2736, !2737, !2738}
!2735 = !DILocalVariable(name: "n", arg: 2, scope: !2733, file: !13, line: 721, type: !29)
!2736 = !DILocalVariable(name: "s", arg: 1, scope: !2733, file: !13, line: 721, type: !56)
!2737 = !DILocalVariable(name: "sem", scope: !2733, file: !13, line: 722, type: !368)
!2738 = !DILocalVariable(name: "old_val", scope: !2733, file: !13, line: 723, type: !29)
!2739 = !DILocation(line: 0, scope: !2733)
!2740 = !DILocation(line: 723, scope: !2733)
!2741 = !DILocalVariable(name: "val", arg: 2, scope: !2742, file: !6, line: 97, type: !29)
!2742 = distinct !DISubprogram(name: "atomic_fetch_add_acquire_release<int>", linkageName: "??$atomic_fetch_add_acquire_release@H@?A0xC67814F4@Synchronization@Internal@Runtime@Halide@@YAHPAHH@Z", scope: !479, file: !6, line: 97, type: !2743, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, templateParams: !2681, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!29, !2678, !29}
!2745 = !{!2741, !2746}
!2746 = !DILocalVariable(name: "addr", arg: 1, scope: !2742, file: !6, line: 97, type: !2678)
!2747 = !DILocation(line: 0, scope: !2742, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 723, scope: !2733)
!2749 = !DILocation(line: 98, scope: !2742, inlinedAt: !2748)
!2750 = !DILocation(line: 725, scope: !2733)
!2751 = !DILocation(line: 727, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !13, line: 725)
!2753 = distinct !DILexicalBlock(scope: !2733, file: !13, line: 725)
!2754 = !DILocation(line: 728, scope: !2752)
!2755 = !DILocation(line: 729, scope: !2752)
!2756 = !DILocation(line: 730, scope: !2752)
!2757 = !DILocation(line: 731, scope: !2752)
!2758 = !DILocation(line: 732, scope: !2733)
!2759 = distinct !DISubprogram(name: "halide_thread_pool_cleanup", scope: !2760, file: !13, line: 584, type: !2761, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !163)
!2760 = !DINamespace(scope: null)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null}
!2763 = !DILocation(line: 585, scope: !2759)
!2764 = !DILocation(line: 586, scope: !2759)
!2765 = distinct !DISubprogram(name: "halide_shutdown_thread_pool", scope: !13, file: !13, line: 689, type: !2761, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2766)
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "i", scope: !2768, file: !13, line: 702, type: !29)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !13, line: 702)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !13, line: 690)
!2770 = distinct !DILexicalBlock(scope: !2765, file: !13, line: 690)
!2771 = !DILocation(line: 690, scope: !2765)
!2772 = !DILocation(line: 693, scope: !2769)
!2773 = !DILocation(line: 695, scope: !2769)
!2774 = !DILocation(line: 696, scope: !2769)
!2775 = !DILocation(line: 697, scope: !2769)
!2776 = !DILocation(line: 698, scope: !2769)
!2777 = !DILocation(line: 699, scope: !2769)
!2778 = !DILocation(line: 0, scope: !2768)
!2779 = !DILocation(line: 702, scope: !2768)
!2780 = !DILocalVariable(name: "this", arg: 1, scope: !2781, type: !2785, flags: DIFlagArtificial | DIFlagObjectPointer)
!2781 = distinct !DISubprogram(name: "reset", linkageName: "?reset@work_queue_t@Internal@Runtime@Halide@@QAEXXZ", scope: !14, file: !13, line: 158, type: !118, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, declaration: !117, retainedNodes: !2782)
!2782 = !{!2780, !2783, !2784}
!2783 = !DILocalVariable(name: "bytes", scope: !2781, file: !13, line: 160, type: !372)
!2784 = !DILocalVariable(name: "limit", scope: !2781, file: !13, line: 161, type: !372)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!2786 = !DILocation(line: 0, scope: !2781, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 707, scope: !2769)
!2788 = !DILocation(line: 162, scope: !2781, inlinedAt: !2787)
!2789 = !DILocation(line: 708, scope: !2769)
!2790 = !DILocation(line: 703, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !13, line: 702)
!2792 = distinct !DILexicalBlock(scope: !2768, file: !13, line: 702)
!2793 = !DILocation(line: 702, scope: !2792)
!2794 = distinct !{!2794, !2779, !2795, !588}
!2795 = !DILocation(line: 704, scope: !2768)
!2796 = !DILocation(line: 709, scope: !2765)
!2797 = distinct !DISubprogram(name: "halide_set_num_threads", scope: !13, file: !13, line: 672, type: !2104, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2798)
!2798 = !{!2799, !2800}
!2799 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !13, line: 672, type: !29)
!2800 = !DILocalVariable(name: "old", scope: !2797, file: !13, line: 683, type: !29)
!2801 = !DILocation(line: 0, scope: !2797)
!2802 = !DILocation(line: 673, scope: !2797)
!2803 = !DILocation(line: 674, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !13, line: 673)
!2805 = distinct !DILexicalBlock(scope: !2797, file: !13, line: 673)
!2806 = !DILocation(line: 679, scope: !2797)
!2807 = !DILocation(line: 680, scope: !2797)
!2808 = !DILocation(line: 681, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !13, line: 680)
!2810 = distinct !DILexicalBlock(scope: !2797, file: !13, line: 680)
!2811 = !DILocation(line: 682, scope: !2809)
!2812 = !DILocation(line: 683, scope: !2797)
!2813 = !DILocation(line: 684, scope: !2797)
!2814 = !DILocation(line: 685, scope: !2797)
!2815 = !DILocation(line: 686, scope: !2797)
!2816 = distinct !DISubprogram(name: "halide_set_custom_do_task", scope: !13, file: !13, line: 751, type: !2817, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!123, !123}
!2819 = !{!2820, !2821}
!2820 = !DILocalVariable(name: "f", arg: 1, scope: !2816, file: !13, line: 751, type: !123)
!2821 = !DILocalVariable(name: "result", scope: !2816, file: !13, line: 752, type: !123)
!2822 = !DILocation(line: 0, scope: !2816)
!2823 = !DILocation(line: 752, scope: !2816)
!2824 = !DILocation(line: 753, scope: !2816)
!2825 = !DILocation(line: 754, scope: !2816)
!2826 = distinct !DISubprogram(name: "halide_set_custom_do_loop_task", scope: !13, file: !13, line: 757, type: !2827, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!129, !129}
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "f", arg: 1, scope: !2826, file: !13, line: 757, type: !129)
!2831 = !DILocalVariable(name: "result", scope: !2826, file: !13, line: 758, type: !129)
!2832 = !DILocation(line: 0, scope: !2826)
!2833 = !DILocation(line: 758, scope: !2826)
!2834 = !DILocation(line: 759, scope: !2826)
!2835 = !DILocation(line: 760, scope: !2826)
!2836 = distinct !DISubprogram(name: "halide_set_custom_do_par_for", scope: !13, file: !13, line: 763, type: !2837, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!135, !135}
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "f", arg: 1, scope: !2836, file: !13, line: 763, type: !135)
!2841 = !DILocalVariable(name: "result", scope: !2836, file: !13, line: 764, type: !135)
!2842 = !DILocation(line: 0, scope: !2836)
!2843 = !DILocation(line: 764, scope: !2836)
!2844 = !DILocation(line: 765, scope: !2836)
!2845 = !DILocation(line: 766, scope: !2836)
!2846 = distinct !DISubprogram(name: "halide_set_custom_parallel_runtime", scope: !13, file: !13, line: 769, type: !2847, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !135, !123, !129, !141, !148, !154, !160}
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2850 = !DILocalVariable(name: "semaphore_release", arg: 7, scope: !2846, file: !13, line: 776, type: !160)
!2851 = !DILocalVariable(name: "semaphore_try_acquire", arg: 6, scope: !2846, file: !13, line: 775, type: !154)
!2852 = !DILocalVariable(name: "semaphore_init", arg: 5, scope: !2846, file: !13, line: 774, type: !148)
!2853 = !DILocalVariable(name: "do_parallel_tasks", arg: 4, scope: !2846, file: !13, line: 773, type: !141)
!2854 = !DILocalVariable(name: "do_loop_task", arg: 3, scope: !2846, file: !13, line: 772, type: !129)
!2855 = !DILocalVariable(name: "do_task", arg: 2, scope: !2846, file: !13, line: 771, type: !123)
!2856 = !DILocalVariable(name: "do_par_for", arg: 1, scope: !2846, file: !13, line: 770, type: !135)
!2857 = !DILocation(line: 0, scope: !2846)
!2858 = !DILocation(line: 778, scope: !2846)
!2859 = !DILocation(line: 779, scope: !2846)
!2860 = !DILocation(line: 780, scope: !2846)
!2861 = !DILocation(line: 781, scope: !2846)
!2862 = !DILocation(line: 782, scope: !2846)
!2863 = !DILocation(line: 783, scope: !2846)
!2864 = !DILocation(line: 784, scope: !2846)
!2865 = !DILocation(line: 785, scope: !2846)
!2866 = distinct !DISubprogram(name: "halide_do_par_for", scope: !13, file: !13, line: 792, type: !137, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872}
!2868 = !DILocalVariable(name: "closure", arg: 5, scope: !2866, file: !13, line: 793, type: !44)
!2869 = !DILocalVariable(name: "size", arg: 4, scope: !2866, file: !13, line: 793, type: !29)
!2870 = !DILocalVariable(name: "min", arg: 3, scope: !2866, file: !13, line: 793, type: !29)
!2871 = !DILocalVariable(name: "f", arg: 2, scope: !2866, file: !13, line: 792, type: !66)
!2872 = !DILocalVariable(name: "user_context", arg: 1, scope: !2866, file: !13, line: 792, type: !43)
!2873 = !DILocation(line: 0, scope: !2866)
!2874 = !DILocation(line: 794, scope: !2866)
!2875 = distinct !DISubprogram(name: "halide_do_parallel_tasks", scope: !13, file: !13, line: 802, type: !143, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2876)
!2876 = !{!2877, !2878, !2879, !2880}
!2877 = !DILocalVariable(name: "task_parent", arg: 4, scope: !2875, file: !13, line: 804, type: !43)
!2878 = !DILocalVariable(name: "tasks", arg: 3, scope: !2875, file: !13, line: 803, type: !145)
!2879 = !DILocalVariable(name: "num_tasks", arg: 2, scope: !2875, file: !13, line: 802, type: !29)
!2880 = !DILocalVariable(name: "user_context", arg: 1, scope: !2875, file: !13, line: 802, type: !43)
!2881 = !DILocation(line: 0, scope: !2875)
!2882 = !DILocation(line: 805, scope: !2875)
!2883 = distinct !DISubprogram(name: "halide_semaphore_init", scope: !13, file: !13, line: 808, type: !150, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2884)
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "count", arg: 2, scope: !2883, file: !13, line: 808, type: !29)
!2886 = !DILocalVariable(name: "sema", arg: 1, scope: !2883, file: !13, line: 808, type: !56)
!2887 = !DILocation(line: 0, scope: !2883)
!2888 = !DILocation(line: 809, scope: !2883)
!2889 = distinct !DISubprogram(name: "halide_semaphore_release", scope: !13, file: !13, line: 812, type: !150, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2890)
!2890 = !{!2891, !2892}
!2891 = !DILocalVariable(name: "count", arg: 2, scope: !2889, file: !13, line: 812, type: !29)
!2892 = !DILocalVariable(name: "sema", arg: 1, scope: !2889, file: !13, line: 812, type: !56)
!2893 = !DILocation(line: 0, scope: !2889)
!2894 = !DILocation(line: 813, scope: !2889)
!2895 = distinct !DISubprogram(name: "halide_semaphore_try_acquire", scope: !13, file: !13, line: 816, type: !156, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !2896)
!2896 = !{!2897, !2898}
!2897 = !DILocalVariable(name: "count", arg: 2, scope: !2895, file: !13, line: 816, type: !29)
!2898 = !DILocalVariable(name: "sema", arg: 1, scope: !2895, file: !13, line: 816, type: !56)
!2899 = !DILocation(line: 0, scope: !2895)
!2900 = !DILocation(line: 817, scope: !2895)
