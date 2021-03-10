; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache" = type { i8*, i8, i32, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* }
%struct.halide_mutex = type { [1 x i32] }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

@_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 4, !dbg !22
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
define weak dso_local i8* @halide_locked_cache_malloc(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !295 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !299, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i32 %1, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i8 0, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !303, metadata !DIExpression()) #3, !dbg !309
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()) #3, !dbg !309
  call void @llvm.dbg.value(metadata i8* null, metadata !307, metadata !DIExpression()) #3, !dbg !309
  %3 = tail call i8* @malloc(i32 1024) #4, !dbg !311
  %4 = icmp eq i8* %3, null, !dbg !316
  br i1 %4, label %5, label %7, !dbg !318

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !323
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !323
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #4, !dbg !325
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !331
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !333
  br label %16, !dbg !337

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !338
  store i8 0, i8* %8, align 1, !dbg !340, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !323
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !323
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #4, !dbg !325
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !331
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !344, metadata !DIExpression()) #3, !dbg !347
  %10 = ptrtoint i8* %9 to i32, !dbg !350
  %11 = ptrtoint i8* %3 to i32, !dbg !350
  %12 = add i32 %10, 1, !dbg !350
  %13 = sub i32 %12, %11, !dbg !351
  %14 = sext i32 %13 to i64, !dbg !352
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #4, !dbg !353
  tail call void @halide_print(i8* %0, i8* nonnull %3) #4, !dbg !354
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #4, !dbg !358
  call void @llvm.dbg.value(metadata i8* %0, metadata !361, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata i32 %1, metadata !367, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata i8 0, metadata !368, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, metadata !369, metadata !DIExpression()) #3, !dbg !391
  %17 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !dbg !393, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %17, metadata !370, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !401
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !401
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !371, metadata !DIExpression()) #3, !dbg !403
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !404
  %18 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %17, null, !dbg !406
  br i1 %18, label %35, label %19, !dbg !407

19:                                               ; preds = %16, %28
  %20 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %30, %28 ], [ %17, %16 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, metadata !370, metadata !DIExpression()) #3, !dbg !391
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, i32 0, i32 1, !dbg !408
  %22 = load i8, i8* %21, align 4, !dbg !408, !tbaa !411, !range !415
  %23 = icmp eq i8 %22, 0, !dbg !416
  br i1 %23, label %24, label %28, !dbg !417

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, i32 0, i32 2, !dbg !418
  %26 = load i32, i32* %25, align 4, !dbg !418, !tbaa !419
  %27 = icmp eq i32 %26, %1, !dbg !420
  br i1 %27, label %32, label %28, !dbg !421

28:                                               ; preds = %24, %19
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, metadata !369, metadata !DIExpression()) #3, !dbg !391
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, i32 0, i32 3, !dbg !422
  %30 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %29, align 4, !dbg !422, !tbaa !423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %30, metadata !370, metadata !DIExpression()) #3, !dbg !391
  %31 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %30, null, !dbg !406
  br i1 %31, label %35, label %19, !dbg !407, !llvm.loop !424

32:                                               ; preds = %24
  store i8 1, i8* %21, align 4, !dbg !427, !tbaa !411
  %33 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, i32 0, i32 0, !dbg !429
  %34 = load i8*, i8** %33, align 4, !dbg !429, !tbaa !430
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !434
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !436
  br label %90

35:                                               ; preds = %28, %16
  %36 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ null, %16 ], [ %20, %28 ], !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !434
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !436
  %37 = tail call i8* @malloc(i32 16) #4, !dbg !438
  call void @llvm.dbg.value(metadata i8* %37, metadata !370, metadata !DIExpression()) #3, !dbg !391
  %38 = icmp eq i8* %37, null, !dbg !439
  br i1 %38, label %39, label %54, !dbg !441

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !442, metadata !DIExpression()) #3, !dbg !448
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()) #3, !dbg !448
  call void @llvm.dbg.value(metadata i8* null, metadata !446, metadata !DIExpression()) #3, !dbg !448
  %40 = tail call i8* @malloc(i32 1024) #4, !dbg !451
  %41 = icmp eq i8* %40, null, !dbg !456
  br i1 %41, label %42, label %44, !dbg !458

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), metadata !462, metadata !DIExpression()) #3, !dbg !463
  %43 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0)) #4, !dbg !465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !471
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !473
  br label %53, !dbg !477

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, i8* %40, i32 1023, !dbg !478
  store i8 0, i8* %45, align 1, !dbg !480, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !463
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), metadata !462, metadata !DIExpression()) #3, !dbg !463
  %46 = tail call i8* @halide_string_to_string(i8* nonnull %40, i8* nonnull %45, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0)) #4, !dbg !465
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !471
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !481, metadata !DIExpression()) #3, !dbg !484
  %47 = ptrtoint i8* %46 to i32, !dbg !487
  %48 = ptrtoint i8* %40 to i32, !dbg !487
  %49 = sub i32 1, %48, !dbg !487
  %50 = add i32 %49, %47, !dbg !488
  %51 = sext i32 %50 to i64, !dbg !489
  %52 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %40, i64 %51) #4, !dbg !490
  tail call void @halide_error(i8* %0, i8* nonnull %40) #4, !dbg !491
  br label %53

53:                                               ; preds = %44, %42
  tail call void @free(i8* %40) #4, !dbg !494
  br label %90, !dbg !497

54:                                               ; preds = %35
  %55 = tail call i8* @HAP_cache_lock(i32 %1, i8** null) #4, !dbg !498
  call void @llvm.dbg.value(metadata i8* %55, metadata !385, metadata !DIExpression()) #3, !dbg !391
  %56 = icmp eq i8* %55, null, !dbg !499
  br i1 %56, label %57, label %72, !dbg !500

57:                                               ; preds = %54
  tail call void @free(i8* nonnull %37) #4, !dbg !501
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !442, metadata !DIExpression()) #3, !dbg !504
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()) #3, !dbg !504
  call void @llvm.dbg.value(metadata i8* null, metadata !446, metadata !DIExpression()) #3, !dbg !504
  %58 = tail call i8* @malloc(i32 1024) #4, !dbg !506
  %59 = icmp eq i8* %58, null, !dbg !507
  br i1 %59, label %60, label %62, !dbg !508

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), metadata !462, metadata !DIExpression()) #3, !dbg !509
  %61 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #4, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !512
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !514
  br label %71, !dbg !515

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, i8* %58, i32 1023, !dbg !516
  store i8 0, i8* %63, align 1, !dbg !517, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), metadata !462, metadata !DIExpression()) #3, !dbg !509
  %64 = tail call i8* @halide_string_to_string(i8* nonnull %58, i8* nonnull %63, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #4, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !512
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !481, metadata !DIExpression()) #3, !dbg !518
  %65 = ptrtoint i8* %64 to i32, !dbg !520
  %66 = ptrtoint i8* %58 to i32, !dbg !520
  %67 = sub i32 1, %66, !dbg !520
  %68 = add i32 %67, %65, !dbg !521
  %69 = sext i32 %68 to i64, !dbg !522
  %70 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %58, i64 %69) #4, !dbg !523
  tail call void @halide_error(i8* %0, i8* nonnull %58) #4, !dbg !524
  br label %71

71:                                               ; preds = %62, %60
  tail call void @free(i8* %58) #4, !dbg !525
  br label %90, !dbg !526

72:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !385, metadata !DIExpression()) #3, !dbg !391
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %36, metadata !369, metadata !DIExpression()) #3, !dbg !391
  %73 = bitcast i8* %37 to i8**, !dbg !527
  store i8* %55, i8** %73, align 4, !dbg !528, !tbaa !430
  %74 = getelementptr inbounds i8, i8* %37, i32 8, !dbg !529
  %75 = bitcast i8* %74 to i32*, !dbg !529
  store i32 %1, i32* %75, align 4, !dbg !530, !tbaa !419
  %76 = getelementptr inbounds i8, i8* %37, i32 4, !dbg !531
  store i8 1, i8* %76, align 4, !dbg !532, !tbaa !411
  %77 = getelementptr inbounds i8, i8* %37, i32 12, !dbg !533
  %78 = bitcast i8* %77 to %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"**, !dbg !533
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %78, align 4, !dbg !534, !tbaa !423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !535
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !535
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !389, metadata !DIExpression()) #3, !dbg !537
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !538
  %79 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %36, null, !dbg !539
  br i1 %79, label %83, label %80, !dbg !541

80:                                               ; preds = %72
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %36, i32 0, i32 3, !dbg !542
  %82 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %81 to i8**, !dbg !544
  br label %86, !dbg !545

83:                                               ; preds = %72
  %84 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !dbg !546, !tbaa !394
  %85 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %84, null, !dbg !548
  br i1 %85, label %86, label %88, !dbg !549

86:                                               ; preds = %83, %80
  %87 = phi i8** [ %82, %80 ], [ bitcast (%"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE to i8**), %83 ]
  store i8* %37, i8** %87, align 4, !dbg !550, !tbaa !394
  br label %88, !dbg !551

88:                                               ; preds = %86, %83
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !553
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !551
  %89 = load i8*, i8** %73, align 4, !dbg !554, !tbaa !430
  br label %90, !dbg !555

90:                                               ; preds = %32, %53, %71, %88
  %91 = phi i8* [ null, %53 ], [ %34, %32 ], [ %89, %88 ], [ null, %71 ], !dbg !391
  ret i8* %91, !dbg !556
}

; Function Attrs: nounwind
define weak dso_local void @halide_locked_cache_free(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %1, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !303, metadata !DIExpression()) #3, !dbg !564
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()) #3, !dbg !564
  call void @llvm.dbg.value(metadata i8* null, metadata !307, metadata !DIExpression()) #3, !dbg !564
  %3 = tail call i8* @malloc(i32 1024) #4, !dbg !566
  %4 = icmp eq i8* %3, null, !dbg !567
  br i1 %4, label %5, label %7, !dbg !568

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !569
  %6 = tail call i8* @halide_string_to_string(i8* %3, i8* null, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !572
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !574
  br label %16, !dbg !575

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %3, i32 1023, !dbg !576
  store i8 0, i8* %8, align 1, !dbg !577, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !569
  %9 = tail call i8* @halide_string_to_string(i8* nonnull %3, i8* nonnull %8, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !571
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !572
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !344, metadata !DIExpression()) #3, !dbg !578
  %10 = ptrtoint i8* %9 to i32, !dbg !580
  %11 = ptrtoint i8* %3 to i32, !dbg !580
  %12 = add i32 %10, 1, !dbg !580
  %13 = sub i32 %12, %11, !dbg !581
  %14 = sext i32 %13 to i64, !dbg !582
  %15 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %3, i64 %14) #4, !dbg !583
  tail call void @halide_print(i8* %0, i8* nonnull %3) #4, !dbg !584
  br label %16

16:                                               ; preds = %7, %5
  tail call void @free(i8* %3) #4, !dbg !585
  call void @llvm.dbg.value(metadata i8* %0, metadata !586, metadata !DIExpression()) #3, !dbg !592
  call void @llvm.dbg.value(metadata i8* %1, metadata !589, metadata !DIExpression()) #3, !dbg !592
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !594
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !594
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !590, metadata !DIExpression()) #3, !dbg !592
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !596
  %17 = icmp eq i8* %1, null, !dbg !597
  br i1 %17, label %18, label %19, !dbg !600

18:                                               ; preds = %16
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i32 0, i32 0)) #4, !dbg !601
  tail call void @abort() #4, !dbg !601
  br label %19, !dbg !601

19:                                               ; preds = %18, %16
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* undef, metadata !591, metadata !DIExpression()) #3, !dbg !592
  %20 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !dbg !592, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, metadata !591, metadata !DIExpression()) #3, !dbg !592
  %21 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %20, null, !dbg !603
  br i1 %21, label %33, label %22, !dbg !604

22:                                               ; preds = %19, %29
  %23 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %31, %29 ], [ %20, %19 ]
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %23, i32 0, i32 0, !dbg !605
  %25 = load i8*, i8** %24, align 4, !dbg !605, !tbaa !430
  %26 = icmp eq i8* %25, %1, !dbg !608
  br i1 %26, label %27, label %29, !dbg !609

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %23, i32 0, i32 1, !dbg !610
  store i8 0, i8* %28, align 4, !dbg !612, !tbaa !411
  br label %33, !dbg !613

29:                                               ; preds = %22
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %23, i32 0, i32 3, !dbg !614
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* undef, metadata !591, metadata !DIExpression()) #3, !dbg !592
  %31 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %30, align 4, !dbg !592, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %31, metadata !591, metadata !DIExpression()) #3, !dbg !592
  %32 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %31, null, !dbg !603
  br i1 %32, label %33, label %22, !dbg !604, !llvm.loop !615

33:                                               ; preds = %29, %19, %27
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !617
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !619
  ret void, !dbg !620
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_allocate_l2_pool(i8* %0) local_unnamed_addr #0 !dbg !621 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !303, metadata !DIExpression()) #3, !dbg !627
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()) #3, !dbg !627
  call void @llvm.dbg.value(metadata i8* null, metadata !307, metadata !DIExpression()) #3, !dbg !627
  %2 = tail call i8* @malloc(i32 1024) #4, !dbg !629
  %3 = icmp eq i8* %2, null, !dbg !630
  br i1 %3, label %4, label %6, !dbg !631

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !632
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !634
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !635
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !637
  br label %15, !dbg !638

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !639
  store i8 0, i8* %7, align 1, !dbg !640, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !632
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !634
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !635
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !344, metadata !DIExpression()) #3, !dbg !641
  %9 = ptrtoint i8* %8 to i32, !dbg !643
  %10 = ptrtoint i8* %2 to i32, !dbg !643
  %11 = add i32 %9, 1, !dbg !643
  %12 = sub i32 %11, %10, !dbg !644
  %13 = sext i32 %12 to i64, !dbg !645
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %13) #4, !dbg !646
  tail call void @halide_print(i8* %0, i8* nonnull %2) #4, !dbg !647
  br label %15

15:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4, !dbg !648
  ret i32 0, !dbg !649
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_free_l2_pool(i8* %0) local_unnamed_addr #0 !dbg !650 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !303, metadata !DIExpression()) #3, !dbg !654
  call void @llvm.dbg.value(metadata i8* %0, metadata !306, metadata !DIExpression()) #3, !dbg !654
  call void @llvm.dbg.value(metadata i8* null, metadata !307, metadata !DIExpression()) #3, !dbg !654
  %2 = tail call i8* @malloc(i32 1024) #4, !dbg !656
  %3 = icmp eq i8* %2, null, !dbg !657
  br i1 %3, label %4, label %6, !dbg !658

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !659
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !659
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !661
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !662
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !664
  br label %15, !dbg !665

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !666
  store i8 0, i8* %7, align 1, !dbg !667, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #3, !dbg !659
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), metadata !322, metadata !DIExpression()) #3, !dbg !659
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !661
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !328, metadata !DIExpression()) #3, !dbg !662
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !344, metadata !DIExpression()) #3, !dbg !668
  %9 = ptrtoint i8* %8 to i32, !dbg !670
  %10 = ptrtoint i8* %2 to i32, !dbg !670
  %11 = add i32 %9, 1, !dbg !670
  %12 = sub i32 %11, %10, !dbg !671
  %13 = sext i32 %12 to i64, !dbg !672
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %13) #4, !dbg !673
  tail call void @halide_print(i8* %0, i8* nonnull %2) #4, !dbg !674
  br label %15

15:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #4, !dbg !675
  call void @llvm.dbg.value(metadata i8* %0, metadata !676, metadata !DIExpression()) #3, !dbg !683
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !396, metadata !DIExpression()) #3, !dbg !685
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !399, metadata !DIExpression()) #3, !dbg !685
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE, metadata !679, metadata !DIExpression()) #3, !dbg !683
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !687
  %16 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !dbg !688, !tbaa !394
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %16, metadata !680, metadata !DIExpression()) #3, !dbg !683
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* undef, metadata !681, metadata !DIExpression()) #3, !dbg !683
  call void @llvm.dbg.value(metadata i32 0, metadata !682, metadata !DIExpression()) #3, !dbg !683
  %17 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %16, null, !dbg !689
  br i1 %17, label %46, label %18, !dbg !690

18:                                               ; preds = %15, %41
  %19 = phi %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* [ %43, %41 ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, metadata !680, metadata !DIExpression()) #3, !dbg !683
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, i32 0, i32 0, !dbg !691
  %21 = load i8*, i8** %20, align 4, !dbg !691, !tbaa !430
  %22 = icmp eq i8* %21, null, !dbg !694
  br i1 %22, label %41, label %23, !dbg !695

23:                                               ; preds = %18
  %24 = tail call i32 @HAP_cache_unlock(i8* nonnull %21) #4, !dbg !696
  call void @llvm.dbg.value(metadata i32 %24, metadata !682, metadata !DIExpression()) #3, !dbg !683
  %25 = icmp eq i32 %24, 0, !dbg !698
  br i1 %25, label %41, label %26, !dbg !700

26:                                               ; preds = %23
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !442, metadata !DIExpression()) #3, !dbg !701
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()) #3, !dbg !701
  call void @llvm.dbg.value(metadata i8* null, metadata !446, metadata !DIExpression()) #3, !dbg !701
  %27 = tail call i8* @malloc(i32 1024) #4, !dbg !704
  %28 = icmp eq i8* %27, null, !dbg !705
  br i1 %28, label %29, label %31, !dbg !706

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), metadata !462, metadata !DIExpression()) #3, !dbg !707
  %30 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0)) #4, !dbg !709
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !710
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !712
  br label %40, !dbg !713

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, i8* %27, i32 1023, !dbg !714
  store i8 0, i8* %32, align 1, !dbg !715, !tbaa !341
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !459, metadata !DIExpression()) #3, !dbg !707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), metadata !462, metadata !DIExpression()) #3, !dbg !707
  %33 = tail call i8* @halide_string_to_string(i8* nonnull %27, i8* nonnull %32, i8* nonnull getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0)) #4, !dbg !709
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !468, metadata !DIExpression()) #3, !dbg !710
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !481, metadata !DIExpression()) #3, !dbg !716
  %34 = ptrtoint i8* %33 to i32, !dbg !718
  %35 = ptrtoint i8* %27 to i32, !dbg !718
  %36 = sub i32 1, %35, !dbg !718
  %37 = add i32 %36, %34, !dbg !719
  %38 = sext i32 %37 to i64, !dbg !720
  %39 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %27, i64 %38) #4, !dbg !721
  tail call void @halide_error(i8* %0, i8* nonnull %27) #4, !dbg !722
  br label %40

40:                                               ; preds = %31, %29
  tail call void @free(i8* %27) #4, !dbg !723
  br label %47, !dbg !724

41:                                               ; preds = %23, %18
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache", %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19, i32 0, i32 3, !dbg !725
  %43 = load %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"*, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** %42, align 4, !dbg !725, !tbaa !423
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %43, metadata !681, metadata !DIExpression()) #3, !dbg !683
  %44 = bitcast %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %19 to i8*, !dbg !726
  tail call void @free(i8* nonnull %44) #4, !dbg !727
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %43, metadata !680, metadata !DIExpression()) #3, !dbg !683
  %45 = icmp eq %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* %43, null, !dbg !689
  br i1 %45, label %46, label %18, !dbg !690, !llvm.loop !728

46:                                               ; preds = %41, %15
  store %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"* null, %"struct.Halide::Runtime::Internal::Hexagon::hexagon_local_cache"** @_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE, align 4, !dbg !730, !tbaa !394
  br label %47, !dbg !731

47:                                               ; preds = %40, %46
  %48 = phi i32 [ %24, %40 ], [ 0, %46 ], !dbg !683
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !431, metadata !DIExpression()) #3, !dbg !732
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE) #4, !dbg !734
  ret i32 %48, !dbg !735
}

declare !dbg !736 dso_local i8* @malloc(i32) local_unnamed_addr #1

declare !dbg !740 dso_local i8* @HAP_cache_lock(i32, i8**) local_unnamed_addr #1

declare !dbg !744 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !747 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !750 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !751 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

declare !dbg !754 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !757 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !760 dso_local i32 @HAP_cache_unlock(i8*) local_unnamed_addr #1

declare !dbg !761 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !762 dso_local void @abort() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!291, !292, !293}
!llvm.ident = !{!294}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hexagon_cache_pool", linkageName: "_ZN6Halide7Runtime8Internal7Hexagon18hexagon_cache_poolE", scope: !2, file: !6, line: 21, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Hexagon", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/hexagon_cache_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcache_pool", scope: !2, file: !6, line: 19, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_cache_pool_t", scope: !2, file: !6, line: 17, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hexagon_local_cache", scope: !2, file: !6, line: 12, size: 128, flags: DIFlagTypePassByValue, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal7Hexagon19hexagon_local_cacheE")
!11 = !{!12, !14, !16, !20}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "l2memory", scope: !10, file: !6, line: 13, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !10, file: !6, line: 14, baseType: !15, size: 8, offset: 32)
!15 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !10, file: !6, line: 15, baseType: !17, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !6, line: 16, baseType: !21, size: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "hexagon_cache_mutex", linkageName: "_ZN6Halide7Runtime8Internal7Hexagon19hexagon_cache_mutexE", scope: !2, file: !6, line: 22, type: !24, isLocal: false, isDefinition: true)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !25, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !26, identifier: "_ZTS12halide_mutex")
!25 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !24, file: !25, line: 121, baseType: !28, size: 32)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 68, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 12, baseType: !19)
!31 = !{!32}
!32 = !DISubrange(count: 1)
!33 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !34, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !97, globals: !287, imports: !288, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_cache_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!35 = !{!36, !45, !93}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !25, line: 403, baseType: !37, size: 8, elements: !39, identifier: "_ZTS18halide_type_code_t")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 16, baseType: !38)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !25, line: 990, baseType: !46, size: 32, elements: !47, identifier: "_ZTS19halide_error_code_t")
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!48 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!49 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!50 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!51 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!52 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!53 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!54 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!55 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!56 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!57 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!58 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!59 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!60 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!61 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!62 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!63 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!64 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!65 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!66 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!67 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!68 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!69 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!70 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!71 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!72 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!73 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!74 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!75 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!76 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!77 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!78 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!79 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!80 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!81 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!82 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!83 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!84 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!85 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!86 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!87 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!88 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!89 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!90 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!91 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!92 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 23, baseType: !19, size: 32, align: 32, elements: !95)
!94 = !DIFile(filename: "src/runtime/mini_hexagon_dma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!95 = !{!96}
!96 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!97 = !{!98, !13, !7, !219, !286, !104}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !100, file: !99, line: 203, baseType: !101)
!99 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!100 = !DINamespace(scope: !3)
!101 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !100, file: !99, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !102, templateParams: !216)
!102 = !{!103, !106, !107, !108, !109, !110, !112, !116, !122, !127, !131, !136, !139, !143, !147, !152, !158, !191, !198, !201, !204, !209, !210, !213, !214, !215}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !101, file: !99, line: 32, baseType: !104, size: 32, flags: DIFlagPublic)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !101, file: !99, line: 32, baseType: !104, size: 32, offset: 32, flags: DIFlagPublic)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !101, file: !99, line: 32, baseType: !104, size: 32, offset: 64, flags: DIFlagPublic)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !101, file: !99, line: 33, baseType: !13, size: 32, offset: 96, flags: DIFlagPublic)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !101, file: !99, line: 34, baseType: !15, size: 8, offset: 128, flags: DIFlagPublic)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !101, file: !99, line: 35, baseType: !111, size: 8, offset: 136, flags: DIFlagPublic)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 8, elements: !31)
!112 = !DISubprogram(name: "Printer", scope: !101, file: !99, line: 37, type: !113, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !13, !104}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !101, file: !99, line: 57, type: !117, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !115, !120}
!119 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !101, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!122 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !101, file: !99, line: 67, type: !123, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!119, !115, !125}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !18, line: 9, baseType: !126)
!126 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!127 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !101, file: !99, line: 72, type: !128, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubroutineType(types: !129)
!129 = !{!119, !115, !130}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !18, line: 11, baseType: !46)
!131 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !101, file: !99, line: 77, type: !132, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubroutineType(types: !133)
!133 = !{!119, !115, !134}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 10, baseType: !135)
!135 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!136 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !101, file: !99, line: 82, type: !137, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DISubroutineType(types: !138)
!138 = !{!119, !115, !30}
!139 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !101, file: !99, line: 87, type: !140, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{!119, !115, !142}
!142 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!143 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !101, file: !99, line: 92, type: !144, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubroutineType(types: !145)
!145 = !{!119, !115, !146}
!146 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!147 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !101, file: !99, line: 97, type: !148, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!119, !115, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!152 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !101, file: !99, line: 102, type: !153, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{!119, !115, !155}
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 14, baseType: !157)
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !101, file: !99, line: 108, type: !159, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DISubroutineType(types: !160)
!160 = !{!119, !115, !161}
!161 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !25, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !164, identifier: "_ZTS13halide_type_t")
!164 = !{!165, !167, !168, !169, !173, !176, !180, !183, !184, !185, !188}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !163, file: !25, line: 434, baseType: !166, size: 8, align: 8)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !25, line: 413, baseType: !36)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !163, file: !25, line: 442, baseType: !37, size: 8, align: 8, offset: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !163, file: !25, line: 446, baseType: !156, size: 16, align: 16, offset: 16)
!169 = !DISubprogram(name: "halide_type_t", scope: !163, file: !25, line: 453, type: !170, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172, !166, !37, !156}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!173 = !DISubprogram(name: "halide_type_t", scope: !163, file: !25, line: 459, type: !174, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !172}
!176 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !163, file: !25, line: 463, type: !177, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{!163, !179, !156}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!180 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !163, file: !25, line: 468, type: !181, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!15, !179, !161}
!183 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !163, file: !25, line: 472, type: !181, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !163, file: !25, line: 476, type: !181, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !163, file: !25, line: 481, type: !186, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{!46, !179}
!188 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !163, file: !25, line: 485, type: !189, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!30, !179}
!191 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !101, file: !99, line: 113, type: !192, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{!119, !115, !194}
!194 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !195, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !25, line: 1550, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !25, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!198 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !101, file: !99, line: 119, type: !199, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubroutineType(types: !200)
!200 = !{!120, !115}
!201 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !101, file: !99, line: 131, type: !202, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !115}
!204 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !101, file: !99, line: 139, type: !205, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{!134, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!209 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !101, file: !99, line: 143, type: !205, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !101, file: !99, line: 148, type: !211, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !115, !46}
!213 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !101, file: !99, line: 158, type: !199, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !101, file: !99, line: 162, type: !202, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubprogram(name: "~Printer", scope: !101, file: !99, line: 166, type: !202, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !{!217, !218}
!217 = !DITemplateValueParameter(name: "type", type: !46, value: i32 0)
!218 = !DITemplateValueParameter(name: "length", type: !135, value: i64 1024)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !100, file: !99, line: 199, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !100, file: !99, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !221, templateParams: !284)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !232, !236, !239, !242, !245, !248, !251, !254, !257, !260, !263, !266, !269, !272, !277, !278, !281, !282, !283}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !220, file: !99, line: 32, baseType: !104, size: 32, flags: DIFlagPublic)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !220, file: !99, line: 32, baseType: !104, size: 32, offset: 32, flags: DIFlagPublic)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !220, file: !99, line: 32, baseType: !104, size: 32, offset: 64, flags: DIFlagPublic)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !220, file: !99, line: 33, baseType: !13, size: 32, offset: 96, flags: DIFlagPublic)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !220, file: !99, line: 34, baseType: !15, size: 8, offset: 128, flags: DIFlagPublic)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !220, file: !99, line: 35, baseType: !111, size: 8, offset: 136, flags: DIFlagPublic)
!228 = !DISubprogram(name: "Printer", scope: !220, file: !99, line: 37, type: !229, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, !13, !104}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!232 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !220, file: !99, line: 57, type: !233, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !231, !120}
!235 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !220, size: 32)
!236 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !220, file: !99, line: 67, type: !237, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!235, !231, !125}
!239 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !220, file: !99, line: 72, type: !240, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubroutineType(types: !241)
!241 = !{!235, !231, !130}
!242 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !220, file: !99, line: 77, type: !243, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{!235, !231, !134}
!245 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !220, file: !99, line: 82, type: !246, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!235, !231, !30}
!248 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !220, file: !99, line: 87, type: !249, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!235, !231, !142}
!251 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !220, file: !99, line: 92, type: !252, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubroutineType(types: !253)
!253 = !{!235, !231, !146}
!254 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !220, file: !99, line: 97, type: !255, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!235, !231, !150}
!257 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !220, file: !99, line: 102, type: !258, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{!235, !231, !155}
!260 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !220, file: !99, line: 108, type: !261, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{!235, !231, !161}
!263 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !220, file: !99, line: 113, type: !264, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!235, !231, !194}
!266 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !220, file: !99, line: 119, type: !267, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!120, !231}
!269 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !220, file: !99, line: 131, type: !270, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !231}
!272 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !220, file: !99, line: 139, type: !273, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!134, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!277 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !220, file: !99, line: 143, type: !273, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !220, file: !99, line: 148, type: !279, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !231, !46}
!281 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !220, file: !99, line: 158, type: !267, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !220, file: !99, line: 162, type: !270, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubprogram(name: "~Printer", scope: !220, file: !99, line: 166, type: !270, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !{!285, !218}
!285 = !DITemplateValueParameter(name: "type", type: !46, value: i32 1)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!287 = !{!0, !22}
!288 = !{!289, !290}
!289 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !33, entity: !3, file: !18, line: 225)
!290 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !33, entity: !2, file: !6, line: 29)
!291 = !{i32 7, !"Dwarf Version", i32 4}
!292 = !{i32 2, !"Debug Info Version", i32 3}
!293 = !{i32 1, !"wchar_size", i32 4}
!294 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!295 = distinct !DISubprogram(name: "halide_locked_cache_malloc", scope: !6, file: !6, line: 158, type: !296, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!13, !13, !17}
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "user_context", arg: 1, scope: !295, file: !6, line: 158, type: !13)
!300 = !DILocalVariable(name: "size", arg: 2, scope: !295, file: !6, line: 158, type: !17)
!301 = !DILocalVariable(name: "retry", scope: !295, file: !6, line: 161, type: !15)
!302 = !DILocation(line: 0, scope: !295)
!303 = !DILocalVariable(name: "this", arg: 1, scope: !304, type: !308, flags: DIFlagArtificial | DIFlagObjectPointer)
!304 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !101, file: !99, line: 37, type: !113, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !112, retainedNodes: !305)
!305 = !{!303, !306, !307}
!306 = !DILocalVariable(name: "ctx", arg: 2, scope: !304, file: !99, line: 37, type: !13)
!307 = !DILocalVariable(name: "mem", arg: 3, scope: !304, file: !99, line: 37, type: !104)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!309 = !DILocation(line: 0, scope: !304, inlinedAt: !310)
!310 = distinct !DILocation(line: 162, column: 5, scope: !295)
!311 = !DILocation(line: 44, column: 27, scope: !312, inlinedAt: !310)
!312 = distinct !DILexicalBlock(scope: !313, file: !99, line: 43, column: 16)
!313 = distinct !DILexicalBlock(scope: !314, file: !99, line: 41, column: 20)
!314 = distinct !DILexicalBlock(scope: !315, file: !99, line: 39, column: 13)
!315 = distinct !DILexicalBlock(scope: !304, file: !99, line: 38, column: 54)
!316 = !DILocation(line: 48, column: 13, scope: !317, inlinedAt: !310)
!317 = distinct !DILexicalBlock(scope: !315, file: !99, line: 48, column: 13)
!318 = !DILocation(line: 48, column: 13, scope: !315, inlinedAt: !310)
!319 = !DILocalVariable(name: "this", arg: 1, scope: !320, type: !308, flags: DIFlagArtificial | DIFlagObjectPointer)
!320 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !101, file: !99, line: 57, type: !117, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !116, retainedNodes: !321)
!321 = !{!319, !322}
!322 = !DILocalVariable(name: "arg", arg: 2, scope: !320, file: !99, line: 57, type: !120)
!323 = !DILocation(line: 0, scope: !320, inlinedAt: !324)
!324 = distinct !DILocation(line: 162, column: 25, scope: !295)
!325 = !DILocation(line: 62, column: 19, scope: !326, inlinedAt: !324)
!326 = distinct !DILexicalBlock(scope: !327, file: !99, line: 61, column: 16)
!327 = distinct !DILexicalBlock(scope: !320, file: !99, line: 59, column: 13)
!328 = !DILocalVariable(name: "this", arg: 1, scope: !329, type: !308, flags: DIFlagArtificial | DIFlagObjectPointer)
!329 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !101, file: !99, line: 166, type: !202, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !215, retainedNodes: !330)
!330 = !{!328}
!331 = !DILocation(line: 0, scope: !329, inlinedAt: !332)
!332 = distinct !DILocation(line: 162, column: 5, scope: !295)
!333 = !DILocation(line: 168, column: 13, scope: !334, inlinedAt: !332)
!334 = distinct !DILexicalBlock(scope: !335, file: !99, line: 167, column: 19)
!335 = distinct !DILexicalBlock(scope: !336, file: !99, line: 167, column: 13)
!336 = distinct !DILexicalBlock(scope: !329, file: !99, line: 166, column: 16)
!337 = !DILocation(line: 169, column: 9, scope: !334, inlinedAt: !332)
!338 = !DILocation(line: 49, column: 23, scope: !339, inlinedAt: !310)
!339 = distinct !DILexicalBlock(scope: !317, file: !99, line: 48, column: 18)
!340 = !DILocation(line: 50, column: 18, scope: !339, inlinedAt: !310)
!341 = !{!342, !342, i64 0}
!342 = !{!"omnipotent char", !343, i64 0}
!343 = !{!"Simple C++ TBAA"}
!344 = !DILocalVariable(name: "this", arg: 1, scope: !345, type: !308, flags: DIFlagArtificial | DIFlagObjectPointer)
!345 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !101, file: !99, line: 162, type: !202, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !214, retainedNodes: !346)
!346 = !{!344}
!347 = !DILocation(line: 0, scope: !345, inlinedAt: !348)
!348 = distinct !DILocation(line: 170, column: 13, scope: !349, inlinedAt: !332)
!349 = distinct !DILexicalBlock(scope: !335, file: !99, line: 169, column: 16)
!350 = !DILocation(line: 163, column: 81, scope: !345, inlinedAt: !348)
!351 = !DILocation(line: 163, column: 87, scope: !345, inlinedAt: !348)
!352 = !DILocation(line: 163, column: 77, scope: !345, inlinedAt: !348)
!353 = !DILocation(line: 163, column: 15, scope: !345, inlinedAt: !348)
!354 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !332)
!355 = distinct !DILexicalBlock(scope: !356, file: !99, line: 173, column: 46)
!356 = distinct !DILexicalBlock(scope: !357, file: !99, line: 173, column: 24)
!357 = distinct !DILexicalBlock(scope: !349, file: !99, line: 171, column: 17)
!358 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !332)
!359 = distinct !DILexicalBlock(scope: !360, file: !99, line: 180, column: 40)
!360 = distinct !DILexicalBlock(scope: !336, file: !99, line: 180, column: 13)
!361 = !DILocalVariable(name: "user_context", arg: 1, scope: !362, file: !6, line: 64, type: !13)
!362 = distinct !DISubprogram(name: "hexagon_cache_pool_get", linkageName: "_ZN12_GLOBAL__N_122hexagon_cache_pool_getEPvjb", scope: !363, file: !6, line: 64, type: !364, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !366)
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
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !374, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !375, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!374 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!375 = !{!376, !378, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !373, file: !374, line: 12, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!378 = !DISubprogram(name: "ScopedMutexLock", scope: !373, file: !374, line: 14, type: !379, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !377}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!382 = !DISubprogram(name: "~ScopedMutexLock", scope: !373, file: !374, line: 19, type: !383, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !381}
!385 = !DILocalVariable(name: "mem", scope: !362, file: !6, line: 88, type: !286)
!386 = !DILocalVariable(name: "prev_node", scope: !387, file: !6, line: 90, type: !7)
!387 = distinct !DILexicalBlock(scope: !388, file: !6, line: 89, column: 36)
!388 = distinct !DILexicalBlock(scope: !362, file: !6, line: 89, column: 9)
!389 = !DILocalVariable(name: "lock_obj", scope: !390, file: !6, line: 110, type: !373)
!390 = distinct !DILexicalBlock(scope: !362, file: !6, line: 109, column: 5)
!391 = !DILocation(line: 0, scope: !362, inlinedAt: !392)
!392 = distinct !DILocation(line: 163, column: 12, scope: !295)
!393 = !DILocation(line: 67, column: 24, scope: !362, inlinedAt: !392)
!394 = !{!395, !395, i64 0}
!395 = !{!"any pointer", !342, i64 0}
!396 = !DILocalVariable(name: "this", arg: 1, scope: !397, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!397 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !373, file: !374, line: 14, type: !379, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !378, retainedNodes: !398)
!398 = !{!396, !399}
!399 = !DILocalVariable(name: "mutex", arg: 2, scope: !397, file: !374, line: 14, type: !377)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
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
!411 = !{!412, !413, i64 4}
!412 = !{!"_ZTSN6Halide7Runtime8Internal7Hexagon19hexagon_local_cacheE", !395, i64 0, !413, i64 4, !414, i64 8, !395, i64 12}
!413 = !{!"bool", !342, i64 0}
!414 = !{!"int", !342, i64 0}
!415 = !{i8 0, i8 2}
!416 = !DILocation(line: 72, column: 29, scope: !409, inlinedAt: !392)
!417 = !DILocation(line: 72, column: 39, scope: !409, inlinedAt: !392)
!418 = !DILocation(line: 73, column: 32, scope: !409, inlinedAt: !392)
!419 = !{!412, !414, i64 8}
!420 = !DILocation(line: 73, column: 23, scope: !409, inlinedAt: !392)
!421 = !DILocation(line: 72, column: 17, scope: !410, inlinedAt: !392)
!422 = !DILocation(line: 78, column: 26, scope: !410, inlinedAt: !392)
!423 = !{!412, !395, i64 12}
!424 = distinct !{!424, !407, !425, !426}
!425 = !DILocation(line: 79, column: 9, scope: !372, inlinedAt: !392)
!426 = !{!"llvm.loop.mustprogress"}
!427 = !DILocation(line: 74, column: 28, scope: !428, inlinedAt: !392)
!428 = distinct !DILexicalBlock(scope: !409, file: !6, line: 73, column: 40)
!429 = !DILocation(line: 75, column: 38, scope: !428, inlinedAt: !392)
!430 = !{!412, !395, i64 0}
!431 = !DILocalVariable(name: "this", arg: 1, scope: !432, type: !400, flags: DIFlagArtificial | DIFlagObjectPointer)
!432 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !373, file: !374, line: 19, type: !383, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !382, retainedNodes: !433)
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
!443 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !220, file: !99, line: 37, type: !229, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !228, retainedNodes: !444)
!444 = !{!442, !445, !446}
!445 = !DILocalVariable(name: "ctx", arg: 2, scope: !443, file: !99, line: 37, type: !13)
!446 = !DILocalVariable(name: "mem", arg: 3, scope: !443, file: !99, line: 37, type: !104)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!448 = !DILocation(line: 0, scope: !443, inlinedAt: !449)
!449 = distinct !DILocation(line: 85, column: 9, scope: !450, inlinedAt: !392)
!450 = distinct !DILexicalBlock(scope: !440, file: !6, line: 84, column: 26)
!451 = !DILocation(line: 44, column: 27, scope: !452, inlinedAt: !449)
!452 = distinct !DILexicalBlock(scope: !453, file: !99, line: 43, column: 16)
!453 = distinct !DILexicalBlock(scope: !454, file: !99, line: 41, column: 20)
!454 = distinct !DILexicalBlock(scope: !455, file: !99, line: 39, column: 13)
!455 = distinct !DILexicalBlock(scope: !443, file: !99, line: 38, column: 54)
!456 = !DILocation(line: 48, column: 13, scope: !457, inlinedAt: !449)
!457 = distinct !DILexicalBlock(scope: !455, file: !99, line: 48, column: 13)
!458 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !449)
!459 = !DILocalVariable(name: "this", arg: 1, scope: !460, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!460 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !220, file: !99, line: 57, type: !233, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !232, retainedNodes: !461)
!461 = !{!459, !462}
!462 = !DILocalVariable(name: "arg", arg: 2, scope: !460, file: !99, line: 57, type: !120)
!463 = !DILocation(line: 0, scope: !460, inlinedAt: !464)
!464 = distinct !DILocation(line: 85, column: 29, scope: !450, inlinedAt: !392)
!465 = !DILocation(line: 62, column: 19, scope: !466, inlinedAt: !464)
!466 = distinct !DILexicalBlock(scope: !467, file: !99, line: 61, column: 16)
!467 = distinct !DILexicalBlock(scope: !460, file: !99, line: 59, column: 13)
!468 = !DILocalVariable(name: "this", arg: 1, scope: !469, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !220, file: !99, line: 166, type: !270, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !283, retainedNodes: !470)
!470 = !{!468}
!471 = !DILocation(line: 0, scope: !469, inlinedAt: !472)
!472 = distinct !DILocation(line: 85, column: 9, scope: !450, inlinedAt: !392)
!473 = !DILocation(line: 168, column: 13, scope: !474, inlinedAt: !472)
!474 = distinct !DILexicalBlock(scope: !475, file: !99, line: 167, column: 19)
!475 = distinct !DILexicalBlock(scope: !476, file: !99, line: 167, column: 13)
!476 = distinct !DILexicalBlock(scope: !469, file: !99, line: 166, column: 16)
!477 = !DILocation(line: 169, column: 9, scope: !474, inlinedAt: !472)
!478 = !DILocation(line: 49, column: 23, scope: !479, inlinedAt: !449)
!479 = distinct !DILexicalBlock(scope: !457, file: !99, line: 48, column: 18)
!480 = !DILocation(line: 50, column: 18, scope: !479, inlinedAt: !449)
!481 = !DILocalVariable(name: "this", arg: 1, scope: !482, type: !447, flags: DIFlagArtificial | DIFlagObjectPointer)
!482 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !220, file: !99, line: 162, type: !270, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, declaration: !282, retainedNodes: !483)
!483 = !{!481}
!484 = !DILocation(line: 0, scope: !482, inlinedAt: !485)
!485 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !472)
!486 = distinct !DILexicalBlock(scope: !475, file: !99, line: 169, column: 16)
!487 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !485)
!488 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !485)
!489 = !DILocation(line: 163, column: 77, scope: !482, inlinedAt: !485)
!490 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !485)
!491 = !DILocation(line: 172, column: 17, scope: !492, inlinedAt: !472)
!492 = distinct !DILexicalBlock(scope: !493, file: !99, line: 171, column: 39)
!493 = distinct !DILexicalBlock(scope: !486, file: !99, line: 171, column: 17)
!494 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !472)
!495 = distinct !DILexicalBlock(scope: !496, file: !99, line: 180, column: 40)
!496 = distinct !DILexicalBlock(scope: !476, file: !99, line: 180, column: 13)
!497 = !DILocation(line: 86, column: 9, scope: !450, inlinedAt: !392)
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
!522 = !DILocation(line: 163, column: 77, scope: !482, inlinedAt: !519)
!523 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !519)
!524 = !DILocation(line: 172, column: 17, scope: !492, inlinedAt: !513)
!525 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !513)
!526 = !DILocation(line: 102, column: 9, scope: !502, inlinedAt: !392)
!527 = !DILocation(line: 104, column: 11, scope: !362, inlinedAt: !392)
!528 = !DILocation(line: 104, column: 20, scope: !362, inlinedAt: !392)
!529 = !DILocation(line: 105, column: 11, scope: !362, inlinedAt: !392)
!530 = !DILocation(line: 105, column: 17, scope: !362, inlinedAt: !392)
!531 = !DILocation(line: 106, column: 11, scope: !362, inlinedAt: !392)
!532 = !DILocation(line: 106, column: 16, scope: !362, inlinedAt: !392)
!533 = !DILocation(line: 107, column: 11, scope: !362, inlinedAt: !392)
!534 = !DILocation(line: 107, column: 16, scope: !362, inlinedAt: !392)
!535 = !DILocation(line: 0, scope: !397, inlinedAt: !536)
!536 = distinct !DILocation(line: 110, column: 25, scope: !390, inlinedAt: !392)
!537 = !DILocation(line: 0, scope: !390, inlinedAt: !392)
!538 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !536)
!539 = !DILocation(line: 111, column: 18, scope: !540, inlinedAt: !392)
!540 = distinct !DILexicalBlock(scope: !390, file: !6, line: 111, column: 13)
!541 = !DILocation(line: 111, column: 13, scope: !390, inlinedAt: !392)
!542 = !DILocation(line: 112, column: 19, scope: !543, inlinedAt: !392)
!543 = distinct !DILexicalBlock(scope: !540, file: !6, line: 111, column: 30)
!544 = !DILocation(line: 112, column: 24, scope: !543, inlinedAt: !392)
!545 = !DILocation(line: 113, column: 9, scope: !543, inlinedAt: !392)
!546 = !DILocation(line: 113, column: 20, scope: !547, inlinedAt: !392)
!547 = distinct !DILexicalBlock(scope: !540, file: !6, line: 113, column: 20)
!548 = !DILocation(line: 113, column: 39, scope: !547, inlinedAt: !392)
!549 = !DILocation(line: 113, column: 20, scope: !540, inlinedAt: !392)
!550 = !DILocation(line: 0, scope: !540, inlinedAt: !392)
!551 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !552)
!552 = distinct !DILocation(line: 116, column: 5, scope: !362, inlinedAt: !392)
!553 = !DILocation(line: 0, scope: !432, inlinedAt: !552)
!554 = !DILocation(line: 117, column: 26, scope: !362, inlinedAt: !392)
!555 = !DILocation(line: 117, column: 5, scope: !362, inlinedAt: !392)
!556 = !DILocation(line: 163, column: 5, scope: !295)
!557 = distinct !DISubprogram(name: "halide_locked_cache_free", scope: !6, file: !6, line: 166, type: !558, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !13, !13}
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "user_context", arg: 1, scope: !557, file: !6, line: 166, type: !13)
!562 = !DILocalVariable(name: "ptr", arg: 2, scope: !557, file: !6, line: 166, type: !13)
!563 = !DILocation(line: 0, scope: !557)
!564 = !DILocation(line: 0, scope: !304, inlinedAt: !565)
!565 = distinct !DILocation(line: 167, column: 5, scope: !557)
!566 = !DILocation(line: 44, column: 27, scope: !312, inlinedAt: !565)
!567 = !DILocation(line: 48, column: 13, scope: !317, inlinedAt: !565)
!568 = !DILocation(line: 48, column: 13, scope: !315, inlinedAt: !565)
!569 = !DILocation(line: 0, scope: !320, inlinedAt: !570)
!570 = distinct !DILocation(line: 167, column: 25, scope: !557)
!571 = !DILocation(line: 62, column: 19, scope: !326, inlinedAt: !570)
!572 = !DILocation(line: 0, scope: !329, inlinedAt: !573)
!573 = distinct !DILocation(line: 167, column: 5, scope: !557)
!574 = !DILocation(line: 168, column: 13, scope: !334, inlinedAt: !573)
!575 = !DILocation(line: 169, column: 9, scope: !334, inlinedAt: !573)
!576 = !DILocation(line: 49, column: 23, scope: !339, inlinedAt: !565)
!577 = !DILocation(line: 50, column: 18, scope: !339, inlinedAt: !565)
!578 = !DILocation(line: 0, scope: !345, inlinedAt: !579)
!579 = distinct !DILocation(line: 170, column: 13, scope: !349, inlinedAt: !573)
!580 = !DILocation(line: 163, column: 81, scope: !345, inlinedAt: !579)
!581 = !DILocation(line: 163, column: 87, scope: !345, inlinedAt: !579)
!582 = !DILocation(line: 163, column: 77, scope: !345, inlinedAt: !579)
!583 = !DILocation(line: 163, column: 15, scope: !345, inlinedAt: !579)
!584 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !573)
!585 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !573)
!586 = !DILocalVariable(name: "user_context", arg: 1, scope: !587, file: !6, line: 120, type: !13)
!587 = distinct !DISubprogram(name: "hexagon_cache_pool_put", linkageName: "_ZN12_GLOBAL__N_122hexagon_cache_pool_putEPvS0_", scope: !363, file: !6, line: 120, type: !558, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !588)
!588 = !{!586, !589, !590, !591}
!589 = !DILocalVariable(name: "cache_mem", arg: 2, scope: !587, file: !6, line: 120, type: !13)
!590 = !DILocalVariable(name: "lock", scope: !587, file: !6, line: 121, type: !373)
!591 = !DILocalVariable(name: "temp", scope: !587, file: !6, line: 123, type: !7)
!592 = !DILocation(line: 0, scope: !587, inlinedAt: !593)
!593 = distinct !DILocation(line: 168, column: 5, scope: !557)
!594 = !DILocation(line: 0, scope: !397, inlinedAt: !595)
!595 = distinct !DILocation(line: 121, column: 21, scope: !587, inlinedAt: !593)
!596 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !595)
!597 = !DILocation(line: 122, column: 5, scope: !598, inlinedAt: !593)
!598 = distinct !DILexicalBlock(scope: !599, file: !6, line: 122, column: 5)
!599 = distinct !DILexicalBlock(scope: !587, file: !6, line: 122, column: 5)
!600 = !DILocation(line: 122, column: 5, scope: !599, inlinedAt: !593)
!601 = !DILocation(line: 122, column: 5, scope: !602, inlinedAt: !593)
!602 = distinct !DILexicalBlock(scope: !598, file: !6, line: 122, column: 5)
!603 = !DILocation(line: 124, column: 17, scope: !587, inlinedAt: !593)
!604 = !DILocation(line: 124, column: 5, scope: !587, inlinedAt: !593)
!605 = !DILocation(line: 125, column: 19, scope: !606, inlinedAt: !593)
!606 = distinct !DILexicalBlock(scope: !607, file: !6, line: 125, column: 13)
!607 = distinct !DILexicalBlock(scope: !587, file: !6, line: 124, column: 29)
!608 = !DILocation(line: 125, column: 28, scope: !606, inlinedAt: !593)
!609 = !DILocation(line: 125, column: 13, scope: !607, inlinedAt: !593)
!610 = !DILocation(line: 126, column: 19, scope: !611, inlinedAt: !593)
!611 = distinct !DILexicalBlock(scope: !606, file: !6, line: 125, column: 42)
!612 = !DILocation(line: 126, column: 24, scope: !611, inlinedAt: !593)
!613 = !DILocation(line: 127, column: 13, scope: !611, inlinedAt: !593)
!614 = !DILocation(line: 129, column: 22, scope: !607, inlinedAt: !593)
!615 = distinct !{!615, !604, !616, !426}
!616 = !DILocation(line: 130, column: 5, scope: !587, inlinedAt: !593)
!617 = !DILocation(line: 0, scope: !432, inlinedAt: !618)
!618 = distinct !DILocation(line: 131, column: 1, scope: !587, inlinedAt: !593)
!619 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !618)
!620 = !DILocation(line: 169, column: 1, scope: !557)
!621 = distinct !DISubprogram(name: "halide_hexagon_allocate_l2_pool", scope: !6, file: !6, line: 171, type: !622, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{!46, !13}
!624 = !{!625}
!625 = !DILocalVariable(name: "user_context", arg: 1, scope: !621, file: !6, line: 171, type: !13)
!626 = !DILocation(line: 0, scope: !621)
!627 = !DILocation(line: 0, scope: !304, inlinedAt: !628)
!628 = distinct !DILocation(line: 173, column: 5, scope: !621)
!629 = !DILocation(line: 44, column: 27, scope: !312, inlinedAt: !628)
!630 = !DILocation(line: 48, column: 13, scope: !317, inlinedAt: !628)
!631 = !DILocation(line: 48, column: 13, scope: !315, inlinedAt: !628)
!632 = !DILocation(line: 0, scope: !320, inlinedAt: !633)
!633 = distinct !DILocation(line: 173, column: 25, scope: !621)
!634 = !DILocation(line: 62, column: 19, scope: !326, inlinedAt: !633)
!635 = !DILocation(line: 0, scope: !329, inlinedAt: !636)
!636 = distinct !DILocation(line: 173, column: 5, scope: !621)
!637 = !DILocation(line: 168, column: 13, scope: !334, inlinedAt: !636)
!638 = !DILocation(line: 169, column: 9, scope: !334, inlinedAt: !636)
!639 = !DILocation(line: 49, column: 23, scope: !339, inlinedAt: !628)
!640 = !DILocation(line: 50, column: 18, scope: !339, inlinedAt: !628)
!641 = !DILocation(line: 0, scope: !345, inlinedAt: !642)
!642 = distinct !DILocation(line: 170, column: 13, scope: !349, inlinedAt: !636)
!643 = !DILocation(line: 163, column: 81, scope: !345, inlinedAt: !642)
!644 = !DILocation(line: 163, column: 87, scope: !345, inlinedAt: !642)
!645 = !DILocation(line: 163, column: 77, scope: !345, inlinedAt: !642)
!646 = !DILocation(line: 163, column: 15, scope: !345, inlinedAt: !642)
!647 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !636)
!648 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !636)
!649 = !DILocation(line: 174, column: 5, scope: !621)
!650 = distinct !DISubprogram(name: "halide_hexagon_free_l2_pool", scope: !6, file: !6, line: 177, type: !622, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !651)
!651 = !{!652}
!652 = !DILocalVariable(name: "user_context", arg: 1, scope: !650, file: !6, line: 177, type: !13)
!653 = !DILocation(line: 0, scope: !650)
!654 = !DILocation(line: 0, scope: !304, inlinedAt: !655)
!655 = distinct !DILocation(line: 178, column: 5, scope: !650)
!656 = !DILocation(line: 44, column: 27, scope: !312, inlinedAt: !655)
!657 = !DILocation(line: 48, column: 13, scope: !317, inlinedAt: !655)
!658 = !DILocation(line: 48, column: 13, scope: !315, inlinedAt: !655)
!659 = !DILocation(line: 0, scope: !320, inlinedAt: !660)
!660 = distinct !DILocation(line: 178, column: 25, scope: !650)
!661 = !DILocation(line: 62, column: 19, scope: !326, inlinedAt: !660)
!662 = !DILocation(line: 0, scope: !329, inlinedAt: !663)
!663 = distinct !DILocation(line: 178, column: 5, scope: !650)
!664 = !DILocation(line: 168, column: 13, scope: !334, inlinedAt: !663)
!665 = !DILocation(line: 169, column: 9, scope: !334, inlinedAt: !663)
!666 = !DILocation(line: 49, column: 23, scope: !339, inlinedAt: !655)
!667 = !DILocation(line: 50, column: 18, scope: !339, inlinedAt: !655)
!668 = !DILocation(line: 0, scope: !345, inlinedAt: !669)
!669 = distinct !DILocation(line: 170, column: 13, scope: !349, inlinedAt: !663)
!670 = !DILocation(line: 163, column: 81, scope: !345, inlinedAt: !669)
!671 = !DILocation(line: 163, column: 87, scope: !345, inlinedAt: !669)
!672 = !DILocation(line: 163, column: 77, scope: !345, inlinedAt: !669)
!673 = !DILocation(line: 163, column: 15, scope: !345, inlinedAt: !669)
!674 = !DILocation(line: 174, column: 17, scope: !355, inlinedAt: !663)
!675 = !DILocation(line: 181, column: 13, scope: !359, inlinedAt: !663)
!676 = !DILocalVariable(name: "user_context", arg: 1, scope: !677, file: !6, line: 133, type: !13)
!677 = distinct !DISubprogram(name: "hexagon_cache_pool_free", linkageName: "_ZN12_GLOBAL__N_123hexagon_cache_pool_freeEPv", scope: !363, file: !6, line: 133, type: !622, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !678)
!678 = !{!676, !679, !680, !681, !682}
!679 = !DILocalVariable(name: "lock", scope: !677, file: !6, line: 134, type: !373)
!680 = !DILocalVariable(name: "temp", scope: !677, file: !6, line: 135, type: !7)
!681 = !DILocalVariable(name: "prev", scope: !677, file: !6, line: 136, type: !7)
!682 = !DILocalVariable(name: "err", scope: !677, file: !6, line: 137, type: !46)
!683 = !DILocation(line: 0, scope: !677, inlinedAt: !684)
!684 = distinct !DILocation(line: 179, column: 12, scope: !650)
!685 = !DILocation(line: 0, scope: !397, inlinedAt: !686)
!686 = distinct !DILocation(line: 134, column: 21, scope: !677, inlinedAt: !684)
!687 = !DILocation(line: 16, column: 9, scope: !405, inlinedAt: !686)
!688 = !DILocation(line: 135, column: 24, scope: !677, inlinedAt: !684)
!689 = !DILocation(line: 138, column: 17, scope: !677, inlinedAt: !684)
!690 = !DILocation(line: 138, column: 5, scope: !677, inlinedAt: !684)
!691 = !DILocation(line: 139, column: 19, scope: !692, inlinedAt: !684)
!692 = distinct !DILexicalBlock(scope: !693, file: !6, line: 139, column: 13)
!693 = distinct !DILexicalBlock(scope: !677, file: !6, line: 138, column: 29)
!694 = !DILocation(line: 139, column: 28, scope: !692, inlinedAt: !684)
!695 = !DILocation(line: 139, column: 13, scope: !693, inlinedAt: !684)
!696 = !DILocation(line: 140, column: 19, scope: !697, inlinedAt: !684)
!697 = distinct !DILexicalBlock(scope: !692, file: !6, line: 139, column: 40)
!698 = !DILocation(line: 141, column: 21, scope: !699, inlinedAt: !684)
!699 = distinct !DILexicalBlock(scope: !697, file: !6, line: 141, column: 17)
!700 = !DILocation(line: 141, column: 17, scope: !697, inlinedAt: !684)
!701 = !DILocation(line: 0, scope: !443, inlinedAt: !702)
!702 = distinct !DILocation(line: 142, column: 17, scope: !703, inlinedAt: !684)
!703 = distinct !DILexicalBlock(scope: !699, file: !6, line: 141, column: 34)
!704 = !DILocation(line: 44, column: 27, scope: !452, inlinedAt: !702)
!705 = !DILocation(line: 48, column: 13, scope: !457, inlinedAt: !702)
!706 = !DILocation(line: 48, column: 13, scope: !455, inlinedAt: !702)
!707 = !DILocation(line: 0, scope: !460, inlinedAt: !708)
!708 = distinct !DILocation(line: 142, column: 37, scope: !703, inlinedAt: !684)
!709 = !DILocation(line: 62, column: 19, scope: !466, inlinedAt: !708)
!710 = !DILocation(line: 0, scope: !469, inlinedAt: !711)
!711 = distinct !DILocation(line: 142, column: 17, scope: !703, inlinedAt: !684)
!712 = !DILocation(line: 168, column: 13, scope: !474, inlinedAt: !711)
!713 = !DILocation(line: 169, column: 9, scope: !474, inlinedAt: !711)
!714 = !DILocation(line: 49, column: 23, scope: !479, inlinedAt: !702)
!715 = !DILocation(line: 50, column: 18, scope: !479, inlinedAt: !702)
!716 = !DILocation(line: 0, scope: !482, inlinedAt: !717)
!717 = distinct !DILocation(line: 170, column: 13, scope: !486, inlinedAt: !711)
!718 = !DILocation(line: 163, column: 81, scope: !482, inlinedAt: !717)
!719 = !DILocation(line: 163, column: 87, scope: !482, inlinedAt: !717)
!720 = !DILocation(line: 163, column: 77, scope: !482, inlinedAt: !717)
!721 = !DILocation(line: 163, column: 15, scope: !482, inlinedAt: !717)
!722 = !DILocation(line: 172, column: 17, scope: !492, inlinedAt: !711)
!723 = !DILocation(line: 181, column: 13, scope: !495, inlinedAt: !711)
!724 = !DILocation(line: 143, column: 17, scope: !703, inlinedAt: !684)
!725 = !DILocation(line: 146, column: 22, scope: !693, inlinedAt: !684)
!726 = !DILocation(line: 147, column: 14, scope: !693, inlinedAt: !684)
!727 = !DILocation(line: 147, column: 9, scope: !693, inlinedAt: !684)
!728 = distinct !{!728, !690, !729, !426}
!729 = !DILocation(line: 149, column: 5, scope: !677, inlinedAt: !684)
!730 = !DILocation(line: 150, column: 24, scope: !677, inlinedAt: !684)
!731 = !DILocation(line: 151, column: 5, scope: !677, inlinedAt: !684)
!732 = !DILocation(line: 0, scope: !432, inlinedAt: !733)
!733 = distinct !DILocation(line: 152, column: 1, scope: !677, inlinedAt: !684)
!734 = !DILocation(line: 20, column: 9, scope: !437, inlinedAt: !733)
!735 = !DILocation(line: 179, column: 5, scope: !650)
!736 = !DISubprogram(name: "malloc", scope: !18, file: !18, line: 87, type: !737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{!13, !19}
!739 = !{}
!740 = !DISubprogram(name: "HAP_cache_lock", scope: !94, file: !94, line: 154, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!741 = !DISubroutineType(types: !742)
!742 = !{!13, !19, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!744 = !DISubprogram(name: "free", scope: !18, file: !18, line: 86, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !13}
!747 = !DISubprogram(name: "halide_mutex_lock", scope: !25, file: !25, line: 133, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !377}
!750 = !DISubprogram(name: "halide_mutex_unlock", scope: !25, file: !25, line: 134, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!751 = !DISubprogram(name: "halide_string_to_string", scope: !18, file: !18, line: 120, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!752 = !DISubroutineType(types: !753)
!753 = !{!104, !104, !104, !120}
!754 = !DISubprogram(name: "halide_error", scope: !25, file: !25, line: 111, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !13, !120}
!757 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !25, file: !25, line: 973, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!758 = !DISubroutineType(types: !759)
!759 = !{!46, !13, !150, !135}
!760 = !DISubprogram(name: "HAP_cache_unlock", scope: !94, file: !94, line: 163, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!761 = !DISubprogram(name: "halide_print", scope: !25, file: !25, line: 97, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!762 = !DISubprogram(name: "abort", scope: !18, file: !18, line: 108, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !739)
!763 = !DISubroutineType(types: !764)
!764 = !{null}
