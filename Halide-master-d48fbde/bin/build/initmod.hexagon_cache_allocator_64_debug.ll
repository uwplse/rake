; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache" = type { i8*, i8, [7 x i8], i64, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* }
%struct.halide_mutex = type { [1 x i64] }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !22
@.str = private unnamed_addr constant [28 x i8] c"halide_locked_cache_malloc\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"halide_locked_cache_free\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"halide_hexagon_allocate_l2_pool\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"halide_hexagon_free_l2_pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Hexagon: Out of memory (Cache Pool Allocation Failed)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Hexagon: Out of memory (HAP_cache_lock failed)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp:122 Assert failed: cache_mem\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Hexagon: HAP_cache_unlock failed on pool free\0A\00", align 1

; Function Attrs: nounwind
define weak dso_local i8* @halide_locked_cache_malloc(i8* %0, i64 %1) local_unnamed_addr #0 !dbg !296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !300, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 %1, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i8 0, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !304, metadata !DIExpression()) #3, !dbg !310
  call void @llvm.dbg.value(metadata i8* %0, metadata !307, metadata !DIExpression()) #3, !dbg !310
  call void @llvm.dbg.value(metadata i8* null, metadata !308, metadata !DIExpression()) #3, !dbg !310
  %3 = tail call i8* @malloc(i64 1024) #4, !dbg !312
  %4 = icmp eq i8* %3, null, !dbg !317
  br i1 %4, label %5, label %7, !dbg !319

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !324
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !324
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #4, !dbg !326
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !332
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !334
  br label %15, !dbg !338

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !339
  store i8 0, i8* %8, align 1, !dbg !341, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !324
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !324
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #4, !dbg !326
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !332
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !345, metadata !DIExpression()) #3, !dbg !348
  %10 = ptrtoint i8* %9 to i64, !dbg !351
  %11 = ptrtoint i8* %3 to i64, !dbg !351
  %12 = add i64 %10, 1, !dbg !351
  %13 = sub i64 %12, %11, !dbg !352
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #4, !dbg !353
  tail call void @halide_print(i8* %0, i8* nonnull %3) #4, !dbg !354
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #4, !dbg !358
  call void @llvm.dbg.value(metadata i8* %0, metadata !361, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata i64 %1, metadata !367, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata i8 0, metadata !368, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, metadata !369, metadata !DIExpression()) #3, !dbg !391
  %16 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !dbg !393, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %16, metadata !370, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !401
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !401
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !371, metadata !DIExpression()) #3, !dbg !403
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !404
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %16, null, !dbg !406
  br i1 %17, label %34, label %18, !dbg !407

18:                                               ; preds = %15, %27
  %19 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %29, %27 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, metadata !370, metadata !DIExpression()) #3, !dbg !391
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, i64 0, i32 1, !dbg !408
  %21 = load i8, i8* %20, align 8, !dbg !408, !tbaa !411, !range !415
  %22 = icmp eq i8 %21, 0, !dbg !416
  br i1 %22, label %23, label %27, !dbg !417

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, i64 0, i32 3, !dbg !418
  %25 = load i64, i64* %24, align 8, !dbg !418, !tbaa !419
  %26 = icmp eq i64 %25, %1, !dbg !420
  br i1 %26, label %31, label %27, !dbg !421

27:                                               ; preds = %23, %18
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, metadata !369, metadata !DIExpression()) #3, !dbg !391
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, i64 0, i32 4, !dbg !422
  %29 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %28, align 8, !dbg !422, !tbaa !423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %29, metadata !370, metadata !DIExpression()) #3, !dbg !391
  %30 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %29, null, !dbg !406
  br i1 %30, label %34, label %18, !dbg !407, !llvm.loop !424

31:                                               ; preds = %23
  store i8 1, i8* %20, align 8, !dbg !427, !tbaa !411
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, i64 0, i32 0, !dbg !429
  %33 = load i8*, i8** %32, align 8, !dbg !429, !tbaa !430
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !434
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !436
  br label %88

34:                                               ; preds = %27, %15
  %35 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ null, %15 ], [ %19, %27 ], !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !434
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !436
  %36 = tail call i8* @malloc(i64 32) #4, !dbg !438
  call void @llvm.dbg.value(metadata i8* %36, metadata !370, metadata !DIExpression()) #3, !dbg !391
  %37 = icmp eq i8* %36, null, !dbg !439
  br i1 %37, label %38, label %52, !dbg !441

38:                                               ; preds = %34
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !442, metadata !DIExpression()) #3, !dbg !448
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()) #3, !dbg !448
  call void @llvm.dbg.value(metadata i8* null, metadata !446, metadata !DIExpression()) #3, !dbg !448
  %39 = tail call i8* @malloc(i64 1024) #4, !dbg !451
  %40 = icmp eq i8* %39, null, !dbg !456
  br i1 %40, label %41, label %43, !dbg !458

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), metadata !462, metadata !DIExpression()) #3, !dbg !463
  %42 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !471
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !473
  br label %51, !dbg !477

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, i8* %39, i64 1023, !dbg !478
  store i8 0, i8* %44, align 1, !dbg !480, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), metadata !462, metadata !DIExpression()) #3, !dbg !463
  %45 = tail call i8* @halide_string_to_string(i8* nonnull %39, i8* nonnull %44, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !471
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !481, metadata !DIExpression()) #3, !dbg !484
  %46 = ptrtoint i8* %45 to i64, !dbg !487
  %47 = ptrtoint i8* %39 to i64, !dbg !487
  %48 = sub i64 1, %47, !dbg !487
  %49 = add i64 %48, %46, !dbg !488
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %39, i64 %49) #4, !dbg !489
  tail call void @halide_error(i8* %0, i8* nonnull %39) #4, !dbg !490
  br label %51

51:                                               ; preds = %43, %41
  tail call void @free(i8* %39) #4, !dbg !493
  br label %88, !dbg !496

52:                                               ; preds = %34
  %53 = trunc i64 %1 to i32, !dbg !497
  %54 = tail call i8* @HAP_cache_lock(i32 %53, i8** null) #4, !dbg !498
  call void @llvm.dbg.value(metadata i8* %54, metadata !385, metadata !DIExpression()) #3, !dbg !391
  %55 = icmp eq i8* %54, null, !dbg !499
  br i1 %55, label %56, label %70, !dbg !500

56:                                               ; preds = %52
  tail call void @free(i8* nonnull %36) #4, !dbg !501
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !442, metadata !DIExpression()) #3, !dbg !504
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()) #3, !dbg !504
  call void @llvm.dbg.value(metadata i8* null, metadata !446, metadata !DIExpression()) #3, !dbg !504
  %57 = tail call i8* @malloc(i64 1024) #4, !dbg !506
  %58 = icmp eq i8* %57, null, !dbg !507
  br i1 %58, label %59, label %61, !dbg !508

59:                                               ; preds = %56
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), metadata !462, metadata !DIExpression()) #3, !dbg !509
  %60 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !512
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !514
  br label %69, !dbg !515

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, i8* %57, i64 1023, !dbg !516
  store i8 0, i8* %62, align 1, !dbg !517, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), metadata !462, metadata !DIExpression()) #3, !dbg !509
  %63 = tail call i8* @halide_string_to_string(i8* nonnull %57, i8* nonnull %62, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !512
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !481, metadata !DIExpression()) #3, !dbg !518
  %64 = ptrtoint i8* %63 to i64, !dbg !520
  %65 = ptrtoint i8* %57 to i64, !dbg !520
  %66 = sub i64 1, %65, !dbg !520
  %67 = add i64 %66, %64, !dbg !521
  %68 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %57, i64 %67) #4, !dbg !522
  tail call void @halide_error(i8* %0, i8* nonnull %57) #4, !dbg !523
  br label %69

69:                                               ; preds = %61, %59
  tail call void @free(i8* %57) #4, !dbg !524
  br label %88, !dbg !525

70:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %54, metadata !385, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %35, metadata !369, metadata !DIExpression()) #3, !dbg !391
  %71 = bitcast i8* %36 to i8**, !dbg !526
  store i8* %54, i8** %71, align 8, !dbg !527, !tbaa !430
  %72 = getelementptr inbounds i8, i8* %36, i64 16, !dbg !528
  %73 = bitcast i8* %72 to i64*, !dbg !528
  store i64 %1, i64* %73, align 8, !dbg !529, !tbaa !419
  %74 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !530
  store i8 1, i8* %74, align 8, !dbg !531, !tbaa !411
  %75 = getelementptr inbounds i8, i8* %36, i64 24, !dbg !532
  %76 = bitcast i8* %75 to %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"**, !dbg !532
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %76, align 8, !dbg !533, !tbaa !423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !534
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !534
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !389, metadata !DIExpression()) #3, !dbg !536
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !537
  %77 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %35, null, !dbg !538
  br i1 %77, label %81, label %78, !dbg !540

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %35, i64 0, i32 4, !dbg !541
  %80 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %79 to i8**, !dbg !543
  br label %84, !dbg !544

81:                                               ; preds = %70
  %82 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !dbg !545, !tbaa !394
  %83 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %82, null, !dbg !547
  br i1 %83, label %84, label %86, !dbg !548

84:                                               ; preds = %81, %78
  %85 = phi i8** [ %80, %78 ], [ bitcast (%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE to i8**), %81 ]
  store i8* %36, i8** %85, align 8, !dbg !549, !tbaa !394
  br label %86, !dbg !550

86:                                               ; preds = %84, %81
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !552
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !550
  %87 = load i8*, i8** %71, align 8, !dbg !553, !tbaa !430
  br label %88, !dbg !554

88:                                               ; preds = %31, %51, %69, %86
  %89 = phi i8* [ null, %51 ], [ %33, %31 ], [ %87, %86 ], [ null, %69 ], !dbg !391
  ret i8* %89, !dbg !555
}

; Function Attrs: nounwind
define weak dso_local void @halide_locked_cache_free(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !556 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !560, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i8* %1, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !304, metadata !DIExpression()) #3, !dbg !563
  call void @llvm.dbg.value(metadata i8* %0, metadata !307, metadata !DIExpression()) #3, !dbg !563
  call void @llvm.dbg.value(metadata i8* null, metadata !308, metadata !DIExpression()) #3, !dbg !563
  %3 = tail call i8* @malloc(i64 1024) #4, !dbg !565
  %4 = icmp eq i8* %3, null, !dbg !566
  br i1 %4, label %5, label %7, !dbg !567

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !568
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !568
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !570
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !571
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !573
  br label %15, !dbg !574

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i64 1023, !dbg !575
  store i8 0, i8* %8, align 1, !dbg !576, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !568
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !568
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !570
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !345, metadata !DIExpression()) #3, !dbg !577
  %10 = ptrtoint i8* %9 to i64, !dbg !579
  %11 = ptrtoint i8* %3 to i64, !dbg !579
  %12 = add i64 %10, 1, !dbg !579
  %13 = sub i64 %12, %11, !dbg !580
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %13) #4, !dbg !581
  tail call void @halide_print(i8* %0, i8* nonnull %3) #4, !dbg !582
  br label %15

15:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #4, !dbg !583
  call void @llvm.dbg.value(metadata i8* %0, metadata !584, metadata !DIExpression()) #3, !dbg !590
  call void @llvm.dbg.value(metadata i8* %1, metadata !587, metadata !DIExpression()) #3, !dbg !590
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !592
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !592
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !588, metadata !DIExpression()) #3, !dbg !590
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !594
  %16 = icmp eq i8* %1, null, !dbg !595
  br i1 %16, label %17, label %18, !dbg !598

17:                                               ; preds = %15
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !599
  tail call void @abort() #4, !dbg !599
  br label %18, !dbg !599

18:                                               ; preds = %17, %15
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* undef, metadata !589, metadata !DIExpression()) #3, !dbg !590
  %19 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, metadata !589, metadata !DIExpression()) #3, !dbg !590
  %20 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, null, !dbg !601
  br i1 %20, label %32, label %21, !dbg !602

21:                                               ; preds = %18, %28
  %22 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %30, %28 ], [ %19, %18 ]
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, i64 0, i32 0, !dbg !603
  %24 = load i8*, i8** %23, align 8, !dbg !603, !tbaa !430
  %25 = icmp eq i8* %24, %1, !dbg !606
  br i1 %25, label %26, label %28, !dbg !607

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, i64 0, i32 1, !dbg !608
  store i8 0, i8* %27, align 8, !dbg !610, !tbaa !411
  br label %32, !dbg !611

28:                                               ; preds = %21
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %22, i64 0, i32 4, !dbg !612
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* undef, metadata !589, metadata !DIExpression()) #3, !dbg !590
  %30 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %29, align 8, !dbg !590, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %30, metadata !589, metadata !DIExpression()) #3, !dbg !590
  %31 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %30, null, !dbg !601
  br i1 %31, label %32, label %21, !dbg !602, !llvm.loop !613

32:                                               ; preds = %28, %18, %26
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !615
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !617
  ret void, !dbg !618
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_allocate_l2_pool(i8* %0) local_unnamed_addr #0 !dbg !619 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !304, metadata !DIExpression()) #3, !dbg !625
  call void @llvm.dbg.value(metadata i8* %0, metadata !307, metadata !DIExpression()) #3, !dbg !625
  call void @llvm.dbg.value(metadata i8* null, metadata !308, metadata !DIExpression()) #3, !dbg !625
  %2 = tail call i8* @malloc(i64 1024) #4, !dbg !627
  %3 = icmp eq i8* %2, null, !dbg !628
  br i1 %3, label %4, label %6, !dbg !629

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !630
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !632
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !633
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !635
  br label %14, !dbg !636

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !637
  store i8 0, i8* %7, align 1, !dbg !638, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !630
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !630
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !632
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !633
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !345, metadata !DIExpression()) #3, !dbg !639
  %9 = ptrtoint i8* %8 to i64, !dbg !641
  %10 = ptrtoint i8* %2 to i64, !dbg !641
  %11 = add i64 %9, 1, !dbg !641
  %12 = sub i64 %11, %10, !dbg !642
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #4, !dbg !643
  tail call void @halide_print(i8* %0, i8* nonnull %2) #4, !dbg !644
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4, !dbg !645
  ret i32 0, !dbg !646
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_free_l2_pool(i8* %0) local_unnamed_addr #0 !dbg !647 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !304, metadata !DIExpression()) #3, !dbg !651
  call void @llvm.dbg.value(metadata i8* %0, metadata !307, metadata !DIExpression()) #3, !dbg !651
  call void @llvm.dbg.value(metadata i8* null, metadata !308, metadata !DIExpression()) #3, !dbg !651
  %2 = tail call i8* @malloc(i64 1024) #4, !dbg !653
  %3 = icmp eq i8* %2, null, !dbg !654
  br i1 %3, label %4, label %6, !dbg !655

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !656
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !659
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !661
  br label %14, !dbg !662

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !663
  store i8 0, i8* %7, align 1, !dbg !664, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !320, metadata !DIExpression()) #3, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), metadata !323, metadata !DIExpression()) #3, !dbg !656
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !329, metadata !DIExpression()) #3, !dbg !659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !345, metadata !DIExpression()) #3, !dbg !665
  %9 = ptrtoint i8* %8 to i64, !dbg !667
  %10 = ptrtoint i8* %2 to i64, !dbg !667
  %11 = add i64 %9, 1, !dbg !667
  %12 = sub i64 %11, %10, !dbg !668
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #4, !dbg !669
  tail call void @halide_print(i8* %0, i8* nonnull %2) #4, !dbg !670
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4, !dbg !671
  call void @llvm.dbg.value(metadata i8* %0, metadata !672, metadata !DIExpression()) #3, !dbg !679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !681
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !681
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !675, metadata !DIExpression()) #3, !dbg !679
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !683
  %15 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !dbg !684, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %15, metadata !676, metadata !DIExpression()) #3, !dbg !679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* undef, metadata !677, metadata !DIExpression()) #3, !dbg !679
  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()) #3, !dbg !679
  %16 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %15, null, !dbg !685
  br i1 %16, label %44, label %17, !dbg !686

17:                                               ; preds = %14, %39
  %18 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %41, %39 ], [ %15, %14 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %18, metadata !676, metadata !DIExpression()) #3, !dbg !679
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %18, i64 0, i32 0, !dbg !687
  %20 = load i8*, i8** %19, align 8, !dbg !687, !tbaa !430
  %21 = icmp eq i8* %20, null, !dbg !690
  br i1 %21, label %39, label %22, !dbg !691

22:                                               ; preds = %17
  %23 = tail call i32 @HAP_cache_unlock(i8* nonnull %20) #4, !dbg !692
  call void @llvm.dbg.value(metadata i32 %23, metadata !678, metadata !DIExpression()) #3, !dbg !679
  %24 = icmp eq i32 %23, 0, !dbg !694
  br i1 %24, label %39, label %25, !dbg !696

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !442, metadata !DIExpression()) #3, !dbg !697
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()) #3, !dbg !697
  call void @llvm.dbg.value(metadata i8* null, metadata !446, metadata !DIExpression()) #3, !dbg !697
  %26 = tail call i8* @malloc(i64 1024) #4, !dbg !700
  %27 = icmp eq i8* %26, null, !dbg !701
  br i1 %27, label %28, label %30, !dbg !702

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), metadata !462, metadata !DIExpression()) #3, !dbg !703
  %29 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !706
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !708
  br label %38, !dbg !709

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %26, i64 1023, !dbg !710
  store i8 0, i8* %31, align 1, !dbg !711, !tbaa !342
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !703
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), metadata !462, metadata !DIExpression()) #3, !dbg !703
  %32 = tail call i8* @halide_string_to_string(i8* nonnull %26, i8* nonnull %31, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !705
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !481, metadata !DIExpression()) #3, !dbg !712
  %33 = ptrtoint i8* %32 to i64, !dbg !714
  %34 = ptrtoint i8* %26 to i64, !dbg !714
  %35 = sub i64 1, %34, !dbg !714
  %36 = add i64 %35, %33, !dbg !715
  %37 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %26, i64 %36) #4, !dbg !716
  tail call void @halide_error(i8* %0, i8* nonnull %26) #4, !dbg !717
  br label %38

38:                                               ; preds = %30, %28
  tail call void @free(i8* %26) #4, !dbg !718
  br label %45, !dbg !719

39:                                               ; preds = %22, %17
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %18, i64 0, i32 4, !dbg !720
  %41 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %40, align 8, !dbg !720, !tbaa !423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %41, metadata !677, metadata !DIExpression()) #3, !dbg !679
  %42 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %18 to i8*, !dbg !721
  tail call void @free(i8* nonnull %42) #4, !dbg !722
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %41, metadata !676, metadata !DIExpression()) #3, !dbg !679
  %43 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %41, null, !dbg !685
  br i1 %43, label %44, label %17, !dbg !686, !llvm.loop !723

44:                                               ; preds = %39, %14
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 8, !dbg !725, !tbaa !394
  br label %45, !dbg !726

45:                                               ; preds = %38, %44
  %46 = phi i32 [ %23, %38 ], [ 0, %44 ], !dbg !679
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !727
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !729
  ret i32 %46, !dbg !730
}

declare !dbg !731 dso_local i8* @malloc(i64) local_unnamed_addr #1

declare !dbg !735 dso_local i8* @HAP_cache_lock(i32, i8**) local_unnamed_addr #1

declare !dbg !739 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !742 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !745 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !746 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

declare !dbg !749 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !752 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !755 dso_local i32 @HAP_cache_unlock(i8*) local_unnamed_addr #1

declare !dbg !756 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !757 dso_local void @abort() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!292, !293, !294}
!llvm.ident = !{!295}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hexagon_cache_pool", linkageName: "_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE", scope: !2, file: !6, line: 21, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Hexagon", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/hexagon_cache_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcache_pool", scope: !2, file: !6, line: 19, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_cache_pool_t", scope: !2, file: !6, line: 17, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hexagon_local_cache", scope: !2, file: !6, line: 12, size: 256, flags: DIFlagTypePassByValue, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal7Hexagon19hexagon_local_cacheE")
!11 = !{!12, !14, !16, !20}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "l2memory", scope: !10, file: !6, line: 13, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !10, file: !6, line: 14, baseType: !15, size: 8, offset: 64)
!15 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !10, file: !6, line: 15, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !6, line: 16, baseType: !21, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "hexagon_cache_mutex", linkageName: "_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE", scope: !2, file: !6, line: 22, type: !24, isLocal: false, isDefinition: true)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !25, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !26, identifier: "_ZTS12halide_mutex")
!25 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !24, file: !25, line: 121, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 10, baseType: !31)
!31 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !35, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !99, globals: !288, imports: !289, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!36 = !{!37, !46, !94}
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !25, line: 403, baseType: !38, size: 8, elements: !40, identifier: "_ZTS18halide_type_code_t")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !25, line: 990, baseType: !47, size: 32, elements: !48, identifier: "_ZTS19halide_error_code_t")
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!49 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!50 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!51 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!52 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!53 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!54 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!55 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!56 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!57 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!58 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!59 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!60 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!61 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!62 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!63 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!64 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!65 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!66 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!67 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!68 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!69 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!70 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!71 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!72 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!73 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!74 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!75 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!76 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!77 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!78 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!79 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!80 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!81 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!82 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!83 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!84 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!85 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!86 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!87 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!88 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!89 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!90 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!91 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!92 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!93 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 23, baseType: !96, size: 32, align: 32, elements: !97)
!95 = !DIFile(filename: "src/runtime/mini_hexagon_dma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !{!98}
!98 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!99 = !{!100, !13, !7, !220, !287, !106}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !102, file: !101, line: 203, baseType: !103)
!101 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!102 = !DINamespace(scope: !3)
!103 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !102, file: !101, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !104, templateParams: !217)
!104 = !{!105, !108, !109, !110, !111, !112, !114, !118, !124, !129, !133, !136, !140, !144, !148, !153, !159, !192, !199, !202, !205, !210, !211, !214, !215, !216}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !103, file: !101, line: 32, baseType: !106, size: 64, flags: DIFlagPublic)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !103, file: !101, line: 32, baseType: !106, size: 64, offset: 64, flags: DIFlagPublic)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !103, file: !101, line: 32, baseType: !106, size: 64, offset: 128, flags: DIFlagPublic)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !103, file: !101, line: 33, baseType: !13, size: 64, offset: 192, flags: DIFlagPublic)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !103, file: !101, line: 34, baseType: !15, size: 8, offset: 256, flags: DIFlagPublic)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !103, file: !101, line: 35, baseType: !113, size: 8, offset: 264, flags: DIFlagPublic)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 8, elements: !32)
!114 = !DISubprogram(name: "Printer", scope: !103, file: !101, line: 37, type: !115, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !13, !106}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!118 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !103, file: !101, line: 57, type: !119, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !117, !122}
!121 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !103, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!124 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !103, file: !101, line: 67, type: !125, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{!121, !117, !127}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 9, baseType: !128)
!128 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!129 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !103, file: !101, line: 72, type: !130, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{!121, !117, !132}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 11, baseType: !47)
!133 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !103, file: !101, line: 77, type: !134, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!121, !117, !30}
!136 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !103, file: !101, line: 82, type: !137, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DISubroutineType(types: !138)
!138 = !{!121, !117, !139}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 12, baseType: !96)
!140 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !103, file: !101, line: 87, type: !141, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!121, !117, !143}
!143 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!144 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !103, file: !101, line: 92, type: !145, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{!121, !117, !147}
!147 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!148 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !103, file: !101, line: 97, type: !149, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!121, !117, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !103, file: !101, line: 102, type: !154, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{!121, !117, !156}
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 14, baseType: !158)
!158 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!159 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !103, file: !101, line: 108, type: !160, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!121, !117, !162}
!162 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !25, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !165, identifier: "_ZTS13halide_type_t")
!165 = !{!166, !168, !169, !170, !174, !177, !181, !184, !185, !186, !189}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !164, file: !25, line: 434, baseType: !167, size: 8, align: 8)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !25, line: 413, baseType: !37)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !164, file: !25, line: 442, baseType: !38, size: 8, align: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !164, file: !25, line: 446, baseType: !157, size: 16, align: 16, offset: 16)
!170 = !DISubprogram(name: "halide_type_t", scope: !164, file: !25, line: 453, type: !171, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173, !167, !38, !157}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!174 = !DISubprogram(name: "halide_type_t", scope: !164, file: !25, line: 459, type: !175, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !173}
!177 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !164, file: !25, line: 463, type: !178, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!164, !180, !157}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!181 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !164, file: !25, line: 468, type: !182, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!15, !180, !162}
!184 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !164, file: !25, line: 472, type: !182, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !164, file: !25, line: 476, type: !182, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !164, file: !25, line: 481, type: !187, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{!47, !180}
!189 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !164, file: !25, line: 485, type: !190, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{!139, !180}
!192 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !103, file: !101, line: 113, type: !193, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!121, !117, !195}
!195 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !25, line: 1550, baseType: !198)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !25, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!199 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !103, file: !101, line: 119, type: !200, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!122, !117}
!202 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !103, file: !101, line: 131, type: !203, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !117}
!205 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !103, file: !101, line: 139, type: !206, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!30, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!210 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !103, file: !101, line: 143, type: !206, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !103, file: !101, line: 148, type: !212, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !117, !47}
!214 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !103, file: !101, line: 158, type: !200, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !103, file: !101, line: 162, type: !203, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubprogram(name: "~Printer", scope: !103, file: !101, line: 166, type: !203, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !{!218, !219}
!218 = !DITemplateValueParameter(name: "type", type: !47, value: i32 0)
!219 = !DITemplateValueParameter(name: "length", type: !31, value: i64 1024)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !102, file: !101, line: 199, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !102, file: !101, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !222, templateParams: !285)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !233, !237, !240, !243, !246, !249, !252, !255, !258, !261, !264, !267, !270, !273, !278, !279, !282, !283, !284}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !221, file: !101, line: 32, baseType: !106, size: 64, flags: DIFlagPublic)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !221, file: !101, line: 32, baseType: !106, size: 64, offset: 64, flags: DIFlagPublic)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !221, file: !101, line: 32, baseType: !106, size: 64, offset: 128, flags: DIFlagPublic)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !221, file: !101, line: 33, baseType: !13, size: 64, offset: 192, flags: DIFlagPublic)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !221, file: !101, line: 34, baseType: !15, size: 8, offset: 256, flags: DIFlagPublic)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !221, file: !101, line: 35, baseType: !113, size: 8, offset: 264, flags: DIFlagPublic)
!229 = !DISubprogram(name: "Printer", scope: !221, file: !101, line: 37, type: !230, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232, !13, !106}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!233 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !221, file: !101, line: 57, type: !234, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !232, !122}
!236 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !221, size: 64)
!237 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !221, file: !101, line: 67, type: !238, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!236, !232, !127}
!240 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !221, file: !101, line: 72, type: !241, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!236, !232, !132}
!243 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !221, file: !101, line: 77, type: !244, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!236, !232, !30}
!246 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !221, file: !101, line: 82, type: !247, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubroutineType(types: !248)
!248 = !{!236, !232, !139}
!249 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !221, file: !101, line: 87, type: !250, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!236, !232, !143}
!252 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !221, file: !101, line: 92, type: !253, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{!236, !232, !147}
!255 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !221, file: !101, line: 97, type: !256, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!236, !232, !151}
!258 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !221, file: !101, line: 102, type: !259, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{!236, !232, !156}
!261 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !221, file: !101, line: 108, type: !262, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!236, !232, !162}
!264 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !221, file: !101, line: 113, type: !265, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubroutineType(types: !266)
!266 = !{!236, !232, !195}
!267 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !221, file: !101, line: 119, type: !268, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubroutineType(types: !269)
!269 = !{!122, !232}
!270 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !221, file: !101, line: 131, type: !271, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !232}
!273 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !221, file: !101, line: 139, type: !274, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!30, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!278 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !221, file: !101, line: 143, type: !274, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !221, file: !101, line: 148, type: !280, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !232, !47}
!282 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !221, file: !101, line: 158, type: !268, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !221, file: !101, line: 162, type: !271, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubprogram(name: "~Printer", scope: !221, file: !101, line: 166, type: !271, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !{!286, !219}
!286 = !DITemplateValueParameter(name: "type", type: !47, value: i32 1)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!288 = !{!0, !22}
!289 = !{!290, !291}
!290 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !34, entity: !3, file: !18, line: 225)
!291 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !34, entity: !2, file: !6, line: 29)
!292 = !{i32 7, !"Dwarf Version", i32 4}
!293 = !{i32 2, !"Debug Info Version", i32 3}
!294 = !{i32 1, !"wchar_size", i32 4}
!295 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!296 = distinct !DISubprogram(name: "halide_locked_cache_malloc", scope: !6, file: !6, line: 158, type: !297, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!13, !13, !17}
!299 = !{!300, !301, !302}
!300 = !DILocalVariable(name: "user_context", arg: 1, scope: !296, file: !6, line: 158, type: !13)
!301 = !DILocalVariable(name: "size", arg: 2, scope: !296, file: !6, line: 158, type: !17)
!302 = !DILocalVariable(name: "retry", scope: !296, file: !6, line: 161, type: !15)
!303 = !DILocation(line: 0, scope: !296)
!304 = !DILocalVariable(name: "this", arg: 1, scope: !305, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!305 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !103, file: !101, line: 37, type: !115, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !114, retainedNodes: !306)
!306 = !{!304, !307, !308}
!307 = !DILocalVariable(name: "ctx", arg: 2, scope: !305, file: !101, line: 37, type: !13)
!308 = !DILocalVariable(name: "mem", arg: 3, scope: !305, file: !101, line: 37, type: !106)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!310 = !DILocation(line: 0, scope: !305, inlinedAt: !311)
!311 = distinct !DILocation(line: 162, column: 5, scope: !296)
!312 = !DILocation(line: 44, column: 27, scope: !313, inlinedAt: !311)
!313 = distinct !DILexicalBlock(scope: !314, file: !101, line: 43, column: 16)
!314 = distinct !DILexicalBlock(scope: !315, file: !101, line: 41, column: 20)
!315 = distinct !DILexicalBlock(scope: !316, file: !101, line: 39, column: 13)
!316 = distinct !DILexicalBlock(scope: !305, file: !101, line: 38, column: 54)
!317 = !DILocation(line: 48, column: 13, scope: !318, inlinedAt: !311)
!318 = distinct !DILexicalBlock(scope: !316, file: !101, line: 48, column: 13)
!319 = !DILocation(line: 48, column: 13, scope: !316, inlinedAt: !311)
!320 = !DILocalVariable(name: "this", arg: 1, scope: !321, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!321 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !103, file: !101, line: 57, type: !119, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !118, retainedNodes: !322)
!322 = !{!320, !323}
!323 = !DILocalVariable(name: "arg", arg: 2, scope: !321, file: !101, line: 57, type: !122)
!324 = !DILocation(line: 0, scope: !321, inlinedAt: !325)
!325 = distinct !DILocation(line: 162, column: 25, scope: !296)
!326 = !DILocation(line: 62, column: 19, scope: !327, inlinedAt: !325)
!327 = distinct !DILexicalBlock(scope: !328, file: !101, line: 61, column: 16)
!328 = distinct !DILexicalBlock(scope: !321, file: !101, line: 59, column: 13)
!329 = !DILocalVariable(name: "this", arg: 1, scope: !330, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!330 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !103, file: !101, line: 166, type: !203, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !216, retainedNodes: !331)
!331 = !{!329}
!332 = !DILocation(line: 0, scope: !330, inlinedAt: !333)
!333 = distinct !DILocation(line: 162, column: 5, scope: !296)
!334 = !DILocation(line: 168, column: 13, scope: !335, inlinedAt: !333)
!335 = distinct !DILexicalBlock(scope: !336, file: !101, line: 167, column: 19)
!336 = distinct !DILexicalBlock(scope: !337, file: !101, line: 167, column: 13)
!337 = distinct !DILexicalBlock(scope: !330, file: !101, line: 166, column: 16)
!338 = !DILocation(line: 169, column: 9, scope: !335, inlinedAt: !333)
!339 = !DILocation(line: 49, column: 23, scope: !340, inlinedAt: !311)
!340 = distinct !DILexicalBlock(scope: !318, file: !101, line: 48, column: 18)
!341 = !DILocation(line: 50, column: 18, scope: !340, inlinedAt: !311)
!342 = !{!343, !343, i64 0}
!343 = !{!"omnipotent char", !344, i64 0}
!344 = !{!"Simple C++ TBAA"}
!345 = !DILocalVariable(name: "this", arg: 1, scope: !346, type: !309, flags: DIFlagArtificial | DIFlagObjectPointer)
!346 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !103, file: !101, line: 162, type: !203, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !215, retainedNodes: !347)
!347 = !{!345}
!348 = !DILocation(line: 0, scope: !346, inlinedAt: !349)
!349 = distinct !DILocation(line: 170, column: 13, scope: !350, inlinedAt: !333)
!350 = distinct !DILexicalBlock(scope: !336, file: !101, line: 169, column: 16)
!351 = !DILocation(line: 163, column: 81, scope: !346, inlinedAt: !349)
!352 = !DILocation(line: 163, column: 87, scope: !346, inlinedAt: !349)
!353 = !DILocation(line: 163, column: 15, scope: !346, inlinedAt: !349)
!354 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !333)
!355 = distinct !DILexicalBlock(scope: !356, file: !101, line: 173, column: 46)
!356 = distinct !DILexicalBlock(scope: !357, file: !101, line: 173, column: 24)
!357 = distinct !DILexicalBlock(scope: !350, file: !101, line: 171, column: 17)
!358 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !333)
!359 = distinct !DILexicalBlock(scope: !360, file: !101, line: 180, column: 40)
!360 = distinct !DILexicalBlock(scope: !337, file: !101, line: 180, column: 13)
!361 = !DILocalVariable(name: "user_context", arg: 1, scope: !362, file: !6, line: 64, type: !13)
!362 = distinct !DISubprogram(name: "hexagon_cache_pool_get", linkageName: "_ZN12_GLOBAL__N_122hexagon_cache_pool_getEPvmb", scope: !363, file: !6, line: 64, type: !364, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !366)
!363 = !DINamespace(scope: null)
!364 = !DISubroutineType(types: !365)
!365 = !{!13, !13, !17, !15}
!366 = !{!361, !367, !368, !369, !370, !371, !385, !386, !389}
!367 = !DILocalVariable(name: "size", arg: 2, scope: !362, file: !6, line: 64, type: !17)
!368 = !DILocalVariable(name: "retry", arg: 3, scope: !362, file: !6, line: 64, type: !15)
!369 = !DILocalVariable(name: "prev", scope: !362, file: !6, line: 66, type: !7)
!370 = !DILocalVariable(name: "temp", scope: !362, file: !6, line: 67, type: !7)
!371 = !DILocalVariable(name: "lock", scope: !372, file: !6, line: 70, type: !373)
!372 = distinct !DILexicalBlock(scope: !362, file: !6, line: 69, column: 5)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !374, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !375, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!374 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!375 = !{!376, !378, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !373, file: !374, line: 12, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!378 = !DISubprogram(name: "ScopedMutexLock", scope: !373, file: !374, line: 14, type: !379, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !377}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!382 = !DISubprogram(name: "~ScopedMutexLock", scope: !373, file: !374, line: 19, type: !383, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !381}
!385 = !DILocalVariable(name: "mem", scope: !362, file: !6, line: 88, type: !287)
!386 = !DILocalVariable(name: "prev_node", scope: !387, file: !6, line: 90, type: !7)
!387 = distinct !DILexicalBlock(scope: !388, file: !6, line: 89, column: 36)
!388 = distinct !DILexicalBlock(scope: !362, file: !6, line: 89, column: 9)
!389 = !DILocalVariable(name: "lock_obj", scope: !390, file: !6, line: 110, type: !373)
!390 = distinct !DILexicalBlock(scope: !362, file: !6, line: 109, column: 5)
!391 = !DILocation(line: 0, scope: !362, inlinedAt: !392)
!392 = distinct !DILocation(line: 163, column: 12, scope: !296)
!393 = !DILocation(line: 67, column: 24, scope: !362, inlinedAt: !392)
!394 = !{!395, !395, i64 0}
!395 = !{!"any pointer", !343, i64 0}
!396 = !DILocalVariable(name: "this", arg: 1, scope: !397, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!397 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !373, file: !374, line: 14, type: !379, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !378, retainedNodes: !398)
!398 = !{!396, !399}
!399 = !DILocalVariable(name: "mutex", arg: 2, scope: !397, file: !374, line: 14, type: !377)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!401 = !DILocation(line: 0, scope: !397, inlinedAt: !402)
!402 = distinct !DILocation(line: 70, column: 25, scope: !372, inlinedAt: !392)
!403 = !DILocation(line: 0, scope: !372, inlinedAt: !392)
!404 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !402)
!405 = distinct !DILexicalBlock(scope: !397, file: !374, line: 15, column: 24)
!406 = !DILocation(line: 71, column: 21, scope: !372, inlinedAt: !392)
!407 = !DILocation(line: 71, column: 9, scope: !372, inlinedAt: !392)
!408 = !DILocation(line: 72, column: 24, scope: !409, inlinedAt: !392)
!409 = distinct !DILexicalBlock(scope: !410, file: !6, line: 72, column: 17)
!410 = distinct !DILexicalBlock(scope: !372, file: !6, line: 71, column: 33)
!411 = !{!412, !413, i64 8}
!412 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon19hexagon_local_cacheE", !395, i64 0, !413, i64 8, !414, i64 16, !395, i64 24}
!413 = !{!"bool", !343, i64 0}
!414 = !{!"long", !343, i64 0}
!415 = !{i8 0, i8 2}
!416 = !DILocation(line: 72, column: 29, scope: !409, inlinedAt: !392)
!417 = !DILocation(line: 72, column: 39, scope: !409, inlinedAt: !392)
!418 = !DILocation(line: 73, column: 32, scope: !409, inlinedAt: !392)
!419 = !{!412, !414, i64 16}
!420 = !DILocation(line: 73, column: 23, scope: !409, inlinedAt: !392)
!421 = !DILocation(line: 72, column: 17, scope: !410, inlinedAt: !392)
!422 = !DILocation(line: 78, column: 26, scope: !410, inlinedAt: !392)
!423 = !{!412, !395, i64 24}
!424 = distinct !{!424, !407, !425, !426}
!425 = !DILocation(line: 79, column: 9, scope: !372, inlinedAt: !392)
!426 = !{!"llvm.loop.mustprogress"}
!427 = !DILocation(line: 74, column: 28, scope: !428, inlinedAt: !392)
!428 = distinct !DILexicalBlock(scope: !409, file: !6, line: 73, column: 40)
!429 = !DILocation(line: 75, column: 38, scope: !428, inlinedAt: !392)
!430 = !{!412, !395, i64 0}
!431 = !DILocalVariable(name: "this", arg: 1, scope: !432, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!432 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !373, file: !374, line: 19, type: !383, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !382, retainedNodes: !433)
!433 = !{!431}
!434 = !DILocation(line: 0, scope: !432, inlinedAt: !435)
!435 = distinct !DILocation(line: 80, column: 5, scope: !362, inlinedAt: !392)
!436 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !435)
!437 = distinct !DILexicalBlock(scope: !432, file: !374, line: 19, column: 38)
!438 = !DILocation(line: 83, column: 25, scope: !362, inlinedAt: !392)
!439 = !DILocation(line: 84, column: 14, scope: !440, inlinedAt: !392)
!440 = distinct !DILexicalBlock(scope: !362, file: !6, line: 84, column: 9)
!441 = !DILocation(line: 84, column: 9, scope: !362, inlinedAt: !392)
!442 = !DILocalVariable(name: "this", arg: 1, scope: !443, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!443 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !221, file: !101, line: 37, type: !230, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !229, retainedNodes: !444)
!444 = !{!442, !445, !446}
!445 = !DILocalVariable(name: "ctx", arg: 2, scope: !443, file: !101, line: 37, type: !13)
!446 = !DILocalVariable(name: "mem", arg: 3, scope: !443, file: !101, line: 37, type: !106)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!448 = !DILocation(line: 0, scope: !443, inlinedAt: !449)
!449 = distinct !DILocation(line: 85, column: 9, scope: !450, inlinedAt: !392)
!450 = distinct !DILexicalBlock(scope: !440, file: !6, line: 84, column: 26)
!451 = !DILocation(line: 44, column: 27, scope: !452, inlinedAt: !449)
!452 = distinct !DILexicalBlock(scope: !453, file: !101, line: 43, column: 16)
!453 = distinct !DILexicalBlock(scope: !454, file: !101, line: 41, column: 20)
!454 = distinct !DILexicalBlock(scope: !455, file: !101, line: 39, column: 13)
!455 = distinct !DILexicalBlock(scope: !443, file: !101, line: 38, column: 54)
!456 = !DILocation(line: 48, column: 13, scope: !457, inlinedAt: !449)
!457 = distinct !DILexicalBlock(scope: !455, file: !101, line: 48, column: 13)
!458 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !449)
!459 = !DILocalVariable(name: "this", arg: 1, scope: !460, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!460 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !221, file: !101, line: 57, type: !234, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !233, retainedNodes: !461)
!461 = !{!459, !462}
!462 = !DILocalVariable(name: "arg", arg: 2, scope: !460, file: !101, line: 57, type: !122)
!463 = !DILocation(line: 0, scope: !460, inlinedAt: !464)
!464 = distinct !DILocation(line: 85, column: 29, scope: !450, inlinedAt: !392)
!465 = !DILocation(line: 62, column: 19, scope: !466, inlinedAt: !464)
!466 = distinct !DILexicalBlock(scope: !467, file: !101, line: 61, column: 16)
!467 = distinct !DILexicalBlock(scope: !460, file: !101, line: 59, column: 13)
!468 = !DILocalVariable(name: "this", arg: 1, scope: !469, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !221, file: !101, line: 166, type: !271, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !284, retainedNodes: !470)
!470 = !{!468}
!471 = !DILocation(line: 0, scope: !469, inlinedAt: !472)
!472 = distinct !DILocation(line: 85, column: 9, scope: !450, inlinedAt: !392)
!473 = !DILocation(line: 168, column: 13, scope: !474, inlinedAt: !472)
!474 = distinct !DILexicalBlock(scope: !475, file: !101, line: 167, column: 19)
!475 = distinct !DILexicalBlock(scope: !476, file: !101, line: 167, column: 13)
!476 = distinct !DILexicalBlock(scope: !469, file: !101, line: 166, column: 16)
!477 = !DILocation(line: 169, column: 9, scope: !474, inlinedAt: !472)
!478 = !DILocation(line: 49, column: 23, scope: !479, inlinedAt: !449)
!479 = distinct !DILexicalBlock(scope: !457, file: !101, line: 48, column: 18)
!480 = !DILocation(line: 50, column: 18, scope: !479, inlinedAt: !449)
!481 = !DILocalVariable(name: "this", arg: 1, scope: !482, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!482 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !221, file: !101, line: 162, type: !271, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, declaration: !283, retainedNodes: !483)
!483 = !{!481}
!484 = !DILocation(line: 0, scope: !482, inlinedAt: !485)
!485 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !472)
!486 = distinct !DILexicalBlock(scope: !475, file: !101, line: 169, column: 16)
!487 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !485)
!488 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !485)
!489 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !485)
!490 = !DILocation(line: 172, column: 17, scope: !491, inlinedAt: !472)
!491 = distinct !DILexicalBlock(scope: !492, file: !101, line: 171, column: 39)
!492 = distinct !DILexicalBlock(scope: !486, file: !101, line: 171, column: 17)
!493 = !DILocation(line: 181, column: 13, scope: !494, inlinedAt: !472)
!494 = distinct !DILexicalBlock(scope: !495, file: !101, line: 180, column: 40)
!495 = distinct !DILexicalBlock(scope: !476, file: !101, line: 180, column: 13)
!496 = !DILocation(line: 86, column: 9, scope: !450, inlinedAt: !392)
!497 = !DILocation(line: 88, column: 46, scope: !362, inlinedAt: !392)
!498 = !DILocation(line: 88, column: 31, scope: !362, inlinedAt: !392)
!499 = !DILocation(line: 89, column: 14, scope: !388, inlinedAt: !392)
!500 = !DILocation(line: 99, column: 16, scope: !388, inlinedAt: !392)
!501 = !DILocation(line: 100, column: 9, scope: !502, inlinedAt: !392)
!502 = distinct !DILexicalBlock(scope: !503, file: !6, line: 99, column: 32)
!503 = distinct !DILexicalBlock(scope: !388, file: !6, line: 99, column: 16)
!504 = !DILocation(line: 0, scope: !443, inlinedAt: !505)
!505 = distinct !DILocation(line: 101, column: 9, scope: !502, inlinedAt: !392)
!506 = !DILocation(line: 44, column: 27, scope: !452, inlinedAt: !505)
!507 = !DILocation(line: 48, column: 13, scope: !457, inlinedAt: !505)
!508 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !505)
!509 = !DILocation(line: 0, scope: !460, inlinedAt: !510)
!510 = distinct !DILocation(line: 101, column: 29, scope: !502, inlinedAt: !392)
!511 = !DILocation(line: 62, column: 19, scope: !466, inlinedAt: !510)
!512 = !DILocation(line: 0, scope: !469, inlinedAt: !513)
!513 = distinct !DILocation(line: 101, column: 9, scope: !502, inlinedAt: !392)
!514 = !DILocation(line: 168, column: 13, scope: !474, inlinedAt: !513)
!515 = !DILocation(line: 169, column: 9, scope: !474, inlinedAt: !513)
!516 = !DILocation(line: 49, column: 23, scope: !479, inlinedAt: !505)
!517 = !DILocation(line: 50, column: 18, scope: !479, inlinedAt: !505)
!518 = !DILocation(line: 0, scope: !482, inlinedAt: !519)
!519 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !513)
!520 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !519)
!521 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !519)
!522 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !519)
!523 = !DILocation(line: 172, column: 17, scope: !491, inlinedAt: !513)
!524 = !DILocation(line: 181, column: 13, scope: !494, inlinedAt: !513)
!525 = !DILocation(line: 102, column: 9, scope: !502, inlinedAt: !392)
!526 = !DILocation(line: 104, column: 11, scope: !362, inlinedAt: !392)
!527 = !DILocation(line: 104, column: 20, scope: !362, inlinedAt: !392)
!528 = !DILocation(line: 105, column: 11, scope: !362, inlinedAt: !392)
!529 = !DILocation(line: 105, column: 17, scope: !362, inlinedAt: !392)
!530 = !DILocation(line: 106, column: 11, scope: !362, inlinedAt: !392)
!531 = !DILocation(line: 106, column: 16, scope: !362, inlinedAt: !392)
!532 = !DILocation(line: 107, column: 11, scope: !362, inlinedAt: !392)
!533 = !DILocation(line: 107, column: 16, scope: !362, inlinedAt: !392)
!534 = !DILocation(line: 0, scope: !397, inlinedAt: !535)
!535 = distinct !DILocation(line: 110, column: 25, scope: !390, inlinedAt: !392)
!536 = !DILocation(line: 0, scope: !390, inlinedAt: !392)
!537 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !535)
!538 = !DILocation(line: 111, column: 18, scope: !539, inlinedAt: !392)
!539 = distinct !DILexicalBlock(scope: !390, file: !6, line: 111, column: 13)
!540 = !DILocation(line: 111, column: 13, scope: !390, inlinedAt: !392)
!541 = !DILocation(line: 112, column: 19, scope: !542, inlinedAt: !392)
!542 = distinct !DILexicalBlock(scope: !539, file: !6, line: 111, column: 30)
!543 = !DILocation(line: 112, column: 24, scope: !542, inlinedAt: !392)
!544 = !DILocation(line: 113, column: 9, scope: !542, inlinedAt: !392)
!545 = !DILocation(line: 113, column: 20, scope: !546, inlinedAt: !392)
!546 = distinct !DILexicalBlock(scope: !539, file: !6, line: 113, column: 20)
!547 = !DILocation(line: 113, column: 39, scope: !546, inlinedAt: !392)
!548 = !DILocation(line: 113, column: 20, scope: !539, inlinedAt: !392)
!549 = !DILocation(line: 0, scope: !539, inlinedAt: !392)
!550 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !551)
!551 = distinct !DILocation(line: 116, column: 5, scope: !362, inlinedAt: !392)
!552 = !DILocation(line: 0, scope: !432, inlinedAt: !551)
!553 = !DILocation(line: 117, column: 26, scope: !362, inlinedAt: !392)
!554 = !DILocation(line: 117, column: 5, scope: !362, inlinedAt: !392)
!555 = !DILocation(line: 163, column: 5, scope: !296)
!556 = distinct !DISubprogram(name: "halide_locked_cache_free", scope: !6, file: !6, line: 166, type: !557, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !13, !13}
!559 = !{!560, !561}
!560 = !DILocalVariable(name: "user_context", arg: 1, scope: !556, file: !6, line: 166, type: !13)
!561 = !DILocalVariable(name: "ptr", arg: 2, scope: !556, file: !6, line: 166, type: !13)
!562 = !DILocation(line: 0, scope: !556)
!563 = !DILocation(line: 0, scope: !305, inlinedAt: !564)
!564 = distinct !DILocation(line: 167, column: 5, scope: !556)
!565 = !DILocation(line: 44, column: 27, scope: !313, inlinedAt: !564)
!566 = !DILocation(line: 48, column: 13, scope: !318, inlinedAt: !564)
!567 = !DILocation(line: 48, column: 13, scope: !316, inlinedAt: !564)
!568 = !DILocation(line: 0, scope: !321, inlinedAt: !569)
!569 = distinct !DILocation(line: 167, column: 25, scope: !556)
!570 = !DILocation(line: 62, column: 19, scope: !327, inlinedAt: !569)
!571 = !DILocation(line: 0, scope: !330, inlinedAt: !572)
!572 = distinct !DILocation(line: 167, column: 5, scope: !556)
!573 = !DILocation(line: 168, column: 13, scope: !335, inlinedAt: !572)
!574 = !DILocation(line: 169, column: 9, scope: !335, inlinedAt: !572)
!575 = !DILocation(line: 49, column: 23, scope: !340, inlinedAt: !564)
!576 = !DILocation(line: 50, column: 18, scope: !340, inlinedAt: !564)
!577 = !DILocation(line: 0, scope: !346, inlinedAt: !578)
!578 = distinct !DILocation(line: 170, column: 13, scope: !350, inlinedAt: !572)
!579 = !DILocation(line: 163, column: 81, scope: !346, inlinedAt: !578)
!580 = !DILocation(line: 163, column: 87, scope: !346, inlinedAt: !578)
!581 = !DILocation(line: 163, column: 15, scope: !346, inlinedAt: !578)
!582 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !572)
!583 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !572)
!584 = !DILocalVariable(name: "user_context", arg: 1, scope: !585, file: !6, line: 120, type: !13)
!585 = distinct !DISubprogram(name: "hexagon_cache_pool_put", linkageName: "_ZN12_GLOBAL__N_122hexagon_cache_pool_putEPvS0_", scope: !363, file: !6, line: 120, type: !557, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !586)
!586 = !{!584, !587, !588, !589}
!587 = !DILocalVariable(name: "cache_mem", arg: 2, scope: !585, file: !6, line: 120, type: !13)
!588 = !DILocalVariable(name: "lock", scope: !585, file: !6, line: 121, type: !373)
!589 = !DILocalVariable(name: "temp", scope: !585, file: !6, line: 123, type: !7)
!590 = !DILocation(line: 0, scope: !585, inlinedAt: !591)
!591 = distinct !DILocation(line: 168, column: 5, scope: !556)
!592 = !DILocation(line: 0, scope: !397, inlinedAt: !593)
!593 = distinct !DILocation(line: 121, column: 21, scope: !585, inlinedAt: !591)
!594 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !593)
!595 = !DILocation(line: 122, column: 5, scope: !596, inlinedAt: !591)
!596 = distinct !DILexicalBlock(scope: !597, file: !6, line: 122, column: 5)
!597 = distinct !DILexicalBlock(scope: !585, file: !6, line: 122, column: 5)
!598 = !DILocation(line: 122, column: 5, scope: !597, inlinedAt: !591)
!599 = !DILocation(line: 122, column: 5, scope: !600, inlinedAt: !591)
!600 = distinct !DILexicalBlock(scope: !596, file: !6, line: 122, column: 5)
!601 = !DILocation(line: 124, column: 17, scope: !585, inlinedAt: !591)
!602 = !DILocation(line: 124, column: 5, scope: !585, inlinedAt: !591)
!603 = !DILocation(line: 125, column: 19, scope: !604, inlinedAt: !591)
!604 = distinct !DILexicalBlock(scope: !605, file: !6, line: 125, column: 13)
!605 = distinct !DILexicalBlock(scope: !585, file: !6, line: 124, column: 29)
!606 = !DILocation(line: 125, column: 28, scope: !604, inlinedAt: !591)
!607 = !DILocation(line: 125, column: 13, scope: !605, inlinedAt: !591)
!608 = !DILocation(line: 126, column: 19, scope: !609, inlinedAt: !591)
!609 = distinct !DILexicalBlock(scope: !604, file: !6, line: 125, column: 42)
!610 = !DILocation(line: 126, column: 24, scope: !609, inlinedAt: !591)
!611 = !DILocation(line: 127, column: 13, scope: !609, inlinedAt: !591)
!612 = !DILocation(line: 129, column: 22, scope: !605, inlinedAt: !591)
!613 = distinct !{!613, !602, !614, !426}
!614 = !DILocation(line: 130, column: 5, scope: !585, inlinedAt: !591)
!615 = !DILocation(line: 0, scope: !432, inlinedAt: !616)
!616 = distinct !DILocation(line: 131, column: 1, scope: !585, inlinedAt: !591)
!617 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !616)
!618 = !DILocation(line: 169, column: 1, scope: !556)
!619 = distinct !DISubprogram(name: "halide_hexagon_allocate_l2_pool", scope: !6, file: !6, line: 171, type: !620, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!47, !13}
!622 = !{!623}
!623 = !DILocalVariable(name: "user_context", arg: 1, scope: !619, file: !6, line: 171, type: !13)
!624 = !DILocation(line: 0, scope: !619)
!625 = !DILocation(line: 0, scope: !305, inlinedAt: !626)
!626 = distinct !DILocation(line: 173, column: 5, scope: !619)
!627 = !DILocation(line: 44, column: 27, scope: !313, inlinedAt: !626)
!628 = !DILocation(line: 48, column: 13, scope: !318, inlinedAt: !626)
!629 = !DILocation(line: 48, column: 13, scope: !316, inlinedAt: !626)
!630 = !DILocation(line: 0, scope: !321, inlinedAt: !631)
!631 = distinct !DILocation(line: 173, column: 25, scope: !619)
!632 = !DILocation(line: 62, column: 19, scope: !327, inlinedAt: !631)
!633 = !DILocation(line: 0, scope: !330, inlinedAt: !634)
!634 = distinct !DILocation(line: 173, column: 5, scope: !619)
!635 = !DILocation(line: 168, column: 13, scope: !335, inlinedAt: !634)
!636 = !DILocation(line: 169, column: 9, scope: !335, inlinedAt: !634)
!637 = !DILocation(line: 49, column: 23, scope: !340, inlinedAt: !626)
!638 = !DILocation(line: 50, column: 18, scope: !340, inlinedAt: !626)
!639 = !DILocation(line: 0, scope: !346, inlinedAt: !640)
!640 = distinct !DILocation(line: 170, column: 13, scope: !350, inlinedAt: !634)
!641 = !DILocation(line: 163, column: 81, scope: !346, inlinedAt: !640)
!642 = !DILocation(line: 163, column: 87, scope: !346, inlinedAt: !640)
!643 = !DILocation(line: 163, column: 15, scope: !346, inlinedAt: !640)
!644 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !634)
!645 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !634)
!646 = !DILocation(line: 174, column: 5, scope: !619)
!647 = distinct !DISubprogram(name: "halide_hexagon_free_l2_pool", scope: !6, file: !6, line: 177, type: !620, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !648)
!648 = !{!649}
!649 = !DILocalVariable(name: "user_context", arg: 1, scope: !647, file: !6, line: 177, type: !13)
!650 = !DILocation(line: 0, scope: !647)
!651 = !DILocation(line: 0, scope: !305, inlinedAt: !652)
!652 = distinct !DILocation(line: 178, column: 5, scope: !647)
!653 = !DILocation(line: 44, column: 27, scope: !313, inlinedAt: !652)
!654 = !DILocation(line: 48, column: 13, scope: !318, inlinedAt: !652)
!655 = !DILocation(line: 48, column: 13, scope: !316, inlinedAt: !652)
!656 = !DILocation(line: 0, scope: !321, inlinedAt: !657)
!657 = distinct !DILocation(line: 178, column: 25, scope: !647)
!658 = !DILocation(line: 62, column: 19, scope: !327, inlinedAt: !657)
!659 = !DILocation(line: 0, scope: !330, inlinedAt: !660)
!660 = distinct !DILocation(line: 178, column: 5, scope: !647)
!661 = !DILocation(line: 168, column: 13, scope: !335, inlinedAt: !660)
!662 = !DILocation(line: 169, column: 9, scope: !335, inlinedAt: !660)
!663 = !DILocation(line: 49, column: 23, scope: !340, inlinedAt: !652)
!664 = !DILocation(line: 50, column: 18, scope: !340, inlinedAt: !652)
!665 = !DILocation(line: 0, scope: !346, inlinedAt: !666)
!666 = distinct !DILocation(line: 170, column: 13, scope: !350, inlinedAt: !660)
!667 = !DILocation(line: 163, column: 81, scope: !346, inlinedAt: !666)
!668 = !DILocation(line: 163, column: 87, scope: !346, inlinedAt: !666)
!669 = !DILocation(line: 163, column: 15, scope: !346, inlinedAt: !666)
!670 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !660)
!671 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !660)
!672 = !DILocalVariable(name: "user_context", arg: 1, scope: !673, file: !6, line: 133, type: !13)
!673 = distinct !DISubprogram(name: "hexagon_cache_pool_free", linkageName: "_ZN12_GLOBAL__N_123hexagon_cache_pool_freeEPv", scope: !363, file: !6, line: 133, type: !620, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !674)
!674 = !{!672, !675, !676, !677, !678}
!675 = !DILocalVariable(name: "lock", scope: !673, file: !6, line: 134, type: !373)
!676 = !DILocalVariable(name: "temp", scope: !673, file: !6, line: 135, type: !7)
!677 = !DILocalVariable(name: "prev", scope: !673, file: !6, line: 136, type: !7)
!678 = !DILocalVariable(name: "err", scope: !673, file: !6, line: 137, type: !47)
!679 = !DILocation(line: 0, scope: !673, inlinedAt: !680)
!680 = distinct !DILocation(line: 179, column: 12, scope: !647)
!681 = !DILocation(line: 0, scope: !397, inlinedAt: !682)
!682 = distinct !DILocation(line: 134, column: 21, scope: !673, inlinedAt: !680)
!683 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !682)
!684 = !DILocation(line: 135, column: 24, scope: !673, inlinedAt: !680)
!685 = !DILocation(line: 138, column: 17, scope: !673, inlinedAt: !680)
!686 = !DILocation(line: 138, column: 5, scope: !673, inlinedAt: !680)
!687 = !DILocation(line: 139, column: 19, scope: !688, inlinedAt: !680)
!688 = distinct !DILexicalBlock(scope: !689, file: !6, line: 139, column: 13)
!689 = distinct !DILexicalBlock(scope: !673, file: !6, line: 138, column: 29)
!690 = !DILocation(line: 139, column: 28, scope: !688, inlinedAt: !680)
!691 = !DILocation(line: 139, column: 13, scope: !689, inlinedAt: !680)
!692 = !DILocation(line: 140, column: 19, scope: !693, inlinedAt: !680)
!693 = distinct !DILexicalBlock(scope: !688, file: !6, line: 139, column: 40)
!694 = !DILocation(line: 141, column: 21, scope: !695, inlinedAt: !680)
!695 = distinct !DILexicalBlock(scope: !693, file: !6, line: 141, column: 17)
!696 = !DILocation(line: 141, column: 17, scope: !693, inlinedAt: !680)
!697 = !DILocation(line: 0, scope: !443, inlinedAt: !698)
!698 = distinct !DILocation(line: 142, column: 17, scope: !699, inlinedAt: !680)
!699 = distinct !DILexicalBlock(scope: !695, file: !6, line: 141, column: 34)
!700 = !DILocation(line: 44, column: 27, scope: !452, inlinedAt: !698)
!701 = !DILocation(line: 48, column: 13, scope: !457, inlinedAt: !698)
!702 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !698)
!703 = !DILocation(line: 0, scope: !460, inlinedAt: !704)
!704 = distinct !DILocation(line: 142, column: 37, scope: !699, inlinedAt: !680)
!705 = !DILocation(line: 62, column: 19, scope: !466, inlinedAt: !704)
!706 = !DILocation(line: 0, scope: !469, inlinedAt: !707)
!707 = distinct !DILocation(line: 142, column: 17, scope: !699, inlinedAt: !680)
!708 = !DILocation(line: 168, column: 13, scope: !474, inlinedAt: !707)
!709 = !DILocation(line: 169, column: 9, scope: !474, inlinedAt: !707)
!710 = !DILocation(line: 49, column: 23, scope: !479, inlinedAt: !698)
!711 = !DILocation(line: 50, column: 18, scope: !479, inlinedAt: !698)
!712 = !DILocation(line: 0, scope: !482, inlinedAt: !713)
!713 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !707)
!714 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !713)
!715 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !713)
!716 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !713)
!717 = !DILocation(line: 172, column: 17, scope: !491, inlinedAt: !707)
!718 = !DILocation(line: 181, column: 13, scope: !494, inlinedAt: !707)
!719 = !DILocation(line: 143, column: 17, scope: !699, inlinedAt: !680)
!720 = !DILocation(line: 146, column: 22, scope: !689, inlinedAt: !680)
!721 = !DILocation(line: 147, column: 14, scope: !689, inlinedAt: !680)
!722 = !DILocation(line: 147, column: 9, scope: !689, inlinedAt: !680)
!723 = distinct !{!723, !686, !724, !426}
!724 = !DILocation(line: 149, column: 5, scope: !673, inlinedAt: !680)
!725 = !DILocation(line: 150, column: 24, scope: !673, inlinedAt: !680)
!726 = !DILocation(line: 151, column: 5, scope: !673, inlinedAt: !680)
!727 = !DILocation(line: 0, scope: !432, inlinedAt: !728)
!728 = distinct !DILocation(line: 152, column: 1, scope: !673, inlinedAt: !680)
!729 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !728)
!730 = !DILocation(line: 179, column: 5, scope: !647)
!731 = !DISubprogram(name: "malloc", scope: !18, file: !18, line: 87, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!13, !19}
!734 = !{}
!735 = !DISubprogram(name: "HAP_cache_lock", scope: !95, file: !95, line: 154, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!736 = !DISubroutineType(types: !737)
!737 = !{!13, !96, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!739 = !DISubprogram(name: "free", scope: !18, file: !18, line: 86, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !13}
!742 = !DISubprogram(name: "halide_mutex_lock", scope: !25, file: !25, line: 133, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !377}
!745 = !DISubprogram(name: "halide_mutex_unlock", scope: !25, file: !25, line: 134, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!746 = !DISubprogram(name: "halide_string_to_string", scope: !18, file: !18, line: 120, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!747 = !DISubroutineType(types: !748)
!748 = !{!106, !106, !106, !122}
!749 = !DISubprogram(name: "halide_error", scope: !25, file: !25, line: 111, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !13, !122}
!752 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !25, file: !25, line: 973, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!753 = !DISubroutineType(types: !754)
!754 = !{!47, !13, !151, !31}
!755 = !DISubprogram(name: "HAP_cache_unlock", scope: !95, file: !95, line: 163, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!756 = !DISubprogram(name: "halide_print", scope: !25, file: !25, line: 97, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!757 = !DISubprogram(name: "abort", scope: !18, file: !18, line: 108, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !734)
!758 = !DISubroutineType(types: !759)
!759 = !{null}
