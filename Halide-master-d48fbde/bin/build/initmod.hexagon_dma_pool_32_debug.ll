; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t" = type { [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t"], [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t"] }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t" = type { i8, i8, i8* }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t" = type { i8, i8, [4 x i8] }
%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

@_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 4, !dbg !37
@.str = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp:103 Assert failed: hexagon_dma_pool\0A\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp:104 Assert failed: virtual_engine_id\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Hexagon: Failure to Free DMA\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Hexagon: Failure to free Cache Pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Hexagon: Failed to allocate engine\0A\00", align 1
@.str.5 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp:46 Assert failed: hexagon_dma_pool\0A\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp:47 Assert failed: virtual_engine_id\0A\00", align 1
@.str.7 = private unnamed_addr constant [151 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp:69 Assert failed: hexagon_dma_pool->dma_engine_list[j].engine_addr\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Hexagon: Error in assigning a dma engine to a virtual engine\0A\00", align 1
@.str.9 = private unnamed_addr constant [120 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp:82 Assert failed: virtual_engine_id\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"Hexagon: Error in freeing a dma engine from a virtual engine\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_free_dma_resource(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !243 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !247, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i8* %1, metadata !248, metadata !DIExpression()), !dbg !282
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !283, !tbaa !286
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null, !dbg !283
  br i1 %4, label %5, label %6, !dbg !290

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i32 0, i32 0)) #3, !dbg !291
  tail call void @abort() #3, !dbg !291
  br label %6, !dbg !291

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null, !dbg !293
  br i1 %7, label %8, label %9, !dbg !296

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i32 0, i32 0)) #3, !dbg !297
  tail call void @abort() #3, !dbg !297
  br label %9, !dbg !297

9:                                                ; preds = %6, %8
  call void @llvm.dbg.value(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !304
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !304
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !250, metadata !DIExpression()), !dbg !282
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !306
  call void @llvm.dbg.value(metadata i8* %1, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !308
  %10 = getelementptr inbounds i8, i8* %1, i32 2
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !308
  %11 = load i8, i8* %10, align 1, !dbg !309, !tbaa !310
  %12 = zext i8 %11 to i32, !dbg !309
  %13 = add nsw i32 %12, -1, !dbg !311
  call void @llvm.dbg.value(metadata i32 %13, metadata !266, metadata !DIExpression()), !dbg !312
  %14 = icmp eq i8 %11, 0, !dbg !313
  br i1 %14, label %24, label %15, !dbg !315

15:                                               ; preds = %9
  %16 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !316, !tbaa !286
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i32 0, i32 0, i32 %13, i32 1, !dbg !318
  store i8 0, i8* %17, align 1, !dbg !319, !tbaa !320
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i32 0, i32 0, i32 %13, i32 0, !dbg !323
  store i8 0, i8* %18, align 4, !dbg !324, !tbaa !325
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i32 0, i32 0, i32 %13, i32 2, !dbg !326
  %20 = load i8*, i8** %19, align 4, !dbg !326, !tbaa !328
  %21 = icmp eq i8* %20, null, !dbg !329
  br i1 %21, label %24, label %22, !dbg !330

22:                                               ; preds = %15
  %23 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %20) #3, !dbg !331
  br label %24, !dbg !333

24:                                               ; preds = %15, %22, %9
  store i8 0, i8* %10, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !264, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 1, metadata !264, metadata !DIExpression()), !dbg !308
  %25 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !309
  %26 = load i8, i8* %25, align 1, !dbg !309, !tbaa !310
  %27 = zext i8 %26 to i32, !dbg !309
  %28 = add nsw i32 %27, -1, !dbg !311
  call void @llvm.dbg.value(metadata i32 %28, metadata !266, metadata !DIExpression()), !dbg !312
  %29 = icmp eq i8 %26, 0, !dbg !313
  br i1 %29, label %91, label %82, !dbg !315

30:                                               ; preds = %59
  %31 = load i8*, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 4, !dbg !335, !tbaa !286
  tail call void @free(i8* %31) #3, !dbg !336
  store %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !337, !tbaa !286
  %32 = tail call i32 @halide_hexagon_free_l2_pool(i8* %0) #3, !dbg !338
  call void @llvm.dbg.value(metadata i32 %32, metadata !281, metadata !DIExpression()), !dbg !339
  %33 = icmp eq i32 %32, 0, !dbg !340
  br i1 %33, label %80, label %65, !dbg !342

34:                                               ; preds = %121, %62
  %35 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %64, %62 ], [ %123, %121 ], !dbg !343
  %36 = phi i32 [ %60, %62 ], [ 0, %121 ]
  %37 = phi i32 [ %63, %62 ], [ 0, %121 ]
  call void @llvm.dbg.value(metadata i32 %36, metadata !249, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %37, metadata !272, metadata !DIExpression()), !dbg !344
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %35, i32 0, i32 0, i32 %37, i32 2, !dbg !345
  %39 = load i8*, i8** %38, align 4, !dbg !345, !tbaa !328
  %40 = icmp eq i8* %39, null, !dbg !343
  br i1 %40, label %59, label %41, !dbg !346

41:                                               ; preds = %34
  %42 = tail call i32 @nDmaWrapper_FreeDma(i8* nonnull %39) #3, !dbg !347
  call void @llvm.dbg.value(metadata i32 %42, metadata !276, metadata !DIExpression()), !dbg !348
  %43 = icmp eq i32 %42, 0, !dbg !349
  br i1 %43, label %59, label %44, !dbg !351

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !358
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !358
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !358
  %45 = tail call i8* @malloc(i32 1024) #3, !dbg !361
  %46 = icmp eq i8* %45, null, !dbg !366
  br i1 %46, label %47, label %49, !dbg !368

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !373
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !373
  %48 = tail call i8* @halide_string_to_string(i8* %45, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #3, !dbg !375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !381
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #3, !dbg !383
  br label %58, !dbg !387

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %45, i32 1023, !dbg !388
  store i8 0, i8* %50, align 1, !dbg !390, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !373
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !373
  %51 = tail call i8* @halide_string_to_string(i8* nonnull %45, i8* nonnull %50, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #3, !dbg !375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !394
  %52 = ptrtoint i8* %51 to i32, !dbg !397
  %53 = ptrtoint i8* %45 to i32, !dbg !397
  %54 = add i32 %52, 1, !dbg !397
  %55 = sub i32 %54, %53, !dbg !398
  %56 = sext i32 %55 to i64, !dbg !399
  %57 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %45, i64 %56) #3, !dbg !400
  tail call void @halide_error(i8* %0, i8* nonnull %45) #3, !dbg !401
  br label %58

58:                                               ; preds = %49, %47
  tail call void @free(i8* %45) #3, !dbg !404
  call void @llvm.dbg.value(metadata i32 %42, metadata !249, metadata !DIExpression()), !dbg !282
  br label %59, !dbg !407

59:                                               ; preds = %41, %58, %34
  %60 = phi i32 [ %36, %34 ], [ %42, %58 ], [ %36, %41 ], !dbg !282
  call void @llvm.dbg.value(metadata i32 %60, metadata !249, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %37, metadata !272, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !344
  %61 = icmp ult i32 %37, 7, !dbg !408
  br i1 %61, label %62, label %30, !dbg !409, !llvm.loop !410

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %37, 1, !dbg !413
  call void @llvm.dbg.value(metadata i32 %63, metadata !272, metadata !DIExpression()), !dbg !344
  %64 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !343, !tbaa !286
  br label %34, !dbg !409

65:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !414
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !414
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !414
  %66 = tail call i8* @malloc(i32 1024) #3, !dbg !417
  %67 = icmp eq i8* %66, null, !dbg !418
  br i1 %67, label %68, label %70, !dbg !419

68:                                               ; preds = %65
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !420
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !420
  %69 = tail call i8* @halide_string_to_string(i8* %66, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)) #3, !dbg !422
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !423
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #3, !dbg !425
  br label %79, !dbg !426

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, i8* %66, i32 1023, !dbg !427
  store i8 0, i8* %71, align 1, !dbg !428, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !420
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !420
  %72 = tail call i8* @halide_string_to_string(i8* nonnull %66, i8* nonnull %71, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)) #3, !dbg !422
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !423
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !429
  %73 = ptrtoint i8* %72 to i32, !dbg !431
  %74 = ptrtoint i8* %66 to i32, !dbg !431
  %75 = add i32 %73, 1, !dbg !431
  %76 = sub i32 %75, %74, !dbg !432
  %77 = sext i32 %76 to i64, !dbg !433
  %78 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %66, i64 %77) #3, !dbg !434
  tail call void @halide_error(i8* %0, i8* nonnull %66) #3, !dbg !435
  br label %79

79:                                               ; preds = %70, %68
  tail call void @free(i8* %66) #3, !dbg !436
  call void @llvm.dbg.value(metadata i32 %32, metadata !249, metadata !DIExpression()), !dbg !282
  br label %80, !dbg !437

80:                                               ; preds = %30, %79, %121
  %81 = phi i32 [ 0, %121 ], [ %32, %79 ], [ %60, %30 ], !dbg !282
  call void @llvm.dbg.value(metadata i32 %81, metadata !249, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !438, metadata !DIExpression()) #4, !dbg !441
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !443
  ret i32 %81, !dbg !445

82:                                               ; preds = %24
  %83 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !316, !tbaa !286
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 0, i32 %28, i32 1, !dbg !318
  store i8 0, i8* %84, align 1, !dbg !319, !tbaa !320
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 0, i32 %28, i32 0, !dbg !323
  store i8 0, i8* %85, align 4, !dbg !324, !tbaa !325
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 0, i32 %28, i32 2, !dbg !326
  %87 = load i8*, i8** %86, align 4, !dbg !326, !tbaa !328
  %88 = icmp eq i8* %87, null, !dbg !329
  br i1 %88, label %91, label %89, !dbg !330

89:                                               ; preds = %82
  %90 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %87) #3, !dbg !331
  br label %91, !dbg !333

91:                                               ; preds = %89, %82, %24
  store i8 0, i8* %25, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !264, metadata !DIExpression()), !dbg !308
  %92 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !309
  %93 = load i8, i8* %92, align 1, !dbg !309, !tbaa !310
  %94 = zext i8 %93 to i32, !dbg !309
  %95 = add nsw i32 %94, -1, !dbg !311
  call void @llvm.dbg.value(metadata i32 %95, metadata !266, metadata !DIExpression()), !dbg !312
  %96 = icmp eq i8 %93, 0, !dbg !313
  br i1 %96, label %106, label %97, !dbg !315

97:                                               ; preds = %91
  %98 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !316, !tbaa !286
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %98, i32 0, i32 0, i32 %95, i32 1, !dbg !318
  store i8 0, i8* %99, align 1, !dbg !319, !tbaa !320
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %98, i32 0, i32 0, i32 %95, i32 0, !dbg !323
  store i8 0, i8* %100, align 4, !dbg !324, !tbaa !325
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %98, i32 0, i32 0, i32 %95, i32 2, !dbg !326
  %102 = load i8*, i8** %101, align 4, !dbg !326, !tbaa !328
  %103 = icmp eq i8* %102, null, !dbg !329
  br i1 %103, label %106, label %104, !dbg !330

104:                                              ; preds = %97
  %105 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %102) #3, !dbg !331
  br label %106, !dbg !333

106:                                              ; preds = %104, %97, %91
  store i8 0, i8* %92, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !264, metadata !DIExpression()), !dbg !308
  %107 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !309
  %108 = load i8, i8* %107, align 1, !dbg !309, !tbaa !310
  %109 = zext i8 %108 to i32, !dbg !309
  %110 = add nsw i32 %109, -1, !dbg !311
  call void @llvm.dbg.value(metadata i32 %110, metadata !266, metadata !DIExpression()), !dbg !312
  %111 = icmp eq i8 %108, 0, !dbg !313
  br i1 %111, label %121, label %112, !dbg !315

112:                                              ; preds = %106
  %113 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !316, !tbaa !286
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %113, i32 0, i32 0, i32 %110, i32 1, !dbg !318
  store i8 0, i8* %114, align 1, !dbg !319, !tbaa !320
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %113, i32 0, i32 0, i32 %110, i32 0, !dbg !323
  store i8 0, i8* %115, align 4, !dbg !324, !tbaa !325
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %113, i32 0, i32 0, i32 %110, i32 2, !dbg !326
  %117 = load i8*, i8** %116, align 4, !dbg !326, !tbaa !328
  %118 = icmp eq i8* %117, null, !dbg !329
  br i1 %118, label %121, label %119, !dbg !330

119:                                              ; preds = %112
  %120 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %117) #3, !dbg !331
  br label %121, !dbg !333

121:                                              ; preds = %119, %112, %106
  store i8 0, i8* %107, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !264, metadata !DIExpression()), !dbg !308
  %122 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !446
  store i8 0, i8* %122, align 1, !dbg !447, !tbaa !448
  store i8 0, i8* %1, align 1, !dbg !450, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !270, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata i8 undef, metadata !269, metadata !DIExpression()), !dbg !282
  %123 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !286
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 0, i32 0, !dbg !453
  %125 = load i8, i8* %124, align 2, !dbg !453, !tbaa !451, !range !457
  call void @llvm.dbg.value(metadata i32 1, metadata !270, metadata !DIExpression()), !dbg !452
  %126 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 1, i32 0, !dbg !453
  %127 = load i8, i8* %126, align 2, !dbg !453, !tbaa !451, !range !457
  %128 = or i8 %125, %127, !dbg !458
  call void @llvm.dbg.value(metadata i32 2, metadata !270, metadata !DIExpression()), !dbg !452
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 2, i32 0, !dbg !453
  %130 = load i8, i8* %129, align 2, !dbg !453, !tbaa !451, !range !457
  %131 = or i8 %128, %130, !dbg !458
  call void @llvm.dbg.value(metadata i32 3, metadata !270, metadata !DIExpression()), !dbg !452
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 3, i32 0, !dbg !453
  %133 = load i8, i8* %132, align 2, !dbg !453, !tbaa !451, !range !457
  %134 = or i8 %131, %133, !dbg !458
  call void @llvm.dbg.value(metadata i32 4, metadata !270, metadata !DIExpression()), !dbg !452
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 4, i32 0, !dbg !453
  %136 = load i8, i8* %135, align 2, !dbg !453, !tbaa !451, !range !457
  %137 = or i8 %134, %136, !dbg !458
  call void @llvm.dbg.value(metadata i32 5, metadata !270, metadata !DIExpression()), !dbg !452
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 5, i32 0, !dbg !453
  %139 = load i8, i8* %138, align 2, !dbg !453, !tbaa !451, !range !457
  %140 = or i8 %137, %139, !dbg !458
  call void @llvm.dbg.value(metadata i32 6, metadata !270, metadata !DIExpression()), !dbg !452
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 6, i32 0, !dbg !453
  %142 = load i8, i8* %141, align 2, !dbg !453, !tbaa !451, !range !457
  %143 = or i8 %140, %142, !dbg !458
  call void @llvm.dbg.value(metadata i32 7, metadata !270, metadata !DIExpression()), !dbg !452
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 7, i32 0, !dbg !453
  %145 = load i8, i8* %144, align 2, !dbg !453, !tbaa !451, !range !457
  %146 = or i8 %143, %145, !dbg !458
  %147 = icmp eq i8 %146, 0, !dbg !458
  call void @llvm.dbg.value(metadata i32 8, metadata !270, metadata !DIExpression()), !dbg !452
  br i1 %147, label %34, label %80, !dbg !459
}

declare !dbg !460 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !464 dso_local void @abort() local_unnamed_addr #1

declare !dbg !467 dso_local i32 @nDmaWrapper_FinishFrame(i8*) local_unnamed_addr #1

declare !dbg !470 dso_local i32 @nDmaWrapper_FreeDma(i8*) local_unnamed_addr #1

declare !dbg !471 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !474 extern_weak dso_local i32 @halide_hexagon_free_l2_pool(i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i8* @halide_hexagon_allocate_dma_resource(i8* %0) local_unnamed_addr #0 !dbg !476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !480, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !498
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !498
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !481, metadata !DIExpression()), !dbg !497
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !500
  %2 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !501, !tbaa !286
  %3 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %2, null, !dbg !501
  br i1 %3, label %4, label %82, !dbg !502

4:                                                ; preds = %1
  %5 = tail call i8* @malloc(i32 112) #3, !dbg !503
  store i8* %5, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 4, !dbg !504, !tbaa !286
  call void @llvm.dbg.value(metadata i32 0, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 0, metadata !482, metadata !DIExpression()), !dbg !505
  store i8 0, i8* %5, align 4, !dbg !506, !tbaa !325
  %6 = getelementptr inbounds i8, i8* %5, i32 4, !dbg !507
  %7 = bitcast i8* %6 to i8**, !dbg !507
  store i8* null, i8** %7, align 4, !dbg !508, !tbaa !328
  %8 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !509
  store i8 0, i8* %8, align 1, !dbg !510, !tbaa !320
  %9 = getelementptr inbounds i8, i8* %5, i32 64, !dbg !511
  store i8 0, i8* %9, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %10 = getelementptr inbounds i8, i8* %5, i32 66, !dbg !514
  store i8 0, i8* %10, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %11 = getelementptr inbounds i8, i8* %5, i32 67, !dbg !514
  store i8 0, i8* %11, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %12 = getelementptr inbounds i8, i8* %5, i32 68, !dbg !514
  store i8 0, i8* %12, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %13 = getelementptr inbounds i8, i8* %5, i32 69, !dbg !514
  store i8 0, i8* %13, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %14 = getelementptr inbounds i8, i8* %5, i32 65, !dbg !518
  store i8 0, i8* %14, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 1, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 1, metadata !482, metadata !DIExpression()), !dbg !505
  %15 = getelementptr inbounds i8, i8* %5, i32 8, !dbg !520
  store i8 0, i8* %15, align 4, !dbg !506, !tbaa !325
  %16 = getelementptr inbounds i8, i8* %5, i32 12, !dbg !507
  %17 = bitcast i8* %16 to i8**, !dbg !507
  store i8* null, i8** %17, align 4, !dbg !508, !tbaa !328
  %18 = getelementptr inbounds i8, i8* %5, i32 9, !dbg !509
  store i8 0, i8* %18, align 1, !dbg !510, !tbaa !320
  %19 = getelementptr inbounds i8, i8* %5, i32 70, !dbg !511
  store i8 0, i8* %19, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %20 = getelementptr inbounds i8, i8* %5, i32 72, !dbg !514
  store i8 0, i8* %20, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %21 = getelementptr inbounds i8, i8* %5, i32 73, !dbg !514
  store i8 0, i8* %21, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %22 = getelementptr inbounds i8, i8* %5, i32 74, !dbg !514
  store i8 0, i8* %22, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %23 = getelementptr inbounds i8, i8* %5, i32 75, !dbg !514
  store i8 0, i8* %23, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %24 = getelementptr inbounds i8, i8* %5, i32 71, !dbg !518
  store i8 0, i8* %24, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 2, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 2, metadata !482, metadata !DIExpression()), !dbg !505
  %25 = getelementptr inbounds i8, i8* %5, i32 16, !dbg !520
  store i8 0, i8* %25, align 4, !dbg !506, !tbaa !325
  %26 = getelementptr inbounds i8, i8* %5, i32 20, !dbg !507
  %27 = bitcast i8* %26 to i8**, !dbg !507
  store i8* null, i8** %27, align 4, !dbg !508, !tbaa !328
  %28 = getelementptr inbounds i8, i8* %5, i32 17, !dbg !509
  store i8 0, i8* %28, align 1, !dbg !510, !tbaa !320
  %29 = getelementptr inbounds i8, i8* %5, i32 76, !dbg !511
  store i8 0, i8* %29, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %30 = getelementptr inbounds i8, i8* %5, i32 78, !dbg !514
  store i8 0, i8* %30, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %31 = getelementptr inbounds i8, i8* %5, i32 79, !dbg !514
  store i8 0, i8* %31, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %32 = getelementptr inbounds i8, i8* %5, i32 80, !dbg !514
  store i8 0, i8* %32, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %33 = getelementptr inbounds i8, i8* %5, i32 81, !dbg !514
  store i8 0, i8* %33, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %34 = getelementptr inbounds i8, i8* %5, i32 77, !dbg !518
  store i8 0, i8* %34, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 3, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 3, metadata !482, metadata !DIExpression()), !dbg !505
  %35 = getelementptr inbounds i8, i8* %5, i32 24, !dbg !520
  store i8 0, i8* %35, align 4, !dbg !506, !tbaa !325
  %36 = getelementptr inbounds i8, i8* %5, i32 28, !dbg !507
  %37 = bitcast i8* %36 to i8**, !dbg !507
  store i8* null, i8** %37, align 4, !dbg !508, !tbaa !328
  %38 = getelementptr inbounds i8, i8* %5, i32 25, !dbg !509
  store i8 0, i8* %38, align 1, !dbg !510, !tbaa !320
  %39 = getelementptr inbounds i8, i8* %5, i32 82, !dbg !511
  store i8 0, i8* %39, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %40 = getelementptr inbounds i8, i8* %5, i32 84, !dbg !514
  store i8 0, i8* %40, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %41 = getelementptr inbounds i8, i8* %5, i32 85, !dbg !514
  store i8 0, i8* %41, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %42 = getelementptr inbounds i8, i8* %5, i32 86, !dbg !514
  store i8 0, i8* %42, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %43 = getelementptr inbounds i8, i8* %5, i32 87, !dbg !514
  store i8 0, i8* %43, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %44 = getelementptr inbounds i8, i8* %5, i32 83, !dbg !518
  store i8 0, i8* %44, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 4, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 4, metadata !482, metadata !DIExpression()), !dbg !505
  %45 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !521, !tbaa !286
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 4, i32 0, !dbg !520
  store i8 0, i8* %46, align 4, !dbg !506, !tbaa !325
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 4, i32 2, !dbg !507
  store i8* null, i8** %47, align 4, !dbg !508, !tbaa !328
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 4, i32 1, !dbg !509
  store i8 0, i8* %48, align 1, !dbg !510, !tbaa !320
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 0, !dbg !511
  store i8 0, i8* %49, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 0, !dbg !514
  store i8 0, i8* %50, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 1, !dbg !514
  store i8 0, i8* %51, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 2, !dbg !514
  store i8 0, i8* %52, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 3, !dbg !514
  store i8 0, i8* %53, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 1, !dbg !518
  store i8 0, i8* %54, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 5, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 5, metadata !482, metadata !DIExpression()), !dbg !505
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 5, i32 0, !dbg !520
  store i8 0, i8* %55, align 4, !dbg !506, !tbaa !325
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 5, i32 2, !dbg !507
  store i8* null, i8** %56, align 4, !dbg !508, !tbaa !328
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 5, i32 1, !dbg !509
  store i8 0, i8* %57, align 1, !dbg !510, !tbaa !320
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 0, !dbg !511
  store i8 0, i8* %58, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 0, !dbg !514
  store i8 0, i8* %59, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 1, !dbg !514
  store i8 0, i8* %60, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 2, !dbg !514
  store i8 0, i8* %61, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 3, !dbg !514
  store i8 0, i8* %62, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 1, !dbg !518
  store i8 0, i8* %63, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 6, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 6, metadata !482, metadata !DIExpression()), !dbg !505
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 6, i32 0, !dbg !520
  store i8 0, i8* %64, align 4, !dbg !506, !tbaa !325
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 6, i32 2, !dbg !507
  store i8* null, i8** %65, align 4, !dbg !508, !tbaa !328
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 6, i32 1, !dbg !509
  store i8 0, i8* %66, align 1, !dbg !510, !tbaa !320
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 0, !dbg !511
  store i8 0, i8* %67, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 0, !dbg !514
  store i8 0, i8* %68, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 1, !dbg !514
  store i8 0, i8* %69, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 2, !dbg !514
  store i8 0, i8* %70, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 3, !dbg !514
  store i8 0, i8* %71, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 1, !dbg !518
  store i8 0, i8* %72, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 7, metadata !482, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i32 7, metadata !482, metadata !DIExpression()), !dbg !505
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 7, i32 0, !dbg !520
  store i8 0, i8* %73, align 4, !dbg !506, !tbaa !325
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 7, i32 2, !dbg !507
  store i8* null, i8** %74, align 4, !dbg !508, !tbaa !328
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 7, i32 1, !dbg !509
  store i8 0, i8* %75, align 1, !dbg !510, !tbaa !320
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 0, !dbg !511
  store i8 0, i8* %76, align 2, !dbg !512, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 0, metadata !486, metadata !DIExpression()), !dbg !513
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 0, !dbg !514
  store i8 0, i8* %77, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !486, metadata !DIExpression()), !dbg !513
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 1, !dbg !514
  store i8 0, i8* %78, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 2, metadata !486, metadata !DIExpression()), !dbg !513
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 2, !dbg !514
  store i8 0, i8* %79, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 3, metadata !486, metadata !DIExpression()), !dbg !513
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 3, !dbg !514
  store i8 0, i8* %80, align 1, !dbg !517, !tbaa !310
  call void @llvm.dbg.value(metadata i32 4, metadata !486, metadata !DIExpression()), !dbg !513
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 1, !dbg !518
  store i8 0, i8* %81, align 1, !dbg !519, !tbaa !448
  call void @llvm.dbg.value(metadata i32 8, metadata !482, metadata !DIExpression()), !dbg !505
  br label %82

82:                                               ; preds = %4, %1
  %83 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %45, %4 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !522
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 0, i32 0, !dbg !523
  %85 = load i8, i8* %84, align 2, !dbg !523, !tbaa !451, !range !457
  %86 = icmp eq i8 %85, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %86, label %91, label %87, !dbg !525

87:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i32 1, metadata !490, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata i32 1, metadata !490, metadata !DIExpression()), !dbg !522
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 1, i32 0, !dbg !523
  %89 = load i8, i8* %88, align 2, !dbg !523, !tbaa !451, !range !457
  %90 = icmp eq i8 %89, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 1, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %90, label %91, label %107, !dbg !525

91:                                               ; preds = %127, %123, %119, %115, %111, %107, %87, %82
  %92 = phi i8* [ %84, %82 ], [ %88, %87 ], [ %108, %107 ], [ %112, %111 ], [ %116, %115 ], [ %120, %119 ], [ %124, %123 ], [ %128, %127 ], !dbg !523
  store i8 1, i8* %92, align 2, !dbg !526, !tbaa !451
  call void @llvm.dbg.value(metadata i8* %92, metadata !492, metadata !DIExpression()), !dbg !527
  br label %105

93:                                               ; preds = %131
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !528
  %94 = tail call i8* @halide_string_to_string(i8* %132, i8* null, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #3, !dbg !530
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !531
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #3, !dbg !533
  br label %104, !dbg !534

95:                                               ; preds = %131
  %96 = getelementptr inbounds i8, i8* %132, i32 1023, !dbg !535
  store i8 0, i8* %96, align 1, !dbg !537, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !528
  %97 = tail call i8* @halide_string_to_string(i8* nonnull %132, i8* nonnull %96, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #3, !dbg !530
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !531
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !538
  %98 = ptrtoint i8* %97 to i32, !dbg !540
  %99 = ptrtoint i8* %132 to i32, !dbg !540
  %100 = add i32 %98, 1, !dbg !540
  %101 = sub i32 %100, %99, !dbg !541
  %102 = sext i32 %101 to i64, !dbg !542
  %103 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %132, i64 %102) #3, !dbg !543
  tail call void @halide_error(i8* %0, i8* nonnull %132) #3, !dbg !544
  br label %104

104:                                              ; preds = %95, %93
  tail call void @free(i8* %132) #3, !dbg !545
  br label %105, !dbg !546

105:                                              ; preds = %91, %104
  %106 = phi i8* [ null, %104 ], [ %92, %91 ], !dbg !497
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !438, metadata !DIExpression()) #4, !dbg !547
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !549
  ret i8* %106, !dbg !550

107:                                              ; preds = %87
  call void @llvm.dbg.value(metadata i32 2, metadata !490, metadata !DIExpression()), !dbg !522
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 2, i32 0, !dbg !523
  %109 = load i8, i8* %108, align 2, !dbg !523, !tbaa !451, !range !457
  %110 = icmp eq i8 %109, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 2, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %110, label %91, label %111, !dbg !525

111:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i32 3, metadata !490, metadata !DIExpression()), !dbg !522
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 3, i32 0, !dbg !523
  %113 = load i8, i8* %112, align 2, !dbg !523, !tbaa !451, !range !457
  %114 = icmp eq i8 %113, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 3, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %114, label %91, label %115, !dbg !525

115:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i32 4, metadata !490, metadata !DIExpression()), !dbg !522
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 4, i32 0, !dbg !523
  %117 = load i8, i8* %116, align 2, !dbg !523, !tbaa !451, !range !457
  %118 = icmp eq i8 %117, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 4, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %118, label %91, label %119, !dbg !525

119:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 5, metadata !490, metadata !DIExpression()), !dbg !522
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 5, i32 0, !dbg !523
  %121 = load i8, i8* %120, align 2, !dbg !523, !tbaa !451, !range !457
  %122 = icmp eq i8 %121, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 5, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %122, label %91, label %123, !dbg !525

123:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i32 6, metadata !490, metadata !DIExpression()), !dbg !522
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 6, i32 0, !dbg !523
  %125 = load i8, i8* %124, align 2, !dbg !523, !tbaa !451, !range !457
  %126 = icmp eq i8 %125, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 6, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %126, label %91, label %127, !dbg !525

127:                                              ; preds = %123
  call void @llvm.dbg.value(metadata i32 7, metadata !490, metadata !DIExpression()), !dbg !522
  %128 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 7, i32 0, !dbg !523
  %129 = load i8, i8* %128, align 2, !dbg !523, !tbaa !451, !range !457
  %130 = icmp eq i8 %129, 0, !dbg !524
  call void @llvm.dbg.value(metadata i32 7, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  br i1 %130, label %91, label %131, !dbg !525

131:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 7, metadata !490, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !551
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !551
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !551
  %132 = tail call i8* @malloc(i32 1024) #3, !dbg !552
  %133 = icmp eq i8* %132, null, !dbg !553
  br i1 %133, label %93, label %95, !dbg !554
}

declare !dbg !555 dso_local i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !562, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %1, metadata !563, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %0, metadata !565, metadata !DIExpression()) #4, !dbg !581
  call void @llvm.dbg.value(metadata i8* %1, metadata !569, metadata !DIExpression()) #4, !dbg !581
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !583, !tbaa !286
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null, !dbg !583
  br i1 %4, label %5, label %6, !dbg !586

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i32 0, i32 0)) #3, !dbg !587
  tail call void @abort() #3, !dbg !587
  br label %6, !dbg !587

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null, !dbg !589
  br i1 %7, label %8, label %9, !dbg !592

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i32 0, i32 0)) #3, !dbg !593
  tail call void @abort() #3, !dbg !593
  br label %9, !dbg !593

9:                                                ; preds = %8, %6
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !595
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !595
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !570, metadata !DIExpression()) #4, !dbg !581
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !597
  call void @llvm.dbg.value(metadata i8* %1, metadata !571, metadata !DIExpression()) #4, !dbg !581
  call void @llvm.dbg.value(metadata i32 0, metadata !572, metadata !DIExpression()) #4, !dbg !598
  %10 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !599
  %11 = load i8, i8* %10, align 1, !dbg !599, !tbaa !448
  %12 = zext i8 %11 to i32, !dbg !600
  %13 = icmp eq i8 %11, 0, !dbg !601
  br i1 %13, label %14, label %16, !dbg !602

14:                                               ; preds = %9
  %15 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !286
  br label %38, !dbg !602

16:                                               ; preds = %9
  %17 = getelementptr inbounds i8, i8* %1, i32 2
  %18 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4
  br label %19, !dbg !602

19:                                               ; preds = %33, %16
  %20 = phi i32 [ 0, %16 ], [ %34, %33 ]
  call void @llvm.dbg.value(metadata i32 %20, metadata !572, metadata !DIExpression()) #4, !dbg !598
  %21 = getelementptr inbounds i8, i8* %17, i32 %20, !dbg !603
  %22 = load i8, i8* %21, align 1, !dbg !603, !tbaa !310
  %23 = zext i8 %22 to i32, !dbg !603
  %24 = add nsw i32 %23, -1, !dbg !604
  call void @llvm.dbg.value(metadata i32 %24, metadata !574, metadata !DIExpression()) #4, !dbg !605
  %25 = icmp eq i8 %22, 0, !dbg !606
  br i1 %25, label %33, label %26, !dbg !608

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %18, i32 0, i32 0, i32 %24, i32 0, !dbg !609
  %28 = load i8, i8* %27, align 4, !dbg !609, !tbaa !325, !range !457
  %29 = icmp eq i8 %28, 0, !dbg !610
  br i1 %29, label %30, label %33, !dbg !611

30:                                               ; preds = %26
  store i8 1, i8* %27, align 4, !dbg !612, !tbaa !325
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %18, i32 0, i32 0, i32 %24, i32 2, !dbg !614
  %32 = load i8*, i8** %31, align 4, !dbg !614, !tbaa !328
  br label %113

33:                                               ; preds = %26, %19
  %34 = add nuw nsw i32 %20, 1, !dbg !615
  call void @llvm.dbg.value(metadata i32 %34, metadata !572, metadata !DIExpression()) #4, !dbg !598
  %35 = icmp ult i32 %34, %12, !dbg !601
  br i1 %35, label %19, label %36, !dbg !602, !llvm.loop !616

36:                                               ; preds = %33
  %37 = icmp ult i8 %11, 4, !dbg !618
  br i1 %37, label %38, label %74, !dbg !619

38:                                               ; preds = %14, %36
  %39 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %15, %14 ], [ %18, %36 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 0, i32 1, !dbg !621
  %41 = load i8, i8* %40, align 1, !dbg !621, !tbaa !320, !range !457
  %42 = icmp eq i8 %41, 0, !dbg !625
  br i1 %42, label %43, label %70, !dbg !626

43:                                               ; preds = %109, %105, %101, %97, %93, %89, %70, %38
  %44 = phi i32 [ 0, %38 ], [ 1, %70 ], [ 2, %89 ], [ 3, %93 ], [ 4, %97 ], [ 5, %101 ], [ 6, %105 ], [ 7, %109 ]
  %45 = phi i8* [ %40, %38 ], [ %71, %70 ], [ %90, %89 ], [ %94, %93 ], [ %98, %97 ], [ %102, %101 ], [ %106, %105 ], [ %110, %109 ], !dbg !621
  store i8 1, i8* %45, align 1, !dbg !627, !tbaa !320
  %46 = trunc i32 %44 to i8, !dbg !629
  %47 = add nuw nsw i8 %46, 1, !dbg !629
  %48 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !630
  %49 = getelementptr inbounds i8, i8* %48, i32 %12, !dbg !631
  store i8 %47, i8* %49, align 1, !dbg !632, !tbaa !310
  %50 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !633, !tbaa !286
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %50, i32 0, i32 0, i32 %44, i32 2, !dbg !635
  %52 = load i8*, i8** %51, align 4, !dbg !635, !tbaa !328
  %53 = icmp eq i8* %52, null, !dbg !633
  br i1 %53, label %54, label %66, !dbg !636

54:                                               ; preds = %43
  %55 = tail call i8* @hDmaWrapper_AllocDma() #3, !dbg !637
  %56 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !639, !tbaa !286
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %56, i32 0, i32 0, i32 %44, i32 2, !dbg !640
  store i8* %55, i8** %57, align 4, !dbg !641, !tbaa !328
  %58 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !642, !tbaa !286
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %58, i32 0, i32 0, i32 %44, i32 2, !dbg !642
  %60 = load i8*, i8** %59, align 4, !dbg !642, !tbaa !328
  %61 = icmp eq i8* %60, null, !dbg !642
  br i1 %61, label %62, label %66, !dbg !645

62:                                               ; preds = %54
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.7, i32 0, i32 0)) #3, !dbg !646
  tail call void @abort() #3, !dbg !646
  %63 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !dbg !648, !tbaa !286
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %63, i32 0, i32 0, i32 %44, i32 2
  %65 = load i8*, i8** %64, align 4, !dbg !649, !tbaa !328
  br label %66, !dbg !646

66:                                               ; preds = %62, %54, %43
  %67 = phi i8* [ %52, %43 ], [ %65, %62 ], [ %60, %54 ], !dbg !649
  %68 = load i8, i8* %10, align 1, !dbg !650, !tbaa !448
  %69 = add i8 %68, 1, !dbg !650
  store i8 %69, i8* %10, align 1, !dbg !650, !tbaa !448
  br label %113

70:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 1, i32 1, !dbg !621
  %72 = load i8, i8* %71, align 1, !dbg !621, !tbaa !320, !range !457
  %73 = icmp eq i8 %72, 0, !dbg !625
  br i1 %73, label %43, label %89, !dbg !626

74:                                               ; preds = %109, %36
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !651
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !651
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !651
  %75 = tail call i8* @malloc(i32 1024) #3, !dbg !653
  %76 = icmp eq i8* %75, null, !dbg !654
  br i1 %76, label %77, label %79, !dbg !655

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !656
  %78 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #3, !dbg !658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !659
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #3, !dbg !661
  br label %88, !dbg !662

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, i8* %75, i32 1023, !dbg !663
  store i8 0, i8* %80, align 1, !dbg !664, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !656
  %81 = tail call i8* @halide_string_to_string(i8* nonnull %75, i8* nonnull %80, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #3, !dbg !658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !659
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !665
  %82 = ptrtoint i8* %81 to i32, !dbg !667
  %83 = ptrtoint i8* %75 to i32, !dbg !667
  %84 = sub i32 1, %83, !dbg !667
  %85 = add i32 %84, %82, !dbg !668
  %86 = sext i32 %85 to i64, !dbg !669
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %75, i64 %86) #3, !dbg !670
  tail call void @halide_error(i8* %0, i8* nonnull %75) #3, !dbg !671
  br label %88

88:                                               ; preds = %79, %77
  tail call void @free(i8* %75) #3, !dbg !672
  br label %113, !dbg !673

89:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 2, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 2, i32 1, !dbg !621
  %91 = load i8, i8* %90, align 1, !dbg !621, !tbaa !320, !range !457
  %92 = icmp eq i8 %91, 0, !dbg !625
  br i1 %92, label %43, label %93, !dbg !626

93:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i32 3, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 3, i32 1, !dbg !621
  %95 = load i8, i8* %94, align 1, !dbg !621, !tbaa !320, !range !457
  %96 = icmp eq i8 %95, 0, !dbg !625
  br i1 %96, label %43, label %97, !dbg !626

97:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i32 4, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 4, i32 1, !dbg !621
  %99 = load i8, i8* %98, align 1, !dbg !621, !tbaa !320, !range !457
  %100 = icmp eq i8 %99, 0, !dbg !625
  br i1 %100, label %43, label %101, !dbg !626

101:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i32 5, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 5, i32 1, !dbg !621
  %103 = load i8, i8* %102, align 1, !dbg !621, !tbaa !320, !range !457
  %104 = icmp eq i8 %103, 0, !dbg !625
  br i1 %104, label %43, label %105, !dbg !626

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 6, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 6, i32 1, !dbg !621
  %107 = load i8, i8* %106, align 1, !dbg !621, !tbaa !320, !range !457
  %108 = icmp eq i8 %107, 0, !dbg !625
  br i1 %108, label %43, label %109, !dbg !626

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i32 7, metadata !577, metadata !DIExpression()) #4, !dbg !620
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 7, i32 1, !dbg !621
  %111 = load i8, i8* %110, align 1, !dbg !621, !tbaa !320, !range !457
  %112 = icmp eq i8 %111, 0, !dbg !625
  br i1 %112, label %43, label %74, !dbg !626

113:                                              ; preds = %30, %66, %88
  %114 = phi i8* [ null, %88 ], [ %32, %30 ], [ %67, %66 ], !dbg !581
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !438, metadata !DIExpression()) #4, !dbg !674
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !676
  ret i8* %114, !dbg !677
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 !dbg !678 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !682, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i8* %1, metadata !683, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i8* %2, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i8* %0, metadata !686, metadata !DIExpression()) #4, !dbg !698
  call void @llvm.dbg.value(metadata i8* %1, metadata !689, metadata !DIExpression()) #4, !dbg !698
  call void @llvm.dbg.value(metadata i8* %2, metadata !690, metadata !DIExpression()) #4, !dbg !698
  %4 = icmp eq i8* %2, null, !dbg !700
  br i1 %4, label %5, label %6, !dbg !703

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.9, i32 0, i32 0)) #3, !dbg !704
  tail call void @abort() #3, !dbg !704
  br label %6, !dbg !704

6:                                                ; preds = %5, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !706
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !706
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !691, metadata !DIExpression()) #4, !dbg !698
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !708
  call void @llvm.dbg.value(metadata i8* %2, metadata !692, metadata !DIExpression()) #4, !dbg !698
  call void @llvm.dbg.value(metadata i32 0, metadata !693, metadata !DIExpression()) #4, !dbg !709
  %7 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !710
  %8 = load i8, i8* %7, align 1, !dbg !710, !tbaa !448
  %9 = icmp eq i8 %8, 0, !dbg !711
  br i1 %9, label %30, label %10, !dbg !712

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %2, i32 2
  %12 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4
  %13 = zext i8 %8 to i32
  br label %14, !dbg !712

14:                                               ; preds = %27, %10
  %15 = phi i32 [ 0, %10 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !693, metadata !DIExpression()) #4, !dbg !709
  %16 = getelementptr inbounds i8, i8* %11, i32 %15, !dbg !713
  %17 = load i8, i8* %16, align 1, !dbg !713, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %17, metadata !695, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !714
  %18 = icmp eq i8 %17, 0, !dbg !715
  br i1 %18, label %27, label %19, !dbg !717

19:                                               ; preds = %14
  %20 = zext i8 %17 to i32, !dbg !713
  call void @llvm.dbg.value(metadata i32 %20, metadata !695, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !714
  %21 = add nsw i32 %20, -1, !dbg !718
  call void @llvm.dbg.value(metadata i32 %21, metadata !695, metadata !DIExpression()) #4, !dbg !714
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i32 0, i32 0, i32 %21, i32 2, !dbg !719
  %23 = load i8*, i8** %22, align 4, !dbg !719, !tbaa !328
  %24 = icmp eq i8* %23, %1, !dbg !720
  br i1 %24, label %25, label %27, !dbg !721

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i32 0, i32 0, i32 %21, i32 0, !dbg !722
  store i8 0, i8* %26, align 4, !dbg !724, !tbaa !325
  br label %45

27:                                               ; preds = %19, %14
  %28 = add nuw nsw i32 %15, 1, !dbg !725
  call void @llvm.dbg.value(metadata i32 %28, metadata !693, metadata !DIExpression()) #4, !dbg !709
  %29 = icmp ult i32 %28, %13, !dbg !711
  br i1 %29, label %14, label %30, !dbg !712, !llvm.loop !726

30:                                               ; preds = %27, %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !728
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !728
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !728
  %31 = tail call i8* @malloc(i32 1024) #3, !dbg !730
  %32 = icmp eq i8* %31, null, !dbg !731
  br i1 %32, label %33, label %35, !dbg !732

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !733
  %34 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)) #3, !dbg !735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !736
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #3, !dbg !738
  br label %44, !dbg !739

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %31, i32 1023, !dbg !740
  store i8 0, i8* %36, align 1, !dbg !741, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !733
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0), metadata !372, metadata !DIExpression()) #4, !dbg !733
  %37 = tail call i8* @halide_string_to_string(i8* nonnull %31, i8* nonnull %36, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)) #3, !dbg !735
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !736
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !742
  %38 = ptrtoint i8* %37 to i32, !dbg !744
  %39 = ptrtoint i8* %31 to i32, !dbg !744
  %40 = sub i32 1, %39, !dbg !744
  %41 = add i32 %40, %38, !dbg !745
  %42 = sext i32 %41 to i64, !dbg !746
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %42) #3, !dbg !747
  tail call void @halide_error(i8* %0, i8* nonnull %31) #3, !dbg !748
  br label %44

44:                                               ; preds = %35, %33
  tail call void @free(i8* %31) #3, !dbg !749
  br label %45, !dbg !750

45:                                               ; preds = %25, %44
  %46 = phi i32 [ -1, %44 ], [ 0, %25 ], !dbg !698
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !438, metadata !DIExpression()) #4, !dbg !751
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !753
  ret i32 %46, !dbg !754
}

declare !dbg !755 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !758 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !759 dso_local i8* @hDmaWrapper_AllocDma() local_unnamed_addr #1

declare !dbg !762 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !763 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !766 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!49}
!llvm.module.flags = !{!239, !240, !241}
!llvm.ident = !{!242}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hexagon_dma_pool", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE", scope: !2, file: !6, line: 32, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "HexagonDma", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/hexagon_dma_pool.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_dma_pool_t", scope: !2, file: !6, line: 30, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !6, line: 27, size: 896, flags: DIFlagTypePassByValue, elements: !10, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma18hexagon_dma_pool_tE")
!10 = !{!11, !23}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "dma_engine_list", scope: !9, file: !6, line: 28, baseType: !12, size: 512)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !21)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_dma_engine_t", scope: !2, file: !6, line: 25, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !6, line: 21, size: 64, flags: DIFlagTypePassByValue, elements: !15, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma20hexagon_dma_engine_tE")
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !14, file: !6, line: 22, baseType: !17, size: 8)
!17 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "assigned", scope: !14, file: !6, line: 23, baseType: !17, size: 8, offset: 8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "engine_addr", scope: !14, file: !6, line: 24, baseType: !20, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_engine_list", scope: !9, file: !6, line: 29, baseType: !24, size: 384, offset: 512)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 384, elements: !21)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_dma_virtual_engine_t", scope: !2, file: !6, line: 19, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !6, line: 15, size: 48, flags: DIFlagTypePassByValue, elements: !27, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_virtual_engine_tE")
!27 = !{!28, !29, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !26, file: !6, line: 16, baseType: !17, size: 8)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_engines", scope: !26, file: !6, line: 17, baseType: !30, size: 8, offset: 8)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 16, baseType: !32)
!31 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_engines", scope: !26, file: !6, line: 18, baseType: !34, size: 32, offset: 16)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "hexagon_dma_pool_mutex", linkageName: "_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE", scope: !2, file: !6, line: 33, type: !39, isLocal: false, isDefinition: true)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !40, line: 120, size: 32, flags: DIFlagTypePassByValue, elements: !41, identifier: "_ZTS12halide_mutex")
!40 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !39, file: !40, line: 121, baseType: !43, size: 32)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !47)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 68, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 12, baseType: !46)
!46 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !50, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !111, globals: !235, imports: !236, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!51 = !{!52, !100, !104}
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_error_code_t", file: !40, line: 990, baseType: !53, size: 32, elements: !54, identifier: "_ZTS19halide_error_code_t")
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!55 = !DIEnumerator(name: "halide_error_code_success", value: 0)
!56 = !DIEnumerator(name: "halide_error_code_generic_error", value: -1)
!57 = !DIEnumerator(name: "halide_error_code_explicit_bounds_too_small", value: -2)
!58 = !DIEnumerator(name: "halide_error_code_bad_type", value: -3)
!59 = !DIEnumerator(name: "halide_error_code_access_out_of_bounds", value: -4)
!60 = !DIEnumerator(name: "halide_error_code_buffer_allocation_too_large", value: -5)
!61 = !DIEnumerator(name: "halide_error_code_buffer_extents_too_large", value: -6)
!62 = !DIEnumerator(name: "halide_error_code_constraints_make_required_region_smaller", value: -7)
!63 = !DIEnumerator(name: "halide_error_code_constraint_violated", value: -8)
!64 = !DIEnumerator(name: "halide_error_code_param_too_small", value: -9)
!65 = !DIEnumerator(name: "halide_error_code_param_too_large", value: -10)
!66 = !DIEnumerator(name: "halide_error_code_out_of_memory", value: -11)
!67 = !DIEnumerator(name: "halide_error_code_buffer_argument_is_null", value: -12)
!68 = !DIEnumerator(name: "halide_error_code_debug_to_file_failed", value: -13)
!69 = !DIEnumerator(name: "halide_error_code_copy_to_host_failed", value: -14)
!70 = !DIEnumerator(name: "halide_error_code_copy_to_device_failed", value: -15)
!71 = !DIEnumerator(name: "halide_error_code_device_malloc_failed", value: -16)
!72 = !DIEnumerator(name: "halide_error_code_device_sync_failed", value: -17)
!73 = !DIEnumerator(name: "halide_error_code_device_free_failed", value: -18)
!74 = !DIEnumerator(name: "halide_error_code_no_device_interface", value: -19)
!75 = !DIEnumerator(name: "halide_error_code_matlab_init_failed", value: -20)
!76 = !DIEnumerator(name: "halide_error_code_matlab_bad_param_type", value: -21)
!77 = !DIEnumerator(name: "halide_error_code_internal_error", value: -22)
!78 = !DIEnumerator(name: "halide_error_code_device_run_failed", value: -23)
!79 = !DIEnumerator(name: "halide_error_code_unaligned_host_ptr", value: -24)
!80 = !DIEnumerator(name: "halide_error_code_bad_fold", value: -25)
!81 = !DIEnumerator(name: "halide_error_code_fold_factor_too_small", value: -26)
!82 = !DIEnumerator(name: "halide_error_code_requirement_failed", value: -27)
!83 = !DIEnumerator(name: "halide_error_code_buffer_extents_negative", value: -28)
!84 = !DIEnumerator(name: "halide_error_code_unused_29", value: -29)
!85 = !DIEnumerator(name: "halide_error_code_unused_30", value: -30)
!86 = !DIEnumerator(name: "halide_error_code_specialize_fail", value: -31)
!87 = !DIEnumerator(name: "halide_error_code_device_wrap_native_failed", value: -32)
!88 = !DIEnumerator(name: "halide_error_code_device_detach_native_failed", value: -33)
!89 = !DIEnumerator(name: "halide_error_code_host_is_null", value: -34)
!90 = !DIEnumerator(name: "halide_error_code_bad_extern_fold", value: -35)
!91 = !DIEnumerator(name: "halide_error_code_device_interface_no_device", value: -36)
!92 = !DIEnumerator(name: "halide_error_code_host_and_device_dirty", value: -37)
!93 = !DIEnumerator(name: "halide_error_code_buffer_is_null", value: -38)
!94 = !DIEnumerator(name: "halide_error_code_device_buffer_copy_failed", value: -39)
!95 = !DIEnumerator(name: "halide_error_code_device_crop_unsupported", value: -40)
!96 = !DIEnumerator(name: "halide_error_code_device_crop_failed", value: -41)
!97 = !DIEnumerator(name: "halide_error_code_incompatible_device_interface", value: -42)
!98 = !DIEnumerator(name: "halide_error_code_bad_dimensions", value: -43)
!99 = !DIEnumerator(name: "halide_error_code_device_dirty_with_no_device_support", value: -44)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 23, baseType: !46, size: 32, align: 32, elements: !102)
!101 = !DIFile(filename: "src/runtime/mini_hexagon_dma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!102 = !{!103}
!103 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !40, line: 403, baseType: !30, size: 8, elements: !105, identifier: "_ZTS18halide_type_code_t")
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!110 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!111 = !{!112, !113, !114, !7, !20, !120}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_DmaWrapper_DmaEngineHandle", file: !101, line: 168, baseType: !20)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !116, file: !115, line: 199, baseType: !117)
!115 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!116 = !DINamespace(scope: !3)
!117 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !116, file: !115, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !118, templateParams: !232)
!118 = !{!119, !122, !123, !124, !125, !126, !128, !132, !138, !143, !147, !152, !155, !159, !163, !168, !174, !207, !214, !217, !220, !225, !226, !229, !230, !231}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !117, file: !115, line: 32, baseType: !120, size: 32, flags: DIFlagPublic)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !117, file: !115, line: 32, baseType: !120, size: 32, offset: 32, flags: DIFlagPublic)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !117, file: !115, line: 32, baseType: !120, size: 32, offset: 64, flags: DIFlagPublic)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !117, file: !115, line: 33, baseType: !20, size: 32, offset: 96, flags: DIFlagPublic)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !117, file: !115, line: 34, baseType: !17, size: 8, offset: 128, flags: DIFlagPublic)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !117, file: !115, line: 35, baseType: !127, size: 8, offset: 136, flags: DIFlagPublic)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 8, elements: !47)
!128 = !DISubprogram(name: "Printer", scope: !117, file: !115, line: 37, type: !129, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131, !20, !120}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!132 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !117, file: !115, line: 57, type: !133, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !131, !136}
!135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !117, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!138 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !117, file: !115, line: 67, type: !139, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!135, !131, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !31, line: 9, baseType: !142)
!142 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!143 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !117, file: !115, line: 72, type: !144, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubroutineType(types: !145)
!145 = !{!135, !131, !146}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 11, baseType: !53)
!147 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !117, file: !115, line: 77, type: !148, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!135, !131, !150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 10, baseType: !151)
!151 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!152 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !117, file: !115, line: 82, type: !153, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{!135, !131, !45}
!155 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !117, file: !115, line: 87, type: !156, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubroutineType(types: !157)
!157 = !{!135, !131, !158}
!158 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!159 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !117, file: !115, line: 92, type: !160, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!135, !131, !162}
!162 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!163 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !117, file: !115, line: 97, type: !164, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{!135, !131, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !117, file: !115, line: 102, type: !169, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{!135, !131, !171}
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !31, line: 14, baseType: !173)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !117, file: !115, line: 108, type: !175, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!135, !131, !177}
!177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !40, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !180, identifier: "_ZTS13halide_type_t")
!180 = !{!181, !183, !184, !185, !189, !192, !196, !199, !200, !201, !204}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !179, file: !40, line: 434, baseType: !182, size: 8, align: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !40, line: 413, baseType: !104)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !179, file: !40, line: 442, baseType: !30, size: 8, align: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !179, file: !40, line: 446, baseType: !172, size: 16, align: 16, offset: 16)
!185 = !DISubprogram(name: "halide_type_t", scope: !179, file: !40, line: 453, type: !186, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188, !182, !30, !172}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!189 = !DISubprogram(name: "halide_type_t", scope: !179, file: !40, line: 459, type: !190, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !188}
!192 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !179, file: !40, line: 463, type: !193, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!179, !195, !172}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!196 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !179, file: !40, line: 468, type: !197, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DISubroutineType(types: !198)
!198 = !{!17, !195, !177}
!199 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !179, file: !40, line: 472, type: !197, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !179, file: !40, line: 476, type: !197, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !179, file: !40, line: 481, type: !202, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{!53, !195}
!204 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !179, file: !40, line: 485, type: !205, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{!45, !195}
!207 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !117, file: !115, line: 113, type: !208, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DISubroutineType(types: !209)
!209 = !{!135, !131, !210}
!210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !40, line: 1550, baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !40, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!214 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !117, file: !115, line: 119, type: !215, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{!136, !131}
!217 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !117, file: !115, line: 131, type: !218, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !131}
!220 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !117, file: !115, line: 139, type: !221, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{!150, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!225 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !117, file: !115, line: 143, type: !221, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !117, file: !115, line: 148, type: !227, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !131, !53}
!229 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !117, file: !115, line: 158, type: !215, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !117, file: !115, line: 162, type: !218, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubprogram(name: "~Printer", scope: !117, file: !115, line: 166, type: !218, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !{!233, !234}
!233 = !DITemplateValueParameter(name: "type", type: !53, value: i32 1)
!234 = !DITemplateValueParameter(name: "length", type: !151, value: i64 1024)
!235 = !{!0, !37}
!236 = !{!237, !238}
!237 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !49, entity: !3, file: !31, line: 225)
!238 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !49, entity: !2, file: !6, line: 40)
!239 = !{i32 7, !"Dwarf Version", i32 4}
!240 = !{i32 2, !"Debug Info Version", i32 3}
!241 = !{i32 1, !"wchar_size", i32 4}
!242 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!243 = distinct !DISubprogram(name: "halide_hexagon_free_dma_resource", scope: !6, file: !6, line: 102, type: !244, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!53, !20, !20}
!246 = !{!247, !248, !249, !250, !263, !264, !266, !269, !270, !272, !276, !281}
!247 = !DILocalVariable(name: "user_context", arg: 1, scope: !243, file: !6, line: 102, type: !20)
!248 = !DILocalVariable(name: "virtual_engine_id", arg: 2, scope: !243, file: !6, line: 102, type: !20)
!249 = !DILocalVariable(name: "nRet", scope: !243, file: !6, line: 106, type: !53)
!250 = !DILocalVariable(name: "lock", scope: !243, file: !6, line: 109, type: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !252, line: 11, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !253, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!252 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!253 = !{!254, !256, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !251, file: !252, line: 12, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!256 = !DISubprogram(name: "ScopedMutexLock", scope: !251, file: !252, line: 14, type: !257, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259, !255}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "~ScopedMutexLock", scope: !251, file: !252, line: 19, type: !261, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !259}
!263 = !DILocalVariable(name: "virtual_engine_addr", scope: !243, file: !6, line: 110, type: !112)
!264 = !DILocalVariable(name: "j", scope: !265, file: !6, line: 111, type: !53)
!265 = distinct !DILexicalBlock(scope: !243, file: !6, line: 111, column: 5)
!266 = !DILocalVariable(name: "num", scope: !267, file: !6, line: 112, type: !53)
!267 = distinct !DILexicalBlock(scope: !268, file: !6, line: 111, column: 56)
!268 = distinct !DILexicalBlock(scope: !265, file: !6, line: 111, column: 5)
!269 = !DILocalVariable(name: "delete_dma_pool", scope: !243, file: !6, line: 125, type: !17)
!270 = !DILocalVariable(name: "k", scope: !271, file: !6, line: 126, type: !53)
!271 = distinct !DILexicalBlock(scope: !243, file: !6, line: 126, column: 5)
!272 = !DILocalVariable(name: "i", scope: !273, file: !6, line: 133, type: !53)
!273 = distinct !DILexicalBlock(scope: !274, file: !6, line: 133, column: 9)
!274 = distinct !DILexicalBlock(scope: !275, file: !6, line: 132, column: 26)
!275 = distinct !DILexicalBlock(scope: !243, file: !6, line: 132, column: 9)
!276 = !DILocalVariable(name: "err", scope: !277, file: !6, line: 135, type: !53)
!277 = distinct !DILexicalBlock(scope: !278, file: !6, line: 134, column: 67)
!278 = distinct !DILexicalBlock(scope: !279, file: !6, line: 134, column: 17)
!279 = distinct !DILexicalBlock(scope: !280, file: !6, line: 133, column: 61)
!280 = distinct !DILexicalBlock(scope: !273, file: !6, line: 133, column: 9)
!281 = !DILocalVariable(name: "err", scope: !274, file: !6, line: 146, type: !53)
!282 = !DILocation(line: 0, scope: !243)
!283 = !DILocation(line: 103, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !6, line: 103, column: 5)
!285 = distinct !DILexicalBlock(scope: !243, file: !6, line: 103, column: 5)
!286 = !{!287, !287, i64 0}
!287 = !{!"any pointer", !288, i64 0}
!288 = !{!"omnipotent char", !289, i64 0}
!289 = !{!"Simple C++ TBAA"}
!290 = !DILocation(line: 103, column: 5, scope: !285)
!291 = !DILocation(line: 103, column: 5, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !6, line: 103, column: 5)
!293 = !DILocation(line: 104, column: 5, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !6, line: 104, column: 5)
!295 = distinct !DILexicalBlock(scope: !243, file: !6, line: 104, column: 5)
!296 = !DILocation(line: 104, column: 5, scope: !295)
!297 = !DILocation(line: 104, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !6, line: 104, column: 5)
!299 = !DILocalVariable(name: "this", arg: 1, scope: !300, type: !303, flags: DIFlagArtificial | DIFlagObjectPointer)
!300 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !251, file: !252, line: 14, type: !257, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !256, retainedNodes: !301)
!301 = !{!299, !302}
!302 = !DILocalVariable(name: "mutex", arg: 2, scope: !300, file: !252, line: 14, type: !255)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!304 = !DILocation(line: 0, scope: !300, inlinedAt: !305)
!305 = distinct !DILocation(line: 109, column: 21, scope: !243)
!306 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !305)
!307 = distinct !DILexicalBlock(scope: !300, file: !252, line: 15, column: 24)
!308 = !DILocation(line: 0, scope: !265)
!309 = !DILocation(line: 112, column: 19, scope: !267)
!310 = !{!288, !288, i64 0}
!311 = !DILocation(line: 112, column: 58, scope: !267)
!312 = !DILocation(line: 0, scope: !267)
!313 = !DILocation(line: 113, column: 17, scope: !314)
!314 = distinct !DILexicalBlock(scope: !267, file: !6, line: 113, column: 13)
!315 = !DILocation(line: 113, column: 13, scope: !267)
!316 = !DILocation(line: 114, column: 13, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !6, line: 113, column: 24)
!318 = !DILocation(line: 114, column: 52, scope: !317)
!319 = !DILocation(line: 114, column: 61, scope: !317)
!320 = !{!321, !322, i64 1}
!321 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma20hexagon_dma_engine_tE", !322, i64 0, !322, i64 1, !287, i64 4}
!322 = !{!"bool", !288, i64 0}
!323 = !DILocation(line: 115, column: 52, scope: !317)
!324 = !DILocation(line: 115, column: 57, scope: !317)
!325 = !{!321, !322, i64 0}
!326 = !DILocation(line: 116, column: 56, scope: !327)
!327 = distinct !DILexicalBlock(scope: !317, file: !6, line: 116, column: 17)
!328 = !{!321, !287, i64 4}
!329 = !DILocation(line: 116, column: 17, scope: !327)
!330 = !DILocation(line: 116, column: 17, scope: !317)
!331 = !DILocation(line: 117, column: 17, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !6, line: 116, column: 69)
!333 = !DILocation(line: 118, column: 13, scope: !332)
!334 = !DILocation(line: 120, column: 48, scope: !267)
!335 = !DILocation(line: 142, column: 14, scope: !274)
!336 = !DILocation(line: 142, column: 9, scope: !274)
!337 = !DILocation(line: 143, column: 26, scope: !274)
!338 = !DILocation(line: 146, column: 19, scope: !274)
!339 = !DILocation(line: 0, scope: !274)
!340 = !DILocation(line: 147, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !274, file: !6, line: 147, column: 13)
!342 = !DILocation(line: 147, column: 13, scope: !274)
!343 = !DILocation(line: 134, column: 17, scope: !278)
!344 = !DILocation(line: 0, scope: !273)
!345 = !DILocation(line: 134, column: 54, scope: !278)
!346 = !DILocation(line: 134, column: 17, scope: !279)
!347 = !DILocation(line: 135, column: 27, scope: !277)
!348 = !DILocation(line: 0, scope: !277)
!349 = !DILocation(line: 136, column: 25, scope: !350)
!350 = distinct !DILexicalBlock(scope: !277, file: !6, line: 136, column: 21)
!351 = !DILocation(line: 136, column: 21, scope: !277)
!352 = !DILocalVariable(name: "this", arg: 1, scope: !353, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!353 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !117, file: !115, line: 37, type: !129, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !128, retainedNodes: !354)
!354 = !{!352, !355, !356}
!355 = !DILocalVariable(name: "ctx", arg: 2, scope: !353, file: !115, line: 37, type: !20)
!356 = !DILocalVariable(name: "mem", arg: 3, scope: !353, file: !115, line: 37, type: !120)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!358 = !DILocation(line: 0, scope: !353, inlinedAt: !359)
!359 = distinct !DILocation(line: 137, column: 21, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !6, line: 136, column: 38)
!361 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !359)
!362 = distinct !DILexicalBlock(scope: !363, file: !115, line: 43, column: 16)
!363 = distinct !DILexicalBlock(scope: !364, file: !115, line: 41, column: 20)
!364 = distinct !DILexicalBlock(scope: !365, file: !115, line: 39, column: 13)
!365 = distinct !DILexicalBlock(scope: !353, file: !115, line: 38, column: 54)
!366 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !359)
!367 = distinct !DILexicalBlock(scope: !365, file: !115, line: 48, column: 13)
!368 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !359)
!369 = !DILocalVariable(name: "this", arg: 1, scope: !370, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!370 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !117, file: !115, line: 57, type: !133, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !132, retainedNodes: !371)
!371 = !{!369, !372}
!372 = !DILocalVariable(name: "arg", arg: 2, scope: !370, file: !115, line: 57, type: !136)
!373 = !DILocation(line: 0, scope: !370, inlinedAt: !374)
!374 = distinct !DILocation(line: 137, column: 41, scope: !360)
!375 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !374)
!376 = distinct !DILexicalBlock(scope: !377, file: !115, line: 61, column: 16)
!377 = distinct !DILexicalBlock(scope: !370, file: !115, line: 59, column: 13)
!378 = !DILocalVariable(name: "this", arg: 1, scope: !379, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!379 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !117, file: !115, line: 166, type: !218, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !231, retainedNodes: !380)
!380 = !{!378}
!381 = !DILocation(line: 0, scope: !379, inlinedAt: !382)
!382 = distinct !DILocation(line: 137, column: 21, scope: !360)
!383 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !382)
!384 = distinct !DILexicalBlock(scope: !385, file: !115, line: 167, column: 19)
!385 = distinct !DILexicalBlock(scope: !386, file: !115, line: 167, column: 13)
!386 = distinct !DILexicalBlock(scope: !379, file: !115, line: 166, column: 16)
!387 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !382)
!388 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !359)
!389 = distinct !DILexicalBlock(scope: !367, file: !115, line: 48, column: 18)
!390 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !359)
!391 = !DILocalVariable(name: "this", arg: 1, scope: !392, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!392 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !117, file: !115, line: 162, type: !218, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !230, retainedNodes: !393)
!393 = !{!391}
!394 = !DILocation(line: 0, scope: !392, inlinedAt: !395)
!395 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !382)
!396 = distinct !DILexicalBlock(scope: !385, file: !115, line: 169, column: 16)
!397 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !395)
!398 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !395)
!399 = !DILocation(line: 163, column: 77, scope: !392, inlinedAt: !395)
!400 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !395)
!401 = !DILocation(line: 172, column: 17, scope: !402, inlinedAt: !382)
!402 = distinct !DILexicalBlock(scope: !403, file: !115, line: 171, column: 39)
!403 = distinct !DILexicalBlock(scope: !396, file: !115, line: 171, column: 17)
!404 = !DILocation(line: 181, column: 13, scope: !405, inlinedAt: !382)
!405 = distinct !DILexicalBlock(scope: !406, file: !115, line: 180, column: 40)
!406 = distinct !DILexicalBlock(scope: !386, file: !115, line: 180, column: 13)
!407 = !DILocation(line: 139, column: 17, scope: !360)
!408 = !DILocation(line: 133, column: 27, scope: !280)
!409 = !DILocation(line: 133, column: 9, scope: !273)
!410 = distinct !{!410, !409, !411, !412}
!411 = !DILocation(line: 141, column: 9, scope: !273)
!412 = !{!"llvm.loop.mustprogress"}
!413 = !DILocation(line: 133, column: 57, scope: !280)
!414 = !DILocation(line: 0, scope: !353, inlinedAt: !415)
!415 = distinct !DILocation(line: 148, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !341, file: !6, line: 147, column: 23)
!417 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !415)
!418 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !415)
!419 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !415)
!420 = !DILocation(line: 0, scope: !370, inlinedAt: !421)
!421 = distinct !DILocation(line: 148, column: 33, scope: !416)
!422 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !421)
!423 = !DILocation(line: 0, scope: !379, inlinedAt: !424)
!424 = distinct !DILocation(line: 148, column: 13, scope: !416)
!425 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !424)
!426 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !424)
!427 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !415)
!428 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !415)
!429 = !DILocation(line: 0, scope: !392, inlinedAt: !430)
!430 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !424)
!431 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !430)
!432 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !430)
!433 = !DILocation(line: 163, column: 77, scope: !392, inlinedAt: !430)
!434 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !430)
!435 = !DILocation(line: 172, column: 17, scope: !402, inlinedAt: !424)
!436 = !DILocation(line: 181, column: 13, scope: !405, inlinedAt: !424)
!437 = !DILocation(line: 150, column: 9, scope: !416)
!438 = !DILocalVariable(name: "this", arg: 1, scope: !439, type: !303, flags: DIFlagArtificial | DIFlagObjectPointer)
!439 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !251, file: !252, line: 19, type: !261, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !260, retainedNodes: !440)
!440 = !{!438}
!441 = !DILocation(line: 0, scope: !439, inlinedAt: !442)
!442 = distinct !DILocation(line: 153, column: 1, scope: !243)
!443 = !DILocation(line: 20, column: 9, scope: !444, inlinedAt: !442)
!444 = distinct !DILexicalBlock(scope: !439, file: !252, line: 19, column: 38)
!445 = !DILocation(line: 153, column: 1, scope: !243)
!446 = !DILocation(line: 122, column: 26, scope: !243)
!447 = !DILocation(line: 122, column: 41, scope: !243)
!448 = !{!449, !288, i64 1}
!449 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_virtual_engine_tE", !322, i64 0, !288, i64 1, !288, i64 2}
!450 = !DILocation(line: 123, column: 33, scope: !243)
!451 = !{!449, !322, i64 0}
!452 = !DILocation(line: 0, scope: !271)
!453 = !DILocation(line: 127, column: 54, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !6, line: 127, column: 13)
!455 = distinct !DILexicalBlock(scope: !456, file: !6, line: 126, column: 57)
!456 = distinct !DILexicalBlock(scope: !271, file: !6, line: 126, column: 5)
!457 = !{i8 0, i8 2}
!458 = !DILocation(line: 127, column: 13, scope: !455)
!459 = !DILocation(line: 132, column: 9, scope: !243)
!460 = !DISubprogram(name: "halide_print", scope: !40, file: !40, line: 97, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !20, !136}
!463 = !{}
!464 = !DISubprogram(name: "abort", scope: !31, file: !31, line: 108, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!465 = !DISubroutineType(types: !466)
!466 = !{null}
!467 = !DISubprogram(name: "nDmaWrapper_FinishFrame", scope: !101, file: !101, line: 230, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!468 = !DISubroutineType(types: !469)
!469 = !{!53, !20}
!470 = !DISubprogram(name: "nDmaWrapper_FreeDma", scope: !101, file: !101, line: 190, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!471 = !DISubprogram(name: "free", scope: !31, file: !31, line: 86, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !20}
!474 = !DISubprogram(name: "halide_hexagon_free_l2_pool", scope: !475, file: !475, line: 28, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!475 = !DIFile(filename: "src/runtime/hexagon_dma_pool.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!476 = distinct !DISubprogram(name: "halide_hexagon_allocate_dma_resource", scope: !6, file: !6, line: 156, type: !477, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!20, !20}
!479 = !{!480, !481, !482, !486, !490, !492}
!480 = !DILocalVariable(name: "user_context", arg: 1, scope: !476, file: !6, line: 156, type: !20)
!481 = !DILocalVariable(name: "lock", scope: !476, file: !6, line: 157, type: !251)
!482 = !DILocalVariable(name: "i", scope: !483, file: !6, line: 161, type: !53)
!483 = distinct !DILexicalBlock(scope: !484, file: !6, line: 161, column: 9)
!484 = distinct !DILexicalBlock(scope: !485, file: !6, line: 159, column: 28)
!485 = distinct !DILexicalBlock(scope: !476, file: !6, line: 159, column: 9)
!486 = !DILocalVariable(name: "j", scope: !487, file: !6, line: 166, type: !53)
!487 = distinct !DILexicalBlock(scope: !488, file: !6, line: 166, column: 13)
!488 = distinct !DILexicalBlock(scope: !489, file: !6, line: 161, column: 61)
!489 = distinct !DILexicalBlock(scope: !483, file: !6, line: 161, column: 9)
!490 = !DILocalVariable(name: "i", scope: !491, file: !6, line: 173, type: !53)
!491 = distinct !DILexicalBlock(scope: !476, file: !6, line: 173, column: 5)
!492 = !DILocalVariable(name: "virtual_addr", scope: !493, file: !6, line: 176, type: !20)
!493 = distinct !DILexicalBlock(scope: !494, file: !6, line: 174, column: 71)
!494 = distinct !DILexicalBlock(scope: !495, file: !6, line: 174, column: 13)
!495 = distinct !DILexicalBlock(scope: !496, file: !6, line: 173, column: 57)
!496 = distinct !DILexicalBlock(scope: !491, file: !6, line: 173, column: 5)
!497 = !DILocation(line: 0, scope: !476)
!498 = !DILocation(line: 0, scope: !300, inlinedAt: !499)
!499 = distinct !DILocation(line: 157, column: 21, scope: !476)
!500 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !499)
!501 = !DILocation(line: 159, column: 10, scope: !485)
!502 = !DILocation(line: 159, column: 9, scope: !476)
!503 = !DILocation(line: 160, column: 50, scope: !484)
!504 = !DILocation(line: 160, column: 26, scope: !484)
!505 = !DILocation(line: 0, scope: !483)
!506 = !DILocation(line: 162, column: 55, scope: !488)
!507 = !DILocation(line: 163, column: 50, scope: !488)
!508 = !DILocation(line: 163, column: 62, scope: !488)
!509 = !DILocation(line: 164, column: 50, scope: !488)
!510 = !DILocation(line: 164, column: 59, scope: !488)
!511 = !DILocation(line: 165, column: 54, scope: !488)
!512 = !DILocation(line: 165, column: 61, scope: !488)
!513 = !DILocation(line: 0, scope: !487)
!514 = !DILocation(line: 167, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !6, line: 166, column: 64)
!516 = distinct !DILexicalBlock(scope: !487, file: !6, line: 166, column: 13)
!517 = !DILocation(line: 167, column: 76, scope: !515)
!518 = !DILocation(line: 169, column: 54, scope: !488)
!519 = !DILocation(line: 169, column: 69, scope: !488)
!520 = !DILocation(line: 162, column: 50, scope: !488)
!521 = !DILocation(line: 162, column: 13, scope: !488)
!522 = !DILocation(line: 0, scope: !491)
!523 = !DILocation(line: 174, column: 54, scope: !494)
!524 = !DILocation(line: 174, column: 61, scope: !494)
!525 = !DILocation(line: 174, column: 13, scope: !495)
!526 = !DILocation(line: 175, column: 61, scope: !493)
!527 = !DILocation(line: 0, scope: !493)
!528 = !DILocation(line: 0, scope: !370, inlinedAt: !529)
!529 = distinct !DILocation(line: 181, column: 25, scope: !476)
!530 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !529)
!531 = !DILocation(line: 0, scope: !379, inlinedAt: !532)
!532 = distinct !DILocation(line: 181, column: 5, scope: !476)
!533 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !532)
!534 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !532)
!535 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !536)
!536 = distinct !DILocation(line: 181, column: 5, scope: !476)
!537 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !536)
!538 = !DILocation(line: 0, scope: !392, inlinedAt: !539)
!539 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !532)
!540 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !539)
!541 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !539)
!542 = !DILocation(line: 163, column: 77, scope: !392, inlinedAt: !539)
!543 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !539)
!544 = !DILocation(line: 172, column: 17, scope: !402, inlinedAt: !532)
!545 = !DILocation(line: 181, column: 13, scope: !405, inlinedAt: !532)
!546 = !DILocation(line: 182, column: 5, scope: !476)
!547 = !DILocation(line: 0, scope: !439, inlinedAt: !548)
!548 = distinct !DILocation(line: 183, column: 1, scope: !476)
!549 = !DILocation(line: 20, column: 9, scope: !444, inlinedAt: !548)
!550 = !DILocation(line: 183, column: 1, scope: !476)
!551 = !DILocation(line: 0, scope: !353, inlinedAt: !536)
!552 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !536)
!553 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !536)
!554 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !536)
!555 = !DISubprogram(name: "malloc", scope: !31, file: !31, line: 87, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!556 = !DISubroutineType(types: !557)
!557 = !{!20, !46}
!558 = distinct !DISubprogram(name: "halide_hexagon_allocate_from_dma_pool", scope: !6, file: !6, line: 185, type: !559, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{!20, !20, !20}
!561 = !{!562, !563}
!562 = !DILocalVariable(name: "user_context", arg: 1, scope: !558, file: !6, line: 185, type: !20)
!563 = !DILocalVariable(name: "virtual_engine_id", arg: 2, scope: !558, file: !6, line: 185, type: !20)
!564 = !DILocation(line: 0, scope: !558)
!565 = !DILocalVariable(name: "user_context", arg: 1, scope: !566, file: !6, line: 45, type: !20)
!566 = distinct !DISubprogram(name: "hexagon_dma_pool_get", linkageName: "_ZN12_GLOBAL__N_120hexagon_dma_pool_getEPvS0_", scope: !567, file: !6, line: 45, type: !559, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !568)
!567 = !DINamespace(scope: null)
!568 = !{!565, !569, !570, !571, !572, !574, !577}
!569 = !DILocalVariable(name: "virtual_engine_id", arg: 2, scope: !566, file: !6, line: 45, type: !20)
!570 = !DILocalVariable(name: "lock", scope: !566, file: !6, line: 48, type: !251)
!571 = !DILocalVariable(name: "virtual_engine_addr", scope: !566, file: !6, line: 50, type: !112)
!572 = !DILocalVariable(name: "j", scope: !573, file: !6, line: 52, type: !53)
!573 = distinct !DILexicalBlock(scope: !566, file: !6, line: 52, column: 5)
!574 = !DILocalVariable(name: "dma_id", scope: !575, file: !6, line: 53, type: !53)
!575 = distinct !DILexicalBlock(scope: !576, file: !6, line: 52, column: 67)
!576 = distinct !DILexicalBlock(scope: !573, file: !6, line: 52, column: 5)
!577 = !DILocalVariable(name: "j", scope: !578, file: !6, line: 63, type: !53)
!578 = distinct !DILexicalBlock(scope: !579, file: !6, line: 63, column: 9)
!579 = distinct !DILexicalBlock(scope: !580, file: !6, line: 62, column: 73)
!580 = distinct !DILexicalBlock(scope: !566, file: !6, line: 62, column: 9)
!581 = !DILocation(line: 0, scope: !566, inlinedAt: !582)
!582 = distinct !DILocation(line: 186, column: 12, scope: !558)
!583 = !DILocation(line: 46, column: 5, scope: !584, inlinedAt: !582)
!584 = distinct !DILexicalBlock(scope: !585, file: !6, line: 46, column: 5)
!585 = distinct !DILexicalBlock(scope: !566, file: !6, line: 46, column: 5)
!586 = !DILocation(line: 46, column: 5, scope: !585, inlinedAt: !582)
!587 = !DILocation(line: 46, column: 5, scope: !588, inlinedAt: !582)
!588 = distinct !DILexicalBlock(scope: !584, file: !6, line: 46, column: 5)
!589 = !DILocation(line: 47, column: 5, scope: !590, inlinedAt: !582)
!590 = distinct !DILexicalBlock(scope: !591, file: !6, line: 47, column: 5)
!591 = distinct !DILexicalBlock(scope: !566, file: !6, line: 47, column: 5)
!592 = !DILocation(line: 47, column: 5, scope: !591, inlinedAt: !582)
!593 = !DILocation(line: 47, column: 5, scope: !594, inlinedAt: !582)
!594 = distinct !DILexicalBlock(scope: !590, file: !6, line: 47, column: 5)
!595 = !DILocation(line: 0, scope: !300, inlinedAt: !596)
!596 = distinct !DILocation(line: 48, column: 21, scope: !566, inlinedAt: !582)
!597 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !596)
!598 = !DILocation(line: 0, scope: !573, inlinedAt: !582)
!599 = !DILocation(line: 52, column: 46, scope: !576, inlinedAt: !582)
!600 = !DILocation(line: 52, column: 25, scope: !576, inlinedAt: !582)
!601 = !DILocation(line: 52, column: 23, scope: !576, inlinedAt: !582)
!602 = !DILocation(line: 52, column: 5, scope: !573, inlinedAt: !582)
!603 = !DILocation(line: 53, column: 22, scope: !575, inlinedAt: !582)
!604 = !DILocation(line: 53, column: 61, scope: !575, inlinedAt: !582)
!605 = !DILocation(line: 0, scope: !575, inlinedAt: !582)
!606 = !DILocation(line: 54, column: 21, scope: !607, inlinedAt: !582)
!607 = distinct !DILexicalBlock(scope: !575, file: !6, line: 54, column: 13)
!608 = !DILocation(line: 54, column: 28, scope: !607, inlinedAt: !582)
!609 = !DILocation(line: 54, column: 74, scope: !607, inlinedAt: !582)
!610 = !DILocation(line: 54, column: 79, scope: !607, inlinedAt: !582)
!611 = !DILocation(line: 54, column: 13, scope: !575, inlinedAt: !582)
!612 = !DILocation(line: 55, column: 60, scope: !613, inlinedAt: !582)
!613 = distinct !DILexicalBlock(scope: !607, file: !6, line: 54, column: 90)
!614 = !DILocation(line: 56, column: 62, scope: !613, inlinedAt: !582)
!615 = !DILocation(line: 52, column: 63, scope: !576, inlinedAt: !582)
!616 = distinct !{!616, !602, !617, !412}
!617 = !DILocation(line: 58, column: 5, scope: !573, inlinedAt: !582)
!618 = !DILocation(line: 62, column: 45, scope: !580, inlinedAt: !582)
!619 = !DILocation(line: 62, column: 9, scope: !566, inlinedAt: !582)
!620 = !DILocation(line: 0, scope: !578, inlinedAt: !582)
!621 = !DILocation(line: 64, column: 54, scope: !622, inlinedAt: !582)
!622 = distinct !DILexicalBlock(scope: !623, file: !6, line: 64, column: 17)
!623 = distinct !DILexicalBlock(scope: !624, file: !6, line: 63, column: 61)
!624 = distinct !DILexicalBlock(scope: !578, file: !6, line: 63, column: 9)
!625 = !DILocation(line: 64, column: 63, scope: !622, inlinedAt: !582)
!626 = !DILocation(line: 64, column: 17, scope: !623, inlinedAt: !582)
!627 = !DILocation(line: 65, column: 63, scope: !628, inlinedAt: !582)
!628 = distinct !DILexicalBlock(scope: !622, file: !6, line: 64, column: 73)
!629 = !DILocation(line: 66, column: 92, scope: !628, inlinedAt: !582)
!630 = !DILocation(line: 66, column: 38, scope: !628, inlinedAt: !582)
!631 = !DILocation(line: 66, column: 17, scope: !628, inlinedAt: !582)
!632 = !DILocation(line: 66, column: 90, scope: !628, inlinedAt: !582)
!633 = !DILocation(line: 67, column: 22, scope: !634, inlinedAt: !582)
!634 = distinct !DILexicalBlock(scope: !628, file: !6, line: 67, column: 21)
!635 = !DILocation(line: 67, column: 59, scope: !634, inlinedAt: !582)
!636 = !DILocation(line: 67, column: 21, scope: !628, inlinedAt: !582)
!637 = !DILocation(line: 68, column: 80, scope: !638, inlinedAt: !582)
!638 = distinct !DILexicalBlock(scope: !634, file: !6, line: 67, column: 72)
!639 = !DILocation(line: 68, column: 21, scope: !638, inlinedAt: !582)
!640 = !DILocation(line: 68, column: 58, scope: !638, inlinedAt: !582)
!641 = !DILocation(line: 68, column: 70, scope: !638, inlinedAt: !582)
!642 = !DILocation(line: 69, column: 21, scope: !643, inlinedAt: !582)
!643 = distinct !DILexicalBlock(scope: !644, file: !6, line: 69, column: 21)
!644 = distinct !DILexicalBlock(scope: !638, file: !6, line: 69, column: 21)
!645 = !DILocation(line: 69, column: 21, scope: !644, inlinedAt: !582)
!646 = !DILocation(line: 69, column: 21, scope: !647, inlinedAt: !582)
!647 = distinct !DILexicalBlock(scope: !643, file: !6, line: 69, column: 21)
!648 = !DILocation(line: 72, column: 24, scope: !628, inlinedAt: !582)
!649 = !DILocation(line: 72, column: 61, scope: !628, inlinedAt: !582)
!650 = !DILocation(line: 71, column: 52, scope: !628, inlinedAt: !582)
!651 = !DILocation(line: 0, scope: !353, inlinedAt: !652)
!652 = distinct !DILocation(line: 76, column: 5, scope: !566, inlinedAt: !582)
!653 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !652)
!654 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !652)
!655 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !652)
!656 = !DILocation(line: 0, scope: !370, inlinedAt: !657)
!657 = distinct !DILocation(line: 76, column: 25, scope: !566, inlinedAt: !582)
!658 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !657)
!659 = !DILocation(line: 0, scope: !379, inlinedAt: !660)
!660 = distinct !DILocation(line: 76, column: 5, scope: !566, inlinedAt: !582)
!661 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !660)
!662 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !660)
!663 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !652)
!664 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !652)
!665 = !DILocation(line: 0, scope: !392, inlinedAt: !666)
!666 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !660)
!667 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !666)
!668 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !666)
!669 = !DILocation(line: 163, column: 77, scope: !392, inlinedAt: !666)
!670 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !666)
!671 = !DILocation(line: 172, column: 17, scope: !402, inlinedAt: !660)
!672 = !DILocation(line: 181, column: 13, scope: !405, inlinedAt: !660)
!673 = !DILocation(line: 77, column: 5, scope: !566, inlinedAt: !582)
!674 = !DILocation(line: 0, scope: !439, inlinedAt: !675)
!675 = distinct !DILocation(line: 78, column: 1, scope: !566, inlinedAt: !582)
!676 = !DILocation(line: 20, column: 9, scope: !444, inlinedAt: !675)
!677 = !DILocation(line: 186, column: 5, scope: !558)
!678 = distinct !DISubprogram(name: "halide_hexagon_free_to_dma_pool", scope: !6, file: !6, line: 189, type: !679, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{!53, !20, !20, !20}
!681 = !{!682, !683, !684}
!682 = !DILocalVariable(name: "user_context", arg: 1, scope: !678, file: !6, line: 189, type: !20)
!683 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !678, file: !6, line: 189, type: !20)
!684 = !DILocalVariable(name: "virtual_engine_id", arg: 3, scope: !678, file: !6, line: 189, type: !20)
!685 = !DILocation(line: 0, scope: !678)
!686 = !DILocalVariable(name: "user_context", arg: 1, scope: !687, file: !6, line: 81, type: !20)
!687 = distinct !DISubprogram(name: "hexagon_dma_pool_put", linkageName: "_ZN12_GLOBAL__N_120hexagon_dma_pool_putEPvS0_S0_", scope: !567, file: !6, line: 81, type: !679, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !688)
!688 = !{!686, !689, !690, !691, !692, !693, !695}
!689 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !687, file: !6, line: 81, type: !20)
!690 = !DILocalVariable(name: "virtual_engine_id", arg: 3, scope: !687, file: !6, line: 81, type: !20)
!691 = !DILocalVariable(name: "lock", scope: !687, file: !6, line: 83, type: !251)
!692 = !DILocalVariable(name: "virtual_engine_addr", scope: !687, file: !6, line: 85, type: !112)
!693 = !DILocalVariable(name: "j", scope: !694, file: !6, line: 86, type: !53)
!694 = distinct !DILexicalBlock(scope: !687, file: !6, line: 86, column: 5)
!695 = !DILocalVariable(name: "dma_id", scope: !696, file: !6, line: 87, type: !53)
!696 = distinct !DILexicalBlock(scope: !697, file: !6, line: 86, column: 67)
!697 = distinct !DILexicalBlock(scope: !694, file: !6, line: 86, column: 5)
!698 = !DILocation(line: 0, scope: !687, inlinedAt: !699)
!699 = distinct !DILocation(line: 190, column: 12, scope: !678)
!700 = !DILocation(line: 82, column: 5, scope: !701, inlinedAt: !699)
!701 = distinct !DILexicalBlock(scope: !702, file: !6, line: 82, column: 5)
!702 = distinct !DILexicalBlock(scope: !687, file: !6, line: 82, column: 5)
!703 = !DILocation(line: 82, column: 5, scope: !702, inlinedAt: !699)
!704 = !DILocation(line: 82, column: 5, scope: !705, inlinedAt: !699)
!705 = distinct !DILexicalBlock(scope: !701, file: !6, line: 82, column: 5)
!706 = !DILocation(line: 0, scope: !300, inlinedAt: !707)
!707 = distinct !DILocation(line: 83, column: 21, scope: !687, inlinedAt: !699)
!708 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !707)
!709 = !DILocation(line: 0, scope: !694, inlinedAt: !699)
!710 = !DILocation(line: 86, column: 46, scope: !697, inlinedAt: !699)
!711 = !DILocation(line: 86, column: 23, scope: !697, inlinedAt: !699)
!712 = !DILocation(line: 86, column: 5, scope: !694, inlinedAt: !699)
!713 = !DILocation(line: 87, column: 22, scope: !696, inlinedAt: !699)
!714 = !DILocation(line: 0, scope: !696, inlinedAt: !699)
!715 = !DILocation(line: 88, column: 21, scope: !716, inlinedAt: !699)
!716 = distinct !DILexicalBlock(scope: !696, file: !6, line: 88, column: 13)
!717 = !DILocation(line: 88, column: 28, scope: !716, inlinedAt: !699)
!718 = !DILocation(line: 87, column: 61, scope: !696, inlinedAt: !699)
!719 = !DILocation(line: 88, column: 74, scope: !716, inlinedAt: !699)
!720 = !DILocation(line: 88, column: 86, scope: !716, inlinedAt: !699)
!721 = !DILocation(line: 88, column: 13, scope: !696, inlinedAt: !699)
!722 = !DILocation(line: 89, column: 55, scope: !723, inlinedAt: !699)
!723 = distinct !DILexicalBlock(scope: !716, file: !6, line: 88, column: 102)
!724 = !DILocation(line: 89, column: 60, scope: !723, inlinedAt: !699)
!725 = !DILocation(line: 86, column: 63, scope: !697, inlinedAt: !699)
!726 = distinct !{!726, !712, !727, !412}
!727 = !DILocation(line: 92, column: 5, scope: !694, inlinedAt: !699)
!728 = !DILocation(line: 0, scope: !353, inlinedAt: !729)
!729 = distinct !DILocation(line: 93, column: 5, scope: !687, inlinedAt: !699)
!730 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !729)
!731 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !729)
!732 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !729)
!733 = !DILocation(line: 0, scope: !370, inlinedAt: !734)
!734 = distinct !DILocation(line: 93, column: 25, scope: !687, inlinedAt: !699)
!735 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !734)
!736 = !DILocation(line: 0, scope: !379, inlinedAt: !737)
!737 = distinct !DILocation(line: 93, column: 5, scope: !687, inlinedAt: !699)
!738 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !737)
!739 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !737)
!740 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !729)
!741 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !729)
!742 = !DILocation(line: 0, scope: !392, inlinedAt: !743)
!743 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !737)
!744 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !743)
!745 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !743)
!746 = !DILocation(line: 163, column: 77, scope: !392, inlinedAt: !743)
!747 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !743)
!748 = !DILocation(line: 172, column: 17, scope: !402, inlinedAt: !737)
!749 = !DILocation(line: 181, column: 13, scope: !405, inlinedAt: !737)
!750 = !DILocation(line: 94, column: 5, scope: !687, inlinedAt: !699)
!751 = !DILocation(line: 0, scope: !439, inlinedAt: !752)
!752 = distinct !DILocation(line: 95, column: 1, scope: !687, inlinedAt: !699)
!753 = !DILocation(line: 20, column: 9, scope: !444, inlinedAt: !752)
!754 = !DILocation(line: 190, column: 5, scope: !678)
!755 = !DISubprogram(name: "halide_mutex_lock", scope: !40, file: !40, line: 133, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !255}
!758 = !DISubprogram(name: "halide_mutex_unlock", scope: !40, file: !40, line: 134, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!759 = !DISubprogram(name: "hDmaWrapper_AllocDma", scope: !101, file: !101, line: 178, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!760 = !DISubroutineType(types: !761)
!761 = !{!20}
!762 = !DISubprogram(name: "halide_error", scope: !40, file: !40, line: 111, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!763 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !40, file: !40, line: 973, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!764 = !DISubroutineType(types: !765)
!765 = !{!53, !20, !166, !151}
!766 = !DISubprogram(name: "halide_string_to_string", scope: !31, file: !31, line: 120, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !463)
!767 = !DISubroutineType(types: !768)
!768 = !{!120, !120, !120, !136}
