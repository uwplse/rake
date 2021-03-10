; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::CacheEntry" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, i8*, i32, i8*, i32, i32, i32, i32, %struct.halide_dimension_t*, %struct.halide_buffer_t*, i64, i8 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"struct.Halide::Runtime::Internal::CacheBlockHeader" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, i32 }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@_ZN6Halide7Runtime8Internal16memoization_lockE = weak dso_local global %struct.halide_mutex zeroinitializer, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal13cache_entriesE = weak dso_local local_unnamed_addr global [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*] zeroinitializer, align 4, !dbg !17
@_ZN6Halide7Runtime8Internal18most_recently_usedE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 4, !dbg !228
@_ZN6Halide7Runtime8Internal19least_recently_usedE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 4, !dbg !230
@_ZN6Halide7Runtime8Internal14max_cache_sizeE = weak dso_local local_unnamed_addr global i64 1048576, align 8, !dbg !232
@_ZN6Halide7Runtime8Internal18current_cache_sizeE = weak dso_local local_unnamed_addr global i64 0, align 8, !dbg !236
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
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !342 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !361, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %1, metadata !362, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %2, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %3, metadata !364, metadata !DIExpression()), !dbg !372
  %5 = icmp sgt i32 %1, -1, !dbg !373
  br i1 %5, label %6, label %14, !dbg !374

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !362, metadata !DIExpression()), !dbg !372
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !375
  %9 = load i64, i64* %8, align 8, !dbg !375, !tbaa !376
  %10 = icmp eq i64 %9, 1, !dbg !380
  br i1 %10, label %11, label %14, !dbg !381

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !382
  call void @llvm.dbg.value(metadata i32 %12, metadata !362, metadata !DIExpression()), !dbg !372
  %13 = icmp sgt i32 %7, 0, !dbg !373
  br i1 %13, label %6, label %25, !dbg !374, !llvm.loop !384

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !387
  br i1 %16, label %25, label %17, !dbg !388

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !369, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %2, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %3, metadata !364, metadata !DIExpression()), !dbg !372
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !390
  %19 = load i64, i64* %18, align 8, !dbg !390, !tbaa !376
  %20 = icmp eq i64 %19, 0, !dbg !392
  br i1 %20, label %51, label %21, !dbg !393

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40, !dbg !393

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !394
  %27 = load i64, i64* %26, align 8, !dbg !394, !tbaa !395
  %28 = add i64 %27, %2, !dbg !397
  %29 = trunc i64 %28 to i32, !dbg !398
  %30 = inttoptr i32 %29 to i8*, !dbg !398
  call void @llvm.dbg.value(metadata i8* %30, metadata !365, metadata !DIExpression()), !dbg !399
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !400
  %32 = load i64, i64* %31, align 8, !dbg !400, !tbaa !401
  %33 = add i64 %32, %3, !dbg !402
  %34 = trunc i64 %33 to i32, !dbg !403
  %35 = inttoptr i32 %34 to i8*, !dbg !403
  call void @llvm.dbg.value(metadata i8* %35, metadata !368, metadata !DIExpression()), !dbg !399
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !404
  %37 = load i64, i64* %36, align 8, !dbg !404, !tbaa !405
  %38 = trunc i64 %37 to i32, !dbg !406
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #7, !dbg !407
  br label %51, !dbg !408

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !369, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %42, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i64 %43, metadata !364, metadata !DIExpression()), !dbg !372
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #8, !dbg !409
  %44 = load i64, i64* %23, align 8, !dbg !411, !tbaa !376
  %45 = add i64 %44, %42, !dbg !412
  call void @llvm.dbg.value(metadata i64 %45, metadata !363, metadata !DIExpression()), !dbg !372
  %46 = load i64, i64* %24, align 8, !dbg !413, !tbaa !376
  %47 = add i64 %46, %43, !dbg !414
  call void @llvm.dbg.value(metadata i64 %47, metadata !364, metadata !DIExpression()), !dbg !372
  %48 = add nuw i64 %41, 1, !dbg !415
  call void @llvm.dbg.value(metadata i64 %48, metadata !369, metadata !DIExpression()), !dbg !389
  %49 = load i64, i64* %18, align 8, !dbg !390, !tbaa !376
  %50 = icmp ult i64 %48, %49, !dbg !392
  br i1 %50, label %40, label %51, !dbg !393, !llvm.loop !416

51:                                               ; preds = %40, %17, %25
  ret void, !dbg !418
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !419 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !423 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %1, metadata !428, metadata !DIExpression()), !dbg !429
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !430
  %4 = load i64, i64* %3, align 8, !dbg !430, !tbaa !395
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !432
  %6 = load i64, i64* %5, align 8, !dbg !432, !tbaa !401
  %7 = icmp eq i64 %4, %6, !dbg !433
  br i1 %7, label %11, label %8, !dbg !434

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2, !dbg !435
  %10 = load i64, i64* %9, align 8, !dbg !435, !tbaa !437
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #8, !dbg !438
  br label %26, !dbg !439

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !440, metadata !DIExpression()) #9, !dbg !446
  call void @llvm.dbg.value(metadata i8* %1, metadata !443, metadata !DIExpression()) #9, !dbg !446
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !446
  %12 = tail call i8* @malloc(i32 1024) #7, !dbg !449
  %13 = icmp eq i8* %12, null, !dbg !454
  br i1 %13, label %14, label %16, !dbg !456

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !461
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !461
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #7, !dbg !463
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !469
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !471
  br label %25, !dbg !475

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !476
  store i8 0, i8* %17, align 1, !dbg !478, !tbaa !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !461
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !461
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #7, !dbg !463
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !469
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !480, metadata !DIExpression()) #9, !dbg !483
  %19 = ptrtoint i8* %18 to i32, !dbg !486
  %20 = ptrtoint i8* %12 to i32, !dbg !486
  %21 = add i32 %19, 1, !dbg !486
  %22 = sub i32 %21, %20, !dbg !487
  %23 = sext i32 %22 to i64, !dbg !488
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %23) #7, !dbg !489
  tail call void @halide_print(i8* %1, i8* nonnull %12) #7, !dbg !490
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #7, !dbg !494
  br label %26

26:                                               ; preds = %25, %8
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
  br i1 %2, label %8, label %13, !dbg !532

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !533
  %10 = load i8*, i8** %9, align 4, !dbg !533, !tbaa !534
  %11 = ptrtoint i8* %10 to i32, !dbg !541
  %12 = zext i32 %11 to i64, !dbg !541
  br label %16, !dbg !532

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !542
  %15 = load i64, i64* %14, align 8, !dbg !542, !tbaa !543
  br label %16, !dbg !532

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ], !dbg !532
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0, !dbg !544
  store i64 %17, i64* %18, align 8, !dbg !545, !tbaa !395
  br i1 %4, label %19, label %24, !dbg !546

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !547
  %21 = load i8*, i8** %20, align 4, !dbg !547, !tbaa !534
  %22 = ptrtoint i8* %21 to i32, !dbg !548
  %23 = zext i32 %22 to i64, !dbg !548
  br label %27, !dbg !546

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !549
  %26 = load i64, i64* %25, align 8, !dbg !549, !tbaa !543
  br label %27, !dbg !546

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ], !dbg !546
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1, !dbg !550
  store i64 %28, i64* %29, align 8, !dbg !551, !tbaa !401
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !556
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !558
  %31 = load i8, i8* %30, align 1, !dbg !558, !tbaa !559
  %32 = zext i8 %31 to i32, !dbg !558
  %33 = add nuw nsw i32 %32, 7, !dbg !560
  %34 = lshr i32 %33, 3, !dbg !561
  %35 = zext i32 %34 to i64, !dbg !562
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6, !dbg !563
  store i64 %35, i64* %36, align 8, !dbg !564, !tbaa !405
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 0, metadata !507, metadata !DIExpression()), !dbg !565
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0, !dbg !566
  store i64 1, i64* %37, align 8, !dbg !569, !tbaa !376
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0, !dbg !570
  store i64 0, i64* %38, align 8, !dbg !571, !tbaa !376
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0, !dbg !572
  store i64 0, i64* %39, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 1, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 1, metadata !507, metadata !DIExpression()), !dbg !565
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1, !dbg !566
  store i64 1, i64* %40, align 8, !dbg !569, !tbaa !376
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1, !dbg !570
  store i64 0, i64* %41, align 8, !dbg !571, !tbaa !376
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1, !dbg !572
  store i64 0, i64* %42, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 2, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 2, metadata !507, metadata !DIExpression()), !dbg !565
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2, !dbg !566
  store i64 1, i64* %43, align 8, !dbg !569, !tbaa !376
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2, !dbg !570
  store i64 0, i64* %44, align 8, !dbg !571, !tbaa !376
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2, !dbg !572
  store i64 0, i64* %45, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 3, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 3, metadata !507, metadata !DIExpression()), !dbg !565
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3, !dbg !566
  store i64 1, i64* %46, align 8, !dbg !569, !tbaa !376
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3, !dbg !570
  store i64 0, i64* %47, align 8, !dbg !571, !tbaa !376
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3, !dbg !572
  store i64 0, i64* %48, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 4, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 4, metadata !507, metadata !DIExpression()), !dbg !565
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4, !dbg !566
  store i64 1, i64* %49, align 8, !dbg !569, !tbaa !376
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4, !dbg !570
  store i64 0, i64* %50, align 8, !dbg !571, !tbaa !376
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4, !dbg !572
  store i64 0, i64* %51, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 5, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 5, metadata !507, metadata !DIExpression()), !dbg !565
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5, !dbg !566
  store i64 1, i64* %52, align 8, !dbg !569, !tbaa !376
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5, !dbg !570
  store i64 0, i64* %53, align 8, !dbg !571, !tbaa !376
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5, !dbg !572
  store i64 0, i64* %54, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 6, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 6, metadata !507, metadata !DIExpression()), !dbg !565
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6, !dbg !566
  store i64 1, i64* %55, align 8, !dbg !569, !tbaa !376
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6, !dbg !570
  store i64 0, i64* %56, align 8, !dbg !571, !tbaa !376
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6, !dbg !572
  store i64 0, i64* %57, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 7, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 7, metadata !507, metadata !DIExpression()), !dbg !565
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7, !dbg !566
  store i64 1, i64* %58, align 8, !dbg !569, !tbaa !376
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7, !dbg !570
  store i64 0, i64* %59, align 8, !dbg !571, !tbaa !376
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7, !dbg !572
  store i64 0, i64* %60, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 8, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 8, metadata !507, metadata !DIExpression()), !dbg !565
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8, !dbg !566
  store i64 1, i64* %61, align 8, !dbg !569, !tbaa !376
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8, !dbg !570
  store i64 0, i64* %62, align 8, !dbg !571, !tbaa !376
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8, !dbg !572
  store i64 0, i64* %63, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 9, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 9, metadata !507, metadata !DIExpression()), !dbg !565
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9, !dbg !566
  store i64 1, i64* %64, align 8, !dbg !569, !tbaa !376
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9, !dbg !570
  store i64 0, i64* %65, align 8, !dbg !571, !tbaa !376
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9, !dbg !572
  store i64 0, i64* %66, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 10, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 10, metadata !507, metadata !DIExpression()), !dbg !565
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10, !dbg !566
  store i64 1, i64* %67, align 8, !dbg !569, !tbaa !376
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10, !dbg !570
  store i64 0, i64* %68, align 8, !dbg !571, !tbaa !376
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10, !dbg !572
  store i64 0, i64* %69, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 11, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 11, metadata !507, metadata !DIExpression()), !dbg !565
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11, !dbg !566
  store i64 1, i64* %70, align 8, !dbg !569, !tbaa !376
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11, !dbg !570
  store i64 0, i64* %71, align 8, !dbg !571, !tbaa !376
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11, !dbg !572
  store i64 0, i64* %72, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 12, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 12, metadata !507, metadata !DIExpression()), !dbg !565
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12, !dbg !566
  store i64 1, i64* %73, align 8, !dbg !569, !tbaa !376
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12, !dbg !570
  store i64 0, i64* %74, align 8, !dbg !571, !tbaa !376
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12, !dbg !572
  store i64 0, i64* %75, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 13, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 13, metadata !507, metadata !DIExpression()), !dbg !565
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13, !dbg !566
  store i64 1, i64* %76, align 8, !dbg !569, !tbaa !376
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13, !dbg !570
  store i64 0, i64* %77, align 8, !dbg !571, !tbaa !376
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13, !dbg !572
  store i64 0, i64* %78, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 14, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 14, metadata !507, metadata !DIExpression()), !dbg !565
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14, !dbg !566
  store i64 1, i64* %79, align 8, !dbg !569, !tbaa !376
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14, !dbg !570
  store i64 0, i64* %80, align 8, !dbg !571, !tbaa !376
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14, !dbg !572
  store i64 0, i64* %81, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 15, metadata !507, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 15, metadata !507, metadata !DIExpression()), !dbg !565
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15, !dbg !566
  store i64 1, i64* %82, align 8, !dbg !569, !tbaa !376
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15, !dbg !570
  store i64 0, i64* %83, align 8, !dbg !571, !tbaa !376
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15, !dbg !572
  store i64 0, i64* %84, align 8, !dbg !573, !tbaa !376
  call void @llvm.dbg.value(metadata i32 16, metadata !507, metadata !DIExpression()), !dbg !565
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2, !dbg !574
  call void @llvm.dbg.value(metadata i32 0, metadata !509, metadata !DIExpression()), !dbg !575
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !576
  %87 = load i32, i32* %86, align 4, !dbg !576, !tbaa !578
  %88 = icmp sgt i32 %87, 0, !dbg !579
  br i1 %88, label %89, label %94, !dbg !580

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !581
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !581
  br label %101, !dbg !580

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ], !dbg !582
  %96 = load i64, i64* %36, align 8, !dbg !583, !tbaa !405
  %97 = mul i64 %95, %96, !dbg !582
  store i64 %97, i64* %85, align 8, !dbg !582, !tbaa !437
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !584
  %99 = load i32, i32* %98, align 4, !dbg !584, !tbaa !578
  %100 = icmp eq i32 %87, %99, !dbg !585
  br i1 %100, label %117, label %126, !dbg !586

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ], !dbg !575
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !509, metadata !DIExpression()), !dbg !575
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2, !dbg !587
  %105 = load i32, i32* %104, align 4, !dbg !587, !tbaa !589
  %106 = sext i32 %105 to i64, !dbg !591
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0, !dbg !592
  %108 = load i32, i32* %107, align 4, !dbg !592, !tbaa !593
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0, !dbg !594
  %110 = load i32, i32* %109, align 4, !dbg !594, !tbaa !593
  %111 = sub nsw i32 %108, %110, !dbg !595
  %112 = sext i32 %111 to i64, !dbg !596
  %113 = mul nsw i64 %112, %106, !dbg !597
  %114 = add i64 %113, %102, !dbg !598
  %115 = add nuw nsw i32 %103, 1, !dbg !599
  call void @llvm.dbg.value(metadata i32 %115, metadata !509, metadata !DIExpression()), !dbg !575
  %116 = icmp slt i32 %115, %87, !dbg !579
  br i1 %116, label %101, label %94, !dbg !580, !llvm.loop !600

117:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !602
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !604
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !606
  %119 = load i8, i8* %118, align 1, !dbg !606, !tbaa !559
  %120 = zext i8 %119 to i32, !dbg !606
  %121 = add nuw nsw i32 %120, 7, !dbg !607
  %122 = lshr i32 %121, 3, !dbg !608
  %123 = icmp ne i32 %34, %122, !dbg !609
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123, !dbg !610
  br i1 %125, label %126, label %128, !dbg !610

126:                                              ; preds = %117, %94
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !511, metadata !DIExpression()), !dbg !611
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !611
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false), !dbg !611
  br label %245, !dbg !612

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0, !dbg !613
  br i1 %129, label %136, label %130, !dbg !614

130:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, metadata !517, metadata !DIExpression()), !dbg !615
  br i1 %88, label %131, label %243, !dbg !616

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !581
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !581
  br label %144, !dbg !616

136:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !514, metadata !DIExpression()), !dbg !617
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !617
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false), !dbg !617
  br label %245, !dbg !618

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !dbg !619, !tbaa !405
  %140 = load i64, i64* %38, align 8, !dbg !620, !tbaa !376
  %141 = icmp eq i64 %139, %140, !dbg !621
  br i1 %141, label %142, label %243, !dbg !622

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !dbg !623, !tbaa !376
  br label %190, !dbg !622

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !517, metadata !DIExpression()), !dbg !615
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2, !dbg !624
  %147 = load i32, i32* %146, align 4, !dbg !624, !tbaa !589
  %148 = sext i32 %147 to i64, !dbg !625
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !626
  %149 = mul nsw i64 %148, %35, !dbg !628
  call void @llvm.dbg.value(metadata i64 %149, metadata !519, metadata !DIExpression()), !dbg !629
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2, !dbg !630
  %151 = load i32, i32* %150, align 4, !dbg !630, !tbaa !589
  %152 = sext i32 %151 to i64, !dbg !631
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !632
  %153 = mul nsw i64 %152, %35, !dbg !634
  call void @llvm.dbg.value(metadata i64 %153, metadata !522, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !629
  %154 = icmp eq i32 %145, 0, !dbg !635
  br i1 %154, label %165, label %155, !dbg !638

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157, !dbg !638

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i32 %158, metadata !523, metadata !DIExpression()), !dbg !629
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158, !dbg !639
  %160 = load i64, i64* %159, align 8, !dbg !639, !tbaa !376
  %161 = icmp ult i64 %149, %160, !dbg !642
  br i1 %161, label %165, label %162, !dbg !643

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1, !dbg !644
  call void @llvm.dbg.value(metadata i32 %163, metadata !523, metadata !DIExpression()), !dbg !629
  %164 = icmp ult i32 %163, %145, !dbg !635
  br i1 %164, label %157, label %165, !dbg !638, !llvm.loop !645

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ], !dbg !647
  call void @llvm.dbg.value(metadata i32 %145, metadata !524, metadata !DIExpression()), !dbg !648
  %167 = icmp ugt i32 %145, %166, !dbg !649
  br i1 %167, label %177, label %168, !dbg !651

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1, !dbg !652
  %170 = load i32, i32* %169, align 4, !dbg !652, !tbaa !653
  %171 = sext i32 %170 to i64, !dbg !654
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166, !dbg !655
  store i64 %171, i64* %172, align 8, !dbg !656, !tbaa !376
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166, !dbg !657
  store i64 %149, i64* %173, align 8, !dbg !658, !tbaa !376
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166, !dbg !659
  store i64 %153, i64* %174, align 8, !dbg !660, !tbaa !376
  %175 = add nuw nsw i32 %145, 1, !dbg !661
  call void @llvm.dbg.value(metadata i32 %175, metadata !517, metadata !DIExpression()), !dbg !615
  %176 = icmp slt i32 %175, %87, !dbg !662
  br i1 %176, label %144, label %138, !dbg !616, !llvm.loop !663

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i32 %178, metadata !524, metadata !DIExpression()), !dbg !648
  %179 = add nsw i32 %178, -1, !dbg !665
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179, !dbg !667
  %181 = load i64, i64* %180, align 8, !dbg !667, !tbaa !376
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178, !dbg !668
  store i64 %181, i64* %182, align 8, !dbg !669, !tbaa !376
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179, !dbg !670
  %184 = load i64, i64* %183, align 8, !dbg !670, !tbaa !376
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178, !dbg !671
  store i64 %184, i64* %185, align 8, !dbg !672, !tbaa !376
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179, !dbg !673
  %187 = load i64, i64* %186, align 8, !dbg !673, !tbaa !376
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178, !dbg !674
  store i64 %187, i64* %188, align 8, !dbg !675, !tbaa !376
  call void @llvm.dbg.value(metadata i32 %179, metadata !524, metadata !DIExpression()), !dbg !648
  %189 = icmp sgt i32 %179, %166, !dbg !649
  br i1 %189, label %177, label %168, !dbg !651, !llvm.loop !676

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ], !dbg !623
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191, !dbg !678
  br i1 %193, label %194, label %243, !dbg !679

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !dbg !680, !tbaa !376
  %196 = mul i64 %195, %191, !dbg !681
  store i64 %196, i64* %36, align 8, !dbg !681, !tbaa !405
  call void @llvm.dbg.value(metadata i32 1, metadata !526, metadata !DIExpression()), !dbg !682
  %197 = load i64, i64* %40, align 8, !dbg !683, !tbaa !376
  store i64 %197, i64* %37, align 8, !dbg !686, !tbaa !376
  %198 = load i64, i64* %41, align 8, !dbg !687, !tbaa !376
  store i64 %198, i64* %38, align 8, !dbg !688, !tbaa !376
  %199 = load i64, i64* %42, align 8, !dbg !689, !tbaa !376
  store i64 %199, i64* %39, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 2, metadata !526, metadata !DIExpression()), !dbg !682
  %200 = load i64, i64* %43, align 8, !dbg !683, !tbaa !376
  store i64 %200, i64* %40, align 8, !dbg !686, !tbaa !376
  %201 = load i64, i64* %44, align 8, !dbg !687, !tbaa !376
  store i64 %201, i64* %41, align 8, !dbg !688, !tbaa !376
  %202 = load i64, i64* %45, align 8, !dbg !689, !tbaa !376
  store i64 %202, i64* %42, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 3, metadata !526, metadata !DIExpression()), !dbg !682
  %203 = load i64, i64* %46, align 8, !dbg !683, !tbaa !376
  store i64 %203, i64* %43, align 8, !dbg !686, !tbaa !376
  %204 = load i64, i64* %47, align 8, !dbg !687, !tbaa !376
  store i64 %204, i64* %44, align 8, !dbg !688, !tbaa !376
  %205 = load i64, i64* %48, align 8, !dbg !689, !tbaa !376
  store i64 %205, i64* %45, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 4, metadata !526, metadata !DIExpression()), !dbg !682
  %206 = load i64, i64* %49, align 8, !dbg !683, !tbaa !376
  store i64 %206, i64* %46, align 8, !dbg !686, !tbaa !376
  %207 = load i64, i64* %50, align 8, !dbg !687, !tbaa !376
  store i64 %207, i64* %47, align 8, !dbg !688, !tbaa !376
  %208 = load i64, i64* %51, align 8, !dbg !689, !tbaa !376
  store i64 %208, i64* %48, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 5, metadata !526, metadata !DIExpression()), !dbg !682
  %209 = load i64, i64* %52, align 8, !dbg !683, !tbaa !376
  store i64 %209, i64* %49, align 8, !dbg !686, !tbaa !376
  %210 = load i64, i64* %53, align 8, !dbg !687, !tbaa !376
  store i64 %210, i64* %50, align 8, !dbg !688, !tbaa !376
  %211 = load i64, i64* %54, align 8, !dbg !689, !tbaa !376
  store i64 %211, i64* %51, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 6, metadata !526, metadata !DIExpression()), !dbg !682
  %212 = load i64, i64* %55, align 8, !dbg !683, !tbaa !376
  store i64 %212, i64* %52, align 8, !dbg !686, !tbaa !376
  %213 = load i64, i64* %56, align 8, !dbg !687, !tbaa !376
  store i64 %213, i64* %53, align 8, !dbg !688, !tbaa !376
  %214 = load i64, i64* %57, align 8, !dbg !689, !tbaa !376
  store i64 %214, i64* %54, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 7, metadata !526, metadata !DIExpression()), !dbg !682
  %215 = load i64, i64* %58, align 8, !dbg !683, !tbaa !376
  store i64 %215, i64* %55, align 8, !dbg !686, !tbaa !376
  %216 = load i64, i64* %59, align 8, !dbg !687, !tbaa !376
  store i64 %216, i64* %56, align 8, !dbg !688, !tbaa !376
  %217 = load i64, i64* %60, align 8, !dbg !689, !tbaa !376
  store i64 %217, i64* %57, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 8, metadata !526, metadata !DIExpression()), !dbg !682
  %218 = load i64, i64* %61, align 8, !dbg !683, !tbaa !376
  store i64 %218, i64* %58, align 8, !dbg !686, !tbaa !376
  %219 = load i64, i64* %62, align 8, !dbg !687, !tbaa !376
  store i64 %219, i64* %59, align 8, !dbg !688, !tbaa !376
  %220 = load i64, i64* %63, align 8, !dbg !689, !tbaa !376
  store i64 %220, i64* %60, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 9, metadata !526, metadata !DIExpression()), !dbg !682
  %221 = load i64, i64* %64, align 8, !dbg !683, !tbaa !376
  store i64 %221, i64* %61, align 8, !dbg !686, !tbaa !376
  %222 = load i64, i64* %65, align 8, !dbg !687, !tbaa !376
  store i64 %222, i64* %62, align 8, !dbg !688, !tbaa !376
  %223 = load i64, i64* %66, align 8, !dbg !689, !tbaa !376
  store i64 %223, i64* %63, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 10, metadata !526, metadata !DIExpression()), !dbg !682
  %224 = load i64, i64* %67, align 8, !dbg !683, !tbaa !376
  store i64 %224, i64* %64, align 8, !dbg !686, !tbaa !376
  %225 = load i64, i64* %68, align 8, !dbg !687, !tbaa !376
  store i64 %225, i64* %65, align 8, !dbg !688, !tbaa !376
  %226 = load i64, i64* %69, align 8, !dbg !689, !tbaa !376
  store i64 %226, i64* %66, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 11, metadata !526, metadata !DIExpression()), !dbg !682
  %227 = load i64, i64* %70, align 8, !dbg !683, !tbaa !376
  store i64 %227, i64* %67, align 8, !dbg !686, !tbaa !376
  %228 = load i64, i64* %71, align 8, !dbg !687, !tbaa !376
  store i64 %228, i64* %68, align 8, !dbg !688, !tbaa !376
  %229 = load i64, i64* %72, align 8, !dbg !689, !tbaa !376
  store i64 %229, i64* %69, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 12, metadata !526, metadata !DIExpression()), !dbg !682
  %230 = load i64, i64* %73, align 8, !dbg !683, !tbaa !376
  store i64 %230, i64* %70, align 8, !dbg !686, !tbaa !376
  %231 = load i64, i64* %74, align 8, !dbg !687, !tbaa !376
  store i64 %231, i64* %71, align 8, !dbg !688, !tbaa !376
  %232 = load i64, i64* %75, align 8, !dbg !689, !tbaa !376
  store i64 %232, i64* %72, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 13, metadata !526, metadata !DIExpression()), !dbg !682
  %233 = load i64, i64* %76, align 8, !dbg !683, !tbaa !376
  store i64 %233, i64* %73, align 8, !dbg !686, !tbaa !376
  %234 = load i64, i64* %77, align 8, !dbg !687, !tbaa !376
  store i64 %234, i64* %74, align 8, !dbg !688, !tbaa !376
  %235 = load i64, i64* %78, align 8, !dbg !689, !tbaa !376
  store i64 %235, i64* %75, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 14, metadata !526, metadata !DIExpression()), !dbg !682
  %236 = load i64, i64* %79, align 8, !dbg !683, !tbaa !376
  store i64 %236, i64* %76, align 8, !dbg !686, !tbaa !376
  %237 = load i64, i64* %80, align 8, !dbg !687, !tbaa !376
  store i64 %237, i64* %77, align 8, !dbg !688, !tbaa !376
  %238 = load i64, i64* %81, align 8, !dbg !689, !tbaa !376
  store i64 %238, i64* %78, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 15, metadata !526, metadata !DIExpression()), !dbg !682
  %239 = load i64, i64* %82, align 8, !dbg !683, !tbaa !376
  store i64 %239, i64* %79, align 8, !dbg !686, !tbaa !376
  %240 = load i64, i64* %83, align 8, !dbg !687, !tbaa !376
  store i64 %240, i64* %80, align 8, !dbg !688, !tbaa !376
  %241 = load i64, i64* %84, align 8, !dbg !689, !tbaa !376
  store i64 %241, i64* %81, align 8, !dbg !690, !tbaa !376
  call void @llvm.dbg.value(metadata i32 16, metadata !526, metadata !DIExpression()), !dbg !682
  store i64 1, i64* %82, align 8, !dbg !691, !tbaa !376
  store i64 0, i64* %83, align 8, !dbg !692, !tbaa !376
  store i64 0, i64* %84, align 8, !dbg !693, !tbaa !376
  %242 = icmp eq i64 %196, %198, !dbg !621
  br i1 %242, label %190, label %243, !dbg !622, !llvm.loop !694

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !696
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !dbg !696, !tbaa.struct !697
  br label %245, !dbg !698

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #9, !dbg !699
  ret void, !dbg !699
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

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
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 !dbg !714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !718, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i8* %1, metadata !719, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.value(metadata i32 %2, metadata !720, metadata !DIExpression()), !dbg !721
  %4 = tail call i32 @memcmp(i8* %0, i8* %1, i32 %2) #7, !dbg !722
  %5 = icmp eq i32 %4, 0, !dbg !723
  ret i1 %5, !dbg !724
}

declare !dbg !725 dso_local i32 @memcmp(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1) local_unnamed_addr #0 !dbg !728 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %0, metadata !734, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* %1, metadata !735, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 0, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i32 0, metadata !736, metadata !DIExpression()), !dbg !739
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 5, !dbg !740
  %4 = load i32, i32* %3, align 4, !dbg !740, !tbaa !578
  %5 = icmp sgt i32 %4, 0, !dbg !742
  br i1 %5, label %6, label %37, !dbg !743

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6, !dbg !744
  %8 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %7, align 8, !tbaa !581
  br label %11, !dbg !743

9:                                                ; preds = %30
  call void @llvm.dbg.value(metadata i32 %36, metadata !736, metadata !DIExpression()), !dbg !739
  %10 = icmp slt i32 %36, %4, !dbg !742
  br i1 %10, label %11, label %37, !dbg !743, !llvm.loop !747

11:                                               ; preds = %6, %9
  %12 = phi i32 [ 0, %6 ], [ %36, %9 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !749, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !752, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !756, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata %struct.halide_dimension_t* undef, metadata !759, metadata !DIExpression()), !dbg !760
  %13 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 0, !dbg !762
  %14 = load i32, i32* %13, align 4, !dbg !762, !tbaa !593
  %15 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 0, !dbg !763
  %16 = load i32, i32* %15, align 4, !dbg !763, !tbaa !593
  %17 = icmp eq i32 %14, %16, !dbg !764
  br i1 %17, label %18, label %37, !dbg !765

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 1, !dbg !766
  %20 = load i32, i32* %19, align 4, !dbg !766, !tbaa !653
  %21 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 1, !dbg !767
  %22 = load i32, i32* %21, align 4, !dbg !767, !tbaa !653
  %23 = icmp eq i32 %20, %22, !dbg !768
  br i1 %23, label %24, label %37, !dbg !769

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 2, !dbg !770
  %26 = load i32, i32* %25, align 4, !dbg !770, !tbaa !589
  %27 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 2, !dbg !771
  %28 = load i32, i32* %27, align 4, !dbg !771, !tbaa !589
  %29 = icmp eq i32 %26, %28, !dbg !772
  br i1 %29, label %30, label %37, !dbg !773

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 3, !dbg !774
  %32 = load i32, i32* %31, align 4, !dbg !774, !tbaa !775
  %33 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 3, !dbg !776
  %34 = load i32, i32* %33, align 4, !dbg !776, !tbaa !775
  %35 = icmp eq i32 %32, %34, !dbg !777
  %36 = add nuw nsw i32 %12, 1, !dbg !778
  call void @llvm.dbg.value(metadata i32 %36, metadata !736, metadata !DIExpression()), !dbg !739
  br i1 %35, label %9, label %37, !dbg !779

37:                                               ; preds = %30, %9, %24, %18, %11, %2
  %38 = phi i1 [ true, %2 ], [ false, %11 ], [ false, %18 ], [ false, %24 ], [ true, %9 ], [ false, %30 ]
  ret i1 %38, !dbg !780
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal12header_bytesEv() local_unnamed_addr #6 !dbg !781 {
  call void @llvm.dbg.value(metadata i32 8, metadata !785, metadata !DIExpression()), !dbg !787
  %1 = tail call i32 @halide_malloc_alignment() #7, !dbg !788
  call void @llvm.dbg.value(metadata i32 %1, metadata !786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !787
  %2 = add i32 %1, 7, !dbg !789
  %3 = sub i32 0, %1, !dbg !790
  %4 = and i32 %2, %3, !dbg !791
  ret i32 %4, !dbg !792
}

declare !dbg !793 extern_weak dso_local i32 @halide_malloc_alignment() local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %0) local_unnamed_addr #0 !dbg !796 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 8, metadata !785, metadata !DIExpression()) #9, !dbg !802
  %2 = tail call i32 @halide_malloc_alignment() #7, !dbg !804
  call void @llvm.dbg.value(metadata i32 %2, metadata !786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !802
  %3 = add i32 %2, 7, !dbg !805
  %4 = sub i32 0, %2, !dbg !806
  %5 = and i32 %3, %4, !dbg !807
  %6 = sub i32 0, %5, !dbg !808
  %7 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !808
  %8 = bitcast i8* %7 to %"struct.Halide::Runtime::Internal::CacheBlockHeader"*, !dbg !809
  ret %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %8, !dbg !810
}

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %0, i8* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4, i32 %5, %struct.halide_buffer_t** %6, i1 zeroext %7, i64 %8) local_unnamed_addr #0 align 2 !dbg !811 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %0, metadata !813, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i8* %1, metadata !814, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %2, metadata !815, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %3, metadata !816, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %4, metadata !817, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %5, metadata !818, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %6, metadata !819, metadata !DIExpression()), !dbg !835
  %10 = zext i1 %7 to i8
  call void @llvm.dbg.value(metadata i8 %10, metadata !820, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i64 %8, metadata !821, metadata !DIExpression()), !dbg !835
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 0, !dbg !836
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !dbg !837, !tbaa !838
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 1, !dbg !841
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 4, !dbg !842, !tbaa !843
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 2, !dbg !844
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %13, align 8, !dbg !845, !tbaa !846
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 4, !dbg !847
  store i32 %2, i32* %14, align 8, !dbg !848, !tbaa !849
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 6, !dbg !850
  store i32 %3, i32* %15, align 8, !dbg !851, !tbaa !852
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 7, !dbg !853
  store i32 0, i32* %16, align 4, !dbg !854, !tbaa !855
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 8, !dbg !856
  store i32 %5, i32* %17, align 8, !dbg !857, !tbaa !858
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 5, !dbg !859
  %19 = load i32, i32* %18, align 4, !dbg !859, !tbaa !578
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 9, !dbg !860
  store i32 %19, i32* %20, align 4, !dbg !861, !tbaa !862
  call void @llvm.dbg.value(metadata i32 0, metadata !822, metadata !DIExpression()), !dbg !835
  %21 = mul i32 %5, 40, !dbg !863
  call void @llvm.dbg.value(metadata i32 %21, metadata !822, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %21, metadata !823, metadata !DIExpression()), !dbg !835
  %22 = shl i32 %5, 4, !dbg !864
  %23 = add i32 %22, 16, !dbg !864
  %24 = mul i32 %23, %19, !dbg !865
  %25 = add i32 %24, %21, !dbg !866
  call void @llvm.dbg.value(metadata i32 %25, metadata !822, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %25, metadata !824, metadata !DIExpression()), !dbg !835
  %26 = add i32 %25, %2, !dbg !867
  call void @llvm.dbg.value(metadata i32 %26, metadata !822, metadata !DIExpression()), !dbg !835
  %27 = tail call i8* @halide_malloc(i8* null, i32 %26) #7, !dbg !868
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 3, !dbg !869
  store i8* %27, i8** %28, align 4, !dbg !870, !tbaa !871
  %29 = icmp eq i8* %27, null, !dbg !872
  br i1 %29, label %117, label %30, !dbg !874

30:                                               ; preds = %9
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 11, !dbg !875
  %32 = bitcast %struct.halide_buffer_t** %31 to i8**, !dbg !876
  store i8* %27, i8** %32, align 4, !dbg !876, !tbaa !877
  %33 = getelementptr inbounds i8, i8* %27, i32 %21, !dbg !878
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 10, !dbg !879
  %35 = bitcast %struct.halide_dimension_t** %34 to i8**, !dbg !880
  store i8* %33, i8** %35, align 8, !dbg !880, !tbaa !881
  %36 = getelementptr inbounds i8, i8* %27, i32 %25, !dbg !882
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 5, !dbg !883
  store i8* %36, i8** %37, align 4, !dbg !884, !tbaa !885
  call void @llvm.dbg.value(metadata i32 0, metadata !825, metadata !DIExpression()), !dbg !886
  %38 = load i32, i32* %14, align 8, !dbg !887, !tbaa !849
  %39 = icmp eq i32 %38, 0, !dbg !889
  br i1 %39, label %44, label %40, !dbg !890

40:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 0, metadata !825, metadata !DIExpression()), !dbg !886
  %41 = load i8, i8* %1, align 1, !dbg !891, !tbaa !479
  store i8 %41, i8* %36, align 1, !dbg !893, !tbaa !479
  call void @llvm.dbg.value(metadata i32 1, metadata !825, metadata !DIExpression()), !dbg !886
  %42 = load i32, i32* %14, align 8, !dbg !887, !tbaa !849
  %43 = icmp ugt i32 %42, 1, !dbg !889
  br i1 %43, label %49, label %44, !dbg !890, !llvm.loop !894

44:                                               ; preds = %49, %40, %30
  call void @llvm.dbg.value(metadata i32 0, metadata !827, metadata !DIExpression()), !dbg !896
  %45 = load i32, i32* %20, align 4, !dbg !897, !tbaa !862
  %46 = icmp sgt i32 %45, 0, !dbg !899
  br i1 %46, label %47, label %58, !dbg !900

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 6
  br label %61, !dbg !900

49:                                               ; preds = %40, %49
  %50 = phi i32 [ %55, %49 ], [ 1, %40 ]
  %51 = load i8*, i8** %37, align 4, !dbg !901, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %50, metadata !825, metadata !DIExpression()), !dbg !886
  %52 = getelementptr inbounds i8, i8* %1, i32 %50, !dbg !891
  %53 = load i8, i8* %52, align 1, !dbg !891, !tbaa !479
  %54 = getelementptr inbounds i8, i8* %51, i32 %50, !dbg !901
  store i8 %53, i8* %54, align 1, !dbg !893, !tbaa !479
  %55 = add nuw i32 %50, 1, !dbg !902
  call void @llvm.dbg.value(metadata i32 %55, metadata !825, metadata !DIExpression()), !dbg !886
  %56 = load i32, i32* %14, align 8, !dbg !887, !tbaa !849
  %57 = icmp ult i32 %55, %56, !dbg !889
  br i1 %57, label %49, label %44, !dbg !890, !llvm.loop !894

58:                                               ; preds = %61, %44
  call void @llvm.dbg.value(metadata i32 0, metadata !829, metadata !DIExpression()), !dbg !903
  %59 = load i32, i32* %17, align 8, !dbg !904, !tbaa !858
  %60 = icmp eq i32 %59, 0, !dbg !905
  br i1 %60, label %75, label %78, !dbg !906

61:                                               ; preds = %47, %61
  %62 = phi i32 [ 0, %47 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata i32 %62, metadata !827, metadata !DIExpression()), !dbg !896
  %63 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %48, align 8, !dbg !907, !tbaa !581
  %64 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %63, i32 %62, !dbg !909
  %65 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %34, align 8, !dbg !910, !tbaa !881
  %66 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %65, i32 %62, !dbg !910
  %67 = bitcast %struct.halide_dimension_t* %66 to i8*, !dbg !911
  %68 = bitcast %struct.halide_dimension_t* %64 to i8*, !dbg !911
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %67, i8* nonnull align 4 dereferenceable(16) %68, i32 16, i1 false), !dbg !911, !tbaa.struct !912
  %69 = add nuw nsw i32 %62, 1, !dbg !914
  call void @llvm.dbg.value(metadata i32 %69, metadata !827, metadata !DIExpression()), !dbg !896
  %70 = load i32, i32* %20, align 4, !dbg !897, !tbaa !862
  %71 = icmp slt i32 %69, %70, !dbg !899
  br i1 %71, label %61, label %58, !dbg !900, !llvm.loop !915

72:                                               ; preds = %102, %94, %78
  call void @llvm.dbg.value(metadata i32 %87, metadata !829, metadata !DIExpression()), !dbg !903
  %73 = load i32, i32* %17, align 8, !dbg !904, !tbaa !858
  %74 = icmp ult i32 %87, %73, !dbg !905
  br i1 %74, label %78, label %75, !dbg !906, !llvm.loop !917

75:                                               ; preds = %72, %58
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 13, !dbg !919
  store i8 %10, i8* %76, align 8, !dbg !920, !tbaa !921
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 12, !dbg !922
  store i64 %8, i64* %77, align 8, !dbg !923, !tbaa !924
  br label %117, !dbg !925

78:                                               ; preds = %58, %72
  %79 = phi i32 [ %87, %72 ], [ 0, %58 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !829, metadata !DIExpression()), !dbg !903
  %80 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, i32 %79, !dbg !926
  %81 = bitcast %struct.halide_buffer_t** %80 to i8**, !dbg !926
  %82 = load i8*, i8** %81, align 4, !dbg !926, !tbaa !927
  %83 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %31, align 4, !dbg !928, !tbaa !877
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %83, i32 %79, !dbg !928
  %85 = bitcast %struct.halide_buffer_t* %84 to i8*, !dbg !929
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %85, i8* nonnull align 8 dereferenceable(40) %82, i32 40, i1 false), !dbg !929, !tbaa.struct !930
  %86 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %34, align 8, !dbg !933, !tbaa !881
  %87 = add nuw i32 %79, 1, !dbg !934
  %88 = load i32, i32* %20, align 4, !dbg !935, !tbaa !862
  %89 = mul i32 %88, %87, !dbg !936
  %90 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %86, i32 %89, !dbg !937
  %91 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %31, align 4, !dbg !938, !tbaa !877
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %91, i32 %79, i32 6, !dbg !939
  store %struct.halide_dimension_t* %90, %struct.halide_dimension_t** %92, align 8, !dbg !940, !tbaa !581
  call void @llvm.dbg.value(metadata i32 0, metadata !831, metadata !DIExpression()), !dbg !941
  %93 = icmp sgt i32 %88, 0, !dbg !942
  br i1 %93, label %94, label %72, !dbg !944

94:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i32 0, metadata !831, metadata !DIExpression()), !dbg !941
  %95 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %80, align 4, !dbg !945, !tbaa !927
  %96 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %95, i32 0, i32 6, !dbg !947
  %97 = bitcast %struct.halide_dimension_t** %96 to i8**, !dbg !947
  %98 = load i8*, i8** %97, align 8, !dbg !947, !tbaa !581
  %99 = bitcast %struct.halide_dimension_t* %90 to i8*, !dbg !948
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %99, i8* nonnull align 4 dereferenceable(16) %98, i32 16, i1 false), !dbg !948, !tbaa.struct !912
  call void @llvm.dbg.value(metadata i32 1, metadata !831, metadata !DIExpression()), !dbg !941
  %100 = load i32, i32* %20, align 4, !dbg !949, !tbaa !862
  %101 = icmp sgt i32 %100, 1, !dbg !942
  br i1 %101, label %102, label %72, !dbg !944, !llvm.loop !950

102:                                              ; preds = %94, %102
  %103 = phi i32 [ %114, %102 ], [ 1, %94 ]
  %104 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %31, align 4, !dbg !952, !tbaa !877
  %105 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %104, i32 %79, i32 6
  %106 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %105, align 8, !dbg !953, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %103, metadata !831, metadata !DIExpression()), !dbg !941
  %107 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %80, align 4, !dbg !945, !tbaa !927
  %108 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %107, i32 0, i32 6, !dbg !947
  %109 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %108, align 8, !dbg !947, !tbaa !581
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %109, i32 %103, !dbg !945
  %111 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %106, i32 %103, !dbg !952
  %112 = bitcast %struct.halide_dimension_t* %111 to i8*, !dbg !948
  %113 = bitcast %struct.halide_dimension_t* %110 to i8*, !dbg !948
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %112, i8* nonnull align 4 dereferenceable(16) %113, i32 16, i1 false), !dbg !948, !tbaa.struct !912
  %114 = add nuw nsw i32 %103, 1, !dbg !954
  call void @llvm.dbg.value(metadata i32 %114, metadata !831, metadata !DIExpression()), !dbg !941
  %115 = load i32, i32* %20, align 4, !dbg !949, !tbaa !862
  %116 = icmp slt i32 %114, %115, !dbg !942
  br i1 %116, label %102, label %72, !dbg !944, !llvm.loop !950

117:                                              ; preds = %9, %75
  %118 = xor i1 %29, true, !dbg !955
  ret i1 %118, !dbg !955
}

declare !dbg !956 dso_local i8* @halide_malloc(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %0) local_unnamed_addr #0 align 2 !dbg !959 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %0, metadata !961, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i32 0, metadata !962, metadata !DIExpression()), !dbg !965
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 8, !dbg !966
  %3 = load i32, i32* %2, align 8, !dbg !966, !tbaa !858
  %4 = icmp eq i32 %3, 0, !dbg !968
  br i1 %4, label %7, label %5, !dbg !969

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 11
  br label %10, !dbg !969

7:                                                ; preds = %10, %1
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 3, !dbg !970
  %9 = load i8*, i8** %8, align 4, !dbg !970, !tbaa !871
  tail call void @halide_free(i8* null, i8* %9) #7, !dbg !971
  ret void, !dbg !972

10:                                               ; preds = %5, %10
  %11 = phi i32 [ 0, %5 ], [ %20, %10 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !962, metadata !DIExpression()), !dbg !965
  %12 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 4, !dbg !973, !tbaa !877
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %12, i32 %11, !dbg !973
  %14 = tail call i32 @halide_device_free(i8* null, %struct.halide_buffer_t* %13) #7, !dbg !975
  %15 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 4, !dbg !976, !tbaa !877
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %15, i32 %11, i32 2, !dbg !977
  %17 = load i8*, i8** %16, align 4, !dbg !977, !tbaa !534
  %18 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %17) #8, !dbg !978
  %19 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %18 to i8*, !dbg !978
  tail call void @halide_free(i8* null, i8* %19) #7, !dbg !979
  %20 = add nuw i32 %11, 1, !dbg !980
  call void @llvm.dbg.value(metadata i32 %20, metadata !962, metadata !DIExpression()), !dbg !965
  %21 = load i32, i32* %2, align 8, !dbg !966, !tbaa !858
  %22 = icmp ult i32 %20, %21, !dbg !968
  br i1 %22, label %10, label %7, !dbg !969, !llvm.loop !981
}

declare !dbg !983 dso_local i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

declare !dbg !984 dso_local void @halide_free(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhj(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !991, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 %1, metadata !992, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 5381, metadata !993, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !997
  %3 = icmp eq i32 %1, 0, !dbg !998
  br i1 %3, label %4, label %6, !dbg !1000

4:                                                ; preds = %6, %2
  %5 = phi i32 [ 5381, %2 ], [ %13, %6 ], !dbg !996
  ret i32 %5, !dbg !1001

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %14, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %13, %6 ], [ 5381, %2 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !994, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %8, metadata !993, metadata !DIExpression()), !dbg !996
  %9 = mul i32 %8, 33, !dbg !1002
  %10 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !1004
  %11 = load i8, i8* %10, align 1, !dbg !1004, !tbaa !479
  %12 = zext i8 %11 to i32, !dbg !1004
  %13 = add i32 %9, %12, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %13, metadata !993, metadata !DIExpression()), !dbg !996
  %14 = add nuw i32 %7, 1, !dbg !1006
  call void @llvm.dbg.value(metadata i32 %14, metadata !994, metadata !DIExpression()), !dbg !997
  %15 = icmp ult i32 %14, %1, !dbg !998
  br i1 %15, label %6, label %4, !dbg !1000, !llvm.loop !1007
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal11prune_cacheEv() local_unnamed_addr #0 !dbg !1009 {
  %1 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1023, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %1, metadata !1013, metadata !DIExpression()), !dbg !1024
  %2 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1025, !tbaa !376
  %3 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !dbg !1026, !tbaa !376
  %4 = icmp sgt i64 %2, %3, !dbg !1027
  %5 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %1, null, !dbg !1028
  %6 = and i1 %5, %4, !dbg !1028
  br i1 %6, label %7, label %138, !dbg !1029

7:                                                ; preds = %0, %132
  %8 = phi i64 [ %133, %132 ], [ %3, %0 ]
  %9 = phi i64 [ %134, %132 ], [ %2, %0 ]
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %12, %132 ], [ %1, %0 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %10, metadata !1013, metadata !DIExpression()), !dbg !1024
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 1, !dbg !1030
  %12 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 4, !dbg !1030, !tbaa !843
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %12, metadata !1014, metadata !DIExpression()), !dbg !1031
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 7, !dbg !1032
  %14 = load i32, i32* %13, align 4, !dbg !1032, !tbaa !855
  %15 = icmp eq i32 %14, 0, !dbg !1033
  br i1 %15, label %16, label %132, !dbg !1034

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 6, !dbg !1035
  %18 = load i32, i32* %17, align 8, !dbg !1035, !tbaa !852
  call void @llvm.dbg.value(metadata i32 %18, metadata !1016, metadata !DIExpression()), !dbg !1036
  %19 = and i32 %18, 255, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %19, metadata !1019, metadata !DIExpression()), !dbg !1036
  %20 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %19, !dbg !1038
  %21 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %20, align 4, !dbg !1038, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %21, metadata !1020, metadata !DIExpression()), !dbg !1036
  %22 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %21, %10, !dbg !1039
  br i1 %22, label %23, label %26, !dbg !1041

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 0, !dbg !1042
  %25 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %24, align 8, !dbg !1042, !tbaa !838
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %25, %"struct.Halide::Runtime::Internal::CacheEntry"** %20, align 4, !dbg !1044, !tbaa !927
  br label %38, !dbg !1045

26:                                               ; preds = %16, %29
  %27 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %31, %29 ], [ %21, %16 ], !dbg !1036
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %27, metadata !1020, metadata !DIExpression()), !dbg !1036
  %28 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %27, null, !dbg !1046
  br i1 %28, label %33, label %29, !dbg !1048

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %27, i32 0, i32 0, !dbg !1049
  %31 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %30, align 8, !dbg !1049, !tbaa !838
  %32 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %31, %10, !dbg !1050
  br i1 %32, label %34, label %26, !dbg !1051, !llvm.loop !1052

33:                                               ; preds = %26
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !1054
  tail call void @abort() #7, !dbg !1054
  br label %34, !dbg !1054

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 0, !dbg !1058
  %36 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %35, align 8, !dbg !1058, !tbaa !838
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %27, i32 0, i32 0, !dbg !1059
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %36, %"struct.Halide::Runtime::Internal::CacheEntry"** %37, align 8, !dbg !1060, !tbaa !838
  br label %38

38:                                               ; preds = %34, %23
  %39 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1061, !tbaa !927
  %40 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %39, %10, !dbg !1063
  br i1 %40, label %41, label %42, !dbg !1064

41:                                               ; preds = %38
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1065, !tbaa !927
  br label %42, !dbg !1067

42:                                               ; preds = %41, %38
  %43 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null, !dbg !1068
  br i1 %43, label %48, label %44, !dbg !1070

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 2, !dbg !1071
  %46 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %45, align 8, !dbg !1071, !tbaa !846
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %12, i32 0, i32 2, !dbg !1073
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %46, %"struct.Halide::Runtime::Internal::CacheEntry"** %47, align 8, !dbg !1074, !tbaa !846
  br label %48, !dbg !1075

48:                                               ; preds = %44, %42
  %49 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1076, !tbaa !927
  %50 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %49, %10, !dbg !1078
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 2
  %52 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %51, align 8, !dbg !1036, !tbaa !846
  br i1 %50, label %53, label %54, !dbg !1079

53:                                               ; preds = %48
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %52, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1080, !tbaa !927
  br label %54, !dbg !1082

54:                                               ; preds = %48, %53
  %55 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %52, null, !dbg !1083
  br i1 %55, label %58, label %56, !dbg !1085

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 2, !dbg !1086
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** %57, align 8, !dbg !1087, !tbaa !846
  br label %58, !dbg !1089

58:                                               ; preds = %56, %54
  call void @llvm.dbg.value(metadata i32 0, metadata !1021, metadata !DIExpression()), !dbg !1090
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 8, !dbg !1091
  %60 = load i32, i32* %59, align 8, !dbg !1091, !tbaa !858
  %61 = icmp eq i32 %60, 0, !dbg !1093
  br i1 %61, label %67, label %62, !dbg !1094

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 11
  %64 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %63, align 4, !tbaa !877
  %65 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !376
  br label %71, !dbg !1094

66:                                               ; preds = %118
  store i64 %129, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1095, !tbaa !376
  br label %67, !dbg !1094

67:                                               ; preds = %66, %58
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %10) #8, !dbg !1097
  %68 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %10 to i8*, !dbg !1098
  tail call void @halide_free(i8* null, i8* nonnull %68) #7, !dbg !1099
  %69 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1025, !tbaa !376
  %70 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !dbg !1026, !tbaa !376
  br label %132, !dbg !1100

71:                                               ; preds = %62, %118
  %72 = phi i64 [ %65, %62 ], [ %129, %118 ]
  %73 = phi i32 [ 0, %62 ], [ %130, %118 ]
  call void @llvm.dbg.value(metadata i32 %73, metadata !1021, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1101, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1106, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 0, metadata !1109, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i32 0, metadata !1110, metadata !DIExpression()), !dbg !1114
  %74 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 5, !dbg !1115
  %75 = load i32, i32* %74, align 4, !dbg !1115, !tbaa !578
  %76 = icmp sgt i32 %75, 0, !dbg !1117
  br i1 %76, label %80, label %77, !dbg !1118

77:                                               ; preds = %71
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1119
  %78 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 4, i32 1, !dbg !1121
  %79 = load i8, i8* %78, align 1, !dbg !1121, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1122, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1130
  br label %118, !dbg !1131

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 6
  %82 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %81, align 8, !tbaa !581
  br label %83, !dbg !1118

83:                                               ; preds = %95, %80
  %84 = phi i32 [ 0, %80 ], [ %97, %95 ]
  %85 = phi i32 [ 0, %80 ], [ %96, %95 ]
  call void @llvm.dbg.value(metadata i32 %84, metadata !1110, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i32 %85, metadata !1109, metadata !DIExpression()), !dbg !1112
  %86 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %84, i32 2, !dbg !1132
  %87 = load i32, i32* %86, align 4, !dbg !1132, !tbaa !589
  %88 = icmp sgt i32 %87, 0, !dbg !1135
  br i1 %88, label %89, label %95, !dbg !1136

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %84, i32 1, !dbg !1137
  %91 = load i32, i32* %90, align 4, !dbg !1137, !tbaa !653
  %92 = add nsw i32 %91, -1, !dbg !1139
  %93 = mul nsw i32 %92, %87, !dbg !1140
  %94 = add nsw i32 %93, %85, !dbg !1141
  call void @llvm.dbg.value(metadata i32 %94, metadata !1109, metadata !DIExpression()), !dbg !1112
  br label %95, !dbg !1142

95:                                               ; preds = %89, %83
  %96 = phi i32 [ %94, %89 ], [ %85, %83 ], !dbg !1112
  call void @llvm.dbg.value(metadata i32 %96, metadata !1109, metadata !DIExpression()), !dbg !1112
  %97 = add nuw nsw i32 %84, 1, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %97, metadata !1110, metadata !DIExpression()), !dbg !1114
  %98 = icmp slt i32 %97, %75, !dbg !1117
  br i1 %98, label %83, label %99, !dbg !1118, !llvm.loop !1144

99:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i32 %96, metadata !1109, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1112
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1119
  %100 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 4, i32 1, !dbg !1121
  %101 = load i8, i8* %100, align 1, !dbg !1121, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1122, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1130
  br label %102, !dbg !1131

102:                                              ; preds = %114, %99
  %103 = phi i32 [ 0, %99 ], [ %116, %114 ]
  %104 = phi i32 [ 0, %99 ], [ %115, %114 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !1126, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i32 %104, metadata !1125, metadata !DIExpression()), !dbg !1128
  %105 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %103, i32 2, !dbg !1146
  %106 = load i32, i32* %105, align 4, !dbg !1146, !tbaa !589
  %107 = icmp slt i32 %106, 0, !dbg !1150
  br i1 %107, label %108, label %114, !dbg !1151

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %103, i32 1, !dbg !1152
  %110 = load i32, i32* %109, align 4, !dbg !1152, !tbaa !653
  %111 = add nsw i32 %110, -1, !dbg !1154
  %112 = mul nsw i32 %111, %106, !dbg !1155
  %113 = add nsw i32 %112, %104, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %113, metadata !1125, metadata !DIExpression()), !dbg !1128
  br label %114, !dbg !1157

114:                                              ; preds = %108, %102
  %115 = phi i32 [ %113, %108 ], [ %104, %102 ], !dbg !1128
  call void @llvm.dbg.value(metadata i32 %115, metadata !1125, metadata !DIExpression()), !dbg !1128
  %116 = add nuw nsw i32 %103, 1, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %116, metadata !1126, metadata !DIExpression()), !dbg !1130
  %117 = icmp slt i32 %116, %75, !dbg !1159
  br i1 %117, label %102, label %118, !dbg !1131, !llvm.loop !1160

118:                                              ; preds = %114, %77
  %119 = phi i8 [ %79, %77 ], [ %101, %114 ]
  %120 = phi i32 [ 0, %77 ], [ %96, %114 ]
  %121 = phi i32 [ 0, %77 ], [ %115, %114 ], !dbg !1128
  %122 = zext i8 %119 to i32, !dbg !1121
  %123 = add nuw nsw i32 %122, 7, !dbg !1162
  %124 = lshr i32 %123, 3, !dbg !1163
  %125 = add nsw i32 %120, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %125, metadata !1109, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1165
  %126 = sub i32 %125, %121, !dbg !1167
  %127 = mul i32 %126, %124, !dbg !1167
  %128 = zext i32 %127 to i64, !dbg !1168
  %129 = sub nsw i64 %72, %128, !dbg !1095
  %130 = add nuw i32 %73, 1, !dbg !1169
  call void @llvm.dbg.value(metadata i32 %130, metadata !1021, metadata !DIExpression()), !dbg !1090
  %131 = icmp ult i32 %130, %60, !dbg !1093
  br i1 %131, label %71, label %66, !dbg !1094, !llvm.loop !1170

132:                                              ; preds = %67, %7
  %133 = phi i64 [ %70, %67 ], [ %8, %7 ], !dbg !1026
  %134 = phi i64 [ %69, %67 ], [ %9, %7 ], !dbg !1025
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %12, metadata !1013, metadata !DIExpression()), !dbg !1024
  %135 = icmp sgt i64 %134, %133, !dbg !1027
  %136 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null, !dbg !1028
  %137 = and i1 %136, %135, !dbg !1028
  br i1 %137, label %7, label %138, !dbg !1029, !llvm.loop !1172

138:                                              ; preds = %132, %0
  ret void, !dbg !1174
}

declare !dbg !1175 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1178 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_set_size(i64 %0) local_unnamed_addr #4 !dbg !1179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1183, metadata !DIExpression()), !dbg !1197
  %2 = icmp eq i64 %0, 0, !dbg !1198
  %3 = select i1 %2, i64 1048576, i64 %0, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %3, metadata !1183, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1201, metadata !DIExpression()) #9, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1204, metadata !DIExpression()) #9, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1184, metadata !DIExpression()), !dbg !1197
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1208
  store i64 %3, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !dbg !1210, !tbaa !376
  tail call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #8, !dbg !1211
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1212, metadata !DIExpression()) #9, !dbg !1215
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1217
  ret void, !dbg !1219
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_memoization_cache_lookup(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5) local_unnamed_addr #4 !dbg !1220 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1224, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %1, metadata !1225, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 %2, metadata !1226, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1227, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 %4, metadata !1228, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %5, metadata !1229, metadata !DIExpression()), !dbg !1257
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhj(i8* %1, i32 %2) #8, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %7, metadata !1230, metadata !DIExpression()), !dbg !1257
  %8 = and i32 %7, 255, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %8, metadata !1231, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1201, metadata !DIExpression()) #9, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1204, metadata !DIExpression()) #9, !dbg !1260
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1232, metadata !DIExpression()), !dbg !1257
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1262
  %9 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %8, !dbg !1263
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1233, metadata !DIExpression()), !dbg !1257
  %10 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %9, align 4, !dbg !1257, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %10, metadata !1233, metadata !DIExpression()), !dbg !1257
  %11 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %10, null, !dbg !1264
  br i1 %11, label %14, label %12, !dbg !1265

12:                                               ; preds = %6
  %13 = icmp sgt i32 %4, 0
  br label %16, !dbg !1265

14:                                               ; preds = %101, %6
  call void @llvm.dbg.value(metadata i32 0, metadata !1247, metadata !DIExpression()), !dbg !1266
  %15 = icmp sgt i32 %4, 0, !dbg !1267
  br i1 %15, label %105, label %201, !dbg !1268

16:                                               ; preds = %12, %101
  %17 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %10, %12 ], [ %103, %101 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 6, !dbg !1269
  %19 = load i32, i32* %18, align 8, !dbg !1269, !tbaa !852
  %20 = icmp eq i32 %19, %7, !dbg !1270
  br i1 %20, label %21, label %101, !dbg !1271

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 4, !dbg !1272
  %23 = load i32, i32* %22, align 8, !dbg !1272, !tbaa !849
  %24 = icmp eq i32 %23, %2, !dbg !1273
  br i1 %24, label %25, label %101, !dbg !1274

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 5, !dbg !1275
  %27 = load i8*, i8** %26, align 4, !dbg !1275, !tbaa !885
  %28 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %27, i8* %1, i32 %2) #8, !dbg !1276
  br i1 %28, label %29, label %101, !dbg !1277

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 10, !dbg !1278
  %31 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %30, align 8, !dbg !1278, !tbaa !881
  %32 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %31) #8, !dbg !1279
  br i1 %32, label %33, label %101, !dbg !1280

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 8, !dbg !1281
  %35 = load i32, i32* %34, align 8, !dbg !1281, !tbaa !858
  %36 = icmp eq i32 %35, %4, !dbg !1282
  br i1 %36, label %37, label %101, !dbg !1283

37:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i8 undef, metadata !1234, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()), !dbg !1285
  br i1 %13, label %38, label %52, !dbg !1286

38:                                               ; preds = %37
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 11
  br label %41, !dbg !1286

40:                                               ; preds = %41
  br i1 %48, label %52, label %101, !dbg !1287

41:                                               ; preds = %38, %41
  %42 = phi i32 [ 0, %38 ], [ %49, %41 ]
  call void @llvm.dbg.value(metadata i32 %42, metadata !1238, metadata !DIExpression()), !dbg !1285
  %43 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %42, !dbg !1288
  %44 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %43, align 4, !dbg !1288, !tbaa !927
  %45 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %39, align 4, !dbg !1291, !tbaa !877
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %45, i32 %42, i32 6, !dbg !1292
  %47 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %46, align 8, !dbg !1292, !tbaa !581
  %48 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %44, %struct.halide_dimension_t* %47) #8, !dbg !1293
  call void @llvm.dbg.value(metadata i1 %48, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1284
  %49 = add nuw nsw i32 %42, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i8 undef, metadata !1234, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %49, metadata !1238, metadata !DIExpression()), !dbg !1285
  %50 = icmp slt i32 %49, %4, !dbg !1295
  %51 = and i1 %48, %50, !dbg !1295
  br i1 %51, label %41, label %40, !dbg !1286, !llvm.loop !1296

52:                                               ; preds = %37, %40
  %53 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1298, !tbaa !927
  %54 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %17, %53, !dbg !1300
  br i1 %54, label %88, label %55, !dbg !1301

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 1, !dbg !1302
  %57 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !dbg !1302, !tbaa !843
  %58 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %57, null, !dbg !1302
  br i1 %58, label %59, label %60, !dbg !1306

59:                                               ; preds = %55
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !1307
  tail call void @abort() #7, !dbg !1307
  br label %60, !dbg !1307

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 2, !dbg !1309
  %62 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1309, !tbaa !846
  %63 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %62, null, !dbg !1311
  br i1 %63, label %68, label %64, !dbg !1312

64:                                               ; preds = %60
  %65 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !dbg !1313, !tbaa !843
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %62, i32 0, i32 1, !dbg !1315
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %65, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 4, !dbg !1316, !tbaa !843
  %67 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !dbg !1317, !tbaa !843
  br label %74, !dbg !1320

68:                                               ; preds = %60
  %69 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1321, !tbaa !927
  %70 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %69, %17, !dbg !1321
  br i1 %70, label %72, label %71, !dbg !1325

71:                                               ; preds = %68
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !1326
  tail call void @abort() #7, !dbg !1326
  br label %72, !dbg !1326

72:                                               ; preds = %71, %68
  %73 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !dbg !1328, !tbaa !843
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %73, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1329, !tbaa !927
  br label %74

74:                                               ; preds = %64, %72
  %75 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %67, %64 ], [ %73, %72 ], !dbg !1317
  %76 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %75, null, !dbg !1317
  br i1 %76, label %77, label %79, !dbg !1330

77:                                               ; preds = %74
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !1331
  tail call void @abort() #7, !dbg !1331
  %78 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !dbg !1333, !tbaa !843
  br label %79, !dbg !1331

79:                                               ; preds = %77, %74
  %80 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %78, %77 ], [ %75, %74 ], !dbg !1333
  %81 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1334, !tbaa !846
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %80, i32 0, i32 2, !dbg !1335
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %81, %"struct.Halide::Runtime::Internal::CacheEntry"** %82, align 8, !dbg !1336, !tbaa !846
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !dbg !1337, !tbaa !843
  %83 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1338, !tbaa !927
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %83, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !dbg !1339, !tbaa !846
  %84 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %83, null, !dbg !1340
  br i1 %84, label %87, label %85, !dbg !1342

85:                                               ; preds = %79
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %83, i32 0, i32 1, !dbg !1343
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %17, %"struct.Halide::Runtime::Internal::CacheEntry"** %86, align 4, !dbg !1345, !tbaa !843
  br label %87, !dbg !1346

87:                                               ; preds = %85, %79
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %17, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1347, !tbaa !927
  br label %88, !dbg !1348

88:                                               ; preds = %87, %52
  call void @llvm.dbg.value(metadata i32 0, metadata !1240, metadata !DIExpression()), !dbg !1349
  br i1 %13, label %89, label %197, !dbg !1350

89:                                               ; preds = %88
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 11
  br label %91, !dbg !1350

91:                                               ; preds = %89, %91
  %92 = phi i32 [ 0, %89 ], [ %99, %91 ]
  call void @llvm.dbg.value(metadata i32 %92, metadata !1240, metadata !DIExpression()), !dbg !1349
  %93 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %92, !dbg !1351
  %94 = bitcast %struct.halide_buffer_t** %93 to i8**, !dbg !1351
  %95 = load i8*, i8** %94, align 4, !dbg !1351, !tbaa !927
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* undef, metadata !1244, metadata !DIExpression()), !dbg !1352
  %96 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %90, align 4, !dbg !1353, !tbaa !877
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %96, i32 %92, !dbg !1354
  %98 = bitcast %struct.halide_buffer_t* %97 to i8*, !dbg !1355
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %95, i8* nonnull align 8 dereferenceable(40) %98, i32 40, i1 false), !dbg !1355, !tbaa.struct !930
  %99 = add nuw nsw i32 %92, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %99, metadata !1240, metadata !DIExpression()), !dbg !1349
  %100 = icmp slt i32 %99, %4, !dbg !1357
  br i1 %100, label %91, label %197, !dbg !1350, !llvm.loop !1358

101:                                              ; preds = %40, %33, %29, %25, %21, %16
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 0, !dbg !1360
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1233, metadata !DIExpression()), !dbg !1257
  %103 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %102, align 4, !dbg !1257, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %103, metadata !1233, metadata !DIExpression()), !dbg !1257
  %104 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %103, null, !dbg !1264
  br i1 %104, label %14, label %16, !dbg !1265, !llvm.loop !1361

105:                                              ; preds = %14, %185
  %106 = phi i32 [ %195, %185 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i32 %106, metadata !1247, metadata !DIExpression()), !dbg !1266
  %107 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %106, !dbg !1363
  %108 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %107, align 4, !dbg !1363, !tbaa !927
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !1249, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !1101, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !1106, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 0, metadata !1109, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i32 0, metadata !1110, metadata !DIExpression()), !dbg !1369
  %109 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 5, !dbg !1370
  %110 = load i32, i32* %109, align 4, !dbg !1370, !tbaa !578
  %111 = icmp sgt i32 %110, 0, !dbg !1371
  br i1 %111, label %115, label %112, !dbg !1372

112:                                              ; preds = %105
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1373
  %113 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 4, i32 1, !dbg !1375
  %114 = load i8, i8* %113, align 1, !dbg !1375, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !1122, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1378
  br label %153, !dbg !1379

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 6
  %117 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %116, align 8, !tbaa !581
  br label %118, !dbg !1372

118:                                              ; preds = %130, %115
  %119 = phi i32 [ 0, %115 ], [ %132, %130 ]
  %120 = phi i32 [ 0, %115 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata i32 %119, metadata !1110, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %120, metadata !1109, metadata !DIExpression()), !dbg !1367
  %121 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %119, i32 2, !dbg !1380
  %122 = load i32, i32* %121, align 4, !dbg !1380, !tbaa !589
  %123 = icmp sgt i32 %122, 0, !dbg !1381
  br i1 %123, label %124, label %130, !dbg !1382

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %119, i32 1, !dbg !1383
  %126 = load i32, i32* %125, align 4, !dbg !1383, !tbaa !653
  %127 = add nsw i32 %126, -1, !dbg !1384
  %128 = mul nsw i32 %127, %122, !dbg !1385
  %129 = add nsw i32 %128, %120, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %129, metadata !1109, metadata !DIExpression()), !dbg !1367
  br label %130, !dbg !1387

130:                                              ; preds = %124, %118
  %131 = phi i32 [ %129, %124 ], [ %120, %118 ], !dbg !1367
  call void @llvm.dbg.value(metadata i32 %131, metadata !1109, metadata !DIExpression()), !dbg !1367
  %132 = add nuw nsw i32 %119, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %132, metadata !1110, metadata !DIExpression()), !dbg !1369
  %133 = icmp slt i32 %132, %110, !dbg !1371
  br i1 %133, label %118, label %134, !dbg !1372, !llvm.loop !1389

134:                                              ; preds = %130
  call void @llvm.dbg.value(metadata i32 %131, metadata !1109, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1367
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1373
  %135 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 4, i32 1, !dbg !1375
  %136 = load i8, i8* %135, align 1, !dbg !1375, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !1122, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1378
  br label %137, !dbg !1379

137:                                              ; preds = %149, %134
  %138 = phi i32 [ 0, %134 ], [ %151, %149 ]
  %139 = phi i32 [ 0, %134 ], [ %150, %149 ]
  call void @llvm.dbg.value(metadata i32 %138, metadata !1126, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %139, metadata !1125, metadata !DIExpression()), !dbg !1376
  %140 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %138, i32 2, !dbg !1391
  %141 = load i32, i32* %140, align 4, !dbg !1391, !tbaa !589
  %142 = icmp slt i32 %141, 0, !dbg !1392
  br i1 %142, label %143, label %149, !dbg !1393

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %138, i32 1, !dbg !1394
  %145 = load i32, i32* %144, align 4, !dbg !1394, !tbaa !653
  %146 = add nsw i32 %145, -1, !dbg !1395
  %147 = mul nsw i32 %146, %141, !dbg !1396
  %148 = add nsw i32 %147, %139, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %148, metadata !1125, metadata !DIExpression()), !dbg !1376
  br label %149, !dbg !1398

149:                                              ; preds = %143, %137
  %150 = phi i32 [ %148, %143 ], [ %139, %137 ], !dbg !1376
  call void @llvm.dbg.value(metadata i32 %150, metadata !1125, metadata !DIExpression()), !dbg !1376
  %151 = add nuw nsw i32 %138, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i32 %151, metadata !1126, metadata !DIExpression()), !dbg !1378
  %152 = icmp slt i32 %151, %110, !dbg !1400
  br i1 %152, label %137, label %153, !dbg !1379, !llvm.loop !1401

153:                                              ; preds = %149, %112
  %154 = phi i8 [ %114, %112 ], [ %136, %149 ]
  %155 = phi i32 [ 0, %112 ], [ %131, %149 ]
  %156 = phi i32 [ 0, %112 ], [ %150, %149 ], !dbg !1376
  %157 = zext i8 %154 to i32, !dbg !1375
  %158 = add nuw nsw i32 %157, 7, !dbg !1403
  %159 = lshr i32 %158, 3, !dbg !1404
  %160 = add nsw i32 %155, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %160, metadata !1109, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %108, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1406
  %161 = sub i32 %160, %156, !dbg !1408
  %162 = mul i32 %161, %159, !dbg !1408
  call void @llvm.dbg.value(metadata i32 8, metadata !785, metadata !DIExpression()) #9, !dbg !1409
  %163 = tail call i32 @halide_malloc_alignment() #7, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %163, metadata !786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !1409
  %164 = add i32 %163, 7, !dbg !1412
  %165 = sub i32 0, %163, !dbg !1413
  %166 = and i32 %164, %165, !dbg !1414
  %167 = add i32 %166, %162, !dbg !1415
  %168 = tail call i8* @halide_malloc(i8* %0, i32 %167) #7, !dbg !1416
  %169 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 2, !dbg !1417
  store i8* %168, i8** %169, align 4, !dbg !1418, !tbaa !534
  %170 = icmp eq i8* %168, null, !dbg !1419
  br i1 %170, label %171, label %185, !dbg !1420

171:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i32 %106, metadata !1252, metadata !DIExpression()), !dbg !1421
  %172 = icmp eq i32 %106, 0, !dbg !1422
  br i1 %172, label %201, label %173, !dbg !1424

173:                                              ; preds = %171, %173
  %174 = phi i32 [ %175, %173 ], [ %106, %171 ]
  call void @llvm.dbg.value(metadata i32 %174, metadata !1252, metadata !DIExpression()), !dbg !1421
  %175 = add nsw i32 %174, -1, !dbg !1425
  %176 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %175, !dbg !1427
  %177 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %176, align 4, !dbg !1427, !tbaa !927
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %177, i32 0, i32 2, !dbg !1428
  %179 = load i8*, i8** %178, align 4, !dbg !1428, !tbaa !534
  %180 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %179) #8, !dbg !1429
  %181 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %180 to i8*, !dbg !1429
  tail call void @halide_free(i8* %0, i8* %181) #7, !dbg !1430
  %182 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %176, align 4, !dbg !1431, !tbaa !927
  %183 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %182, i32 0, i32 2, !dbg !1432
  store i8* null, i8** %183, align 4, !dbg !1433, !tbaa !534
  call void @llvm.dbg.value(metadata i32 %175, metadata !1252, metadata !DIExpression()), !dbg !1421
  %184 = icmp sgt i32 %174, 1, !dbg !1422
  br i1 %184, label %173, label %201, !dbg !1424, !llvm.loop !1434

185:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i32 8, metadata !785, metadata !DIExpression()) #9, !dbg !1436
  %186 = tail call i32 @halide_malloc_alignment() #7, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %186, metadata !786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #9, !dbg !1436
  %187 = add i32 %186, 7, !dbg !1439
  %188 = sub i32 0, %186, !dbg !1440
  %189 = and i32 %187, %188, !dbg !1441
  %190 = load i8*, i8** %169, align 4, !dbg !1442, !tbaa !534
  %191 = getelementptr inbounds i8, i8* %190, i32 %189, !dbg !1442
  store i8* %191, i8** %169, align 4, !dbg !1442, !tbaa !534
  %192 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %191) #8, !dbg !1443
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %192, metadata !1256, metadata !DIExpression()), !dbg !1364
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %192, i32 0, i32 1, !dbg !1444
  store i32 %7, i32* %193, align 4, !dbg !1445, !tbaa !1446
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %192, i32 0, i32 0, !dbg !1448
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %194, align 4, !dbg !1449, !tbaa !1450
  %195 = add nuw nsw i32 %106, 1, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %195, metadata !1247, metadata !DIExpression()), !dbg !1266
  %196 = icmp slt i32 %195, %4, !dbg !1267
  br i1 %196, label %105, label %201, !dbg !1268, !llvm.loop !1452

197:                                              ; preds = %91, %88
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 7, !dbg !1454
  %199 = load i32, i32* %198, align 4, !dbg !1455, !tbaa !855
  %200 = add i32 %199, %4, !dbg !1455
  store i32 %200, i32* %198, align 4, !dbg !1455, !tbaa !855
  br label %201, !dbg !1456

201:                                              ; preds = %185, %173, %171, %197, %14
  %202 = phi i32 [ 1, %14 ], [ 0, %197 ], [ -1, %171 ], [ -1, %173 ], [ 1, %185 ], !dbg !1257
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1212, metadata !DIExpression()) #9, !dbg !1458
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1456
  ret i32 %202, !dbg !1459
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_memoization_cache_store(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5, i1 zeroext %6, i64 %7) local_unnamed_addr #4 !dbg !1460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1464, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8* %1, metadata !1465, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32 %2, metadata !1466, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1467, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32 %4, metadata !1468, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t** %5, metadata !1469, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i1 %6, metadata !1470, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1506
  call void @llvm.dbg.value(metadata i64 %7, metadata !1471, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !440, metadata !DIExpression()) #9, !dbg !1507
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()) #9, !dbg !1507
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !1507
  %9 = tail call i8* @malloc(i32 1024) #7, !dbg !1509
  %10 = icmp eq i8* %9, null, !dbg !1510
  br i1 %10, label %13, label %11, !dbg !1511

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023, !dbg !1512
  store i8 0, i8* %12, align 1, !dbg !1513, !tbaa !479
  br label %13, !dbg !1514

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !1515
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1516
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !1518
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1519, metadata !DIExpression()) #9, !dbg !1523
  call void @llvm.dbg.value(metadata i1 %6, metadata !1522, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1523
  %16 = zext i1 %6 to i64, !dbg !1525
  %17 = tail call i8* @halide_int64_to_string(i8* %15, i8* %14, i64 %16, i32 1) #7, !dbg !1526
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1527
  %18 = tail call i8* @halide_string_to_string(i8* %17, i8* %14, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !1529
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !1530, metadata !DIExpression()) #9, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %7, metadata !1533, metadata !DIExpression()) #9, !dbg !1534
  %19 = tail call i8* @halide_uint64_to_string(i8* %18, i8* %14, i64 %7, i32 1) #7, !dbg !1536
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1537
  %20 = tail call i8* @halide_string_to_string(i8* %19, i8* %14, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !1539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1540
  br i1 %10, label %21, label %22, !dbg !1542

21:                                               ; preds = %13
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1543
  br label %29, !dbg !1544

22:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !480, metadata !DIExpression()) #9, !dbg !1545
  %23 = ptrtoint i8* %20 to i32, !dbg !1547
  %24 = ptrtoint i8* %9 to i32, !dbg !1547
  %25 = add i32 %23, 1, !dbg !1547
  %26 = sub i32 %25, %24, !dbg !1548
  %27 = sext i32 %26 to i64, !dbg !1549
  %28 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %27) #7, !dbg !1550
  tail call void @halide_print(i8* %0, i8* nonnull %9) #7, !dbg !1551
  br label %29

29:                                               ; preds = %21, %22
  call void @free(i8* %9) #7, !dbg !1552
  %30 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, align 4, !dbg !1553, !tbaa !927
  %31 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %30, i32 0, i32 2, !dbg !1554
  %32 = load i8*, i8** %31, align 4, !dbg !1554, !tbaa !534
  %33 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %32) #8, !dbg !1555
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %33, i32 0, i32 1, !dbg !1556
  %35 = load i32, i32* %34, align 4, !dbg !1556, !tbaa !1446
  call void @llvm.dbg.value(metadata i32 %35, metadata !1472, metadata !DIExpression()), !dbg !1506
  %36 = and i32 %35, 255, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %36, metadata !1473, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1201, metadata !DIExpression()) #9, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1204, metadata !DIExpression()) #9, !dbg !1558
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1474, metadata !DIExpression()), !dbg !1506
  call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1560
  %37 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %36, !dbg !1561
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1475, metadata !DIExpression()), !dbg !1506
  %38 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %37, align 4, !dbg !1506, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %38, metadata !1475, metadata !DIExpression()), !dbg !1506
  %39 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %38, null, !dbg !1562
  br i1 %39, label %103, label %40, !dbg !1563

40:                                               ; preds = %29
  %41 = icmp sgt i32 %4, 0
  br i1 %41, label %42, label %105, !dbg !1563

42:                                               ; preds = %40, %67
  %43 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %69, %67 ], [ %38, %40 ]
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 6, !dbg !1564
  %45 = load i32, i32* %44, align 8, !dbg !1564, !tbaa !852
  %46 = icmp eq i32 %45, %35, !dbg !1565
  br i1 %46, label %47, label %67, !dbg !1566

47:                                               ; preds = %42
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 4, !dbg !1567
  %49 = load i32, i32* %48, align 8, !dbg !1567, !tbaa !849
  %50 = icmp eq i32 %49, %2, !dbg !1568
  br i1 %50, label %51, label %67, !dbg !1569

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 5, !dbg !1570
  %53 = load i8*, i8** %52, align 4, !dbg !1570, !tbaa !885
  %54 = call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %53, i8* %1, i32 %2) #8, !dbg !1571
  br i1 %54, label %55, label %67, !dbg !1572

55:                                               ; preds = %51
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 10, !dbg !1573
  %57 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %56, align 8, !dbg !1573, !tbaa !881
  %58 = call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %57) #8, !dbg !1574
  br i1 %58, label %59, label %67, !dbg !1575

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 8, !dbg !1576
  %61 = load i32, i32* %60, align 8, !dbg !1576, !tbaa !858
  %62 = icmp eq i32 %61, %4, !dbg !1577
  br i1 %62, label %100, label %67, !dbg !1578

63:                                               ; preds = %81
  br i1 %89, label %64, label %67, !dbg !1579

64:                                               ; preds = %63
  br i1 %96, label %66, label %65, !dbg !1580

65:                                               ; preds = %64
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !1582
  call void @abort() #7, !dbg !1582
  br label %66, !dbg !1582

66:                                               ; preds = %64, %65
  br label %71, !dbg !1585

67:                                               ; preds = %63, %59, %55, %51, %47, %42
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 0, !dbg !1586
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1475, metadata !DIExpression()), !dbg !1506
  %69 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %68, align 4, !dbg !1506, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %69, metadata !1475, metadata !DIExpression()), !dbg !1506
  %70 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %69, null, !dbg !1562
  br i1 %70, label %103, label %42, !dbg !1563, !llvm.loop !1587

71:                                               ; preds = %66, %71
  %72 = phi i32 [ %79, %71 ], [ 0, %66 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !1487, metadata !DIExpression()), !dbg !1589
  %73 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %72, !dbg !1590
  %74 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %73, align 4, !dbg !1590, !tbaa !927
  %75 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %74, i32 0, i32 2, !dbg !1593
  %76 = load i8*, i8** %75, align 4, !dbg !1593, !tbaa !534
  %77 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %76) #8, !dbg !1594
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %77, i32 0, i32 0, !dbg !1595
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %78, align 4, !dbg !1596, !tbaa !1450
  %79 = add nuw nsw i32 %72, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %79, metadata !1487, metadata !DIExpression()), !dbg !1589
  %80 = icmp slt i32 %79, %4, !dbg !1598
  br i1 %80, label %71, label %260, !dbg !1585, !llvm.loop !1599

81:                                               ; preds = %100, %81
  %82 = phi %struct.halide_buffer_t* [ %102, %100 ], [ %90, %81 ], !dbg !1601
  %83 = phi i32 [ 0, %100 ], [ %97, %81 ]
  %84 = phi i1 [ true, %100 ], [ %96, %81 ]
  call void @llvm.dbg.value(metadata i32 %83, metadata !1481, metadata !DIExpression()), !dbg !1602
  %85 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %83, !dbg !1603
  %86 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 4, !dbg !1603, !tbaa !927
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %86, metadata !1484, metadata !DIExpression()), !dbg !1604
  %87 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %82, i32 %83, i32 6, !dbg !1605
  %88 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %87, align 8, !dbg !1605, !tbaa !581
  %89 = call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %86, %struct.halide_dimension_t* %88) #8, !dbg !1606
  call void @llvm.dbg.value(metadata i1 %89, metadata !1476, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1607
  %90 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %101, align 4, !dbg !1608, !tbaa !877
  %91 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %90, i32 %83, i32 2, !dbg !1610
  %92 = load i8*, i8** %91, align 4, !dbg !1610, !tbaa !534
  %93 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %86, i32 0, i32 2, !dbg !1611
  %94 = load i8*, i8** %93, align 4, !dbg !1611, !tbaa !534
  %95 = icmp ne i8* %92, %94, !dbg !1612
  %96 = and i1 %84, %95, !dbg !1613
  call void @llvm.dbg.value(metadata i8 undef, metadata !1480, metadata !DIExpression()), !dbg !1607
  %97 = add nuw nsw i32 %83, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i8 undef, metadata !1476, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %97, metadata !1481, metadata !DIExpression()), !dbg !1602
  %98 = icmp slt i32 %97, %4, !dbg !1615
  %99 = and i1 %89, %98, !dbg !1615
  br i1 %99, label %81, label %63, !dbg !1616, !llvm.loop !1617

100:                                              ; preds = %59
  call void @llvm.dbg.value(metadata i8 undef, metadata !1476, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 0, metadata !1481, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 undef, metadata !1480, metadata !DIExpression()), !dbg !1607
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %43, i32 0, i32 11
  %102 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %101, align 4, !dbg !1601, !tbaa !877
  br label %81, !dbg !1616

103:                                              ; preds = %126, %67, %29
  call void @llvm.dbg.value(metadata i32 0, metadata !1492, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1506
  %104 = icmp sgt i32 %4, 0, !dbg !1620
  br i1 %104, label %136, label %130, !dbg !1621

105:                                              ; preds = %40, %126
  %106 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %128, %126 ], [ %38, %40 ]
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %106, i32 0, i32 6, !dbg !1564
  %108 = load i32, i32* %107, align 8, !dbg !1564, !tbaa !852
  %109 = icmp eq i32 %108, %35, !dbg !1565
  br i1 %109, label %110, label %126, !dbg !1566

110:                                              ; preds = %105
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %106, i32 0, i32 4, !dbg !1567
  %112 = load i32, i32* %111, align 8, !dbg !1567, !tbaa !849
  %113 = icmp eq i32 %112, %2, !dbg !1568
  br i1 %113, label %114, label %126, !dbg !1569

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %106, i32 0, i32 5, !dbg !1570
  %116 = load i8*, i8** %115, align 4, !dbg !1570, !tbaa !885
  %117 = call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %116, i8* %1, i32 %2) #8, !dbg !1571
  br i1 %117, label %118, label %126, !dbg !1572

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %106, i32 0, i32 10, !dbg !1573
  %120 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %119, align 8, !dbg !1573, !tbaa !881
  %121 = call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %120) #8, !dbg !1574
  br i1 %121, label %122, label %126, !dbg !1575

122:                                              ; preds = %118
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %106, i32 0, i32 8, !dbg !1576
  %124 = load i32, i32* %123, align 8, !dbg !1576, !tbaa !858
  %125 = icmp eq i32 %124, %4, !dbg !1577
  br i1 %125, label %260, label %126, !dbg !1578

126:                                              ; preds = %122, %118, %114, %110, %105
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %106, i32 0, i32 0, !dbg !1586
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* undef, metadata !1475, metadata !DIExpression()), !dbg !1506
  %128 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %127, align 4, !dbg !1506, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %128, metadata !1475, metadata !DIExpression()), !dbg !1506
  %129 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %128, null, !dbg !1562
  br i1 %129, label %103, label %105, !dbg !1563, !llvm.loop !1587

130:                                              ; preds = %185, %103
  %131 = phi i64 [ 0, %103 ], [ %196, %185 ], !dbg !1506
  %132 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1622, !tbaa !376
  %133 = add i64 %132, %131, !dbg !1622
  store i64 %133, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1622, !tbaa !376
  call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #8, !dbg !1623
  %134 = call i8* @halide_malloc(i8* null, i32 64) #7, !dbg !1624
  call void @llvm.dbg.value(metadata i8* %134, metadata !1498, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 0, metadata !1499, metadata !DIExpression()), !dbg !1506
  %135 = icmp eq i8* %134, null, !dbg !1625
  br i1 %135, label %202, label %199, !dbg !1627

136:                                              ; preds = %103, %185
  %137 = phi i32 [ %197, %185 ], [ 0, %103 ]
  %138 = phi i64 [ %196, %185 ], [ 0, %103 ]
  call void @llvm.dbg.value(metadata i32 %137, metadata !1492, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %138, metadata !1491, metadata !DIExpression()), !dbg !1506
  %139 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %137, !dbg !1628
  %140 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %139, align 4, !dbg !1628, !tbaa !927
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !1495, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !1101, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !1106, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 0, metadata !1109, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 0, metadata !1110, metadata !DIExpression()), !dbg !1634
  %141 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %140, i32 0, i32 5, !dbg !1635
  %142 = load i32, i32* %141, align 4, !dbg !1635, !tbaa !578
  %143 = icmp sgt i32 %142, 0, !dbg !1636
  br i1 %143, label %147, label %144, !dbg !1637

144:                                              ; preds = %136
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1638
  %145 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %140, i32 0, i32 4, i32 1, !dbg !1640
  %146 = load i8, i8* %145, align 1, !dbg !1640, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !1122, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1643
  br label %185, !dbg !1644

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %140, i32 0, i32 6
  %149 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %148, align 8, !tbaa !581
  br label %150, !dbg !1637

150:                                              ; preds = %162, %147
  %151 = phi i32 [ 0, %147 ], [ %164, %162 ]
  %152 = phi i32 [ 0, %147 ], [ %163, %162 ]
  call void @llvm.dbg.value(metadata i32 %151, metadata !1110, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %152, metadata !1109, metadata !DIExpression()), !dbg !1632
  %153 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %149, i32 %151, i32 2, !dbg !1645
  %154 = load i32, i32* %153, align 4, !dbg !1645, !tbaa !589
  %155 = icmp sgt i32 %154, 0, !dbg !1646
  br i1 %155, label %156, label %162, !dbg !1647

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %149, i32 %151, i32 1, !dbg !1648
  %158 = load i32, i32* %157, align 4, !dbg !1648, !tbaa !653
  %159 = add nsw i32 %158, -1, !dbg !1649
  %160 = mul nsw i32 %159, %154, !dbg !1650
  %161 = add nsw i32 %160, %152, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %161, metadata !1109, metadata !DIExpression()), !dbg !1632
  br label %162, !dbg !1652

162:                                              ; preds = %156, %150
  %163 = phi i32 [ %161, %156 ], [ %152, %150 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %163, metadata !1109, metadata !DIExpression()), !dbg !1632
  %164 = add nuw nsw i32 %151, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %164, metadata !1110, metadata !DIExpression()), !dbg !1634
  %165 = icmp slt i32 %164, %142, !dbg !1636
  br i1 %165, label %150, label %166, !dbg !1637, !llvm.loop !1654

166:                                              ; preds = %162
  call void @llvm.dbg.value(metadata i32 %163, metadata !1109, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1632
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1638
  %167 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %140, i32 0, i32 4, i32 1, !dbg !1640
  %168 = load i8, i8* %167, align 1, !dbg !1640, !tbaa !559
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !1122, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1643
  br label %169, !dbg !1644

169:                                              ; preds = %181, %166
  %170 = phi i32 [ 0, %166 ], [ %183, %181 ]
  %171 = phi i32 [ 0, %166 ], [ %182, %181 ]
  call void @llvm.dbg.value(metadata i32 %170, metadata !1126, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i32 %171, metadata !1125, metadata !DIExpression()), !dbg !1641
  %172 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %149, i32 %170, i32 2, !dbg !1656
  %173 = load i32, i32* %172, align 4, !dbg !1656, !tbaa !589
  %174 = icmp slt i32 %173, 0, !dbg !1657
  br i1 %174, label %175, label %181, !dbg !1658

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %149, i32 %170, i32 1, !dbg !1659
  %177 = load i32, i32* %176, align 4, !dbg !1659, !tbaa !653
  %178 = add nsw i32 %177, -1, !dbg !1660
  %179 = mul nsw i32 %178, %173, !dbg !1661
  %180 = add nsw i32 %179, %171, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %180, metadata !1125, metadata !DIExpression()), !dbg !1641
  br label %181, !dbg !1663

181:                                              ; preds = %175, %169
  %182 = phi i32 [ %180, %175 ], [ %171, %169 ], !dbg !1641
  call void @llvm.dbg.value(metadata i32 %182, metadata !1125, metadata !DIExpression()), !dbg !1641
  %183 = add nuw nsw i32 %170, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %183, metadata !1126, metadata !DIExpression()), !dbg !1643
  %184 = icmp slt i32 %183, %142, !dbg !1665
  br i1 %184, label %169, label %185, !dbg !1644, !llvm.loop !1666

185:                                              ; preds = %181, %144
  %186 = phi i8 [ %146, %144 ], [ %168, %181 ]
  %187 = phi i32 [ 0, %144 ], [ %163, %181 ]
  %188 = phi i32 [ 0, %144 ], [ %182, %181 ], !dbg !1641
  %189 = zext i8 %186 to i32, !dbg !1640
  %190 = add nuw nsw i32 %189, 7, !dbg !1668
  %191 = lshr i32 %190, 3, !dbg !1669
  %192 = add nsw i32 %187, 1, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %192, metadata !1109, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %140, metadata !552, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1671
  %193 = sub i32 %192, %188, !dbg !1673
  %194 = mul i32 %193, %191, !dbg !1673
  %195 = zext i32 %194 to i64, !dbg !1674
  %196 = add i64 %138, %195, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %196, metadata !1491, metadata !DIExpression()), !dbg !1506
  %197 = add nuw nsw i32 %137, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %197, metadata !1492, metadata !DIExpression()), !dbg !1619
  %198 = icmp slt i32 %197, %4, !dbg !1620
  br i1 %198, label %136, label %130, !dbg !1621, !llvm.loop !1677

199:                                              ; preds = %130
  %200 = bitcast i8* %134 to %"struct.Halide::Runtime::Internal::CacheEntry"*, !dbg !1679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %200, metadata !1498, metadata !DIExpression()), !dbg !1506
  %201 = call zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %200, i8* %1, i32 %2, i32 %35, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** nonnull %5, i1 zeroext %6, i64 %7) #8, !dbg !1680
  call void @llvm.dbg.value(metadata i8 undef, metadata !1499, metadata !DIExpression()), !dbg !1506
  br i1 %201, label %217, label %202, !dbg !1682

202:                                              ; preds = %130, %199
  %203 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1683, !tbaa !376
  %204 = sub i64 %203, %131, !dbg !1683
  store i64 %204, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1683, !tbaa !376
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1684
  br i1 %104, label %206, label %205, !dbg !1685

205:                                              ; preds = %206, %202
  br i1 %135, label %260, label %216, !dbg !1686

206:                                              ; preds = %202, %206
  %207 = phi i32 [ %214, %206 ], [ 0, %202 ]
  call void @llvm.dbg.value(metadata i32 %207, metadata !1500, metadata !DIExpression()), !dbg !1684
  %208 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %207, !dbg !1687
  %209 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %208, align 4, !dbg !1687, !tbaa !927
  %210 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %209, i32 0, i32 2, !dbg !1690
  %211 = load i8*, i8** %210, align 4, !dbg !1690, !tbaa !534
  %212 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %211) #8, !dbg !1691
  %213 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %212, i32 0, i32 0, !dbg !1692
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %213, align 4, !dbg !1693, !tbaa !1450
  %214 = add nuw nsw i32 %207, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %214, metadata !1500, metadata !DIExpression()), !dbg !1684
  %215 = icmp slt i32 %214, %4, !dbg !1695
  br i1 %215, label %206, label %205, !dbg !1685, !llvm.loop !1696

216:                                              ; preds = %205
  call void @halide_free(i8* %0, i8* nonnull %134) #7, !dbg !1698
  br label %260, !dbg !1701

217:                                              ; preds = %199
  %218 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %37, align 4, !dbg !1702, !tbaa !927
  %219 = bitcast i8* %134 to %"struct.Halide::Runtime::Internal::CacheEntry"**, !dbg !1703
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %218, %"struct.Halide::Runtime::Internal::CacheEntry"** %219, align 8, !dbg !1704, !tbaa !838
  %220 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1705, !tbaa !927
  %221 = getelementptr inbounds i8, i8* %134, i32 8, !dbg !1706
  %222 = bitcast i8* %221 to %"struct.Halide::Runtime::Internal::CacheEntry"**, !dbg !1706
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %220, %"struct.Halide::Runtime::Internal::CacheEntry"** %222, align 8, !dbg !1707, !tbaa !846
  %223 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %220, null, !dbg !1708
  br i1 %223, label %227, label %224, !dbg !1710

224:                                              ; preds = %217
  %225 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %220, i32 0, i32 1, !dbg !1711
  %226 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %225 to i8**, !dbg !1713
  store i8* %134, i8** %226, align 4, !dbg !1713, !tbaa !843
  br label %227, !dbg !1714

227:                                              ; preds = %224, %217
  store i8* %134, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE to i8**), align 4, !dbg !1715, !tbaa !927
  %228 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1716, !tbaa !927
  %229 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %228, null, !dbg !1718
  br i1 %229, label %230, label %231, !dbg !1719

230:                                              ; preds = %227
  store i8* %134, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE to i8**), align 4, !dbg !1720, !tbaa !927
  br label %231, !dbg !1722

231:                                              ; preds = %230, %227
  %232 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %37 to i8**, !dbg !1723
  store i8* %134, i8** %232, align 4, !dbg !1723, !tbaa !927
  %233 = getelementptr inbounds i8, i8* %134, i32 28, !dbg !1724
  %234 = bitcast i8* %233 to i32*, !dbg !1724
  store i32 %4, i32* %234, align 4, !dbg !1725, !tbaa !855
  call void @llvm.dbg.value(metadata i32 0, metadata !1504, metadata !DIExpression()), !dbg !1726
  br i1 %104, label %250, label %235, !dbg !1727

235:                                              ; preds = %250, %231
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !440, metadata !DIExpression()) #9, !dbg !1728
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()) #9, !dbg !1728
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !1728
  %236 = call i8* @malloc(i32 1024) #7, !dbg !1730
  %237 = icmp eq i8* %236, null, !dbg !1731
  br i1 %237, label %238, label %240, !dbg !1732

238:                                              ; preds = %235
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1733
  %239 = call i8* @halide_string_to_string(i8* %236, i8* null, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !1735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1736
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1738
  br label %249, !dbg !1739

240:                                              ; preds = %235
  %241 = getelementptr inbounds i8, i8* %236, i32 1023, !dbg !1740
  store i8 0, i8* %241, align 1, !dbg !1741, !tbaa !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1733
  %242 = call i8* @halide_string_to_string(i8* nonnull %236, i8* nonnull %241, i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i32 0, i32 0)) #7, !dbg !1735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1736
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !480, metadata !DIExpression()) #9, !dbg !1742
  %243 = ptrtoint i8* %242 to i32, !dbg !1744
  %244 = ptrtoint i8* %236 to i32, !dbg !1744
  %245 = add i32 %243, 1, !dbg !1744
  %246 = sub i32 %245, %244, !dbg !1745
  %247 = sext i32 %246 to i64, !dbg !1746
  %248 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %236, i64 %247) #7, !dbg !1747
  call void @halide_print(i8* %0, i8* nonnull %236) #7, !dbg !1748
  br label %249

249:                                              ; preds = %240, %238
  call void @free(i8* %236) #7, !dbg !1749
  br label %260, !dbg !1750

250:                                              ; preds = %231, %250
  %251 = phi i32 [ %258, %250 ], [ 0, %231 ]
  call void @llvm.dbg.value(metadata i32 %251, metadata !1504, metadata !DIExpression()), !dbg !1726
  %252 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %251, !dbg !1751
  %253 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %252, align 4, !dbg !1751, !tbaa !927
  %254 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %253, i32 0, i32 2, !dbg !1754
  %255 = load i8*, i8** %254, align 4, !dbg !1754, !tbaa !534
  %256 = call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %255) #8, !dbg !1755
  %257 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %256 to i8**, !dbg !1756
  store i8* %134, i8** %257, align 4, !dbg !1756, !tbaa !1450
  %258 = add nuw nsw i32 %251, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %258, metadata !1504, metadata !DIExpression()), !dbg !1726
  %259 = icmp slt i32 %258, %4, !dbg !1758
  br i1 %259, label %250, label %235, !dbg !1727, !llvm.loop !1759

260:                                              ; preds = %122, %71, %249, %216, %205
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1212, metadata !DIExpression()) #9, !dbg !1761
  call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1763
  ret i32 0, !dbg !1764
}

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_release(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !1765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1767, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()), !dbg !1774
  %3 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %1) #8, !dbg !1775
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3, metadata !1769, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !440, metadata !DIExpression()) #9, !dbg !1776
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()) #9, !dbg !1776
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !1776
  %4 = tail call i8* @malloc(i32 1024) #7, !dbg !1778
  %5 = icmp eq i8* %4, null, !dbg !1779
  br i1 %5, label %6, label %8, !dbg !1780

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1781
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1781
  %7 = tail call i8* @halide_string_to_string(i8* %4, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !1783
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1784
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1786
  br label %17, !dbg !1787

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, i8* %4, i32 1023, !dbg !1788
  store i8 0, i8* %9, align 1, !dbg !1789, !tbaa !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1781
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1781
  %10 = tail call i8* @halide_string_to_string(i8* nonnull %4, i8* nonnull %9, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)) #7, !dbg !1783
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1784
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !480, metadata !DIExpression()) #9, !dbg !1790
  %11 = ptrtoint i8* %10 to i32, !dbg !1792
  %12 = ptrtoint i8* %4 to i32, !dbg !1792
  %13 = add i32 %11, 1, !dbg !1792
  %14 = sub i32 %13, %12, !dbg !1793
  %15 = sext i32 %14 to i64, !dbg !1794
  %16 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %4, i64 %15) #7, !dbg !1795
  tail call void @halide_print(i8* %0, i8* nonnull %4) #7, !dbg !1796
  br label %17

17:                                               ; preds = %8, %6
  tail call void @free(i8* %4) #7, !dbg !1797
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3, i32 0, i32 0, !dbg !1798
  %19 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %18, align 4, !dbg !1798, !tbaa !1450
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %19, metadata !1770, metadata !DIExpression()), !dbg !1774
  %20 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %19, null, !dbg !1799
  br i1 %20, label %21, label %23, !dbg !1800

21:                                               ; preds = %17
  %22 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3 to i8*, !dbg !1801
  tail call void @halide_free(i8* %0, i8* %22) #7, !dbg !1803
  br label %32, !dbg !1804

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1201, metadata !DIExpression()) #9, !dbg !1805
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1204, metadata !DIExpression()) #9, !dbg !1805
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1771, metadata !DIExpression()), !dbg !1807
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1808
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %19, i32 0, i32 7, !dbg !1809
  %25 = load i32, i32* %24, align 4, !dbg !1809, !tbaa !855
  %26 = icmp eq i32 %25, 0, !dbg !1809
  br i1 %26, label %27, label %29, !dbg !1812

27:                                               ; preds = %23
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.11, i32 0, i32 0)) #7, !dbg !1813
  tail call void @abort() #7, !dbg !1813
  %28 = load i32, i32* %24, align 4, !dbg !1815, !tbaa !855
  br label %29, !dbg !1813

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ %25, %23 ], !dbg !1815
  %31 = add i32 %30, -1, !dbg !1815
  store i32 %31, i32* %24, align 4, !dbg !1815, !tbaa !855
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1212, metadata !DIExpression()) #9, !dbg !1816
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1818
  br label %32

32:                                               ; preds = %29, %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !440, metadata !DIExpression()) #9, !dbg !1819
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()) #9, !dbg !1819
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !1819
  %33 = tail call i8* @malloc(i32 1024) #7, !dbg !1821
  %34 = icmp eq i8* %33, null, !dbg !1822
  br i1 %34, label %35, label %37, !dbg !1823

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1824
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1824
  %36 = tail call i8* @halide_string_to_string(i8* %33, i8* null, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !1826
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1827
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1829
  br label %46, !dbg !1830

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %33, i32 1023, !dbg !1831
  store i8 0, i8* %38, align 1, !dbg !1832, !tbaa !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1824
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1824
  %39 = tail call i8* @halide_string_to_string(i8* nonnull %33, i8* nonnull %38, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0)) #7, !dbg !1826
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1827
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !480, metadata !DIExpression()) #9, !dbg !1833
  %40 = ptrtoint i8* %39 to i32, !dbg !1835
  %41 = ptrtoint i8* %33 to i32, !dbg !1835
  %42 = add i32 %40, 1, !dbg !1835
  %43 = sub i32 %42, %41, !dbg !1836
  %44 = sext i32 %43 to i64, !dbg !1837
  %45 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %33, i64 %44) #7, !dbg !1838
  tail call void @halide_print(i8* %0, i8* nonnull %33) #7, !dbg !1839
  br label %46

46:                                               ; preds = %37, %35
  tail call void @free(i8* %33) #7, !dbg !1840
  ret void, !dbg !1841
}

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_cleanup() local_unnamed_addr #4 !dbg !1842 {
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !440, metadata !DIExpression()) #9, !dbg !1851
  call void @llvm.dbg.value(metadata i8* null, metadata !443, metadata !DIExpression()) #9, !dbg !1851
  call void @llvm.dbg.value(metadata i8* null, metadata !444, metadata !DIExpression()) #9, !dbg !1851
  %1 = tail call i8* @malloc(i32 1024) #7, !dbg !1853
  %2 = icmp eq i8* %1, null, !dbg !1854
  br i1 %2, label %3, label %5, !dbg !1855

3:                                                ; preds = %0
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1856
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1856
  %4 = tail call i8* @halide_string_to_string(i8* %1, i8* null, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !1858
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1859
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !1861
  br label %14, !dbg !1862

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, i8* %1, i32 1023, !dbg !1863
  store i8 0, i8* %6, align 1, !dbg !1864, !tbaa !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !457, metadata !DIExpression()) #9, !dbg !1856
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), metadata !460, metadata !DIExpression()) #9, !dbg !1856
  %7 = tail call i8* @halide_string_to_string(i8* nonnull %1, i8* nonnull %6, i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #7, !dbg !1858
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !466, metadata !DIExpression()) #9, !dbg !1859
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !480, metadata !DIExpression()) #9, !dbg !1865
  %8 = ptrtoint i8* %7 to i32, !dbg !1867
  %9 = ptrtoint i8* %1 to i32, !dbg !1867
  %10 = add i32 %8, 1, !dbg !1867
  %11 = sub i32 %10, %9, !dbg !1868
  %12 = sext i32 %11 to i64, !dbg !1869
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %1, i64 %12) #7, !dbg !1870
  tail call void @halide_print(i8* null, i8* nonnull %1) #7, !dbg !1871
  br label %14

14:                                               ; preds = %5, %3
  tail call void @free(i8* %1) #7, !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1844, metadata !DIExpression()), !dbg !1873
  br label %16, !dbg !1874

15:                                               ; preds = %27
  store i64 0, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !dbg !1875, !tbaa !376
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1876, !tbaa !927
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !dbg !1877, !tbaa !927
  ret void, !dbg !1878

16:                                               ; preds = %14, %27
  %17 = phi i32 [ 0, %14 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !1844, metadata !DIExpression()), !dbg !1873
  %18 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %17, !dbg !1879
  %19 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %18, align 4, !dbg !1879, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %19, metadata !1846, metadata !DIExpression()), !dbg !1880
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %18, align 4, !dbg !1881, !tbaa !927
  %20 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %19, null, !dbg !1882
  br i1 %20, label %27, label %21, !dbg !1883

21:                                               ; preds = %16, %21
  %22 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %24, %21 ], [ %19, %16 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %22, metadata !1846, metadata !DIExpression()), !dbg !1880
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 0, !dbg !1884
  %24 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %23, align 8, !dbg !1884, !tbaa !838
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %24, metadata !1849, metadata !DIExpression()), !dbg !1885
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %22) #8, !dbg !1886
  %25 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %22 to i8*, !dbg !1887
  tail call void @halide_free(i8* null, i8* nonnull %25) #7, !dbg !1888
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %24, metadata !1846, metadata !DIExpression()), !dbg !1880
  %26 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %24, null, !dbg !1882
  br i1 %26, label %27, label %21, !dbg !1883, !llvm.loop !1889

27:                                               ; preds = %21, %16
  %28 = add nuw nsw i32 %17, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %28, metadata !1844, metadata !DIExpression()), !dbg !1873
  %29 = icmp ult i32 %17, 255, !dbg !1892
  br i1 %29, label %16, label %15, !dbg !1874, !llvm.loop !1893
}

; Function Attrs: nounwind
define weak dso_local void @halide_memoization_cache_evict(i8* %0, i64 %1) local_unnamed_addr #4 !dbg !1895 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1899, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64 %1, metadata !1900, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1201, metadata !DIExpression()) #9, !dbg !1914
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1204, metadata !DIExpression()) #9, !dbg !1914
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal16memoization_lockE, metadata !1901, metadata !DIExpression()), !dbg !1913
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1916
  call void @llvm.dbg.value(metadata i32 0, metadata !1902, metadata !DIExpression()), !dbg !1917
  br label %4, !dbg !1918

3:                                                ; preds = %40
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !1212, metadata !DIExpression()) #9, !dbg !1919
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #7, !dbg !1921
  ret void, !dbg !1922

4:                                                ; preds = %2, %40
  %5 = phi i32 [ 0, %2 ], [ %41, %40 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1902, metadata !DIExpression()), !dbg !1917
  %6 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %5, !dbg !1923
  %7 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %6, align 4, !dbg !1923, !tbaa !927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %7, metadata !1904, metadata !DIExpression()), !dbg !1924
  %8 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %7, null, !dbg !1925
  br i1 %8, label %40, label %9, !dbg !1926

9:                                                ; preds = %4, %37
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %38, %37 ], [ %6, %4 ]
  %11 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %13, %37 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"** %10, metadata !1907, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %11, metadata !1904, metadata !DIExpression()), !dbg !1924
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 0, !dbg !1928
  %13 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !dbg !1928, !tbaa !838
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %13, metadata !1911, metadata !DIExpression()), !dbg !1929
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 13, !dbg !1930
  %15 = load i8, i8* %14, align 8, !dbg !1930, !tbaa !921, !range !1932
  %16 = icmp eq i8 %15, 0, !dbg !1930
  br i1 %16, label %37, label %17, !dbg !1933

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 12, !dbg !1934
  %19 = load i64, i64* %18, align 8, !dbg !1934, !tbaa !924
  %20 = icmp eq i64 %19, %1, !dbg !1935
  br i1 %20, label %21, label %37, !dbg !1936

21:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %13, %"struct.Halide::Runtime::Internal::CacheEntry"** %10, align 4, !dbg !1937, !tbaa !927
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 1, !dbg !1939
  %23 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %22, align 4, !dbg !1939, !tbaa !843
  %24 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %23, null, !dbg !1941
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 2, !dbg !1942
  %26 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !dbg !1942, !tbaa !846
  br i1 %24, label %30, label %27, !dbg !1943

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %23, i32 0, i32 2, !dbg !1944
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** %28, align 8, !dbg !1946, !tbaa !846
  %29 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !dbg !1947, !tbaa !846
  br label %31, !dbg !1949

30:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !dbg !1950, !tbaa !927
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %26, %30 ], [ %29, %27 ], !dbg !1947
  %33 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %32, null, !dbg !1952
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %32, i32 0, i32 1, !dbg !1953
  %35 = select i1 %33, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, %"struct.Halide::Runtime::Internal::CacheEntry"** %34, !dbg !1953
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %23, %"struct.Halide::Runtime::Internal::CacheEntry"** %35, align 4, !dbg !1954, !tbaa !927
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %11) #8, !dbg !1955
  %36 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %11 to i8*, !dbg !1956
  tail call void @halide_free(i8* %0, i8* nonnull %36) #7, !dbg !1957
  br label %37, !dbg !1958

37:                                               ; preds = %9, %17, %31
  %38 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %10, %31 ], [ %12, %17 ], [ %12, %9 ], !dbg !1927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"** %38, metadata !1907, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::CacheEntry"* %13, metadata !1904, metadata !DIExpression()), !dbg !1924
  %39 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %13, null, !dbg !1959
  br i1 %39, label %40, label %9, !dbg !1960, !llvm.loop !1961

40:                                               ; preds = %37, %4
  %41 = add nuw nsw i32 %5, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %41, metadata !1902, metadata !DIExpression()), !dbg !1917
  %42 = icmp ult i32 %5, 255, !dbg !1964
  br i1 %42, label %4, label %3, !dbg !1918, !llvm.loop !1965
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_cache_cleanup() #0 !dbg !1967 {
  tail call void @halide_memoization_cache_cleanup() #8, !dbg !1969
  ret void, !dbg !1970
}

declare !dbg !1971 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !1974 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #3

declare !dbg !1975 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !1978 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !1979 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !1982 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !1985 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !1988 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !1991 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

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

!llvm.dbg.cu = !{!238}
!llvm.module.flags = !{!338, !339, !340}
!llvm.ident = !{!341}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memoization_lock", linkageName: "_ZN6Halide7Runtime8Internal16memoization_lockE", scope: !2, file: !5, line: 196, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/cache.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !7, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !8, identifier: "_ZTS12halide_mutex")
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !6, file: !7, line: 121, baseType: !10, size: 32)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !15)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 68, baseType: !13)
!12 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 12, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cache_entries", linkageName: "_ZN6Halide7Runtime8Internal13cache_entriesE", scope: !2, file: !5, line: 200, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !226)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CacheEntry", scope: !2, file: !5, line: 70, size: 512, flags: DIFlagTypePassByValue, elements: !22, identifier: "_ZTSN6Halide7Runtime8Internal10CacheEntryE")
!22 = !{!23, !24, !25, !26, !30, !32, !33, !34, !35, !36, !39, !63, !208, !209, !210, !219, !222}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !5, line: 71, baseType: !20, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "more_recent", scope: !21, file: !5, line: 72, baseType: !20, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "less_recent", scope: !21, file: !5, line: 73, baseType: !20, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_storage", scope: !21, file: !5, line: 74, baseType: !27, size: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 16, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !21, file: !5, line: 75, baseType: !31, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 27, baseType: !14)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !21, file: !5, line: 76, baseType: !27, size: 32, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !21, file: !5, line: 77, baseType: !13, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "in_use_count", scope: !21, file: !5, line: 78, baseType: !13, size: 32, offset: 224)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_count", scope: !21, file: !5, line: 79, baseType: !13, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !21, file: !5, line: 81, baseType: !37, size: 32, offset: 288)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 11, baseType: !38)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "computed_bounds", scope: !21, file: !5, line: 82, baseType: !40, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !7, line: 1409, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !7, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !43, identifier: "_ZTS18halide_dimension_t")
!43 = !{!44, !45, !46, !47, !48, !52, !55, !62}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !42, file: !7, line: 1383, baseType: !37, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !42, file: !7, line: 1383, baseType: !37, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !42, file: !7, line: 1383, baseType: !37, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !7, line: 1386, baseType: !13, size: 32, offset: 96)
!48 = !DISubprogram(name: "halide_dimension_t", scope: !42, file: !7, line: 1388, type: !49, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!52 = !DISubprogram(name: "halide_dimension_t", scope: !42, file: !7, line: 1389, type: !53, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !51, !37, !37, !37, !13}
!55 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !42, file: !7, line: 1393, type: !56, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !61}
!58 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !60, size: 32)
!62 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !42, file: !7, line: 1400, type: !56, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !21, file: !5, line: 84, baseType: !64, size: 32, offset: 352)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !7, line: 1550, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !7, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !67, identifier: "_ZTS15halide_buffer_t")
!67 = !{!68, !71, !125, !126, !127, !167, !168, !169, !170, !179, !183, !186, !187, !190, !191, !194, !197, !198, !199, !204, !207}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !66, file: !7, line: 1425, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 10, baseType: !70)
!70 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !66, file: !7, line: 1428, baseType: !72, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !7, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !75, identifier: "_ZTS25halide_device_interface_t")
!75 = !{!76, !82, !86, !87, !91, !92, !93, !94, !95, !99, !105, !109, !110, !114, !115, !120}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !74, file: !7, line: 724, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32)
!78 = !DISubroutineType(types: !79)
!79 = !{!38, !80, !81, !72}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !74, file: !7, line: 726, baseType: !83, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 32)
!84 = !DISubroutineType(types: !85)
!85 = !{!38, !80, !81}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !74, file: !7, line: 727, baseType: !83, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !74, file: !7, line: 728, baseType: !88, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !80, !72}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !74, file: !7, line: 730, baseType: !83, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !74, file: !7, line: 731, baseType: !77, size: 32, offset: 160)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !74, file: !7, line: 733, baseType: !77, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !74, file: !7, line: 735, baseType: !83, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !74, file: !7, line: 736, baseType: !96, size: 32, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DISubroutineType(types: !98)
!98 = !{!38, !80, !81, !72, !81}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !74, file: !7, line: 738, baseType: !100, size: 32, offset: 288)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!101 = !DISubroutineType(types: !102)
!102 = !{!38, !80, !103, !81}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !74, file: !7, line: 740, baseType: !106, size: 32, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DISubroutineType(types: !108)
!108 = !{!38, !80, !103, !38, !38, !81}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !74, file: !7, line: 742, baseType: !83, size: 32, offset: 352)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !74, file: !7, line: 743, baseType: !111, size: 32, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DISubroutineType(types: !113)
!113 = !{!38, !80, !81, !69, !72}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !74, file: !7, line: 745, baseType: !83, size: 32, offset: 416)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !74, file: !7, line: 746, baseType: !116, size: 32, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!117 = !DISubroutineType(types: !118)
!118 = !{!38, !80, !119, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !74, file: !7, line: 747, baseType: !121, size: 32, offset: 480)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !124, line: 10, size: 512, flags: DIFlagFwdDecl, identifier: "_ZTS30halide_device_interface_impl_t")
!124 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!125 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !66, file: !7, line: 1433, baseType: !27, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !7, line: 1436, baseType: !69, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !7, line: 1439, baseType: !128, size: 32, offset: 192)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !7, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !129, identifier: "_ZTS13halide_type_t")
!129 = !{!130, !139, !140, !143, !147, !150, !155, !159, !160, !161, !164}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !128, file: !7, line: 434, baseType: !131, size: 8, align: 8)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !7, line: 413, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !7, line: 403, baseType: !28, size: 8, elements: !133, identifier: "_ZTS18halide_type_code_t")
!133 = !{!134, !135, !136, !137, !138}
!134 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!136 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!137 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!138 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !128, file: !7, line: 442, baseType: !28, size: 8, align: 8, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !128, file: !7, line: 446, baseType: !141, size: 16, align: 16, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 14, baseType: !142)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DISubprogram(name: "halide_type_t", scope: !128, file: !7, line: 453, type: !144, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !131, !28, !141}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!147 = !DISubprogram(name: "halide_type_t", scope: !128, file: !7, line: 459, type: !148, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !146}
!150 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !128, file: !7, line: 463, type: !151, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{!128, !153, !141}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!155 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !128, file: !7, line: 468, type: !156, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubroutineType(types: !157)
!157 = !{!58, !153, !158}
!158 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !154, size: 32)
!159 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !128, file: !7, line: 472, type: !156, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !128, file: !7, line: 476, type: !156, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !128, file: !7, line: 481, type: !162, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubroutineType(types: !163)
!163 = !{!38, !153}
!164 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !128, file: !7, line: 485, type: !165, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{!13, !153}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !66, file: !7, line: 1442, baseType: !37, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !66, file: !7, line: 1446, baseType: !40, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !66, file: !7, line: 1449, baseType: !80, size: 32, offset: 288)
!170 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !66, file: !7, line: 1454, type: !171, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{!58, !173, !174}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !7, line: 1416, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 1415, baseType: !14, size: 32, elements: !176, identifier: "_ZTS19halide_buffer_flags")
!176 = !{!177, !178}
!177 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!179 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !66, file: !7, line: 1458, type: !180, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182, !174, !58}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!183 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !66, file: !7, line: 1466, type: !184, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubroutineType(types: !185)
!185 = !{!58, !173}
!186 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !66, file: !7, line: 1470, type: !184, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !66, file: !7, line: 1474, type: !188, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !182, !58}
!190 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !66, file: !7, line: 1478, type: !188, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !66, file: !7, line: 1485, type: !192, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{!31, !173}
!194 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !66, file: !7, line: 1495, type: !195, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!27, !173}
!197 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !66, file: !7, line: 1506, type: !195, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !66, file: !7, line: 1518, type: !192, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !66, file: !7, line: 1523, type: !200, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!27, !173, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!204 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !66, file: !7, line: 1534, type: !205, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{!38, !182, !80}
!207 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !66, file: !7, line: 1545, type: !184, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_key", scope: !21, file: !5, line: 85, baseType: !69, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "has_eviction_key", scope: !21, file: !5, line: 86, baseType: !58, size: 8, offset: 448)
!210 = !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_by", scope: !21, file: !5, line: 88, type: !211, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DISubroutineType(types: !212)
!212 = !{!58, !213, !214, !31, !13, !216, !37, !218, !58, !69}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 32)
!219 = !DISubprogram(name: "destroy", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv", scope: !21, file: !5, line: 93, type: !220, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !213}
!222 = !DISubprogram(name: "buffer", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry6bufferEi", scope: !21, file: !5, line: 94, type: !223, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !213, !37}
!225 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !65, size: 32)
!226 = !{!227}
!227 = !DISubrange(count: 256)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "most_recently_used", linkageName: "_ZN6Halide7Runtime8Internal18most_recently_usedE", scope: !2, file: !5, line: 202, type: !20, isLocal: false, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "least_recently_used", linkageName: "_ZN6Halide7Runtime8Internal19least_recently_usedE", scope: !2, file: !5, line: 203, type: !20, isLocal: false, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "max_cache_size", linkageName: "_ZN6Halide7Runtime8Internal14max_cache_sizeE", scope: !2, file: !5, line: 206, type: !234, isLocal: false, isDefinition: true)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 9, baseType: !235)
!235 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "current_cache_size", linkageName: "_ZN6Halide7Runtime8Internal18current_cache_sizeE", scope: !2, file: !5, line: 207, type: !234, isLocal: false, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !239, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !241, globals: !329, imports: !336, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!240 = !{!132, !175}
!241 = !{!80, !242, !69, !323, !27, !64, !40, !31, !13, !20, !328, !248}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !244, file: !243, line: 203, baseType: !245)
!243 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!244 = !DINamespace(scope: !2)
!245 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !244, file: !243, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !246, templateParams: !320)
!246 = !{!247, !250, !251, !252, !253, !254, !256, !260, !266, !269, !272, !275, !278, !282, !286, !291, !295, !298, !302, !305, !308, !313, !314, !317, !318, !319}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !243, line: 32, baseType: !248, size: 32, flags: DIFlagPublic)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 32)
!249 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !245, file: !243, line: 32, baseType: !248, size: 32, offset: 32, flags: DIFlagPublic)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !245, file: !243, line: 32, baseType: !248, size: 32, offset: 64, flags: DIFlagPublic)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !245, file: !243, line: 33, baseType: !80, size: 32, offset: 96, flags: DIFlagPublic)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !245, file: !243, line: 34, baseType: !58, size: 8, offset: 128, flags: DIFlagPublic)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !245, file: !243, line: 35, baseType: !255, size: 8, offset: 136, flags: DIFlagPublic)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 8, elements: !15)
!256 = !DISubprogram(name: "Printer", scope: !245, file: !243, line: 37, type: !257, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259, !80, !248}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !245, file: !243, line: 57, type: !261, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !259, !264}
!263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !245, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!266 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !245, file: !243, line: 67, type: !267, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!263, !259, !234}
!269 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !245, file: !243, line: 72, type: !270, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubroutineType(types: !271)
!271 = !{!263, !259, !37}
!272 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !245, file: !243, line: 77, type: !273, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!263, !259, !69}
!275 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !245, file: !243, line: 82, type: !276, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubroutineType(types: !277)
!277 = !{!263, !259, !13}
!278 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !245, file: !243, line: 87, type: !279, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{!263, !259, !281}
!281 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!282 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !245, file: !243, line: 92, type: !283, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubroutineType(types: !284)
!284 = !{!263, !259, !285}
!285 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!286 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !245, file: !243, line: 97, type: !287, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!263, !259, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!291 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !245, file: !243, line: 102, type: !292, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!263, !259, !294}
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!295 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !245, file: !243, line: 108, type: !296, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(types: !297)
!297 = !{!263, !259, !158}
!298 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !245, file: !243, line: 113, type: !299, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{!263, !259, !301}
!301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !217, size: 32)
!302 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !245, file: !243, line: 119, type: !303, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{!264, !259}
!305 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !245, file: !243, line: 131, type: !306, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !259}
!308 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !245, file: !243, line: 139, type: !309, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DISubroutineType(types: !310)
!310 = !{!69, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!313 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !245, file: !243, line: 143, type: !309, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !245, file: !243, line: 148, type: !315, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !259, !38}
!317 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !245, file: !243, line: 158, type: !303, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !245, file: !243, line: 162, type: !306, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubprogram(name: "~Printer", scope: !245, file: !243, line: 166, type: !306, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !{!321, !322}
!321 = !DITemplateValueParameter(name: "type", type: !38, value: i32 0)
!322 = !DITemplateValueParameter(name: "length", type: !70, value: i64 1024)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CacheBlockHeader", scope: !2, file: !5, line: 97, size: 64, flags: DIFlagTypePassByValue, elements: !325, identifier: "_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE")
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !324, file: !5, line: 98, baseType: !20, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !324, file: !5, line: 99, baseType: !13, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !12, line: 28, baseType: !38)
!329 = !{!0, !17, !228, !230, !232, !236, !330, !333}
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression(DW_OP_constu, 256, DW_OP_stack_value))
!331 = distinct !DIGlobalVariable(name: "kHashTableSize", scope: !2, file: !5, line: 198, type: !332, isLocal: true, isDefinition: true)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!334 = distinct !DIGlobalVariable(name: "kDefaultCacheSize", scope: !2, file: !5, line: 205, type: !335, isLocal: true, isDefinition: true)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!336 = !{!337}
!337 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !238, entity: !2, file: !12, line: 225)
!338 = !{i32 7, !"Dwarf Version", i32 4}
!339 = !{i32 2, !"Debug Info Version", i32 3}
!340 = !{i32 1, !"wchar_size", i32 4}
!341 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!342 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !2, file: !343, line: 47, type: !344, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !360)
!343 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !38, !234, !234}
!346 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !2, file: !343, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !349, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!349 = !{!350, !351, !352, !353, !357, !358, !359}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !348, file: !343, line: 35, baseType: !69, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !348, file: !343, line: 35, baseType: !69, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !348, file: !343, line: 37, baseType: !69, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !348, file: !343, line: 39, baseType: !354, size: 1024, offset: 192)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1024, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !348, file: !343, line: 41, baseType: !354, size: 1024, offset: 1216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !348, file: !343, line: 42, baseType: !354, size: 1024, offset: 2240)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !348, file: !343, line: 44, baseType: !69, size: 64, offset: 3264)
!360 = !{!361, !362, !363, !364, !365, !368, !369}
!361 = !DILocalVariable(name: "copy", arg: 1, scope: !342, file: !343, line: 47, type: !346)
!362 = !DILocalVariable(name: "d", arg: 2, scope: !342, file: !343, line: 47, type: !38)
!363 = !DILocalVariable(name: "src_off", arg: 3, scope: !342, file: !343, line: 47, type: !234)
!364 = !DILocalVariable(name: "dst_off", arg: 4, scope: !342, file: !343, line: 47, type: !234)
!365 = !DILocalVariable(name: "from", scope: !366, file: !343, line: 54, type: !289)
!366 = distinct !DILexicalBlock(scope: !367, file: !343, line: 53, column: 18)
!367 = distinct !DILexicalBlock(scope: !342, file: !343, line: 53, column: 9)
!368 = !DILocalVariable(name: "to", scope: !366, file: !343, line: 55, type: !80)
!369 = !DILocalVariable(name: "i", scope: !370, file: !343, line: 58, type: !69)
!370 = distinct !DILexicalBlock(scope: !371, file: !343, line: 58, column: 9)
!371 = distinct !DILexicalBlock(scope: !367, file: !343, line: 57, column: 12)
!372 = !DILocation(line: 0, scope: !342)
!373 = !DILocation(line: 49, column: 14, scope: !342)
!374 = !DILocation(line: 49, column: 19, scope: !342)
!375 = !DILocation(line: 49, column: 22, scope: !342)
!376 = !{!377, !377, i64 0}
!377 = !{!"long long", !378, i64 0}
!378 = !{!"omnipotent char", !379, i64 0}
!379 = !{!"Simple C++ TBAA"}
!380 = !DILocation(line: 49, column: 37, scope: !342)
!381 = !DILocation(line: 49, column: 5, scope: !342)
!382 = !DILocation(line: 50, column: 10, scope: !383)
!383 = distinct !DILexicalBlock(scope: !342, file: !343, line: 49, column: 43)
!384 = distinct !{!384, !381, !385, !386}
!385 = !DILocation(line: 51, column: 5, scope: !342)
!386 = !{!"llvm.loop.mustprogress"}
!387 = !DILocation(line: 53, column: 11, scope: !367)
!388 = !DILocation(line: 53, column: 9, scope: !342)
!389 = !DILocation(line: 0, scope: !370)
!390 = !DILocation(line: 58, column: 34, scope: !391)
!391 = distinct !DILexicalBlock(scope: !370, file: !343, line: 58, column: 9)
!392 = !DILocation(line: 58, column: 32, scope: !391)
!393 = !DILocation(line: 58, column: 9, scope: !370)
!394 = !DILocation(line: 54, column: 42, scope: !366)
!395 = !{!396, !377, i64 0}
!396 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !377, i64 0, !377, i64 8, !377, i64 16, !378, i64 24, !378, i64 152, !378, i64 280, !377, i64 408}
!397 = !DILocation(line: 54, column: 46, scope: !366)
!398 = !DILocation(line: 54, column: 28, scope: !366)
!399 = !DILocation(line: 0, scope: !366)
!400 = !DILocation(line: 55, column: 34, scope: !366)
!401 = !{!396, !377, i64 8}
!402 = !DILocation(line: 55, column: 38, scope: !366)
!403 = !DILocation(line: 55, column: 20, scope: !366)
!404 = !DILocation(line: 56, column: 31, scope: !366)
!405 = !{!396, !377, i64 408}
!406 = !DILocation(line: 56, column: 26, scope: !366)
!407 = !DILocation(line: 56, column: 9, scope: !366)
!408 = !DILocation(line: 57, column: 5, scope: !366)
!409 = !DILocation(line: 59, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !391, file: !343, line: 58, column: 55)
!411 = !DILocation(line: 60, column: 24, scope: !410)
!412 = !DILocation(line: 60, column: 21, scope: !410)
!413 = !DILocation(line: 61, column: 24, scope: !410)
!414 = !DILocation(line: 61, column: 21, scope: !410)
!415 = !DILocation(line: 58, column: 51, scope: !391)
!416 = distinct !{!416, !393, !417, !386}
!417 = !DILocation(line: 62, column: 9, scope: !370)
!418 = !DILocation(line: 64, column: 1, scope: !342)
!419 = !DISubprogram(name: "memcpy", scope: !12, file: !12, line: 94, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!80, !80, !289, !14}
!422 = !{}
!423 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !2, file: !343, line: 66, type: !424, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !346, !80}
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "copy", arg: 1, scope: !423, file: !343, line: 66, type: !346)
!428 = !DILocalVariable(name: "user_context", arg: 2, scope: !423, file: !343, line: 66, type: !80)
!429 = !DILocation(line: 0, scope: !423)
!430 = !DILocation(line: 68, column: 14, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !343, line: 68, column: 9)
!432 = !DILocation(line: 68, column: 26, scope: !431)
!433 = !DILocation(line: 68, column: 18, scope: !431)
!434 = !DILocation(line: 68, column: 9, scope: !423)
!435 = !DILocation(line: 69, column: 58, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !343, line: 68, column: 31)
!437 = !{!396, !377, i64 16}
!438 = !DILocation(line: 69, column: 9, scope: !436)
!439 = !DILocation(line: 70, column: 5, scope: !436)
!440 = !DILocalVariable(name: "this", arg: 1, scope: !441, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!441 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !245, file: !243, line: 37, type: !257, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !256, retainedNodes: !442)
!442 = !{!440, !443, !444}
!443 = !DILocalVariable(name: "ctx", arg: 2, scope: !441, file: !243, line: 37, type: !80)
!444 = !DILocalVariable(name: "mem", arg: 3, scope: !441, file: !243, line: 37, type: !248)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32)
!446 = !DILocation(line: 0, scope: !441, inlinedAt: !447)
!447 = distinct !DILocation(line: 71, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !431, file: !343, line: 70, column: 12)
!449 = !DILocation(line: 44, column: 27, scope: !450, inlinedAt: !447)
!450 = distinct !DILexicalBlock(scope: !451, file: !243, line: 43, column: 16)
!451 = distinct !DILexicalBlock(scope: !452, file: !243, line: 41, column: 20)
!452 = distinct !DILexicalBlock(scope: !453, file: !243, line: 39, column: 13)
!453 = distinct !DILexicalBlock(scope: !441, file: !243, line: 38, column: 54)
!454 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !447)
!455 = distinct !DILexicalBlock(scope: !453, file: !243, line: 48, column: 13)
!456 = !DILocation(line: 48, column: 13, scope: !453, inlinedAt: !447)
!457 = !DILocalVariable(name: "this", arg: 1, scope: !458, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!458 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !245, file: !243, line: 57, type: !261, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !260, retainedNodes: !459)
!459 = !{!457, !460}
!460 = !DILocalVariable(name: "arg", arg: 2, scope: !458, file: !243, line: 57, type: !264)
!461 = !DILocation(line: 0, scope: !458, inlinedAt: !462)
!462 = distinct !DILocation(line: 71, column: 29, scope: !448)
!463 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !462)
!464 = distinct !DILexicalBlock(scope: !465, file: !243, line: 61, column: 16)
!465 = distinct !DILexicalBlock(scope: !458, file: !243, line: 59, column: 13)
!466 = !DILocalVariable(name: "this", arg: 1, scope: !467, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!467 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !245, file: !243, line: 166, type: !306, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !319, retainedNodes: !468)
!468 = !{!466}
!469 = !DILocation(line: 0, scope: !467, inlinedAt: !470)
!470 = distinct !DILocation(line: 71, column: 9, scope: !448)
!471 = !DILocation(line: 168, column: 13, scope: !472, inlinedAt: !470)
!472 = distinct !DILexicalBlock(scope: !473, file: !243, line: 167, column: 19)
!473 = distinct !DILexicalBlock(scope: !474, file: !243, line: 167, column: 13)
!474 = distinct !DILexicalBlock(scope: !467, file: !243, line: 166, column: 16)
!475 = !DILocation(line: 169, column: 9, scope: !472, inlinedAt: !470)
!476 = !DILocation(line: 49, column: 23, scope: !477, inlinedAt: !447)
!477 = distinct !DILexicalBlock(scope: !455, file: !243, line: 48, column: 18)
!478 = !DILocation(line: 50, column: 18, scope: !477, inlinedAt: !447)
!479 = !{!378, !378, i64 0}
!480 = !DILocalVariable(name: "this", arg: 1, scope: !481, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!481 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !245, file: !243, line: 162, type: !306, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !318, retainedNodes: !482)
!482 = !{!480}
!483 = !DILocation(line: 0, scope: !481, inlinedAt: !484)
!484 = distinct !DILocation(line: 170, column: 13, scope: !485, inlinedAt: !470)
!485 = distinct !DILexicalBlock(scope: !473, file: !243, line: 169, column: 16)
!486 = !DILocation(line: 163, column: 81, scope: !481, inlinedAt: !484)
!487 = !DILocation(line: 163, column: 87, scope: !481, inlinedAt: !484)
!488 = !DILocation(line: 163, column: 77, scope: !481, inlinedAt: !484)
!489 = !DILocation(line: 163, column: 15, scope: !481, inlinedAt: !484)
!490 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !470)
!491 = distinct !DILexicalBlock(scope: !492, file: !243, line: 173, column: 46)
!492 = distinct !DILexicalBlock(scope: !493, file: !243, line: 173, column: 24)
!493 = distinct !DILexicalBlock(scope: !485, file: !243, line: 171, column: 17)
!494 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !470)
!495 = distinct !DILexicalBlock(scope: !496, file: !243, line: 180, column: 40)
!496 = distinct !DILexicalBlock(scope: !474, file: !243, line: 180, column: 13)
!497 = !DILocation(line: 73, column: 1, scope: !423)
!498 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !2, file: !343, line: 76, type: !499, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!348, !216, !58, !216, !58}
!501 = !{!502, !503, !504, !505, !506, !507, !509, !511, !514, !517, !519, !522, !523, !524, !526}
!502 = !DILocalVariable(name: "src", arg: 1, scope: !498, file: !343, line: 76, type: !216)
!503 = !DILocalVariable(name: "src_host", arg: 2, scope: !498, file: !343, line: 76, type: !58)
!504 = !DILocalVariable(name: "dst", arg: 3, scope: !498, file: !343, line: 77, type: !216)
!505 = !DILocalVariable(name: "dst_host", arg: 4, scope: !498, file: !343, line: 77, type: !58)
!506 = !DILocalVariable(name: "c", scope: !498, file: !343, line: 79, type: !348)
!507 = !DILocalVariable(name: "i", scope: !508, file: !343, line: 83, type: !38)
!508 = distinct !DILexicalBlock(scope: !498, file: !343, line: 83, column: 5)
!509 = !DILocalVariable(name: "i", scope: !510, file: !343, line: 91, type: !38)
!510 = distinct !DILexicalBlock(scope: !498, file: !343, line: 91, column: 5)
!511 = !DILocalVariable(name: "zero", scope: !512, file: !343, line: 100, type: !348)
!512 = distinct !DILexicalBlock(scope: !513, file: !343, line: 98, column: 42)
!513 = distinct !DILexicalBlock(scope: !498, file: !343, line: 96, column: 9)
!514 = !DILocalVariable(name: "zero", scope: !515, file: !343, line: 107, type: !348)
!515 = distinct !DILexicalBlock(scope: !516, file: !343, line: 104, column: 28)
!516 = distinct !DILexicalBlock(scope: !498, file: !343, line: 104, column: 9)
!517 = !DILocalVariable(name: "i", scope: !518, file: !343, line: 115, type: !38)
!518 = distinct !DILexicalBlock(scope: !498, file: !343, line: 115, column: 5)
!519 = !DILocalVariable(name: "dst_stride_bytes", scope: !520, file: !343, line: 117, type: !69)
!520 = distinct !DILexicalBlock(scope: !521, file: !343, line: 115, column: 47)
!521 = distinct !DILexicalBlock(scope: !518, file: !343, line: 115, column: 5)
!522 = !DILocalVariable(name: "src_stride_bytes", scope: !520, file: !343, line: 118, type: !69)
!523 = !DILocalVariable(name: "insert", scope: !520, file: !343, line: 120, type: !38)
!524 = !DILocalVariable(name: "j", scope: !525, file: !343, line: 128, type: !38)
!525 = distinct !DILexicalBlock(scope: !520, file: !343, line: 128, column: 9)
!526 = !DILocalVariable(name: "j", scope: !527, file: !343, line: 151, type: !38)
!527 = distinct !DILexicalBlock(scope: !528, file: !343, line: 151, column: 9)
!528 = distinct !DILexicalBlock(scope: !498, file: !343, line: 145, column: 51)
!529 = !DILocation(line: 0, scope: !498)
!530 = !DILocation(line: 79, column: 5, scope: !498)
!531 = !DILocation(line: 79, column: 17, scope: !498)
!532 = !DILocation(line: 80, column: 13, scope: !498)
!533 = !DILocation(line: 80, column: 39, scope: !498)
!534 = !{!535, !536, i64 12}
!535 = !{!"_ZTS15halide_buffer_t", !377, i64 0, !536, i64 8, !536, i64 12, !377, i64 16, !537, i64 24, !540, i64 28, !536, i64 32, !536, i64 36}
!536 = !{!"any pointer", !378, i64 0}
!537 = !{!"_ZTS13halide_type_t", !538, i64 0, !378, i64 1, !539, i64 2}
!538 = !{!"_ZTS18halide_type_code_t", !378, i64 0}
!539 = !{!"short", !378, i64 0}
!540 = !{!"int", !378, i64 0}
!541 = !DILocation(line: 80, column: 24, scope: !498)
!542 = !DILocation(line: 80, column: 51, scope: !498)
!543 = !{!535, !377, i64 0}
!544 = !DILocation(line: 80, column: 7, scope: !498)
!545 = !DILocation(line: 80, column: 11, scope: !498)
!546 = !DILocation(line: 81, column: 13, scope: !498)
!547 = !DILocation(line: 81, column: 39, scope: !498)
!548 = !DILocation(line: 81, column: 24, scope: !498)
!549 = !DILocation(line: 81, column: 51, scope: !498)
!550 = !DILocation(line: 81, column: 7, scope: !498)
!551 = !DILocation(line: 81, column: 11, scope: !498)
!552 = !DILocalVariable(name: "this", arg: 1, scope: !553, type: !555, flags: DIFlagArtificial | DIFlagObjectPointer)
!553 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !128, file: !7, line: 481, type: !162, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !161, retainedNodes: !554)
!554 = !{!552}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!556 = !DILocation(line: 0, scope: !553, inlinedAt: !557)
!557 = distinct !DILocation(line: 82, column: 30, scope: !498)
!558 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !557)
!559 = !{!537, !378, i64 1}
!560 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !557)
!561 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !557)
!562 = !DILocation(line: 82, column: 20, scope: !498)
!563 = !DILocation(line: 82, column: 7, scope: !498)
!564 = !DILocation(line: 82, column: 18, scope: !498)
!565 = !DILocation(line: 0, scope: !508)
!566 = !DILocation(line: 84, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !343, line: 83, column: 45)
!568 = distinct !DILexicalBlock(scope: !508, file: !343, line: 83, column: 5)
!569 = !DILocation(line: 84, column: 21, scope: !567)
!570 = !DILocation(line: 85, column: 9, scope: !567)
!571 = !DILocation(line: 85, column: 31, scope: !567)
!572 = !DILocation(line: 86, column: 9, scope: !567)
!573 = !DILocation(line: 86, column: 31, scope: !567)
!574 = !DILocation(line: 90, column: 7, scope: !498)
!575 = !DILocation(line: 0, scope: !510)
!576 = !DILocation(line: 91, column: 30, scope: !577)
!577 = distinct !DILexicalBlock(scope: !510, file: !343, line: 91, column: 5)
!578 = !{!535, !540, i64 28}
!579 = !DILocation(line: 91, column: 23, scope: !577)
!580 = !DILocation(line: 91, column: 5, scope: !510)
!581 = !{!535, !536, i64 32}
!582 = !DILocation(line: 94, column: 17, scope: !498)
!583 = !DILocation(line: 94, column: 22, scope: !498)
!584 = !DILocation(line: 96, column: 33, scope: !513)
!585 = !DILocation(line: 96, column: 25, scope: !513)
!586 = !DILocation(line: 96, column: 44, scope: !513)
!587 = !DILocation(line: 92, column: 46, scope: !588)
!588 = distinct !DILexicalBlock(scope: !577, file: !343, line: 91, column: 47)
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
!600 = distinct !{!600, !580, !601, !386}
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
!617 = !DILocation(line: 107, column: 21, scope: !515)
!618 = !DILocation(line: 108, column: 9, scope: !515)
!619 = !DILocation(line: 144, column: 14, scope: !498)
!620 = !DILocation(line: 144, column: 28, scope: !498)
!621 = !DILocation(line: 144, column: 25, scope: !498)
!622 = !DILocation(line: 144, column: 50, scope: !498)
!623 = !DILocation(line: 145, column: 28, scope: !498)
!624 = !DILocation(line: 117, column: 59, scope: !520)
!625 = !DILocation(line: 117, column: 47, scope: !520)
!626 = !DILocation(line: 0, scope: !553, inlinedAt: !627)
!627 = distinct !DILocation(line: 117, column: 78, scope: !520)
!628 = !DILocation(line: 117, column: 66, scope: !520)
!629 = !DILocation(line: 0, scope: !520)
!630 = !DILocation(line: 118, column: 59, scope: !520)
!631 = !DILocation(line: 118, column: 47, scope: !520)
!632 = !DILocation(line: 0, scope: !553, inlinedAt: !633)
!633 = distinct !DILocation(line: 118, column: 78, scope: !520)
!634 = !DILocation(line: 118, column: 66, scope: !520)
!635 = !DILocation(line: 121, column: 33, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !343, line: 121, column: 9)
!637 = distinct !DILexicalBlock(scope: !520, file: !343, line: 121, column: 9)
!638 = !DILocation(line: 121, column: 9, scope: !637)
!639 = !DILocation(line: 124, column: 36, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !343, line: 124, column: 17)
!641 = distinct !DILexicalBlock(scope: !636, file: !343, line: 121, column: 48)
!642 = !DILocation(line: 124, column: 34, scope: !640)
!643 = !DILocation(line: 124, column: 63, scope: !640)
!644 = !DILocation(line: 121, column: 44, scope: !636)
!645 = distinct !{!645, !638, !646, !386}
!646 = !DILocation(line: 127, column: 9, scope: !637)
!647 = !DILocation(line: 0, scope: !637)
!648 = !DILocation(line: 0, scope: !525)
!649 = !DILocation(line: 128, column: 27, scope: !650)
!650 = distinct !DILexicalBlock(scope: !525, file: !343, line: 128, column: 9)
!651 = !DILocation(line: 128, column: 9, scope: !525)
!652 = !DILocation(line: 133, column: 40, scope: !520)
!653 = !{!590, !540, i64 4}
!654 = !DILocation(line: 133, column: 28, scope: !520)
!655 = !DILocation(line: 133, column: 9, scope: !520)
!656 = !DILocation(line: 133, column: 26, scope: !520)
!657 = !DILocation(line: 135, column: 9, scope: !520)
!658 = !DILocation(line: 135, column: 36, scope: !520)
!659 = !DILocation(line: 136, column: 9, scope: !520)
!660 = !DILocation(line: 136, column: 36, scope: !520)
!661 = !DILocation(line: 115, column: 43, scope: !521)
!662 = !DILocation(line: 115, column: 23, scope: !521)
!663 = distinct !{!663, !616, !664, !386}
!664 = !DILocation(line: 137, column: 5, scope: !518)
!665 = !DILocation(line: 129, column: 38, scope: !666)
!666 = distinct !DILexicalBlock(scope: !650, file: !343, line: 128, column: 42)
!667 = !DILocation(line: 129, column: 27, scope: !666)
!668 = !DILocation(line: 129, column: 13, scope: !666)
!669 = !DILocation(line: 129, column: 25, scope: !666)
!670 = !DILocation(line: 130, column: 37, scope: !666)
!671 = !DILocation(line: 130, column: 13, scope: !666)
!672 = !DILocation(line: 130, column: 35, scope: !666)
!673 = !DILocation(line: 131, column: 37, scope: !666)
!674 = !DILocation(line: 131, column: 13, scope: !666)
!675 = !DILocation(line: 131, column: 35, scope: !666)
!676 = distinct !{!676, !651, !677, !386}
!677 = !DILocation(line: 132, column: 9, scope: !525)
!678 = !DILocation(line: 145, column: 25, scope: !498)
!679 = !DILocation(line: 144, column: 5, scope: !498)
!680 = !DILocation(line: 147, column: 25, scope: !528)
!681 = !DILocation(line: 147, column: 22, scope: !528)
!682 = !DILocation(line: 0, scope: !527)
!683 = !DILocation(line: 152, column: 31, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !343, line: 151, column: 49)
!685 = distinct !DILexicalBlock(scope: !527, file: !343, line: 151, column: 9)
!686 = !DILocation(line: 152, column: 29, scope: !684)
!687 = !DILocation(line: 153, column: 41, scope: !684)
!688 = !DILocation(line: 153, column: 39, scope: !684)
!689 = !DILocation(line: 154, column: 41, scope: !684)
!690 = !DILocation(line: 154, column: 39, scope: !684)
!691 = !DILocation(line: 156, column: 37, scope: !528)
!692 = !DILocation(line: 157, column: 47, scope: !528)
!693 = !DILocation(line: 158, column: 47, scope: !528)
!694 = distinct !{!694, !679, !695, !386}
!695 = !DILocation(line: 159, column: 5, scope: !498)
!696 = !DILocation(line: 160, column: 12, scope: !498)
!697 = !{i64 0, i64 8, !376, i64 8, i64 8, !376, i64 16, i64 8, !376, i64 24, i64 128, !479, i64 152, i64 128, !479, i64 280, i64 128, !479, i64 408, i64 8, !376}
!698 = !DILocation(line: 160, column: 5, scope: !498)
!699 = !DILocation(line: 161, column: 1, scope: !498)
!700 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !2, file: !343, line: 163, type: !701, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!348, !216}
!703 = !{!704}
!704 = !DILocalVariable(name: "buf", arg: 1, scope: !700, file: !343, line: 163, type: !216)
!705 = !DILocation(line: 0, scope: !700)
!706 = !DILocation(line: 164, column: 12, scope: !700)
!707 = !DILocation(line: 164, column: 5, scope: !700)
!708 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !2, file: !343, line: 167, type: !701, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !709)
!709 = !{!710}
!710 = !DILocalVariable(name: "buf", arg: 1, scope: !708, file: !343, line: 167, type: !216)
!711 = !DILocation(line: 0, scope: !708)
!712 = !DILocation(line: 168, column: 12, scope: !708)
!713 = !DILocation(line: 168, column: 5, scope: !708)
!714 = distinct !DISubprogram(name: "keys_equal", linkageName: "_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j", scope: !2, file: !5, line: 57, type: !715, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!58, !214, !214, !31}
!717 = !{!718, !719, !720}
!718 = !DILocalVariable(name: "key1", arg: 1, scope: !714, file: !5, line: 57, type: !214)
!719 = !DILocalVariable(name: "key2", arg: 2, scope: !714, file: !5, line: 57, type: !214)
!720 = !DILocalVariable(name: "key_size", arg: 3, scope: !714, file: !5, line: 57, type: !31)
!721 = !DILocation(line: 0, scope: !714)
!722 = !DILocation(line: 58, column: 12, scope: !714)
!723 = !DILocation(line: 58, column: 41, scope: !714)
!724 = !DILocation(line: 58, column: 5, scope: !714)
!725 = !DISubprogram(name: "memcmp", scope: !12, file: !12, line: 95, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!726 = !DISubroutineType(types: !727)
!727 = !{!38, !289, !289, !14}
!728 = distinct !DISubprogram(name: "buffer_has_shape", linkageName: "_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t", scope: !2, file: !5, line: 61, type: !729, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !733)
!729 = !DISubroutineType(types: !730)
!730 = !{!58, !216, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "buf", arg: 1, scope: !728, file: !5, line: 61, type: !216)
!735 = !DILocalVariable(name: "shape", arg: 2, scope: !728, file: !5, line: 61, type: !731)
!736 = !DILocalVariable(name: "i", scope: !737, file: !5, line: 62, type: !38)
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
!747 = distinct !{!747, !743, !748, !386}
!748 = !DILocation(line: 66, column: 5, scope: !737)
!749 = !DILocalVariable(name: "this", arg: 1, scope: !750, type: !753, flags: DIFlagArtificial | DIFlagObjectPointer)
!750 = distinct !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !42, file: !7, line: 1400, type: !56, scopeLine: 1400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !62, retainedNodes: !751)
!751 = !{!749, !752}
!752 = !DILocalVariable(name: "other", arg: 2, scope: !750, file: !7, line: 1400, type: !61)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!754 = !DILocation(line: 0, scope: !750, inlinedAt: !755)
!755 = distinct !DILocation(line: 63, column: 25, scope: !745)
!756 = !DILocalVariable(name: "this", arg: 1, scope: !757, type: !753, flags: DIFlagArtificial | DIFlagObjectPointer)
!757 = distinct !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !42, file: !7, line: 1393, type: !56, scopeLine: 1393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !55, retainedNodes: !758)
!758 = !{!756, !759}
!759 = !DILocalVariable(name: "other", arg: 2, scope: !757, file: !7, line: 1393, type: !61)
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
!781 = distinct !DISubprogram(name: "header_bytes", linkageName: "_ZN6Halide7Runtime8Internal12header_bytesEv", scope: !2, file: !5, line: 107, type: !782, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!31}
!784 = !{!785, !786}
!785 = !DILocalVariable(name: "s", scope: !781, file: !5, line: 108, type: !31)
!786 = !DILocalVariable(name: "mask", scope: !781, file: !5, line: 109, type: !31)
!787 = !DILocation(line: 0, scope: !781)
!788 = !DILocation(line: 109, column: 19, scope: !781)
!789 = !DILocation(line: 110, column: 15, scope: !781)
!790 = !DILocation(line: 110, column: 25, scope: !781)
!791 = !DILocation(line: 110, column: 23, scope: !781)
!792 = !DILocation(line: 110, column: 5, scope: !781)
!793 = !DISubprogram(name: "halide_malloc_alignment", scope: !12, file: !12, line: 188, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!794 = !DISubroutineType(types: !795)
!795 = !{!38}
!796 = distinct !DISubprogram(name: "get_pointer_to_header", linkageName: "_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh", scope: !2, file: !5, line: 113, type: !797, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!323, !27}
!799 = !{!800}
!800 = !DILocalVariable(name: "host", arg: 1, scope: !796, file: !5, line: 113, type: !27)
!801 = !DILocation(line: 0, scope: !796)
!802 = !DILocation(line: 0, scope: !781, inlinedAt: !803)
!803 = distinct !DILocation(line: 114, column: 40, scope: !796)
!804 = !DILocation(line: 109, column: 19, scope: !781, inlinedAt: !803)
!805 = !DILocation(line: 110, column: 15, scope: !781, inlinedAt: !803)
!806 = !DILocation(line: 110, column: 25, scope: !781, inlinedAt: !803)
!807 = !DILocation(line: 110, column: 23, scope: !781, inlinedAt: !803)
!808 = !DILocation(line: 114, column: 38, scope: !796)
!809 = !DILocation(line: 114, column: 12, scope: !796)
!810 = !DILocation(line: 114, column: 5, scope: !796)
!811 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_by", scope: !21, file: !5, line: 117, type: !211, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !210, retainedNodes: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !827, !829, !831}
!813 = !DILocalVariable(name: "this", arg: 1, scope: !811, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!814 = !DILocalVariable(name: "cache_key", arg: 2, scope: !811, file: !5, line: 117, type: !214)
!815 = !DILocalVariable(name: "cache_key_size", arg: 3, scope: !811, file: !5, line: 117, type: !31)
!816 = !DILocalVariable(name: "key_hash", arg: 4, scope: !811, file: !5, line: 118, type: !13)
!817 = !DILocalVariable(name: "computed_bounds_buf", arg: 5, scope: !811, file: !5, line: 118, type: !216)
!818 = !DILocalVariable(name: "tuples", arg: 6, scope: !811, file: !5, line: 119, type: !37)
!819 = !DILocalVariable(name: "tuple_buffers", arg: 7, scope: !811, file: !5, line: 119, type: !218)
!820 = !DILocalVariable(name: "has_eviction_key_arg", arg: 8, scope: !811, file: !5, line: 120, type: !58)
!821 = !DILocalVariable(name: "eviction_key_arg", arg: 9, scope: !811, file: !5, line: 120, type: !69)
!822 = !DILocalVariable(name: "storage_bytes", scope: !811, file: !5, line: 131, type: !31)
!823 = !DILocalVariable(name: "shape_offset", scope: !811, file: !5, line: 138, type: !31)
!824 = !DILocalVariable(name: "key_offset", scope: !811, file: !5, line: 142, type: !31)
!825 = !DILocalVariable(name: "i", scope: !826, file: !5, line: 157, type: !31)
!826 = distinct !DILexicalBlock(scope: !811, file: !5, line: 157, column: 5)
!827 = !DILocalVariable(name: "i", scope: !828, file: !5, line: 162, type: !38)
!828 = distinct !DILexicalBlock(scope: !811, file: !5, line: 162, column: 5)
!829 = !DILocalVariable(name: "i", scope: !830, file: !5, line: 167, type: !13)
!830 = distinct !DILexicalBlock(scope: !811, file: !5, line: 167, column: 5)
!831 = !DILocalVariable(name: "j", scope: !832, file: !5, line: 170, type: !38)
!832 = distinct !DILexicalBlock(scope: !833, file: !5, line: 170, column: 9)
!833 = distinct !DILexicalBlock(scope: !834, file: !5, line: 167, column: 48)
!834 = distinct !DILexicalBlock(scope: !830, file: !5, line: 167, column: 5)
!835 = !DILocation(line: 0, scope: !811)
!836 = !DILocation(line: 121, column: 5, scope: !811)
!837 = !DILocation(line: 121, column: 10, scope: !811)
!838 = !{!839, !536, i64 0}
!839 = !{!"_ZTSN6Halide7Runtime8Internal10CacheEntryE", !536, i64 0, !536, i64 4, !536, i64 8, !536, i64 12, !540, i64 16, !536, i64 20, !540, i64 24, !540, i64 28, !540, i64 32, !540, i64 36, !536, i64 40, !536, i64 44, !377, i64 48, !840, i64 56}
!840 = !{!"bool", !378, i64 0}
!841 = !DILocation(line: 122, column: 5, scope: !811)
!842 = !DILocation(line: 122, column: 17, scope: !811)
!843 = !{!839, !536, i64 4}
!844 = !DILocation(line: 123, column: 5, scope: !811)
!845 = !DILocation(line: 123, column: 17, scope: !811)
!846 = !{!839, !536, i64 8}
!847 = !DILocation(line: 124, column: 5, scope: !811)
!848 = !DILocation(line: 124, column: 14, scope: !811)
!849 = !{!839, !540, i64 16}
!850 = !DILocation(line: 125, column: 5, scope: !811)
!851 = !DILocation(line: 125, column: 10, scope: !811)
!852 = !{!839, !540, i64 24}
!853 = !DILocation(line: 126, column: 5, scope: !811)
!854 = !DILocation(line: 126, column: 18, scope: !811)
!855 = !{!839, !540, i64 28}
!856 = !DILocation(line: 127, column: 5, scope: !811)
!857 = !DILocation(line: 127, column: 17, scope: !811)
!858 = !{!839, !540, i64 32}
!859 = !DILocation(line: 128, column: 39, scope: !811)
!860 = !DILocation(line: 128, column: 5, scope: !811)
!861 = !DILocation(line: 128, column: 16, scope: !811)
!862 = !{!839, !540, i64 36}
!863 = !DILocation(line: 134, column: 46, scope: !811)
!864 = !DILocation(line: 139, column: 49, scope: !811)
!865 = !DILocation(line: 139, column: 62, scope: !811)
!866 = !DILocation(line: 139, column: 19, scope: !811)
!867 = !DILocation(line: 143, column: 19, scope: !811)
!868 = !DILocation(line: 146, column: 35, scope: !811)
!869 = !DILocation(line: 146, column: 5, scope: !811)
!870 = !DILocation(line: 146, column: 22, scope: !811)
!871 = !{!839, !536, i64 12}
!872 = !DILocation(line: 147, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !811, file: !5, line: 147, column: 9)
!874 = !DILocation(line: 147, column: 9, scope: !811)
!875 = !DILocation(line: 152, column: 5, scope: !811)
!876 = !DILocation(line: 152, column: 9, scope: !811)
!877 = !{!839, !536, i64 44}
!878 = !DILocation(line: 153, column: 63, scope: !811)
!879 = !DILocation(line: 153, column: 5, scope: !811)
!880 = !DILocation(line: 153, column: 21, scope: !811)
!881 = !{!839, !536, i64 40}
!882 = !DILocation(line: 154, column: 28, scope: !811)
!883 = !DILocation(line: 154, column: 5, scope: !811)
!884 = !DILocation(line: 154, column: 9, scope: !811)
!885 = !{!839, !536, i64 20}
!886 = !DILocation(line: 0, scope: !826)
!887 = !DILocation(line: 157, column: 28, scope: !888)
!888 = distinct !DILexicalBlock(scope: !826, file: !5, line: 157, column: 5)
!889 = !DILocation(line: 157, column: 26, scope: !888)
!890 = !DILocation(line: 157, column: 5, scope: !826)
!891 = !DILocation(line: 158, column: 18, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !5, line: 157, column: 43)
!893 = !DILocation(line: 158, column: 16, scope: !892)
!894 = distinct !{!894, !890, !895, !386}
!895 = !DILocation(line: 159, column: 5, scope: !826)
!896 = !DILocation(line: 0, scope: !828)
!897 = !DILocation(line: 162, column: 25, scope: !898)
!898 = distinct !DILexicalBlock(scope: !828, file: !5, line: 162, column: 5)
!899 = !DILocation(line: 162, column: 23, scope: !898)
!900 = !DILocation(line: 162, column: 5, scope: !828)
!901 = !DILocation(line: 158, column: 9, scope: !892)
!902 = !DILocation(line: 157, column: 39, scope: !888)
!903 = !DILocation(line: 0, scope: !830)
!904 = !DILocation(line: 167, column: 30, scope: !834)
!905 = !DILocation(line: 167, column: 28, scope: !834)
!906 = !DILocation(line: 167, column: 5, scope: !830)
!907 = !DILocation(line: 163, column: 51, scope: !908)
!908 = distinct !DILexicalBlock(scope: !898, file: !5, line: 162, column: 42)
!909 = !DILocation(line: 163, column: 30, scope: !908)
!910 = !DILocation(line: 163, column: 9, scope: !908)
!911 = !DILocation(line: 163, column: 28, scope: !908)
!912 = !{i64 0, i64 4, !913, i64 4, i64 4, !913, i64 8, i64 4, !913, i64 12, i64 4, !913}
!913 = !{!540, !540, i64 0}
!914 = !DILocation(line: 162, column: 38, scope: !898)
!915 = distinct !{!915, !900, !916, !386}
!916 = !DILocation(line: 164, column: 5, scope: !828)
!917 = distinct !{!917, !906, !918, !386}
!918 = !DILocation(line: 173, column: 5, scope: !830)
!919 = !DILocation(line: 175, column: 5, scope: !811)
!920 = !DILocation(line: 175, column: 22, scope: !811)
!921 = !{!839, !840, i64 56}
!922 = !DILocation(line: 176, column: 5, scope: !811)
!923 = !DILocation(line: 176, column: 18, scope: !811)
!924 = !{!839, !377, i64 48}
!925 = !DILocation(line: 177, column: 5, scope: !811)
!926 = !DILocation(line: 168, column: 19, scope: !833)
!927 = !{!536, !536, i64 0}
!928 = !DILocation(line: 168, column: 9, scope: !833)
!929 = !DILocation(line: 168, column: 16, scope: !833)
!930 = !{i64 0, i64 8, !376, i64 8, i64 4, !927, i64 12, i64 4, !927, i64 16, i64 8, !376, i64 24, i64 1, !931, i64 25, i64 1, !479, i64 26, i64 2, !932, i64 28, i64 4, !913, i64 32, i64 4, !927, i64 36, i64 4, !927}
!931 = !{!538, !538, i64 0}
!932 = !{!539, !539, i64 0}
!933 = !DILocation(line: 169, column: 22, scope: !833)
!934 = !DILocation(line: 169, column: 43, scope: !833)
!935 = !DILocation(line: 169, column: 50, scope: !833)
!936 = !DILocation(line: 169, column: 48, scope: !833)
!937 = !DILocation(line: 169, column: 38, scope: !833)
!938 = !DILocation(line: 169, column: 9, scope: !833)
!939 = !DILocation(line: 169, column: 16, scope: !833)
!940 = !DILocation(line: 169, column: 20, scope: !833)
!941 = !DILocation(line: 0, scope: !832)
!942 = !DILocation(line: 170, column: 27, scope: !943)
!943 = distinct !DILexicalBlock(scope: !832, file: !5, line: 170, column: 9)
!944 = !DILocation(line: 170, column: 9, scope: !832)
!945 = !DILocation(line: 171, column: 29, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !5, line: 170, column: 46)
!947 = !DILocation(line: 171, column: 47, scope: !946)
!948 = !DILocation(line: 171, column: 27, scope: !946)
!949 = !DILocation(line: 170, column: 29, scope: !943)
!950 = distinct !{!950, !944, !951, !386}
!951 = !DILocation(line: 172, column: 9, scope: !832)
!952 = !DILocation(line: 171, column: 13, scope: !946)
!953 = !DILocation(line: 171, column: 20, scope: !946)
!954 = !DILocation(line: 170, column: 42, scope: !943)
!955 = !DILocation(line: 178, column: 1, scope: !811)
!956 = !DISubprogram(name: "halide_malloc", scope: !7, file: !7, line: 354, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!957 = !DISubroutineType(types: !958)
!958 = !{!80, !80, !14}
!959 = distinct !DISubprogram(name: "destroy", linkageName: "_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv", scope: !21, file: !5, line: 180, type: !220, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !219, retainedNodes: !960)
!960 = !{!961, !962}
!961 = !DILocalVariable(name: "this", arg: 1, scope: !959, type: !20, flags: DIFlagArtificial | DIFlagObjectPointer)
!962 = !DILocalVariable(name: "i", scope: !963, file: !5, line: 181, type: !13)
!963 = distinct !DILexicalBlock(scope: !959, file: !5, line: 181, column: 5)
!964 = !DILocation(line: 0, scope: !959)
!965 = !DILocation(line: 0, scope: !963)
!966 = !DILocation(line: 181, column: 30, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !5, line: 181, column: 5)
!968 = !DILocation(line: 181, column: 28, scope: !967)
!969 = !DILocation(line: 181, column: 5, scope: !963)
!970 = !DILocation(line: 185, column: 26, scope: !959)
!971 = !DILocation(line: 185, column: 5, scope: !959)
!972 = !DILocation(line: 186, column: 1, scope: !959)
!973 = !DILocation(line: 182, column: 38, scope: !974)
!974 = distinct !DILexicalBlock(scope: !967, file: !5, line: 181, column: 48)
!975 = !DILocation(line: 182, column: 9, scope: !974)
!976 = !DILocation(line: 183, column: 52, scope: !974)
!977 = !DILocation(line: 183, column: 59, scope: !974)
!978 = !DILocation(line: 183, column: 30, scope: !974)
!979 = !DILocation(line: 183, column: 9, scope: !974)
!980 = !DILocation(line: 181, column: 44, scope: !967)
!981 = distinct !{!981, !969, !982, !386}
!982 = !DILocation(line: 184, column: 5, scope: !963)
!983 = !DISubprogram(name: "halide_device_free", scope: !7, file: !7, line: 837, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!984 = !DISubprogram(name: "halide_free", scope: !7, file: !7, line: 355, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !80, !80}
!987 = distinct !DISubprogram(name: "djb_hash", linkageName: "_ZN6Halide7Runtime8Internal8djb_hashEPKhj", scope: !2, file: !5, line: 188, type: !988, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{!13, !214, !31}
!990 = !{!991, !992, !993, !994}
!991 = !DILocalVariable(name: "key", arg: 1, scope: !987, file: !5, line: 188, type: !214)
!992 = !DILocalVariable(name: "key_size", arg: 2, scope: !987, file: !5, line: 188, type: !31)
!993 = !DILocalVariable(name: "h", scope: !987, file: !5, line: 189, type: !13)
!994 = !DILocalVariable(name: "i", scope: !995, file: !5, line: 190, type: !31)
!995 = distinct !DILexicalBlock(scope: !987, file: !5, line: 190, column: 5)
!996 = !DILocation(line: 0, scope: !987)
!997 = !DILocation(line: 0, scope: !995)
!998 = !DILocation(line: 190, column: 26, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !5, line: 190, column: 5)
!1000 = !DILocation(line: 190, column: 5, scope: !995)
!1001 = !DILocation(line: 193, column: 5, scope: !987)
!1002 = !DILocation(line: 191, column: 22, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !5, line: 190, column: 43)
!1004 = !DILocation(line: 191, column: 28, scope: !1003)
!1005 = !DILocation(line: 191, column: 26, scope: !1003)
!1006 = !DILocation(line: 190, column: 39, scope: !999)
!1007 = distinct !{!1007, !1000, !1008, !386}
!1008 = !DILocation(line: 192, column: 5, scope: !995)
!1009 = distinct !DISubprogram(name: "prune_cache", linkageName: "_ZN6Halide7Runtime8Internal11prune_cacheEv", scope: !2, file: !5, line: 260, type: !1010, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null}
!1012 = !{!1013, !1014, !1016, !1019, !1020, !1021}
!1013 = !DILocalVariable(name: "prune_candidate", scope: !1009, file: !5, line: 264, type: !20)
!1014 = !DILocalVariable(name: "more_recent", scope: !1015, file: !5, line: 267, type: !20)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !5, line: 266, column: 40)
!1016 = !DILocalVariable(name: "h", scope: !1017, file: !5, line: 270, type: !13)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !5, line: 269, column: 49)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !5, line: 269, column: 13)
!1019 = !DILocalVariable(name: "index", scope: !1017, file: !5, line: 271, type: !13)
!1020 = !DILocalVariable(name: "prev_hash_entry", scope: !1017, file: !5, line: 274, type: !20)
!1021 = !DILocalVariable(name: "i", scope: !1022, file: !5, line: 302, type: !13)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !5, line: 302, column: 13)
!1023 = !DILocation(line: 264, column: 35, scope: !1009)
!1024 = !DILocation(line: 0, scope: !1009)
!1025 = !DILocation(line: 265, column: 12, scope: !1009)
!1026 = !DILocation(line: 265, column: 33, scope: !1009)
!1027 = !DILocation(line: 265, column: 31, scope: !1009)
!1028 = !DILocation(line: 265, column: 48, scope: !1009)
!1029 = !DILocation(line: 265, column: 5, scope: !1009)
!1030 = !DILocation(line: 267, column: 52, scope: !1015)
!1031 = !DILocation(line: 0, scope: !1015)
!1032 = !DILocation(line: 269, column: 30, scope: !1018)
!1033 = !DILocation(line: 269, column: 43, scope: !1018)
!1034 = !DILocation(line: 269, column: 13, scope: !1015)
!1035 = !DILocation(line: 270, column: 43, scope: !1017)
!1036 = !DILocation(line: 0, scope: !1017)
!1037 = !DILocation(line: 271, column: 32, scope: !1017)
!1038 = !DILocation(line: 274, column: 43, scope: !1017)
!1039 = !DILocation(line: 275, column: 33, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1017, file: !5, line: 275, column: 17)
!1041 = !DILocation(line: 275, column: 17, scope: !1017)
!1042 = !DILocation(line: 276, column: 57, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !5, line: 275, column: 53)
!1044 = !DILocation(line: 276, column: 38, scope: !1043)
!1045 = !DILocation(line: 277, column: 13, scope: !1043)
!1046 = !DILocation(line: 278, column: 40, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !5, line: 277, column: 20)
!1048 = !DILocation(line: 278, column: 51, scope: !1047)
!1049 = !DILocation(line: 278, column: 71, scope: !1047)
!1050 = !DILocation(line: 278, column: 76, scope: !1047)
!1051 = !DILocation(line: 278, column: 17, scope: !1047)
!1052 = distinct !{!1052, !1051, !1053, !386}
!1053 = !DILocation(line: 280, column: 17, scope: !1047)
!1054 = !DILocation(line: 281, column: 17, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !5, line: 281, column: 17)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !5, line: 281, column: 17)
!1057 = distinct !DILexicalBlock(scope: !1047, file: !5, line: 281, column: 17)
!1058 = !DILocation(line: 282, column: 58, scope: !1047)
!1059 = !DILocation(line: 282, column: 34, scope: !1047)
!1060 = !DILocation(line: 282, column: 39, scope: !1047)
!1061 = !DILocation(line: 286, column: 17, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1017, file: !5, line: 286, column: 17)
!1063 = !DILocation(line: 286, column: 37, scope: !1062)
!1064 = !DILocation(line: 286, column: 17, scope: !1017)
!1065 = !DILocation(line: 287, column: 37, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !5, line: 286, column: 57)
!1067 = !DILocation(line: 288, column: 13, scope: !1066)
!1068 = !DILocation(line: 289, column: 29, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1017, file: !5, line: 289, column: 17)
!1070 = !DILocation(line: 289, column: 17, scope: !1017)
!1071 = !DILocation(line: 290, column: 61, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !5, line: 289, column: 41)
!1073 = !DILocation(line: 290, column: 30, scope: !1072)
!1074 = !DILocation(line: 290, column: 42, scope: !1072)
!1075 = !DILocation(line: 291, column: 13, scope: !1072)
!1076 = !DILocation(line: 294, column: 17, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1017, file: !5, line: 294, column: 17)
!1078 = !DILocation(line: 294, column: 36, scope: !1077)
!1079 = !DILocation(line: 294, column: 17, scope: !1017)
!1080 = !DILocation(line: 295, column: 36, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !5, line: 294, column: 56)
!1082 = !DILocation(line: 296, column: 13, scope: !1081)
!1083 = !DILocation(line: 297, column: 46, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1017, file: !5, line: 297, column: 17)
!1085 = !DILocation(line: 297, column: 17, scope: !1017)
!1086 = !DILocation(line: 297, column: 34, scope: !1084)
!1087 = !DILocation(line: 298, column: 46, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !5, line: 297, column: 58)
!1089 = !DILocation(line: 299, column: 13, scope: !1088)
!1090 = !DILocation(line: 0, scope: !1022)
!1091 = !DILocation(line: 302, column: 55, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1022, file: !5, line: 302, column: 13)
!1093 = !DILocation(line: 302, column: 36, scope: !1092)
!1094 = !DILocation(line: 302, column: 13, scope: !1022)
!1095 = !DILocation(line: 303, column: 36, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !5, line: 302, column: 73)
!1097 = !DILocation(line: 307, column: 30, scope: !1017)
!1098 = !DILocation(line: 308, column: 34, scope: !1017)
!1099 = !DILocation(line: 308, column: 13, scope: !1017)
!1100 = !DILocation(line: 309, column: 9, scope: !1017)
!1101 = !DILocalVariable(name: "this", arg: 1, scope: !1102, type: !103, flags: DIFlagArtificial | DIFlagObjectPointer)
!1102 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !66, file: !7, line: 1518, type: !192, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !198, retainedNodes: !1103)
!1103 = !{!1101}
!1104 = !DILocation(line: 0, scope: !1102, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 303, column: 63, scope: !1096)
!1106 = !DILocalVariable(name: "this", arg: 1, scope: !1107, type: !103, flags: DIFlagArtificial | DIFlagObjectPointer)
!1107 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !66, file: !7, line: 1506, type: !195, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !197, retainedNodes: !1108)
!1108 = !{!1106, !1109, !1110}
!1109 = !DILocalVariable(name: "index", scope: !1107, file: !7, line: 1507, type: !328)
!1110 = !DILocalVariable(name: "i", scope: !1111, file: !7, line: 1508, type: !38)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !7, line: 1508, column: 9)
!1112 = !DILocation(line: 0, scope: !1107, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 1519, column: 25, scope: !1102, inlinedAt: !1105)
!1114 = !DILocation(line: 0, scope: !1111, inlinedAt: !1113)
!1115 = !DILocation(line: 1508, column: 29, scope: !1116, inlinedAt: !1113)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !7, line: 1508, column: 9)
!1117 = !DILocation(line: 1508, column: 27, scope: !1116, inlinedAt: !1113)
!1118 = !DILocation(line: 1508, column: 9, scope: !1111, inlinedAt: !1113)
!1119 = !DILocation(line: 0, scope: !553, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 1514, column: 36, scope: !1107, inlinedAt: !1113)
!1121 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !1120)
!1122 = !DILocalVariable(name: "this", arg: 1, scope: !1123, type: !103, flags: DIFlagArtificial | DIFlagObjectPointer)
!1123 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !66, file: !7, line: 1495, type: !195, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !194, retainedNodes: !1124)
!1124 = !{!1122, !1125, !1126}
!1125 = !DILocalVariable(name: "index", scope: !1123, file: !7, line: 1496, type: !328)
!1126 = !DILocalVariable(name: "i", scope: !1127, file: !7, line: 1497, type: !38)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !7, line: 1497, column: 9)
!1128 = !DILocation(line: 0, scope: !1123, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 1519, column: 33, scope: !1102, inlinedAt: !1105)
!1130 = !DILocation(line: 0, scope: !1127, inlinedAt: !1129)
!1131 = !DILocation(line: 1497, column: 9, scope: !1127, inlinedAt: !1129)
!1132 = !DILocation(line: 1509, column: 24, scope: !1133, inlinedAt: !1113)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !7, line: 1509, column: 17)
!1134 = distinct !DILexicalBlock(scope: !1116, file: !7, line: 1508, column: 46)
!1135 = !DILocation(line: 1509, column: 31, scope: !1133, inlinedAt: !1113)
!1136 = !DILocation(line: 1509, column: 17, scope: !1134, inlinedAt: !1113)
!1137 = !DILocation(line: 1510, column: 61, scope: !1138, inlinedAt: !1113)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !7, line: 1509, column: 36)
!1139 = !DILocation(line: 1510, column: 68, scope: !1138, inlinedAt: !1113)
!1140 = !DILocation(line: 1510, column: 51, scope: !1138, inlinedAt: !1113)
!1141 = !DILocation(line: 1510, column: 23, scope: !1138, inlinedAt: !1113)
!1142 = !DILocation(line: 1511, column: 13, scope: !1138, inlinedAt: !1113)
!1143 = !DILocation(line: 1508, column: 42, scope: !1116, inlinedAt: !1113)
!1144 = distinct !{!1144, !1118, !1145, !386}
!1145 = !DILocation(line: 1512, column: 9, scope: !1111, inlinedAt: !1113)
!1146 = !DILocation(line: 1498, column: 24, scope: !1147, inlinedAt: !1129)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !7, line: 1498, column: 17)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !7, line: 1497, column: 46)
!1149 = distinct !DILexicalBlock(scope: !1127, file: !7, line: 1497, column: 9)
!1150 = !DILocation(line: 1498, column: 31, scope: !1147, inlinedAt: !1129)
!1151 = !DILocation(line: 1498, column: 17, scope: !1148, inlinedAt: !1129)
!1152 = !DILocation(line: 1499, column: 61, scope: !1153, inlinedAt: !1129)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !7, line: 1498, column: 36)
!1154 = !DILocation(line: 1499, column: 68, scope: !1153, inlinedAt: !1129)
!1155 = !DILocation(line: 1499, column: 51, scope: !1153, inlinedAt: !1129)
!1156 = !DILocation(line: 1499, column: 23, scope: !1153, inlinedAt: !1129)
!1157 = !DILocation(line: 1500, column: 13, scope: !1153, inlinedAt: !1129)
!1158 = !DILocation(line: 1497, column: 42, scope: !1149, inlinedAt: !1129)
!1159 = !DILocation(line: 1497, column: 27, scope: !1149, inlinedAt: !1129)
!1160 = distinct !{!1160, !1131, !1161, !386}
!1161 = !DILocation(line: 1501, column: 9, scope: !1127, inlinedAt: !1129)
!1162 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !1120)
!1163 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !1120)
!1164 = !DILocation(line: 1513, column: 15, scope: !1107, inlinedAt: !1113)
!1165 = !DILocation(line: 0, scope: !553, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 1502, column: 36, scope: !1123, inlinedAt: !1129)
!1167 = !DILocation(line: 1519, column: 31, scope: !1102, inlinedAt: !1105)
!1168 = !DILocation(line: 303, column: 39, scope: !1096)
!1169 = !DILocation(line: 302, column: 69, scope: !1092)
!1170 = distinct !{!1170, !1094, !1171, !386}
!1171 = !DILocation(line: 304, column: 13, scope: !1022)
!1172 = distinct !{!1172, !1029, !1173, !386}
!1173 = !DILocation(line: 312, column: 5, scope: !1009)
!1174 = !DILocation(line: 316, column: 1, scope: !1009)
!1175 = !DISubprogram(name: "halide_print", scope: !7, file: !7, line: 97, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !80, !264}
!1178 = !DISubprogram(name: "abort", scope: !12, file: !12, line: 108, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1179 = distinct !DISubprogram(name: "halide_memoization_cache_set_size", scope: !5, file: !5, line: 324, type: !1180, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !234}
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "size", arg: 1, scope: !1179, file: !5, line: 324, type: !234)
!1184 = !DILocalVariable(name: "lock", scope: !1179, file: !5, line: 329, type: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !2, file: !1186, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1187, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!1186 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!1187 = !{!1188, !1190, !1194}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1185, file: !1186, line: 12, baseType: !1189, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!1190 = !DISubprogram(name: "ScopedMutexLock", scope: !1185, file: !1186, line: 14, type: !1191, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1193, !1189}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1194 = !DISubprogram(name: "~ScopedMutexLock", scope: !1185, file: !1186, line: 19, type: !1195, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !1193}
!1197 = !DILocation(line: 0, scope: !1179)
!1198 = !DILocation(line: 325, column: 14, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1179, file: !5, line: 325, column: 9)
!1200 = !DILocation(line: 325, column: 9, scope: !1179)
!1201 = !DILocalVariable(name: "this", arg: 1, scope: !1202, type: !1205, flags: DIFlagArtificial | DIFlagObjectPointer)
!1202 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !1185, file: !1186, line: 14, type: !1191, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !1190, retainedNodes: !1203)
!1203 = !{!1201, !1204}
!1204 = !DILocalVariable(name: "mutex", arg: 2, scope: !1202, file: !1186, line: 14, type: !1189)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 32)
!1206 = !DILocation(line: 0, scope: !1202, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 329, column: 21, scope: !1179)
!1208 = !DILocation(line: 16, column: 9, scope: !1209, inlinedAt: !1207)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !1186, line: 15, column: 24)
!1210 = !DILocation(line: 331, column: 20, scope: !1179)
!1211 = !DILocation(line: 332, column: 5, scope: !1179)
!1212 = !DILocalVariable(name: "this", arg: 1, scope: !1213, type: !1205, flags: DIFlagArtificial | DIFlagObjectPointer)
!1213 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !1185, file: !1186, line: 19, type: !1195, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !1194, retainedNodes: !1214)
!1214 = !{!1212}
!1215 = !DILocation(line: 0, scope: !1213, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 333, column: 1, scope: !1179)
!1217 = !DILocation(line: 20, column: 9, scope: !1218, inlinedAt: !1216)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !1186, line: 19, column: 38)
!1219 = !DILocation(line: 333, column: 1, scope: !1179)
!1220 = distinct !DISubprogram(name: "halide_memoization_cache_lookup", scope: !5, file: !5, line: 335, type: !1221, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!38, !80, !214, !37, !64, !37, !218}
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1238, !1240, !1244, !1247, !1249, !1252, !1256}
!1224 = !DILocalVariable(name: "user_context", arg: 1, scope: !1220, file: !5, line: 335, type: !80)
!1225 = !DILocalVariable(name: "cache_key", arg: 2, scope: !1220, file: !5, line: 335, type: !214)
!1226 = !DILocalVariable(name: "size", arg: 3, scope: !1220, file: !5, line: 335, type: !37)
!1227 = !DILocalVariable(name: "computed_bounds", arg: 4, scope: !1220, file: !5, line: 336, type: !64)
!1228 = !DILocalVariable(name: "tuple_count", arg: 5, scope: !1220, file: !5, line: 336, type: !37)
!1229 = !DILocalVariable(name: "tuple_buffers", arg: 6, scope: !1220, file: !5, line: 336, type: !218)
!1230 = !DILocalVariable(name: "h", scope: !1220, file: !5, line: 337, type: !13)
!1231 = !DILocalVariable(name: "index", scope: !1220, file: !5, line: 338, type: !13)
!1232 = !DILocalVariable(name: "lock", scope: !1220, file: !5, line: 340, type: !1185)
!1233 = !DILocalVariable(name: "entry", scope: !1220, file: !5, line: 355, type: !20)
!1234 = !DILocalVariable(name: "all_bounds_equal", scope: !1235, file: !5, line: 363, type: !58)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !5, line: 360, column: 58)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !5, line: 357, column: 13)
!1237 = distinct !DILexicalBlock(scope: !1220, file: !5, line: 356, column: 30)
!1238 = !DILocalVariable(name: "i", scope: !1239, file: !5, line: 364, type: !37)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !5, line: 364, column: 13)
!1240 = !DILocalVariable(name: "i", scope: !1241, file: !5, line: 388, type: !37)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !5, line: 388, column: 17)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !5, line: 368, column: 35)
!1243 = distinct !DILexicalBlock(scope: !1235, file: !5, line: 368, column: 17)
!1244 = !DILocalVariable(name: "buf", scope: !1245, file: !5, line: 389, type: !64)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !5, line: 388, column: 59)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !5, line: 388, column: 17)
!1247 = !DILocalVariable(name: "i", scope: !1248, file: !5, line: 401, type: !37)
!1248 = distinct !DILexicalBlock(scope: !1220, file: !5, line: 401, column: 5)
!1249 = !DILocalVariable(name: "buf", scope: !1250, file: !5, line: 402, type: !64)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !5, line: 401, column: 47)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !5, line: 401, column: 5)
!1252 = !DILocalVariable(name: "j", scope: !1253, file: !5, line: 406, type: !37)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !5, line: 406, column: 13)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !5, line: 405, column: 35)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !5, line: 405, column: 13)
!1256 = !DILocalVariable(name: "header", scope: !1250, file: !5, line: 413, type: !323)
!1257 = !DILocation(line: 0, scope: !1220)
!1258 = !DILocation(line: 337, column: 18, scope: !1220)
!1259 = !DILocation(line: 338, column: 24, scope: !1220)
!1260 = !DILocation(line: 0, scope: !1202, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 340, column: 21, scope: !1220)
!1262 = !DILocation(line: 16, column: 9, scope: !1209, inlinedAt: !1261)
!1263 = !DILocation(line: 355, column: 25, scope: !1220)
!1264 = !DILocation(line: 356, column: 18, scope: !1220)
!1265 = !DILocation(line: 356, column: 5, scope: !1220)
!1266 = !DILocation(line: 0, scope: !1248)
!1267 = !DILocation(line: 401, column: 27, scope: !1251)
!1268 = !DILocation(line: 401, column: 5, scope: !1248)
!1269 = !DILocation(line: 357, column: 20, scope: !1236)
!1270 = !DILocation(line: 357, column: 25, scope: !1236)
!1271 = !DILocation(line: 357, column: 30, scope: !1236)
!1272 = !DILocation(line: 357, column: 40, scope: !1236)
!1273 = !DILocation(line: 357, column: 49, scope: !1236)
!1274 = !DILocation(line: 357, column: 65, scope: !1236)
!1275 = !DILocation(line: 358, column: 31, scope: !1236)
!1276 = !DILocation(line: 358, column: 13, scope: !1236)
!1277 = !DILocation(line: 358, column: 53, scope: !1236)
!1278 = !DILocation(line: 359, column: 54, scope: !1236)
!1279 = !DILocation(line: 359, column: 13, scope: !1236)
!1280 = !DILocation(line: 359, column: 71, scope: !1236)
!1281 = !DILocation(line: 360, column: 20, scope: !1236)
!1282 = !DILocation(line: 360, column: 32, scope: !1236)
!1283 = !DILocation(line: 357, column: 13, scope: !1237)
!1284 = !DILocation(line: 0, scope: !1235)
!1285 = !DILocation(line: 0, scope: !1239)
!1286 = !DILocation(line: 364, column: 13, scope: !1239)
!1287 = !DILocation(line: 368, column: 17, scope: !1235)
!1288 = !DILocation(line: 365, column: 53, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !5, line: 364, column: 75)
!1290 = distinct !DILexicalBlock(scope: !1239, file: !5, line: 364, column: 13)
!1291 = !DILocation(line: 365, column: 78, scope: !1289)
!1292 = !DILocation(line: 365, column: 85, scope: !1289)
!1293 = !DILocation(line: 365, column: 36, scope: !1289)
!1294 = !DILocation(line: 364, column: 71, scope: !1290)
!1295 = !DILocation(line: 364, column: 50, scope: !1290)
!1296 = distinct !{!1296, !1286, !1297, !386}
!1297 = !DILocation(line: 366, column: 13, scope: !1239)
!1298 = !DILocation(line: 369, column: 30, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1242, file: !5, line: 369, column: 21)
!1300 = !DILocation(line: 369, column: 27, scope: !1299)
!1301 = !DILocation(line: 369, column: 21, scope: !1242)
!1302 = !DILocation(line: 370, column: 21, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !5, line: 370, column: 21)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !5, line: 370, column: 21)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !5, line: 369, column: 50)
!1306 = !DILocation(line: 370, column: 21, scope: !1304)
!1307 = !DILocation(line: 370, column: 21, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !5, line: 370, column: 21)
!1309 = !DILocation(line: 371, column: 32, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !5, line: 371, column: 25)
!1311 = !DILocation(line: 371, column: 44, scope: !1310)
!1312 = !DILocation(line: 371, column: 25, scope: !1305)
!1313 = !DILocation(line: 372, column: 66, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !5, line: 371, column: 56)
!1315 = !DILocation(line: 372, column: 45, scope: !1314)
!1316 = !DILocation(line: 372, column: 57, scope: !1314)
!1317 = !DILocation(line: 377, column: 21, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !5, line: 377, column: 21)
!1319 = distinct !DILexicalBlock(scope: !1305, file: !5, line: 377, column: 21)
!1320 = !DILocation(line: 373, column: 21, scope: !1314)
!1321 = !DILocation(line: 374, column: 25, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !5, line: 374, column: 25)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !5, line: 374, column: 25)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !5, line: 373, column: 28)
!1325 = !DILocation(line: 374, column: 25, scope: !1323)
!1326 = !DILocation(line: 374, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !5, line: 374, column: 25)
!1328 = !DILocation(line: 375, column: 54, scope: !1324)
!1329 = !DILocation(line: 375, column: 45, scope: !1324)
!1330 = !DILocation(line: 377, column: 21, scope: !1319)
!1331 = !DILocation(line: 377, column: 21, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1318, file: !5, line: 377, column: 21)
!1333 = !DILocation(line: 378, column: 28, scope: !1305)
!1334 = !DILocation(line: 378, column: 62, scope: !1305)
!1335 = !DILocation(line: 378, column: 41, scope: !1305)
!1336 = !DILocation(line: 378, column: 53, scope: !1305)
!1337 = !DILocation(line: 380, column: 40, scope: !1305)
!1338 = !DILocation(line: 381, column: 42, scope: !1305)
!1339 = !DILocation(line: 381, column: 40, scope: !1305)
!1340 = !DILocation(line: 382, column: 44, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1305, file: !5, line: 382, column: 25)
!1342 = !DILocation(line: 382, column: 25, scope: !1305)
!1343 = !DILocation(line: 383, column: 45, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !5, line: 382, column: 56)
!1345 = !DILocation(line: 383, column: 57, scope: !1344)
!1346 = !DILocation(line: 384, column: 21, scope: !1344)
!1347 = !DILocation(line: 385, column: 40, scope: !1305)
!1348 = !DILocation(line: 386, column: 17, scope: !1305)
!1349 = !DILocation(line: 0, scope: !1241)
!1350 = !DILocation(line: 388, column: 17, scope: !1241)
!1351 = !DILocation(line: 389, column: 44, scope: !1245)
!1352 = !DILocation(line: 0, scope: !1245)
!1353 = !DILocation(line: 390, column: 35, scope: !1245)
!1354 = !DILocation(line: 390, column: 28, scope: !1245)
!1355 = !DILocation(line: 390, column: 26, scope: !1245)
!1356 = !DILocation(line: 388, column: 55, scope: !1246)
!1357 = !DILocation(line: 388, column: 39, scope: !1246)
!1358 = distinct !{!1358, !1350, !1359, !386}
!1359 = !DILocation(line: 391, column: 17, scope: !1241)
!1360 = !DILocation(line: 398, column: 24, scope: !1237)
!1361 = distinct !{!1361, !1265, !1362, !386}
!1362 = !DILocation(line: 399, column: 5, scope: !1220)
!1363 = !DILocation(line: 402, column: 32, scope: !1250)
!1364 = !DILocation(line: 0, scope: !1250)
!1365 = !DILocation(line: 0, scope: !1102, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 404, column: 66, scope: !1250)
!1367 = !DILocation(line: 0, scope: !1107, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 1519, column: 25, scope: !1102, inlinedAt: !1366)
!1369 = !DILocation(line: 0, scope: !1111, inlinedAt: !1368)
!1370 = !DILocation(line: 1508, column: 29, scope: !1116, inlinedAt: !1368)
!1371 = !DILocation(line: 1508, column: 27, scope: !1116, inlinedAt: !1368)
!1372 = !DILocation(line: 1508, column: 9, scope: !1111, inlinedAt: !1368)
!1373 = !DILocation(line: 0, scope: !553, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 1514, column: 36, scope: !1107, inlinedAt: !1368)
!1375 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !1374)
!1376 = !DILocation(line: 0, scope: !1123, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 1519, column: 33, scope: !1102, inlinedAt: !1366)
!1378 = !DILocation(line: 0, scope: !1127, inlinedAt: !1377)
!1379 = !DILocation(line: 1497, column: 9, scope: !1127, inlinedAt: !1377)
!1380 = !DILocation(line: 1509, column: 24, scope: !1133, inlinedAt: !1368)
!1381 = !DILocation(line: 1509, column: 31, scope: !1133, inlinedAt: !1368)
!1382 = !DILocation(line: 1509, column: 17, scope: !1134, inlinedAt: !1368)
!1383 = !DILocation(line: 1510, column: 61, scope: !1138, inlinedAt: !1368)
!1384 = !DILocation(line: 1510, column: 68, scope: !1138, inlinedAt: !1368)
!1385 = !DILocation(line: 1510, column: 51, scope: !1138, inlinedAt: !1368)
!1386 = !DILocation(line: 1510, column: 23, scope: !1138, inlinedAt: !1368)
!1387 = !DILocation(line: 1511, column: 13, scope: !1138, inlinedAt: !1368)
!1388 = !DILocation(line: 1508, column: 42, scope: !1116, inlinedAt: !1368)
!1389 = distinct !{!1389, !1372, !1390, !386}
!1390 = !DILocation(line: 1512, column: 9, scope: !1111, inlinedAt: !1368)
!1391 = !DILocation(line: 1498, column: 24, scope: !1147, inlinedAt: !1377)
!1392 = !DILocation(line: 1498, column: 31, scope: !1147, inlinedAt: !1377)
!1393 = !DILocation(line: 1498, column: 17, scope: !1148, inlinedAt: !1377)
!1394 = !DILocation(line: 1499, column: 61, scope: !1153, inlinedAt: !1377)
!1395 = !DILocation(line: 1499, column: 68, scope: !1153, inlinedAt: !1377)
!1396 = !DILocation(line: 1499, column: 51, scope: !1153, inlinedAt: !1377)
!1397 = !DILocation(line: 1499, column: 23, scope: !1153, inlinedAt: !1377)
!1398 = !DILocation(line: 1500, column: 13, scope: !1153, inlinedAt: !1377)
!1399 = !DILocation(line: 1497, column: 42, scope: !1149, inlinedAt: !1377)
!1400 = !DILocation(line: 1497, column: 27, scope: !1149, inlinedAt: !1377)
!1401 = distinct !{!1401, !1379, !1402, !386}
!1402 = !DILocation(line: 1501, column: 9, scope: !1127, inlinedAt: !1377)
!1403 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !1374)
!1404 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !1374)
!1405 = !DILocation(line: 1513, column: 15, scope: !1107, inlinedAt: !1368)
!1406 = !DILocation(line: 0, scope: !553, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 1502, column: 36, scope: !1123, inlinedAt: !1377)
!1408 = !DILocation(line: 1519, column: 31, scope: !1102, inlinedAt: !1366)
!1409 = !DILocation(line: 0, scope: !781, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 404, column: 84, scope: !1250)
!1411 = !DILocation(line: 109, column: 19, scope: !781, inlinedAt: !1410)
!1412 = !DILocation(line: 110, column: 15, scope: !781, inlinedAt: !1410)
!1413 = !DILocation(line: 110, column: 25, scope: !781, inlinedAt: !1410)
!1414 = !DILocation(line: 110, column: 23, scope: !781, inlinedAt: !1410)
!1415 = !DILocation(line: 404, column: 82, scope: !1250)
!1416 = !DILocation(line: 404, column: 33, scope: !1250)
!1417 = !DILocation(line: 404, column: 14, scope: !1250)
!1418 = !DILocation(line: 404, column: 19, scope: !1250)
!1419 = !DILocation(line: 405, column: 23, scope: !1255)
!1420 = !DILocation(line: 405, column: 13, scope: !1250)
!1421 = !DILocation(line: 0, scope: !1253)
!1422 = !DILocation(line: 406, column: 35, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1253, file: !5, line: 406, column: 13)
!1424 = !DILocation(line: 406, column: 13, scope: !1253)
!1425 = !DILocation(line: 407, column: 81, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !5, line: 406, column: 45)
!1427 = !DILocation(line: 407, column: 65, scope: !1426)
!1428 = !DILocation(line: 407, column: 87, scope: !1426)
!1429 = !DILocation(line: 407, column: 43, scope: !1426)
!1430 = !DILocation(line: 407, column: 17, scope: !1426)
!1431 = !DILocation(line: 408, column: 17, scope: !1426)
!1432 = !DILocation(line: 408, column: 39, scope: !1426)
!1433 = !DILocation(line: 408, column: 44, scope: !1426)
!1434 = distinct !{!1434, !1424, !1435, !386}
!1435 = !DILocation(line: 409, column: 13, scope: !1253)
!1436 = !DILocation(line: 0, scope: !781, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 412, column: 22, scope: !1250)
!1438 = !DILocation(line: 109, column: 19, scope: !781, inlinedAt: !1437)
!1439 = !DILocation(line: 110, column: 15, scope: !781, inlinedAt: !1437)
!1440 = !DILocation(line: 110, column: 25, scope: !781, inlinedAt: !1437)
!1441 = !DILocation(line: 110, column: 23, scope: !781, inlinedAt: !1437)
!1442 = !DILocation(line: 412, column: 19, scope: !1250)
!1443 = !DILocation(line: 413, column: 36, scope: !1250)
!1444 = !DILocation(line: 414, column: 17, scope: !1250)
!1445 = !DILocation(line: 414, column: 22, scope: !1250)
!1446 = !{!1447, !540, i64 4}
!1447 = !{!"_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE", !536, i64 0, !540, i64 4}
!1448 = !DILocation(line: 415, column: 17, scope: !1250)
!1449 = !DILocation(line: 415, column: 23, scope: !1250)
!1450 = !{!1447, !536, i64 0}
!1451 = !DILocation(line: 401, column: 43, scope: !1251)
!1452 = distinct !{!1452, !1268, !1453, !386}
!1453 = !DILocation(line: 416, column: 5, scope: !1248)
!1454 = !DILocation(line: 393, column: 24, scope: !1242)
!1455 = !DILocation(line: 393, column: 37, scope: !1242)
!1456 = !DILocation(line: 20, column: 9, scope: !1218, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 423, column: 1, scope: !1220)
!1458 = !DILocation(line: 0, scope: !1213, inlinedAt: !1457)
!1459 = !DILocation(line: 423, column: 1, scope: !1220)
!1460 = distinct !DISubprogram(name: "halide_memoization_cache_store", scope: !5, file: !5, line: 425, type: !1461, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!38, !80, !214, !37, !64, !37, !218, !58, !69}
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1480, !1481, !1484, !1487, !1491, !1492, !1495, !1498, !1499, !1500, !1504}
!1464 = !DILocalVariable(name: "user_context", arg: 1, scope: !1460, file: !5, line: 425, type: !80)
!1465 = !DILocalVariable(name: "cache_key", arg: 2, scope: !1460, file: !5, line: 425, type: !214)
!1466 = !DILocalVariable(name: "size", arg: 3, scope: !1460, file: !5, line: 425, type: !37)
!1467 = !DILocalVariable(name: "computed_bounds", arg: 4, scope: !1460, file: !5, line: 426, type: !64)
!1468 = !DILocalVariable(name: "tuple_count", arg: 5, scope: !1460, file: !5, line: 427, type: !37)
!1469 = !DILocalVariable(name: "tuple_buffers", arg: 6, scope: !1460, file: !5, line: 427, type: !218)
!1470 = !DILocalVariable(name: "has_eviction_key", arg: 7, scope: !1460, file: !5, line: 428, type: !58)
!1471 = !DILocalVariable(name: "eviction_key", arg: 8, scope: !1460, file: !5, line: 428, type: !69)
!1472 = !DILocalVariable(name: "h", scope: !1460, file: !5, line: 431, type: !13)
!1473 = !DILocalVariable(name: "index", scope: !1460, file: !5, line: 433, type: !13)
!1474 = !DILocalVariable(name: "lock", scope: !1460, file: !5, line: 435, type: !1185)
!1475 = !DILocalVariable(name: "entry", scope: !1460, file: !5, line: 450, type: !20)
!1476 = !DILocalVariable(name: "all_bounds_equal", scope: !1477, file: !5, line: 457, type: !58)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !5, line: 455, column: 58)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !5, line: 452, column: 13)
!1479 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 451, column: 30)
!1480 = !DILocalVariable(name: "no_host_pointers_equal", scope: !1477, file: !5, line: 458, type: !58)
!1481 = !DILocalVariable(name: "i", scope: !1482, file: !5, line: 460, type: !37)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !5, line: 460, column: 17)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 459, column: 13)
!1484 = !DILocalVariable(name: "buf", scope: !1485, file: !5, line: 461, type: !64)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !5, line: 460, column: 79)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !5, line: 460, column: 17)
!1487 = !DILocalVariable(name: "i", scope: !1488, file: !5, line: 472, type: !37)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !5, line: 472, column: 17)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !5, line: 468, column: 35)
!1490 = distinct !DILexicalBlock(scope: !1477, file: !5, line: 468, column: 17)
!1491 = !DILocalVariable(name: "added_size", scope: !1460, file: !5, line: 481, type: !69)
!1492 = !DILocalVariable(name: "i", scope: !1493, file: !5, line: 483, type: !37)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !5, line: 483, column: 9)
!1494 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 482, column: 5)
!1495 = !DILocalVariable(name: "buf", scope: !1496, file: !5, line: 484, type: !64)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !5, line: 483, column: 51)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !5, line: 483, column: 9)
!1498 = !DILocalVariable(name: "new_entry", scope: !1460, file: !5, line: 491, type: !20)
!1499 = !DILocalVariable(name: "inited", scope: !1460, file: !5, line: 492, type: !58)
!1500 = !DILocalVariable(name: "i", scope: !1501, file: !5, line: 502, type: !37)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !5, line: 502, column: 9)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !5, line: 497, column: 18)
!1503 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 497, column: 9)
!1504 = !DILocalVariable(name: "i", scope: !1505, file: !5, line: 525, type: !37)
!1505 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 525, column: 5)
!1506 = !DILocation(line: 0, scope: !1460)
!1507 = !DILocation(line: 0, scope: !441, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 429, column: 5, scope: !1460)
!1509 = !DILocation(line: 44, column: 27, scope: !450, inlinedAt: !1508)
!1510 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !1508)
!1511 = !DILocation(line: 48, column: 13, scope: !453, inlinedAt: !1508)
!1512 = !DILocation(line: 49, column: 23, scope: !477, inlinedAt: !1508)
!1513 = !DILocation(line: 50, column: 18, scope: !477, inlinedAt: !1508)
!1514 = !DILocation(line: 51, column: 9, scope: !477, inlinedAt: !1508)
!1515 = !DILocation(line: 0, scope: !455, inlinedAt: !1508)
!1516 = !DILocation(line: 0, scope: !458, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 429, column: 25, scope: !1460)
!1518 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1517)
!1519 = !DILocalVariable(name: "this", arg: 1, scope: !1520, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!1520 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !245, file: !243, line: 72, type: !270, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !269, retainedNodes: !1521)
!1521 = !{!1519, !1522}
!1522 = !DILocalVariable(name: "arg", arg: 2, scope: !1520, file: !243, line: 72, type: !37)
!1523 = !DILocation(line: 0, scope: !1520, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 429, column: 80, scope: !1460)
!1525 = !DILocation(line: 73, column: 48, scope: !1520, inlinedAt: !1524)
!1526 = !DILocation(line: 73, column: 15, scope: !1520, inlinedAt: !1524)
!1527 = !DILocation(line: 0, scope: !458, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 429, column: 100, scope: !1460)
!1529 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1528)
!1530 = !DILocalVariable(name: "this", arg: 1, scope: !1531, type: !445, flags: DIFlagArtificial | DIFlagObjectPointer)
!1531 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !245, file: !243, line: 77, type: !273, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, declaration: !272, retainedNodes: !1532)
!1532 = !{!1530, !1533}
!1533 = !DILocalVariable(name: "arg", arg: 2, scope: !1531, file: !243, line: 77, type: !69)
!1534 = !DILocation(line: 0, scope: !1531, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 429, column: 120, scope: !1460)
!1536 = !DILocation(line: 78, column: 15, scope: !1531, inlinedAt: !1535)
!1537 = !DILocation(line: 0, scope: !458, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 429, column: 136, scope: !1460)
!1539 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1538)
!1540 = !DILocation(line: 0, scope: !467, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 429, column: 5, scope: !1460)
!1542 = !DILocation(line: 167, column: 13, scope: !474, inlinedAt: !1541)
!1543 = !DILocation(line: 168, column: 13, scope: !472, inlinedAt: !1541)
!1544 = !DILocation(line: 169, column: 9, scope: !472, inlinedAt: !1541)
!1545 = !DILocation(line: 0, scope: !481, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 170, column: 13, scope: !485, inlinedAt: !1541)
!1547 = !DILocation(line: 163, column: 81, scope: !481, inlinedAt: !1546)
!1548 = !DILocation(line: 163, column: 87, scope: !481, inlinedAt: !1546)
!1549 = !DILocation(line: 163, column: 77, scope: !481, inlinedAt: !1546)
!1550 = !DILocation(line: 163, column: 15, scope: !481, inlinedAt: !1546)
!1551 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1541)
!1552 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1541)
!1553 = !DILocation(line: 431, column: 40, scope: !1460)
!1554 = !DILocation(line: 431, column: 58, scope: !1460)
!1555 = !DILocation(line: 431, column: 18, scope: !1460)
!1556 = !DILocation(line: 431, column: 65, scope: !1460)
!1557 = !DILocation(line: 433, column: 24, scope: !1460)
!1558 = !DILocation(line: 0, scope: !1202, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 435, column: 21, scope: !1460)
!1560 = !DILocation(line: 16, column: 9, scope: !1209, inlinedAt: !1559)
!1561 = !DILocation(line: 450, column: 25, scope: !1460)
!1562 = !DILocation(line: 451, column: 18, scope: !1460)
!1563 = !DILocation(line: 451, column: 5, scope: !1460)
!1564 = !DILocation(line: 452, column: 20, scope: !1478)
!1565 = !DILocation(line: 452, column: 25, scope: !1478)
!1566 = !DILocation(line: 452, column: 30, scope: !1478)
!1567 = !DILocation(line: 452, column: 40, scope: !1478)
!1568 = !DILocation(line: 452, column: 49, scope: !1478)
!1569 = !DILocation(line: 452, column: 65, scope: !1478)
!1570 = !DILocation(line: 453, column: 31, scope: !1478)
!1571 = !DILocation(line: 453, column: 13, scope: !1478)
!1572 = !DILocation(line: 453, column: 53, scope: !1478)
!1573 = !DILocation(line: 454, column: 54, scope: !1478)
!1574 = !DILocation(line: 454, column: 13, scope: !1478)
!1575 = !DILocation(line: 454, column: 71, scope: !1478)
!1576 = !DILocation(line: 455, column: 20, scope: !1478)
!1577 = !DILocation(line: 455, column: 32, scope: !1478)
!1578 = !DILocation(line: 452, column: 13, scope: !1479)
!1579 = !DILocation(line: 468, column: 17, scope: !1477)
!1580 = !DILocation(line: 469, column: 17, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1489, file: !5, line: 469, column: 17)
!1582 = !DILocation(line: 469, column: 17, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !5, line: 469, column: 17)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !5, line: 469, column: 17)
!1585 = !DILocation(line: 472, column: 17, scope: !1488)
!1586 = !DILocation(line: 478, column: 24, scope: !1479)
!1587 = distinct !{!1587, !1563, !1588, !386}
!1588 = !DILocation(line: 479, column: 5, scope: !1460)
!1589 = !DILocation(line: 0, scope: !1488)
!1590 = !DILocation(line: 473, column: 43, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !5, line: 472, column: 59)
!1592 = distinct !DILexicalBlock(scope: !1488, file: !5, line: 472, column: 17)
!1593 = !DILocation(line: 473, column: 61, scope: !1591)
!1594 = !DILocation(line: 473, column: 21, scope: !1591)
!1595 = !DILocation(line: 473, column: 68, scope: !1591)
!1596 = !DILocation(line: 473, column: 74, scope: !1591)
!1597 = !DILocation(line: 472, column: 55, scope: !1592)
!1598 = !DILocation(line: 472, column: 39, scope: !1592)
!1599 = distinct !{!1599, !1585, !1600, !386}
!1600 = !DILocation(line: 474, column: 17, scope: !1488)
!1601 = !DILocation(line: 462, column: 82, scope: !1485)
!1602 = !DILocation(line: 0, scope: !1482)
!1603 = !DILocation(line: 461, column: 44, scope: !1485)
!1604 = !DILocation(line: 0, scope: !1485)
!1605 = !DILocation(line: 462, column: 89, scope: !1485)
!1606 = !DILocation(line: 462, column: 40, scope: !1485)
!1607 = !DILocation(line: 0, scope: !1477)
!1608 = !DILocation(line: 463, column: 32, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1485, file: !5, line: 463, column: 25)
!1610 = !DILocation(line: 463, column: 39, scope: !1609)
!1611 = !DILocation(line: 463, column: 52, scope: !1609)
!1612 = !DILocation(line: 463, column: 44, scope: !1609)
!1613 = !DILocation(line: 463, column: 25, scope: !1485)
!1614 = !DILocation(line: 460, column: 75, scope: !1486)
!1615 = !DILocation(line: 460, column: 54, scope: !1486)
!1616 = !DILocation(line: 460, column: 17, scope: !1482)
!1617 = distinct !{!1617, !1616, !1618, !386}
!1618 = !DILocation(line: 466, column: 17, scope: !1482)
!1619 = !DILocation(line: 0, scope: !1493)
!1620 = !DILocation(line: 483, column: 31, scope: !1497)
!1621 = !DILocation(line: 483, column: 9, scope: !1493)
!1622 = !DILocation(line: 488, column: 24, scope: !1460)
!1623 = !DILocation(line: 489, column: 5, scope: !1460)
!1624 = !DILocation(line: 491, column: 43, scope: !1460)
!1625 = !DILocation(line: 493, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 493, column: 9)
!1627 = !DILocation(line: 493, column: 9, scope: !1460)
!1628 = !DILocation(line: 484, column: 36, scope: !1496)
!1629 = !DILocation(line: 0, scope: !1496)
!1630 = !DILocation(line: 0, scope: !1102, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 485, column: 32, scope: !1496)
!1632 = !DILocation(line: 0, scope: !1107, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 1519, column: 25, scope: !1102, inlinedAt: !1631)
!1634 = !DILocation(line: 0, scope: !1111, inlinedAt: !1633)
!1635 = !DILocation(line: 1508, column: 29, scope: !1116, inlinedAt: !1633)
!1636 = !DILocation(line: 1508, column: 27, scope: !1116, inlinedAt: !1633)
!1637 = !DILocation(line: 1508, column: 9, scope: !1111, inlinedAt: !1633)
!1638 = !DILocation(line: 0, scope: !553, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 1514, column: 36, scope: !1107, inlinedAt: !1633)
!1640 = !DILocation(line: 482, column: 17, scope: !553, inlinedAt: !1639)
!1641 = !DILocation(line: 0, scope: !1123, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 1519, column: 33, scope: !1102, inlinedAt: !1631)
!1643 = !DILocation(line: 0, scope: !1127, inlinedAt: !1642)
!1644 = !DILocation(line: 1497, column: 9, scope: !1127, inlinedAt: !1642)
!1645 = !DILocation(line: 1509, column: 24, scope: !1133, inlinedAt: !1633)
!1646 = !DILocation(line: 1509, column: 31, scope: !1133, inlinedAt: !1633)
!1647 = !DILocation(line: 1509, column: 17, scope: !1134, inlinedAt: !1633)
!1648 = !DILocation(line: 1510, column: 61, scope: !1138, inlinedAt: !1633)
!1649 = !DILocation(line: 1510, column: 68, scope: !1138, inlinedAt: !1633)
!1650 = !DILocation(line: 1510, column: 51, scope: !1138, inlinedAt: !1633)
!1651 = !DILocation(line: 1510, column: 23, scope: !1138, inlinedAt: !1633)
!1652 = !DILocation(line: 1511, column: 13, scope: !1138, inlinedAt: !1633)
!1653 = !DILocation(line: 1508, column: 42, scope: !1116, inlinedAt: !1633)
!1654 = distinct !{!1654, !1637, !1655, !386}
!1655 = !DILocation(line: 1512, column: 9, scope: !1111, inlinedAt: !1633)
!1656 = !DILocation(line: 1498, column: 24, scope: !1147, inlinedAt: !1642)
!1657 = !DILocation(line: 1498, column: 31, scope: !1147, inlinedAt: !1642)
!1658 = !DILocation(line: 1498, column: 17, scope: !1148, inlinedAt: !1642)
!1659 = !DILocation(line: 1499, column: 61, scope: !1153, inlinedAt: !1642)
!1660 = !DILocation(line: 1499, column: 68, scope: !1153, inlinedAt: !1642)
!1661 = !DILocation(line: 1499, column: 51, scope: !1153, inlinedAt: !1642)
!1662 = !DILocation(line: 1499, column: 23, scope: !1153, inlinedAt: !1642)
!1663 = !DILocation(line: 1500, column: 13, scope: !1153, inlinedAt: !1642)
!1664 = !DILocation(line: 1497, column: 42, scope: !1149, inlinedAt: !1642)
!1665 = !DILocation(line: 1497, column: 27, scope: !1149, inlinedAt: !1642)
!1666 = distinct !{!1666, !1644, !1667, !386}
!1667 = !DILocation(line: 1501, column: 9, scope: !1127, inlinedAt: !1642)
!1668 = !DILocation(line: 482, column: 22, scope: !553, inlinedAt: !1639)
!1669 = !DILocation(line: 482, column: 27, scope: !553, inlinedAt: !1639)
!1670 = !DILocation(line: 1513, column: 15, scope: !1107, inlinedAt: !1633)
!1671 = !DILocation(line: 0, scope: !553, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 1502, column: 36, scope: !1123, inlinedAt: !1642)
!1673 = !DILocation(line: 1519, column: 31, scope: !1102, inlinedAt: !1631)
!1674 = !DILocation(line: 485, column: 27, scope: !1496)
!1675 = !DILocation(line: 485, column: 24, scope: !1496)
!1676 = !DILocation(line: 483, column: 47, scope: !1497)
!1677 = distinct !{!1677, !1621, !1678, !386}
!1678 = !DILocation(line: 486, column: 9, scope: !1493)
!1679 = !DILocation(line: 491, column: 29, scope: !1460)
!1680 = !DILocation(line: 494, column: 29, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1626, file: !5, line: 493, column: 20)
!1682 = !DILocation(line: 497, column: 9, scope: !1460)
!1683 = !DILocation(line: 498, column: 28, scope: !1502)
!1684 = !DILocation(line: 0, scope: !1501)
!1685 = !DILocation(line: 502, column: 9, scope: !1501)
!1686 = !DILocation(line: 506, column: 13, scope: !1502)
!1687 = !DILocation(line: 503, column: 35, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !5, line: 502, column: 51)
!1689 = distinct !DILexicalBlock(scope: !1501, file: !5, line: 502, column: 9)
!1690 = !DILocation(line: 503, column: 53, scope: !1688)
!1691 = !DILocation(line: 503, column: 13, scope: !1688)
!1692 = !DILocation(line: 503, column: 60, scope: !1688)
!1693 = !DILocation(line: 503, column: 66, scope: !1688)
!1694 = !DILocation(line: 502, column: 47, scope: !1689)
!1695 = !DILocation(line: 502, column: 31, scope: !1689)
!1696 = distinct !{!1696, !1685, !1697, !386}
!1697 = !DILocation(line: 504, column: 9, scope: !1501)
!1698 = !DILocation(line: 507, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !5, line: 506, column: 24)
!1700 = distinct !DILexicalBlock(scope: !1502, file: !5, line: 506, column: 13)
!1701 = !DILocation(line: 508, column: 9, scope: !1699)
!1702 = !DILocation(line: 512, column: 23, scope: !1460)
!1703 = !DILocation(line: 512, column: 16, scope: !1460)
!1704 = !DILocation(line: 512, column: 21, scope: !1460)
!1705 = !DILocation(line: 513, column: 30, scope: !1460)
!1706 = !DILocation(line: 513, column: 16, scope: !1460)
!1707 = !DILocation(line: 513, column: 28, scope: !1460)
!1708 = !DILocation(line: 514, column: 28, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 514, column: 9)
!1710 = !DILocation(line: 514, column: 9, scope: !1460)
!1711 = !DILocation(line: 515, column: 29, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !5, line: 514, column: 40)
!1713 = !DILocation(line: 515, column: 41, scope: !1712)
!1714 = !DILocation(line: 516, column: 5, scope: !1712)
!1715 = !DILocation(line: 517, column: 24, scope: !1460)
!1716 = !DILocation(line: 518, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1460, file: !5, line: 518, column: 9)
!1718 = !DILocation(line: 518, column: 29, scope: !1717)
!1719 = !DILocation(line: 518, column: 9, scope: !1460)
!1720 = !DILocation(line: 519, column: 29, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !5, line: 518, column: 41)
!1722 = !DILocation(line: 520, column: 5, scope: !1721)
!1723 = !DILocation(line: 521, column: 26, scope: !1460)
!1724 = !DILocation(line: 523, column: 16, scope: !1460)
!1725 = !DILocation(line: 523, column: 29, scope: !1460)
!1726 = !DILocation(line: 0, scope: !1505)
!1727 = !DILocation(line: 525, column: 5, scope: !1505)
!1728 = !DILocation(line: 0, scope: !441, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 532, column: 5, scope: !1460)
!1730 = !DILocation(line: 44, column: 27, scope: !450, inlinedAt: !1729)
!1731 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !1729)
!1732 = !DILocation(line: 48, column: 13, scope: !453, inlinedAt: !1729)
!1733 = !DILocation(line: 0, scope: !458, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 532, column: 25, scope: !1460)
!1735 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1734)
!1736 = !DILocation(line: 0, scope: !467, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 532, column: 5, scope: !1460)
!1738 = !DILocation(line: 168, column: 13, scope: !472, inlinedAt: !1737)
!1739 = !DILocation(line: 169, column: 9, scope: !472, inlinedAt: !1737)
!1740 = !DILocation(line: 49, column: 23, scope: !477, inlinedAt: !1729)
!1741 = !DILocation(line: 50, column: 18, scope: !477, inlinedAt: !1729)
!1742 = !DILocation(line: 0, scope: !481, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 170, column: 13, scope: !485, inlinedAt: !1737)
!1744 = !DILocation(line: 163, column: 81, scope: !481, inlinedAt: !1743)
!1745 = !DILocation(line: 163, column: 87, scope: !481, inlinedAt: !1743)
!1746 = !DILocation(line: 163, column: 77, scope: !481, inlinedAt: !1743)
!1747 = !DILocation(line: 163, column: 15, scope: !481, inlinedAt: !1743)
!1748 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1737)
!1749 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1737)
!1750 = !DILocation(line: 534, column: 5, scope: !1460)
!1751 = !DILocation(line: 526, column: 31, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !5, line: 525, column: 47)
!1753 = distinct !DILexicalBlock(scope: !1505, file: !5, line: 525, column: 5)
!1754 = !DILocation(line: 526, column: 49, scope: !1752)
!1755 = !DILocation(line: 526, column: 9, scope: !1752)
!1756 = !DILocation(line: 526, column: 62, scope: !1752)
!1757 = !DILocation(line: 525, column: 43, scope: !1753)
!1758 = !DILocation(line: 525, column: 27, scope: !1753)
!1759 = distinct !{!1759, !1727, !1760, !386}
!1760 = !DILocation(line: 527, column: 5, scope: !1505)
!1761 = !DILocation(line: 0, scope: !1213, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 535, column: 1, scope: !1460)
!1763 = !DILocation(line: 20, column: 9, scope: !1218, inlinedAt: !1762)
!1764 = !DILocation(line: 535, column: 1, scope: !1460)
!1765 = distinct !DISubprogram(name: "halide_memoization_cache_release", scope: !5, file: !5, line: 537, type: !985, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771}
!1767 = !DILocalVariable(name: "user_context", arg: 1, scope: !1765, file: !5, line: 537, type: !80)
!1768 = !DILocalVariable(name: "host", arg: 2, scope: !1765, file: !5, line: 537, type: !80)
!1769 = !DILocalVariable(name: "header", scope: !1765, file: !5, line: 538, type: !323)
!1770 = !DILocalVariable(name: "entry", scope: !1765, file: !5, line: 540, type: !20)
!1771 = !DILocalVariable(name: "lock", scope: !1772, file: !5, line: 545, type: !1185)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !5, line: 544, column: 12)
!1773 = distinct !DILexicalBlock(scope: !1765, file: !5, line: 542, column: 9)
!1774 = !DILocation(line: 0, scope: !1765)
!1775 = !DILocation(line: 538, column: 32, scope: !1765)
!1776 = !DILocation(line: 0, scope: !441, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 539, column: 5, scope: !1765)
!1778 = !DILocation(line: 44, column: 27, scope: !450, inlinedAt: !1777)
!1779 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !1777)
!1780 = !DILocation(line: 48, column: 13, scope: !453, inlinedAt: !1777)
!1781 = !DILocation(line: 0, scope: !458, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 539, column: 25, scope: !1765)
!1783 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1782)
!1784 = !DILocation(line: 0, scope: !467, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 539, column: 5, scope: !1765)
!1786 = !DILocation(line: 168, column: 13, scope: !472, inlinedAt: !1785)
!1787 = !DILocation(line: 169, column: 9, scope: !472, inlinedAt: !1785)
!1788 = !DILocation(line: 49, column: 23, scope: !477, inlinedAt: !1777)
!1789 = !DILocation(line: 50, column: 18, scope: !477, inlinedAt: !1777)
!1790 = !DILocation(line: 0, scope: !481, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 170, column: 13, scope: !485, inlinedAt: !1785)
!1792 = !DILocation(line: 163, column: 81, scope: !481, inlinedAt: !1791)
!1793 = !DILocation(line: 163, column: 87, scope: !481, inlinedAt: !1791)
!1794 = !DILocation(line: 163, column: 77, scope: !481, inlinedAt: !1791)
!1795 = !DILocation(line: 163, column: 15, scope: !481, inlinedAt: !1791)
!1796 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1785)
!1797 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1785)
!1798 = !DILocation(line: 540, column: 33, scope: !1765)
!1799 = !DILocation(line: 542, column: 15, scope: !1773)
!1800 = !DILocation(line: 542, column: 9, scope: !1765)
!1801 = !DILocation(line: 543, column: 35, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1773, file: !5, line: 542, column: 27)
!1803 = !DILocation(line: 543, column: 9, scope: !1802)
!1804 = !DILocation(line: 544, column: 5, scope: !1802)
!1805 = !DILocation(line: 0, scope: !1202, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 545, column: 25, scope: !1772)
!1807 = !DILocation(line: 0, scope: !1772)
!1808 = !DILocation(line: 16, column: 9, scope: !1209, inlinedAt: !1806)
!1809 = !DILocation(line: 547, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !5, line: 547, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1772, file: !5, line: 547, column: 9)
!1812 = !DILocation(line: 547, column: 9, scope: !1811)
!1813 = !DILocation(line: 547, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !5, line: 547, column: 9)
!1815 = !DILocation(line: 548, column: 28, scope: !1772)
!1816 = !DILocation(line: 0, scope: !1213, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 552, column: 5, scope: !1773)
!1818 = !DILocation(line: 20, column: 9, scope: !1218, inlinedAt: !1817)
!1819 = !DILocation(line: 0, scope: !441, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 554, column: 5, scope: !1765)
!1821 = !DILocation(line: 44, column: 27, scope: !450, inlinedAt: !1820)
!1822 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !1820)
!1823 = !DILocation(line: 48, column: 13, scope: !453, inlinedAt: !1820)
!1824 = !DILocation(line: 0, scope: !458, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 554, column: 25, scope: !1765)
!1826 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1825)
!1827 = !DILocation(line: 0, scope: !467, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 554, column: 5, scope: !1765)
!1829 = !DILocation(line: 168, column: 13, scope: !472, inlinedAt: !1828)
!1830 = !DILocation(line: 169, column: 9, scope: !472, inlinedAt: !1828)
!1831 = !DILocation(line: 49, column: 23, scope: !477, inlinedAt: !1820)
!1832 = !DILocation(line: 50, column: 18, scope: !477, inlinedAt: !1820)
!1833 = !DILocation(line: 0, scope: !481, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 170, column: 13, scope: !485, inlinedAt: !1828)
!1835 = !DILocation(line: 163, column: 81, scope: !481, inlinedAt: !1834)
!1836 = !DILocation(line: 163, column: 87, scope: !481, inlinedAt: !1834)
!1837 = !DILocation(line: 163, column: 77, scope: !481, inlinedAt: !1834)
!1838 = !DILocation(line: 163, column: 15, scope: !481, inlinedAt: !1834)
!1839 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1828)
!1840 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1828)
!1841 = !DILocation(line: 555, column: 1, scope: !1765)
!1842 = distinct !DISubprogram(name: "halide_memoization_cache_cleanup", scope: !5, file: !5, line: 557, type: !1010, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1843)
!1843 = !{!1844, !1846, !1849}
!1844 = !DILocalVariable(name: "i", scope: !1845, file: !5, line: 559, type: !31)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !5, line: 559, column: 5)
!1846 = !DILocalVariable(name: "entry", scope: !1847, file: !5, line: 560, type: !20)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !5, line: 559, column: 49)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !5, line: 559, column: 5)
!1849 = !DILocalVariable(name: "next", scope: !1850, file: !5, line: 563, type: !20)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !5, line: 562, column: 34)
!1851 = !DILocation(line: 0, scope: !441, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 558, column: 5, scope: !1842)
!1853 = !DILocation(line: 44, column: 27, scope: !450, inlinedAt: !1852)
!1854 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !1852)
!1855 = !DILocation(line: 48, column: 13, scope: !453, inlinedAt: !1852)
!1856 = !DILocation(line: 0, scope: !458, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 558, column: 20, scope: !1842)
!1858 = !DILocation(line: 62, column: 19, scope: !464, inlinedAt: !1857)
!1859 = !DILocation(line: 0, scope: !467, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 558, column: 5, scope: !1842)
!1861 = !DILocation(line: 168, column: 13, scope: !472, inlinedAt: !1860)
!1862 = !DILocation(line: 169, column: 9, scope: !472, inlinedAt: !1860)
!1863 = !DILocation(line: 49, column: 23, scope: !477, inlinedAt: !1852)
!1864 = !DILocation(line: 50, column: 18, scope: !477, inlinedAt: !1852)
!1865 = !DILocation(line: 0, scope: !481, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 170, column: 13, scope: !485, inlinedAt: !1860)
!1867 = !DILocation(line: 163, column: 81, scope: !481, inlinedAt: !1866)
!1868 = !DILocation(line: 163, column: 87, scope: !481, inlinedAt: !1866)
!1869 = !DILocation(line: 163, column: 77, scope: !481, inlinedAt: !1866)
!1870 = !DILocation(line: 163, column: 15, scope: !481, inlinedAt: !1866)
!1871 = !DILocation(line: 174, column: 17, scope: !491, inlinedAt: !1860)
!1872 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !1860)
!1873 = !DILocation(line: 0, scope: !1845)
!1874 = !DILocation(line: 559, column: 5, scope: !1845)
!1875 = !DILocation(line: 569, column: 24, scope: !1842)
!1876 = !DILocation(line: 570, column: 24, scope: !1842)
!1877 = !DILocation(line: 571, column: 25, scope: !1842)
!1878 = !DILocation(line: 572, column: 1, scope: !1842)
!1879 = !DILocation(line: 560, column: 29, scope: !1847)
!1880 = !DILocation(line: 0, scope: !1847)
!1881 = !DILocation(line: 561, column: 26, scope: !1847)
!1882 = !DILocation(line: 562, column: 22, scope: !1847)
!1883 = !DILocation(line: 562, column: 9, scope: !1847)
!1884 = !DILocation(line: 563, column: 39, scope: !1850)
!1885 = !DILocation(line: 0, scope: !1850)
!1886 = !DILocation(line: 564, column: 20, scope: !1850)
!1887 = !DILocation(line: 565, column: 34, scope: !1850)
!1888 = !DILocation(line: 565, column: 13, scope: !1850)
!1889 = distinct !{!1889, !1883, !1890, !386}
!1890 = !DILocation(line: 567, column: 9, scope: !1847)
!1891 = !DILocation(line: 559, column: 45, scope: !1848)
!1892 = !DILocation(line: 559, column: 26, scope: !1848)
!1893 = distinct !{!1893, !1874, !1894, !386}
!1894 = !DILocation(line: 568, column: 5, scope: !1845)
!1895 = distinct !DISubprogram(name: "halide_memoization_cache_evict", scope: !5, file: !5, line: 574, type: !1896, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !80, !69}
!1898 = !{!1899, !1900, !1901, !1902, !1904, !1907, !1911}
!1899 = !DILocalVariable(name: "user_context", arg: 1, scope: !1895, file: !5, line: 574, type: !80)
!1900 = !DILocalVariable(name: "eviction_key", arg: 2, scope: !1895, file: !5, line: 574, type: !69)
!1901 = !DILocalVariable(name: "lock", scope: !1895, file: !5, line: 575, type: !1185)
!1902 = !DILocalVariable(name: "i", scope: !1903, file: !5, line: 577, type: !31)
!1903 = distinct !DILexicalBlock(scope: !1895, file: !5, line: 577, column: 5)
!1904 = !DILocalVariable(name: "entry", scope: !1905, file: !5, line: 578, type: !20)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !5, line: 577, column: 49)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !5, line: 577, column: 5)
!1907 = !DILocalVariable(name: "prev", scope: !1908, file: !5, line: 580, type: !1910)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !5, line: 579, column: 31)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !5, line: 579, column: 13)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!1911 = !DILocalVariable(name: "next", scope: !1912, file: !5, line: 582, type: !20)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !5, line: 581, column: 38)
!1913 = !DILocation(line: 0, scope: !1895)
!1914 = !DILocation(line: 0, scope: !1202, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 575, column: 21, scope: !1895)
!1916 = !DILocation(line: 16, column: 9, scope: !1209, inlinedAt: !1915)
!1917 = !DILocation(line: 0, scope: !1903)
!1918 = !DILocation(line: 577, column: 5, scope: !1903)
!1919 = !DILocation(line: 0, scope: !1213, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 607, column: 1, scope: !1895)
!1921 = !DILocation(line: 20, column: 9, scope: !1218, inlinedAt: !1920)
!1922 = !DILocation(line: 607, column: 1, scope: !1895)
!1923 = !DILocation(line: 578, column: 29, scope: !1905)
!1924 = !DILocation(line: 0, scope: !1905)
!1925 = !DILocation(line: 579, column: 19, scope: !1909)
!1926 = !DILocation(line: 579, column: 13, scope: !1905)
!1927 = !DILocation(line: 0, scope: !1908)
!1928 = !DILocation(line: 582, column: 43, scope: !1912)
!1929 = !DILocation(line: 0, scope: !1912)
!1930 = !DILocation(line: 583, column: 28, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1912, file: !5, line: 583, column: 21)
!1932 = !{i8 0, i8 2}
!1933 = !DILocation(line: 583, column: 45, scope: !1931)
!1934 = !DILocation(line: 583, column: 55, scope: !1931)
!1935 = !DILocation(line: 583, column: 68, scope: !1931)
!1936 = !DILocation(line: 583, column: 21, scope: !1912)
!1937 = !DILocation(line: 584, column: 27, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1931, file: !5, line: 583, column: 85)
!1939 = !DILocation(line: 585, column: 32, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1938, file: !5, line: 585, column: 25)
!1941 = !DILocation(line: 585, column: 44, scope: !1940)
!1942 = !DILocation(line: 0, scope: !1940)
!1943 = !DILocation(line: 585, column: 25, scope: !1938)
!1944 = !DILocation(line: 586, column: 45, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !5, line: 585, column: 56)
!1946 = !DILocation(line: 586, column: 57, scope: !1945)
!1947 = !DILocation(line: 590, column: 32, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1938, file: !5, line: 590, column: 25)
!1949 = !DILocation(line: 587, column: 21, scope: !1945)
!1950 = !DILocation(line: 588, column: 44, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !5, line: 587, column: 28)
!1952 = !DILocation(line: 590, column: 44, scope: !1948)
!1953 = !DILocation(line: 590, column: 25, scope: !1938)
!1954 = !DILocation(line: 0, scope: !1948)
!1955 = !DILocation(line: 595, column: 28, scope: !1938)
!1956 = !DILocation(line: 596, column: 47, scope: !1938)
!1957 = !DILocation(line: 596, column: 21, scope: !1938)
!1958 = !DILocation(line: 597, column: 17, scope: !1938)
!1959 = !DILocation(line: 581, column: 26, scope: !1908)
!1960 = !DILocation(line: 581, column: 13, scope: !1908)
!1961 = distinct !{!1961, !1960, !1962, !386}
!1962 = !DILocation(line: 601, column: 13, scope: !1908)
!1963 = !DILocation(line: 577, column: 45, scope: !1906)
!1964 = !DILocation(line: 577, column: 26, scope: !1906)
!1965 = distinct !{!1965, !1918, !1966, !386}
!1966 = !DILocation(line: 603, column: 5, scope: !1903)
!1967 = distinct !DISubprogram(name: "halide_cache_cleanup", scope: !1968, file: !5, line: 611, type: !1010, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !422)
!1968 = !DINamespace(scope: null)
!1969 = !DILocation(line: 612, column: 5, scope: !1967)
!1970 = !DILocation(line: 613, column: 1, scope: !1967)
!1971 = !DISubprogram(name: "halide_mutex_lock", scope: !7, file: !7, line: 133, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1189}
!1974 = !DISubprogram(name: "halide_mutex_unlock", scope: !7, file: !7, line: 134, type: !1972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1975 = !DISubprogram(name: "malloc", scope: !12, file: !12, line: 87, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!80, !14}
!1978 = !DISubprogram(name: "halide_error", scope: !7, file: !7, line: 111, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1979 = !DISubprogram(name: "free", scope: !12, file: !12, line: 86, type: !1980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !80}
!1982 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !7, file: !7, line: 973, type: !1983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!38, !80, !289, !70}
!1985 = !DISubprogram(name: "halide_string_to_string", scope: !12, file: !12, line: 120, type: !1986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!248, !248, !248, !264}
!1988 = !DISubprogram(name: "halide_int64_to_string", scope: !12, file: !12, line: 122, type: !1989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!248, !248, !248, !235, !38}
!1991 = !DISubprogram(name: "halide_uint64_to_string", scope: !12, file: !12, line: 123, type: !1992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !422)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!248, !248, !248, !70, !38}
