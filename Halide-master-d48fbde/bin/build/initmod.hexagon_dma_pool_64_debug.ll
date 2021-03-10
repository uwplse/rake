; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t" = type { [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t"], [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t"] }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t" = type { i8, i8, i8* }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t" = type { i8, i8, [4 x i8] }
%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE = weak dso_local local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !37
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
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !283, !tbaa !286
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null, !dbg !283
  br i1 %4, label %5, label %6, !dbg !290

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0)) #3, !dbg !291
  tail call void @abort() #3, !dbg !291
  br label %6, !dbg !291

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null, !dbg !293
  br i1 %7, label %8, label %9, !dbg !296

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !297
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
  %10 = getelementptr inbounds i8, i8* %1, i64 2
  call void @llvm.dbg.value(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !308
  %11 = load i8, i8* %10, align 1, !dbg !309, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %11, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %12 = icmp eq i8 %11, 0, !dbg !312
  br i1 %12, label %24, label %13, !dbg !314

13:                                               ; preds = %9
  %14 = zext i8 %11 to i64, !dbg !309
  call void @llvm.dbg.value(metadata i8 %11, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %15 = add nsw i64 %14, -1, !dbg !315
  call void @llvm.dbg.value(metadata i8 %11, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %16 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !316, !tbaa !286
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i64 0, i32 0, i64 %15, i32 1, !dbg !318
  store i8 0, i8* %17, align 1, !dbg !319, !tbaa !320
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i64 0, i32 0, i64 %15, i32 0, !dbg !323
  store i8 0, i8* %18, align 8, !dbg !324, !tbaa !325
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i64 0, i32 0, i64 %15, i32 2, !dbg !326
  %20 = load i8*, i8** %19, align 8, !dbg !326, !tbaa !328
  %21 = icmp eq i8* %20, null, !dbg !329
  br i1 %21, label %24, label %22, !dbg !330

22:                                               ; preds = %13
  %23 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %20) #3, !dbg !331
  br label %24, !dbg !333

24:                                               ; preds = %13, %22, %9
  store i8 0, i8* %10, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !308
  %25 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !309
  %26 = load i8, i8* %25, align 1, !dbg !309, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %26, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %27 = icmp eq i8 %26, 0, !dbg !312
  br i1 %27, label %89, label %78, !dbg !314

28:                                               ; preds = %56
  %29 = load i8*, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 8, !dbg !335, !tbaa !286
  tail call void @free(i8* %29) #3, !dbg !336
  store %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !337, !tbaa !286
  %30 = tail call i32 @halide_hexagon_free_l2_pool(i8* %0) #3, !dbg !338
  call void @llvm.dbg.value(metadata i32 %30, metadata !281, metadata !DIExpression()), !dbg !339
  %31 = icmp eq i32 %30, 0, !dbg !340
  br i1 %31, label %76, label %62, !dbg !342

32:                                               ; preds = %119, %60
  %33 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %61, %60 ], [ %121, %119 ], !dbg !343
  %34 = phi i64 [ %58, %60 ], [ 0, %119 ]
  %35 = phi i32 [ %57, %60 ], [ 0, %119 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !249, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 %34, metadata !272, metadata !DIExpression()), !dbg !344
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %33, i64 0, i32 0, i64 %34, i32 2, !dbg !345
  %37 = load i8*, i8** %36, align 8, !dbg !345, !tbaa !328
  %38 = icmp eq i8* %37, null, !dbg !343
  br i1 %38, label %56, label %39, !dbg !346

39:                                               ; preds = %32
  %40 = tail call i32 @nDmaWrapper_FreeDma(i8* nonnull %37) #3, !dbg !347
  call void @llvm.dbg.value(metadata i32 %40, metadata !276, metadata !DIExpression()), !dbg !348
  %41 = icmp eq i32 %40, 0, !dbg !349
  br i1 %41, label %56, label %42, !dbg !351

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !358
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !358
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !358
  %43 = tail call i8* @malloc(i64 1024) #3, !dbg !361
  %44 = icmp eq i8* %43, null, !dbg !366
  br i1 %44, label %45, label %47, !dbg !368

45:                                               ; preds = %42
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !373
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !373
  %46 = tail call i8* @halide_string_to_string(i8* %43, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !381
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #3, !dbg !383
  br label %55, !dbg !387

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, i8* %43, i64 1023, !dbg !388
  store i8 0, i8* %48, align 1, !dbg !390, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !373
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !373
  %49 = tail call i8* @halide_string_to_string(i8* nonnull %43, i8* nonnull %48, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !394
  %50 = ptrtoint i8* %49 to i64, !dbg !397
  %51 = ptrtoint i8* %43 to i64, !dbg !397
  %52 = add i64 %50, 1, !dbg !397
  %53 = sub i64 %52, %51, !dbg !398
  %54 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %43, i64 %53) #3, !dbg !399
  tail call void @halide_error(i8* %0, i8* nonnull %43) #3, !dbg !400
  br label %55

55:                                               ; preds = %47, %45
  tail call void @free(i8* %43) #3, !dbg !403
  call void @llvm.dbg.value(metadata i32 %40, metadata !249, metadata !DIExpression()), !dbg !282
  br label %56, !dbg !406

56:                                               ; preds = %39, %55, %32
  %57 = phi i32 [ %35, %32 ], [ %40, %55 ], [ %35, %39 ], !dbg !282
  call void @llvm.dbg.value(metadata i32 %57, metadata !249, metadata !DIExpression()), !dbg !282
  %58 = add nuw nsw i64 %34, 1, !dbg !407
  call void @llvm.dbg.value(metadata i64 %58, metadata !272, metadata !DIExpression()), !dbg !344
  %59 = icmp eq i64 %58, 8, !dbg !408
  br i1 %59, label %28, label %60, !dbg !409, !llvm.loop !410

60:                                               ; preds = %56
  %61 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !343, !tbaa !286
  br label %32, !dbg !409

62:                                               ; preds = %28
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !413
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !413
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !413
  %63 = tail call i8* @malloc(i64 1024) #3, !dbg !416
  %64 = icmp eq i8* %63, null, !dbg !417
  br i1 %64, label %65, label %67, !dbg !418

65:                                               ; preds = %62
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !419
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !419
  %66 = tail call i8* @halide_string_to_string(i8* %63, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !421
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !422
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #3, !dbg !424
  br label %75, !dbg !425

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, i8* %63, i64 1023, !dbg !426
  store i8 0, i8* %68, align 1, !dbg !427, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !419
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !419
  %69 = tail call i8* @halide_string_to_string(i8* nonnull %63, i8* nonnull %68, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !421
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !422
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !428
  %70 = ptrtoint i8* %69 to i64, !dbg !430
  %71 = ptrtoint i8* %63 to i64, !dbg !430
  %72 = add i64 %70, 1, !dbg !430
  %73 = sub i64 %72, %71, !dbg !431
  %74 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %73) #3, !dbg !432
  tail call void @halide_error(i8* %0, i8* nonnull %63) #3, !dbg !433
  br label %75

75:                                               ; preds = %67, %65
  tail call void @free(i8* %63) #3, !dbg !434
  call void @llvm.dbg.value(metadata i32 %30, metadata !249, metadata !DIExpression()), !dbg !282
  br label %76, !dbg !435

76:                                               ; preds = %28, %75, %119
  %77 = phi i32 [ 0, %119 ], [ %30, %75 ], [ %57, %28 ], !dbg !282
  call void @llvm.dbg.value(metadata i32 %77, metadata !249, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !436, metadata !DIExpression()) #4, !dbg !439
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !441
  ret i32 %77, !dbg !443

78:                                               ; preds = %24
  %79 = zext i8 %26 to i64, !dbg !309
  call void @llvm.dbg.value(metadata i8 %26, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %80 = add nsw i64 %79, -1, !dbg !315
  %81 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !316, !tbaa !286
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %81, i64 0, i32 0, i64 %80, i32 1, !dbg !318
  store i8 0, i8* %82, align 1, !dbg !319, !tbaa !320
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %81, i64 0, i32 0, i64 %80, i32 0, !dbg !323
  store i8 0, i8* %83, align 8, !dbg !324, !tbaa !325
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %81, i64 0, i32 0, i64 %80, i32 2, !dbg !326
  %85 = load i8*, i8** %84, align 8, !dbg !326, !tbaa !328
  %86 = icmp eq i8* %85, null, !dbg !329
  br i1 %86, label %89, label %87, !dbg !330

87:                                               ; preds = %78
  %88 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %85) #3, !dbg !331
  br label %89, !dbg !333

89:                                               ; preds = %87, %78, %24
  store i8 0, i8* %25, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !308
  %90 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !309
  %91 = load i8, i8* %90, align 1, !dbg !309, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %91, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %92 = icmp eq i8 %91, 0, !dbg !312
  br i1 %92, label %104, label %93, !dbg !314

93:                                               ; preds = %89
  %94 = zext i8 %91 to i64, !dbg !309
  call void @llvm.dbg.value(metadata i8 %91, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %95 = add nsw i64 %94, -1, !dbg !315
  %96 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !316, !tbaa !286
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %96, i64 0, i32 0, i64 %95, i32 1, !dbg !318
  store i8 0, i8* %97, align 1, !dbg !319, !tbaa !320
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %96, i64 0, i32 0, i64 %95, i32 0, !dbg !323
  store i8 0, i8* %98, align 8, !dbg !324, !tbaa !325
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %96, i64 0, i32 0, i64 %95, i32 2, !dbg !326
  %100 = load i8*, i8** %99, align 8, !dbg !326, !tbaa !328
  %101 = icmp eq i8* %100, null, !dbg !329
  br i1 %101, label %104, label %102, !dbg !330

102:                                              ; preds = %93
  %103 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %100) #3, !dbg !331
  br label %104, !dbg !333

104:                                              ; preds = %102, %93, %89
  store i8 0, i8* %90, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !308
  %105 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !309
  %106 = load i8, i8* %105, align 1, !dbg !309, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %106, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %107 = icmp eq i8 %106, 0, !dbg !312
  br i1 %107, label %119, label %108, !dbg !314

108:                                              ; preds = %104
  %109 = zext i8 %106 to i64, !dbg !309
  call void @llvm.dbg.value(metadata i8 %106, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !311
  %110 = add nsw i64 %109, -1, !dbg !315
  %111 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !316, !tbaa !286
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %111, i64 0, i32 0, i64 %110, i32 1, !dbg !318
  store i8 0, i8* %112, align 1, !dbg !319, !tbaa !320
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %111, i64 0, i32 0, i64 %110, i32 0, !dbg !323
  store i8 0, i8* %113, align 8, !dbg !324, !tbaa !325
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %111, i64 0, i32 0, i64 %110, i32 2, !dbg !326
  %115 = load i8*, i8** %114, align 8, !dbg !326, !tbaa !328
  %116 = icmp eq i8* %115, null, !dbg !329
  br i1 %116, label %119, label %117, !dbg !330

117:                                              ; preds = %108
  %118 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %115) #3, !dbg !331
  br label %119, !dbg !333

119:                                              ; preds = %117, %108, %104
  store i8 0, i8* %105, align 1, !dbg !334, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !308
  %120 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !444
  store i8 0, i8* %120, align 1, !dbg !445, !tbaa !446
  store i8 0, i8* %1, align 1, !dbg !448, !tbaa !449
  call void @llvm.dbg.value(metadata i8 1, metadata !269, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 0, metadata !270, metadata !DIExpression()), !dbg !450
  %121 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !286
  call void @llvm.dbg.value(metadata i64 0, metadata !270, metadata !DIExpression()), !dbg !450
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 0, i32 0, !dbg !451
  %123 = load i8, i8* %122, align 2, !dbg !451, !tbaa !449, !range !455
  call void @llvm.dbg.value(metadata i64 1, metadata !270, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i8 %123, metadata !269, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !282
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 1, i32 0, !dbg !451
  %125 = load i8, i8* %124, align 2, !dbg !451, !tbaa !449, !range !455
  call void @llvm.dbg.value(metadata i64 2, metadata !270, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i8 undef, metadata !269, metadata !DIExpression()), !dbg !282
  %126 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 2, i32 0, !dbg !451
  %127 = load i8, i8* %126, align 2, !dbg !451, !tbaa !449, !range !455
  %128 = or i8 %127, %125, !dbg !456
  call void @llvm.dbg.value(metadata i64 3, metadata !270, metadata !DIExpression()), !dbg !450
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 3, i32 0, !dbg !451
  %130 = load i8, i8* %129, align 2, !dbg !451, !tbaa !449, !range !455
  %131 = or i8 %130, %128, !dbg !456
  call void @llvm.dbg.value(metadata i64 4, metadata !270, metadata !DIExpression()), !dbg !450
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 4, i32 0, !dbg !451
  %133 = load i8, i8* %132, align 2, !dbg !451, !tbaa !449, !range !455
  %134 = or i8 %133, %131, !dbg !456
  call void @llvm.dbg.value(metadata i64 5, metadata !270, metadata !DIExpression()), !dbg !450
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 5, i32 0, !dbg !451
  %136 = load i8, i8* %135, align 2, !dbg !451, !tbaa !449, !range !455
  %137 = or i8 %136, %134, !dbg !456
  call void @llvm.dbg.value(metadata i64 6, metadata !270, metadata !DIExpression()), !dbg !450
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 6, i32 0, !dbg !451
  %139 = load i8, i8* %138, align 2, !dbg !451, !tbaa !449, !range !455
  %140 = or i8 %139, %137, !dbg !456
  call void @llvm.dbg.value(metadata i64 7, metadata !270, metadata !DIExpression()), !dbg !450
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 7, i32 0, !dbg !451
  %142 = load i8, i8* %141, align 2, !dbg !451, !tbaa !449, !range !455
  %143 = or i8 %142, %140, !dbg !456
  %144 = icmp ne i8 %143, 0, !dbg !456
  call void @llvm.dbg.value(metadata i64 8, metadata !270, metadata !DIExpression()), !dbg !450
  %145 = icmp eq i8 %123, 1, !dbg !457
  %146 = or i1 %144, %145, !dbg !457
  br i1 %146, label %76, label %32, !dbg !458
}

declare !dbg !459 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !463 dso_local void @abort() local_unnamed_addr #1

declare !dbg !466 dso_local i32 @nDmaWrapper_FinishFrame(i8*) local_unnamed_addr #1

declare !dbg !469 dso_local i32 @nDmaWrapper_FreeDma(i8*) local_unnamed_addr #1

declare !dbg !470 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !473 extern_weak dso_local i32 @halide_hexagon_free_l2_pool(i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i8* @halide_hexagon_allocate_dma_resource(i8* %0) local_unnamed_addr #0 !dbg !475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !479, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !497
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !497
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !480, metadata !DIExpression()), !dbg !496
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !499
  %2 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !500, !tbaa !286
  %3 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %2, null, !dbg !500
  br i1 %3, label %4, label %82, !dbg !501

4:                                                ; preds = %1
  %5 = tail call i8* @malloc(i64 176) #3, !dbg !502
  store i8* %5, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 8, !dbg !503, !tbaa !286
  call void @llvm.dbg.value(metadata i32 0, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 0, metadata !481, metadata !DIExpression()), !dbg !504
  store i8 0, i8* %5, align 8, !dbg !505, !tbaa !325
  %6 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !506
  %7 = bitcast i8* %6 to i8**, !dbg !506
  store i8* null, i8** %7, align 8, !dbg !507, !tbaa !328
  %8 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !508
  store i8 0, i8* %8, align 1, !dbg !509, !tbaa !320
  %9 = getelementptr inbounds i8, i8* %5, i64 128, !dbg !510
  store i8 0, i8* %9, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %10 = getelementptr inbounds i8, i8* %5, i64 130, !dbg !513
  store i8 0, i8* %10, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %11 = getelementptr inbounds i8, i8* %5, i64 131, !dbg !513
  store i8 0, i8* %11, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %12 = getelementptr inbounds i8, i8* %5, i64 132, !dbg !513
  store i8 0, i8* %12, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %13 = getelementptr inbounds i8, i8* %5, i64 133, !dbg !513
  store i8 0, i8* %13, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %14 = getelementptr inbounds i8, i8* %5, i64 129, !dbg !517
  store i8 0, i8* %14, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 1, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 1, metadata !481, metadata !DIExpression()), !dbg !504
  %15 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !519
  store i8 0, i8* %15, align 8, !dbg !505, !tbaa !325
  %16 = getelementptr inbounds i8, i8* %5, i64 24, !dbg !506
  %17 = bitcast i8* %16 to i8**, !dbg !506
  store i8* null, i8** %17, align 8, !dbg !507, !tbaa !328
  %18 = getelementptr inbounds i8, i8* %5, i64 17, !dbg !508
  store i8 0, i8* %18, align 1, !dbg !509, !tbaa !320
  %19 = getelementptr inbounds i8, i8* %5, i64 134, !dbg !510
  store i8 0, i8* %19, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %20 = getelementptr inbounds i8, i8* %5, i64 136, !dbg !513
  store i8 0, i8* %20, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %21 = getelementptr inbounds i8, i8* %5, i64 137, !dbg !513
  store i8 0, i8* %21, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %22 = getelementptr inbounds i8, i8* %5, i64 138, !dbg !513
  store i8 0, i8* %22, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %23 = getelementptr inbounds i8, i8* %5, i64 139, !dbg !513
  store i8 0, i8* %23, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %24 = getelementptr inbounds i8, i8* %5, i64 135, !dbg !517
  store i8 0, i8* %24, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 2, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 2, metadata !481, metadata !DIExpression()), !dbg !504
  %25 = getelementptr inbounds i8, i8* %5, i64 32, !dbg !519
  store i8 0, i8* %25, align 8, !dbg !505, !tbaa !325
  %26 = getelementptr inbounds i8, i8* %5, i64 40, !dbg !506
  %27 = bitcast i8* %26 to i8**, !dbg !506
  store i8* null, i8** %27, align 8, !dbg !507, !tbaa !328
  %28 = getelementptr inbounds i8, i8* %5, i64 33, !dbg !508
  store i8 0, i8* %28, align 1, !dbg !509, !tbaa !320
  %29 = getelementptr inbounds i8, i8* %5, i64 140, !dbg !510
  store i8 0, i8* %29, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %30 = getelementptr inbounds i8, i8* %5, i64 142, !dbg !513
  store i8 0, i8* %30, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %31 = getelementptr inbounds i8, i8* %5, i64 143, !dbg !513
  store i8 0, i8* %31, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %32 = getelementptr inbounds i8, i8* %5, i64 144, !dbg !513
  store i8 0, i8* %32, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %33 = getelementptr inbounds i8, i8* %5, i64 145, !dbg !513
  store i8 0, i8* %33, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %34 = getelementptr inbounds i8, i8* %5, i64 141, !dbg !517
  store i8 0, i8* %34, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 3, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 3, metadata !481, metadata !DIExpression()), !dbg !504
  %35 = getelementptr inbounds i8, i8* %5, i64 48, !dbg !519
  store i8 0, i8* %35, align 8, !dbg !505, !tbaa !325
  %36 = getelementptr inbounds i8, i8* %5, i64 56, !dbg !506
  %37 = bitcast i8* %36 to i8**, !dbg !506
  store i8* null, i8** %37, align 8, !dbg !507, !tbaa !328
  %38 = getelementptr inbounds i8, i8* %5, i64 49, !dbg !508
  store i8 0, i8* %38, align 1, !dbg !509, !tbaa !320
  %39 = getelementptr inbounds i8, i8* %5, i64 146, !dbg !510
  store i8 0, i8* %39, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %40 = getelementptr inbounds i8, i8* %5, i64 148, !dbg !513
  store i8 0, i8* %40, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %41 = getelementptr inbounds i8, i8* %5, i64 149, !dbg !513
  store i8 0, i8* %41, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %42 = getelementptr inbounds i8, i8* %5, i64 150, !dbg !513
  store i8 0, i8* %42, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %43 = getelementptr inbounds i8, i8* %5, i64 151, !dbg !513
  store i8 0, i8* %43, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %44 = getelementptr inbounds i8, i8* %5, i64 147, !dbg !517
  store i8 0, i8* %44, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 4, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 4, metadata !481, metadata !DIExpression()), !dbg !504
  %45 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !520, !tbaa !286
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 4, i32 0, !dbg !519
  store i8 0, i8* %46, align 8, !dbg !505, !tbaa !325
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 4, i32 2, !dbg !506
  store i8* null, i8** %47, align 8, !dbg !507, !tbaa !328
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 4, i32 1, !dbg !508
  store i8 0, i8* %48, align 1, !dbg !509, !tbaa !320
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 0, !dbg !510
  store i8 0, i8* %49, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 0, !dbg !513
  store i8 0, i8* %50, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 1, !dbg !513
  store i8 0, i8* %51, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 2, !dbg !513
  store i8 0, i8* %52, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 3, !dbg !513
  store i8 0, i8* %53, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 1, !dbg !517
  store i8 0, i8* %54, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 5, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 5, metadata !481, metadata !DIExpression()), !dbg !504
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 5, i32 0, !dbg !519
  store i8 0, i8* %55, align 8, !dbg !505, !tbaa !325
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 5, i32 2, !dbg !506
  store i8* null, i8** %56, align 8, !dbg !507, !tbaa !328
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 5, i32 1, !dbg !508
  store i8 0, i8* %57, align 1, !dbg !509, !tbaa !320
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 0, !dbg !510
  store i8 0, i8* %58, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 0, !dbg !513
  store i8 0, i8* %59, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 1, !dbg !513
  store i8 0, i8* %60, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 2, !dbg !513
  store i8 0, i8* %61, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 3, !dbg !513
  store i8 0, i8* %62, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 1, !dbg !517
  store i8 0, i8* %63, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 6, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 6, metadata !481, metadata !DIExpression()), !dbg !504
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 6, i32 0, !dbg !519
  store i8 0, i8* %64, align 8, !dbg !505, !tbaa !325
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 6, i32 2, !dbg !506
  store i8* null, i8** %65, align 8, !dbg !507, !tbaa !328
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 6, i32 1, !dbg !508
  store i8 0, i8* %66, align 1, !dbg !509, !tbaa !320
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 0, !dbg !510
  store i8 0, i8* %67, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 0, !dbg !513
  store i8 0, i8* %68, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 1, !dbg !513
  store i8 0, i8* %69, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 2, !dbg !513
  store i8 0, i8* %70, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 3, !dbg !513
  store i8 0, i8* %71, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 1, !dbg !517
  store i8 0, i8* %72, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 7, metadata !481, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i64 7, metadata !481, metadata !DIExpression()), !dbg !504
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 7, i32 0, !dbg !519
  store i8 0, i8* %73, align 8, !dbg !505, !tbaa !325
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 7, i32 2, !dbg !506
  store i8* null, i8** %74, align 8, !dbg !507, !tbaa !328
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 7, i32 1, !dbg !508
  store i8 0, i8* %75, align 1, !dbg !509, !tbaa !320
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 0, !dbg !510
  store i8 0, i8* %76, align 2, !dbg !511, !tbaa !449
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 0, metadata !485, metadata !DIExpression()), !dbg !512
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 0, !dbg !513
  store i8 0, i8* %77, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()), !dbg !512
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 1, !dbg !513
  store i8 0, i8* %78, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 2, metadata !485, metadata !DIExpression()), !dbg !512
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 2, !dbg !513
  store i8 0, i8* %79, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i64 3, metadata !485, metadata !DIExpression()), !dbg !512
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 3, !dbg !513
  store i8 0, i8* %80, align 1, !dbg !516, !tbaa !310
  call void @llvm.dbg.value(metadata i64 4, metadata !485, metadata !DIExpression()), !dbg !512
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 1, !dbg !517
  store i8 0, i8* %81, align 1, !dbg !518, !tbaa !446
  call void @llvm.dbg.value(metadata i64 8, metadata !481, metadata !DIExpression()), !dbg !504
  br label %82

82:                                               ; preds = %4, %1
  %83 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %45, %4 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 0, metadata !489, metadata !DIExpression()), !dbg !521
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 0, i32 0, !dbg !522
  %85 = load i8, i8* %84, align 2, !dbg !522, !tbaa !449, !range !455
  %86 = icmp eq i8 %85, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 0, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %86, label %91, label %87, !dbg !524

87:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 1, metadata !489, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 0, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  call void @llvm.dbg.value(metadata i64 1, metadata !489, metadata !DIExpression()), !dbg !521
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 1, i32 0, !dbg !522
  %89 = load i8, i8* %88, align 2, !dbg !522, !tbaa !449, !range !455
  %90 = icmp eq i8 %89, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 1, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %90, label %91, label %106, !dbg !524

91:                                               ; preds = %126, %122, %118, %114, %110, %106, %87, %82
  %92 = phi i8* [ %84, %82 ], [ %88, %87 ], [ %107, %106 ], [ %111, %110 ], [ %115, %114 ], [ %119, %118 ], [ %123, %122 ], [ %127, %126 ], !dbg !522
  store i8 1, i8* %92, align 2, !dbg !525, !tbaa !449
  call void @llvm.dbg.value(metadata i8* %92, metadata !491, metadata !DIExpression()), !dbg !526
  br label %104

93:                                               ; preds = %130
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !527
  %94 = tail call i8* @halide_string_to_string(i8* %131, i8* null, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !529
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !530
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #3, !dbg !532
  br label %103, !dbg !533

95:                                               ; preds = %130
  %96 = getelementptr inbounds i8, i8* %131, i64 1023, !dbg !534
  store i8 0, i8* %96, align 1, !dbg !536, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !527
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !527
  %97 = tail call i8* @halide_string_to_string(i8* nonnull %131, i8* nonnull %96, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !529
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !530
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !537
  %98 = ptrtoint i8* %97 to i64, !dbg !539
  %99 = ptrtoint i8* %131 to i64, !dbg !539
  %100 = add i64 %98, 1, !dbg !539
  %101 = sub i64 %100, %99, !dbg !540
  %102 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %131, i64 %101) #3, !dbg !541
  tail call void @halide_error(i8* %0, i8* nonnull %131) #3, !dbg !542
  br label %103

103:                                              ; preds = %95, %93
  tail call void @free(i8* %131) #3, !dbg !543
  br label %104, !dbg !544

104:                                              ; preds = %91, %103
  %105 = phi i8* [ null, %103 ], [ %92, %91 ], !dbg !496
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !436, metadata !DIExpression()) #4, !dbg !545
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !547
  ret i8* %105, !dbg !548

106:                                              ; preds = %87
  call void @llvm.dbg.value(metadata i64 2, metadata !489, metadata !DIExpression()), !dbg !521
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 2, i32 0, !dbg !522
  %108 = load i8, i8* %107, align 2, !dbg !522, !tbaa !449, !range !455
  %109 = icmp eq i8 %108, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 2, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %109, label %91, label %110, !dbg !524

110:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i64 3, metadata !489, metadata !DIExpression()), !dbg !521
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 3, i32 0, !dbg !522
  %112 = load i8, i8* %111, align 2, !dbg !522, !tbaa !449, !range !455
  %113 = icmp eq i8 %112, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 3, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %113, label %91, label %114, !dbg !524

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 4, metadata !489, metadata !DIExpression()), !dbg !521
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 4, i32 0, !dbg !522
  %116 = load i8, i8* %115, align 2, !dbg !522, !tbaa !449, !range !455
  %117 = icmp eq i8 %116, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 4, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %117, label %91, label %118, !dbg !524

118:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 5, metadata !489, metadata !DIExpression()), !dbg !521
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 5, i32 0, !dbg !522
  %120 = load i8, i8* %119, align 2, !dbg !522, !tbaa !449, !range !455
  %121 = icmp eq i8 %120, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 5, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %121, label %91, label %122, !dbg !524

122:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i64 6, metadata !489, metadata !DIExpression()), !dbg !521
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 6, i32 0, !dbg !522
  %124 = load i8, i8* %123, align 2, !dbg !522, !tbaa !449, !range !455
  %125 = icmp eq i8 %124, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 6, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %125, label %91, label %126, !dbg !524

126:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i64 7, metadata !489, metadata !DIExpression()), !dbg !521
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 7, i32 0, !dbg !522
  %128 = load i8, i8* %127, align 2, !dbg !522, !tbaa !449, !range !455
  %129 = icmp eq i8 %128, 0, !dbg !523
  call void @llvm.dbg.value(metadata i64 7, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  br i1 %129, label %91, label %130, !dbg !524

130:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 7, metadata !489, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !521
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !549
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !549
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !549
  %131 = tail call i8* @malloc(i64 1024) #3, !dbg !550
  %132 = icmp eq i8* %131, null, !dbg !551
  br i1 %132, label %93, label %95, !dbg !552
}

declare !dbg !553 dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %1, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %0, metadata !564, metadata !DIExpression()) #4, !dbg !580
  call void @llvm.dbg.value(metadata i8* %1, metadata !568, metadata !DIExpression()) #4, !dbg !580
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !582, !tbaa !286
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null, !dbg !582
  br i1 %4, label %5, label %6, !dbg !585

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !586
  tail call void @abort() #3, !dbg !586
  br label %6, !dbg !586

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null, !dbg !588
  br i1 %7, label %8, label %9, !dbg !591

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !592
  tail call void @abort() #3, !dbg !592
  br label %9, !dbg !592

9:                                                ; preds = %8, %6
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !594
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !594
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !569, metadata !DIExpression()) #4, !dbg !580
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !596
  call void @llvm.dbg.value(metadata i8* %1, metadata !570, metadata !DIExpression()) #4, !dbg !580
  call void @llvm.dbg.value(metadata i32 0, metadata !571, metadata !DIExpression()) #4, !dbg !597
  %10 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !598
  %11 = load i8, i8* %10, align 1, !dbg !598, !tbaa !446
  %12 = icmp eq i8 %11, 0, !dbg !599
  br i1 %12, label %13, label %15, !dbg !600

13:                                               ; preds = %9
  %14 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !286
  br label %38, !dbg !600

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %1, i64 2
  %17 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8
  %18 = zext i8 %11 to i64
  br label %19, !dbg !600

19:                                               ; preds = %33, %15
  %20 = phi i64 [ 0, %15 ], [ %34, %33 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !571, metadata !DIExpression()) #4, !dbg !597
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !601
  %22 = load i8, i8* %21, align 1, !dbg !601, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %22, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !602
  %23 = icmp eq i8 %22, 0, !dbg !603
  br i1 %23, label %33, label %24, !dbg !605

24:                                               ; preds = %19
  %25 = zext i8 %22 to i64, !dbg !601
  call void @llvm.dbg.value(metadata i8 %22, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !602
  %26 = add nsw i64 %25, -1, !dbg !606
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %17, i64 0, i32 0, i64 %26, i32 0, !dbg !607
  %28 = load i8, i8* %27, align 8, !dbg !607, !tbaa !325, !range !455
  %29 = icmp eq i8 %28, 0, !dbg !608
  br i1 %29, label %30, label %33, !dbg !609

30:                                               ; preds = %24
  store i8 1, i8* %27, align 8, !dbg !610, !tbaa !325
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %17, i64 0, i32 0, i64 %26, i32 2, !dbg !612
  %32 = load i8*, i8** %31, align 8, !dbg !612, !tbaa !328
  br label %113

33:                                               ; preds = %24, %19
  %34 = add nuw nsw i64 %20, 1, !dbg !613
  call void @llvm.dbg.value(metadata i64 %34, metadata !571, metadata !DIExpression()) #4, !dbg !597
  %35 = icmp eq i64 %34, %18, !dbg !599
  br i1 %35, label %36, label %19, !dbg !600, !llvm.loop !614

36:                                               ; preds = %33
  %37 = icmp ult i8 %11, 4, !dbg !616
  br i1 %37, label %38, label %75, !dbg !617

38:                                               ; preds = %13, %36
  %39 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %14, %13 ], [ %17, %36 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !576, metadata !DIExpression()) #4, !dbg !618
  call void @llvm.dbg.value(metadata i64 0, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 0, i32 1, !dbg !619
  %41 = load i8, i8* %40, align 1, !dbg !619, !tbaa !320, !range !455
  %42 = icmp eq i8 %41, 0, !dbg !623
  br i1 %42, label %43, label %71, !dbg !624

43:                                               ; preds = %109, %105, %101, %97, %93, %89, %71, %38
  %44 = phi i64 [ 0, %38 ], [ 1, %71 ], [ 2, %89 ], [ 3, %93 ], [ 4, %97 ], [ 5, %101 ], [ 6, %105 ], [ 7, %109 ], !dbg !625
  %45 = phi i8* [ %40, %38 ], [ %72, %71 ], [ %90, %89 ], [ %94, %93 ], [ %98, %97 ], [ %102, %101 ], [ %106, %105 ], [ %110, %109 ], !dbg !619
  store i8 1, i8* %45, align 1, !dbg !626, !tbaa !320
  %46 = trunc i64 %44 to i8, !dbg !628
  %47 = add nuw nsw i8 %46, 1, !dbg !628
  %48 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !629
  %49 = zext i8 %11 to i64, !dbg !630
  %50 = getelementptr inbounds i8, i8* %48, i64 %49, !dbg !630
  store i8 %47, i8* %50, align 1, !dbg !631, !tbaa !310
  %51 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !632, !tbaa !286
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %51, i64 0, i32 0, i64 %44, i32 2, !dbg !634
  %53 = load i8*, i8** %52, align 8, !dbg !634, !tbaa !328
  %54 = icmp eq i8* %53, null, !dbg !632
  br i1 %54, label %55, label %67, !dbg !635

55:                                               ; preds = %43
  %56 = tail call i8* @hDmaWrapper_AllocDma() #3, !dbg !636
  %57 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !638, !tbaa !286
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %57, i64 0, i32 0, i64 %44, i32 2, !dbg !639
  store i8* %56, i8** %58, align 8, !dbg !640, !tbaa !328
  %59 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !641, !tbaa !286
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %59, i64 0, i32 0, i64 %44, i32 2, !dbg !641
  %61 = load i8*, i8** %60, align 8, !dbg !641, !tbaa !328
  %62 = icmp eq i8* %61, null, !dbg !641
  br i1 %62, label %63, label %67, !dbg !644

63:                                               ; preds = %55
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.7, i64 0, i64 0)) #3, !dbg !645
  tail call void @abort() #3, !dbg !645
  %64 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !dbg !647, !tbaa !286
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %64, i64 0, i32 0, i64 %44, i32 2
  %66 = load i8*, i8** %65, align 8, !dbg !648, !tbaa !328
  br label %67, !dbg !645

67:                                               ; preds = %63, %55, %43
  %68 = phi i8* [ %53, %43 ], [ %66, %63 ], [ %61, %55 ], !dbg !648
  %69 = load i8, i8* %10, align 1, !dbg !649, !tbaa !446
  %70 = add i8 %69, 1, !dbg !649
  store i8 %70, i8* %10, align 1, !dbg !649, !tbaa !446
  br label %113

71:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 1, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 1, i32 1, !dbg !619
  %73 = load i8, i8* %72, align 1, !dbg !619, !tbaa !320, !range !455
  %74 = icmp eq i8 %73, 0, !dbg !623
  br i1 %74, label %43, label %89, !dbg !624

75:                                               ; preds = %109, %36
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !650
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !650
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !650
  %76 = tail call i8* @malloc(i64 1024) #3, !dbg !652
  %77 = icmp eq i8* %76, null, !dbg !653
  br i1 %77, label %78, label %80, !dbg !654

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !655
  %79 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #3, !dbg !657
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !658
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #3, !dbg !660
  br label %88, !dbg !661

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, i8* %76, i64 1023, !dbg !662
  store i8 0, i8* %81, align 1, !dbg !663, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !655
  %82 = tail call i8* @halide_string_to_string(i8* nonnull %76, i8* nonnull %81, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #3, !dbg !657
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !658
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !664
  %83 = ptrtoint i8* %82 to i64, !dbg !666
  %84 = ptrtoint i8* %76 to i64, !dbg !666
  %85 = sub i64 1, %84, !dbg !666
  %86 = add i64 %85, %83, !dbg !667
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %76, i64 %86) #3, !dbg !668
  tail call void @halide_error(i8* %0, i8* nonnull %76) #3, !dbg !669
  br label %88

88:                                               ; preds = %80, %78
  tail call void @free(i8* %76) #3, !dbg !670
  br label %113, !dbg !671

89:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i64 2, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 2, i32 1, !dbg !619
  %91 = load i8, i8* %90, align 1, !dbg !619, !tbaa !320, !range !455
  %92 = icmp eq i8 %91, 0, !dbg !623
  br i1 %92, label %43, label %93, !dbg !624

93:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i64 3, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 3, i32 1, !dbg !619
  %95 = load i8, i8* %94, align 1, !dbg !619, !tbaa !320, !range !455
  %96 = icmp eq i8 %95, 0, !dbg !623
  br i1 %96, label %43, label %97, !dbg !624

97:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i64 4, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 4, i32 1, !dbg !619
  %99 = load i8, i8* %98, align 1, !dbg !619, !tbaa !320, !range !455
  %100 = icmp eq i8 %99, 0, !dbg !623
  br i1 %100, label %43, label %101, !dbg !624

101:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 5, i32 1, !dbg !619
  %103 = load i8, i8* %102, align 1, !dbg !619, !tbaa !320, !range !455
  %104 = icmp eq i8 %103, 0, !dbg !623
  br i1 %104, label %43, label %105, !dbg !624

105:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i64 6, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 6, i32 1, !dbg !619
  %107 = load i8, i8* %106, align 1, !dbg !619, !tbaa !320, !range !455
  %108 = icmp eq i8 %107, 0, !dbg !623
  br i1 %108, label %43, label %109, !dbg !624

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 7, metadata !576, metadata !DIExpression()) #4, !dbg !618
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 7, i32 1, !dbg !619
  %111 = load i8, i8* %110, align 1, !dbg !619, !tbaa !320, !range !455
  %112 = icmp eq i8 %111, 0, !dbg !623
  br i1 %112, label %43, label %75, !dbg !624

113:                                              ; preds = %30, %67, %88
  %114 = phi i8* [ null, %88 ], [ %32, %30 ], [ %68, %67 ], !dbg !580
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !436, metadata !DIExpression()) #4, !dbg !672
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !674
  ret i8* %114, !dbg !675
}

; Function Attrs: nounwind
define weak dso_local i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 !dbg !676 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !680, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8* %1, metadata !681, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8* %2, metadata !682, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8* %0, metadata !684, metadata !DIExpression()) #4, !dbg !696
  call void @llvm.dbg.value(metadata i8* %1, metadata !687, metadata !DIExpression()) #4, !dbg !696
  call void @llvm.dbg.value(metadata i8* %2, metadata !688, metadata !DIExpression()) #4, !dbg !696
  %4 = icmp eq i8* %2, null, !dbg !698
  br i1 %4, label %5, label %6, !dbg !701

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.9, i64 0, i64 0)) #3, !dbg !702
  tail call void @abort() #3, !dbg !702
  br label %6, !dbg !702

6:                                                ; preds = %5, %3
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !299, metadata !DIExpression()) #4, !dbg !704
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !302, metadata !DIExpression()) #4, !dbg !704
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE, metadata !689, metadata !DIExpression()) #4, !dbg !696
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !706
  call void @llvm.dbg.value(metadata i8* %2, metadata !690, metadata !DIExpression()) #4, !dbg !696
  call void @llvm.dbg.value(metadata i32 0, metadata !691, metadata !DIExpression()) #4, !dbg !707
  %7 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !708
  %8 = load i8, i8* %7, align 1, !dbg !708, !tbaa !446
  %9 = icmp eq i8 %8, 0, !dbg !709
  br i1 %9, label %30, label %10, !dbg !710

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %2, i64 2
  %12 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8
  %13 = zext i8 %8 to i64
  br label %14, !dbg !710

14:                                               ; preds = %27, %10
  %15 = phi i64 [ 0, %10 ], [ %28, %27 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !691, metadata !DIExpression()) #4, !dbg !707
  %16 = getelementptr inbounds i8, i8* %11, i64 %15, !dbg !711
  %17 = load i8, i8* %16, align 1, !dbg !711, !tbaa !310
  call void @llvm.dbg.value(metadata i8 %17, metadata !693, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !712
  %18 = icmp eq i8 %17, 0, !dbg !713
  br i1 %18, label %27, label %19, !dbg !715

19:                                               ; preds = %14
  %20 = zext i8 %17 to i64, !dbg !711
  call void @llvm.dbg.value(metadata i8 %17, metadata !693, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !712
  %21 = add nsw i64 %20, -1, !dbg !716
  call void @llvm.dbg.value(metadata i8 %17, metadata !693, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #4, !dbg !712
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i64 0, i32 0, i64 %21, i32 2, !dbg !717
  %23 = load i8*, i8** %22, align 8, !dbg !717, !tbaa !328
  %24 = icmp eq i8* %23, %1, !dbg !718
  br i1 %24, label %25, label %27, !dbg !719

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i64 0, i32 0, i64 %21, i32 0, !dbg !720
  store i8 0, i8* %26, align 8, !dbg !722, !tbaa !325
  br label %44

27:                                               ; preds = %19, %14
  %28 = add nuw nsw i64 %15, 1, !dbg !723
  call void @llvm.dbg.value(metadata i64 %28, metadata !691, metadata !DIExpression()) #4, !dbg !707
  %29 = icmp eq i64 %28, %13, !dbg !709
  br i1 %29, label %30, label %14, !dbg !710, !llvm.loop !724

30:                                               ; preds = %27, %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !352, metadata !DIExpression()) #4, !dbg !726
  call void @llvm.dbg.value(metadata i8* %0, metadata !355, metadata !DIExpression()) #4, !dbg !726
  call void @llvm.dbg.value(metadata i8* null, metadata !356, metadata !DIExpression()) #4, !dbg !726
  %31 = tail call i8* @malloc(i64 1024) #3, !dbg !728
  %32 = icmp eq i8* %31, null, !dbg !729
  br i1 %32, label %33, label %35, !dbg !730

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !731
  %34 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #3, !dbg !733
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !734
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #3, !dbg !736
  br label %43, !dbg !737

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %31, i64 1023, !dbg !738
  store i8 0, i8* %36, align 1, !dbg !739, !tbaa !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !369, metadata !DIExpression()) #4, !dbg !731
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), metadata !372, metadata !DIExpression()) #4, !dbg !731
  %37 = tail call i8* @halide_string_to_string(i8* nonnull %31, i8* nonnull %36, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #3, !dbg !733
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !378, metadata !DIExpression()) #4, !dbg !734
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !391, metadata !DIExpression()) #4, !dbg !740
  %38 = ptrtoint i8* %37 to i64, !dbg !742
  %39 = ptrtoint i8* %31 to i64, !dbg !742
  %40 = sub i64 1, %39, !dbg !742
  %41 = add i64 %40, %38, !dbg !743
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %41) #3, !dbg !744
  tail call void @halide_error(i8* %0, i8* nonnull %31) #3, !dbg !745
  br label %43

43:                                               ; preds = %35, %33
  tail call void @free(i8* %31) #3, !dbg !746
  br label %44, !dbg !747

44:                                               ; preds = %25, %43
  %45 = phi i32 [ -1, %43 ], [ 0, %25 ], !dbg !696
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !436, metadata !DIExpression()) #4, !dbg !748
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #3, !dbg !750
  ret i32 %45, !dbg !751
}

declare !dbg !752 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !755 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #1

declare !dbg !756 dso_local i8* @hDmaWrapper_AllocDma() local_unnamed_addr #1

declare !dbg !759 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !760 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !763 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

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
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_dma_pool_t", scope: !2, file: !6, line: 30, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !6, line: 27, size: 1408, flags: DIFlagTypePassByValue, elements: !10, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma18hexagon_dma_pool_tE")
!10 = !{!11, !23}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "dma_engine_list", scope: !9, file: !6, line: 28, baseType: !12, size: 1024)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !21)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "hexagon_dma_engine_t", scope: !2, file: !6, line: 25, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !6, line: 21, size: 128, flags: DIFlagTypePassByValue, elements: !15, identifier: "_ZTSN6Halide7Runtime8Internal10HexagonDma20hexagon_dma_engine_tE")
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !14, file: !6, line: 22, baseType: !17, size: 8)
!17 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "assigned", scope: !14, file: !6, line: 23, baseType: !17, size: 8, offset: 8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "engine_addr", scope: !14, file: !6, line: 24, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_engine_list", scope: !9, file: !6, line: 29, baseType: !24, size: 384, offset: 1024)
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
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !40, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !41, identifier: "_ZTS12halide_mutex")
!40 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !39, file: !40, line: 121, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !47)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 61, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 10, baseType: !46)
!46 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !50, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !112, globals: !235, imports: !236, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!51 = !{!52, !100, !105}
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
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 23, baseType: !102, size: 32, align: 32, elements: !103)
!101 = !DIFile(filename: "src/runtime/mini_hexagon_dma.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !{!104}
!104 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !40, line: 403, baseType: !30, size: 8, elements: !106, identifier: "_ZTS18halide_type_code_t")
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!111 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!112 = !{!113, !114, !115, !7, !20, !121}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_DmaWrapper_DmaEngineHandle", file: !101, line: 168, baseType: !20)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !117, file: !116, line: 199, baseType: !118)
!116 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!117 = !DINamespace(scope: !3)
!118 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !117, file: !116, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !119, templateParams: !232)
!119 = !{!120, !123, !124, !125, !126, !127, !129, !133, !139, !144, !148, !151, !155, !159, !163, !168, !174, !207, !214, !217, !220, !225, !226, !229, !230, !231}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !118, file: !116, line: 32, baseType: !121, size: 64, flags: DIFlagPublic)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !118, file: !116, line: 32, baseType: !121, size: 64, offset: 64, flags: DIFlagPublic)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !118, file: !116, line: 32, baseType: !121, size: 64, offset: 128, flags: DIFlagPublic)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !118, file: !116, line: 33, baseType: !20, size: 64, offset: 192, flags: DIFlagPublic)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !118, file: !116, line: 34, baseType: !17, size: 8, offset: 256, flags: DIFlagPublic)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !118, file: !116, line: 35, baseType: !128, size: 8, offset: 264, flags: DIFlagPublic)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 8, elements: !47)
!129 = !DISubprogram(name: "Printer", scope: !118, file: !116, line: 37, type: !130, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !20, !121}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!133 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !118, file: !116, line: 57, type: !134, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !132, !137}
!136 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !118, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!139 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !118, file: !116, line: 67, type: !140, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{!136, !132, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !31, line: 9, baseType: !143)
!143 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!144 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !118, file: !116, line: 72, type: !145, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{!136, !132, !147}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 11, baseType: !53)
!148 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !118, file: !116, line: 77, type: !149, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{!136, !132, !45}
!151 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !118, file: !116, line: 82, type: !152, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!136, !132, !154}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 12, baseType: !102)
!155 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !118, file: !116, line: 87, type: !156, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubroutineType(types: !157)
!157 = !{!136, !132, !158}
!158 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!159 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !118, file: !116, line: 92, type: !160, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!136, !132, !162}
!162 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!163 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !118, file: !116, line: 97, type: !164, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{!136, !132, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !118, file: !116, line: 102, type: !169, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{!136, !132, !171}
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !31, line: 14, baseType: !173)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !118, file: !116, line: 108, type: !175, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DISubroutineType(types: !176)
!176 = !{!136, !132, !177}
!177 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !40, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !180, identifier: "_ZTS13halide_type_t")
!180 = !{!181, !183, !184, !185, !189, !192, !196, !199, !200, !201, !204}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !179, file: !40, line: 434, baseType: !182, size: 8, align: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !40, line: 413, baseType: !105)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !179, file: !40, line: 442, baseType: !30, size: 8, align: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !179, file: !40, line: 446, baseType: !172, size: 16, align: 16, offset: 16)
!185 = !DISubprogram(name: "halide_type_t", scope: !179, file: !40, line: 453, type: !186, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188, !182, !30, !172}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!189 = !DISubprogram(name: "halide_type_t", scope: !179, file: !40, line: 459, type: !190, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !188}
!192 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !179, file: !40, line: 463, type: !193, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!179, !195, !172}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!206 = !{!154, !195}
!207 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !118, file: !116, line: 113, type: !208, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DISubroutineType(types: !209)
!209 = !{!136, !132, !210}
!210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !40, line: 1550, baseType: !213)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !40, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!214 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !118, file: !116, line: 119, type: !215, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{!137, !132}
!217 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !118, file: !116, line: 131, type: !218, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !132}
!220 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !118, file: !116, line: 139, type: !221, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{!45, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!225 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !118, file: !116, line: 143, type: !221, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !118, file: !116, line: 148, type: !227, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !132, !53}
!229 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !118, file: !116, line: 158, type: !215, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !118, file: !116, line: 162, type: !218, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubprogram(name: "~Printer", scope: !118, file: !116, line: 166, type: !218, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !{!233, !234}
!233 = !DITemplateValueParameter(name: "type", type: !53, value: i32 1)
!234 = !DITemplateValueParameter(name: "length", type: !46, value: i64 1024)
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
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !252, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !253, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!252 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!253 = !{!254, !256, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !251, file: !252, line: 12, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!256 = !DISubprogram(name: "ScopedMutexLock", scope: !251, file: !252, line: 14, type: !257, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !259, !255}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!260 = !DISubprogram(name: "~ScopedMutexLock", scope: !251, file: !252, line: 19, type: !261, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !259}
!263 = !DILocalVariable(name: "virtual_engine_addr", scope: !243, file: !6, line: 110, type: !113)
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
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!304 = !DILocation(line: 0, scope: !300, inlinedAt: !305)
!305 = distinct !DILocation(line: 109, column: 21, scope: !243)
!306 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !305)
!307 = distinct !DILexicalBlock(scope: !300, file: !252, line: 15, column: 24)
!308 = !DILocation(line: 0, scope: !265)
!309 = !DILocation(line: 112, column: 19, scope: !267)
!310 = !{!288, !288, i64 0}
!311 = !DILocation(line: 0, scope: !267)
!312 = !DILocation(line: 113, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !267, file: !6, line: 113, column: 13)
!314 = !DILocation(line: 113, column: 13, scope: !267)
!315 = !DILocation(line: 112, column: 58, scope: !267)
!316 = !DILocation(line: 114, column: 13, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !6, line: 113, column: 24)
!318 = !DILocation(line: 114, column: 52, scope: !317)
!319 = !DILocation(line: 114, column: 61, scope: !317)
!320 = !{!321, !322, i64 1}
!321 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma20hexagon_dma_engine_tE", !322, i64 0, !322, i64 1, !287, i64 8}
!322 = !{!"bool", !288, i64 0}
!323 = !DILocation(line: 115, column: 52, scope: !317)
!324 = !DILocation(line: 115, column: 57, scope: !317)
!325 = !{!321, !322, i64 0}
!326 = !DILocation(line: 116, column: 56, scope: !327)
!327 = distinct !DILexicalBlock(scope: !317, file: !6, line: 116, column: 17)
!328 = !{!321, !287, i64 8}
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
!353 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !118, file: !116, line: 37, type: !130, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !129, retainedNodes: !354)
!354 = !{!352, !355, !356}
!355 = !DILocalVariable(name: "ctx", arg: 2, scope: !353, file: !116, line: 37, type: !20)
!356 = !DILocalVariable(name: "mem", arg: 3, scope: !353, file: !116, line: 37, type: !121)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!358 = !DILocation(line: 0, scope: !353, inlinedAt: !359)
!359 = distinct !DILocation(line: 137, column: 21, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !6, line: 136, column: 38)
!361 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !359)
!362 = distinct !DILexicalBlock(scope: !363, file: !116, line: 43, column: 16)
!363 = distinct !DILexicalBlock(scope: !364, file: !116, line: 41, column: 20)
!364 = distinct !DILexicalBlock(scope: !365, file: !116, line: 39, column: 13)
!365 = distinct !DILexicalBlock(scope: !353, file: !116, line: 38, column: 54)
!366 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !359)
!367 = distinct !DILexicalBlock(scope: !365, file: !116, line: 48, column: 13)
!368 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !359)
!369 = !DILocalVariable(name: "this", arg: 1, scope: !370, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!370 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !118, file: !116, line: 57, type: !134, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !133, retainedNodes: !371)
!371 = !{!369, !372}
!372 = !DILocalVariable(name: "arg", arg: 2, scope: !370, file: !116, line: 57, type: !137)
!373 = !DILocation(line: 0, scope: !370, inlinedAt: !374)
!374 = distinct !DILocation(line: 137, column: 41, scope: !360)
!375 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !374)
!376 = distinct !DILexicalBlock(scope: !377, file: !116, line: 61, column: 16)
!377 = distinct !DILexicalBlock(scope: !370, file: !116, line: 59, column: 13)
!378 = !DILocalVariable(name: "this", arg: 1, scope: !379, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!379 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !118, file: !116, line: 166, type: !218, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !231, retainedNodes: !380)
!380 = !{!378}
!381 = !DILocation(line: 0, scope: !379, inlinedAt: !382)
!382 = distinct !DILocation(line: 137, column: 21, scope: !360)
!383 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !382)
!384 = distinct !DILexicalBlock(scope: !385, file: !116, line: 167, column: 19)
!385 = distinct !DILexicalBlock(scope: !386, file: !116, line: 167, column: 13)
!386 = distinct !DILexicalBlock(scope: !379, file: !116, line: 166, column: 16)
!387 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !382)
!388 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !359)
!389 = distinct !DILexicalBlock(scope: !367, file: !116, line: 48, column: 18)
!390 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !359)
!391 = !DILocalVariable(name: "this", arg: 1, scope: !392, type: !357, flags: DIFlagArtificial | DIFlagObjectPointer)
!392 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !118, file: !116, line: 162, type: !218, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !230, retainedNodes: !393)
!393 = !{!391}
!394 = !DILocation(line: 0, scope: !392, inlinedAt: !395)
!395 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !382)
!396 = distinct !DILexicalBlock(scope: !385, file: !116, line: 169, column: 16)
!397 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !395)
!398 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !395)
!399 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !395)
!400 = !DILocation(line: 172, column: 17, scope: !401, inlinedAt: !382)
!401 = distinct !DILexicalBlock(scope: !402, file: !116, line: 171, column: 39)
!402 = distinct !DILexicalBlock(scope: !396, file: !116, line: 171, column: 17)
!403 = !DILocation(line: 181, column: 13, scope: !404, inlinedAt: !382)
!404 = distinct !DILexicalBlock(scope: !405, file: !116, line: 180, column: 40)
!405 = distinct !DILexicalBlock(scope: !386, file: !116, line: 180, column: 13)
!406 = !DILocation(line: 139, column: 17, scope: !360)
!407 = !DILocation(line: 133, column: 57, scope: !280)
!408 = !DILocation(line: 133, column: 27, scope: !280)
!409 = !DILocation(line: 133, column: 9, scope: !273)
!410 = distinct !{!410, !409, !411, !412}
!411 = !DILocation(line: 141, column: 9, scope: !273)
!412 = !{!"llvm.loop.mustprogress"}
!413 = !DILocation(line: 0, scope: !353, inlinedAt: !414)
!414 = distinct !DILocation(line: 148, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !341, file: !6, line: 147, column: 23)
!416 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !414)
!417 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !414)
!418 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !414)
!419 = !DILocation(line: 0, scope: !370, inlinedAt: !420)
!420 = distinct !DILocation(line: 148, column: 33, scope: !415)
!421 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !420)
!422 = !DILocation(line: 0, scope: !379, inlinedAt: !423)
!423 = distinct !DILocation(line: 148, column: 13, scope: !415)
!424 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !423)
!425 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !423)
!426 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !414)
!427 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !414)
!428 = !DILocation(line: 0, scope: !392, inlinedAt: !429)
!429 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !423)
!430 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !429)
!431 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !429)
!432 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !429)
!433 = !DILocation(line: 172, column: 17, scope: !401, inlinedAt: !423)
!434 = !DILocation(line: 181, column: 13, scope: !404, inlinedAt: !423)
!435 = !DILocation(line: 150, column: 9, scope: !415)
!436 = !DILocalVariable(name: "this", arg: 1, scope: !437, type: !303, flags: DIFlagArtificial | DIFlagObjectPointer)
!437 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !251, file: !252, line: 19, type: !261, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, declaration: !260, retainedNodes: !438)
!438 = !{!436}
!439 = !DILocation(line: 0, scope: !437, inlinedAt: !440)
!440 = distinct !DILocation(line: 153, column: 1, scope: !243)
!441 = !DILocation(line: 20, column: 9, scope: !442, inlinedAt: !440)
!442 = distinct !DILexicalBlock(scope: !437, file: !252, line: 19, column: 38)
!443 = !DILocation(line: 153, column: 1, scope: !243)
!444 = !DILocation(line: 122, column: 26, scope: !243)
!445 = !DILocation(line: 122, column: 41, scope: !243)
!446 = !{!447, !288, i64 1}
!447 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_virtual_engine_tE", !322, i64 0, !288, i64 1, !288, i64 2}
!448 = !DILocation(line: 123, column: 33, scope: !243)
!449 = !{!447, !322, i64 0}
!450 = !DILocation(line: 0, scope: !271)
!451 = !DILocation(line: 127, column: 54, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !6, line: 127, column: 13)
!453 = distinct !DILexicalBlock(scope: !454, file: !6, line: 126, column: 57)
!454 = distinct !DILexicalBlock(scope: !271, file: !6, line: 126, column: 5)
!455 = !{i8 0, i8 2}
!456 = !DILocation(line: 127, column: 13, scope: !453)
!457 = !DILocation(line: 132, column: 9, scope: !275)
!458 = !DILocation(line: 132, column: 9, scope: !243)
!459 = !DISubprogram(name: "halide_print", scope: !40, file: !40, line: 97, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !20, !137}
!462 = !{}
!463 = !DISubprogram(name: "abort", scope: !31, file: !31, line: 108, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!464 = !DISubroutineType(types: !465)
!465 = !{null}
!466 = !DISubprogram(name: "nDmaWrapper_FinishFrame", scope: !101, file: !101, line: 230, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!467 = !DISubroutineType(types: !468)
!468 = !{!53, !20}
!469 = !DISubprogram(name: "nDmaWrapper_FreeDma", scope: !101, file: !101, line: 190, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!470 = !DISubprogram(name: "free", scope: !31, file: !31, line: 86, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !20}
!473 = !DISubprogram(name: "halide_hexagon_free_l2_pool", scope: !474, file: !474, line: 28, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!474 = !DIFile(filename: "src/runtime/hexagon_dma_pool.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!475 = distinct !DISubprogram(name: "halide_hexagon_allocate_dma_resource", scope: !6, file: !6, line: 156, type: !476, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!20, !20}
!478 = !{!479, !480, !481, !485, !489, !491}
!479 = !DILocalVariable(name: "user_context", arg: 1, scope: !475, file: !6, line: 156, type: !20)
!480 = !DILocalVariable(name: "lock", scope: !475, file: !6, line: 157, type: !251)
!481 = !DILocalVariable(name: "i", scope: !482, file: !6, line: 161, type: !53)
!482 = distinct !DILexicalBlock(scope: !483, file: !6, line: 161, column: 9)
!483 = distinct !DILexicalBlock(scope: !484, file: !6, line: 159, column: 28)
!484 = distinct !DILexicalBlock(scope: !475, file: !6, line: 159, column: 9)
!485 = !DILocalVariable(name: "j", scope: !486, file: !6, line: 166, type: !53)
!486 = distinct !DILexicalBlock(scope: !487, file: !6, line: 166, column: 13)
!487 = distinct !DILexicalBlock(scope: !488, file: !6, line: 161, column: 61)
!488 = distinct !DILexicalBlock(scope: !482, file: !6, line: 161, column: 9)
!489 = !DILocalVariable(name: "i", scope: !490, file: !6, line: 173, type: !53)
!490 = distinct !DILexicalBlock(scope: !475, file: !6, line: 173, column: 5)
!491 = !DILocalVariable(name: "virtual_addr", scope: !492, file: !6, line: 176, type: !20)
!492 = distinct !DILexicalBlock(scope: !493, file: !6, line: 174, column: 71)
!493 = distinct !DILexicalBlock(scope: !494, file: !6, line: 174, column: 13)
!494 = distinct !DILexicalBlock(scope: !495, file: !6, line: 173, column: 57)
!495 = distinct !DILexicalBlock(scope: !490, file: !6, line: 173, column: 5)
!496 = !DILocation(line: 0, scope: !475)
!497 = !DILocation(line: 0, scope: !300, inlinedAt: !498)
!498 = distinct !DILocation(line: 157, column: 21, scope: !475)
!499 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !498)
!500 = !DILocation(line: 159, column: 10, scope: !484)
!501 = !DILocation(line: 159, column: 9, scope: !475)
!502 = !DILocation(line: 160, column: 50, scope: !483)
!503 = !DILocation(line: 160, column: 26, scope: !483)
!504 = !DILocation(line: 0, scope: !482)
!505 = !DILocation(line: 162, column: 55, scope: !487)
!506 = !DILocation(line: 163, column: 50, scope: !487)
!507 = !DILocation(line: 163, column: 62, scope: !487)
!508 = !DILocation(line: 164, column: 50, scope: !487)
!509 = !DILocation(line: 164, column: 59, scope: !487)
!510 = !DILocation(line: 165, column: 54, scope: !487)
!511 = !DILocation(line: 165, column: 61, scope: !487)
!512 = !DILocation(line: 0, scope: !486)
!513 = !DILocation(line: 167, column: 17, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !6, line: 166, column: 64)
!515 = distinct !DILexicalBlock(scope: !486, file: !6, line: 166, column: 13)
!516 = !DILocation(line: 167, column: 76, scope: !514)
!517 = !DILocation(line: 169, column: 54, scope: !487)
!518 = !DILocation(line: 169, column: 69, scope: !487)
!519 = !DILocation(line: 162, column: 50, scope: !487)
!520 = !DILocation(line: 162, column: 13, scope: !487)
!521 = !DILocation(line: 0, scope: !490)
!522 = !DILocation(line: 174, column: 54, scope: !493)
!523 = !DILocation(line: 174, column: 61, scope: !493)
!524 = !DILocation(line: 174, column: 13, scope: !494)
!525 = !DILocation(line: 175, column: 61, scope: !492)
!526 = !DILocation(line: 0, scope: !492)
!527 = !DILocation(line: 0, scope: !370, inlinedAt: !528)
!528 = distinct !DILocation(line: 181, column: 25, scope: !475)
!529 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !528)
!530 = !DILocation(line: 0, scope: !379, inlinedAt: !531)
!531 = distinct !DILocation(line: 181, column: 5, scope: !475)
!532 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !531)
!533 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !531)
!534 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !535)
!535 = distinct !DILocation(line: 181, column: 5, scope: !475)
!536 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !535)
!537 = !DILocation(line: 0, scope: !392, inlinedAt: !538)
!538 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !531)
!539 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !538)
!540 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !538)
!541 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !538)
!542 = !DILocation(line: 172, column: 17, scope: !401, inlinedAt: !531)
!543 = !DILocation(line: 181, column: 13, scope: !404, inlinedAt: !531)
!544 = !DILocation(line: 182, column: 5, scope: !475)
!545 = !DILocation(line: 0, scope: !437, inlinedAt: !546)
!546 = distinct !DILocation(line: 183, column: 1, scope: !475)
!547 = !DILocation(line: 20, column: 9, scope: !442, inlinedAt: !546)
!548 = !DILocation(line: 183, column: 1, scope: !475)
!549 = !DILocation(line: 0, scope: !353, inlinedAt: !535)
!550 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !535)
!551 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !535)
!552 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !535)
!553 = !DISubprogram(name: "malloc", scope: !31, file: !31, line: 87, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!554 = !DISubroutineType(types: !555)
!555 = !{!20, !556}
!556 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!557 = distinct !DISubprogram(name: "halide_hexagon_allocate_from_dma_pool", scope: !6, file: !6, line: 185, type: !558, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!20, !20, !20}
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "user_context", arg: 1, scope: !557, file: !6, line: 185, type: !20)
!562 = !DILocalVariable(name: "virtual_engine_id", arg: 2, scope: !557, file: !6, line: 185, type: !20)
!563 = !DILocation(line: 0, scope: !557)
!564 = !DILocalVariable(name: "user_context", arg: 1, scope: !565, file: !6, line: 45, type: !20)
!565 = distinct !DISubprogram(name: "hexagon_dma_pool_get", linkageName: "_ZN12_GLOBAL__N_120hexagon_dma_pool_getEPvS0_", scope: !566, file: !6, line: 45, type: !558, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !567)
!566 = !DINamespace(scope: null)
!567 = !{!564, !568, !569, !570, !571, !573, !576}
!568 = !DILocalVariable(name: "virtual_engine_id", arg: 2, scope: !565, file: !6, line: 45, type: !20)
!569 = !DILocalVariable(name: "lock", scope: !565, file: !6, line: 48, type: !251)
!570 = !DILocalVariable(name: "virtual_engine_addr", scope: !565, file: !6, line: 50, type: !113)
!571 = !DILocalVariable(name: "j", scope: !572, file: !6, line: 52, type: !53)
!572 = distinct !DILexicalBlock(scope: !565, file: !6, line: 52, column: 5)
!573 = !DILocalVariable(name: "dma_id", scope: !574, file: !6, line: 53, type: !53)
!574 = distinct !DILexicalBlock(scope: !575, file: !6, line: 52, column: 67)
!575 = distinct !DILexicalBlock(scope: !572, file: !6, line: 52, column: 5)
!576 = !DILocalVariable(name: "j", scope: !577, file: !6, line: 63, type: !53)
!577 = distinct !DILexicalBlock(scope: !578, file: !6, line: 63, column: 9)
!578 = distinct !DILexicalBlock(scope: !579, file: !6, line: 62, column: 73)
!579 = distinct !DILexicalBlock(scope: !565, file: !6, line: 62, column: 9)
!580 = !DILocation(line: 0, scope: !565, inlinedAt: !581)
!581 = distinct !DILocation(line: 186, column: 12, scope: !557)
!582 = !DILocation(line: 46, column: 5, scope: !583, inlinedAt: !581)
!583 = distinct !DILexicalBlock(scope: !584, file: !6, line: 46, column: 5)
!584 = distinct !DILexicalBlock(scope: !565, file: !6, line: 46, column: 5)
!585 = !DILocation(line: 46, column: 5, scope: !584, inlinedAt: !581)
!586 = !DILocation(line: 46, column: 5, scope: !587, inlinedAt: !581)
!587 = distinct !DILexicalBlock(scope: !583, file: !6, line: 46, column: 5)
!588 = !DILocation(line: 47, column: 5, scope: !589, inlinedAt: !581)
!589 = distinct !DILexicalBlock(scope: !590, file: !6, line: 47, column: 5)
!590 = distinct !DILexicalBlock(scope: !565, file: !6, line: 47, column: 5)
!591 = !DILocation(line: 47, column: 5, scope: !590, inlinedAt: !581)
!592 = !DILocation(line: 47, column: 5, scope: !593, inlinedAt: !581)
!593 = distinct !DILexicalBlock(scope: !589, file: !6, line: 47, column: 5)
!594 = !DILocation(line: 0, scope: !300, inlinedAt: !595)
!595 = distinct !DILocation(line: 48, column: 21, scope: !565, inlinedAt: !581)
!596 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !595)
!597 = !DILocation(line: 0, scope: !572, inlinedAt: !581)
!598 = !DILocation(line: 52, column: 46, scope: !575, inlinedAt: !581)
!599 = !DILocation(line: 52, column: 23, scope: !575, inlinedAt: !581)
!600 = !DILocation(line: 52, column: 5, scope: !572, inlinedAt: !581)
!601 = !DILocation(line: 53, column: 22, scope: !574, inlinedAt: !581)
!602 = !DILocation(line: 0, scope: !574, inlinedAt: !581)
!603 = !DILocation(line: 54, column: 21, scope: !604, inlinedAt: !581)
!604 = distinct !DILexicalBlock(scope: !574, file: !6, line: 54, column: 13)
!605 = !DILocation(line: 54, column: 28, scope: !604, inlinedAt: !581)
!606 = !DILocation(line: 53, column: 61, scope: !574, inlinedAt: !581)
!607 = !DILocation(line: 54, column: 74, scope: !604, inlinedAt: !581)
!608 = !DILocation(line: 54, column: 79, scope: !604, inlinedAt: !581)
!609 = !DILocation(line: 54, column: 13, scope: !574, inlinedAt: !581)
!610 = !DILocation(line: 55, column: 60, scope: !611, inlinedAt: !581)
!611 = distinct !DILexicalBlock(scope: !604, file: !6, line: 54, column: 90)
!612 = !DILocation(line: 56, column: 62, scope: !611, inlinedAt: !581)
!613 = !DILocation(line: 52, column: 63, scope: !575, inlinedAt: !581)
!614 = distinct !{!614, !600, !615, !412}
!615 = !DILocation(line: 58, column: 5, scope: !572, inlinedAt: !581)
!616 = !DILocation(line: 62, column: 45, scope: !579, inlinedAt: !581)
!617 = !DILocation(line: 62, column: 9, scope: !565, inlinedAt: !581)
!618 = !DILocation(line: 0, scope: !577, inlinedAt: !581)
!619 = !DILocation(line: 64, column: 54, scope: !620, inlinedAt: !581)
!620 = distinct !DILexicalBlock(scope: !621, file: !6, line: 64, column: 17)
!621 = distinct !DILexicalBlock(scope: !622, file: !6, line: 63, column: 61)
!622 = distinct !DILexicalBlock(scope: !577, file: !6, line: 63, column: 9)
!623 = !DILocation(line: 64, column: 63, scope: !620, inlinedAt: !581)
!624 = !DILocation(line: 64, column: 17, scope: !621, inlinedAt: !581)
!625 = !DILocation(line: 64, column: 17, scope: !620, inlinedAt: !581)
!626 = !DILocation(line: 65, column: 63, scope: !627, inlinedAt: !581)
!627 = distinct !DILexicalBlock(scope: !620, file: !6, line: 64, column: 73)
!628 = !DILocation(line: 66, column: 92, scope: !627, inlinedAt: !581)
!629 = !DILocation(line: 66, column: 38, scope: !627, inlinedAt: !581)
!630 = !DILocation(line: 66, column: 17, scope: !627, inlinedAt: !581)
!631 = !DILocation(line: 66, column: 90, scope: !627, inlinedAt: !581)
!632 = !DILocation(line: 67, column: 22, scope: !633, inlinedAt: !581)
!633 = distinct !DILexicalBlock(scope: !627, file: !6, line: 67, column: 21)
!634 = !DILocation(line: 67, column: 59, scope: !633, inlinedAt: !581)
!635 = !DILocation(line: 67, column: 21, scope: !627, inlinedAt: !581)
!636 = !DILocation(line: 68, column: 80, scope: !637, inlinedAt: !581)
!637 = distinct !DILexicalBlock(scope: !633, file: !6, line: 67, column: 72)
!638 = !DILocation(line: 68, column: 21, scope: !637, inlinedAt: !581)
!639 = !DILocation(line: 68, column: 58, scope: !637, inlinedAt: !581)
!640 = !DILocation(line: 68, column: 70, scope: !637, inlinedAt: !581)
!641 = !DILocation(line: 69, column: 21, scope: !642, inlinedAt: !581)
!642 = distinct !DILexicalBlock(scope: !643, file: !6, line: 69, column: 21)
!643 = distinct !DILexicalBlock(scope: !637, file: !6, line: 69, column: 21)
!644 = !DILocation(line: 69, column: 21, scope: !643, inlinedAt: !581)
!645 = !DILocation(line: 69, column: 21, scope: !646, inlinedAt: !581)
!646 = distinct !DILexicalBlock(scope: !642, file: !6, line: 69, column: 21)
!647 = !DILocation(line: 72, column: 24, scope: !627, inlinedAt: !581)
!648 = !DILocation(line: 72, column: 61, scope: !627, inlinedAt: !581)
!649 = !DILocation(line: 71, column: 52, scope: !627, inlinedAt: !581)
!650 = !DILocation(line: 0, scope: !353, inlinedAt: !651)
!651 = distinct !DILocation(line: 76, column: 5, scope: !565, inlinedAt: !581)
!652 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !651)
!653 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !651)
!654 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !651)
!655 = !DILocation(line: 0, scope: !370, inlinedAt: !656)
!656 = distinct !DILocation(line: 76, column: 25, scope: !565, inlinedAt: !581)
!657 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !656)
!658 = !DILocation(line: 0, scope: !379, inlinedAt: !659)
!659 = distinct !DILocation(line: 76, column: 5, scope: !565, inlinedAt: !581)
!660 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !659)
!661 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !659)
!662 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !651)
!663 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !651)
!664 = !DILocation(line: 0, scope: !392, inlinedAt: !665)
!665 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !659)
!666 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !665)
!667 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !665)
!668 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !665)
!669 = !DILocation(line: 172, column: 17, scope: !401, inlinedAt: !659)
!670 = !DILocation(line: 181, column: 13, scope: !404, inlinedAt: !659)
!671 = !DILocation(line: 77, column: 5, scope: !565, inlinedAt: !581)
!672 = !DILocation(line: 0, scope: !437, inlinedAt: !673)
!673 = distinct !DILocation(line: 78, column: 1, scope: !565, inlinedAt: !581)
!674 = !DILocation(line: 20, column: 9, scope: !442, inlinedAt: !673)
!675 = !DILocation(line: 186, column: 5, scope: !557)
!676 = distinct !DISubprogram(name: "halide_hexagon_free_to_dma_pool", scope: !6, file: !6, line: 189, type: !677, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{!53, !20, !20, !20}
!679 = !{!680, !681, !682}
!680 = !DILocalVariable(name: "user_context", arg: 1, scope: !676, file: !6, line: 189, type: !20)
!681 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !676, file: !6, line: 189, type: !20)
!682 = !DILocalVariable(name: "virtual_engine_id", arg: 3, scope: !676, file: !6, line: 189, type: !20)
!683 = !DILocation(line: 0, scope: !676)
!684 = !DILocalVariable(name: "user_context", arg: 1, scope: !685, file: !6, line: 81, type: !20)
!685 = distinct !DISubprogram(name: "hexagon_dma_pool_put", linkageName: "_ZN12_GLOBAL__N_120hexagon_dma_pool_putEPvS0_S0_", scope: !566, file: !6, line: 81, type: !677, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !686)
!686 = !{!684, !687, !688, !689, !690, !691, !693}
!687 = !DILocalVariable(name: "dma_engine", arg: 2, scope: !685, file: !6, line: 81, type: !20)
!688 = !DILocalVariable(name: "virtual_engine_id", arg: 3, scope: !685, file: !6, line: 81, type: !20)
!689 = !DILocalVariable(name: "lock", scope: !685, file: !6, line: 83, type: !251)
!690 = !DILocalVariable(name: "virtual_engine_addr", scope: !685, file: !6, line: 85, type: !113)
!691 = !DILocalVariable(name: "j", scope: !692, file: !6, line: 86, type: !53)
!692 = distinct !DILexicalBlock(scope: !685, file: !6, line: 86, column: 5)
!693 = !DILocalVariable(name: "dma_id", scope: !694, file: !6, line: 87, type: !53)
!694 = distinct !DILexicalBlock(scope: !695, file: !6, line: 86, column: 67)
!695 = distinct !DILexicalBlock(scope: !692, file: !6, line: 86, column: 5)
!696 = !DILocation(line: 0, scope: !685, inlinedAt: !697)
!697 = distinct !DILocation(line: 190, column: 12, scope: !676)
!698 = !DILocation(line: 82, column: 5, scope: !699, inlinedAt: !697)
!699 = distinct !DILexicalBlock(scope: !700, file: !6, line: 82, column: 5)
!700 = distinct !DILexicalBlock(scope: !685, file: !6, line: 82, column: 5)
!701 = !DILocation(line: 82, column: 5, scope: !700, inlinedAt: !697)
!702 = !DILocation(line: 82, column: 5, scope: !703, inlinedAt: !697)
!703 = distinct !DILexicalBlock(scope: !699, file: !6, line: 82, column: 5)
!704 = !DILocation(line: 0, scope: !300, inlinedAt: !705)
!705 = distinct !DILocation(line: 83, column: 21, scope: !685, inlinedAt: !697)
!706 = !DILocation(line: 16, column: 9, scope: !307, inlinedAt: !705)
!707 = !DILocation(line: 0, scope: !692, inlinedAt: !697)
!708 = !DILocation(line: 86, column: 46, scope: !695, inlinedAt: !697)
!709 = !DILocation(line: 86, column: 23, scope: !695, inlinedAt: !697)
!710 = !DILocation(line: 86, column: 5, scope: !692, inlinedAt: !697)
!711 = !DILocation(line: 87, column: 22, scope: !694, inlinedAt: !697)
!712 = !DILocation(line: 0, scope: !694, inlinedAt: !697)
!713 = !DILocation(line: 88, column: 21, scope: !714, inlinedAt: !697)
!714 = distinct !DILexicalBlock(scope: !694, file: !6, line: 88, column: 13)
!715 = !DILocation(line: 88, column: 28, scope: !714, inlinedAt: !697)
!716 = !DILocation(line: 87, column: 61, scope: !694, inlinedAt: !697)
!717 = !DILocation(line: 88, column: 74, scope: !714, inlinedAt: !697)
!718 = !DILocation(line: 88, column: 86, scope: !714, inlinedAt: !697)
!719 = !DILocation(line: 88, column: 13, scope: !694, inlinedAt: !697)
!720 = !DILocation(line: 89, column: 55, scope: !721, inlinedAt: !697)
!721 = distinct !DILexicalBlock(scope: !714, file: !6, line: 88, column: 102)
!722 = !DILocation(line: 89, column: 60, scope: !721, inlinedAt: !697)
!723 = !DILocation(line: 86, column: 63, scope: !695, inlinedAt: !697)
!724 = distinct !{!724, !710, !725, !412}
!725 = !DILocation(line: 92, column: 5, scope: !692, inlinedAt: !697)
!726 = !DILocation(line: 0, scope: !353, inlinedAt: !727)
!727 = distinct !DILocation(line: 93, column: 5, scope: !685, inlinedAt: !697)
!728 = !DILocation(line: 44, column: 27, scope: !362, inlinedAt: !727)
!729 = !DILocation(line: 48, column: 13, scope: !367, inlinedAt: !727)
!730 = !DILocation(line: 48, column: 13, scope: !365, inlinedAt: !727)
!731 = !DILocation(line: 0, scope: !370, inlinedAt: !732)
!732 = distinct !DILocation(line: 93, column: 25, scope: !685, inlinedAt: !697)
!733 = !DILocation(line: 62, column: 19, scope: !376, inlinedAt: !732)
!734 = !DILocation(line: 0, scope: !379, inlinedAt: !735)
!735 = distinct !DILocation(line: 93, column: 5, scope: !685, inlinedAt: !697)
!736 = !DILocation(line: 168, column: 13, scope: !384, inlinedAt: !735)
!737 = !DILocation(line: 169, column: 9, scope: !384, inlinedAt: !735)
!738 = !DILocation(line: 49, column: 23, scope: !389, inlinedAt: !727)
!739 = !DILocation(line: 50, column: 18, scope: !389, inlinedAt: !727)
!740 = !DILocation(line: 0, scope: !392, inlinedAt: !741)
!741 = distinct !DILocation(line: 170, column: 13, scope: !396, inlinedAt: !735)
!742 = !DILocation(line: 163, column: 81, scope: !392, inlinedAt: !741)
!743 = !DILocation(line: 163, column: 87, scope: !392, inlinedAt: !741)
!744 = !DILocation(line: 163, column: 15, scope: !392, inlinedAt: !741)
!745 = !DILocation(line: 172, column: 17, scope: !401, inlinedAt: !735)
!746 = !DILocation(line: 181, column: 13, scope: !404, inlinedAt: !735)
!747 = !DILocation(line: 94, column: 5, scope: !685, inlinedAt: !697)
!748 = !DILocation(line: 0, scope: !437, inlinedAt: !749)
!749 = distinct !DILocation(line: 95, column: 1, scope: !685, inlinedAt: !697)
!750 = !DILocation(line: 20, column: 9, scope: !442, inlinedAt: !749)
!751 = !DILocation(line: 190, column: 5, scope: !676)
!752 = !DISubprogram(name: "halide_mutex_lock", scope: !40, file: !40, line: 133, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !255}
!755 = !DISubprogram(name: "halide_mutex_unlock", scope: !40, file: !40, line: 134, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!756 = !DISubprogram(name: "hDmaWrapper_AllocDma", scope: !101, file: !101, line: 178, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!757 = !DISubroutineType(types: !758)
!758 = !{!20}
!759 = !DISubprogram(name: "halide_error", scope: !40, file: !40, line: 111, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!760 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !40, file: !40, line: 973, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!761 = !DISubroutineType(types: !762)
!762 = !{!53, !20, !166, !46}
!763 = !DISubprogram(name: "halide_string_to_string", scope: !31, file: !31, line: 120, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !462)
!764 = !DISubroutineType(types: !765)
!765 = !{!121, !121, !121, !137}
