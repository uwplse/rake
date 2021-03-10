; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::CacheEntry" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, i8*, i64, i8*, i32, i32, i32, i32, %struct.halide_dimension_t*, %struct.halide_buffer_t*, i64, i8, [7 x i8] }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::CacheBlockHeader" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, i32, [4 x i8] }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@_ZN6Halide7Runtime8Internal16memoization_lockE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal13cache_entriesE = weak dso_local local_unnamed_addr global [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*] zeroinitializer, align 8, !dbg !17
@_ZN6Halide7Runtime8Internal18most_recently_usedE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 8, !dbg !229
@_ZN6Halide7Runtime8Internal19least_recently_usedE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 8, !dbg !231
@_ZN6Halide7Runtime8Internal14max_cache_sizeE = weak dso_local local_unnamed_addr global i64 1048576, align 8, !dbg !233
@_ZN6Halide7Runtime8Internal18current_cache_sizeE = weak dso_local local_unnamed_addr global i64 0, align 8, !dbg !237
@.str.1 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:281 Assert failed: prev_hash_entry != nullptr\0A\00", align 1
@.str.2 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:370 Assert failed: entry->more_recent != nullptr\0A\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:374 Assert failed: least_recently_used == entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:377 Assert failed: entry->more_recent != nullptr\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"halide_memoization_cache_store has_eviction_key: \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" eviction_key \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" .\0A\00", align 1
@.str.8 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:469 Assert failed: no_host_pointers_equal\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Exiting halide_memoization_cache_store\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"halide_memoization_cache_release\0A\00", align 1
@.str.11 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:547 Assert failed: entry->in_use_count > 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Exited halide_memoization_cache_release.\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"halide_memoization_cache_cleanup\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_cache_cleanup, i8* null }]

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !344 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !363, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32 %1, metadata !364, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %2, metadata !365, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %3, metadata !366, metadata !DIExpression()), !dbg !374
  %5 = icmp sgt i32 %1, -1, !dbg !375
  br i1 %5, label %6, label %15, !dbg !376

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !364, metadata !DIExpression()), !dbg !374
  %8 = zext i32 %7 to i64, !dbg !377
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !377
  %10 = load i64, i64* %9, align 8, !dbg !377, !tbaa !378
  %11 = icmp eq i64 %10, 1, !dbg !382
  br i1 %11, label %12, label %15, !dbg !383

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !384
  call void @llvm.dbg.value(metadata i32 %13, metadata !364, metadata !DIExpression()), !dbg !374
  %14 = icmp sgt i32 %7, 0, !dbg !375
  br i1 %14, label %6, label %27, !dbg !376, !llvm.loop !386

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !389
  br i1 %17, label %27, label %18, !dbg !390

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !371, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i64 %2, metadata !365, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %3, metadata !366, metadata !DIExpression()), !dbg !374
  %19 = sext i32 %16 to i64, !dbg !392
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !392
  %21 = load i64, i64* %20, align 8, !dbg !392, !tbaa !378
  %22 = icmp eq i64 %21, 0, !dbg !394
  br i1 %22, label %50, label %23, !dbg !395

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39, !dbg !395

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !396
  %29 = load i64, i64* %28, align 8, !dbg !396, !tbaa !397
  %30 = add i64 %29, %2, !dbg !399
  %31 = inttoptr i64 %30 to i8*, !dbg !400
  call void @llvm.dbg.value(metadata i8* %31, metadata !367, metadata !DIExpression()), !dbg !401
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !402
  %33 = load i64, i64* %32, align 8, !dbg !402, !tbaa !403
  %34 = add i64 %33, %3, !dbg !404
  %35 = inttoptr i64 %34 to i8*, !dbg !405
  call void @llvm.dbg.value(metadata i8* %35, metadata !370, metadata !DIExpression()), !dbg !401
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !406
  %37 = load i64, i64* %36, align 8, !dbg !406, !tbaa !407
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #7, !dbg !408
  br label %50, !dbg !409

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !371, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i64 %41, metadata !365, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i64 %42, metadata !366, metadata !DIExpression()), !dbg !374
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #8, !dbg !410
  %43 = load i64, i64* %25, align 8, !dbg !412, !tbaa !378
  %44 = add i64 %43, %41, !dbg !413
  call void @llvm.dbg.value(metadata i64 %44, metadata !365, metadata !DIExpression()), !dbg !374
  %45 = load i64, i64* %26, align 8, !dbg !414, !tbaa !378
  %46 = add i64 %45, %42, !dbg !415
  call void @llvm.dbg.value(metadata i64 %46, metadata !366, metadata !DIExpression()), !dbg !374
  %47 = add nuw i64 %40, 1, !dbg !416
  call void @llvm.dbg.value(metadata i64 %47, metadata !371, metadata !DIExpression()), !dbg !391
  %48 = load i64, i64* %20, align 8, !dbg !392, !tbaa !378
  %49 = icmp ult i64 %47, %48, !dbg !394
  br i1 %49, label %39, label %50, !dbg !395, !llvm.loop !417

50:                                               ; preds = %39, %18, %27
  ret void, !dbg !419
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !420 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !424 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !428, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.value(metadata i8* %1, metadata !429, metadata !DIExpression()), !dbg !430
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !431
  %4 = load i64, i64* %3, align 8, !dbg !431, !tbaa !397
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !433
  %6 = load i64, i64* %5, align 8, !dbg !433, !tbaa !403
  %7 = icmp eq i64 %4, %6, !dbg !434
  br i1 %7, label %11, label %8, !dbg !435

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2, !dbg !436
  %10 = load i64, i64* %9, align 8, !dbg !436, !tbaa !438
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8, !dbg !439
  br label %25, !dbg !440

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !441, metadata !DIExpression()) #9, !dbg !447
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()) #9, !dbg !447
  call void @llvm.dbg.value(metadata i8* null, metadata !445, metadata !DIExpression()) #9, !dbg !447
  %12 = tail call i8* @malloc(i64 1024) #7, !dbg !450
  %13 = icmp eq i8* %12, null, !dbg !455
  br i1 %13, label %14, label %16, !dbg !457

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !462
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !462
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #7, !dbg !464
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !470
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !472
  br label %24, !dbg !476

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !477
  store i8 0, i8* %17, align 1, !dbg !479, !tbaa !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !462
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !462
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #7, !dbg !464
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !470
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !481, metadata !DIExpression()) #9, !dbg !484
  %19 = ptrtoint i8* %18 to i64, !dbg !487
  %20 = ptrtoint i8* %12 to i64, !dbg !487
  %21 = add i64 %19, 1, !dbg !487
  %22 = sub i64 %21, %20, !dbg !488
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %22) #7, !dbg !489
  tail call void @halide_print(i8* %1, i8* nonnull %12) #7, !dbg !490
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #7, !dbg !494
  br label %25

25:                                               ; preds = %24, %8
  ret void, !dbg !497
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !498 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !502, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i1 %2, metadata !503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !529
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !504, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i1 %4, metadata !505, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !529
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #9, !dbg !530
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !506, metadata !DIExpression()), !dbg !531
  br i1 %2, label %8, label %12, !dbg !532

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !533
  %10 = load i8*, i8** %9, align 8, !dbg !533, !tbaa !534
  %11 = ptrtoint i8* %10 to i64, !dbg !541
  br label %15, !dbg !532

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !542
  %14 = load i64, i64* %13, align 8, !dbg !542, !tbaa !543
  br label %15, !dbg !532

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ], !dbg !532
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0, !dbg !544
  store i64 %16, i64* %17, align 8, !dbg !545, !tbaa !397
  br i1 %4, label %18, label %22, !dbg !546

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !547
  %20 = load i8*, i8** %19, align 8, !dbg !547, !tbaa !534
  %21 = ptrtoint i8* %20 to i64, !dbg !548
  br label %25, !dbg !546

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !549
  %24 = load i64, i64* %23, align 8, !dbg !549, !tbaa !543
  br label %25, !dbg !546

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ], !dbg !546
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1, !dbg !550
  store i64 %26, i64* %27, align 8, !dbg !551, !tbaa !403
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !556
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !558
  %29 = load i8, i8* %28, align 1, !dbg !558, !tbaa !559
  %30 = zext i8 %29 to i32, !dbg !558
  %31 = add nuw nsw i32 %30, 7, !dbg !560
  %32 = lshr i32 %31, 3, !dbg !561
  %33 = zext i32 %32 to i64, !dbg !562
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6, !dbg !563
  store i64 %33, i64* %34, align 8, !dbg !564, !tbaa !407
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 0, metadata !507, metadata !DIExpression()), !dbg !565
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0, !dbg !566
  store i64 1, i64* %35, align 8, !dbg !569, !tbaa !378
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0, !dbg !570
  store i64 0, i64* %36, align 8, !dbg !571, !tbaa !378
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0, !dbg !572
  store i64 0, i64* %37, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 1, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 1, metadata !507, metadata !DIExpression()), !dbg !565
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1, !dbg !566
  store i64 1, i64* %38, align 8, !dbg !569, !tbaa !378
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1, !dbg !570
  store i64 0, i64* %39, align 8, !dbg !571, !tbaa !378
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1, !dbg !572
  store i64 0, i64* %40, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 2, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 2, metadata !507, metadata !DIExpression()), !dbg !565
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2, !dbg !566
  store i64 1, i64* %41, align 8, !dbg !569, !tbaa !378
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2, !dbg !570
  store i64 0, i64* %42, align 8, !dbg !571, !tbaa !378
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2, !dbg !572
  store i64 0, i64* %43, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 3, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 3, metadata !507, metadata !DIExpression()), !dbg !565
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3, !dbg !566
  store i64 1, i64* %44, align 8, !dbg !569, !tbaa !378
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3, !dbg !570
  store i64 0, i64* %45, align 8, !dbg !571, !tbaa !378
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3, !dbg !572
  store i64 0, i64* %46, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 4, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 4, metadata !507, metadata !DIExpression()), !dbg !565
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4, !dbg !566
  store i64 1, i64* %47, align 8, !dbg !569, !tbaa !378
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4, !dbg !570
  store i64 0, i64* %48, align 8, !dbg !571, !tbaa !378
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4, !dbg !572
  store i64 0, i64* %49, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 5, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 5, metadata !507, metadata !DIExpression()), !dbg !565
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5, !dbg !566
  store i64 1, i64* %50, align 8, !dbg !569, !tbaa !378
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5, !dbg !570
  store i64 0, i64* %51, align 8, !dbg !571, !tbaa !378
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5, !dbg !572
  store i64 0, i64* %52, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 6, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 6, metadata !507, metadata !DIExpression()), !dbg !565
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6, !dbg !566
  store i64 1, i64* %53, align 8, !dbg !569, !tbaa !378
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6, !dbg !570
  store i64 0, i64* %54, align 8, !dbg !571, !tbaa !378
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6, !dbg !572
  store i64 0, i64* %55, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 7, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 7, metadata !507, metadata !DIExpression()), !dbg !565
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7, !dbg !566
  store i64 1, i64* %56, align 8, !dbg !569, !tbaa !378
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7, !dbg !570
  store i64 0, i64* %57, align 8, !dbg !571, !tbaa !378
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7, !dbg !572
  store i64 0, i64* %58, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 8, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 8, metadata !507, metadata !DIExpression()), !dbg !565
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8, !dbg !566
  store i64 1, i64* %59, align 8, !dbg !569, !tbaa !378
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8, !dbg !570
  store i64 0, i64* %60, align 8, !dbg !571, !tbaa !378
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8, !dbg !572
  store i64 0, i64* %61, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 9, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 9, metadata !507, metadata !DIExpression()), !dbg !565
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9, !dbg !566
  store i64 1, i64* %62, align 8, !dbg !569, !tbaa !378
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9, !dbg !570
  store i64 0, i64* %63, align 8, !dbg !571, !tbaa !378
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9, !dbg !572
  store i64 0, i64* %64, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 10, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 10, metadata !507, metadata !DIExpression()), !dbg !565
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10, !dbg !566
  store i64 1, i64* %65, align 8, !dbg !569, !tbaa !378
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10, !dbg !570
  store i64 0, i64* %66, align 8, !dbg !571, !tbaa !378
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10, !dbg !572
  store i64 0, i64* %67, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 11, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 11, metadata !507, metadata !DIExpression()), !dbg !565
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11, !dbg !566
  store i64 1, i64* %68, align 8, !dbg !569, !tbaa !378
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11, !dbg !570
  store i64 0, i64* %69, align 8, !dbg !571, !tbaa !378
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11, !dbg !572
  store i64 0, i64* %70, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 12, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 12, metadata !507, metadata !DIExpression()), !dbg !565
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12, !dbg !566
  store i64 1, i64* %71, align 8, !dbg !569, !tbaa !378
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12, !dbg !570
  store i64 0, i64* %72, align 8, !dbg !571, !tbaa !378
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12, !dbg !572
  store i64 0, i64* %73, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 13, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 13, metadata !507, metadata !DIExpression()), !dbg !565
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13, !dbg !566
  store i64 1, i64* %74, align 8, !dbg !569, !tbaa !378
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13, !dbg !570
  store i64 0, i64* %75, align 8, !dbg !571, !tbaa !378
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13, !dbg !572
  store i64 0, i64* %76, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 14, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 14, metadata !507, metadata !DIExpression()), !dbg !565
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14, !dbg !566
  store i64 1, i64* %77, align 8, !dbg !569, !tbaa !378
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14, !dbg !570
  store i64 0, i64* %78, align 8, !dbg !571, !tbaa !378
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14, !dbg !572
  store i64 0, i64* %79, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 15, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 15, metadata !507, metadata !DIExpression()), !dbg !565
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15, !dbg !566
  store i64 1, i64* %80, align 8, !dbg !569, !tbaa !378
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15, !dbg !570
  store i64 0, i64* %81, align 8, !dbg !571, !tbaa !378
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15, !dbg !572
  store i64 0, i64* %82, align 8, !dbg !573, !tbaa !378
  call void @llvm.dbg.value(metadata i64 16, metadata !507, metadata !DIExpression()), !dbg !565
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2, !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !509, metadata !DIExpression()), !dbg !575
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !576
  %85 = load i32, i32* %84, align 4, !dbg !576, !tbaa !578
  %86 = icmp sgt i32 %85, 0, !dbg !579
  br i1 %86, label %87, label %93, !dbg !580

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !581
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !581
  %92 = zext i32 %85 to i64, !dbg !579
  br label %100, !dbg !580

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ], !dbg !582
  %95 = load i64, i64* %34, align 8, !dbg !583, !tbaa !407
  %96 = mul i64 %94, %95, !dbg !582
  store i64 %96, i64* %83, align 8, !dbg !582, !tbaa !438
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !584
  %98 = load i32, i32* %97, align 4, !dbg !584, !tbaa !578
  %99 = icmp eq i32 %85, %98, !dbg !585
  br i1 %99, label %116, label %125, !dbg !586

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ], !dbg !575
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ], !dbg !575
  call void @llvm.dbg.value(metadata i64 %101, metadata !509, metadata !DIExpression()), !dbg !575
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2, !dbg !587
  %104 = load i32, i32* %103, align 4, !dbg !587, !tbaa !589
  %105 = sext i32 %104 to i64, !dbg !591
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0, !dbg !592
  %107 = load i32, i32* %106, align 4, !dbg !592, !tbaa !593
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0, !dbg !594
  %109 = load i32, i32* %108, align 4, !dbg !594, !tbaa !593
  %110 = sub nsw i32 %107, %109, !dbg !595
  %111 = sext i32 %110 to i64, !dbg !596
  %112 = mul nsw i64 %111, %105, !dbg !597
  %113 = add i64 %112, %102, !dbg !598
  %114 = add nuw nsw i64 %101, 1, !dbg !599
  call void @llvm.dbg.value(metadata i64 %114, metadata !509, metadata !DIExpression()), !dbg !575
  %115 = icmp eq i64 %114, %92, !dbg !579
  br i1 %115, label %93, label %100, !dbg !580, !llvm.loop !600

116:                                              ; preds = %93
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !602
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !604
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !606
  %118 = load i8, i8* %117, align 1, !dbg !606, !tbaa !559
  %119 = zext i8 %118 to i32, !dbg !606
  %120 = add nuw nsw i32 %119, 7, !dbg !607
  %121 = lshr i32 %120, 3, !dbg !608
  %122 = icmp ne i32 %32, %121, !dbg !609
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122, !dbg !610
  br i1 %124, label %125, label %127, !dbg !610

125:                                              ; preds = %116, %93
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !511, metadata !DIExpression()), !dbg !611
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !611
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false), !dbg !611
  br label %253, !dbg !612

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0, !dbg !613
  br i1 %128, label %136, label %129, !dbg !614

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()), !dbg !615
  br i1 %86, label %130, label %251, !dbg !616

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !581
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !581
  %135 = zext i32 %85 to i64, !dbg !617
  br label %144, !dbg !616

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !514, metadata !DIExpression()), !dbg !618
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !618
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false), !dbg !618
  br label %253, !dbg !619

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !dbg !620, !tbaa !407
  %140 = load i64, i64* %36, align 8, !dbg !621, !tbaa !378
  %141 = icmp eq i64 %139, %140, !dbg !622
  br i1 %141, label %142, label %251, !dbg !623

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !dbg !624, !tbaa !378
  br label %198, !dbg !623

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !517, metadata !DIExpression()), !dbg !615
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2, !dbg !625
  %147 = load i32, i32* %146, align 4, !dbg !625, !tbaa !589
  %148 = sext i32 %147 to i64, !dbg !626
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !627
  %149 = mul nsw i64 %148, %33, !dbg !629
  call void @llvm.dbg.value(metadata i64 %149, metadata !519, metadata !DIExpression()), !dbg !630
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2, !dbg !631
  %151 = load i32, i32* %150, align 4, !dbg !631, !tbaa !589
  %152 = sext i32 %151 to i64, !dbg !632
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !633
  %153 = mul nsw i64 %152, %33, !dbg !635
  call void @llvm.dbg.value(metadata i64 %153, metadata !522, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !630
  %154 = icmp eq i64 %145, 0, !dbg !636
  br i1 %154, label %170, label %155, !dbg !639

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159, !dbg !639

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 undef, metadata !523, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !630
  %158 = trunc i64 %145 to i32, !dbg !640
  br label %170, !dbg !640

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !523, metadata !DIExpression()), !dbg !630
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160, !dbg !642
  %162 = load i64, i64* %161, align 8, !dbg !642, !tbaa !378
  %163 = icmp ult i64 %149, %162, !dbg !645
  br i1 %163, label %167, label %164, !dbg !646

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1, !dbg !647
  call void @llvm.dbg.value(metadata i64 %165, metadata !523, metadata !DIExpression()), !dbg !630
  %166 = icmp eq i64 %165, %145, !dbg !636
  br i1 %166, label %167, label %159, !dbg !639, !llvm.loop !648

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32, !dbg !650
  br label %170, !dbg !640

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ], !dbg !650
  call void @llvm.dbg.value(metadata i64 %145, metadata !524, metadata !DIExpression()), !dbg !651
  %172 = zext i32 %171 to i64, !dbg !640
  %173 = icmp ugt i64 %145, %172, !dbg !640
  br i1 %173, label %174, label %176, !dbg !652

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64, !dbg !652
  br label %185, !dbg !652

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1, !dbg !653
  %178 = load i32, i32* %177, align 4, !dbg !653, !tbaa !654
  %179 = sext i32 %178 to i64, !dbg !655
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172, !dbg !656
  store i64 %179, i64* %180, align 8, !dbg !657, !tbaa !378
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172, !dbg !658
  store i64 %149, i64* %181, align 8, !dbg !659, !tbaa !378
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172, !dbg !660
  store i64 %153, i64* %182, align 8, !dbg !661, !tbaa !378
  %183 = add nuw nsw i64 %145, 1, !dbg !662
  call void @llvm.dbg.value(metadata i64 %183, metadata !517, metadata !DIExpression()), !dbg !615
  %184 = icmp eq i64 %183, %135, !dbg !617
  br i1 %184, label %138, label %144, !dbg !616, !llvm.loop !663

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !524, metadata !DIExpression()), !dbg !651
  %187 = add nsw i64 %186, -1, !dbg !665
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187, !dbg !667
  %189 = load i64, i64* %188, align 8, !dbg !667, !tbaa !378
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186, !dbg !668
  store i64 %189, i64* %190, align 8, !dbg !669, !tbaa !378
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187, !dbg !670
  %192 = load i64, i64* %191, align 8, !dbg !670, !tbaa !378
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186, !dbg !671
  store i64 %192, i64* %193, align 8, !dbg !672, !tbaa !378
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187, !dbg !673
  %195 = load i64, i64* %194, align 8, !dbg !673, !tbaa !378
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186, !dbg !674
  store i64 %195, i64* %196, align 8, !dbg !675, !tbaa !378
  call void @llvm.dbg.value(metadata i64 %187, metadata !524, metadata !DIExpression()), !dbg !651
  %197 = icmp sgt i64 %187, %175, !dbg !640
  br i1 %197, label %185, label %176, !dbg !652, !llvm.loop !676

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ], !dbg !624
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199, !dbg !678
  br i1 %201, label %202, label %251, !dbg !679

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !dbg !680, !tbaa !378
  %204 = mul i64 %203, %199, !dbg !681
  store i64 %204, i64* %34, align 8, !dbg !681, !tbaa !407
  call void @llvm.dbg.value(metadata i64 1, metadata !526, metadata !DIExpression()), !dbg !682
  %205 = load i64, i64* %38, align 8, !dbg !683, !tbaa !378
  store i64 %205, i64* %35, align 8, !dbg !686, !tbaa !378
  %206 = load i64, i64* %39, align 8, !dbg !687, !tbaa !378
  store i64 %206, i64* %36, align 8, !dbg !688, !tbaa !378
  %207 = load i64, i64* %40, align 8, !dbg !689, !tbaa !378
  store i64 %207, i64* %37, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 2, metadata !526, metadata !DIExpression()), !dbg !682
  %208 = load i64, i64* %41, align 8, !dbg !683, !tbaa !378
  store i64 %208, i64* %38, align 8, !dbg !686, !tbaa !378
  %209 = load i64, i64* %42, align 8, !dbg !687, !tbaa !378
  store i64 %209, i64* %39, align 8, !dbg !688, !tbaa !378
  %210 = load i64, i64* %43, align 8, !dbg !689, !tbaa !378
  store i64 %210, i64* %40, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 3, metadata !526, metadata !DIExpression()), !dbg !682
  %211 = load i64, i64* %44, align 8, !dbg !683, !tbaa !378
  store i64 %211, i64* %41, align 8, !dbg !686, !tbaa !378
  %212 = load i64, i64* %45, align 8, !dbg !687, !tbaa !378
  store i64 %212, i64* %42, align 8, !dbg !688, !tbaa !378
  %213 = load i64, i64* %46, align 8, !dbg !689, !tbaa !378
  store i64 %213, i64* %43, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 4, metadata !526, metadata !DIExpression()), !dbg !682
  %214 = load i64, i64* %47, align 8, !dbg !683, !tbaa !378
  store i64 %214, i64* %44, align 8, !dbg !686, !tbaa !378
  %215 = load i64, i64* %48, align 8, !dbg !687, !tbaa !378
  store i64 %215, i64* %45, align 8, !dbg !688, !tbaa !378
  %216 = load i64, i64* %49, align 8, !dbg !689, !tbaa !378
  store i64 %216, i64* %46, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 5, metadata !526, metadata !DIExpression()), !dbg !682
  %217 = load i64, i64* %50, align 8, !dbg !683, !tbaa !378
  store i64 %217, i64* %47, align 8, !dbg !686, !tbaa !378
  %218 = load i64, i64* %51, align 8, !dbg !687, !tbaa !378
  store i64 %218, i64* %48, align 8, !dbg !688, !tbaa !378
  %219 = load i64, i64* %52, align 8, !dbg !689, !tbaa !378
  store i64 %219, i64* %49, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 6, metadata !526, metadata !DIExpression()), !dbg !682
  %220 = load i64, i64* %53, align 8, !dbg !683, !tbaa !378
  store i64 %220, i64* %50, align 8, !dbg !686, !tbaa !378
  %221 = load i64, i64* %54, align 8, !dbg !687, !tbaa !378
  store i64 %221, i64* %51, align 8, !dbg !688, !tbaa !378
  %222 = load i64, i64* %55, align 8, !dbg !689, !tbaa !378
  store i64 %222, i64* %52, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 7, metadata !526, metadata !DIExpression()), !dbg !682
  %223 = load i64, i64* %56, align 8, !dbg !683, !tbaa !378
  store i64 %223, i64* %53, align 8, !dbg !686, !tbaa !378
  %224 = load i64, i64* %57, align 8, !dbg !687, !tbaa !378
  store i64 %224, i64* %54, align 8, !dbg !688, !tbaa !378
  %225 = load i64, i64* %58, align 8, !dbg !689, !tbaa !378
  store i64 %225, i64* %55, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 8, metadata !526, metadata !DIExpression()), !dbg !682
  %226 = load i64, i64* %59, align 8, !dbg !683, !tbaa !378
  store i64 %226, i64* %56, align 8, !dbg !686, !tbaa !378
  %227 = load i64, i64* %60, align 8, !dbg !687, !tbaa !378
  store i64 %227, i64* %57, align 8, !dbg !688, !tbaa !378
  %228 = load i64, i64* %61, align 8, !dbg !689, !tbaa !378
  store i64 %228, i64* %58, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 9, metadata !526, metadata !DIExpression()), !dbg !682
  %229 = load i64, i64* %62, align 8, !dbg !683, !tbaa !378
  store i64 %229, i64* %59, align 8, !dbg !686, !tbaa !378
  %230 = load i64, i64* %63, align 8, !dbg !687, !tbaa !378
  store i64 %230, i64* %60, align 8, !dbg !688, !tbaa !378
  %231 = load i64, i64* %64, align 8, !dbg !689, !tbaa !378
  store i64 %231, i64* %61, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 10, metadata !526, metadata !DIExpression()), !dbg !682
  %232 = load i64, i64* %65, align 8, !dbg !683, !tbaa !378
  store i64 %232, i64* %62, align 8, !dbg !686, !tbaa !378
  %233 = load i64, i64* %66, align 8, !dbg !687, !tbaa !378
  store i64 %233, i64* %63, align 8, !dbg !688, !tbaa !378
  %234 = load i64, i64* %67, align 8, !dbg !689, !tbaa !378
  store i64 %234, i64* %64, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 11, metadata !526, metadata !DIExpression()), !dbg !682
  %235 = load i64, i64* %68, align 8, !dbg !683, !tbaa !378
  store i64 %235, i64* %65, align 8, !dbg !686, !tbaa !378
  %236 = load i64, i64* %69, align 8, !dbg !687, !tbaa !378
  store i64 %236, i64* %66, align 8, !dbg !688, !tbaa !378
  %237 = load i64, i64* %70, align 8, !dbg !689, !tbaa !378
  store i64 %237, i64* %67, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 12, metadata !526, metadata !DIExpression()), !dbg !682
  %238 = load i64, i64* %71, align 8, !dbg !683, !tbaa !378
  store i64 %238, i64* %68, align 8, !dbg !686, !tbaa !378
  %239 = load i64, i64* %72, align 8, !dbg !687, !tbaa !378
  store i64 %239, i64* %69, align 8, !dbg !688, !tbaa !378
  %240 = load i64, i64* %73, align 8, !dbg !689, !tbaa !378
  store i64 %240, i64* %70, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 13, metadata !526, metadata !DIExpression()), !dbg !682
  %241 = load i64, i64* %74, align 8, !dbg !683, !tbaa !378
  store i64 %241, i64* %71, align 8, !dbg !686, !tbaa !378
  %242 = load i64, i64* %75, align 8, !dbg !687, !tbaa !378
  store i64 %242, i64* %72, align 8, !dbg !688, !tbaa !378
  %243 = load i64, i64* %76, align 8, !dbg !689, !tbaa !378
  store i64 %243, i64* %73, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 14, metadata !526, metadata !DIExpression()), !dbg !682
  %244 = load i64, i64* %77, align 8, !dbg !683, !tbaa !378
  store i64 %244, i64* %74, align 8, !dbg !686, !tbaa !378
  %245 = load i64, i64* %78, align 8, !dbg !687, !tbaa !378
  store i64 %245, i64* %75, align 8, !dbg !688, !tbaa !378
  %246 = load i64, i64* %79, align 8, !dbg !689, !tbaa !378
  store i64 %246, i64* %76, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 15, metadata !526, metadata !DIExpression()), !dbg !682
  %247 = load i64, i64* %80, align 8, !dbg !683, !tbaa !378
  store i64 %247, i64* %77, align 8, !dbg !686, !tbaa !378
  %248 = load i64, i64* %81, align 8, !dbg !687, !tbaa !378
  store i64 %248, i64* %78, align 8, !dbg !688, !tbaa !378
  %249 = load i64, i64* %82, align 8, !dbg !689, !tbaa !378
  store i64 %249, i64* %79, align 8, !dbg !690, !tbaa !378
  call void @llvm.dbg.value(metadata i64 16, metadata !526, metadata !DIExpression()), !dbg !682
  store i64 1, i64* %80, align 8, !dbg !691, !tbaa !378
  store i64 0, i64* %81, align 8, !dbg !692, !tbaa !378
  store i64 0, i64* %82, align 8, !dbg !693, !tbaa !378
  %250 = icmp eq i64 %204, %206, !dbg !622
  br i1 %250, label %198, label %251, !dbg !623, !llvm.loop !694

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !dbg !696, !tbaa.struct !697
  br label %253, !dbg !698

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9, !dbg !699
  ret void, !dbg !699
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !700 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !704, metadata !DIExpression()), !dbg !705
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #8, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !708 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !710, metadata !DIExpression()), !dbg !711
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #8, !dbg !712
  ret void, !dbg !713
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %0, i8* %1, i64 %2) local_unnamed_addr #0 !dbg !714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !718, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8* %1, metadata !719, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i64 %2, metadata !720, metadata !DIExpression()), !dbg !721
  %4 = tail call i32 @memcmp(i8* %0, i8* %1, i64 %2) #7, !dbg !722
  %5 = icmp eq i32 %4, 0, !dbg !723
  ret i1 %5, !dbg !724
}

declare !dbg !725 dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1) local_unnamed_addr #0 !dbg !728 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %1, metadata !735, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 0, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 0, metadata !736, metadata !DIExpression()), !dbg !739
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5, !dbg !740
  %4 = load i32, i32* %3, align 4, !dbg !740, !tbaa !578
  %5 = icmp sgt i32 %4, 0, !dbg !742
  br i1 %5, label %6, label %38, !dbg !743

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6, !dbg !744
  %8 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %7, align 8, !tbaa !581
  %9 = sext i32 %4 to i64, !dbg !742
  br label %12, !dbg !743

10:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %37, metadata !736, metadata !DIExpression()), !dbg !739
  %11 = icmp slt i64 %37, %9, !dbg !742
  br i1 %11, label %12, label %38, !dbg !743, !llvm.loop !747

12:                                               ; preds = %6, %10
  %13 = phi i64 [ 0, %6 ], [ %37, %10 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !749, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !752, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !756, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !759, metadata !DIExpression()), !dbg !760
  %14 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 0, !dbg !762
  %15 = load i32, i32* %14, align 4, !dbg !762, !tbaa !593
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 0, !dbg !763
  %17 = load i32, i32* %16, align 4, !dbg !763, !tbaa !593
  %18 = icmp eq i32 %15, %17, !dbg !764
  br i1 %18, label %19, label %38, !dbg !765

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 1, !dbg !766
  %21 = load i32, i32* %20, align 4, !dbg !766, !tbaa !654
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 1, !dbg !767
  %23 = load i32, i32* %22, align 4, !dbg !767, !tbaa !654
  %24 = icmp eq i32 %21, %23, !dbg !768
  br i1 %24, label %25, label %38, !dbg !769

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 2, !dbg !770
  %27 = load i32, i32* %26, align 4, !dbg !770, !tbaa !589
  %28 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 2, !dbg !771
  %29 = load i32, i32* %28, align 4, !dbg !771, !tbaa !589
  %30 = icmp eq i32 %27, %29, !dbg !772
  br i1 %30, label %31, label %38, !dbg !773

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 3, !dbg !774
  %33 = load i32, i32* %32, align 4, !dbg !774, !tbaa !775
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 3, !dbg !776
  %35 = load i32, i32* %34, align 4, !dbg !776, !tbaa !775
  %36 = icmp eq i32 %33, %35, !dbg !777
  %37 = add nuw nsw i64 %13, 1, !dbg !778
  call void @llvm.dbg.value(metadata i64 %37, metadata !736, metadata !DIExpression()), !dbg !739
  br i1 %36, label %10, label %38, !dbg !779

38:                                               ; preds = %31, %10, %25, %19, %12, %2
  %39 = phi i1 [ true, %2 ], [ false, %12 ], [ false, %19 ], [ false, %25 ], [ true, %10 ], [ false, %31 ]
  ret i1 %39, !dbg !780
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i64 @_ZN6Halide7Runtime8Internal12header_bytesEv() local_unnamed_addr #6 !dbg !781 {
  call void @llvm.dbg.value(metadata i64 16, metadata !785, metadata !DIExpression()), !dbg !787
  %1 = tail call i32 @halide_malloc_alignment() #7, !dbg !788
  %2 = add nsw i32 %1, -1, !dbg !789
  %3 = sext i32 %2 to i64, !dbg !788
  call void @llvm.dbg.value(metadata i64 %3, metadata !786, metadata !DIExpression()), !dbg !787
  %4 = add nsw i64 %3, 16, !dbg !790
  %5 = xor i64 %3, -1, !dbg !791
  %6 = and i64 %4, %5, !dbg !792
  ret i64 %6, !dbg !793
}

declare !dbg !794 extern_weak dso_local i32 @halide_malloc_alignment() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %0) local_unnamed_addr #0 !dbg !797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i64 16, metadata !785, metadata !DIExpression()) #9, !dbg !803
  %2 = tail call i32 @halide_malloc_alignment() #7, !dbg !805
  %3 = add nsw i32 %2, -1, !dbg !806
  %4 = sext i32 %3 to i64, !dbg !805
  call void @llvm.dbg.value(metadata i64 %4, metadata !786, metadata !DIExpression()) #9, !dbg !803
  %5 = add nsw i64 %4, 16, !dbg !807
  %6 = xor i64 %4, -1, !dbg !808
  %7 = and i64 %5, %6, !dbg !809
  %8 = sub nsw i64 0, %7, !dbg !810
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !810
  %10 = bitcast i8* %9 to %"struct.Halide::Runtime::Internal::CacheBlockHeader"*, !dbg !811
  ret %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %10, !dbg !812
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %0, i8* %1, i64 %2, i32 %3, %struct.halide_buffer_t* %4, i32 %5, %struct.halide_buffer_t** %6, i1 zeroext %7, i64 %8) local_unnamed_addr #0 align 2 !dbg !813 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %0, metadata !815, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* %1, metadata !816, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %2, metadata !817, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32 %3, metadata !818, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !819, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32 %5, metadata !820, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %6, metadata !821, metadata !DIExpression()), !dbg !837
  %10 = zext i1 %7 to i8
  call void @llvm.dbg.value(metadata i8 %10, metadata !822, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %8, metadata !823, metadata !DIExpression()), !dbg !837
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 0, !dbg !838
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !dbg !839, !tbaa !840
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 1, !dbg !844
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !dbg !845, !tbaa !846
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 2, !dbg !847
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %13, align 8, !dbg !848, !tbaa !849
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 4, !dbg !850
  store i64 %2, i64* %14, align 8, !dbg !851, !tbaa !852
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 6, !dbg !853
  store i32 %3, i32* %15, align 8, !dbg !854, !tbaa !855
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 7, !dbg !856
  store i32 0, i32* %16, align 4, !dbg !857, !tbaa !858
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 8, !dbg !859
  store i32 %5, i32* %17, align 8, !dbg !860, !tbaa !861
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 5, !dbg !862
  %19 = load i32, i32* %18, align 4, !dbg !862, !tbaa !578
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 9, !dbg !863
  store i32 %19, i32* %20, align 4, !dbg !864, !tbaa !865
  call void @llvm.dbg.value(metadata i64 0, metadata !824, metadata !DIExpression()), !dbg !837
  %21 = zext i32 %5 to i64, !dbg !866
  %22 = mul nuw nsw i64 %21, 56, !dbg !867
  call void @llvm.dbg.value(metadata i64 %22, metadata !824, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %22, metadata !825, metadata !DIExpression()), !dbg !837
  %23 = sext i32 %19 to i64, !dbg !868
  %24 = add i32 %5, 1, !dbg !869
  %25 = zext i32 %24 to i64, !dbg !870
  %26 = shl nuw nsw i64 %25, 4, !dbg !871
  %27 = mul i64 %26, %23, !dbg !872
  %28 = add i64 %27, %22, !dbg !873
  call void @llvm.dbg.value(metadata i64 %28, metadata !824, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i64 %28, metadata !826, metadata !DIExpression()), !dbg !837
  %29 = add i64 %28, %2, !dbg !874
  call void @llvm.dbg.value(metadata i64 %29, metadata !824, metadata !DIExpression()), !dbg !837
  %30 = tail call i8* @halide_malloc(i8* null, i64 %29) #7, !dbg !875
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 3, !dbg !876
  store i8* %30, i8** %31, align 8, !dbg !877, !tbaa !878
  %32 = icmp eq i8* %30, null, !dbg !879
  br i1 %32, label %125, label %33, !dbg !881

33:                                               ; preds = %9
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 11, !dbg !882
  %35 = bitcast %struct.halide_buffer_t** %34 to i8**, !dbg !883
  store i8* %30, i8** %35, align 8, !dbg !883, !tbaa !884
  %36 = getelementptr inbounds i8, i8* %30, i64 %22, !dbg !885
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 10, !dbg !886
  %38 = bitcast %struct.halide_dimension_t** %37 to i8**, !dbg !887
  store i8* %36, i8** %38, align 8, !dbg !887, !tbaa !888
  %39 = getelementptr inbounds i8, i8* %30, i64 %28, !dbg !889
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 5, !dbg !890
  store i8* %39, i8** %40, align 8, !dbg !891, !tbaa !892
  call void @llvm.dbg.value(metadata i64 0, metadata !827, metadata !DIExpression()), !dbg !893
  %41 = load i64, i64* %14, align 8, !dbg !894, !tbaa !852
  %42 = icmp eq i64 %41, 0, !dbg !896
  br i1 %42, label %47, label %43, !dbg !897

43:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i64 0, metadata !827, metadata !DIExpression()), !dbg !893
  %44 = load i8, i8* %1, align 1, !dbg !898, !tbaa !480
  store i8 %44, i8* %39, align 1, !dbg !900, !tbaa !480
  call void @llvm.dbg.value(metadata i64 1, metadata !827, metadata !DIExpression()), !dbg !893
  %45 = load i64, i64* %14, align 8, !dbg !894, !tbaa !852
  %46 = icmp ugt i64 %45, 1, !dbg !896
  br i1 %46, label %52, label %47, !dbg !897, !llvm.loop !901

47:                                               ; preds = %52, %43, %33
  call void @llvm.dbg.value(metadata i32 0, metadata !829, metadata !DIExpression()), !dbg !903
  %48 = load i32, i32* %20, align 4, !dbg !904, !tbaa !865
  %49 = icmp sgt i32 %48, 0, !dbg !906
  br i1 %49, label %50, label %61, !dbg !907

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 6
  br label %64, !dbg !907

52:                                               ; preds = %43, %52
  %53 = phi i64 [ %58, %52 ], [ 1, %43 ]
  %54 = load i8*, i8** %40, align 8, !dbg !908, !tbaa !892
  call void @llvm.dbg.value(metadata i64 %53, metadata !827, metadata !DIExpression()), !dbg !893
  %55 = getelementptr inbounds i8, i8* %1, i64 %53, !dbg !898
  %56 = load i8, i8* %55, align 1, !dbg !898, !tbaa !480
  %57 = getelementptr inbounds i8, i8* %54, i64 %53, !dbg !908
  store i8 %56, i8* %57, align 1, !dbg !900, !tbaa !480
  %58 = add nuw i64 %53, 1, !dbg !909
  call void @llvm.dbg.value(metadata i64 %58, metadata !827, metadata !DIExpression()), !dbg !893
  %59 = load i64, i64* %14, align 8, !dbg !894, !tbaa !852
  %60 = icmp ult i64 %58, %59, !dbg !896
  br i1 %60, label %52, label %47, !dbg !897, !llvm.loop !901

61:                                               ; preds = %64, %47
  call void @llvm.dbg.value(metadata i32 0, metadata !831, metadata !DIExpression()), !dbg !910
  %62 = load i32, i32* %17, align 8, !dbg !911, !tbaa !861
  %63 = icmp eq i32 %62, 0, !dbg !912
  br i1 %63, label %80, label %83, !dbg !913

64:                                               ; preds = %50, %64
  %65 = phi i64 [ 0, %50 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !829, metadata !DIExpression()), !dbg !903
  %66 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %51, align 8, !dbg !914, !tbaa !581
  %67 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %66, i64 %65, !dbg !916
  %68 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %37, align 8, !dbg !917, !tbaa !888
  %69 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %68, i64 %65, !dbg !917
  %70 = bitcast %struct.halide_dimension_t* %69 to i8*, !dbg !918
  %71 = bitcast %struct.halide_dimension_t* %67 to i8*, !dbg !918
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %70, i8* nonnull align 4 dereferenceable(16) %71, i64 16, i1 false), !dbg !918, !tbaa.struct !919
  %72 = add nuw nsw i64 %65, 1, !dbg !921
  call void @llvm.dbg.value(metadata i64 %72, metadata !829, metadata !DIExpression()), !dbg !903
  %73 = load i32, i32* %20, align 4, !dbg !904, !tbaa !865
  %74 = sext i32 %73 to i64, !dbg !906
  %75 = icmp slt i64 %72, %74, !dbg !906
  br i1 %75, label %64, label %61, !dbg !907, !llvm.loop !922

76:                                               ; preds = %109, %101, %83
  call void @llvm.dbg.value(metadata i64 %92, metadata !831, metadata !DIExpression()), !dbg !910
  %77 = load i32, i32* %17, align 8, !dbg !911, !tbaa !861
  %78 = zext i32 %77 to i64, !dbg !912
  %79 = icmp ult i64 %92, %78, !dbg !912
  br i1 %79, label %83, label %80, !dbg !913, !llvm.loop !924

80:                                               ; preds = %76, %61
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 13, !dbg !926
  store i8 %10, i8* %81, align 8, !dbg !927, !tbaa !928
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 12, !dbg !929
  store i64 %8, i64* %82, align 8, !dbg !930, !tbaa !931
  br label %125, !dbg !932

83:                                               ; preds = %61, %76
  %84 = phi i64 [ %92, %76 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !831, metadata !DIExpression()), !dbg !910
  %85 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, i64 %84, !dbg !933
  %86 = bitcast %struct.halide_buffer_t** %85 to i8**, !dbg !933
  %87 = load i8*, i8** %86, align 8, !dbg !933, !tbaa !934
  %88 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %34, align 8, !dbg !935, !tbaa !884
  %89 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %88, i64 %84, !dbg !935
  %90 = bitcast %struct.halide_buffer_t* %89 to i8*, !dbg !936
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %90, i8* nonnull align 8 dereferenceable(56) %87, i64 56, i1 false), !dbg !936, !tbaa.struct !937
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %37, align 8, !dbg !940, !tbaa !888
  %92 = add nuw nsw i64 %84, 1, !dbg !941
  %93 = load i32, i32* %20, align 4, !dbg !942, !tbaa !865
  %94 = trunc i64 %92 to i32, !dbg !943
  %95 = mul i32 %93, %94, !dbg !943
  %96 = zext i32 %95 to i64, !dbg !944
  %97 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %96, !dbg !944
  %98 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %34, align 8, !dbg !945, !tbaa !884
  %99 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %98, i64 %84, i32 6, !dbg !946
  store %struct.halide_dimension_t* %97, %struct.halide_dimension_t** %99, align 8, !dbg !947, !tbaa !581
  call void @llvm.dbg.value(metadata i32 0, metadata !833, metadata !DIExpression()), !dbg !948
  %100 = icmp sgt i32 %93, 0, !dbg !949
  br i1 %100, label %101, label %76, !dbg !951

101:                                              ; preds = %83
  call void @llvm.dbg.value(metadata i64 0, metadata !833, metadata !DIExpression()), !dbg !948
  %102 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 8, !dbg !952, !tbaa !934
  %103 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %102, i64 0, i32 6, !dbg !954
  %104 = bitcast %struct.halide_dimension_t** %103 to i8**, !dbg !954
  %105 = load i8*, i8** %104, align 8, !dbg !954, !tbaa !581
  %106 = bitcast %struct.halide_dimension_t* %97 to i8*, !dbg !955
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %106, i8* nonnull align 4 dereferenceable(16) %105, i64 16, i1 false), !dbg !955, !tbaa.struct !919
  call void @llvm.dbg.value(metadata i64 1, metadata !833, metadata !DIExpression()), !dbg !948
  %107 = load i32, i32* %20, align 4, !dbg !956, !tbaa !865
  %108 = icmp sgt i32 %107, 1, !dbg !949
  br i1 %108, label %109, label %76, !dbg !951, !llvm.loop !957

109:                                              ; preds = %101, %109
  %110 = phi i64 [ %121, %109 ], [ 1, %101 ]
  %111 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %34, align 8, !dbg !959, !tbaa !884
  %112 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %111, i64 %84, i32 6
  %113 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %112, align 8, !dbg !960, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %110, metadata !833, metadata !DIExpression()), !dbg !948
  %114 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 8, !dbg !952, !tbaa !934
  %115 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 6, !dbg !954
  %116 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %115, align 8, !dbg !954, !tbaa !581
  %117 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %116, i64 %110, !dbg !952
  %118 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %113, i64 %110, !dbg !959
  %119 = bitcast %struct.halide_dimension_t* %118 to i8*, !dbg !955
  %120 = bitcast %struct.halide_dimension_t* %117 to i8*, !dbg !955
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %119, i8* nonnull align 4 dereferenceable(16) %120, i64 16, i1 false), !dbg !955, !tbaa.struct !919
  %121 = add nuw nsw i64 %110, 1, !dbg !961
  call void @llvm.dbg.value(metadata i64 %121, metadata !833, metadata !DIExpression()), !dbg !948
  %122 = load i32, i32* %20, align 4, !dbg !956, !tbaa !865
  %123 = sext i32 %122 to i64, !dbg !949
  %124 = icmp slt i64 %121, %123, !dbg !949
  br i1 %124, label %109, label %76, !dbg !951, !llvm.loop !957

125:                                              ; preds = %9, %80
  %126 = xor i1 %32, true, !dbg !962
  ret i1 %126, !dbg !962
}

declare !dbg !963 dso_local i8* @halide_malloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %0) local_unnamed_addr #0 align 2 !dbg !966 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %0, metadata !968, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 0, metadata !969, metadata !DIExpression()), !dbg !972
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 8, !dbg !973
  %3 = load i32, i32* %2, align 8, !dbg !973, !tbaa !861
  %4 = icmp eq i32 %3, 0, !dbg !975
  br i1 %4, label %7, label %5, !dbg !976

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 11
  br label %10, !dbg !976

7:                                                ; preds = %10, %1
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 3, !dbg !977
  %9 = load i8*, i8** %8, align 8, !dbg !977, !tbaa !878
  tail call void @halide_free(i8* null, i8* %9) #7, !dbg !978
  ret void, !dbg !979

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %20, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !969, metadata !DIExpression()), !dbg !972
  %12 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 8, !dbg !980, !tbaa !884
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %12, i64 %11, !dbg !980
  %14 = tail call i32 @halide_device_free(i8* null, %struct.halide_buffer_t* %13) #7, !dbg !982
  %15 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 8, !dbg !983, !tbaa !884
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %15, i64 %11, i32 2, !dbg !984
  %17 = load i8*, i8** %16, align 8, !dbg !984, !tbaa !534
  %18 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %17) #8, !dbg !985
  %19 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %18 to i8*, !dbg !985
  tail call void @halide_free(i8* null, i8* %19) #7, !dbg !986
  %20 = add nuw nsw i64 %11, 1, !dbg !987
  call void @llvm.dbg.value(metadata i64 %20, metadata !969, metadata !DIExpression()), !dbg !972
  %21 = load i32, i32* %2, align 8, !dbg !973, !tbaa !861
  %22 = zext i32 %21 to i64, !dbg !975
  %23 = icmp ult i64 %20, %22, !dbg !975
  br i1 %23, label %10, label %7, !dbg !976, !llvm.loop !988
}

declare !dbg !990 dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

declare !dbg !991 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhm(i8* %0, i64 %1) local_unnamed_addr #0 !dbg !994 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !998, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 %1, metadata !999, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i32 5381, metadata !1000, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata i64 0, metadata !1001, metadata !DIExpression()), !dbg !1004
  %3 = icmp eq i64 %1, 0, !dbg !1005
  br i1 %3, label %4, label %6, !dbg !1007

4:                                                ; preds = %6, %2
  %5 = phi i32 [ 5381, %2 ], [ %13, %6 ], !dbg !1003
  ret i32 %5, !dbg !1008

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %14, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %13, %6 ], [ 5381, %2 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1001, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i32 %8, metadata !1000, metadata !DIExpression()), !dbg !1003
  %9 = mul i32 %8, 33, !dbg !1009
  %10 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1011
  %11 = load i8, i8* %10, align 1, !dbg !1011, !tbaa !480
  %12 = zext i8 %11 to i32, !dbg !1011
  %13 = add i32 %9, %12, !dbg !1012
  call void @llvm.dbg.value(metadata i32 %13, metadata !1000, metadata !DIExpression()), !dbg !1003
  %14 = add nuw i64 %7, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %14, metadata !1001, metadata !DIExpression()), !dbg !1004
  %15 = icmp eq i64 %14, %1, !dbg !1005
  br i1 %15, label %4, label %6, !dbg !1007, !llvm.loop !1014
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal11prune_cacheEv() local_unnamed_addr #0 !dbg !1016 {
  %1 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1030, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %1, metadata !1020, metadata !DIExpression()), !dbg !1031
  %2 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1032, !tbaa !378
  %3 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !dbg !1033, !tbaa !378
  %4 = icmp sgt i64 %2, %3, !dbg !1034
  %5 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %1, null, !dbg !1035
  %6 = and i1 %5, %4, !dbg !1035
  br i1 %6, label %7, label %144, !dbg !1036

7:                                                ; preds = %0, %138
  %8 = phi i64 [ %139, %138 ], [ %3, %0 ]
  %9 = phi i64 [ %140, %138 ], [ %2, %0 ]
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %12, %138 ], [ %1, %0 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %10, metadata !1020, metadata !DIExpression()), !dbg !1031
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 1, !dbg !1037
  %12 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !dbg !1037, !tbaa !846
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %12, metadata !1021, metadata !DIExpression()), !dbg !1038
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 7, !dbg !1039
  %14 = load i32, i32* %13, align 4, !dbg !1039, !tbaa !858
  %15 = icmp eq i32 %14, 0, !dbg !1040
  br i1 %15, label %16, label %138, !dbg !1041

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 6, !dbg !1042
  %18 = load i32, i32* %17, align 8, !dbg !1042, !tbaa !855
  call void @llvm.dbg.value(metadata i32 %18, metadata !1023, metadata !DIExpression()), !dbg !1043
  %19 = and i32 %18, 255, !dbg !1044
  call void @llvm.dbg.value(metadata i32 %19, metadata !1026, metadata !DIExpression()), !dbg !1043
  %20 = zext i32 %19 to i64, !dbg !1045
  %21 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %20, !dbg !1045
  %22 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %21, align 8, !dbg !1045, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %22, metadata !1027, metadata !DIExpression()), !dbg !1043
  %23 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %10, !dbg !1046
  br i1 %23, label %24, label %27, !dbg !1048

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 0, !dbg !1049
  %26 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !dbg !1049, !tbaa !840
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** %21, align 8, !dbg !1051, !tbaa !934
  br label %39, !dbg !1052

27:                                               ; preds = %16, %30
  %28 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %32, %30 ], [ %22, %16 ], !dbg !1043
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %28, metadata !1027, metadata !DIExpression()), !dbg !1043
  %29 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %28, null, !dbg !1053
  br i1 %29, label %34, label %30, !dbg !1055

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 0, !dbg !1056
  %32 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %31, align 8, !dbg !1056, !tbaa !840
  %33 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %32, %10, !dbg !1057
  br i1 %33, label %35, label %27, !dbg !1058, !llvm.loop !1059

34:                                               ; preds = %27
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1061
  tail call void @abort() #7, !dbg !1061
  br label %35, !dbg !1061

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 0, !dbg !1065
  %37 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %36, align 8, !dbg !1065, !tbaa !840
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 0, !dbg !1066
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %37, %"struct.Halide::Runtime::Internal::CacheEntry"** %38, align 8, !dbg !1067, !tbaa !840
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1068, !tbaa !934
  %41 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %40, %10, !dbg !1070
  br i1 %41, label %42, label %43, !dbg !1071

42:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1072, !tbaa !934
  br label %43, !dbg !1074

43:                                               ; preds = %42, %39
  %44 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null, !dbg !1075
  br i1 %44, label %49, label %45, !dbg !1077

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 2, !dbg !1078
  %47 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !dbg !1078, !tbaa !849
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %12, i64 0, i32 2, !dbg !1080
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %47, %"struct.Halide::Runtime::Internal::CacheEntry"** %48, align 8, !dbg !1081, !tbaa !849
  br label %49, !dbg !1082

49:                                               ; preds = %45, %43
  %50 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1083, !tbaa !934
  %51 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %50, %10, !dbg !1085
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 2
  %53 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %52, align 8, !dbg !1043, !tbaa !849
  br i1 %51, label %54, label %55, !dbg !1086

54:                                               ; preds = %49
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %53, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1087, !tbaa !934
  br label %55, !dbg !1089

55:                                               ; preds = %49, %54
  %56 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %53, null, !dbg !1090
  br i1 %56, label %59, label %57, !dbg !1092

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 2, !dbg !1093
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** %58, align 8, !dbg !1094, !tbaa !849
  br label %59, !dbg !1096

59:                                               ; preds = %57, %55
  call void @llvm.dbg.value(metadata i32 0, metadata !1028, metadata !DIExpression()), !dbg !1097
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 8, !dbg !1098
  %61 = load i32, i32* %60, align 8, !dbg !1098, !tbaa !861
  %62 = icmp eq i32 %61, 0, !dbg !1100
  br i1 %62, label %69, label %63, !dbg !1101

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 11
  %65 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %64, align 8, !tbaa !884
  %66 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !378
  %67 = zext i32 %61 to i64, !dbg !1100
  br label %73, !dbg !1101

68:                                               ; preds = %125
  store i64 %135, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1102, !tbaa !378
  br label %69, !dbg !1101

69:                                               ; preds = %68, %59
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %10) #8, !dbg !1104
  %70 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %10 to i8*, !dbg !1105
  tail call void @halide_free(i8* null, i8* nonnull %70) #7, !dbg !1106
  %71 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1032, !tbaa !378
  %72 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !dbg !1033, !tbaa !378
  br label %138, !dbg !1107

73:                                               ; preds = %63, %125
  %74 = phi i64 [ 0, %63 ], [ %136, %125 ]
  %75 = phi i64 [ %66, %63 ], [ %135, %125 ]
  call void @llvm.dbg.value(metadata i64 %74, metadata !1028, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1108, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1113, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i64 0, metadata !1116, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 0, metadata !1117, metadata !DIExpression()), !dbg !1121
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 5, !dbg !1122
  %77 = load i32, i32* %76, align 4, !dbg !1122, !tbaa !578
  %78 = icmp sgt i32 %77, 0, !dbg !1124
  br i1 %78, label %82, label %79, !dbg !1125

79:                                               ; preds = %73
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1126
  %80 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 4, i32 1, !dbg !1128
  %81 = load i8, i8* %80, align 1, !dbg !1128, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1129, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1137
  br label %125, !dbg !1138

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 6
  %84 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %83, align 8, !tbaa !581
  %85 = zext i32 %77 to i64, !dbg !1124
  br label %86, !dbg !1125

86:                                               ; preds = %100, %82
  %87 = phi i64 [ 0, %82 ], [ %102, %100 ]
  %88 = phi i64 [ 0, %82 ], [ %101, %100 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !1117, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %88, metadata !1116, metadata !DIExpression()), !dbg !1119
  %89 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %87, i32 2, !dbg !1139
  %90 = load i32, i32* %89, align 4, !dbg !1139, !tbaa !589
  %91 = icmp sgt i32 %90, 0, !dbg !1142
  br i1 %91, label %92, label %100, !dbg !1143

92:                                               ; preds = %86
  %93 = zext i32 %90 to i64, !dbg !1144
  %94 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %87, i32 1, !dbg !1146
  %95 = load i32, i32* %94, align 4, !dbg !1146, !tbaa !654
  %96 = add nsw i32 %95, -1, !dbg !1147
  %97 = sext i32 %96 to i64, !dbg !1148
  %98 = mul nsw i64 %97, %93, !dbg !1149
  %99 = add nsw i64 %98, %88, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %99, metadata !1116, metadata !DIExpression()), !dbg !1119
  br label %100, !dbg !1151

100:                                              ; preds = %92, %86
  %101 = phi i64 [ %99, %92 ], [ %88, %86 ], !dbg !1119
  call void @llvm.dbg.value(metadata i64 %101, metadata !1116, metadata !DIExpression()), !dbg !1119
  %102 = add nuw nsw i64 %87, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %102, metadata !1117, metadata !DIExpression()), !dbg !1121
  %103 = icmp eq i64 %102, %85, !dbg !1124
  br i1 %103, label %104, label %86, !dbg !1125, !llvm.loop !1153

104:                                              ; preds = %100
  call void @llvm.dbg.value(metadata i64 %101, metadata !1116, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1119
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1126
  %105 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 4, i32 1, !dbg !1128
  %106 = load i8, i8* %105, align 1, !dbg !1128, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1129, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1137
  br label %107, !dbg !1138

107:                                              ; preds = %121, %104
  %108 = phi i64 [ 0, %104 ], [ %123, %121 ]
  %109 = phi i64 [ 0, %104 ], [ %122, %121 ]
  call void @llvm.dbg.value(metadata i64 %108, metadata !1133, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i64 %109, metadata !1132, metadata !DIExpression()), !dbg !1135
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %108, i32 2, !dbg !1155
  %111 = load i32, i32* %110, align 4, !dbg !1155, !tbaa !589
  %112 = icmp slt i32 %111, 0, !dbg !1159
  br i1 %112, label %113, label %121, !dbg !1160

113:                                              ; preds = %107
  %114 = sext i32 %111 to i64, !dbg !1161
  %115 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %108, i32 1, !dbg !1163
  %116 = load i32, i32* %115, align 4, !dbg !1163, !tbaa !654
  %117 = add nsw i32 %116, -1, !dbg !1164
  %118 = sext i32 %117 to i64, !dbg !1165
  %119 = mul nsw i64 %118, %114, !dbg !1166
  %120 = add nsw i64 %119, %109, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %120, metadata !1132, metadata !DIExpression()), !dbg !1135
  br label %121, !dbg !1168

121:                                              ; preds = %113, %107
  %122 = phi i64 [ %120, %113 ], [ %109, %107 ], !dbg !1135
  call void @llvm.dbg.value(metadata i64 %122, metadata !1132, metadata !DIExpression()), !dbg !1135
  %123 = add nuw nsw i64 %108, 1, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %123, metadata !1133, metadata !DIExpression()), !dbg !1137
  %124 = icmp eq i64 %123, %85, !dbg !1170
  br i1 %124, label %125, label %107, !dbg !1138, !llvm.loop !1171

125:                                              ; preds = %121, %79
  %126 = phi i8 [ %81, %79 ], [ %106, %121 ]
  %127 = phi i64 [ 0, %79 ], [ %101, %121 ]
  %128 = phi i64 [ 0, %79 ], [ %122, %121 ], !dbg !1135
  %129 = zext i8 %126 to i64, !dbg !1128
  %130 = add nuw nsw i64 %129, 7, !dbg !1173
  %131 = lshr i64 %130, 3, !dbg !1174
  %132 = xor i64 %127, -1, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %127, metadata !1116, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1119
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1176
  %133 = add i64 %128, %132, !dbg !1178
  %134 = mul i64 %133, %131, !dbg !1178
  %135 = add i64 %134, %75, !dbg !1102
  %136 = add nuw nsw i64 %74, 1, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %136, metadata !1028, metadata !DIExpression()), !dbg !1097
  %137 = icmp eq i64 %136, %67, !dbg !1100
  br i1 %137, label %68, label %73, !dbg !1101, !llvm.loop !1180

138:                                              ; preds = %69, %7
  %139 = phi i64 [ %72, %69 ], [ %8, %7 ], !dbg !1033
  %140 = phi i64 [ %71, %69 ], [ %9, %7 ], !dbg !1032
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %12, metadata !1020, metadata !DIExpression()), !dbg !1031
  %141 = icmp sgt i64 %140, %139, !dbg !1034
  %142 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null, !dbg !1035
  %143 = and i1 %142, %141, !dbg !1035
  br i1 %143, label %7, label %144, !dbg !1036, !llvm.loop !1182

144:                                              ; preds = %138, %0
  ret void, !dbg !1184
}

declare !dbg !1185 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1188 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_set_size(i64 %0) local_unnamed_addr #4 !dbg !1189 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1193, metadata !DIExpression()), !dbg !1207
  %2 = icmp eq i64 %0, 0, !dbg !1208
  %3 = select i1 %2, i64 1048576, i64 %0, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %3, metadata !1193, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1211, metadata !DIExpression()) #9, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1214, metadata !DIExpression()) #9, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1194, metadata !DIExpression()), !dbg !1207
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1218
  store i64 %3, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !dbg !1220, !tbaa !378
  tail call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #8, !dbg !1221
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1222, metadata !DIExpression()) #9, !dbg !1225
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1227
  ret void, !dbg !1229
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_memoization_cache_lookup(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5) local_unnamed_addr #4 !dbg !1230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1234, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i8* %1, metadata !1235, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %2, metadata !1236, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1237, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %4, metadata !1238, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %5, metadata !1239, metadata !DIExpression()), !dbg !1267
  %7 = sext i32 %2 to i64, !dbg !1268
  %8 = tail call i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhm(i8* %1, i64 %7) #8, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %8, metadata !1240, metadata !DIExpression()), !dbg !1267
  %9 = and i32 %8, 255, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %9, metadata !1241, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1211, metadata !DIExpression()) #9, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1214, metadata !DIExpression()) #9, !dbg !1271
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1242, metadata !DIExpression()), !dbg !1267
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1273
  %10 = zext i32 %9 to i64, !dbg !1274
  %11 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %10, !dbg !1274
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1243, metadata !DIExpression()), !dbg !1267
  %12 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !dbg !1267, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %12, metadata !1243, metadata !DIExpression()), !dbg !1267
  %13 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null, !dbg !1275
  br i1 %13, label %17, label %14, !dbg !1276

14:                                               ; preds = %6
  %15 = icmp sgt i32 %4, 0
  %16 = sext i32 %4 to i64, !dbg !1276
  br label %21, !dbg !1276

17:                                               ; preds = %107, %6
  call void @llvm.dbg.value(metadata i32 0, metadata !1257, metadata !DIExpression()), !dbg !1277
  %18 = icmp sgt i32 %4, 0, !dbg !1278
  br i1 %18, label %19, label %218, !dbg !1279

19:                                               ; preds = %17
  %20 = zext i32 %4 to i64, !dbg !1278
  br label %111, !dbg !1279

21:                                               ; preds = %14, %107
  %22 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %12, %14 ], [ %109, %107 ]
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 6, !dbg !1280
  %24 = load i32, i32* %23, align 8, !dbg !1280, !tbaa !855
  %25 = icmp eq i32 %24, %8, !dbg !1281
  br i1 %25, label %26, label %107, !dbg !1282

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 4, !dbg !1283
  %28 = load i64, i64* %27, align 8, !dbg !1283, !tbaa !852
  %29 = icmp eq i64 %28, %7, !dbg !1284
  br i1 %29, label %30, label %107, !dbg !1285

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 5, !dbg !1286
  %32 = load i8*, i8** %31, align 8, !dbg !1286, !tbaa !892
  %33 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %32, i8* %1, i64 %7) #8, !dbg !1287
  br i1 %33, label %34, label %107, !dbg !1288

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 10, !dbg !1289
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !dbg !1289, !tbaa !888
  %37 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %36) #8, !dbg !1290
  br i1 %37, label %38, label %107, !dbg !1291

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 8, !dbg !1292
  %40 = load i32, i32* %39, align 8, !dbg !1292, !tbaa !861
  %41 = icmp eq i32 %40, %4, !dbg !1293
  br i1 %41, label %42, label %107, !dbg !1294

42:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i8 undef, metadata !1244, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 0, metadata !1248, metadata !DIExpression()), !dbg !1296
  br i1 %15, label %43, label %57, !dbg !1297

43:                                               ; preds = %42
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 11
  br label %46, !dbg !1297

45:                                               ; preds = %46
  br i1 %53, label %57, label %107, !dbg !1298

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %54, %46 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1248, metadata !DIExpression()), !dbg !1296
  %48 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %47, !dbg !1299
  %49 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %48, align 8, !dbg !1299, !tbaa !934
  %50 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %44, align 8, !dbg !1302, !tbaa !884
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %50, i64 %47, i32 6, !dbg !1303
  %52 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %51, align 8, !dbg !1303, !tbaa !581
  %53 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %49, %struct.halide_dimension_t* %52) #8, !dbg !1304
  call void @llvm.dbg.value(metadata i1 %53, metadata !1244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1295
  %54 = add nuw nsw i64 %47, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i8 undef, metadata !1244, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %54, metadata !1248, metadata !DIExpression()), !dbg !1296
  %55 = icmp slt i64 %54, %16, !dbg !1306
  %56 = and i1 %53, %55, !dbg !1306
  br i1 %56, label %46, label %45, !dbg !1297, !llvm.loop !1307

57:                                               ; preds = %42, %45
  %58 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1309, !tbaa !934
  %59 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %58, !dbg !1311
  br i1 %59, label %93, label %60, !dbg !1312

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 1, !dbg !1313
  %62 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1313, !tbaa !846
  %63 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %62, null, !dbg !1313
  br i1 %63, label %64, label %65, !dbg !1317

64:                                               ; preds = %60
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1318
  tail call void @abort() #7, !dbg !1318
  br label %65, !dbg !1318

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 2, !dbg !1320
  %67 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 8, !dbg !1320, !tbaa !849
  %68 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %67, null, !dbg !1322
  br i1 %68, label %73, label %69, !dbg !1323

69:                                               ; preds = %65
  %70 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1324, !tbaa !846
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %67, i64 0, i32 1, !dbg !1326
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %70, %"struct.Halide::Runtime::Internal::CacheEntry"** %71, align 8, !dbg !1327, !tbaa !846
  %72 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1328, !tbaa !846
  br label %79, !dbg !1331

73:                                               ; preds = %65
  %74 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1332, !tbaa !934
  %75 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %74, %22, !dbg !1332
  br i1 %75, label %77, label %76, !dbg !1336

76:                                               ; preds = %73
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1337
  tail call void @abort() #7, !dbg !1337
  br label %77, !dbg !1337

77:                                               ; preds = %76, %73
  %78 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1339, !tbaa !846
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %78, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1340, !tbaa !934
  br label %79

79:                                               ; preds = %69, %77
  %80 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %72, %69 ], [ %78, %77 ], !dbg !1328
  %81 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %80, null, !dbg !1328
  br i1 %81, label %82, label %84, !dbg !1341

82:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1342
  tail call void @abort() #7, !dbg !1342
  %83 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1344, !tbaa !846
  br label %84, !dbg !1342

84:                                               ; preds = %82, %79
  %85 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %83, %82 ], [ %80, %79 ], !dbg !1344
  %86 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 8, !dbg !1345, !tbaa !849
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i64 0, i32 2, !dbg !1346
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %86, %"struct.Halide::Runtime::Internal::CacheEntry"** %87, align 8, !dbg !1347, !tbaa !849
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1348, !tbaa !846
  %88 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1349, !tbaa !934
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %88, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 8, !dbg !1350, !tbaa !849
  %89 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %88, null, !dbg !1351
  br i1 %89, label %92, label %90, !dbg !1353

90:                                               ; preds = %84
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %88, i64 0, i32 1, !dbg !1354
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %"struct.Halide::Runtime::Internal::CacheEntry"** %91, align 8, !dbg !1356, !tbaa !846
  br label %92, !dbg !1357

92:                                               ; preds = %90, %84
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1358, !tbaa !934
  br label %93, !dbg !1359

93:                                               ; preds = %92, %57
  call void @llvm.dbg.value(metadata i32 0, metadata !1250, metadata !DIExpression()), !dbg !1360
  br i1 %15, label %94, label %214, !dbg !1361

94:                                               ; preds = %93
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 11
  %96 = zext i32 %4 to i64, !dbg !1362
  br label %97, !dbg !1361

97:                                               ; preds = %94, %97
  %98 = phi i64 [ 0, %94 ], [ %105, %97 ]
  call void @llvm.dbg.value(metadata i64 %98, metadata !1250, metadata !DIExpression()), !dbg !1360
  %99 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %98, !dbg !1363
  %100 = bitcast %struct.halide_buffer_t** %99 to i8**, !dbg !1363
  %101 = load i8*, i8** %100, align 8, !dbg !1363, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1254, metadata !DIExpression()), !dbg !1364
  %102 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %95, align 8, !dbg !1365, !tbaa !884
  %103 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %102, i64 %98, !dbg !1366
  %104 = bitcast %struct.halide_buffer_t* %103 to i8*, !dbg !1367
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %101, i8* nonnull align 8 dereferenceable(56) %104, i64 56, i1 false), !dbg !1367, !tbaa.struct !937
  %105 = add nuw nsw i64 %98, 1, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %105, metadata !1250, metadata !DIExpression()), !dbg !1360
  %106 = icmp eq i64 %105, %96, !dbg !1362
  br i1 %106, label %214, label %97, !dbg !1361, !llvm.loop !1369

107:                                              ; preds = %45, %38, %34, %30, %26, %21
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 0, !dbg !1371
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1243, metadata !DIExpression()), !dbg !1267
  %109 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %108, align 8, !dbg !1267, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %109, metadata !1243, metadata !DIExpression()), !dbg !1267
  %110 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %109, null, !dbg !1275
  br i1 %110, label %17, label %21, !dbg !1276, !llvm.loop !1372

111:                                              ; preds = %19, %200
  %112 = phi i64 [ 0, %19 ], [ %212, %200 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !1257, metadata !DIExpression()), !dbg !1277
  %113 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %112, !dbg !1374
  %114 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %113, align 8, !dbg !1374, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !1259, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !1108, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !1113, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 0, metadata !1116, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 0, metadata !1117, metadata !DIExpression()), !dbg !1380
  %115 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 5, !dbg !1381
  %116 = load i32, i32* %115, align 4, !dbg !1381, !tbaa !578
  %117 = icmp sgt i32 %116, 0, !dbg !1382
  br i1 %117, label %121, label %118, !dbg !1383

118:                                              ; preds = %111
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1384
  %119 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 4, i32 1, !dbg !1386
  %120 = load i8, i8* %119, align 1, !dbg !1386, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !1129, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1389
  br label %164, !dbg !1390

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 6
  %123 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %122, align 8, !tbaa !581
  %124 = zext i32 %116 to i64, !dbg !1382
  br label %125, !dbg !1383

125:                                              ; preds = %139, %121
  %126 = phi i64 [ 0, %121 ], [ %141, %139 ]
  %127 = phi i64 [ 0, %121 ], [ %140, %139 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !1117, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %127, metadata !1116, metadata !DIExpression()), !dbg !1378
  %128 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %126, i32 2, !dbg !1391
  %129 = load i32, i32* %128, align 4, !dbg !1391, !tbaa !589
  %130 = icmp sgt i32 %129, 0, !dbg !1392
  br i1 %130, label %131, label %139, !dbg !1393

131:                                              ; preds = %125
  %132 = zext i32 %129 to i64, !dbg !1394
  %133 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %126, i32 1, !dbg !1395
  %134 = load i32, i32* %133, align 4, !dbg !1395, !tbaa !654
  %135 = add nsw i32 %134, -1, !dbg !1396
  %136 = sext i32 %135 to i64, !dbg !1397
  %137 = mul nsw i64 %136, %132, !dbg !1398
  %138 = add nsw i64 %137, %127, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %138, metadata !1116, metadata !DIExpression()), !dbg !1378
  br label %139, !dbg !1400

139:                                              ; preds = %131, %125
  %140 = phi i64 [ %138, %131 ], [ %127, %125 ], !dbg !1378
  call void @llvm.dbg.value(metadata i64 %140, metadata !1116, metadata !DIExpression()), !dbg !1378
  %141 = add nuw nsw i64 %126, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %141, metadata !1117, metadata !DIExpression()), !dbg !1380
  %142 = icmp eq i64 %141, %124, !dbg !1382
  br i1 %142, label %143, label %125, !dbg !1383, !llvm.loop !1402

143:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i64 %140, metadata !1116, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1378
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1384
  %144 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 4, i32 1, !dbg !1386
  %145 = load i8, i8* %144, align 1, !dbg !1386, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !1129, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1389
  br label %146, !dbg !1390

146:                                              ; preds = %160, %143
  %147 = phi i64 [ 0, %143 ], [ %162, %160 ]
  %148 = phi i64 [ 0, %143 ], [ %161, %160 ]
  call void @llvm.dbg.value(metadata i64 %147, metadata !1133, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i64 %148, metadata !1132, metadata !DIExpression()), !dbg !1387
  %149 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %147, i32 2, !dbg !1404
  %150 = load i32, i32* %149, align 4, !dbg !1404, !tbaa !589
  %151 = icmp slt i32 %150, 0, !dbg !1405
  br i1 %151, label %152, label %160, !dbg !1406

152:                                              ; preds = %146
  %153 = sext i32 %150 to i64, !dbg !1407
  %154 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %147, i32 1, !dbg !1408
  %155 = load i32, i32* %154, align 4, !dbg !1408, !tbaa !654
  %156 = add nsw i32 %155, -1, !dbg !1409
  %157 = sext i32 %156 to i64, !dbg !1410
  %158 = mul nsw i64 %157, %153, !dbg !1411
  %159 = add nsw i64 %158, %148, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %159, metadata !1132, metadata !DIExpression()), !dbg !1387
  br label %160, !dbg !1413

160:                                              ; preds = %152, %146
  %161 = phi i64 [ %159, %152 ], [ %148, %146 ], !dbg !1387
  call void @llvm.dbg.value(metadata i64 %161, metadata !1132, metadata !DIExpression()), !dbg !1387
  %162 = add nuw nsw i64 %147, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %162, metadata !1133, metadata !DIExpression()), !dbg !1389
  %163 = icmp eq i64 %162, %124, !dbg !1415
  br i1 %163, label %164, label %146, !dbg !1390, !llvm.loop !1416

164:                                              ; preds = %160, %118
  %165 = phi i8 [ %120, %118 ], [ %145, %160 ]
  %166 = phi i64 [ 0, %118 ], [ %140, %160 ]
  %167 = phi i64 [ 0, %118 ], [ %161, %160 ], !dbg !1387
  %168 = zext i8 %165 to i64, !dbg !1386
  %169 = add nuw nsw i64 %168, 7, !dbg !1418
  %170 = lshr i64 %169, 3, !dbg !1419
  %171 = add nsw i64 %166, 1, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %171, metadata !1116, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %114, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1421
  %172 = sub i64 %171, %167, !dbg !1423
  %173 = mul i64 %172, %170, !dbg !1423
  call void @llvm.dbg.value(metadata i64 16, metadata !785, metadata !DIExpression()) #9, !dbg !1424
  %174 = tail call i32 @halide_malloc_alignment() #7, !dbg !1426
  %175 = add nsw i32 %174, -1, !dbg !1427
  %176 = sext i32 %175 to i64, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %176, metadata !786, metadata !DIExpression()) #9, !dbg !1424
  %177 = add nsw i64 %176, 16, !dbg !1428
  %178 = xor i64 %176, -1, !dbg !1429
  %179 = and i64 %177, %178, !dbg !1430
  %180 = add i64 %179, %173, !dbg !1431
  %181 = tail call i8* @halide_malloc(i8* %0, i64 %180) #7, !dbg !1432
  %182 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 2, !dbg !1433
  store i8* %181, i8** %182, align 8, !dbg !1434, !tbaa !534
  %183 = icmp eq i8* %181, null, !dbg !1435
  br i1 %183, label %184, label %200, !dbg !1436

184:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 %112, metadata !1262, metadata !DIExpression()), !dbg !1437
  %185 = icmp eq i64 %112, 0, !dbg !1438
  br i1 %185, label %218, label %186, !dbg !1440

186:                                              ; preds = %184, %186
  %187 = phi i64 [ %199, %186 ], [ %112, %184 ]
  call void @llvm.dbg.value(metadata i64 %187, metadata !1262, metadata !DIExpression()), !dbg !1437
  %188 = add i64 %187, 4294967295, !dbg !1441
  %189 = and i64 %188, 4294967295
  %190 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %189, !dbg !1443
  %191 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %190, align 8, !dbg !1443, !tbaa !934
  %192 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %191, i64 0, i32 2, !dbg !1444
  %193 = load i8*, i8** %192, align 8, !dbg !1444, !tbaa !534
  %194 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %193) #8, !dbg !1445
  %195 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %194 to i8*, !dbg !1445
  tail call void @halide_free(i8* %0, i8* %195) #7, !dbg !1446
  %196 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %190, align 8, !dbg !1447, !tbaa !934
  %197 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %196, i64 0, i32 2, !dbg !1448
  store i8* null, i8** %197, align 8, !dbg !1449, !tbaa !534
  call void @llvm.dbg.value(metadata i64 %188, metadata !1262, metadata !DIExpression()), !dbg !1437
  %198 = icmp sgt i64 %187, 1
  %199 = add nsw i64 %187, -1, !dbg !1441
  br i1 %198, label %186, label %218, !dbg !1440, !llvm.loop !1450

200:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 16, metadata !785, metadata !DIExpression()) #9, !dbg !1452
  %201 = tail call i32 @halide_malloc_alignment() #7, !dbg !1454
  %202 = add nsw i32 %201, -1, !dbg !1455
  %203 = sext i32 %202 to i64, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %203, metadata !786, metadata !DIExpression()) #9, !dbg !1452
  %204 = add nsw i64 %203, 16, !dbg !1456
  %205 = xor i64 %203, -1, !dbg !1457
  %206 = and i64 %204, %205, !dbg !1458
  %207 = load i8*, i8** %182, align 8, !dbg !1459, !tbaa !534
  %208 = getelementptr inbounds i8, i8* %207, i64 %206, !dbg !1459
  store i8* %208, i8** %182, align 8, !dbg !1459, !tbaa !534
  %209 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %208) #8, !dbg !1460
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %209, metadata !1266, metadata !DIExpression()), !dbg !1375
  %210 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %209, i64 0, i32 1, !dbg !1461
  store i32 %8, i32* %210, align 8, !dbg !1462, !tbaa !1463
  %211 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %209, i64 0, i32 0, !dbg !1465
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %211, align 8, !dbg !1466, !tbaa !1467
  %212 = add nuw nsw i64 %112, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %212, metadata !1257, metadata !DIExpression()), !dbg !1277
  %213 = icmp eq i64 %212, %20, !dbg !1278
  br i1 %213, label %218, label %111, !dbg !1279, !llvm.loop !1469

214:                                              ; preds = %97, %93
  %215 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 7, !dbg !1471
  %216 = load i32, i32* %215, align 4, !dbg !1472, !tbaa !858
  %217 = add i32 %216, %4, !dbg !1472
  store i32 %217, i32* %215, align 4, !dbg !1472, !tbaa !858
  br label %218, !dbg !1473

218:                                              ; preds = %200, %186, %184, %214, %17
  %219 = phi i32 [ 1, %17 ], [ 0, %214 ], [ -1, %184 ], [ -1, %186 ], [ 1, %200 ], !dbg !1267
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1222, metadata !DIExpression()) #9, !dbg !1475
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1473
  ret i32 %219, !dbg !1476
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_memoization_cache_store(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5, i1 zeroext %6, i64 %7) local_unnamed_addr #4 !dbg !1477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %1, metadata !1482, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %2, metadata !1483, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1484, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %4, metadata !1485, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %5, metadata !1486, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i1 %6, metadata !1487, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %7, metadata !1488, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !441, metadata !DIExpression()) #9, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %0, metadata !444, metadata !DIExpression()) #9, !dbg !1524
  call void @llvm.dbg.value(metadata i8* null, metadata !445, metadata !DIExpression()) #9, !dbg !1524
  %9 = tail call i8* @malloc(i64 1024) #7, !dbg !1526
  %10 = icmp eq i8* %9, null, !dbg !1527
  br i1 %10, label %13, label %11, !dbg !1528

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 1023, !dbg !1529
  store i8 0, i8* %12, align 1, !dbg !1530, !tbaa !480
  br label %13, !dbg !1531

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !1532
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1533
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1535
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1536, metadata !DIExpression()) #9, !dbg !1540
  call void @llvm.dbg.value(metadata i1 %6, metadata !1539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1540
  %16 = zext i1 %6 to i64, !dbg !1542
  %17 = tail call i8* @halide_int64_to_string(i8* %15, i8* %14, i64 %16, i32 1) #7, !dbg !1543
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1544
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1544
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %14, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1546
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1547, metadata !DIExpression()) #9, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %7, metadata !1550, metadata !DIExpression()) #9, !dbg !1551
  %19 = tail call i8* @halide_uint64_to_string(i8* %18, i8* %14, i64 %7, i32 1) #7, !dbg !1553
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1554
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1554
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %14, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !1556
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1557
  br i1 %10, label %21, label %22, !dbg !1559

21:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1560
  br label %28, !dbg !1561

22:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !481, metadata !DIExpression()) #9, !dbg !1562
  %23 = ptrtoint i8* %20 to i64, !dbg !1564
  %24 = ptrtoint i8* %9 to i64, !dbg !1564
  %25 = add i64 %23, 1, !dbg !1564
  %26 = sub i64 %25, %24, !dbg !1565
  %27 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %26) #7, !dbg !1566
  tail call void @halide_print(i8* %0, i8* nonnull %9) #7, !dbg !1567
  br label %28

28:                                               ; preds = %21, %22
  call void @free(i8* %9) #7, !dbg !1568
  %29 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, align 8, !dbg !1569, !tbaa !934
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %29, i64 0, i32 2, !dbg !1570
  %31 = load i8*, i8** %30, align 8, !dbg !1570, !tbaa !534
  %32 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %31) #8, !dbg !1571
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %32, i64 0, i32 1, !dbg !1572
  %34 = load i32, i32* %33, align 8, !dbg !1572, !tbaa !1463
  call void @llvm.dbg.value(metadata i32 %34, metadata !1489, metadata !DIExpression()), !dbg !1523
  %35 = and i32 %34, 255, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %35, metadata !1490, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1211, metadata !DIExpression()) #9, !dbg !1574
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1214, metadata !DIExpression()) #9, !dbg !1574
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1491, metadata !DIExpression()), !dbg !1523
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1576
  %36 = zext i32 %35 to i64, !dbg !1577
  %37 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %36, !dbg !1577
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1492, metadata !DIExpression()), !dbg !1523
  %38 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %37, align 8, !dbg !1523, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %38, metadata !1492, metadata !DIExpression()), !dbg !1523
  %39 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %38, null, !dbg !1578
  br i1 %39, label %109, label %40, !dbg !1579

40:                                               ; preds = %28
  %41 = sext i32 %2 to i64
  %42 = icmp sgt i32 %4, 0
  br i1 %42, label %43, label %113, !dbg !1579

43:                                               ; preds = %40
  %44 = zext i32 %4 to i64, !dbg !1579
  br label %45, !dbg !1579

45:                                               ; preds = %43, %71
  %46 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %73, %71 ], [ %38, %43 ]
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 6, !dbg !1580
  %48 = load i32, i32* %47, align 8, !dbg !1580, !tbaa !855
  %49 = icmp eq i32 %48, %34, !dbg !1581
  br i1 %49, label %50, label %71, !dbg !1582

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 4, !dbg !1583
  %52 = load i64, i64* %51, align 8, !dbg !1583, !tbaa !852
  %53 = icmp eq i64 %52, %41, !dbg !1584
  br i1 %53, label %54, label %71, !dbg !1585

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 5, !dbg !1586
  %56 = load i8*, i8** %55, align 8, !dbg !1586, !tbaa !892
  %57 = call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %56, i8* %1, i64 %41) #8, !dbg !1587
  br i1 %57, label %58, label %71, !dbg !1588

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 10, !dbg !1589
  %60 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %59, align 8, !dbg !1589, !tbaa !888
  %61 = call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %60) #8, !dbg !1590
  br i1 %61, label %62, label %71, !dbg !1591

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 8, !dbg !1592
  %64 = load i32, i32* %63, align 8, !dbg !1592, !tbaa !861
  %65 = icmp eq i32 %64, %4, !dbg !1593
  br i1 %65, label %104, label %71, !dbg !1594

66:                                               ; preds = %85
  br i1 %93, label %67, label %71, !dbg !1595

67:                                               ; preds = %66
  %68 = and i8 %100, 1, !dbg !1596
  %69 = icmp eq i8 %68, 0, !dbg !1596
  br i1 %69, label %70, label %107, !dbg !1599

70:                                               ; preds = %67
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !1600
  call void @abort() #7, !dbg !1600
  br label %107, !dbg !1600

71:                                               ; preds = %66, %62, %58, %54, %50, %45
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 0, !dbg !1602
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1492, metadata !DIExpression()), !dbg !1523
  %73 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %72, align 8, !dbg !1523, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %73, metadata !1492, metadata !DIExpression()), !dbg !1523
  %74 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %73, null, !dbg !1578
  br i1 %74, label %109, label %45, !dbg !1579, !llvm.loop !1603

75:                                               ; preds = %107, %75
  %76 = phi i64 [ 0, %107 ], [ %83, %75 ]
  call void @llvm.dbg.value(metadata i64 %76, metadata !1504, metadata !DIExpression()), !dbg !1605
  %77 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %76, !dbg !1606
  %78 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %77, align 8, !dbg !1606, !tbaa !934
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %78, i64 0, i32 2, !dbg !1609
  %80 = load i8*, i8** %79, align 8, !dbg !1609, !tbaa !534
  %81 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %80) #8, !dbg !1610
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %81, i64 0, i32 0, !dbg !1611
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %82, align 8, !dbg !1612, !tbaa !1467
  %83 = add nuw nsw i64 %76, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %83, metadata !1504, metadata !DIExpression()), !dbg !1605
  %84 = icmp eq i64 %83, %108, !dbg !1614
  br i1 %84, label %276, label %75, !dbg !1615, !llvm.loop !1616

85:                                               ; preds = %104, %85
  %86 = phi %struct.halide_buffer_t* [ %106, %104 ], [ %94, %85 ], !dbg !1618
  %87 = phi i64 [ 0, %104 ], [ %101, %85 ]
  %88 = phi i8 [ 1, %104 ], [ %100, %85 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !1498, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %88, metadata !1497, metadata !DIExpression()), !dbg !1620
  %89 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %87, !dbg !1621
  %90 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %89, align 8, !dbg !1621, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %90, metadata !1501, metadata !DIExpression()), !dbg !1622
  %91 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %86, i64 %87, i32 6, !dbg !1623
  %92 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %91, align 8, !dbg !1623, !tbaa !581
  %93 = call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %90, %struct.halide_dimension_t* %92) #8, !dbg !1624
  call void @llvm.dbg.value(metadata i1 %93, metadata !1493, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1620
  %94 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %105, align 8, !dbg !1625, !tbaa !884
  %95 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %94, i64 %87, i32 2, !dbg !1627
  %96 = load i8*, i8** %95, align 8, !dbg !1627, !tbaa !534
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %90, i64 0, i32 2, !dbg !1628
  %98 = load i8*, i8** %97, align 8, !dbg !1628, !tbaa !534
  %99 = icmp eq i8* %96, %98, !dbg !1629
  %100 = select i1 %99, i8 0, i8 %88, !dbg !1630
  call void @llvm.dbg.value(metadata i8 %100, metadata !1497, metadata !DIExpression()), !dbg !1620
  %101 = add nuw nsw i64 %87, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i8 undef, metadata !1493, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i64 %101, metadata !1498, metadata !DIExpression()), !dbg !1619
  %102 = icmp ult i64 %101, %44, !dbg !1632
  %103 = and i1 %93, %102, !dbg !1632
  br i1 %103, label %85, label %66, !dbg !1633, !llvm.loop !1634

104:                                              ; preds = %62
  call void @llvm.dbg.value(metadata i8 undef, metadata !1493, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i32 0, metadata !1498, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1620
  %105 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %46, i64 0, i32 11
  %106 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %105, align 8, !dbg !1618, !tbaa !884
  br label %85, !dbg !1633

107:                                              ; preds = %67, %70
  call void @llvm.dbg.value(metadata i32 0, metadata !1504, metadata !DIExpression()), !dbg !1605
  %108 = zext i32 %4 to i64, !dbg !1614
  br label %75, !dbg !1615

109:                                              ; preds = %134, %71, %28
  call void @llvm.dbg.value(metadata i32 0, metadata !1509, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1508, metadata !DIExpression()), !dbg !1523
  %110 = icmp sgt i32 %4, 0, !dbg !1637
  br i1 %110, label %111, label %138, !dbg !1638

111:                                              ; preds = %109
  %112 = zext i32 %4 to i64, !dbg !1637
  br label %144, !dbg !1638

113:                                              ; preds = %40, %134
  %114 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %136, %134 ], [ %38, %40 ]
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %114, i64 0, i32 6, !dbg !1580
  %116 = load i32, i32* %115, align 8, !dbg !1580, !tbaa !855
  %117 = icmp eq i32 %116, %34, !dbg !1581
  br i1 %117, label %118, label %134, !dbg !1582

118:                                              ; preds = %113
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %114, i64 0, i32 4, !dbg !1583
  %120 = load i64, i64* %119, align 8, !dbg !1583, !tbaa !852
  %121 = icmp eq i64 %120, %41, !dbg !1584
  br i1 %121, label %122, label %134, !dbg !1585

122:                                              ; preds = %118
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %114, i64 0, i32 5, !dbg !1586
  %124 = load i8*, i8** %123, align 8, !dbg !1586, !tbaa !892
  %125 = call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %124, i8* %1, i64 %41) #8, !dbg !1587
  br i1 %125, label %126, label %134, !dbg !1588

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %114, i64 0, i32 10, !dbg !1589
  %128 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %127, align 8, !dbg !1589, !tbaa !888
  %129 = call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %128) #8, !dbg !1590
  br i1 %129, label %130, label %134, !dbg !1591

130:                                              ; preds = %126
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %114, i64 0, i32 8, !dbg !1592
  %132 = load i32, i32* %131, align 8, !dbg !1592, !tbaa !861
  %133 = icmp eq i32 %132, %4, !dbg !1593
  br i1 %133, label %276, label %134, !dbg !1594

134:                                              ; preds = %130, %126, %122, %118, %113
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %114, i64 0, i32 0, !dbg !1602
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1492, metadata !DIExpression()), !dbg !1523
  %136 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %135, align 8, !dbg !1523, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %136, metadata !1492, metadata !DIExpression()), !dbg !1523
  %137 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %136, null, !dbg !1578
  br i1 %137, label %109, label %113, !dbg !1579, !llvm.loop !1603

138:                                              ; preds = %198, %109
  %139 = phi i64 [ 0, %109 ], [ %208, %198 ], !dbg !1523
  %140 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1639, !tbaa !378
  %141 = add i64 %140, %139, !dbg !1639
  store i64 %141, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1639, !tbaa !378
  call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #8, !dbg !1640
  %142 = call i8* @halide_malloc(i8* null, i64 96) #7, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %142, metadata !1515, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1523
  %143 = icmp eq i8* %142, null, !dbg !1642
  br i1 %143, label %215, label %211, !dbg !1644

144:                                              ; preds = %111, %198
  %145 = phi i64 [ 0, %111 ], [ %209, %198 ]
  %146 = phi i64 [ 0, %111 ], [ %208, %198 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1509, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %146, metadata !1508, metadata !DIExpression()), !dbg !1523
  %147 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %145, !dbg !1645
  %148 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %147, align 8, !dbg !1645, !tbaa !934
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !1512, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !1108, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !1113, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 0, metadata !1116, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 0, metadata !1117, metadata !DIExpression()), !dbg !1651
  %149 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %148, i64 0, i32 5, !dbg !1652
  %150 = load i32, i32* %149, align 4, !dbg !1652, !tbaa !578
  %151 = icmp sgt i32 %150, 0, !dbg !1653
  br i1 %151, label %155, label %152, !dbg !1654

152:                                              ; preds = %144
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1655
  %153 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %148, i64 0, i32 4, i32 1, !dbg !1657
  %154 = load i8, i8* %153, align 1, !dbg !1657, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !1129, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1660
  br label %198, !dbg !1661

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %148, i64 0, i32 6
  %157 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %156, align 8, !tbaa !581
  %158 = zext i32 %150 to i64, !dbg !1653
  br label %159, !dbg !1654

159:                                              ; preds = %173, %155
  %160 = phi i64 [ 0, %155 ], [ %175, %173 ]
  %161 = phi i64 [ 0, %155 ], [ %174, %173 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !1117, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %161, metadata !1116, metadata !DIExpression()), !dbg !1649
  %162 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %160, i32 2, !dbg !1662
  %163 = load i32, i32* %162, align 4, !dbg !1662, !tbaa !589
  %164 = icmp sgt i32 %163, 0, !dbg !1663
  br i1 %164, label %165, label %173, !dbg !1664

165:                                              ; preds = %159
  %166 = zext i32 %163 to i64, !dbg !1665
  %167 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %160, i32 1, !dbg !1666
  %168 = load i32, i32* %167, align 4, !dbg !1666, !tbaa !654
  %169 = add nsw i32 %168, -1, !dbg !1667
  %170 = sext i32 %169 to i64, !dbg !1668
  %171 = mul nsw i64 %170, %166, !dbg !1669
  %172 = add nsw i64 %171, %161, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %172, metadata !1116, metadata !DIExpression()), !dbg !1649
  br label %173, !dbg !1671

173:                                              ; preds = %165, %159
  %174 = phi i64 [ %172, %165 ], [ %161, %159 ], !dbg !1649
  call void @llvm.dbg.value(metadata i64 %174, metadata !1116, metadata !DIExpression()), !dbg !1649
  %175 = add nuw nsw i64 %160, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %175, metadata !1117, metadata !DIExpression()), !dbg !1651
  %176 = icmp eq i64 %175, %158, !dbg !1653
  br i1 %176, label %177, label %159, !dbg !1654, !llvm.loop !1673

177:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 %174, metadata !1116, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1649
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1655
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %148, i64 0, i32 4, i32 1, !dbg !1657
  %179 = load i8, i8* %178, align 1, !dbg !1657, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !1129, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1132, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 0, metadata !1133, metadata !DIExpression()), !dbg !1660
  br label %180, !dbg !1661

180:                                              ; preds = %194, %177
  %181 = phi i64 [ 0, %177 ], [ %196, %194 ]
  %182 = phi i64 [ 0, %177 ], [ %195, %194 ]
  call void @llvm.dbg.value(metadata i64 %181, metadata !1133, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %182, metadata !1132, metadata !DIExpression()), !dbg !1658
  %183 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %181, i32 2, !dbg !1675
  %184 = load i32, i32* %183, align 4, !dbg !1675, !tbaa !589
  %185 = icmp slt i32 %184, 0, !dbg !1676
  br i1 %185, label %186, label %194, !dbg !1677

186:                                              ; preds = %180
  %187 = sext i32 %184 to i64, !dbg !1678
  %188 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %157, i64 %181, i32 1, !dbg !1679
  %189 = load i32, i32* %188, align 4, !dbg !1679, !tbaa !654
  %190 = add nsw i32 %189, -1, !dbg !1680
  %191 = sext i32 %190 to i64, !dbg !1681
  %192 = mul nsw i64 %191, %187, !dbg !1682
  %193 = add nsw i64 %192, %182, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %193, metadata !1132, metadata !DIExpression()), !dbg !1658
  br label %194, !dbg !1684

194:                                              ; preds = %186, %180
  %195 = phi i64 [ %193, %186 ], [ %182, %180 ], !dbg !1658
  call void @llvm.dbg.value(metadata i64 %195, metadata !1132, metadata !DIExpression()), !dbg !1658
  %196 = add nuw nsw i64 %181, 1, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %196, metadata !1133, metadata !DIExpression()), !dbg !1660
  %197 = icmp eq i64 %196, %158, !dbg !1686
  br i1 %197, label %198, label %180, !dbg !1661, !llvm.loop !1687

198:                                              ; preds = %194, %152
  %199 = phi i8 [ %154, %152 ], [ %179, %194 ]
  %200 = phi i64 [ 0, %152 ], [ %174, %194 ]
  %201 = phi i64 [ 0, %152 ], [ %195, %194 ], !dbg !1658
  %202 = zext i8 %199 to i64, !dbg !1657
  %203 = add nuw nsw i64 %202, 7, !dbg !1689
  %204 = lshr i64 %203, 3, !dbg !1690
  %205 = add nsw i64 %200, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %205, metadata !1116, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %148, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1692
  %206 = sub i64 %205, %201, !dbg !1694
  %207 = mul i64 %206, %204, !dbg !1694
  %208 = add i64 %207, %146, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %208, metadata !1508, metadata !DIExpression()), !dbg !1523
  %209 = add nuw nsw i64 %145, 1, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %209, metadata !1509, metadata !DIExpression()), !dbg !1636
  %210 = icmp eq i64 %209, %112, !dbg !1637
  br i1 %210, label %138, label %144, !dbg !1638, !llvm.loop !1697

211:                                              ; preds = %138
  %212 = bitcast i8* %142 to %"struct.Halide::Runtime::Internal::CacheEntry"*, !dbg !1699
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %212, metadata !1515, metadata !DIExpression()), !dbg !1523
  %213 = sext i32 %2 to i64, !dbg !1700
  %214 = call zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %212, i8* %1, i64 %213, i32 %34, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** nonnull %5, i1 zeroext %6, i64 %7) #8, !dbg !1702
  call void @llvm.dbg.value(metadata i8 undef, metadata !1516, metadata !DIExpression()), !dbg !1523
  br i1 %214, label %232, label %215, !dbg !1703

215:                                              ; preds = %138, %211
  %216 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1704, !tbaa !378
  %217 = sub i64 %216, %139, !dbg !1704
  store i64 %217, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1704, !tbaa !378
  call void @llvm.dbg.value(metadata i32 0, metadata !1517, metadata !DIExpression()), !dbg !1705
  br i1 %110, label %218, label %220, !dbg !1706

218:                                              ; preds = %215
  %219 = zext i32 %4 to i64, !dbg !1707
  br label %221, !dbg !1706

220:                                              ; preds = %221, %215
  br i1 %143, label %276, label %231, !dbg !1709

221:                                              ; preds = %218, %221
  %222 = phi i64 [ 0, %218 ], [ %229, %221 ]
  call void @llvm.dbg.value(metadata i64 %222, metadata !1517, metadata !DIExpression()), !dbg !1705
  %223 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %222, !dbg !1710
  %224 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %223, align 8, !dbg !1710, !tbaa !934
  %225 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %224, i64 0, i32 2, !dbg !1712
  %226 = load i8*, i8** %225, align 8, !dbg !1712, !tbaa !534
  %227 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %226) #8, !dbg !1713
  %228 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %227, i64 0, i32 0, !dbg !1714
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %228, align 8, !dbg !1715, !tbaa !1467
  %229 = add nuw nsw i64 %222, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %229, metadata !1517, metadata !DIExpression()), !dbg !1705
  %230 = icmp eq i64 %229, %219, !dbg !1707
  br i1 %230, label %220, label %221, !dbg !1706, !llvm.loop !1717

231:                                              ; preds = %220
  call void @halide_free(i8* %0, i8* nonnull %142) #7, !dbg !1719
  br label %276, !dbg !1722

232:                                              ; preds = %211
  %233 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %37, align 8, !dbg !1723, !tbaa !934
  %234 = bitcast i8* %142 to %"struct.Halide::Runtime::Internal::CacheEntry"**, !dbg !1724
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %233, %"struct.Halide::Runtime::Internal::CacheEntry"** %234, align 8, !dbg !1725, !tbaa !840
  %235 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1726, !tbaa !934
  %236 = getelementptr inbounds i8, i8* %142, i64 16, !dbg !1727
  %237 = bitcast i8* %236 to %"struct.Halide::Runtime::Internal::CacheEntry"**, !dbg !1727
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %235, %"struct.Halide::Runtime::Internal::CacheEntry"** %237, align 8, !dbg !1728, !tbaa !849
  %238 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %235, null, !dbg !1729
  br i1 %238, label %242, label %239, !dbg !1731

239:                                              ; preds = %232
  %240 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %235, i64 0, i32 1, !dbg !1732
  %241 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %240 to i8**, !dbg !1734
  store i8* %142, i8** %241, align 8, !dbg !1734, !tbaa !846
  br label %242, !dbg !1735

242:                                              ; preds = %239, %232
  store i8* %142, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE to i8**), align 8, !dbg !1736, !tbaa !934
  %243 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1737, !tbaa !934
  %244 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %243, null, !dbg !1739
  br i1 %244, label %245, label %246, !dbg !1740

245:                                              ; preds = %242
  store i8* %142, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE to i8**), align 8, !dbg !1741, !tbaa !934
  br label %246, !dbg !1743

246:                                              ; preds = %245, %242
  %247 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %37 to i8**, !dbg !1744
  store i8* %142, i8** %247, align 8, !dbg !1744, !tbaa !934
  %248 = getelementptr inbounds i8, i8* %142, i64 52, !dbg !1745
  %249 = bitcast i8* %248 to i32*, !dbg !1745
  store i32 %4, i32* %249, align 4, !dbg !1746, !tbaa !858
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1747
  br i1 %110, label %250, label %252, !dbg !1748

250:                                              ; preds = %246
  %251 = zext i32 %4 to i64, !dbg !1749
  br label %266, !dbg !1748

252:                                              ; preds = %266, %246
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !441, metadata !DIExpression()) #9, !dbg !1751
  call void @llvm.dbg.value(metadata i8* %0, metadata !444, metadata !DIExpression()) #9, !dbg !1751
  call void @llvm.dbg.value(metadata i8* null, metadata !445, metadata !DIExpression()) #9, !dbg !1751
  %253 = call i8* @malloc(i64 1024) #7, !dbg !1753
  %254 = icmp eq i8* %253, null, !dbg !1754
  br i1 %254, label %255, label %257, !dbg !1755

255:                                              ; preds = %252
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1756
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1756
  %256 = call i8* @halide_string_to_string(i8* %253, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1758
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1759
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1761
  br label %265, !dbg !1762

257:                                              ; preds = %252
  %258 = getelementptr inbounds i8, i8* %253, i64 1023, !dbg !1763
  store i8 0, i8* %258, align 1, !dbg !1764, !tbaa !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1756
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1756
  %259 = call i8* @halide_string_to_string(i8* nonnull %253, i8* nonnull %258, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !1758
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1759
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !481, metadata !DIExpression()) #9, !dbg !1765
  %260 = ptrtoint i8* %259 to i64, !dbg !1767
  %261 = ptrtoint i8* %253 to i64, !dbg !1767
  %262 = add i64 %260, 1, !dbg !1767
  %263 = sub i64 %262, %261, !dbg !1768
  %264 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %253, i64 %263) #7, !dbg !1769
  call void @halide_print(i8* %0, i8* nonnull %253) #7, !dbg !1770
  br label %265

265:                                              ; preds = %257, %255
  call void @free(i8* %253) #7, !dbg !1771
  br label %276, !dbg !1772

266:                                              ; preds = %250, %266
  %267 = phi i64 [ 0, %250 ], [ %274, %266 ]
  call void @llvm.dbg.value(metadata i64 %267, metadata !1521, metadata !DIExpression()), !dbg !1747
  %268 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %267, !dbg !1773
  %269 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %268, align 8, !dbg !1773, !tbaa !934
  %270 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %269, i64 0, i32 2, !dbg !1775
  %271 = load i8*, i8** %270, align 8, !dbg !1775, !tbaa !534
  %272 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %271) #8, !dbg !1776
  %273 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %272 to i8**, !dbg !1777
  store i8* %142, i8** %273, align 8, !dbg !1777, !tbaa !1467
  %274 = add nuw nsw i64 %267, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %274, metadata !1521, metadata !DIExpression()), !dbg !1747
  %275 = icmp eq i64 %274, %251, !dbg !1749
  br i1 %275, label %252, label %266, !dbg !1748, !llvm.loop !1779

276:                                              ; preds = %130, %75, %265, %231, %220
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1222, metadata !DIExpression()) #9, !dbg !1781
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1783
  ret i32 0, !dbg !1784
}

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_release(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !1785 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1787, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8* %1, metadata !1788, metadata !DIExpression()), !dbg !1794
  %3 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %1) #8, !dbg !1795
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3, metadata !1789, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !441, metadata !DIExpression()) #9, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %0, metadata !444, metadata !DIExpression()) #9, !dbg !1796
  call void @llvm.dbg.value(metadata i8* null, metadata !445, metadata !DIExpression()) #9, !dbg !1796
  %4 = tail call i8* @malloc(i64 1024) #7, !dbg !1798
  %5 = icmp eq i8* %4, null, !dbg !1799
  br i1 %5, label %6, label %8, !dbg !1800

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1801
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1801
  %7 = tail call i8* @halide_string_to_string(i8* %4, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1804
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1806
  br label %16, !dbg !1807

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, i8* %4, i64 1023, !dbg !1808
  store i8 0, i8* %9, align 1, !dbg !1809, !tbaa !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1801
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1801
  %10 = tail call i8* @halide_string_to_string(i8* nonnull %4, i8* nonnull %9, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !1803
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1804
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !481, metadata !DIExpression()) #9, !dbg !1810
  %11 = ptrtoint i8* %10 to i64, !dbg !1812
  %12 = ptrtoint i8* %4 to i64, !dbg !1812
  %13 = add i64 %11, 1, !dbg !1812
  %14 = sub i64 %13, %12, !dbg !1813
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %14) #7, !dbg !1814
  tail call void @halide_print(i8* %0, i8* nonnull %4) #7, !dbg !1815
  br label %16

16:                                               ; preds = %8, %6
  tail call void @free(i8* %4) #7, !dbg !1816
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3, i64 0, i32 0, !dbg !1817
  %18 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %17, align 8, !dbg !1817, !tbaa !1467
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %18, metadata !1790, metadata !DIExpression()), !dbg !1794
  %19 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %18, null, !dbg !1818
  br i1 %19, label %20, label %22, !dbg !1819

20:                                               ; preds = %16
  %21 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3 to i8*, !dbg !1820
  tail call void @halide_free(i8* %0, i8* %21) #7, !dbg !1822
  br label %31, !dbg !1823

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1211, metadata !DIExpression()) #9, !dbg !1824
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1214, metadata !DIExpression()) #9, !dbg !1824
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1791, metadata !DIExpression()), !dbg !1826
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1827
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %18, i64 0, i32 7, !dbg !1828
  %24 = load i32, i32* %23, align 4, !dbg !1828, !tbaa !858
  %25 = icmp eq i32 %24, 0, !dbg !1828
  br i1 %25, label %26, label %28, !dbg !1831

26:                                               ; preds = %22
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !1832
  tail call void @abort() #7, !dbg !1832
  %27 = load i32, i32* %23, align 4, !dbg !1834, !tbaa !858
  br label %28, !dbg !1832

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %27, %26 ], [ %24, %22 ], !dbg !1834
  %30 = add i32 %29, -1, !dbg !1834
  store i32 %30, i32* %23, align 4, !dbg !1834, !tbaa !858
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1222, metadata !DIExpression()) #9, !dbg !1835
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1837
  br label %31

31:                                               ; preds = %28, %20
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !441, metadata !DIExpression()) #9, !dbg !1838
  call void @llvm.dbg.value(metadata i8* %0, metadata !444, metadata !DIExpression()) #9, !dbg !1838
  call void @llvm.dbg.value(metadata i8* null, metadata !445, metadata !DIExpression()) #9, !dbg !1838
  %32 = tail call i8* @malloc(i64 1024) #7, !dbg !1840
  %33 = icmp eq i8* %32, null, !dbg !1841
  br i1 %33, label %34, label %36, !dbg !1842

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1843
  %35 = tail call i8* @halide_string_to_string(i8* %32, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1846
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1848
  br label %44, !dbg !1849

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1023, !dbg !1850
  store i8 0, i8* %37, align 1, !dbg !1851, !tbaa !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1843
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1843
  %38 = tail call i8* @halide_string_to_string(i8* nonnull %32, i8* nonnull %37, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !1845
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1846
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !481, metadata !DIExpression()) #9, !dbg !1852
  %39 = ptrtoint i8* %38 to i64, !dbg !1854
  %40 = ptrtoint i8* %32 to i64, !dbg !1854
  %41 = add i64 %39, 1, !dbg !1854
  %42 = sub i64 %41, %40, !dbg !1855
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %32, i64 %42) #7, !dbg !1856
  tail call void @halide_print(i8* %0, i8* nonnull %32) #7, !dbg !1857
  br label %44

44:                                               ; preds = %36, %34
  tail call void @free(i8* %32) #7, !dbg !1858
  ret void, !dbg !1859
}

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_cleanup() local_unnamed_addr #4 !dbg !1860 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !441, metadata !DIExpression()) #9, !dbg !1869
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !1869
  call void @llvm.dbg.value(metadata i8* null, metadata !445, metadata !DIExpression()) #9, !dbg !1869
  %1 = tail call i8* @malloc(i64 1024) #7, !dbg !1871
  %2 = icmp eq i8* %1, null, !dbg !1872
  br i1 %2, label %3, label %5, !dbg !1873

3:                                                ; preds = %0
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1874
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1874
  %4 = tail call i8* @halide_string_to_string(i8* %1, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !1876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1877
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1879
  br label %13, !dbg !1880

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, i8* %1, i64 1023, !dbg !1881
  store i8 0, i8* %6, align 1, !dbg !1882, !tbaa !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !458, metadata !DIExpression()) #9, !dbg !1874
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), metadata !461, metadata !DIExpression()) #9, !dbg !1874
  %7 = tail call i8* @halide_string_to_string(i8* nonnull %1, i8* nonnull %6, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !1876
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !467, metadata !DIExpression()) #9, !dbg !1877
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !481, metadata !DIExpression()) #9, !dbg !1883
  %8 = ptrtoint i8* %7 to i64, !dbg !1885
  %9 = ptrtoint i8* %1 to i64, !dbg !1885
  %10 = add i64 %8, 1, !dbg !1885
  %11 = sub i64 %10, %9, !dbg !1886
  %12 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %1, i64 %11) #7, !dbg !1887
  tail call void @halide_print(i8* null, i8* nonnull %1) #7, !dbg !1888
  br label %13

13:                                               ; preds = %5, %3
  tail call void @free(i8* %1) #7, !dbg !1889
  call void @llvm.dbg.value(metadata i64 0, metadata !1862, metadata !DIExpression()), !dbg !1890
  br label %15, !dbg !1891

14:                                               ; preds = %26
  store i64 0, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1892, !tbaa !378
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1893, !tbaa !934
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !dbg !1894, !tbaa !934
  ret void, !dbg !1895

15:                                               ; preds = %13, %26
  %16 = phi i64 [ 0, %13 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !1862, metadata !DIExpression()), !dbg !1890
  %17 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %16, !dbg !1896
  %18 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %17, align 8, !dbg !1896, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %18, metadata !1864, metadata !DIExpression()), !dbg !1897
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %17, align 8, !dbg !1898, !tbaa !934
  %19 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %18, null, !dbg !1899
  br i1 %19, label %26, label %20, !dbg !1900

20:                                               ; preds = %15, %20
  %21 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %23, %20 ], [ %18, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %21, metadata !1864, metadata !DIExpression()), !dbg !1897
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %21, i64 0, i32 0, !dbg !1901
  %23 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %22, align 8, !dbg !1901, !tbaa !840
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %23, metadata !1867, metadata !DIExpression()), !dbg !1902
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %21) #8, !dbg !1903
  %24 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %21 to i8*, !dbg !1904
  tail call void @halide_free(i8* null, i8* nonnull %24) #7, !dbg !1905
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %23, metadata !1864, metadata !DIExpression()), !dbg !1897
  %25 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %23, null, !dbg !1899
  br i1 %25, label %26, label %20, !dbg !1900, !llvm.loop !1906

26:                                               ; preds = %20, %15
  %27 = add nuw nsw i64 %16, 1, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %27, metadata !1862, metadata !DIExpression()), !dbg !1890
  %28 = icmp eq i64 %27, 256, !dbg !1909
  br i1 %28, label %14, label %15, !dbg !1891, !llvm.loop !1910
}

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_evict(i8* %0, i64 %1) local_unnamed_addr #4 !dbg !1912 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1916, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %1, metadata !1917, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1211, metadata !DIExpression()) #9, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1214, metadata !DIExpression()) #9, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1918, metadata !DIExpression()), !dbg !1930
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1919, metadata !DIExpression()), !dbg !1934
  br label %4, !dbg !1935

3:                                                ; preds = %40
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1222, metadata !DIExpression()) #9, !dbg !1936
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1938
  ret void, !dbg !1939

4:                                                ; preds = %2, %40
  %5 = phi i64 [ 0, %2 ], [ %41, %40 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1919, metadata !DIExpression()), !dbg !1934
  %6 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %5, !dbg !1940
  %7 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %6, align 8, !dbg !1940, !tbaa !934
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %7, metadata !1921, metadata !DIExpression()), !dbg !1941
  %8 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %7, null, !dbg !1942
  br i1 %8, label %40, label %9, !dbg !1943

9:                                                ; preds = %4, %37
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %38, %37 ], [ %6, %4 ]
  %11 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %13, %37 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"** %10, metadata !1924, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %11, metadata !1921, metadata !DIExpression()), !dbg !1941
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 0, !dbg !1945
  %13 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !dbg !1945, !tbaa !840
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %13, metadata !1928, metadata !DIExpression()), !dbg !1946
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 13, !dbg !1947
  %15 = load i8, i8* %14, align 8, !dbg !1947, !tbaa !928, !range !1949
  %16 = icmp eq i8 %15, 0, !dbg !1947
  br i1 %16, label %37, label %17, !dbg !1950

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 12, !dbg !1951
  %19 = load i64, i64* %18, align 8, !dbg !1951, !tbaa !931
  %20 = icmp eq i64 %19, %1, !dbg !1952
  br i1 %20, label %21, label %37, !dbg !1953

21:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %13, %"struct.Halide::Runtime::Internal::CacheEntry"** %10, align 8, !dbg !1954, !tbaa !934
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 1, !dbg !1956
  %23 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %22, align 8, !dbg !1956, !tbaa !846
  %24 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %23, null, !dbg !1958
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 2, !dbg !1959
  %26 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !dbg !1959, !tbaa !849
  br i1 %24, label %30, label %27, !dbg !1960

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %23, i64 0, i32 2, !dbg !1961
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** %28, align 8, !dbg !1963, !tbaa !849
  %29 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !dbg !1964, !tbaa !849
  br label %31, !dbg !1966

30:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !dbg !1967, !tbaa !934
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %26, %30 ], [ %29, %27 ], !dbg !1964
  %33 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %32, null, !dbg !1969
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %32, i64 0, i32 1, !dbg !1970
  %35 = select i1 %33, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, %"struct.Halide::Runtime::Internal::CacheEntry"** %34, !dbg !1970
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %23, %"struct.Halide::Runtime::Internal::CacheEntry"** %35, align 8, !dbg !1971, !tbaa !934
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %11) #8, !dbg !1972
  %36 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %11 to i8*, !dbg !1973
  tail call void @halide_free(i8* %0, i8* nonnull %36) #7, !dbg !1974
  br label %37, !dbg !1975

37:                                               ; preds = %9, %17, %31
  %38 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %10, %31 ], [ %12, %17 ], [ %12, %9 ], !dbg !1944
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"** %38, metadata !1924, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %13, metadata !1921, metadata !DIExpression()), !dbg !1941
  %39 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %13, null, !dbg !1976
  br i1 %39, label %40, label %9, !dbg !1977, !llvm.loop !1978

40:                                               ; preds = %37, %4
  %41 = add nuw nsw i64 %5, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %41, metadata !1919, metadata !DIExpression()), !dbg !1934
  %42 = icmp eq i64 %41, 256, !dbg !1981
  br i1 %42, label %3, label %4, !dbg !1935, !llvm.loop !1982
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_cache_cleanup() #0 !dbg !1984 {
  tail call void @halide_memoization_cache_cleanup() #8, !dbg !1986
  ret void, !dbg !1987
}

declare !dbg !1988 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !1991 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !1992 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !1995 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !1996 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !1999 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !2002 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !2005 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !2008 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!239}
!llvm.module.flags = !{!340, !341, !342}
!llvm.ident = !{!343}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memoization_lock", linkageName: "_ZN6Halide7Runtime8Internal16memoization_lockE", scope: !2, file: !5, line: 196, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/cache.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !7, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !8, identifier: "_ZTS12halide_mutex")
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6, file: !7, line: 121, baseType: !10, size: 64)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !15)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 61, baseType: !13)
!12 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 10, baseType: !14)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cache_entries", linkageName: "_ZN6Halide7Runtime8Internal13cache_entriesE", scope: !2, file: !5, line: 200, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 16384, elements: !227)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CacheEntry", scope: !2, file: !5, line: 70, size: 768, flags: DIFlagTypePassByValue, elements: !22, identifier: "_ZTSN6Halide7Runtime8Internal10CacheEntryE")
!22 = !{!23, !24, !25, !26, !30, !33, !34, !37, !38, !39, !42, !66, !209, !210, !211, !220, !223}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !5, line: 71, baseType: !20, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "more_recent", scope: !21, file: !5, line: 72, baseType: !20, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "less_recent", scope: !21, file: !5, line: 73, baseType: !20, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_storage", scope: !21, file: !5, line: 74, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 16, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !21, file: !5, line: 75, baseType: !31, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 27, baseType: !32)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !21, file: !5, line: 76, baseType: !27, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !21, file: !5, line: 77, baseType: !35, size: 32, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 12, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "in_use_count", scope: !21, file: !5, line: 78, baseType: !35, size: 32, offset: 416)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_count", scope: !21, file: !5, line: 79, baseType: !35, size: 32, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !21, file: !5, line: 81, baseType: !40, size: 32, offset: 480)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 11, baseType: !41)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "computed_bounds", scope: !21, file: !5, line: 82, baseType: !43, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !7, line: 1409, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !7, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !46, identifier: "_ZTS18halide_dimension_t")
!46 = !{!47, !48, !49, !50, !51, !55, !58, !65}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !45, file: !7, line: 1383, baseType: !40, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !45, file: !7, line: 1383, baseType: !40, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !45, file: !7, line: 1383, baseType: !40, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !45, file: !7, line: 1386, baseType: !35, size: 32, offset: 96)
!51 = !DISubprogram(name: "halide_dimension_t", scope: !45, file: !7, line: 1388, type: !52, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!55 = !DISubprogram(name: "halide_dimension_t", scope: !45, file: !7, line: 1389, type: !56, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !54, !40, !40, !40, !35}
!58 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !45, file: !7, line: 1393, type: !59, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !64}
!61 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !63, size: 64)
!65 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !45, file: !7, line: 1400, type: !59, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !21, file: !5, line: 84, baseType: !67, size: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !7, line: 1550, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !7, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !70, identifier: "_ZTS15halide_buffer_t")
!70 = !{!71, !72, !126, !127, !128, !168, !169, !170, !171, !180, !184, !187, !188, !191, !192, !195, !198, !199, !200, !205, !208}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !69, file: !7, line: 1425, baseType: !13, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !69, file: !7, line: 1428, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !7, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !76, identifier: "_ZTS25halide_device_interface_t")
!76 = !{!77, !83, !87, !88, !92, !93, !94, !95, !96, !100, !106, !110, !111, !115, !116, !121}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !75, file: !7, line: 724, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!41, !81, !82, !73}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !75, file: !7, line: 726, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!41, !81, !82}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !75, file: !7, line: 727, baseType: !84, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !75, file: !7, line: 728, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !81, !73}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !75, file: !7, line: 730, baseType: !84, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !75, file: !7, line: 731, baseType: !78, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !75, file: !7, line: 733, baseType: !78, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !75, file: !7, line: 735, baseType: !84, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !75, file: !7, line: 736, baseType: !97, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!41, !81, !82, !73, !82}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !75, file: !7, line: 738, baseType: !101, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!41, !81, !104, !82}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !75, file: !7, line: 740, baseType: !107, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!41, !81, !104, !41, !41, !82}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !75, file: !7, line: 742, baseType: !84, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !75, file: !7, line: 743, baseType: !112, size: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!41, !81, !82, !13, !73}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !75, file: !7, line: 745, baseType: !84, size: 64, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !75, file: !7, line: 746, baseType: !117, size: 64, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!41, !81, !120, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !75, file: !7, line: 747, baseType: !122, size: 64, offset: 960)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !125, line: 10, size: 1024, flags: DIFlagFwdDecl, identifier: "_ZTS30halide_device_interface_impl_t")
!125 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !69, file: !7, line: 1433, baseType: !27, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !7, line: 1436, baseType: !13, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !7, line: 1439, baseType: !129, size: 32, offset: 256)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !7, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !130, identifier: "_ZTS13halide_type_t")
!130 = !{!131, !140, !141, !144, !148, !151, !156, !160, !161, !162, !165}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !129, file: !7, line: 434, baseType: !132, size: 8, align: 8)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !7, line: 413, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !7, line: 403, baseType: !28, size: 8, elements: !134, identifier: "_ZTS18halide_type_code_t")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !129, file: !7, line: 442, baseType: !28, size: 8, align: 8, offset: 8)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !129, file: !7, line: 446, baseType: !142, size: 16, align: 16, offset: 16)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 14, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DISubprogram(name: "halide_type_t", scope: !129, file: !7, line: 453, type: !145, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !132, !28, !142}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!148 = !DISubprogram(name: "halide_type_t", scope: !129, file: !7, line: 459, type: !149, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !147}
!151 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !129, file: !7, line: 463, type: !152, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!129, !154, !142}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!156 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !129, file: !7, line: 468, type: !157, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{!61, !154, !159}
!159 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !155, size: 64)
!160 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !129, file: !7, line: 472, type: !157, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !129, file: !7, line: 476, type: !157, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !129, file: !7, line: 481, type: !163, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DISubroutineType(types: !164)
!164 = !{!41, !154}
!165 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !129, file: !7, line: 485, type: !166, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!35, !154}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !69, file: !7, line: 1442, baseType: !40, size: 32, offset: 288)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !69, file: !7, line: 1446, baseType: !43, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !69, file: !7, line: 1449, baseType: !81, size: 64, offset: 384)
!171 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !69, file: !7, line: 1454, type: !172, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{!61, !174, !175}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !7, line: 1416, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 1415, baseType: !36, size: 32, elements: !177, identifier: "_ZTS19halide_buffer_flags")
!177 = !{!178, !179}
!178 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!180 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !69, file: !7, line: 1458, type: !181, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183, !175, !61}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!184 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !69, file: !7, line: 1466, type: !185, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!61, !174}
!187 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !69, file: !7, line: 1470, type: !185, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !69, file: !7, line: 1474, type: !189, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !183, !61}
!191 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !69, file: !7, line: 1478, type: !189, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !69, file: !7, line: 1485, type: !193, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!31, !174}
!195 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !69, file: !7, line: 1495, type: !196, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{!27, !174}
!198 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !69, file: !7, line: 1506, type: !196, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !69, file: !7, line: 1518, type: !193, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !69, file: !7, line: 1523, type: !201, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{!27, !174, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!205 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !69, file: !7, line: 1534, type: !206, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!41, !183, !81}
!208 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !69, file: !7, line: 1545, type: !185, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_key", scope: !21, file: !5, line: 85, baseType: !13, size: 64, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "has_eviction_key", scope: !21, file: !5, line: 86, baseType: !61, size: 8, offset: 704)
!211 = !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by", scope: !21, file: !5, line: 88, type: !212, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{!61, !214, !215, !31, !35, !217, !40, !219, !61, !13}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!220 = !DISubprogram(name: "destroy", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv", scope: !21, file: !5, line: 93, type: !221, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !214}
!223 = !DISubprogram(name: "buffer", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi", scope: !21, file: !5, line: 94, type: !224, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !214, !40}
!226 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !68, size: 64)
!227 = !{!228}
!228 = !DISubrange(count: 256)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "most_recently_used", linkageName: "_ZN6Halide7Runtime8Internal18most_recently_usedE", scope: !2, file: !5, line: 202, type: !20, isLocal: false, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "least_recently_used", linkageName: "_ZN6Halide7Runtime8Internal19least_recently_usedE", scope: !2, file: !5, line: 203, type: !20, isLocal: false, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "max_cache_size", linkageName: "_ZN6Halide7Runtime8Internal14max_cache_sizeE", scope: !2, file: !5, line: 206, type: !235, isLocal: false, isDefinition: true)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 9, baseType: !236)
!236 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "current_cache_size", linkageName: "_ZN6Halide7Runtime8Internal18current_cache_sizeE", scope: !2, file: !5, line: 207, type: !235, isLocal: false, isDefinition: true)
!239 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !240, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, retainedTypes: !242, globals: !331, imports: !338, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!241 = !{!133, !176}
!242 = !{!81, !243, !13, !324, !27, !67, !43, !31, !35, !20, !329, !249}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !245, file: !244, line: 203, baseType: !246)
!244 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!245 = !DINamespace(scope: !2)
!246 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !245, file: !244, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !247, templateParams: !321)
!247 = !{!248, !251, !252, !253, !254, !255, !257, !261, !267, !270, !273, !276, !279, !283, !287, !292, !296, !299, !303, !306, !309, !314, !315, !318, !319, !320}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !246, file: !244, line: 32, baseType: !249, size: 64, flags: DIFlagPublic)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !246, file: !244, line: 32, baseType: !249, size: 64, offset: 64, flags: DIFlagPublic)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !246, file: !244, line: 32, baseType: !249, size: 64, offset: 128, flags: DIFlagPublic)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !246, file: !244, line: 33, baseType: !81, size: 64, offset: 192, flags: DIFlagPublic)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !246, file: !244, line: 34, baseType: !61, size: 8, offset: 256, flags: DIFlagPublic)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !246, file: !244, line: 35, baseType: !256, size: 8, offset: 264, flags: DIFlagPublic)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 8, elements: !15)
!257 = !DISubprogram(name: "Printer", scope: !246, file: !244, line: 37, type: !258, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !260, !81, !249}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!261 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !246, file: !244, line: 57, type: !262, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !260, !265}
!264 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !246, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!267 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !246, file: !244, line: 67, type: !268, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubroutineType(types: !269)
!269 = !{!264, !260, !235}
!270 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !246, file: !244, line: 72, type: !271, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!264, !260, !40}
!273 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !246, file: !244, line: 77, type: !274, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!264, !260, !13}
!276 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !246, file: !244, line: 82, type: !277, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!264, !260, !35}
!279 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !246, file: !244, line: 87, type: !280, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{!264, !260, !282}
!282 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!283 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !246, file: !244, line: 92, type: !284, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!264, !260, !286}
!286 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!287 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !246, file: !244, line: 97, type: !288, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!264, !260, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!292 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !246, file: !244, line: 102, type: !293, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!264, !260, !295}
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!296 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !246, file: !244, line: 108, type: !297, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!264, !260, !159}
!299 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !246, file: !244, line: 113, type: !300, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{!264, !260, !302}
!302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !218, size: 64)
!303 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !246, file: !244, line: 119, type: !304, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!265, !260}
!306 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !246, file: !244, line: 131, type: !307, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !260}
!309 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !246, file: !244, line: 139, type: !310, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubroutineType(types: !311)
!311 = !{!13, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!314 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !246, file: !244, line: 143, type: !310, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !246, file: !244, line: 148, type: !316, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !260, !41}
!318 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !246, file: !244, line: 158, type: !304, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !246, file: !244, line: 162, type: !307, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubprogram(name: "~Printer", scope: !246, file: !244, line: 166, type: !307, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !{!322, !323}
!322 = !DITemplateValueParameter(name: "type", type: !41, value: i32 0)
!323 = !DITemplateValueParameter(name: "length", type: !14, value: i64 1024)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CacheBlockHeader", scope: !2, file: !5, line: 97, size: 128, flags: DIFlagTypePassByValue, elements: !326, identifier: "_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE")
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !325, file: !5, line: 98, baseType: !20, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !325, file: !5, line: 99, baseType: !35, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !12, line: 28, baseType: !330)
!330 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!331 = !{!0, !17, !229, !231, !233, !237, !332, !335}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!333 = distinct !DIGlobalVariable(name: "kHashTableSize", scope: !2, file: !5, line: 198, type: !334, isLocal: true, isDefinition: true)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!336 = distinct !DIGlobalVariable(name: "kDefaultCacheSize", scope: !2, file: !5, line: 205, type: !337, isLocal: true, isDefinition: true)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!338 = !{!339}
!339 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !239, entity: !2, file: !12, line: 225)
!340 = !{i32 7, !"Dwarf Version", i32 4}
!341 = !{i32 2, !"Debug Info Version", i32 3}
!342 = !{i32 1, !"wchar_size", i32 4}
!343 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!344 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !2, file: !345, line: 47, type: !346, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !362)
!345 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348, !41, !235, !235}
!348 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !2, file: !345, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !351, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!351 = !{!352, !353, !354, !355, !359, !360, !361}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !350, file: !345, line: 35, baseType: !13, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !350, file: !345, line: 35, baseType: !13, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !350, file: !345, line: 37, baseType: !13, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !350, file: !345, line: 39, baseType: !356, size: 1024, offset: 192)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !350, file: !345, line: 41, baseType: !356, size: 1024, offset: 1216)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !350, file: !345, line: 42, baseType: !356, size: 1024, offset: 2240)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !350, file: !345, line: 44, baseType: !13, size: 64, offset: 3264)
!362 = !{!363, !364, !365, !366, !367, !370, !371}
!363 = !DILocalVariable(name: "copy", arg: 1, scope: !344, file: !345, line: 47, type: !348)
!364 = !DILocalVariable(name: "d", arg: 2, scope: !344, file: !345, line: 47, type: !41)
!365 = !DILocalVariable(name: "src_off", arg: 3, scope: !344, file: !345, line: 47, type: !235)
!366 = !DILocalVariable(name: "dst_off", arg: 4, scope: !344, file: !345, line: 47, type: !235)
!367 = !DILocalVariable(name: "from", scope: !368, file: !345, line: 54, type: !290)
!368 = distinct !DILexicalBlock(scope: !369, file: !345, line: 53, column: 18)
!369 = distinct !DILexicalBlock(scope: !344, file: !345, line: 53, column: 9)
!370 = !DILocalVariable(name: "to", scope: !368, file: !345, line: 55, type: !81)
!371 = !DILocalVariable(name: "i", scope: !372, file: !345, line: 58, type: !13)
!372 = distinct !DILexicalBlock(scope: !373, file: !345, line: 58, column: 9)
!373 = distinct !DILexicalBlock(scope: !369, file: !345, line: 57, column: 12)
!374 = !DILocation(line: 0, scope: !344)
!375 = !DILocation(line: 49, column: 14, scope: !344)
!376 = !DILocation(line: 49, column: 19, scope: !344)
!377 = !DILocation(line: 49, column: 22, scope: !344)
!378 = !{!379, !379, i64 0}
!379 = !{!"long long", !380, i64 0}
!380 = !{!"omnipotent char", !381, i64 0}
!381 = !{!"Simple C++ TBAA"}
!382 = !DILocation(line: 49, column: 37, scope: !344)
!383 = !DILocation(line: 49, column: 5, scope: !344)
!384 = !DILocation(line: 50, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !344, file: !345, line: 49, column: 43)
!386 = distinct !{!386, !383, !387, !388}
!387 = !DILocation(line: 51, column: 5, scope: !344)
!388 = !{!"llvm.loop.mustprogress"}
!389 = !DILocation(line: 53, column: 11, scope: !369)
!390 = !DILocation(line: 53, column: 9, scope: !344)
!391 = !DILocation(line: 0, scope: !372)
!392 = !DILocation(line: 58, column: 34, scope: !393)
!393 = distinct !DILexicalBlock(scope: !372, file: !345, line: 58, column: 9)
!394 = !DILocation(line: 58, column: 32, scope: !393)
!395 = !DILocation(line: 58, column: 9, scope: !372)
!396 = !DILocation(line: 54, column: 42, scope: !368)
!397 = !{!398, !379, i64 0}
!398 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !379, i64 0, !379, i64 8, !379, i64 16, !380, i64 24, !380, i64 152, !380, i64 280, !379, i64 408}
!399 = !DILocation(line: 54, column: 46, scope: !368)
!400 = !DILocation(line: 54, column: 28, scope: !368)
!401 = !DILocation(line: 0, scope: !368)
!402 = !DILocation(line: 55, column: 34, scope: !368)
!403 = !{!398, !379, i64 8}
!404 = !DILocation(line: 55, column: 38, scope: !368)
!405 = !DILocation(line: 55, column: 20, scope: !368)
!406 = !DILocation(line: 56, column: 31, scope: !368)
!407 = !{!398, !379, i64 408}
!408 = !DILocation(line: 56, column: 9, scope: !368)
!409 = !DILocation(line: 57, column: 5, scope: !368)
!410 = !DILocation(line: 59, column: 13, scope: !411)
!411 = distinct !DILexicalBlock(scope: !393, file: !345, line: 58, column: 55)
!412 = !DILocation(line: 60, column: 24, scope: !411)
!413 = !DILocation(line: 60, column: 21, scope: !411)
!414 = !DILocation(line: 61, column: 24, scope: !411)
!415 = !DILocation(line: 61, column: 21, scope: !411)
!416 = !DILocation(line: 58, column: 51, scope: !393)
!417 = distinct !{!417, !395, !418, !388}
!418 = !DILocation(line: 62, column: 9, scope: !372)
!419 = !DILocation(line: 64, column: 1, scope: !344)
!420 = !DISubprogram(name: "memcpy", scope: !12, file: !12, line: 94, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!81, !81, !290, !32}
!423 = !{}
!424 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !2, file: !345, line: 66, type: !425, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !348, !81}
!427 = !{!428, !429}
!428 = !DILocalVariable(name: "copy", arg: 1, scope: !424, file: !345, line: 66, type: !348)
!429 = !DILocalVariable(name: "user_context", arg: 2, scope: !424, file: !345, line: 66, type: !81)
!430 = !DILocation(line: 0, scope: !424)
!431 = !DILocation(line: 68, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !424, file: !345, line: 68, column: 9)
!433 = !DILocation(line: 68, column: 26, scope: !432)
!434 = !DILocation(line: 68, column: 18, scope: !432)
!435 = !DILocation(line: 68, column: 9, scope: !424)
!436 = !DILocation(line: 69, column: 58, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !345, line: 68, column: 31)
!438 = !{!398, !379, i64 16}
!439 = !DILocation(line: 69, column: 9, scope: !437)
!440 = !DILocation(line: 70, column: 5, scope: !437)
!441 = !DILocalVariable(name: "this", arg: 1, scope: !442, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!442 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !246, file: !244, line: 37, type: !258, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !257, retainedNodes: !443)
!443 = !{!441, !444, !445}
!444 = !DILocalVariable(name: "ctx", arg: 2, scope: !442, file: !244, line: 37, type: !81)
!445 = !DILocalVariable(name: "mem", arg: 3, scope: !442, file: !244, line: 37, type: !249)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!447 = !DILocation(line: 0, scope: !442, inlinedAt: !448)
!448 = distinct !DILocation(line: 71, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !432, file: !345, line: 70, column: 12)
!450 = !DILocation(line: 44, column: 27, scope: !451, inlinedAt: !448)
!451 = distinct !DILexicalBlock(scope: !452, file: !244, line: 43, column: 16)
!452 = distinct !DILexicalBlock(scope: !453, file: !244, line: 41, column: 20)
!453 = distinct !DILexicalBlock(scope: !454, file: !244, line: 39, column: 13)
!454 = distinct !DILexicalBlock(scope: !442, file: !244, line: 38, column: 54)
!455 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !448)
!456 = distinct !DILexicalBlock(scope: !454, file: !244, line: 48, column: 13)
!457 = !DILocation(line: 48, column: 13, scope: !454, inlinedAt: !448)
!458 = !DILocalVariable(name: "this", arg: 1, scope: !459, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!459 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !246, file: !244, line: 57, type: !262, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !261, retainedNodes: !460)
!460 = !{!458, !461}
!461 = !DILocalVariable(name: "arg", arg: 2, scope: !459, file: !244, line: 57, type: !265)
!462 = !DILocation(line: 0, scope: !459, inlinedAt: !463)
!463 = distinct !DILocation(line: 71, column: 29, scope: !449)
!464 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !463)
!465 = distinct !DILexicalBlock(scope: !466, file: !244, line: 61, column: 16)
!466 = distinct !DILexicalBlock(scope: !459, file: !244, line: 59, column: 13)
!467 = !DILocalVariable(name: "this", arg: 1, scope: !468, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!468 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !246, file: !244, line: 166, type: !307, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !320, retainedNodes: !469)
!469 = !{!467}
!470 = !DILocation(line: 0, scope: !468, inlinedAt: !471)
!471 = distinct !DILocation(line: 71, column: 9, scope: !449)
!472 = !DILocation(line: 168, column: 13, scope: !473, inlinedAt: !471)
!473 = distinct !DILexicalBlock(scope: !474, file: !244, line: 167, column: 19)
!474 = distinct !DILexicalBlock(scope: !475, file: !244, line: 167, column: 13)
!475 = distinct !DILexicalBlock(scope: !468, file: !244, line: 166, column: 16)
!476 = !DILocation(line: 169, column: 9, scope: !473, inlinedAt: !471)
!477 = !DILocation(line: 49, column: 23, scope: !478, inlinedAt: !448)
!478 = distinct !DILexicalBlock(scope: !456, file: !244, line: 48, column: 18)
!479 = !DILocation(line: 50, column: 18, scope: !478, inlinedAt: !448)
!480 = !{!380, !380, i64 0}
!481 = !DILocalVariable(name: "this", arg: 1, scope: !482, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!482 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !246, file: !244, line: 162, type: !307, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !319, retainedNodes: !483)
!483 = !{!481}
!484 = !DILocation(line: 0, scope: !482, inlinedAt: !485)
!485 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !471)
!486 = distinct !DILexicalBlock(scope: !474, file: !244, line: 169, column: 16)
!487 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !485)
!488 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !485)
!489 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !485)
!490 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !471)
!491 = distinct !DILexicalBlock(scope: !492, file: !244, line: 173, column: 46)
!492 = distinct !DILexicalBlock(scope: !493, file: !244, line: 173, column: 24)
!493 = distinct !DILexicalBlock(scope: !486, file: !244, line: 171, column: 17)
!494 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !471)
!495 = distinct !DILexicalBlock(scope: !496, file: !244, line: 180, column: 40)
!496 = distinct !DILexicalBlock(scope: !475, file: !244, line: 180, column: 13)
!497 = !DILocation(line: 73, column: 1, scope: !424)
!498 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !2, file: !345, line: 76, type: !499, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!350, !217, !61, !217, !61}
!501 = !{!502, !503, !504, !505, !506, !507, !509, !511, !514, !517, !519, !522, !523, !524, !526}
!502 = !DILocalVariable(name: "src", arg: 1, scope: !498, file: !345, line: 76, type: !217)
!503 = !DILocalVariable(name: "src_host", arg: 2, scope: !498, file: !345, line: 76, type: !61)
!504 = !DILocalVariable(name: "dst", arg: 3, scope: !498, file: !345, line: 77, type: !217)
!505 = !DILocalVariable(name: "dst_host", arg: 4, scope: !498, file: !345, line: 77, type: !61)
!506 = !DILocalVariable(name: "c", scope: !498, file: !345, line: 79, type: !350)
!507 = !DILocalVariable(name: "i", scope: !508, file: !345, line: 83, type: !41)
!508 = distinct !DILexicalBlock(scope: !498, file: !345, line: 83, column: 5)
!509 = !DILocalVariable(name: "i", scope: !510, file: !345, line: 91, type: !41)
!510 = distinct !DILexicalBlock(scope: !498, file: !345, line: 91, column: 5)
!511 = !DILocalVariable(name: "zero", scope: !512, file: !345, line: 100, type: !350)
!512 = distinct !DILexicalBlock(scope: !513, file: !345, line: 98, column: 42)
!513 = distinct !DILexicalBlock(scope: !498, file: !345, line: 96, column: 9)
!514 = !DILocalVariable(name: "zero", scope: !515, file: !345, line: 107, type: !350)
!515 = distinct !DILexicalBlock(scope: !516, file: !345, line: 104, column: 28)
!516 = distinct !DILexicalBlock(scope: !498, file: !345, line: 104, column: 9)
!517 = !DILocalVariable(name: "i", scope: !518, file: !345, line: 115, type: !41)
!518 = distinct !DILexicalBlock(scope: !498, file: !345, line: 115, column: 5)
!519 = !DILocalVariable(name: "dst_stride_bytes", scope: !520, file: !345, line: 117, type: !13)
!520 = distinct !DILexicalBlock(scope: !521, file: !345, line: 115, column: 47)
!521 = distinct !DILexicalBlock(scope: !518, file: !345, line: 115, column: 5)
!522 = !DILocalVariable(name: "src_stride_bytes", scope: !520, file: !345, line: 118, type: !13)
!523 = !DILocalVariable(name: "insert", scope: !520, file: !345, line: 120, type: !41)
!524 = !DILocalVariable(name: "j", scope: !525, file: !345, line: 128, type: !41)
!525 = distinct !DILexicalBlock(scope: !520, file: !345, line: 128, column: 9)
!526 = !DILocalVariable(name: "j", scope: !527, file: !345, line: 151, type: !41)
!527 = distinct !DILexicalBlock(scope: !528, file: !345, line: 151, column: 9)
!528 = distinct !DILexicalBlock(scope: !498, file: !345, line: 145, column: 51)
!529 = !DILocation(line: 0, scope: !498)
!530 = !DILocation(line: 79, column: 5, scope: !498)
!531 = !DILocation(line: 79, column: 17, scope: !498)
!532 = !DILocation(line: 80, column: 13, scope: !498)
!533 = !DILocation(line: 80, column: 39, scope: !498)
!534 = !{!535, !536, i64 16}
!535 = !{!"_ZTS15halide_buffer_t", !379, i64 0, !536, i64 8, !536, i64 16, !379, i64 24, !537, i64 32, !540, i64 36, !536, i64 40, !536, i64 48}
!536 = !{!"any pointer", !380, i64 0}
!537 = !{!"_ZTS13halide_type_t", !538, i64 0, !380, i64 1, !539, i64 2}
!538 = !{!"_ZTS18halide_type_code_t", !380, i64 0}
!539 = !{!"short", !380, i64 0}
!540 = !{!"int", !380, i64 0}
!541 = !DILocation(line: 80, column: 24, scope: !498)
!542 = !DILocation(line: 80, column: 51, scope: !498)
!543 = !{!535, !379, i64 0}
!544 = !DILocation(line: 80, column: 7, scope: !498)
!545 = !DILocation(line: 80, column: 11, scope: !498)
!546 = !DILocation(line: 81, column: 13, scope: !498)
!547 = !DILocation(line: 81, column: 39, scope: !498)
!548 = !DILocation(line: 81, column: 24, scope: !498)
!549 = !DILocation(line: 81, column: 51, scope: !498)
!550 = !DILocation(line: 81, column: 7, scope: !498)
!551 = !DILocation(line: 81, column: 11, scope: !498)
!552 = !DILocalVariable(name: "this", arg: 1, scope: !553, type: !555, flags: DIFlagArtificial | DIFlagObjectPointer)
!553 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !129, file: !7, line: 481, type: !163, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !162, retainedNodes: !554)
!554 = !{!552}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!556 = !DILocation(line: 0, scope: !553, inlinedAt: !557)
!557 = distinct !DILocation(line: 82, column: 30, scope: !498)
!558 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !557)
!559 = !{!537, !380, i64 1}
!560 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !557)
!561 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !557)
!562 = !DILocation(line: 82, column: 20, scope: !498)
!563 = !DILocation(line: 82, column: 7, scope: !498)
!564 = !DILocation(line: 82, column: 18, scope: !498)
!565 = !DILocation(line: 0, scope: !508)
!566 = !DILocation(line: 84, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !345, line: 83, column: 45)
!568 = distinct !DILexicalBlock(scope: !508, file: !345, line: 83, column: 5)
!569 = !DILocation(line: 84, column: 21, scope: !567)
!570 = !DILocation(line: 85, column: 9, scope: !567)
!571 = !DILocation(line: 85, column: 31, scope: !567)
!572 = !DILocation(line: 86, column: 9, scope: !567)
!573 = !DILocation(line: 86, column: 31, scope: !567)
!574 = !DILocation(line: 90, column: 7, scope: !498)
!575 = !DILocation(line: 0, scope: !510)
!576 = !DILocation(line: 91, column: 30, scope: !577)
!577 = distinct !DILexicalBlock(scope: !510, file: !345, line: 91, column: 5)
!578 = !{!535, !540, i64 36}
!579 = !DILocation(line: 91, column: 23, scope: !577)
!580 = !DILocation(line: 91, column: 5, scope: !510)
!581 = !{!535, !536, i64 40}
!582 = !DILocation(line: 94, column: 17, scope: !498)
!583 = !DILocation(line: 94, column: 22, scope: !498)
!584 = !DILocation(line: 96, column: 33, scope: !513)
!585 = !DILocation(line: 96, column: 25, scope: !513)
!586 = !DILocation(line: 96, column: 44, scope: !513)
!587 = !DILocation(line: 92, column: 46, scope: !588)
!588 = distinct !DILexicalBlock(scope: !577, file: !345, line: 91, column: 47)
!589 = !{!590, !540, i64 8}
!590 = !{!"_ZTS18halide_dimension_t", !540, i64 0, !540, i64 4, !540, i64 8, !540, i64 12}
!591 = !DILocation(line: 92, column: 34, scope: !588)
!592 = !DILocation(line: 92, column: 68, scope: !588)
!593 = !{!590, !540, i64 0}
!594 = !DILocation(line: 92, column: 86, scope: !588)
!595 = !DILocation(line: 92, column: 72, scope: !588)
!596 = !DILocation(line: 92, column: 55, scope: !588)
!597 = !DILocation(line: 92, column: 53, scope: !588)
!598 = !DILocation(line: 92, column: 21, scope: !588)
!599 = !DILocation(line: 91, column: 43, scope: !577)
!600 = distinct !{!600, !580, !601, !388}
!601 = !DILocation(line: 93, column: 5, scope: !510)
!602 = !DILocation(line: 0, scope: !553, inlinedAt: !603)
!603 = distinct !DILocation(line: 97, column: 19, scope: !513)
!604 = !DILocation(line: 0, scope: !553, inlinedAt: !605)
!605 = distinct !DILocation(line: 97, column: 40, scope: !513)
!606 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !605)
!607 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !605)
!608 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !605)
!609 = !DILocation(line: 97, column: 27, scope: !513)
!610 = !DILocation(line: 97, column: 48, scope: !513)
!611 = !DILocation(line: 100, column: 21, scope: !512)
!612 = !DILocation(line: 101, column: 9, scope: !512)
!613 = !DILocation(line: 104, column: 22, scope: !516)
!614 = !DILocation(line: 104, column: 9, scope: !498)
!615 = !DILocation(line: 0, scope: !518)
!616 = !DILocation(line: 115, column: 5, scope: !518)
!617 = !DILocation(line: 115, column: 23, scope: !521)
!618 = !DILocation(line: 107, column: 21, scope: !515)
!619 = !DILocation(line: 108, column: 9, scope: !515)
!620 = !DILocation(line: 144, column: 14, scope: !498)
!621 = !DILocation(line: 144, column: 28, scope: !498)
!622 = !DILocation(line: 144, column: 25, scope: !498)
!623 = !DILocation(line: 144, column: 50, scope: !498)
!624 = !DILocation(line: 145, column: 28, scope: !498)
!625 = !DILocation(line: 117, column: 59, scope: !520)
!626 = !DILocation(line: 117, column: 47, scope: !520)
!627 = !DILocation(line: 0, scope: !553, inlinedAt: !628)
!628 = distinct !DILocation(line: 117, column: 78, scope: !520)
!629 = !DILocation(line: 117, column: 66, scope: !520)
!630 = !DILocation(line: 0, scope: !520)
!631 = !DILocation(line: 118, column: 59, scope: !520)
!632 = !DILocation(line: 118, column: 47, scope: !520)
!633 = !DILocation(line: 0, scope: !553, inlinedAt: !634)
!634 = distinct !DILocation(line: 118, column: 78, scope: !520)
!635 = !DILocation(line: 118, column: 66, scope: !520)
!636 = !DILocation(line: 121, column: 33, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !345, line: 121, column: 9)
!638 = distinct !DILexicalBlock(scope: !520, file: !345, line: 121, column: 9)
!639 = !DILocation(line: 121, column: 9, scope: !638)
!640 = !DILocation(line: 128, column: 27, scope: !641)
!641 = distinct !DILexicalBlock(scope: !525, file: !345, line: 128, column: 9)
!642 = !DILocation(line: 124, column: 36, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !345, line: 124, column: 17)
!644 = distinct !DILexicalBlock(scope: !637, file: !345, line: 121, column: 48)
!645 = !DILocation(line: 124, column: 34, scope: !643)
!646 = !DILocation(line: 124, column: 63, scope: !643)
!647 = !DILocation(line: 121, column: 44, scope: !637)
!648 = distinct !{!648, !639, !649, !388}
!649 = !DILocation(line: 127, column: 9, scope: !638)
!650 = !DILocation(line: 0, scope: !638)
!651 = !DILocation(line: 0, scope: !525)
!652 = !DILocation(line: 128, column: 9, scope: !525)
!653 = !DILocation(line: 133, column: 40, scope: !520)
!654 = !{!590, !540, i64 4}
!655 = !DILocation(line: 133, column: 28, scope: !520)
!656 = !DILocation(line: 133, column: 9, scope: !520)
!657 = !DILocation(line: 133, column: 26, scope: !520)
!658 = !DILocation(line: 135, column: 9, scope: !520)
!659 = !DILocation(line: 135, column: 36, scope: !520)
!660 = !DILocation(line: 136, column: 9, scope: !520)
!661 = !DILocation(line: 136, column: 36, scope: !520)
!662 = !DILocation(line: 115, column: 43, scope: !521)
!663 = distinct !{!663, !616, !664, !388}
!664 = !DILocation(line: 137, column: 5, scope: !518)
!665 = !DILocation(line: 129, column: 38, scope: !666)
!666 = distinct !DILexicalBlock(scope: !641, file: !345, line: 128, column: 42)
!667 = !DILocation(line: 129, column: 27, scope: !666)
!668 = !DILocation(line: 129, column: 13, scope: !666)
!669 = !DILocation(line: 129, column: 25, scope: !666)
!670 = !DILocation(line: 130, column: 37, scope: !666)
!671 = !DILocation(line: 130, column: 13, scope: !666)
!672 = !DILocation(line: 130, column: 35, scope: !666)
!673 = !DILocation(line: 131, column: 37, scope: !666)
!674 = !DILocation(line: 131, column: 13, scope: !666)
!675 = !DILocation(line: 131, column: 35, scope: !666)
!676 = distinct !{!676, !652, !677, !388}
!677 = !DILocation(line: 132, column: 9, scope: !525)
!678 = !DILocation(line: 145, column: 25, scope: !498)
!679 = !DILocation(line: 144, column: 5, scope: !498)
!680 = !DILocation(line: 147, column: 25, scope: !528)
!681 = !DILocation(line: 147, column: 22, scope: !528)
!682 = !DILocation(line: 0, scope: !527)
!683 = !DILocation(line: 152, column: 31, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !345, line: 151, column: 49)
!685 = distinct !DILexicalBlock(scope: !527, file: !345, line: 151, column: 9)
!686 = !DILocation(line: 152, column: 29, scope: !684)
!687 = !DILocation(line: 153, column: 41, scope: !684)
!688 = !DILocation(line: 153, column: 39, scope: !684)
!689 = !DILocation(line: 154, column: 41, scope: !684)
!690 = !DILocation(line: 154, column: 39, scope: !684)
!691 = !DILocation(line: 156, column: 37, scope: !528)
!692 = !DILocation(line: 157, column: 47, scope: !528)
!693 = !DILocation(line: 158, column: 47, scope: !528)
!694 = distinct !{!694, !679, !695, !388}
!695 = !DILocation(line: 159, column: 5, scope: !498)
!696 = !DILocation(line: 160, column: 12, scope: !498)
!697 = !{i64 0, i64 8, !378, i64 8, i64 8, !378, i64 16, i64 8, !378, i64 24, i64 128, !480, i64 152, i64 128, !480, i64 280, i64 128, !480, i64 408, i64 8, !378}
!698 = !DILocation(line: 160, column: 5, scope: !498)
!699 = !DILocation(line: 161, column: 1, scope: !498)
!700 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !2, file: !345, line: 163, type: !701, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!350, !217}
!703 = !{!704}
!704 = !DILocalVariable(name: "buf", arg: 1, scope: !700, file: !345, line: 163, type: !217)
!705 = !DILocation(line: 0, scope: !700)
!706 = !DILocation(line: 164, column: 12, scope: !700)
!707 = !DILocation(line: 164, column: 5, scope: !700)
!708 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !2, file: !345, line: 167, type: !701, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !709)
!709 = !{!710}
!710 = !DILocalVariable(name: "buf", arg: 1, scope: !708, file: !345, line: 167, type: !217)
!711 = !DILocation(line: 0, scope: !708)
!712 = !DILocation(line: 168, column: 12, scope: !708)
!713 = !DILocation(line: 168, column: 5, scope: !708)
!714 = distinct !DISubprogram(name: "keys_equal", linkageName: "_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m", scope: !2, file: !5, line: 57, type: !715, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!61, !215, !215, !31}
!717 = !{!718, !719, !720}
!718 = !DILocalVariable(name: "key1", arg: 1, scope: !714, file: !5, line: 57, type: !215)
!719 = !DILocalVariable(name: "key2", arg: 2, scope: !714, file: !5, line: 57, type: !215)
!720 = !DILocalVariable(name: "key_size", arg: 3, scope: !714, file: !5, line: 57, type: !31)
!721 = !DILocation(line: 0, scope: !714)
!722 = !DILocation(line: 58, column: 12, scope: !714)
!723 = !DILocation(line: 58, column: 41, scope: !714)
!724 = !DILocation(line: 58, column: 5, scope: !714)
!725 = !DISubprogram(name: "memcmp", scope: !12, file: !12, line: 95, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!726 = !DISubroutineType(types: !727)
!727 = !{!41, !290, !290, !32}
!728 = distinct !DISubprogram(name: "buffer_has_shape", linkageName: "_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t", scope: !2, file: !5, line: 61, type: !729, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !733)
!729 = !DISubroutineType(types: !730)
!730 = !{!61, !217, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "buf", arg: 1, scope: !728, file: !5, line: 61, type: !217)
!735 = !DILocalVariable(name: "shape", arg: 2, scope: !728, file: !5, line: 61, type: !731)
!736 = !DILocalVariable(name: "i", scope: !737, file: !5, line: 62, type: !41)
!737 = distinct !DILexicalBlock(scope: !728, file: !5, line: 62, column: 5)
!738 = !DILocation(line: 0, scope: !728)
!739 = !DILocation(line: 0, scope: !737)
!740 = !DILocation(line: 62, column: 30, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !5, line: 62, column: 5)
!742 = !DILocation(line: 62, column: 23, scope: !741)
!743 = !DILocation(line: 62, column: 5, scope: !737)
!744 = !DILocation(line: 63, column: 18, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !5, line: 63, column: 13)
!746 = distinct !DILexicalBlock(scope: !741, file: !5, line: 62, column: 47)
!747 = distinct !{!747, !743, !748, !388}
!748 = !DILocation(line: 66, column: 5, scope: !737)
!749 = !DILocalVariable(name: "this", arg: 1, scope: !750, type: !753, flags: DIFlagArtificial | DIFlagObjectPointer)
!750 = distinct !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !45, file: !7, line: 1400, type: !59, scopeLine: 1400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !65, retainedNodes: !751)
!751 = !{!749, !752}
!752 = !DILocalVariable(name: "other", arg: 2, scope: !750, file: !7, line: 1400, type: !64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!754 = !DILocation(line: 0, scope: !750, inlinedAt: !755)
!755 = distinct !DILocation(line: 63, column: 25, scope: !745)
!756 = !DILocalVariable(name: "this", arg: 1, scope: !757, type: !753, flags: DIFlagArtificial | DIFlagObjectPointer)
!757 = distinct !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !45, file: !7, line: 1393, type: !59, scopeLine: 1393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !58, retainedNodes: !758)
!758 = !{!756, !759}
!759 = !DILocalVariable(name: "other", arg: 2, scope: !757, file: !7, line: 1393, type: !64)
!760 = !DILocation(line: 0, scope: !757, inlinedAt: !761)
!761 = distinct !DILocation(line: 1401, column: 24, scope: !750, inlinedAt: !755)
!762 = !DILocation(line: 1394, column: 17, scope: !757, inlinedAt: !761)
!763 = !DILocation(line: 1394, column: 30, scope: !757, inlinedAt: !761)
!764 = !DILocation(line: 1394, column: 21, scope: !757, inlinedAt: !761)
!765 = !DILocation(line: 1394, column: 35, scope: !757, inlinedAt: !761)
!766 = !DILocation(line: 1395, column: 17, scope: !757, inlinedAt: !761)
!767 = !DILocation(line: 1395, column: 33, scope: !757, inlinedAt: !761)
!768 = !DILocation(line: 1395, column: 24, scope: !757, inlinedAt: !761)
!769 = !DILocation(line: 1395, column: 41, scope: !757, inlinedAt: !761)
!770 = !DILocation(line: 1396, column: 17, scope: !757, inlinedAt: !761)
!771 = !DILocation(line: 1396, column: 33, scope: !757, inlinedAt: !761)
!772 = !DILocation(line: 1396, column: 24, scope: !757, inlinedAt: !761)
!773 = !DILocation(line: 1396, column: 41, scope: !757, inlinedAt: !761)
!774 = !DILocation(line: 1397, column: 17, scope: !757, inlinedAt: !761)
!775 = !{!590, !540, i64 12}
!776 = !DILocation(line: 1397, column: 32, scope: !757, inlinedAt: !761)
!777 = !DILocation(line: 1397, column: 23, scope: !757, inlinedAt: !761)
!778 = !DILocation(line: 62, column: 43, scope: !741)
!779 = !DILocation(line: 63, column: 13, scope: !746)
!780 = !DILocation(line: 68, column: 1, scope: !728)
!781 = distinct !DISubprogram(name: "header_bytes", linkageName: "_ZN6Halide7Runtime8Internal12header_bytesEv", scope: !2, file: !5, line: 107, type: !782, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!31}
!784 = !{!785, !786}
!785 = !DILocalVariable(name: "s", scope: !781, file: !5, line: 108, type: !31)
!786 = !DILocalVariable(name: "mask", scope: !781, file: !5, line: 109, type: !31)
!787 = !DILocation(line: 0, scope: !781)
!788 = !DILocation(line: 109, column: 19, scope: !781)
!789 = !DILocation(line: 109, column: 45, scope: !781)
!790 = !DILocation(line: 110, column: 15, scope: !781)
!791 = !DILocation(line: 110, column: 25, scope: !781)
!792 = !DILocation(line: 110, column: 23, scope: !781)
!793 = !DILocation(line: 110, column: 5, scope: !781)
!794 = !DISubprogram(name: "halide_malloc_alignment", scope: !12, file: !12, line: 188, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!795 = !DISubroutineType(types: !796)
!796 = !{!41}
!797 = distinct !DISubprogram(name: "get_pointer_to_header", linkageName: "_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh", scope: !2, file: !5, line: 113, type: !798, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!324, !27}
!800 = !{!801}
!801 = !DILocalVariable(name: "host", arg: 1, scope: !797, file: !5, line: 113, type: !27)
!802 = !DILocation(line: 0, scope: !797)
!803 = !DILocation(line: 0, scope: !781, inlinedAt: !804)
!804 = distinct !DILocation(line: 114, column: 40, scope: !797)
!805 = !DILocation(line: 109, column: 19, scope: !781, inlinedAt: !804)
!806 = !DILocation(line: 109, column: 45, scope: !781, inlinedAt: !804)
!807 = !DILocation(line: 110, column: 15, scope: !781, inlinedAt: !804)
!808 = !DILocation(line: 110, column: 25, scope: !781, inlinedAt: !804)
!809 = !DILocation(line: 110, column: 23, scope: !781, inlinedAt: !804)
!810 = !DILocation(line: 114, column: 38, scope: !797)
!811 = !DILocation(line: 114, column: 12, scope: !797)
!812 = !DILocation(line: 114, column: 5, scope: !797)
!813 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by", scope: !21, file: !5, line: 117, type: !212, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !211, retainedNodes: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !829, !831, !833}
!815 = !DILocalVariable(name: "this", arg: 1, scope: !813, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!816 = !DILocalVariable(name: "cache_key", arg: 2, scope: !813, file: !5, line: 117, type: !215)
!817 = !DILocalVariable(name: "cache_key_size", arg: 3, scope: !813, file: !5, line: 117, type: !31)
!818 = !DILocalVariable(name: "key_hash", arg: 4, scope: !813, file: !5, line: 118, type: !35)
!819 = !DILocalVariable(name: "computed_bounds_buf", arg: 5, scope: !813, file: !5, line: 118, type: !217)
!820 = !DILocalVariable(name: "tuples", arg: 6, scope: !813, file: !5, line: 119, type: !40)
!821 = !DILocalVariable(name: "tuple_buffers", arg: 7, scope: !813, file: !5, line: 119, type: !219)
!822 = !DILocalVariable(name: "has_eviction_key_arg", arg: 8, scope: !813, file: !5, line: 120, type: !61)
!823 = !DILocalVariable(name: "eviction_key_arg", arg: 9, scope: !813, file: !5, line: 120, type: !13)
!824 = !DILocalVariable(name: "storage_bytes", scope: !813, file: !5, line: 131, type: !31)
!825 = !DILocalVariable(name: "shape_offset", scope: !813, file: !5, line: 138, type: !31)
!826 = !DILocalVariable(name: "key_offset", scope: !813, file: !5, line: 142, type: !31)
!827 = !DILocalVariable(name: "i", scope: !828, file: !5, line: 157, type: !31)
!828 = distinct !DILexicalBlock(scope: !813, file: !5, line: 157, column: 5)
!829 = !DILocalVariable(name: "i", scope: !830, file: !5, line: 162, type: !41)
!830 = distinct !DILexicalBlock(scope: !813, file: !5, line: 162, column: 5)
!831 = !DILocalVariable(name: "i", scope: !832, file: !5, line: 167, type: !35)
!832 = distinct !DILexicalBlock(scope: !813, file: !5, line: 167, column: 5)
!833 = !DILocalVariable(name: "j", scope: !834, file: !5, line: 170, type: !41)
!834 = distinct !DILexicalBlock(scope: !835, file: !5, line: 170, column: 9)
!835 = distinct !DILexicalBlock(scope: !836, file: !5, line: 167, column: 48)
!836 = distinct !DILexicalBlock(scope: !832, file: !5, line: 167, column: 5)
!837 = !DILocation(line: 0, scope: !813)
!838 = !DILocation(line: 121, column: 5, scope: !813)
!839 = !DILocation(line: 121, column: 10, scope: !813)
!840 = !{!841, !536, i64 0}
!841 = !{!"_ZTSN6Halide7Runtime8Internal10CacheEntryE", !536, i64 0, !536, i64 8, !536, i64 16, !536, i64 24, !842, i64 32, !536, i64 40, !540, i64 48, !540, i64 52, !540, i64 56, !540, i64 60, !536, i64 64, !536, i64 72, !379, i64 80, !843, i64 88}
!842 = !{!"long", !380, i64 0}
!843 = !{!"bool", !380, i64 0}
!844 = !DILocation(line: 122, column: 5, scope: !813)
!845 = !DILocation(line: 122, column: 17, scope: !813)
!846 = !{!841, !536, i64 8}
!847 = !DILocation(line: 123, column: 5, scope: !813)
!848 = !DILocation(line: 123, column: 17, scope: !813)
!849 = !{!841, !536, i64 16}
!850 = !DILocation(line: 124, column: 5, scope: !813)
!851 = !DILocation(line: 124, column: 14, scope: !813)
!852 = !{!841, !842, i64 32}
!853 = !DILocation(line: 125, column: 5, scope: !813)
!854 = !DILocation(line: 125, column: 10, scope: !813)
!855 = !{!841, !540, i64 48}
!856 = !DILocation(line: 126, column: 5, scope: !813)
!857 = !DILocation(line: 126, column: 18, scope: !813)
!858 = !{!841, !540, i64 52}
!859 = !DILocation(line: 127, column: 5, scope: !813)
!860 = !DILocation(line: 127, column: 17, scope: !813)
!861 = !{!841, !540, i64 56}
!862 = !DILocation(line: 128, column: 39, scope: !813)
!863 = !DILocation(line: 128, column: 5, scope: !813)
!864 = !DILocation(line: 128, column: 16, scope: !813)
!865 = !{!841, !540, i64 60}
!866 = !DILocation(line: 134, column: 48, scope: !813)
!867 = !DILocation(line: 134, column: 46, scope: !813)
!868 = !DILocation(line: 139, column: 51, scope: !813)
!869 = !DILocation(line: 139, column: 77, scope: !813)
!870 = !DILocation(line: 139, column: 64, scope: !813)
!871 = !DILocation(line: 139, column: 49, scope: !813)
!872 = !DILocation(line: 139, column: 62, scope: !813)
!873 = !DILocation(line: 139, column: 19, scope: !813)
!874 = !DILocation(line: 143, column: 19, scope: !813)
!875 = !DILocation(line: 146, column: 35, scope: !813)
!876 = !DILocation(line: 146, column: 5, scope: !813)
!877 = !DILocation(line: 146, column: 22, scope: !813)
!878 = !{!841, !536, i64 24}
!879 = !DILocation(line: 147, column: 10, scope: !880)
!880 = distinct !DILexicalBlock(scope: !813, file: !5, line: 147, column: 9)
!881 = !DILocation(line: 147, column: 9, scope: !813)
!882 = !DILocation(line: 152, column: 5, scope: !813)
!883 = !DILocation(line: 152, column: 9, scope: !813)
!884 = !{!841, !536, i64 72}
!885 = !DILocation(line: 153, column: 63, scope: !813)
!886 = !DILocation(line: 153, column: 5, scope: !813)
!887 = !DILocation(line: 153, column: 21, scope: !813)
!888 = !{!841, !536, i64 64}
!889 = !DILocation(line: 154, column: 28, scope: !813)
!890 = !DILocation(line: 154, column: 5, scope: !813)
!891 = !DILocation(line: 154, column: 9, scope: !813)
!892 = !{!841, !536, i64 40}
!893 = !DILocation(line: 0, scope: !828)
!894 = !DILocation(line: 157, column: 28, scope: !895)
!895 = distinct !DILexicalBlock(scope: !828, file: !5, line: 157, column: 5)
!896 = !DILocation(line: 157, column: 26, scope: !895)
!897 = !DILocation(line: 157, column: 5, scope: !828)
!898 = !DILocation(line: 158, column: 18, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !5, line: 157, column: 43)
!900 = !DILocation(line: 158, column: 16, scope: !899)
!901 = distinct !{!901, !897, !902, !388}
!902 = !DILocation(line: 159, column: 5, scope: !828)
!903 = !DILocation(line: 0, scope: !830)
!904 = !DILocation(line: 162, column: 25, scope: !905)
!905 = distinct !DILexicalBlock(scope: !830, file: !5, line: 162, column: 5)
!906 = !DILocation(line: 162, column: 23, scope: !905)
!907 = !DILocation(line: 162, column: 5, scope: !830)
!908 = !DILocation(line: 158, column: 9, scope: !899)
!909 = !DILocation(line: 157, column: 39, scope: !895)
!910 = !DILocation(line: 0, scope: !832)
!911 = !DILocation(line: 167, column: 30, scope: !836)
!912 = !DILocation(line: 167, column: 28, scope: !836)
!913 = !DILocation(line: 167, column: 5, scope: !832)
!914 = !DILocation(line: 163, column: 51, scope: !915)
!915 = distinct !DILexicalBlock(scope: !905, file: !5, line: 162, column: 42)
!916 = !DILocation(line: 163, column: 30, scope: !915)
!917 = !DILocation(line: 163, column: 9, scope: !915)
!918 = !DILocation(line: 163, column: 28, scope: !915)
!919 = !{i64 0, i64 4, !920, i64 4, i64 4, !920, i64 8, i64 4, !920, i64 12, i64 4, !920}
!920 = !{!540, !540, i64 0}
!921 = !DILocation(line: 162, column: 38, scope: !905)
!922 = distinct !{!922, !907, !923, !388}
!923 = !DILocation(line: 164, column: 5, scope: !830)
!924 = distinct !{!924, !913, !925, !388}
!925 = !DILocation(line: 173, column: 5, scope: !832)
!926 = !DILocation(line: 175, column: 5, scope: !813)
!927 = !DILocation(line: 175, column: 22, scope: !813)
!928 = !{!841, !843, i64 88}
!929 = !DILocation(line: 176, column: 5, scope: !813)
!930 = !DILocation(line: 176, column: 18, scope: !813)
!931 = !{!841, !379, i64 80}
!932 = !DILocation(line: 177, column: 5, scope: !813)
!933 = !DILocation(line: 168, column: 19, scope: !835)
!934 = !{!536, !536, i64 0}
!935 = !DILocation(line: 168, column: 9, scope: !835)
!936 = !DILocation(line: 168, column: 16, scope: !835)
!937 = !{i64 0, i64 8, !378, i64 8, i64 8, !934, i64 16, i64 8, !934, i64 24, i64 8, !378, i64 32, i64 1, !938, i64 33, i64 1, !480, i64 34, i64 2, !939, i64 36, i64 4, !920, i64 40, i64 8, !934, i64 48, i64 8, !934}
!938 = !{!538, !538, i64 0}
!939 = !{!539, !539, i64 0}
!940 = !DILocation(line: 169, column: 22, scope: !835)
!941 = !DILocation(line: 169, column: 43, scope: !835)
!942 = !DILocation(line: 169, column: 50, scope: !835)
!943 = !DILocation(line: 169, column: 48, scope: !835)
!944 = !DILocation(line: 169, column: 38, scope: !835)
!945 = !DILocation(line: 169, column: 9, scope: !835)
!946 = !DILocation(line: 169, column: 16, scope: !835)
!947 = !DILocation(line: 169, column: 20, scope: !835)
!948 = !DILocation(line: 0, scope: !834)
!949 = !DILocation(line: 170, column: 27, scope: !950)
!950 = distinct !DILexicalBlock(scope: !834, file: !5, line: 170, column: 9)
!951 = !DILocation(line: 170, column: 9, scope: !834)
!952 = !DILocation(line: 171, column: 29, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !5, line: 170, column: 46)
!954 = !DILocation(line: 171, column: 47, scope: !953)
!955 = !DILocation(line: 171, column: 27, scope: !953)
!956 = !DILocation(line: 170, column: 29, scope: !950)
!957 = distinct !{!957, !951, !958, !388}
!958 = !DILocation(line: 172, column: 9, scope: !834)
!959 = !DILocation(line: 171, column: 13, scope: !953)
!960 = !DILocation(line: 171, column: 20, scope: !953)
!961 = !DILocation(line: 170, column: 42, scope: !950)
!962 = !DILocation(line: 178, column: 1, scope: !813)
!963 = !DISubprogram(name: "halide_malloc", scope: !7, file: !7, line: 354, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!964 = !DISubroutineType(types: !965)
!965 = !{!81, !81, !32}
!966 = distinct !DISubprogram(name: "destroy", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv", scope: !21, file: !5, line: 180, type: !221, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !220, retainedNodes: !967)
!967 = !{!968, !969}
!968 = !DILocalVariable(name: "this", arg: 1, scope: !966, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!969 = !DILocalVariable(name: "i", scope: !970, file: !5, line: 181, type: !35)
!970 = distinct !DILexicalBlock(scope: !966, file: !5, line: 181, column: 5)
!971 = !DILocation(line: 0, scope: !966)
!972 = !DILocation(line: 0, scope: !970)
!973 = !DILocation(line: 181, column: 30, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !5, line: 181, column: 5)
!975 = !DILocation(line: 181, column: 28, scope: !974)
!976 = !DILocation(line: 181, column: 5, scope: !970)
!977 = !DILocation(line: 185, column: 26, scope: !966)
!978 = !DILocation(line: 185, column: 5, scope: !966)
!979 = !DILocation(line: 186, column: 1, scope: !966)
!980 = !DILocation(line: 182, column: 38, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !5, line: 181, column: 48)
!982 = !DILocation(line: 182, column: 9, scope: !981)
!983 = !DILocation(line: 183, column: 52, scope: !981)
!984 = !DILocation(line: 183, column: 59, scope: !981)
!985 = !DILocation(line: 183, column: 30, scope: !981)
!986 = !DILocation(line: 183, column: 9, scope: !981)
!987 = !DILocation(line: 181, column: 44, scope: !974)
!988 = distinct !{!988, !976, !989, !388}
!989 = !DILocation(line: 184, column: 5, scope: !970)
!990 = !DISubprogram(name: "halide_device_free", scope: !7, file: !7, line: 837, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!991 = !DISubprogram(name: "halide_free", scope: !7, file: !7, line: 355, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !81, !81}
!994 = distinct !DISubprogram(name: "djb_hash", linkageName: "_ZN6Halide7Runtime8Internal8djb_hashEPKhm", scope: !2, file: !5, line: 188, type: !995, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!35, !215, !31}
!997 = !{!998, !999, !1000, !1001}
!998 = !DILocalVariable(name: "key", arg: 1, scope: !994, file: !5, line: 188, type: !215)
!999 = !DILocalVariable(name: "key_size", arg: 2, scope: !994, file: !5, line: 188, type: !31)
!1000 = !DILocalVariable(name: "h", scope: !994, file: !5, line: 189, type: !35)
!1001 = !DILocalVariable(name: "i", scope: !1002, file: !5, line: 190, type: !31)
!1002 = distinct !DILexicalBlock(scope: !994, file: !5, line: 190, column: 5)
!1003 = !DILocation(line: 0, scope: !994)
!1004 = !DILocation(line: 0, scope: !1002)
!1005 = !DILocation(line: 190, column: 26, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !5, line: 190, column: 5)
!1007 = !DILocation(line: 190, column: 5, scope: !1002)
!1008 = !DILocation(line: 193, column: 5, scope: !994)
!1009 = !DILocation(line: 191, column: 22, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1006, file: !5, line: 190, column: 43)
!1011 = !DILocation(line: 191, column: 28, scope: !1010)
!1012 = !DILocation(line: 191, column: 26, scope: !1010)
!1013 = !DILocation(line: 190, column: 39, scope: !1006)
!1014 = distinct !{!1014, !1007, !1015, !388}
!1015 = !DILocation(line: 192, column: 5, scope: !1002)
!1016 = distinct !DISubprogram(name: "prune_cache", linkageName: "_ZN6Halide7Runtime8Internal11prune_cacheEv", scope: !2, file: !5, line: 260, type: !1017, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null}
!1019 = !{!1020, !1021, !1023, !1026, !1027, !1028}
!1020 = !DILocalVariable(name: "prune_candidate", scope: !1016, file: !5, line: 264, type: !20)
!1021 = !DILocalVariable(name: "more_recent", scope: !1022, file: !5, line: 267, type: !20)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !5, line: 266, column: 40)
!1023 = !DILocalVariable(name: "h", scope: !1024, file: !5, line: 270, type: !35)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !5, line: 269, column: 49)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !5, line: 269, column: 13)
!1026 = !DILocalVariable(name: "index", scope: !1024, file: !5, line: 271, type: !35)
!1027 = !DILocalVariable(name: "prev_hash_entry", scope: !1024, file: !5, line: 274, type: !20)
!1028 = !DILocalVariable(name: "i", scope: !1029, file: !5, line: 302, type: !35)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 302, column: 13)
!1030 = !DILocation(line: 264, column: 35, scope: !1016)
!1031 = !DILocation(line: 0, scope: !1016)
!1032 = !DILocation(line: 265, column: 12, scope: !1016)
!1033 = !DILocation(line: 265, column: 33, scope: !1016)
!1034 = !DILocation(line: 265, column: 31, scope: !1016)
!1035 = !DILocation(line: 265, column: 48, scope: !1016)
!1036 = !DILocation(line: 265, column: 5, scope: !1016)
!1037 = !DILocation(line: 267, column: 52, scope: !1022)
!1038 = !DILocation(line: 0, scope: !1022)
!1039 = !DILocation(line: 269, column: 30, scope: !1025)
!1040 = !DILocation(line: 269, column: 43, scope: !1025)
!1041 = !DILocation(line: 269, column: 13, scope: !1022)
!1042 = !DILocation(line: 270, column: 43, scope: !1024)
!1043 = !DILocation(line: 0, scope: !1024)
!1044 = !DILocation(line: 271, column: 32, scope: !1024)
!1045 = !DILocation(line: 274, column: 43, scope: !1024)
!1046 = !DILocation(line: 275, column: 33, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 275, column: 17)
!1048 = !DILocation(line: 275, column: 17, scope: !1024)
!1049 = !DILocation(line: 276, column: 57, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !5, line: 275, column: 53)
!1051 = !DILocation(line: 276, column: 38, scope: !1050)
!1052 = !DILocation(line: 277, column: 13, scope: !1050)
!1053 = !DILocation(line: 278, column: 40, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !5, line: 277, column: 20)
!1055 = !DILocation(line: 278, column: 51, scope: !1054)
!1056 = !DILocation(line: 278, column: 71, scope: !1054)
!1057 = !DILocation(line: 278, column: 76, scope: !1054)
!1058 = !DILocation(line: 278, column: 17, scope: !1054)
!1059 = distinct !{!1059, !1058, !1060, !388}
!1060 = !DILocation(line: 280, column: 17, scope: !1054)
!1061 = !DILocation(line: 281, column: 17, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !5, line: 281, column: 17)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !5, line: 281, column: 17)
!1064 = distinct !DILexicalBlock(scope: !1054, file: !5, line: 281, column: 17)
!1065 = !DILocation(line: 282, column: 58, scope: !1054)
!1066 = !DILocation(line: 282, column: 34, scope: !1054)
!1067 = !DILocation(line: 282, column: 39, scope: !1054)
!1068 = !DILocation(line: 286, column: 17, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 286, column: 17)
!1070 = !DILocation(line: 286, column: 37, scope: !1069)
!1071 = !DILocation(line: 286, column: 17, scope: !1024)
!1072 = !DILocation(line: 287, column: 37, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 286, column: 57)
!1074 = !DILocation(line: 288, column: 13, scope: !1073)
!1075 = !DILocation(line: 289, column: 29, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 289, column: 17)
!1077 = !DILocation(line: 289, column: 17, scope: !1024)
!1078 = !DILocation(line: 290, column: 61, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !5, line: 289, column: 41)
!1080 = !DILocation(line: 290, column: 30, scope: !1079)
!1081 = !DILocation(line: 290, column: 42, scope: !1079)
!1082 = !DILocation(line: 291, column: 13, scope: !1079)
!1083 = !DILocation(line: 294, column: 17, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 294, column: 17)
!1085 = !DILocation(line: 294, column: 36, scope: !1084)
!1086 = !DILocation(line: 294, column: 17, scope: !1024)
!1087 = !DILocation(line: 295, column: 36, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !5, line: 294, column: 56)
!1089 = !DILocation(line: 296, column: 13, scope: !1088)
!1090 = !DILocation(line: 297, column: 46, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 297, column: 17)
!1092 = !DILocation(line: 297, column: 17, scope: !1024)
!1093 = !DILocation(line: 297, column: 34, scope: !1091)
!1094 = !DILocation(line: 298, column: 46, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !5, line: 297, column: 58)
!1096 = !DILocation(line: 299, column: 13, scope: !1095)
!1097 = !DILocation(line: 0, scope: !1029)
!1098 = !DILocation(line: 302, column: 55, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1029, file: !5, line: 302, column: 13)
!1100 = !DILocation(line: 302, column: 36, scope: !1099)
!1101 = !DILocation(line: 302, column: 13, scope: !1029)
!1102 = !DILocation(line: 303, column: 36, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !5, line: 302, column: 73)
!1104 = !DILocation(line: 307, column: 30, scope: !1024)
!1105 = !DILocation(line: 308, column: 34, scope: !1024)
!1106 = !DILocation(line: 308, column: 13, scope: !1024)
!1107 = !DILocation(line: 309, column: 9, scope: !1024)
!1108 = !DILocalVariable(name: "this", arg: 1, scope: !1109, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!1109 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !69, file: !7, line: 1518, type: !193, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !199, retainedNodes: !1110)
!1110 = !{!1108}
!1111 = !DILocation(line: 0, scope: !1109, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 303, column: 63, scope: !1103)
!1113 = !DILocalVariable(name: "this", arg: 1, scope: !1114, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!1114 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !69, file: !7, line: 1506, type: !196, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !198, retainedNodes: !1115)
!1115 = !{!1113, !1116, !1117}
!1116 = !DILocalVariable(name: "index", scope: !1114, file: !7, line: 1507, type: !329)
!1117 = !DILocalVariable(name: "i", scope: !1118, file: !7, line: 1508, type: !41)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !7, line: 1508, column: 9)
!1119 = !DILocation(line: 0, scope: !1114, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 1519, column: 25, scope: !1109, inlinedAt: !1112)
!1121 = !DILocation(line: 0, scope: !1118, inlinedAt: !1120)
!1122 = !DILocation(line: 1508, column: 29, scope: !1123, inlinedAt: !1120)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !7, line: 1508, column: 9)
!1124 = !DILocation(line: 1508, column: 27, scope: !1123, inlinedAt: !1120)
!1125 = !DILocation(line: 1508, column: 9, scope: !1118, inlinedAt: !1120)
!1126 = !DILocation(line: 0, scope: !553, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 1514, column: 36, scope: !1114, inlinedAt: !1120)
!1128 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !1127)
!1129 = !DILocalVariable(name: "this", arg: 1, scope: !1130, type: !104, flags: DIFlagArtificial | DIFlagObjectPointer)
!1130 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !69, file: !7, line: 1495, type: !196, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !195, retainedNodes: !1131)
!1131 = !{!1129, !1132, !1133}
!1132 = !DILocalVariable(name: "index", scope: !1130, file: !7, line: 1496, type: !329)
!1133 = !DILocalVariable(name: "i", scope: !1134, file: !7, line: 1497, type: !41)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !7, line: 1497, column: 9)
!1135 = !DILocation(line: 0, scope: !1130, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 1519, column: 33, scope: !1109, inlinedAt: !1112)
!1137 = !DILocation(line: 0, scope: !1134, inlinedAt: !1136)
!1138 = !DILocation(line: 1497, column: 9, scope: !1134, inlinedAt: !1136)
!1139 = !DILocation(line: 1509, column: 24, scope: !1140, inlinedAt: !1120)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !7, line: 1509, column: 17)
!1141 = distinct !DILexicalBlock(scope: !1123, file: !7, line: 1508, column: 46)
!1142 = !DILocation(line: 1509, column: 31, scope: !1140, inlinedAt: !1120)
!1143 = !DILocation(line: 1509, column: 17, scope: !1141, inlinedAt: !1120)
!1144 = !DILocation(line: 1510, column: 37, scope: !1145, inlinedAt: !1120)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !7, line: 1509, column: 36)
!1146 = !DILocation(line: 1510, column: 61, scope: !1145, inlinedAt: !1120)
!1147 = !DILocation(line: 1510, column: 68, scope: !1145, inlinedAt: !1120)
!1148 = !DILocation(line: 1510, column: 53, scope: !1145, inlinedAt: !1120)
!1149 = !DILocation(line: 1510, column: 51, scope: !1145, inlinedAt: !1120)
!1150 = !DILocation(line: 1510, column: 23, scope: !1145, inlinedAt: !1120)
!1151 = !DILocation(line: 1511, column: 13, scope: !1145, inlinedAt: !1120)
!1152 = !DILocation(line: 1508, column: 42, scope: !1123, inlinedAt: !1120)
!1153 = distinct !{!1153, !1125, !1154, !388}
!1154 = !DILocation(line: 1512, column: 9, scope: !1118, inlinedAt: !1120)
!1155 = !DILocation(line: 1498, column: 24, scope: !1156, inlinedAt: !1136)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !7, line: 1498, column: 17)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !7, line: 1497, column: 46)
!1158 = distinct !DILexicalBlock(scope: !1134, file: !7, line: 1497, column: 9)
!1159 = !DILocation(line: 1498, column: 31, scope: !1156, inlinedAt: !1136)
!1160 = !DILocation(line: 1498, column: 17, scope: !1157, inlinedAt: !1136)
!1161 = !DILocation(line: 1499, column: 37, scope: !1162, inlinedAt: !1136)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !7, line: 1498, column: 36)
!1163 = !DILocation(line: 1499, column: 61, scope: !1162, inlinedAt: !1136)
!1164 = !DILocation(line: 1499, column: 68, scope: !1162, inlinedAt: !1136)
!1165 = !DILocation(line: 1499, column: 53, scope: !1162, inlinedAt: !1136)
!1166 = !DILocation(line: 1499, column: 51, scope: !1162, inlinedAt: !1136)
!1167 = !DILocation(line: 1499, column: 23, scope: !1162, inlinedAt: !1136)
!1168 = !DILocation(line: 1500, column: 13, scope: !1162, inlinedAt: !1136)
!1169 = !DILocation(line: 1497, column: 42, scope: !1158, inlinedAt: !1136)
!1170 = !DILocation(line: 1497, column: 27, scope: !1158, inlinedAt: !1136)
!1171 = distinct !{!1171, !1138, !1172, !388}
!1172 = !DILocation(line: 1501, column: 9, scope: !1134, inlinedAt: !1136)
!1173 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !1127)
!1174 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !1127)
!1175 = !DILocation(line: 1513, column: 15, scope: !1114, inlinedAt: !1120)
!1176 = !DILocation(line: 0, scope: !553, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 1502, column: 36, scope: !1130, inlinedAt: !1136)
!1178 = !DILocation(line: 1519, column: 31, scope: !1109, inlinedAt: !1112)
!1179 = !DILocation(line: 302, column: 69, scope: !1099)
!1180 = distinct !{!1180, !1101, !1181, !388}
!1181 = !DILocation(line: 304, column: 13, scope: !1029)
!1182 = distinct !{!1182, !1036, !1183, !388}
!1183 = !DILocation(line: 312, column: 5, scope: !1016)
!1184 = !DILocation(line: 316, column: 1, scope: !1016)
!1185 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !81, !265}
!1188 = !DISubprogram(name: "abort", scope: !12, file: !12, line: 108, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1189 = distinct !DISubprogram(name: "halide_memoization_cache_set_size", scope: !5, file: !5, line: 324, type: !1190, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !235}
!1192 = !{!1193, !1194}
!1193 = !DILocalVariable(name: "size", arg: 1, scope: !1189, file: !5, line: 324, type: !235)
!1194 = !DILocalVariable(name: "lock", scope: !1189, file: !5, line: 329, type: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !2, file: !1196, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1197, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!1196 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1197 = !{!1198, !1200, !1204}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1195, file: !1196, line: 12, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1200 = !DISubprogram(name: "ScopedMutexLock", scope: !1195, file: !1196, line: 14, type: !1201, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !1203, !1199}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1204 = !DISubprogram(name: "~ScopedMutexLock", scope: !1195, file: !1196, line: 19, type: !1205, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1203}
!1207 = !DILocation(line: 0, scope: !1189)
!1208 = !DILocation(line: 325, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1189, file: !5, line: 325, column: 9)
!1210 = !DILocation(line: 325, column: 9, scope: !1189)
!1211 = !DILocalVariable(name: "this", arg: 1, scope: !1212, type: !1215, flags: DIFlagArtificial | DIFlagObjectPointer)
!1212 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !1195, file: !1196, line: 14, type: !1201, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !1200, retainedNodes: !1213)
!1213 = !{!1211, !1214}
!1214 = !DILocalVariable(name: "mutex", arg: 2, scope: !1212, file: !1196, line: 14, type: !1199)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1216 = !DILocation(line: 0, scope: !1212, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 329, column: 21, scope: !1189)
!1218 = !DILocation(line: 16, column: 9, scope: !1219, inlinedAt: !1217)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !1196, line: 15, column: 24)
!1220 = !DILocation(line: 331, column: 20, scope: !1189)
!1221 = !DILocation(line: 332, column: 5, scope: !1189)
!1222 = !DILocalVariable(name: "this", arg: 1, scope: !1223, type: !1215, flags: DIFlagArtificial | DIFlagObjectPointer)
!1223 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !1195, file: !1196, line: 19, type: !1205, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !1204, retainedNodes: !1224)
!1224 = !{!1222}
!1225 = !DILocation(line: 0, scope: !1223, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 333, column: 1, scope: !1189)
!1227 = !DILocation(line: 20, column: 9, scope: !1228, inlinedAt: !1226)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !1196, line: 19, column: 38)
!1229 = !DILocation(line: 333, column: 1, scope: !1189)
!1230 = distinct !DISubprogram(name: "halide_memoization_cache_lookup", scope: !5, file: !5, line: 335, type: !1231, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!41, !81, !215, !40, !67, !40, !219}
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1248, !1250, !1254, !1257, !1259, !1262, !1266}
!1234 = !DILocalVariable(name: "user_context", arg: 1, scope: !1230, file: !5, line: 335, type: !81)
!1235 = !DILocalVariable(name: "cache_key", arg: 2, scope: !1230, file: !5, line: 335, type: !215)
!1236 = !DILocalVariable(name: "size", arg: 3, scope: !1230, file: !5, line: 335, type: !40)
!1237 = !DILocalVariable(name: "computed_bounds", arg: 4, scope: !1230, file: !5, line: 336, type: !67)
!1238 = !DILocalVariable(name: "tuple_count", arg: 5, scope: !1230, file: !5, line: 336, type: !40)
!1239 = !DILocalVariable(name: "tuple_buffers", arg: 6, scope: !1230, file: !5, line: 336, type: !219)
!1240 = !DILocalVariable(name: "h", scope: !1230, file: !5, line: 337, type: !35)
!1241 = !DILocalVariable(name: "index", scope: !1230, file: !5, line: 338, type: !35)
!1242 = !DILocalVariable(name: "lock", scope: !1230, file: !5, line: 340, type: !1195)
!1243 = !DILocalVariable(name: "entry", scope: !1230, file: !5, line: 355, type: !20)
!1244 = !DILocalVariable(name: "all_bounds_equal", scope: !1245, file: !5, line: 363, type: !61)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !5, line: 360, column: 58)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !5, line: 357, column: 13)
!1247 = distinct !DILexicalBlock(scope: !1230, file: !5, line: 356, column: 30)
!1248 = !DILocalVariable(name: "i", scope: !1249, file: !5, line: 364, type: !40)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !5, line: 364, column: 13)
!1250 = !DILocalVariable(name: "i", scope: !1251, file: !5, line: 388, type: !40)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !5, line: 388, column: 17)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !5, line: 368, column: 35)
!1253 = distinct !DILexicalBlock(scope: !1245, file: !5, line: 368, column: 17)
!1254 = !DILocalVariable(name: "buf", scope: !1255, file: !5, line: 389, type: !67)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !5, line: 388, column: 59)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !5, line: 388, column: 17)
!1257 = !DILocalVariable(name: "i", scope: !1258, file: !5, line: 401, type: !40)
!1258 = distinct !DILexicalBlock(scope: !1230, file: !5, line: 401, column: 5)
!1259 = !DILocalVariable(name: "buf", scope: !1260, file: !5, line: 402, type: !67)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !5, line: 401, column: 47)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !5, line: 401, column: 5)
!1262 = !DILocalVariable(name: "j", scope: !1263, file: !5, line: 406, type: !40)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !5, line: 406, column: 13)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !5, line: 405, column: 35)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !5, line: 405, column: 13)
!1266 = !DILocalVariable(name: "header", scope: !1260, file: !5, line: 413, type: !324)
!1267 = !DILocation(line: 0, scope: !1230)
!1268 = !DILocation(line: 337, column: 38, scope: !1230)
!1269 = !DILocation(line: 337, column: 18, scope: !1230)
!1270 = !DILocation(line: 338, column: 24, scope: !1230)
!1271 = !DILocation(line: 0, scope: !1212, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 340, column: 21, scope: !1230)
!1273 = !DILocation(line: 16, column: 9, scope: !1219, inlinedAt: !1272)
!1274 = !DILocation(line: 355, column: 25, scope: !1230)
!1275 = !DILocation(line: 356, column: 18, scope: !1230)
!1276 = !DILocation(line: 356, column: 5, scope: !1230)
!1277 = !DILocation(line: 0, scope: !1258)
!1278 = !DILocation(line: 401, column: 27, scope: !1261)
!1279 = !DILocation(line: 401, column: 5, scope: !1258)
!1280 = !DILocation(line: 357, column: 20, scope: !1246)
!1281 = !DILocation(line: 357, column: 25, scope: !1246)
!1282 = !DILocation(line: 357, column: 30, scope: !1246)
!1283 = !DILocation(line: 357, column: 40, scope: !1246)
!1284 = !DILocation(line: 357, column: 49, scope: !1246)
!1285 = !DILocation(line: 357, column: 65, scope: !1246)
!1286 = !DILocation(line: 358, column: 31, scope: !1246)
!1287 = !DILocation(line: 358, column: 13, scope: !1246)
!1288 = !DILocation(line: 358, column: 53, scope: !1246)
!1289 = !DILocation(line: 359, column: 54, scope: !1246)
!1290 = !DILocation(line: 359, column: 13, scope: !1246)
!1291 = !DILocation(line: 359, column: 71, scope: !1246)
!1292 = !DILocation(line: 360, column: 20, scope: !1246)
!1293 = !DILocation(line: 360, column: 32, scope: !1246)
!1294 = !DILocation(line: 357, column: 13, scope: !1247)
!1295 = !DILocation(line: 0, scope: !1245)
!1296 = !DILocation(line: 0, scope: !1249)
!1297 = !DILocation(line: 364, column: 13, scope: !1249)
!1298 = !DILocation(line: 368, column: 17, scope: !1245)
!1299 = !DILocation(line: 365, column: 53, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !5, line: 364, column: 75)
!1301 = distinct !DILexicalBlock(scope: !1249, file: !5, line: 364, column: 13)
!1302 = !DILocation(line: 365, column: 78, scope: !1300)
!1303 = !DILocation(line: 365, column: 85, scope: !1300)
!1304 = !DILocation(line: 365, column: 36, scope: !1300)
!1305 = !DILocation(line: 364, column: 71, scope: !1301)
!1306 = !DILocation(line: 364, column: 50, scope: !1301)
!1307 = distinct !{!1307, !1297, !1308, !388}
!1308 = !DILocation(line: 366, column: 13, scope: !1249)
!1309 = !DILocation(line: 369, column: 30, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1252, file: !5, line: 369, column: 21)
!1311 = !DILocation(line: 369, column: 27, scope: !1310)
!1312 = !DILocation(line: 369, column: 21, scope: !1252)
!1313 = !DILocation(line: 370, column: 21, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !5, line: 370, column: 21)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !5, line: 370, column: 21)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !5, line: 369, column: 50)
!1317 = !DILocation(line: 370, column: 21, scope: !1315)
!1318 = !DILocation(line: 370, column: 21, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !5, line: 370, column: 21)
!1320 = !DILocation(line: 371, column: 32, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !5, line: 371, column: 25)
!1322 = !DILocation(line: 371, column: 44, scope: !1321)
!1323 = !DILocation(line: 371, column: 25, scope: !1316)
!1324 = !DILocation(line: 372, column: 66, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !5, line: 371, column: 56)
!1326 = !DILocation(line: 372, column: 45, scope: !1325)
!1327 = !DILocation(line: 372, column: 57, scope: !1325)
!1328 = !DILocation(line: 377, column: 21, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !5, line: 377, column: 21)
!1330 = distinct !DILexicalBlock(scope: !1316, file: !5, line: 377, column: 21)
!1331 = !DILocation(line: 373, column: 21, scope: !1325)
!1332 = !DILocation(line: 374, column: 25, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !5, line: 374, column: 25)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !5, line: 374, column: 25)
!1335 = distinct !DILexicalBlock(scope: !1321, file: !5, line: 373, column: 28)
!1336 = !DILocation(line: 374, column: 25, scope: !1334)
!1337 = !DILocation(line: 374, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !5, line: 374, column: 25)
!1339 = !DILocation(line: 375, column: 54, scope: !1335)
!1340 = !DILocation(line: 375, column: 45, scope: !1335)
!1341 = !DILocation(line: 377, column: 21, scope: !1330)
!1342 = !DILocation(line: 377, column: 21, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1329, file: !5, line: 377, column: 21)
!1344 = !DILocation(line: 378, column: 28, scope: !1316)
!1345 = !DILocation(line: 378, column: 62, scope: !1316)
!1346 = !DILocation(line: 378, column: 41, scope: !1316)
!1347 = !DILocation(line: 378, column: 53, scope: !1316)
!1348 = !DILocation(line: 380, column: 40, scope: !1316)
!1349 = !DILocation(line: 381, column: 42, scope: !1316)
!1350 = !DILocation(line: 381, column: 40, scope: !1316)
!1351 = !DILocation(line: 382, column: 44, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1316, file: !5, line: 382, column: 25)
!1353 = !DILocation(line: 382, column: 25, scope: !1316)
!1354 = !DILocation(line: 383, column: 45, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !5, line: 382, column: 56)
!1356 = !DILocation(line: 383, column: 57, scope: !1355)
!1357 = !DILocation(line: 384, column: 21, scope: !1355)
!1358 = !DILocation(line: 385, column: 40, scope: !1316)
!1359 = !DILocation(line: 386, column: 17, scope: !1316)
!1360 = !DILocation(line: 0, scope: !1251)
!1361 = !DILocation(line: 388, column: 17, scope: !1251)
!1362 = !DILocation(line: 388, column: 39, scope: !1256)
!1363 = !DILocation(line: 389, column: 44, scope: !1255)
!1364 = !DILocation(line: 0, scope: !1255)
!1365 = !DILocation(line: 390, column: 35, scope: !1255)
!1366 = !DILocation(line: 390, column: 28, scope: !1255)
!1367 = !DILocation(line: 390, column: 26, scope: !1255)
!1368 = !DILocation(line: 388, column: 55, scope: !1256)
!1369 = distinct !{!1369, !1361, !1370, !388}
!1370 = !DILocation(line: 391, column: 17, scope: !1251)
!1371 = !DILocation(line: 398, column: 24, scope: !1247)
!1372 = distinct !{!1372, !1276, !1373, !388}
!1373 = !DILocation(line: 399, column: 5, scope: !1230)
!1374 = !DILocation(line: 402, column: 32, scope: !1260)
!1375 = !DILocation(line: 0, scope: !1260)
!1376 = !DILocation(line: 0, scope: !1109, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 404, column: 66, scope: !1260)
!1378 = !DILocation(line: 0, scope: !1114, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 1519, column: 25, scope: !1109, inlinedAt: !1377)
!1380 = !DILocation(line: 0, scope: !1118, inlinedAt: !1379)
!1381 = !DILocation(line: 1508, column: 29, scope: !1123, inlinedAt: !1379)
!1382 = !DILocation(line: 1508, column: 27, scope: !1123, inlinedAt: !1379)
!1383 = !DILocation(line: 1508, column: 9, scope: !1118, inlinedAt: !1379)
!1384 = !DILocation(line: 0, scope: !553, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 1514, column: 36, scope: !1114, inlinedAt: !1379)
!1386 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !1385)
!1387 = !DILocation(line: 0, scope: !1130, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 1519, column: 33, scope: !1109, inlinedAt: !1377)
!1389 = !DILocation(line: 0, scope: !1134, inlinedAt: !1388)
!1390 = !DILocation(line: 1497, column: 9, scope: !1134, inlinedAt: !1388)
!1391 = !DILocation(line: 1509, column: 24, scope: !1140, inlinedAt: !1379)
!1392 = !DILocation(line: 1509, column: 31, scope: !1140, inlinedAt: !1379)
!1393 = !DILocation(line: 1509, column: 17, scope: !1141, inlinedAt: !1379)
!1394 = !DILocation(line: 1510, column: 37, scope: !1145, inlinedAt: !1379)
!1395 = !DILocation(line: 1510, column: 61, scope: !1145, inlinedAt: !1379)
!1396 = !DILocation(line: 1510, column: 68, scope: !1145, inlinedAt: !1379)
!1397 = !DILocation(line: 1510, column: 53, scope: !1145, inlinedAt: !1379)
!1398 = !DILocation(line: 1510, column: 51, scope: !1145, inlinedAt: !1379)
!1399 = !DILocation(line: 1510, column: 23, scope: !1145, inlinedAt: !1379)
!1400 = !DILocation(line: 1511, column: 13, scope: !1145, inlinedAt: !1379)
!1401 = !DILocation(line: 1508, column: 42, scope: !1123, inlinedAt: !1379)
!1402 = distinct !{!1402, !1383, !1403, !388}
!1403 = !DILocation(line: 1512, column: 9, scope: !1118, inlinedAt: !1379)
!1404 = !DILocation(line: 1498, column: 24, scope: !1156, inlinedAt: !1388)
!1405 = !DILocation(line: 1498, column: 31, scope: !1156, inlinedAt: !1388)
!1406 = !DILocation(line: 1498, column: 17, scope: !1157, inlinedAt: !1388)
!1407 = !DILocation(line: 1499, column: 37, scope: !1162, inlinedAt: !1388)
!1408 = !DILocation(line: 1499, column: 61, scope: !1162, inlinedAt: !1388)
!1409 = !DILocation(line: 1499, column: 68, scope: !1162, inlinedAt: !1388)
!1410 = !DILocation(line: 1499, column: 53, scope: !1162, inlinedAt: !1388)
!1411 = !DILocation(line: 1499, column: 51, scope: !1162, inlinedAt: !1388)
!1412 = !DILocation(line: 1499, column: 23, scope: !1162, inlinedAt: !1388)
!1413 = !DILocation(line: 1500, column: 13, scope: !1162, inlinedAt: !1388)
!1414 = !DILocation(line: 1497, column: 42, scope: !1158, inlinedAt: !1388)
!1415 = !DILocation(line: 1497, column: 27, scope: !1158, inlinedAt: !1388)
!1416 = distinct !{!1416, !1390, !1417, !388}
!1417 = !DILocation(line: 1501, column: 9, scope: !1134, inlinedAt: !1388)
!1418 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !1385)
!1419 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !1385)
!1420 = !DILocation(line: 1513, column: 15, scope: !1114, inlinedAt: !1379)
!1421 = !DILocation(line: 0, scope: !553, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 1502, column: 36, scope: !1130, inlinedAt: !1388)
!1423 = !DILocation(line: 1519, column: 31, scope: !1109, inlinedAt: !1377)
!1424 = !DILocation(line: 0, scope: !781, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 404, column: 84, scope: !1260)
!1426 = !DILocation(line: 109, column: 19, scope: !781, inlinedAt: !1425)
!1427 = !DILocation(line: 109, column: 45, scope: !781, inlinedAt: !1425)
!1428 = !DILocation(line: 110, column: 15, scope: !781, inlinedAt: !1425)
!1429 = !DILocation(line: 110, column: 25, scope: !781, inlinedAt: !1425)
!1430 = !DILocation(line: 110, column: 23, scope: !781, inlinedAt: !1425)
!1431 = !DILocation(line: 404, column: 82, scope: !1260)
!1432 = !DILocation(line: 404, column: 33, scope: !1260)
!1433 = !DILocation(line: 404, column: 14, scope: !1260)
!1434 = !DILocation(line: 404, column: 19, scope: !1260)
!1435 = !DILocation(line: 405, column: 23, scope: !1265)
!1436 = !DILocation(line: 405, column: 13, scope: !1260)
!1437 = !DILocation(line: 0, scope: !1263)
!1438 = !DILocation(line: 406, column: 35, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1263, file: !5, line: 406, column: 13)
!1440 = !DILocation(line: 406, column: 13, scope: !1263)
!1441 = !DILocation(line: 407, column: 81, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !5, line: 406, column: 45)
!1443 = !DILocation(line: 407, column: 65, scope: !1442)
!1444 = !DILocation(line: 407, column: 87, scope: !1442)
!1445 = !DILocation(line: 407, column: 43, scope: !1442)
!1446 = !DILocation(line: 407, column: 17, scope: !1442)
!1447 = !DILocation(line: 408, column: 17, scope: !1442)
!1448 = !DILocation(line: 408, column: 39, scope: !1442)
!1449 = !DILocation(line: 408, column: 44, scope: !1442)
!1450 = distinct !{!1450, !1440, !1451, !388}
!1451 = !DILocation(line: 409, column: 13, scope: !1263)
!1452 = !DILocation(line: 0, scope: !781, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 412, column: 22, scope: !1260)
!1454 = !DILocation(line: 109, column: 19, scope: !781, inlinedAt: !1453)
!1455 = !DILocation(line: 109, column: 45, scope: !781, inlinedAt: !1453)
!1456 = !DILocation(line: 110, column: 15, scope: !781, inlinedAt: !1453)
!1457 = !DILocation(line: 110, column: 25, scope: !781, inlinedAt: !1453)
!1458 = !DILocation(line: 110, column: 23, scope: !781, inlinedAt: !1453)
!1459 = !DILocation(line: 412, column: 19, scope: !1260)
!1460 = !DILocation(line: 413, column: 36, scope: !1260)
!1461 = !DILocation(line: 414, column: 17, scope: !1260)
!1462 = !DILocation(line: 414, column: 22, scope: !1260)
!1463 = !{!1464, !540, i64 8}
!1464 = !{!"_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE", !536, i64 0, !540, i64 8}
!1465 = !DILocation(line: 415, column: 17, scope: !1260)
!1466 = !DILocation(line: 415, column: 23, scope: !1260)
!1467 = !{!1464, !536, i64 0}
!1468 = !DILocation(line: 401, column: 43, scope: !1261)
!1469 = distinct !{!1469, !1279, !1470, !388}
!1470 = !DILocation(line: 416, column: 5, scope: !1258)
!1471 = !DILocation(line: 393, column: 24, scope: !1252)
!1472 = !DILocation(line: 393, column: 37, scope: !1252)
!1473 = !DILocation(line: 20, column: 9, scope: !1228, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 423, column: 1, scope: !1230)
!1475 = !DILocation(line: 0, scope: !1223, inlinedAt: !1474)
!1476 = !DILocation(line: 423, column: 1, scope: !1230)
!1477 = distinct !DISubprogram(name: "halide_memoization_cache_store", scope: !5, file: !5, line: 425, type: !1478, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!41, !81, !215, !40, !67, !40, !219, !61, !13}
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1497, !1498, !1501, !1504, !1508, !1509, !1512, !1515, !1516, !1517, !1521}
!1481 = !DILocalVariable(name: "user_context", arg: 1, scope: !1477, file: !5, line: 425, type: !81)
!1482 = !DILocalVariable(name: "cache_key", arg: 2, scope: !1477, file: !5, line: 425, type: !215)
!1483 = !DILocalVariable(name: "size", arg: 3, scope: !1477, file: !5, line: 425, type: !40)
!1484 = !DILocalVariable(name: "computed_bounds", arg: 4, scope: !1477, file: !5, line: 426, type: !67)
!1485 = !DILocalVariable(name: "tuple_count", arg: 5, scope: !1477, file: !5, line: 427, type: !40)
!1486 = !DILocalVariable(name: "tuple_buffers", arg: 6, scope: !1477, file: !5, line: 427, type: !219)
!1487 = !DILocalVariable(name: "has_eviction_key", arg: 7, scope: !1477, file: !5, line: 428, type: !61)
!1488 = !DILocalVariable(name: "eviction_key", arg: 8, scope: !1477, file: !5, line: 428, type: !13)
!1489 = !DILocalVariable(name: "h", scope: !1477, file: !5, line: 431, type: !35)
!1490 = !DILocalVariable(name: "index", scope: !1477, file: !5, line: 433, type: !35)
!1491 = !DILocalVariable(name: "lock", scope: !1477, file: !5, line: 435, type: !1195)
!1492 = !DILocalVariable(name: "entry", scope: !1477, file: !5, line: 450, type: !20)
!1493 = !DILocalVariable(name: "all_bounds_equal", scope: !1494, file: !5, line: 457, type: !61)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !5, line: 455, column: 58)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !5, line: 452, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 451, column: 30)
!1497 = !DILocalVariable(name: "no_host_pointers_equal", scope: !1494, file: !5, line: 458, type: !61)
!1498 = !DILocalVariable(name: "i", scope: !1499, file: !5, line: 460, type: !40)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !5, line: 460, column: 17)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !5, line: 459, column: 13)
!1501 = !DILocalVariable(name: "buf", scope: !1502, file: !5, line: 461, type: !67)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !5, line: 460, column: 79)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !5, line: 460, column: 17)
!1504 = !DILocalVariable(name: "i", scope: !1505, file: !5, line: 472, type: !40)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !5, line: 472, column: 17)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !5, line: 468, column: 35)
!1507 = distinct !DILexicalBlock(scope: !1494, file: !5, line: 468, column: 17)
!1508 = !DILocalVariable(name: "added_size", scope: !1477, file: !5, line: 481, type: !13)
!1509 = !DILocalVariable(name: "i", scope: !1510, file: !5, line: 483, type: !40)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !5, line: 483, column: 9)
!1511 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 482, column: 5)
!1512 = !DILocalVariable(name: "buf", scope: !1513, file: !5, line: 484, type: !67)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !5, line: 483, column: 51)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !5, line: 483, column: 9)
!1515 = !DILocalVariable(name: "new_entry", scope: !1477, file: !5, line: 491, type: !20)
!1516 = !DILocalVariable(name: "inited", scope: !1477, file: !5, line: 492, type: !61)
!1517 = !DILocalVariable(name: "i", scope: !1518, file: !5, line: 502, type: !40)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !5, line: 502, column: 9)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !5, line: 497, column: 18)
!1520 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 497, column: 9)
!1521 = !DILocalVariable(name: "i", scope: !1522, file: !5, line: 525, type: !40)
!1522 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 525, column: 5)
!1523 = !DILocation(line: 0, scope: !1477)
!1524 = !DILocation(line: 0, scope: !442, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 429, column: 5, scope: !1477)
!1526 = !DILocation(line: 44, column: 27, scope: !451, inlinedAt: !1525)
!1527 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !1525)
!1528 = !DILocation(line: 48, column: 13, scope: !454, inlinedAt: !1525)
!1529 = !DILocation(line: 49, column: 23, scope: !478, inlinedAt: !1525)
!1530 = !DILocation(line: 50, column: 18, scope: !478, inlinedAt: !1525)
!1531 = !DILocation(line: 51, column: 9, scope: !478, inlinedAt: !1525)
!1532 = !DILocation(line: 0, scope: !456, inlinedAt: !1525)
!1533 = !DILocation(line: 0, scope: !459, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 429, column: 25, scope: !1477)
!1535 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1534)
!1536 = !DILocalVariable(name: "this", arg: 1, scope: !1537, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!1537 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !246, file: !244, line: 72, type: !271, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !270, retainedNodes: !1538)
!1538 = !{!1536, !1539}
!1539 = !DILocalVariable(name: "arg", arg: 2, scope: !1537, file: !244, line: 72, type: !40)
!1540 = !DILocation(line: 0, scope: !1537, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 429, column: 80, scope: !1477)
!1542 = !DILocation(line: 73, column: 48, scope: !1537, inlinedAt: !1541)
!1543 = !DILocation(line: 73, column: 15, scope: !1537, inlinedAt: !1541)
!1544 = !DILocation(line: 0, scope: !459, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 429, column: 100, scope: !1477)
!1546 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1545)
!1547 = !DILocalVariable(name: "this", arg: 1, scope: !1548, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!1548 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !246, file: !244, line: 77, type: !274, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !239, declaration: !273, retainedNodes: !1549)
!1549 = !{!1547, !1550}
!1550 = !DILocalVariable(name: "arg", arg: 2, scope: !1548, file: !244, line: 77, type: !13)
!1551 = !DILocation(line: 0, scope: !1548, inlinedAt: !1552)
!1552 = distinct !DILocation(line: 429, column: 120, scope: !1477)
!1553 = !DILocation(line: 78, column: 15, scope: !1548, inlinedAt: !1552)
!1554 = !DILocation(line: 0, scope: !459, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 429, column: 136, scope: !1477)
!1556 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1555)
!1557 = !DILocation(line: 0, scope: !468, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 429, column: 5, scope: !1477)
!1559 = !DILocation(line: 167, column: 13, scope: !475, inlinedAt: !1558)
!1560 = !DILocation(line: 168, column: 13, scope: !473, inlinedAt: !1558)
!1561 = !DILocation(line: 169, column: 9, scope: !473, inlinedAt: !1558)
!1562 = !DILocation(line: 0, scope: !482, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !1558)
!1564 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !1563)
!1565 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !1563)
!1566 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !1563)
!1567 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1558)
!1568 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1558)
!1569 = !DILocation(line: 431, column: 40, scope: !1477)
!1570 = !DILocation(line: 431, column: 58, scope: !1477)
!1571 = !DILocation(line: 431, column: 18, scope: !1477)
!1572 = !DILocation(line: 431, column: 65, scope: !1477)
!1573 = !DILocation(line: 433, column: 24, scope: !1477)
!1574 = !DILocation(line: 0, scope: !1212, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 435, column: 21, scope: !1477)
!1576 = !DILocation(line: 16, column: 9, scope: !1219, inlinedAt: !1575)
!1577 = !DILocation(line: 450, column: 25, scope: !1477)
!1578 = !DILocation(line: 451, column: 18, scope: !1477)
!1579 = !DILocation(line: 451, column: 5, scope: !1477)
!1580 = !DILocation(line: 452, column: 20, scope: !1495)
!1581 = !DILocation(line: 452, column: 25, scope: !1495)
!1582 = !DILocation(line: 452, column: 30, scope: !1495)
!1583 = !DILocation(line: 452, column: 40, scope: !1495)
!1584 = !DILocation(line: 452, column: 49, scope: !1495)
!1585 = !DILocation(line: 452, column: 65, scope: !1495)
!1586 = !DILocation(line: 453, column: 31, scope: !1495)
!1587 = !DILocation(line: 453, column: 13, scope: !1495)
!1588 = !DILocation(line: 453, column: 53, scope: !1495)
!1589 = !DILocation(line: 454, column: 54, scope: !1495)
!1590 = !DILocation(line: 454, column: 13, scope: !1495)
!1591 = !DILocation(line: 454, column: 71, scope: !1495)
!1592 = !DILocation(line: 455, column: 20, scope: !1495)
!1593 = !DILocation(line: 455, column: 32, scope: !1495)
!1594 = !DILocation(line: 452, column: 13, scope: !1496)
!1595 = !DILocation(line: 468, column: 17, scope: !1494)
!1596 = !DILocation(line: 469, column: 17, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !5, line: 469, column: 17)
!1598 = distinct !DILexicalBlock(scope: !1506, file: !5, line: 469, column: 17)
!1599 = !DILocation(line: 469, column: 17, scope: !1598)
!1600 = !DILocation(line: 469, column: 17, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !5, line: 469, column: 17)
!1602 = !DILocation(line: 478, column: 24, scope: !1496)
!1603 = distinct !{!1603, !1579, !1604, !388}
!1604 = !DILocation(line: 479, column: 5, scope: !1477)
!1605 = !DILocation(line: 0, scope: !1505)
!1606 = !DILocation(line: 473, column: 43, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !5, line: 472, column: 59)
!1608 = distinct !DILexicalBlock(scope: !1505, file: !5, line: 472, column: 17)
!1609 = !DILocation(line: 473, column: 61, scope: !1607)
!1610 = !DILocation(line: 473, column: 21, scope: !1607)
!1611 = !DILocation(line: 473, column: 68, scope: !1607)
!1612 = !DILocation(line: 473, column: 74, scope: !1607)
!1613 = !DILocation(line: 472, column: 55, scope: !1608)
!1614 = !DILocation(line: 472, column: 39, scope: !1608)
!1615 = !DILocation(line: 472, column: 17, scope: !1505)
!1616 = distinct !{!1616, !1615, !1617, !388}
!1617 = !DILocation(line: 474, column: 17, scope: !1505)
!1618 = !DILocation(line: 462, column: 82, scope: !1502)
!1619 = !DILocation(line: 0, scope: !1499)
!1620 = !DILocation(line: 0, scope: !1494)
!1621 = !DILocation(line: 461, column: 44, scope: !1502)
!1622 = !DILocation(line: 0, scope: !1502)
!1623 = !DILocation(line: 462, column: 89, scope: !1502)
!1624 = !DILocation(line: 462, column: 40, scope: !1502)
!1625 = !DILocation(line: 463, column: 32, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1502, file: !5, line: 463, column: 25)
!1627 = !DILocation(line: 463, column: 39, scope: !1626)
!1628 = !DILocation(line: 463, column: 52, scope: !1626)
!1629 = !DILocation(line: 463, column: 44, scope: !1626)
!1630 = !DILocation(line: 463, column: 25, scope: !1502)
!1631 = !DILocation(line: 460, column: 75, scope: !1503)
!1632 = !DILocation(line: 460, column: 54, scope: !1503)
!1633 = !DILocation(line: 460, column: 17, scope: !1499)
!1634 = distinct !{!1634, !1633, !1635, !388}
!1635 = !DILocation(line: 466, column: 17, scope: !1499)
!1636 = !DILocation(line: 0, scope: !1510)
!1637 = !DILocation(line: 483, column: 31, scope: !1514)
!1638 = !DILocation(line: 483, column: 9, scope: !1510)
!1639 = !DILocation(line: 488, column: 24, scope: !1477)
!1640 = !DILocation(line: 489, column: 5, scope: !1477)
!1641 = !DILocation(line: 491, column: 43, scope: !1477)
!1642 = !DILocation(line: 493, column: 9, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 493, column: 9)
!1644 = !DILocation(line: 493, column: 9, scope: !1477)
!1645 = !DILocation(line: 484, column: 36, scope: !1513)
!1646 = !DILocation(line: 0, scope: !1513)
!1647 = !DILocation(line: 0, scope: !1109, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 485, column: 32, scope: !1513)
!1649 = !DILocation(line: 0, scope: !1114, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 1519, column: 25, scope: !1109, inlinedAt: !1648)
!1651 = !DILocation(line: 0, scope: !1118, inlinedAt: !1650)
!1652 = !DILocation(line: 1508, column: 29, scope: !1123, inlinedAt: !1650)
!1653 = !DILocation(line: 1508, column: 27, scope: !1123, inlinedAt: !1650)
!1654 = !DILocation(line: 1508, column: 9, scope: !1118, inlinedAt: !1650)
!1655 = !DILocation(line: 0, scope: !553, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 1514, column: 36, scope: !1114, inlinedAt: !1650)
!1657 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !1656)
!1658 = !DILocation(line: 0, scope: !1130, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 1519, column: 33, scope: !1109, inlinedAt: !1648)
!1660 = !DILocation(line: 0, scope: !1134, inlinedAt: !1659)
!1661 = !DILocation(line: 1497, column: 9, scope: !1134, inlinedAt: !1659)
!1662 = !DILocation(line: 1509, column: 24, scope: !1140, inlinedAt: !1650)
!1663 = !DILocation(line: 1509, column: 31, scope: !1140, inlinedAt: !1650)
!1664 = !DILocation(line: 1509, column: 17, scope: !1141, inlinedAt: !1650)
!1665 = !DILocation(line: 1510, column: 37, scope: !1145, inlinedAt: !1650)
!1666 = !DILocation(line: 1510, column: 61, scope: !1145, inlinedAt: !1650)
!1667 = !DILocation(line: 1510, column: 68, scope: !1145, inlinedAt: !1650)
!1668 = !DILocation(line: 1510, column: 53, scope: !1145, inlinedAt: !1650)
!1669 = !DILocation(line: 1510, column: 51, scope: !1145, inlinedAt: !1650)
!1670 = !DILocation(line: 1510, column: 23, scope: !1145, inlinedAt: !1650)
!1671 = !DILocation(line: 1511, column: 13, scope: !1145, inlinedAt: !1650)
!1672 = !DILocation(line: 1508, column: 42, scope: !1123, inlinedAt: !1650)
!1673 = distinct !{!1673, !1654, !1674, !388}
!1674 = !DILocation(line: 1512, column: 9, scope: !1118, inlinedAt: !1650)
!1675 = !DILocation(line: 1498, column: 24, scope: !1156, inlinedAt: !1659)
!1676 = !DILocation(line: 1498, column: 31, scope: !1156, inlinedAt: !1659)
!1677 = !DILocation(line: 1498, column: 17, scope: !1157, inlinedAt: !1659)
!1678 = !DILocation(line: 1499, column: 37, scope: !1162, inlinedAt: !1659)
!1679 = !DILocation(line: 1499, column: 61, scope: !1162, inlinedAt: !1659)
!1680 = !DILocation(line: 1499, column: 68, scope: !1162, inlinedAt: !1659)
!1681 = !DILocation(line: 1499, column: 53, scope: !1162, inlinedAt: !1659)
!1682 = !DILocation(line: 1499, column: 51, scope: !1162, inlinedAt: !1659)
!1683 = !DILocation(line: 1499, column: 23, scope: !1162, inlinedAt: !1659)
!1684 = !DILocation(line: 1500, column: 13, scope: !1162, inlinedAt: !1659)
!1685 = !DILocation(line: 1497, column: 42, scope: !1158, inlinedAt: !1659)
!1686 = !DILocation(line: 1497, column: 27, scope: !1158, inlinedAt: !1659)
!1687 = distinct !{!1687, !1661, !1688, !388}
!1688 = !DILocation(line: 1501, column: 9, scope: !1134, inlinedAt: !1659)
!1689 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !1656)
!1690 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !1656)
!1691 = !DILocation(line: 1513, column: 15, scope: !1114, inlinedAt: !1650)
!1692 = !DILocation(line: 0, scope: !553, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 1502, column: 36, scope: !1130, inlinedAt: !1659)
!1694 = !DILocation(line: 1519, column: 31, scope: !1109, inlinedAt: !1648)
!1695 = !DILocation(line: 485, column: 24, scope: !1513)
!1696 = !DILocation(line: 483, column: 47, scope: !1514)
!1697 = distinct !{!1697, !1638, !1698, !388}
!1698 = !DILocation(line: 486, column: 9, scope: !1510)
!1699 = !DILocation(line: 491, column: 29, scope: !1477)
!1700 = !DILocation(line: 494, column: 45, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1643, file: !5, line: 493, column: 20)
!1702 = !DILocation(line: 494, column: 29, scope: !1701)
!1703 = !DILocation(line: 497, column: 9, scope: !1477)
!1704 = !DILocation(line: 498, column: 28, scope: !1519)
!1705 = !DILocation(line: 0, scope: !1518)
!1706 = !DILocation(line: 502, column: 9, scope: !1518)
!1707 = !DILocation(line: 502, column: 31, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1518, file: !5, line: 502, column: 9)
!1709 = !DILocation(line: 506, column: 13, scope: !1519)
!1710 = !DILocation(line: 503, column: 35, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !5, line: 502, column: 51)
!1712 = !DILocation(line: 503, column: 53, scope: !1711)
!1713 = !DILocation(line: 503, column: 13, scope: !1711)
!1714 = !DILocation(line: 503, column: 60, scope: !1711)
!1715 = !DILocation(line: 503, column: 66, scope: !1711)
!1716 = !DILocation(line: 502, column: 47, scope: !1708)
!1717 = distinct !{!1717, !1706, !1718, !388}
!1718 = !DILocation(line: 504, column: 9, scope: !1518)
!1719 = !DILocation(line: 507, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !5, line: 506, column: 24)
!1721 = distinct !DILexicalBlock(scope: !1519, file: !5, line: 506, column: 13)
!1722 = !DILocation(line: 508, column: 9, scope: !1720)
!1723 = !DILocation(line: 512, column: 23, scope: !1477)
!1724 = !DILocation(line: 512, column: 16, scope: !1477)
!1725 = !DILocation(line: 512, column: 21, scope: !1477)
!1726 = !DILocation(line: 513, column: 30, scope: !1477)
!1727 = !DILocation(line: 513, column: 16, scope: !1477)
!1728 = !DILocation(line: 513, column: 28, scope: !1477)
!1729 = !DILocation(line: 514, column: 28, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 514, column: 9)
!1731 = !DILocation(line: 514, column: 9, scope: !1477)
!1732 = !DILocation(line: 515, column: 29, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !5, line: 514, column: 40)
!1734 = !DILocation(line: 515, column: 41, scope: !1733)
!1735 = !DILocation(line: 516, column: 5, scope: !1733)
!1736 = !DILocation(line: 517, column: 24, scope: !1477)
!1737 = !DILocation(line: 518, column: 9, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 518, column: 9)
!1739 = !DILocation(line: 518, column: 29, scope: !1738)
!1740 = !DILocation(line: 518, column: 9, scope: !1477)
!1741 = !DILocation(line: 519, column: 29, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !5, line: 518, column: 41)
!1743 = !DILocation(line: 520, column: 5, scope: !1742)
!1744 = !DILocation(line: 521, column: 26, scope: !1477)
!1745 = !DILocation(line: 523, column: 16, scope: !1477)
!1746 = !DILocation(line: 523, column: 29, scope: !1477)
!1747 = !DILocation(line: 0, scope: !1522)
!1748 = !DILocation(line: 525, column: 5, scope: !1522)
!1749 = !DILocation(line: 525, column: 27, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1522, file: !5, line: 525, column: 5)
!1751 = !DILocation(line: 0, scope: !442, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 532, column: 5, scope: !1477)
!1753 = !DILocation(line: 44, column: 27, scope: !451, inlinedAt: !1752)
!1754 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !1752)
!1755 = !DILocation(line: 48, column: 13, scope: !454, inlinedAt: !1752)
!1756 = !DILocation(line: 0, scope: !459, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 532, column: 25, scope: !1477)
!1758 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1757)
!1759 = !DILocation(line: 0, scope: !468, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 532, column: 5, scope: !1477)
!1761 = !DILocation(line: 168, column: 13, scope: !473, inlinedAt: !1760)
!1762 = !DILocation(line: 169, column: 9, scope: !473, inlinedAt: !1760)
!1763 = !DILocation(line: 49, column: 23, scope: !478, inlinedAt: !1752)
!1764 = !DILocation(line: 50, column: 18, scope: !478, inlinedAt: !1752)
!1765 = !DILocation(line: 0, scope: !482, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !1760)
!1767 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !1766)
!1768 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !1766)
!1769 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !1766)
!1770 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1760)
!1771 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1760)
!1772 = !DILocation(line: 534, column: 5, scope: !1477)
!1773 = !DILocation(line: 526, column: 31, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1750, file: !5, line: 525, column: 47)
!1775 = !DILocation(line: 526, column: 49, scope: !1774)
!1776 = !DILocation(line: 526, column: 9, scope: !1774)
!1777 = !DILocation(line: 526, column: 62, scope: !1774)
!1778 = !DILocation(line: 525, column: 43, scope: !1750)
!1779 = distinct !{!1779, !1748, !1780, !388}
!1780 = !DILocation(line: 527, column: 5, scope: !1522)
!1781 = !DILocation(line: 0, scope: !1223, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 535, column: 1, scope: !1477)
!1783 = !DILocation(line: 20, column: 9, scope: !1228, inlinedAt: !1782)
!1784 = !DILocation(line: 535, column: 1, scope: !1477)
!1785 = distinct !DISubprogram(name: "halide_memoization_cache_release", scope: !5, file: !5, line: 537, type: !992, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791}
!1787 = !DILocalVariable(name: "user_context", arg: 1, scope: !1785, file: !5, line: 537, type: !81)
!1788 = !DILocalVariable(name: "host", arg: 2, scope: !1785, file: !5, line: 537, type: !81)
!1789 = !DILocalVariable(name: "header", scope: !1785, file: !5, line: 538, type: !324)
!1790 = !DILocalVariable(name: "entry", scope: !1785, file: !5, line: 540, type: !20)
!1791 = !DILocalVariable(name: "lock", scope: !1792, file: !5, line: 545, type: !1195)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !5, line: 544, column: 12)
!1793 = distinct !DILexicalBlock(scope: !1785, file: !5, line: 542, column: 9)
!1794 = !DILocation(line: 0, scope: !1785)
!1795 = !DILocation(line: 538, column: 32, scope: !1785)
!1796 = !DILocation(line: 0, scope: !442, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 539, column: 5, scope: !1785)
!1798 = !DILocation(line: 44, column: 27, scope: !451, inlinedAt: !1797)
!1799 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !1797)
!1800 = !DILocation(line: 48, column: 13, scope: !454, inlinedAt: !1797)
!1801 = !DILocation(line: 0, scope: !459, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 539, column: 25, scope: !1785)
!1803 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1802)
!1804 = !DILocation(line: 0, scope: !468, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 539, column: 5, scope: !1785)
!1806 = !DILocation(line: 168, column: 13, scope: !473, inlinedAt: !1805)
!1807 = !DILocation(line: 169, column: 9, scope: !473, inlinedAt: !1805)
!1808 = !DILocation(line: 49, column: 23, scope: !478, inlinedAt: !1797)
!1809 = !DILocation(line: 50, column: 18, scope: !478, inlinedAt: !1797)
!1810 = !DILocation(line: 0, scope: !482, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !1805)
!1812 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !1811)
!1813 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !1811)
!1814 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !1811)
!1815 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1805)
!1816 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1805)
!1817 = !DILocation(line: 540, column: 33, scope: !1785)
!1818 = !DILocation(line: 542, column: 15, scope: !1793)
!1819 = !DILocation(line: 542, column: 9, scope: !1785)
!1820 = !DILocation(line: 543, column: 35, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1793, file: !5, line: 542, column: 27)
!1822 = !DILocation(line: 543, column: 9, scope: !1821)
!1823 = !DILocation(line: 544, column: 5, scope: !1821)
!1824 = !DILocation(line: 0, scope: !1212, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 545, column: 25, scope: !1792)
!1826 = !DILocation(line: 0, scope: !1792)
!1827 = !DILocation(line: 16, column: 9, scope: !1219, inlinedAt: !1825)
!1828 = !DILocation(line: 547, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !5, line: 547, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1792, file: !5, line: 547, column: 9)
!1831 = !DILocation(line: 547, column: 9, scope: !1830)
!1832 = !DILocation(line: 547, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !5, line: 547, column: 9)
!1834 = !DILocation(line: 548, column: 28, scope: !1792)
!1835 = !DILocation(line: 0, scope: !1223, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 552, column: 5, scope: !1793)
!1837 = !DILocation(line: 20, column: 9, scope: !1228, inlinedAt: !1836)
!1838 = !DILocation(line: 0, scope: !442, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 554, column: 5, scope: !1785)
!1840 = !DILocation(line: 44, column: 27, scope: !451, inlinedAt: !1839)
!1841 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !1839)
!1842 = !DILocation(line: 48, column: 13, scope: !454, inlinedAt: !1839)
!1843 = !DILocation(line: 0, scope: !459, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 554, column: 25, scope: !1785)
!1845 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1844)
!1846 = !DILocation(line: 0, scope: !468, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 554, column: 5, scope: !1785)
!1848 = !DILocation(line: 168, column: 13, scope: !473, inlinedAt: !1847)
!1849 = !DILocation(line: 169, column: 9, scope: !473, inlinedAt: !1847)
!1850 = !DILocation(line: 49, column: 23, scope: !478, inlinedAt: !1839)
!1851 = !DILocation(line: 50, column: 18, scope: !478, inlinedAt: !1839)
!1852 = !DILocation(line: 0, scope: !482, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !1847)
!1854 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !1853)
!1855 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !1853)
!1856 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !1853)
!1857 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1847)
!1858 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1847)
!1859 = !DILocation(line: 555, column: 1, scope: !1785)
!1860 = distinct !DISubprogram(name: "halide_memoization_cache_cleanup", scope: !5, file: !5, line: 557, type: !1017, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1861)
!1861 = !{!1862, !1864, !1867}
!1862 = !DILocalVariable(name: "i", scope: !1863, file: !5, line: 559, type: !31)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !5, line: 559, column: 5)
!1864 = !DILocalVariable(name: "entry", scope: !1865, file: !5, line: 560, type: !20)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !5, line: 559, column: 49)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !5, line: 559, column: 5)
!1867 = !DILocalVariable(name: "next", scope: !1868, file: !5, line: 563, type: !20)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !5, line: 562, column: 34)
!1869 = !DILocation(line: 0, scope: !442, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 558, column: 5, scope: !1860)
!1871 = !DILocation(line: 44, column: 27, scope: !451, inlinedAt: !1870)
!1872 = !DILocation(line: 48, column: 13, scope: !456, inlinedAt: !1870)
!1873 = !DILocation(line: 48, column: 13, scope: !454, inlinedAt: !1870)
!1874 = !DILocation(line: 0, scope: !459, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 558, column: 20, scope: !1860)
!1876 = !DILocation(line: 62, column: 19, scope: !465, inlinedAt: !1875)
!1877 = !DILocation(line: 0, scope: !468, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 558, column: 5, scope: !1860)
!1879 = !DILocation(line: 168, column: 13, scope: !473, inlinedAt: !1878)
!1880 = !DILocation(line: 169, column: 9, scope: !473, inlinedAt: !1878)
!1881 = !DILocation(line: 49, column: 23, scope: !478, inlinedAt: !1870)
!1882 = !DILocation(line: 50, column: 18, scope: !478, inlinedAt: !1870)
!1883 = !DILocation(line: 0, scope: !482, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !1878)
!1885 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !1884)
!1886 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !1884)
!1887 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !1884)
!1888 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1878)
!1889 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1878)
!1890 = !DILocation(line: 0, scope: !1863)
!1891 = !DILocation(line: 559, column: 5, scope: !1863)
!1892 = !DILocation(line: 569, column: 24, scope: !1860)
!1893 = !DILocation(line: 570, column: 24, scope: !1860)
!1894 = !DILocation(line: 571, column: 25, scope: !1860)
!1895 = !DILocation(line: 572, column: 1, scope: !1860)
!1896 = !DILocation(line: 560, column: 29, scope: !1865)
!1897 = !DILocation(line: 0, scope: !1865)
!1898 = !DILocation(line: 561, column: 26, scope: !1865)
!1899 = !DILocation(line: 562, column: 22, scope: !1865)
!1900 = !DILocation(line: 562, column: 9, scope: !1865)
!1901 = !DILocation(line: 563, column: 39, scope: !1868)
!1902 = !DILocation(line: 0, scope: !1868)
!1903 = !DILocation(line: 564, column: 20, scope: !1868)
!1904 = !DILocation(line: 565, column: 34, scope: !1868)
!1905 = !DILocation(line: 565, column: 13, scope: !1868)
!1906 = distinct !{!1906, !1900, !1907, !388}
!1907 = !DILocation(line: 567, column: 9, scope: !1865)
!1908 = !DILocation(line: 559, column: 45, scope: !1866)
!1909 = !DILocation(line: 559, column: 26, scope: !1866)
!1910 = distinct !{!1910, !1891, !1911, !388}
!1911 = !DILocation(line: 568, column: 5, scope: !1863)
!1912 = distinct !DISubprogram(name: "halide_memoization_cache_evict", scope: !5, file: !5, line: 574, type: !1913, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !81, !13}
!1915 = !{!1916, !1917, !1918, !1919, !1921, !1924, !1928}
!1916 = !DILocalVariable(name: "user_context", arg: 1, scope: !1912, file: !5, line: 574, type: !81)
!1917 = !DILocalVariable(name: "eviction_key", arg: 2, scope: !1912, file: !5, line: 574, type: !13)
!1918 = !DILocalVariable(name: "lock", scope: !1912, file: !5, line: 575, type: !1195)
!1919 = !DILocalVariable(name: "i", scope: !1920, file: !5, line: 577, type: !31)
!1920 = distinct !DILexicalBlock(scope: !1912, file: !5, line: 577, column: 5)
!1921 = !DILocalVariable(name: "entry", scope: !1922, file: !5, line: 578, type: !20)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !5, line: 577, column: 49)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !5, line: 577, column: 5)
!1924 = !DILocalVariable(name: "prev", scope: !1925, file: !5, line: 580, type: !1927)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !5, line: 579, column: 31)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !5, line: 579, column: 13)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1928 = !DILocalVariable(name: "next", scope: !1929, file: !5, line: 582, type: !20)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !5, line: 581, column: 38)
!1930 = !DILocation(line: 0, scope: !1912)
!1931 = !DILocation(line: 0, scope: !1212, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 575, column: 21, scope: !1912)
!1933 = !DILocation(line: 16, column: 9, scope: !1219, inlinedAt: !1932)
!1934 = !DILocation(line: 0, scope: !1920)
!1935 = !DILocation(line: 577, column: 5, scope: !1920)
!1936 = !DILocation(line: 0, scope: !1223, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 607, column: 1, scope: !1912)
!1938 = !DILocation(line: 20, column: 9, scope: !1228, inlinedAt: !1937)
!1939 = !DILocation(line: 607, column: 1, scope: !1912)
!1940 = !DILocation(line: 578, column: 29, scope: !1922)
!1941 = !DILocation(line: 0, scope: !1922)
!1942 = !DILocation(line: 579, column: 19, scope: !1926)
!1943 = !DILocation(line: 579, column: 13, scope: !1922)
!1944 = !DILocation(line: 0, scope: !1925)
!1945 = !DILocation(line: 582, column: 43, scope: !1929)
!1946 = !DILocation(line: 0, scope: !1929)
!1947 = !DILocation(line: 583, column: 28, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1929, file: !5, line: 583, column: 21)
!1949 = !{i8 0, i8 2}
!1950 = !DILocation(line: 583, column: 45, scope: !1948)
!1951 = !DILocation(line: 583, column: 55, scope: !1948)
!1952 = !DILocation(line: 583, column: 68, scope: !1948)
!1953 = !DILocation(line: 583, column: 21, scope: !1929)
!1954 = !DILocation(line: 584, column: 27, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !5, line: 583, column: 85)
!1956 = !DILocation(line: 585, column: 32, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1955, file: !5, line: 585, column: 25)
!1958 = !DILocation(line: 585, column: 44, scope: !1957)
!1959 = !DILocation(line: 0, scope: !1957)
!1960 = !DILocation(line: 585, column: 25, scope: !1955)
!1961 = !DILocation(line: 586, column: 45, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !5, line: 585, column: 56)
!1963 = !DILocation(line: 586, column: 57, scope: !1962)
!1964 = !DILocation(line: 590, column: 32, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1955, file: !5, line: 590, column: 25)
!1966 = !DILocation(line: 587, column: 21, scope: !1962)
!1967 = !DILocation(line: 588, column: 44, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1957, file: !5, line: 587, column: 28)
!1969 = !DILocation(line: 590, column: 44, scope: !1965)
!1970 = !DILocation(line: 590, column: 25, scope: !1955)
!1971 = !DILocation(line: 0, scope: !1965)
!1972 = !DILocation(line: 595, column: 28, scope: !1955)
!1973 = !DILocation(line: 596, column: 47, scope: !1955)
!1974 = !DILocation(line: 596, column: 21, scope: !1955)
!1975 = !DILocation(line: 597, column: 17, scope: !1955)
!1976 = !DILocation(line: 581, column: 26, scope: !1925)
!1977 = !DILocation(line: 581, column: 13, scope: !1925)
!1978 = distinct !{!1978, !1977, !1979, !388}
!1979 = !DILocation(line: 601, column: 13, scope: !1925)
!1980 = !DILocation(line: 577, column: 45, scope: !1923)
!1981 = !DILocation(line: 577, column: 26, scope: !1923)
!1982 = distinct !{!1982, !1935, !1983, !388}
!1983 = !DILocation(line: 603, column: 5, scope: !1920)
!1984 = distinct !DISubprogram(name: "halide_cache_cleanup", scope: !1985, file: !5, line: 611, type: !1017, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !423)
!1985 = !DINamespace(scope: null)
!1986 = !DILocation(line: 612, column: 5, scope: !1984)
!1987 = !DILocation(line: 613, column: 1, scope: !1984)
!1988 = !DISubprogram(name: "halide_mutex_lock", scope: !7, file: !7, line: 133, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1199}
!1991 = !DISubprogram(name: "halide_mutex_unlock", scope: !7, file: !7, line: 134, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1992 = !DISubprogram(name: "malloc", scope: !12, file: !12, line: 87, type: !1993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!81, !32}
!1995 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1996 = !DISubprogram(name: "free", scope: !12, file: !12, line: 86, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !81}
!1999 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!41, !81, !290, !14}
!2002 = !DISubprogram(name: "halide_string_to_string", scope: !12, file: !12, line: 120, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!249, !249, !249, !265}
!2005 = !DISubprogram(name: "halide_int64_to_string", scope: !12, file: !12, line: 122, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!249, !249, !249, !236, !41}
!2008 = !DISubprogram(name: "halide_uint64_to_string", scope: !12, file: !12, line: 123, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !423)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!249, !249, !249, !14, !41}
