; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t" = type { [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t"], [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t"] }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t" = type { i8, i8, i8* }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t" = type { i8, i8, [4 x i8] }
%struct.halide_mutex = type { [1 x i32] }

@_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, align 4
@_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE = weak global %struct.halide_mutex zeroinitializer, align 4
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
define weak i32 @halide_hexagon_free_dma_resource(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i32 0, i32 0)) #2
  tail call void @abort() #2
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i32 0, i32 0)) #2
  tail call void @abort() #2
  br label %9

9:                                                ; preds = %6, %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %10 = getelementptr inbounds i8, i8* %1, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i8 %11, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i32 0, i32 0, i32 %13, i32 1
  store i8 0, i8* %17, align 1, !tbaa !8
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i32 0, i32 0, i32 %13, i32 0
  store i8 0, i8* %18, align 4, !tbaa !11
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i32 0, i32 0, i32 %13, i32 2
  %20 = load i8*, i8** %19, align 4, !tbaa !12
  %21 = icmp eq i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %20) #2
  br label %24

24:                                               ; preds = %15, %22, %9
  store i8 0, i8* %10, align 1, !tbaa !7
  %25 = getelementptr inbounds i8, i8* %1, i32 3
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = icmp eq i8 %26, 0
  br i1 %29, label %91, label %82

30:                                               ; preds = %59
  %31 = load i8*, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 4, !tbaa !3
  tail call void @free(i8* %31) #2
  store %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %32 = tail call i32 @halide_hexagon_free_l2_pool(i8* %0) #2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %80, label %65

34:                                               ; preds = %121, %62
  %35 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %64, %62 ], [ %123, %121 ]
  %36 = phi i32 [ %60, %62 ], [ 0, %121 ]
  %37 = phi i32 [ %63, %62 ], [ 0, %121 ]
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %35, i32 0, i32 0, i32 %37, i32 2
  %39 = load i8*, i8** %38, align 4, !tbaa !12
  %40 = icmp eq i8* %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %34
  %42 = tail call i32 @nDmaWrapper_FreeDma(i8* nonnull %39) #2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = tail call i8* @malloc(i32 1024) #2
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = tail call i8* @halide_string_to_string(i8* %45, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %58

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, i8* %45, i32 1023
  store i8 0, i8* %50, align 1, !tbaa !7
  %51 = tail call i8* @halide_string_to_string(i8* nonnull %45, i8* nonnull %50, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #2
  %52 = ptrtoint i8* %51 to i32
  %53 = ptrtoint i8* %45 to i32
  %54 = add i32 %52, 1
  %55 = sub i32 %54, %53
  %56 = sext i32 %55 to i64
  %57 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %45, i64 %56) #2
  tail call void @halide_error(i8* %0, i8* nonnull %45) #2
  br label %58

58:                                               ; preds = %49, %47
  tail call void @free(i8* %45) #2
  br label %59

59:                                               ; preds = %41, %58, %34
  %60 = phi i32 [ %36, %34 ], [ %42, %58 ], [ %36, %41 ]
  %61 = icmp ult i32 %37, 7
  br i1 %61, label %62, label %30, !llvm.loop !13

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %37, 1
  %64 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  br label %34

65:                                               ; preds = %30
  %66 = tail call i8* @malloc(i32 1024) #2
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = tail call i8* @halide_string_to_string(i8* %66, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %79

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, i8* %66, i32 1023
  store i8 0, i8* %71, align 1, !tbaa !7
  %72 = tail call i8* @halide_string_to_string(i8* nonnull %66, i8* nonnull %71, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)) #2
  %73 = ptrtoint i8* %72 to i32
  %74 = ptrtoint i8* %66 to i32
  %75 = add i32 %73, 1
  %76 = sub i32 %75, %74
  %77 = sext i32 %76 to i64
  %78 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %66, i64 %77) #2
  tail call void @halide_error(i8* %0, i8* nonnull %66) #2
  br label %79

79:                                               ; preds = %70, %68
  tail call void @free(i8* %66) #2
  br label %80

80:                                               ; preds = %30, %79, %121
  %81 = phi i32 [ 0, %121 ], [ %32, %79 ], [ %60, %30 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i32 %81

82:                                               ; preds = %24
  %83 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 0, i32 %28, i32 1
  store i8 0, i8* %84, align 1, !tbaa !8
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 0, i32 %28, i32 0
  store i8 0, i8* %85, align 4, !tbaa !11
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 0, i32 %28, i32 2
  %87 = load i8*, i8** %86, align 4, !tbaa !12
  %88 = icmp eq i8* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %87) #2
  br label %91

91:                                               ; preds = %89, %82, %24
  store i8 0, i8* %25, align 1, !tbaa !7
  %92 = getelementptr inbounds i8, i8* %1, i32 4
  %93 = load i8, i8* %92, align 1, !tbaa !7
  %94 = zext i8 %93 to i32
  %95 = add nsw i32 %94, -1
  %96 = icmp eq i8 %93, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %98, i32 0, i32 0, i32 %95, i32 1
  store i8 0, i8* %99, align 1, !tbaa !8
  %100 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %98, i32 0, i32 0, i32 %95, i32 0
  store i8 0, i8* %100, align 4, !tbaa !11
  %101 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %98, i32 0, i32 0, i32 %95, i32 2
  %102 = load i8*, i8** %101, align 4, !tbaa !12
  %103 = icmp eq i8* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %102) #2
  br label %106

106:                                              ; preds = %104, %97, %91
  store i8 0, i8* %92, align 1, !tbaa !7
  %107 = getelementptr inbounds i8, i8* %1, i32 5
  %108 = load i8, i8* %107, align 1, !tbaa !7
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %109, -1
  %111 = icmp eq i8 %108, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %106
  %113 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %113, i32 0, i32 0, i32 %110, i32 1
  store i8 0, i8* %114, align 1, !tbaa !8
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %113, i32 0, i32 0, i32 %110, i32 0
  store i8 0, i8* %115, align 4, !tbaa !11
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %113, i32 0, i32 0, i32 %110, i32 2
  %117 = load i8*, i8** %116, align 4, !tbaa !12
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %117) #2
  br label %121

121:                                              ; preds = %119, %112, %106
  store i8 0, i8* %107, align 1, !tbaa !7
  %122 = getelementptr inbounds i8, i8* %1, i32 1
  store i8 0, i8* %122, align 1, !tbaa !15
  store i8 0, i8* %1, align 1, !tbaa !17
  %123 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 0, i32 0
  %125 = load i8, i8* %124, align 2, !tbaa !17, !range !18
  %126 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 1, i32 0
  %127 = load i8, i8* %126, align 2, !tbaa !17, !range !18
  %128 = or i8 %125, %127
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 2, i32 0
  %130 = load i8, i8* %129, align 2, !tbaa !17, !range !18
  %131 = or i8 %128, %130
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 3, i32 0
  %133 = load i8, i8* %132, align 2, !tbaa !17, !range !18
  %134 = or i8 %131, %133
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 4, i32 0
  %136 = load i8, i8* %135, align 2, !tbaa !17, !range !18
  %137 = or i8 %134, %136
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 5, i32 0
  %139 = load i8, i8* %138, align 2, !tbaa !17, !range !18
  %140 = or i8 %137, %139
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 6, i32 0
  %142 = load i8, i8* %141, align 2, !tbaa !17, !range !18
  %143 = or i8 %140, %142
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %123, i32 0, i32 1, i32 7, i32 0
  %145 = load i8, i8* %144, align 2, !tbaa !17, !range !18
  %146 = or i8 %143, %145
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %34, label %80
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #1

declare void @abort() local_unnamed_addr #1

declare i32 @nDmaWrapper_FinishFrame(i8*) local_unnamed_addr #1

declare i32 @nDmaWrapper_FreeDma(i8*) local_unnamed_addr #1

declare void @free(i8*) local_unnamed_addr #1

declare extern_weak i32 @halide_hexagon_free_l2_pool(i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define weak i8* @halide_hexagon_allocate_dma_resource(i8* %0) local_unnamed_addr #0 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %2 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %3 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %2, null
  br i1 %3, label %4, label %82

4:                                                ; preds = %1
  %5 = tail call i8* @malloc(i32 112) #2
  store i8* %5, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 4, !tbaa !3
  store i8 0, i8* %5, align 4, !tbaa !11
  %6 = getelementptr inbounds i8, i8* %5, i32 4
  %7 = bitcast i8* %6 to i8**
  store i8* null, i8** %7, align 4, !tbaa !12
  %8 = getelementptr inbounds i8, i8* %5, i32 1
  store i8 0, i8* %8, align 1, !tbaa !8
  %9 = getelementptr inbounds i8, i8* %5, i32 64
  store i8 0, i8* %9, align 2, !tbaa !17
  %10 = getelementptr inbounds i8, i8* %5, i32 66
  store i8 0, i8* %10, align 1, !tbaa !7
  %11 = getelementptr inbounds i8, i8* %5, i32 67
  store i8 0, i8* %11, align 1, !tbaa !7
  %12 = getelementptr inbounds i8, i8* %5, i32 68
  store i8 0, i8* %12, align 1, !tbaa !7
  %13 = getelementptr inbounds i8, i8* %5, i32 69
  store i8 0, i8* %13, align 1, !tbaa !7
  %14 = getelementptr inbounds i8, i8* %5, i32 65
  store i8 0, i8* %14, align 1, !tbaa !15
  %15 = getelementptr inbounds i8, i8* %5, i32 8
  store i8 0, i8* %15, align 4, !tbaa !11
  %16 = getelementptr inbounds i8, i8* %5, i32 12
  %17 = bitcast i8* %16 to i8**
  store i8* null, i8** %17, align 4, !tbaa !12
  %18 = getelementptr inbounds i8, i8* %5, i32 9
  store i8 0, i8* %18, align 1, !tbaa !8
  %19 = getelementptr inbounds i8, i8* %5, i32 70
  store i8 0, i8* %19, align 2, !tbaa !17
  %20 = getelementptr inbounds i8, i8* %5, i32 72
  store i8 0, i8* %20, align 1, !tbaa !7
  %21 = getelementptr inbounds i8, i8* %5, i32 73
  store i8 0, i8* %21, align 1, !tbaa !7
  %22 = getelementptr inbounds i8, i8* %5, i32 74
  store i8 0, i8* %22, align 1, !tbaa !7
  %23 = getelementptr inbounds i8, i8* %5, i32 75
  store i8 0, i8* %23, align 1, !tbaa !7
  %24 = getelementptr inbounds i8, i8* %5, i32 71
  store i8 0, i8* %24, align 1, !tbaa !15
  %25 = getelementptr inbounds i8, i8* %5, i32 16
  store i8 0, i8* %25, align 4, !tbaa !11
  %26 = getelementptr inbounds i8, i8* %5, i32 20
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 4, !tbaa !12
  %28 = getelementptr inbounds i8, i8* %5, i32 17
  store i8 0, i8* %28, align 1, !tbaa !8
  %29 = getelementptr inbounds i8, i8* %5, i32 76
  store i8 0, i8* %29, align 2, !tbaa !17
  %30 = getelementptr inbounds i8, i8* %5, i32 78
  store i8 0, i8* %30, align 1, !tbaa !7
  %31 = getelementptr inbounds i8, i8* %5, i32 79
  store i8 0, i8* %31, align 1, !tbaa !7
  %32 = getelementptr inbounds i8, i8* %5, i32 80
  store i8 0, i8* %32, align 1, !tbaa !7
  %33 = getelementptr inbounds i8, i8* %5, i32 81
  store i8 0, i8* %33, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, i8* %5, i32 77
  store i8 0, i8* %34, align 1, !tbaa !15
  %35 = getelementptr inbounds i8, i8* %5, i32 24
  store i8 0, i8* %35, align 4, !tbaa !11
  %36 = getelementptr inbounds i8, i8* %5, i32 28
  %37 = bitcast i8* %36 to i8**
  store i8* null, i8** %37, align 4, !tbaa !12
  %38 = getelementptr inbounds i8, i8* %5, i32 25
  store i8 0, i8* %38, align 1, !tbaa !8
  %39 = getelementptr inbounds i8, i8* %5, i32 82
  store i8 0, i8* %39, align 2, !tbaa !17
  %40 = getelementptr inbounds i8, i8* %5, i32 84
  store i8 0, i8* %40, align 1, !tbaa !7
  %41 = getelementptr inbounds i8, i8* %5, i32 85
  store i8 0, i8* %41, align 1, !tbaa !7
  %42 = getelementptr inbounds i8, i8* %5, i32 86
  store i8 0, i8* %42, align 1, !tbaa !7
  %43 = getelementptr inbounds i8, i8* %5, i32 87
  store i8 0, i8* %43, align 1, !tbaa !7
  %44 = getelementptr inbounds i8, i8* %5, i32 83
  store i8 0, i8* %44, align 1, !tbaa !15
  %45 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 4, i32 0
  store i8 0, i8* %46, align 4, !tbaa !11
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 4, i32 2
  store i8* null, i8** %47, align 4, !tbaa !12
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 4, i32 1
  store i8 0, i8* %48, align 1, !tbaa !8
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 0
  store i8 0, i8* %49, align 2, !tbaa !17
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 0
  store i8 0, i8* %50, align 1, !tbaa !7
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 1
  store i8 0, i8* %51, align 1, !tbaa !7
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 2
  store i8 0, i8* %52, align 1, !tbaa !7
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 2, i32 3
  store i8 0, i8* %53, align 1, !tbaa !7
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 4, i32 1
  store i8 0, i8* %54, align 1, !tbaa !15
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 5, i32 0
  store i8 0, i8* %55, align 4, !tbaa !11
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 5, i32 2
  store i8* null, i8** %56, align 4, !tbaa !12
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 5, i32 1
  store i8 0, i8* %57, align 1, !tbaa !8
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 0
  store i8 0, i8* %58, align 2, !tbaa !17
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 0
  store i8 0, i8* %59, align 1, !tbaa !7
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 1
  store i8 0, i8* %60, align 1, !tbaa !7
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 2
  store i8 0, i8* %61, align 1, !tbaa !7
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 2, i32 3
  store i8 0, i8* %62, align 1, !tbaa !7
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 5, i32 1
  store i8 0, i8* %63, align 1, !tbaa !15
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 6, i32 0
  store i8 0, i8* %64, align 4, !tbaa !11
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 6, i32 2
  store i8* null, i8** %65, align 4, !tbaa !12
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 6, i32 1
  store i8 0, i8* %66, align 1, !tbaa !8
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 0
  store i8 0, i8* %67, align 2, !tbaa !17
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 0
  store i8 0, i8* %68, align 1, !tbaa !7
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 1
  store i8 0, i8* %69, align 1, !tbaa !7
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 2
  store i8 0, i8* %70, align 1, !tbaa !7
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 2, i32 3
  store i8 0, i8* %71, align 1, !tbaa !7
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 6, i32 1
  store i8 0, i8* %72, align 1, !tbaa !15
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 7, i32 0
  store i8 0, i8* %73, align 4, !tbaa !11
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 7, i32 2
  store i8* null, i8** %74, align 4, !tbaa !12
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 0, i32 7, i32 1
  store i8 0, i8* %75, align 1, !tbaa !8
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 0
  store i8 0, i8* %76, align 2, !tbaa !17
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 0
  store i8 0, i8* %77, align 1, !tbaa !7
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 1
  store i8 0, i8* %78, align 1, !tbaa !7
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 2
  store i8 0, i8* %79, align 1, !tbaa !7
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 2, i32 3
  store i8 0, i8* %80, align 1, !tbaa !7
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i32 0, i32 1, i32 7, i32 1
  store i8 0, i8* %81, align 1, !tbaa !15
  br label %82

82:                                               ; preds = %4, %1
  %83 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %45, %4 ], [ %2, %1 ]
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 0, i32 0
  %85 = load i8, i8* %84, align 2, !tbaa !17, !range !18
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 1, i32 0
  %89 = load i8, i8* %88, align 2, !tbaa !17, !range !18
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %127, %123, %119, %115, %111, %107, %87, %82
  %92 = phi i8* [ %84, %82 ], [ %88, %87 ], [ %108, %107 ], [ %112, %111 ], [ %116, %115 ], [ %120, %119 ], [ %124, %123 ], [ %128, %127 ]
  store i8 1, i8* %92, align 2, !tbaa !17
  br label %105

93:                                               ; preds = %131
  %94 = tail call i8* @halide_string_to_string(i8* %132, i8* null, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %104

95:                                               ; preds = %131
  %96 = getelementptr inbounds i8, i8* %132, i32 1023
  store i8 0, i8* %96, align 1, !tbaa !7
  %97 = tail call i8* @halide_string_to_string(i8* nonnull %132, i8* nonnull %96, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #2
  %98 = ptrtoint i8* %97 to i32
  %99 = ptrtoint i8* %132 to i32
  %100 = add i32 %98, 1
  %101 = sub i32 %100, %99
  %102 = sext i32 %101 to i64
  %103 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %132, i64 %102) #2
  tail call void @halide_error(i8* %0, i8* nonnull %132) #2
  br label %104

104:                                              ; preds = %95, %93
  tail call void @free(i8* %132) #2
  br label %105

105:                                              ; preds = %91, %104
  %106 = phi i8* [ null, %104 ], [ %92, %91 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i8* %106

107:                                              ; preds = %87
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 2, i32 0
  %109 = load i8, i8* %108, align 2, !tbaa !17, !range !18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %91, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 3, i32 0
  %113 = load i8, i8* %112, align 2, !tbaa !17, !range !18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %91, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 4, i32 0
  %117 = load i8, i8* %116, align 2, !tbaa !17, !range !18
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %91, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 5, i32 0
  %121 = load i8, i8* %120, align 2, !tbaa !17, !range !18
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %91, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 6, i32 0
  %125 = load i8, i8* %124, align 2, !tbaa !17, !range !18
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %91, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i32 0, i32 1, i32 7, i32 0
  %129 = load i8, i8* %128, align 2, !tbaa !17, !range !18
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %91, label %131

131:                                              ; preds = %127
  %132 = tail call i8* @malloc(i32 1024) #2
  %133 = icmp eq i8* %132, null
  br i1 %133, label %93, label %95
}

declare i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind
define weak i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i32 0, i32 0)) #2
  tail call void @abort() #2
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i32 0, i32 0)) #2
  tail call void @abort() #2
  br label %9

9:                                                ; preds = %8, %6
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %10 = getelementptr inbounds i8, i8* %1, i32 1
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  br label %38

16:                                               ; preds = %9
  %17 = getelementptr inbounds i8, i8* %1, i32 2
  %18 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4
  br label %19

19:                                               ; preds = %33, %16
  %20 = phi i32 [ 0, %16 ], [ %34, %33 ]
  %21 = getelementptr inbounds i8, i8* %17, i32 %20
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %23, -1
  %25 = icmp eq i8 %22, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %18, i32 0, i32 0, i32 %24, i32 0
  %28 = load i8, i8* %27, align 4, !tbaa !11, !range !18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  store i8 1, i8* %27, align 4, !tbaa !11
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %18, i32 0, i32 0, i32 %24, i32 2
  %32 = load i8*, i8** %31, align 4, !tbaa !12
  br label %113

33:                                               ; preds = %26, %19
  %34 = add nuw nsw i32 %20, 1
  %35 = icmp ult i32 %34, %12
  br i1 %35, label %19, label %36, !llvm.loop !19

36:                                               ; preds = %33
  %37 = icmp ult i8 %11, 4
  br i1 %37, label %38, label %74

38:                                               ; preds = %14, %36
  %39 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %15, %14 ], [ %18, %36 ]
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 0, i32 1
  %41 = load i8, i8* %40, align 1, !tbaa !8, !range !18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %109, %105, %101, %97, %93, %89, %70, %38
  %44 = phi i32 [ 0, %38 ], [ 1, %70 ], [ 2, %89 ], [ 3, %93 ], [ 4, %97 ], [ 5, %101 ], [ 6, %105 ], [ 7, %109 ]
  %45 = phi i8* [ %40, %38 ], [ %71, %70 ], [ %90, %89 ], [ %94, %93 ], [ %98, %97 ], [ %102, %101 ], [ %106, %105 ], [ %110, %109 ]
  store i8 1, i8* %45, align 1, !tbaa !8
  %46 = trunc i32 %44 to i8
  %47 = add nuw nsw i8 %46, 1
  %48 = getelementptr inbounds i8, i8* %1, i32 2
  %49 = getelementptr inbounds i8, i8* %48, i32 %12
  store i8 %47, i8* %49, align 1, !tbaa !7
  %50 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %50, i32 0, i32 0, i32 %44, i32 2
  %52 = load i8*, i8** %51, align 4, !tbaa !12
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = tail call i8* @hDmaWrapper_AllocDma() #2
  %56 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %56, i32 0, i32 0, i32 %44, i32 2
  store i8* %55, i8** %57, align 4, !tbaa !12
  %58 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %58, i32 0, i32 0, i32 %44, i32 2
  %60 = load i8*, i8** %59, align 4, !tbaa !12
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.7, i32 0, i32 0)) #2
  tail call void @abort() #2
  %63 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4, !tbaa !3
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %63, i32 0, i32 0, i32 %44, i32 2
  %65 = load i8*, i8** %64, align 4, !tbaa !12
  br label %66

66:                                               ; preds = %62, %54, %43
  %67 = phi i8* [ %52, %43 ], [ %65, %62 ], [ %60, %54 ]
  %68 = load i8, i8* %10, align 1, !tbaa !15
  %69 = add i8 %68, 1
  store i8 %69, i8* %10, align 1, !tbaa !15
  br label %113

70:                                               ; preds = %38
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 1, i32 1
  %72 = load i8, i8* %71, align 1, !tbaa !8, !range !18
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %43, label %89

74:                                               ; preds = %109, %36
  %75 = tail call i8* @malloc(i32 1024) #2
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %88

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, i8* %75, i32 1023
  store i8 0, i8* %80, align 1, !tbaa !7
  %81 = tail call i8* @halide_string_to_string(i8* nonnull %75, i8* nonnull %80, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0)) #2
  %82 = ptrtoint i8* %81 to i32
  %83 = ptrtoint i8* %75 to i32
  %84 = sub i32 1, %83
  %85 = add i32 %84, %82
  %86 = sext i32 %85 to i64
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %75, i64 %86) #2
  tail call void @halide_error(i8* %0, i8* nonnull %75) #2
  br label %88

88:                                               ; preds = %79, %77
  tail call void @free(i8* %75) #2
  br label %113

89:                                               ; preds = %70
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 2, i32 1
  %91 = load i8, i8* %90, align 1, !tbaa !8, !range !18
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %43, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 3, i32 1
  %95 = load i8, i8* %94, align 1, !tbaa !8, !range !18
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %43, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 4, i32 1
  %99 = load i8, i8* %98, align 1, !tbaa !8, !range !18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %43, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 5, i32 1
  %103 = load i8, i8* %102, align 1, !tbaa !8, !range !18
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %43, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 6, i32 1
  %107 = load i8, i8* %106, align 1, !tbaa !8, !range !18
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %43, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i32 0, i32 0, i32 7, i32 1
  %111 = load i8, i8* %110, align 1, !tbaa !8, !range !18
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %43, label %74

113:                                              ; preds = %30, %66, %88
  %114 = phi i8* [ null, %88 ], [ %32, %30 ], [ %67, %66 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i8* %114
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 {
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.9, i32 0, i32 0)) #2
  tail call void @abort() #2
  br label %6

6:                                                ; preds = %5, %3
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %7 = getelementptr inbounds i8, i8* %2, i32 1
  %8 = load i8, i8* %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %2, i32 2
  %12 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 4
  %13 = zext i8 %8 to i32
  br label %14

14:                                               ; preds = %27, %10
  %15 = phi i32 [ 0, %10 ], [ %28, %27 ]
  %16 = getelementptr inbounds i8, i8* %11, i32 %15
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = zext i8 %17 to i32
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i32 0, i32 0, i32 %21, i32 2
  %23 = load i8*, i8** %22, align 4, !tbaa !12
  %24 = icmp eq i8* %23, %1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i32 0, i32 0, i32 %21, i32 0
  store i8 0, i8* %26, align 4, !tbaa !11
  br label %45

27:                                               ; preds = %19, %14
  %28 = add nuw nsw i32 %15, 1
  %29 = icmp ult i32 %28, %13
  br i1 %29, label %14, label %30, !llvm.loop !20

30:                                               ; preds = %27, %6
  %31 = tail call i8* @malloc(i32 1024) #2
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0)) #2
  br label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %31, i32 1023
  store i8 0, i8* %36, align 1, !tbaa !7
  %37 = tail call i8* @halide_string_to_string(i8* nonnull %31, i8* nonnull %36, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0)) #2
  %38 = ptrtoint i8* %37 to i32
  %39 = ptrtoint i8* %31 to i32
  %40 = sub i32 1, %39
  %41 = add i32 %40, %38
  %42 = sext i32 %41 to i64
  %43 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %42) #2
  tail call void @halide_error(i8* %0, i8* nonnull %31) #2
  br label %44

44:                                               ; preds = %35, %33
  tail call void @free(i8* %31) #2
  br label %45

45:                                               ; preds = %25, %44
  %46 = phi i32 [ -1, %44 ], [ 0, %25 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i32 %46
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #1

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #1

declare i8* @hDmaWrapper_AllocDma() local_unnamed_addr #1

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !10, i64 1}
!9 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma20hexagon_dma_engine_tE", !10, i64 0, !10, i64 1, !4, i64 4}
!10 = !{!"bool", !5, i64 0}
!11 = !{!9, !10, i64 0}
!12 = !{!9, !4, i64 4}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !5, i64 1}
!16 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_virtual_engine_tE", !10, i64 0, !5, i64 1, !5, i64 2}
!17 = !{!16, !10, i64 0}
!18 = !{i8 0, i8 2}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
