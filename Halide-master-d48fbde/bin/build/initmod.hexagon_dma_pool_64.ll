; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/hexagon_dma_pool.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t" = type { [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t"], [8 x %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t"] }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_engine_t" = type { i8, i8, i8* }
%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_virtual_engine_t" = type { i8, i8, [4 x i8] }
%struct.halide_mutex = type { [1 x i64] }

@_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, align 8
@_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE = weak global %struct.halide_mutex zeroinitializer, align 8
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
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0)) #2
  tail call void @abort() #2
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0)) #2
  tail call void @abort() #2
  br label %9

9:                                                ; preds = %6, %8
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %10 = getelementptr inbounds i8, i8* %1, i64 2
  %11 = load i8, i8* %10, align 1, !tbaa !7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = zext i8 %11 to i64
  %15 = add nsw i64 %14, -1
  %16 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i64 0, i32 0, i64 %15, i32 1
  store i8 0, i8* %17, align 1, !tbaa !8
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i64 0, i32 0, i64 %15, i32 0
  store i8 0, i8* %18, align 8, !tbaa !11
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %16, i64 0, i32 0, i64 %15, i32 2
  %20 = load i8*, i8** %19, align 8, !tbaa !12
  %21 = icmp eq i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %20) #2
  br label %24

24:                                               ; preds = %13, %22, %9
  store i8 0, i8* %10, align 1, !tbaa !7
  %25 = getelementptr inbounds i8, i8* %1, i64 3
  %26 = load i8, i8* %25, align 1, !tbaa !7
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %89, label %78

28:                                               ; preds = %56
  %29 = load i8*, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 8, !tbaa !3
  tail call void @free(i8* %29) #2
  store %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* null, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %30 = tail call i32 @halide_hexagon_free_l2_pool(i8* %0) #2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %76, label %62

32:                                               ; preds = %119, %60
  %33 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %61, %60 ], [ %121, %119 ]
  %34 = phi i64 [ %58, %60 ], [ 0, %119 ]
  %35 = phi i32 [ %57, %60 ], [ 0, %119 ]
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %33, i64 0, i32 0, i64 %34, i32 2
  %37 = load i8*, i8** %36, align 8, !tbaa !12
  %38 = icmp eq i8* %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %32
  %40 = tail call i32 @nDmaWrapper_FreeDma(i8* nonnull %37) #2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = tail call i8* @malloc(i64 1024) #2
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call i8* @halide_string_to_string(i8* %43, i8* null, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #2
  br label %55

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, i8* %43, i64 1023
  store i8 0, i8* %48, align 1, !tbaa !7
  %49 = tail call i8* @halide_string_to_string(i8* nonnull %43, i8* nonnull %48, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #2
  %50 = ptrtoint i8* %49 to i64
  %51 = ptrtoint i8* %43 to i64
  %52 = add i64 %50, 1
  %53 = sub i64 %52, %51
  %54 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %43, i64 %53) #2
  tail call void @halide_error(i8* %0, i8* nonnull %43) #2
  br label %55

55:                                               ; preds = %47, %45
  tail call void @free(i8* %43) #2
  br label %56

56:                                               ; preds = %39, %55, %32
  %57 = phi i32 [ %35, %32 ], [ %40, %55 ], [ %35, %39 ]
  %58 = add nuw nsw i64 %34, 1
  %59 = icmp eq i64 %58, 8
  br i1 %59, label %28, label %60, !llvm.loop !13

60:                                               ; preds = %56
  %61 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  br label %32

62:                                               ; preds = %28
  %63 = tail call i8* @malloc(i64 1024) #2
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call i8* @halide_string_to_string(i8* %63, i8* null, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #2
  br label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, i8* %63, i64 1023
  store i8 0, i8* %68, align 1, !tbaa !7
  %69 = tail call i8* @halide_string_to_string(i8* nonnull %63, i8* nonnull %68, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #2
  %70 = ptrtoint i8* %69 to i64
  %71 = ptrtoint i8* %63 to i64
  %72 = add i64 %70, 1
  %73 = sub i64 %72, %71
  %74 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %63, i64 %73) #2
  tail call void @halide_error(i8* %0, i8* nonnull %63) #2
  br label %75

75:                                               ; preds = %67, %65
  tail call void @free(i8* %63) #2
  br label %76

76:                                               ; preds = %28, %75, %119
  %77 = phi i32 [ 0, %119 ], [ %30, %75 ], [ %57, %28 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i32 %77

78:                                               ; preds = %24
  %79 = zext i8 %26 to i64
  %80 = add nsw i64 %79, -1
  %81 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %81, i64 0, i32 0, i64 %80, i32 1
  store i8 0, i8* %82, align 1, !tbaa !8
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %81, i64 0, i32 0, i64 %80, i32 0
  store i8 0, i8* %83, align 8, !tbaa !11
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %81, i64 0, i32 0, i64 %80, i32 2
  %85 = load i8*, i8** %84, align 8, !tbaa !12
  %86 = icmp eq i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %85) #2
  br label %89

89:                                               ; preds = %87, %78, %24
  store i8 0, i8* %25, align 1, !tbaa !7
  %90 = getelementptr inbounds i8, i8* %1, i64 4
  %91 = load i8, i8* %90, align 1, !tbaa !7
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %89
  %94 = zext i8 %91 to i64
  %95 = add nsw i64 %94, -1
  %96 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %97 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %96, i64 0, i32 0, i64 %95, i32 1
  store i8 0, i8* %97, align 1, !tbaa !8
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %96, i64 0, i32 0, i64 %95, i32 0
  store i8 0, i8* %98, align 8, !tbaa !11
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %96, i64 0, i32 0, i64 %95, i32 2
  %100 = load i8*, i8** %99, align 8, !tbaa !12
  %101 = icmp eq i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  %103 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %100) #2
  br label %104

104:                                              ; preds = %102, %93, %89
  store i8 0, i8* %90, align 1, !tbaa !7
  %105 = getelementptr inbounds i8, i8* %1, i64 5
  %106 = load i8, i8* %105, align 1, !tbaa !7
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = zext i8 %106 to i64
  %110 = add nsw i64 %109, -1
  %111 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %111, i64 0, i32 0, i64 %110, i32 1
  store i8 0, i8* %112, align 1, !tbaa !8
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %111, i64 0, i32 0, i64 %110, i32 0
  store i8 0, i8* %113, align 8, !tbaa !11
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %111, i64 0, i32 0, i64 %110, i32 2
  %115 = load i8*, i8** %114, align 8, !tbaa !12
  %116 = icmp eq i8* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %108
  %118 = tail call i32 @nDmaWrapper_FinishFrame(i8* nonnull %115) #2
  br label %119

119:                                              ; preds = %117, %108, %104
  store i8 0, i8* %105, align 1, !tbaa !7
  %120 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 0, i8* %120, align 1, !tbaa !15
  store i8 0, i8* %1, align 1, !tbaa !17
  %121 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 0, i32 0
  %123 = load i8, i8* %122, align 2, !tbaa !17, !range !18
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 1, i32 0
  %125 = load i8, i8* %124, align 2, !tbaa !17, !range !18
  %126 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 2, i32 0
  %127 = load i8, i8* %126, align 2, !tbaa !17, !range !18
  %128 = or i8 %127, %125
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 3, i32 0
  %130 = load i8, i8* %129, align 2, !tbaa !17, !range !18
  %131 = or i8 %130, %128
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 4, i32 0
  %133 = load i8, i8* %132, align 2, !tbaa !17, !range !18
  %134 = or i8 %133, %131
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 5, i32 0
  %136 = load i8, i8* %135, align 2, !tbaa !17, !range !18
  %137 = or i8 %136, %134
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 6, i32 0
  %139 = load i8, i8* %138, align 2, !tbaa !17, !range !18
  %140 = or i8 %139, %137
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %121, i64 0, i32 1, i64 7, i32 0
  %142 = load i8, i8* %141, align 2, !tbaa !17, !range !18
  %143 = or i8 %142, %140
  %144 = icmp ne i8 %143, 0
  %145 = icmp eq i8 %123, 1
  %146 = or i1 %144, %145
  br i1 %146, label %76, label %32
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
  %2 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %3 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %2, null
  br i1 %3, label %4, label %82

4:                                                ; preds = %1
  %5 = tail call i8* @malloc(i64 176) #2
  store i8* %5, i8** bitcast (%"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE to i8**), align 8, !tbaa !3
  store i8 0, i8* %5, align 8, !tbaa !11
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to i8**
  store i8* null, i8** %7, align 8, !tbaa !12
  %8 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %8, align 1, !tbaa !8
  %9 = getelementptr inbounds i8, i8* %5, i64 128
  store i8 0, i8* %9, align 2, !tbaa !17
  %10 = getelementptr inbounds i8, i8* %5, i64 130
  store i8 0, i8* %10, align 1, !tbaa !7
  %11 = getelementptr inbounds i8, i8* %5, i64 131
  store i8 0, i8* %11, align 1, !tbaa !7
  %12 = getelementptr inbounds i8, i8* %5, i64 132
  store i8 0, i8* %12, align 1, !tbaa !7
  %13 = getelementptr inbounds i8, i8* %5, i64 133
  store i8 0, i8* %13, align 1, !tbaa !7
  %14 = getelementptr inbounds i8, i8* %5, i64 129
  store i8 0, i8* %14, align 1, !tbaa !15
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  store i8 0, i8* %15, align 8, !tbaa !11
  %16 = getelementptr inbounds i8, i8* %5, i64 24
  %17 = bitcast i8* %16 to i8**
  store i8* null, i8** %17, align 8, !tbaa !12
  %18 = getelementptr inbounds i8, i8* %5, i64 17
  store i8 0, i8* %18, align 1, !tbaa !8
  %19 = getelementptr inbounds i8, i8* %5, i64 134
  store i8 0, i8* %19, align 2, !tbaa !17
  %20 = getelementptr inbounds i8, i8* %5, i64 136
  store i8 0, i8* %20, align 1, !tbaa !7
  %21 = getelementptr inbounds i8, i8* %5, i64 137
  store i8 0, i8* %21, align 1, !tbaa !7
  %22 = getelementptr inbounds i8, i8* %5, i64 138
  store i8 0, i8* %22, align 1, !tbaa !7
  %23 = getelementptr inbounds i8, i8* %5, i64 139
  store i8 0, i8* %23, align 1, !tbaa !7
  %24 = getelementptr inbounds i8, i8* %5, i64 135
  store i8 0, i8* %24, align 1, !tbaa !15
  %25 = getelementptr inbounds i8, i8* %5, i64 32
  store i8 0, i8* %25, align 8, !tbaa !11
  %26 = getelementptr inbounds i8, i8* %5, i64 40
  %27 = bitcast i8* %26 to i8**
  store i8* null, i8** %27, align 8, !tbaa !12
  %28 = getelementptr inbounds i8, i8* %5, i64 33
  store i8 0, i8* %28, align 1, !tbaa !8
  %29 = getelementptr inbounds i8, i8* %5, i64 140
  store i8 0, i8* %29, align 2, !tbaa !17
  %30 = getelementptr inbounds i8, i8* %5, i64 142
  store i8 0, i8* %30, align 1, !tbaa !7
  %31 = getelementptr inbounds i8, i8* %5, i64 143
  store i8 0, i8* %31, align 1, !tbaa !7
  %32 = getelementptr inbounds i8, i8* %5, i64 144
  store i8 0, i8* %32, align 1, !tbaa !7
  %33 = getelementptr inbounds i8, i8* %5, i64 145
  store i8 0, i8* %33, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, i8* %5, i64 141
  store i8 0, i8* %34, align 1, !tbaa !15
  %35 = getelementptr inbounds i8, i8* %5, i64 48
  store i8 0, i8* %35, align 8, !tbaa !11
  %36 = getelementptr inbounds i8, i8* %5, i64 56
  %37 = bitcast i8* %36 to i8**
  store i8* null, i8** %37, align 8, !tbaa !12
  %38 = getelementptr inbounds i8, i8* %5, i64 49
  store i8 0, i8* %38, align 1, !tbaa !8
  %39 = getelementptr inbounds i8, i8* %5, i64 146
  store i8 0, i8* %39, align 2, !tbaa !17
  %40 = getelementptr inbounds i8, i8* %5, i64 148
  store i8 0, i8* %40, align 1, !tbaa !7
  %41 = getelementptr inbounds i8, i8* %5, i64 149
  store i8 0, i8* %41, align 1, !tbaa !7
  %42 = getelementptr inbounds i8, i8* %5, i64 150
  store i8 0, i8* %42, align 1, !tbaa !7
  %43 = getelementptr inbounds i8, i8* %5, i64 151
  store i8 0, i8* %43, align 1, !tbaa !7
  %44 = getelementptr inbounds i8, i8* %5, i64 147
  store i8 0, i8* %44, align 1, !tbaa !15
  %45 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 4, i32 0
  store i8 0, i8* %46, align 8, !tbaa !11
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 4, i32 2
  store i8* null, i8** %47, align 8, !tbaa !12
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 4, i32 1
  store i8 0, i8* %48, align 1, !tbaa !8
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 0
  store i8 0, i8* %49, align 2, !tbaa !17
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 0
  store i8 0, i8* %50, align 1, !tbaa !7
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 1
  store i8 0, i8* %51, align 1, !tbaa !7
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 2
  store i8 0, i8* %52, align 1, !tbaa !7
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 2, i64 3
  store i8 0, i8* %53, align 1, !tbaa !7
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 4, i32 1
  store i8 0, i8* %54, align 1, !tbaa !15
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 5, i32 0
  store i8 0, i8* %55, align 8, !tbaa !11
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 5, i32 2
  store i8* null, i8** %56, align 8, !tbaa !12
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 5, i32 1
  store i8 0, i8* %57, align 1, !tbaa !8
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 0
  store i8 0, i8* %58, align 2, !tbaa !17
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 0
  store i8 0, i8* %59, align 1, !tbaa !7
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 1
  store i8 0, i8* %60, align 1, !tbaa !7
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 2
  store i8 0, i8* %61, align 1, !tbaa !7
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 2, i64 3
  store i8 0, i8* %62, align 1, !tbaa !7
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 5, i32 1
  store i8 0, i8* %63, align 1, !tbaa !15
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 6, i32 0
  store i8 0, i8* %64, align 8, !tbaa !11
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 6, i32 2
  store i8* null, i8** %65, align 8, !tbaa !12
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 6, i32 1
  store i8 0, i8* %66, align 1, !tbaa !8
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 0
  store i8 0, i8* %67, align 2, !tbaa !17
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 0
  store i8 0, i8* %68, align 1, !tbaa !7
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 1
  store i8 0, i8* %69, align 1, !tbaa !7
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 2
  store i8 0, i8* %70, align 1, !tbaa !7
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 2, i64 3
  store i8 0, i8* %71, align 1, !tbaa !7
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 6, i32 1
  store i8 0, i8* %72, align 1, !tbaa !15
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 7, i32 0
  store i8 0, i8* %73, align 8, !tbaa !11
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 7, i32 2
  store i8* null, i8** %74, align 8, !tbaa !12
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 0, i64 7, i32 1
  store i8 0, i8* %75, align 1, !tbaa !8
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 0
  store i8 0, i8* %76, align 2, !tbaa !17
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 0
  store i8 0, i8* %77, align 1, !tbaa !7
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 1
  store i8 0, i8* %78, align 1, !tbaa !7
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 2
  store i8 0, i8* %79, align 1, !tbaa !7
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 2, i64 3
  store i8 0, i8* %80, align 1, !tbaa !7
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %45, i64 0, i32 1, i64 7, i32 1
  store i8 0, i8* %81, align 1, !tbaa !15
  br label %82

82:                                               ; preds = %4, %1
  %83 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %45, %4 ], [ %2, %1 ]
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 0, i32 0
  %85 = load i8, i8* %84, align 2, !tbaa !17, !range !18
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 1, i32 0
  %89 = load i8, i8* %88, align 2, !tbaa !17, !range !18
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %126, %122, %118, %114, %110, %106, %87, %82
  %92 = phi i8* [ %84, %82 ], [ %88, %87 ], [ %107, %106 ], [ %111, %110 ], [ %115, %114 ], [ %119, %118 ], [ %123, %122 ], [ %127, %126 ]
  store i8 1, i8* %92, align 2, !tbaa !17
  br label %104

93:                                               ; preds = %130
  %94 = tail call i8* @halide_string_to_string(i8* %131, i8* null, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #2
  br label %103

95:                                               ; preds = %130
  %96 = getelementptr inbounds i8, i8* %131, i64 1023
  store i8 0, i8* %96, align 1, !tbaa !7
  %97 = tail call i8* @halide_string_to_string(i8* nonnull %131, i8* nonnull %96, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #2
  %98 = ptrtoint i8* %97 to i64
  %99 = ptrtoint i8* %131 to i64
  %100 = add i64 %98, 1
  %101 = sub i64 %100, %99
  %102 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %131, i64 %101) #2
  tail call void @halide_error(i8* %0, i8* nonnull %131) #2
  br label %103

103:                                              ; preds = %95, %93
  tail call void @free(i8* %131) #2
  br label %104

104:                                              ; preds = %91, %103
  %105 = phi i8* [ null, %103 ], [ %92, %91 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i8* %105

106:                                              ; preds = %87
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 2, i32 0
  %108 = load i8, i8* %107, align 2, !tbaa !17, !range !18
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %91, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 3, i32 0
  %112 = load i8, i8* %111, align 2, !tbaa !17, !range !18
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %91, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 4, i32 0
  %116 = load i8, i8* %115, align 2, !tbaa !17, !range !18
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %91, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 5, i32 0
  %120 = load i8, i8* %119, align 2, !tbaa !17, !range !18
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %91, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 6, i32 0
  %124 = load i8, i8* %123, align 2, !tbaa !17, !range !18
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %91, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %83, i64 0, i32 1, i64 7, i32 0
  %128 = load i8, i8* %127, align 2, !tbaa !17, !range !18
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %91, label %130

130:                                              ; preds = %126
  %131 = tail call i8* @malloc(i64 1024) #2
  %132 = icmp eq i8* %131, null
  br i1 %132, label %93, label %95
}

declare i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
define weak i8* @halide_hexagon_allocate_from_dma_pool(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %4 = icmp eq %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i64 0, i64 0)) #2
  tail call void @abort() #2
  br label %6

6:                                                ; preds = %5, %2
  %7 = icmp eq i8* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.6, i64 0, i64 0)) #2
  tail call void @abort() #2
  br label %9

9:                                                ; preds = %8, %6
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %10 = getelementptr inbounds i8, i8* %1, i64 1
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  br label %38

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %1, i64 2
  %17 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8
  %18 = zext i8 %11 to i64
  br label %19

19:                                               ; preds = %33, %15
  %20 = phi i64 [ 0, %15 ], [ %34, %33 ]
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = zext i8 %22 to i64
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %17, i64 0, i32 0, i64 %26, i32 0
  %28 = load i8, i8* %27, align 8, !tbaa !11, !range !18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  store i8 1, i8* %27, align 8, !tbaa !11
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %17, i64 0, i32 0, i64 %26, i32 2
  %32 = load i8*, i8** %31, align 8, !tbaa !12
  br label %113

33:                                               ; preds = %24, %19
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, %18
  br i1 %35, label %36, label %19, !llvm.loop !19

36:                                               ; preds = %33
  %37 = icmp ult i8 %11, 4
  br i1 %37, label %38, label %75

38:                                               ; preds = %13, %36
  %39 = phi %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* [ %14, %13 ], [ %17, %36 ]
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 0, i32 1
  %41 = load i8, i8* %40, align 1, !tbaa !8, !range !18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %109, %105, %101, %97, %93, %89, %71, %38
  %44 = phi i64 [ 0, %38 ], [ 1, %71 ], [ 2, %89 ], [ 3, %93 ], [ 4, %97 ], [ 5, %101 ], [ 6, %105 ], [ 7, %109 ]
  %45 = phi i8* [ %40, %38 ], [ %72, %71 ], [ %90, %89 ], [ %94, %93 ], [ %98, %97 ], [ %102, %101 ], [ %106, %105 ], [ %110, %109 ]
  store i8 1, i8* %45, align 1, !tbaa !8
  %46 = trunc i64 %44 to i8
  %47 = add nuw nsw i8 %46, 1
  %48 = getelementptr inbounds i8, i8* %1, i64 2
  %49 = zext i8 %11 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %47, i8* %50, align 1, !tbaa !7
  %51 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %51, i64 0, i32 0, i64 %44, i32 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %43
  %56 = tail call i8* @hDmaWrapper_AllocDma() #2
  %57 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %57, i64 0, i32 0, i64 %44, i32 2
  store i8* %56, i8** %58, align 8, !tbaa !12
  %59 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %59, i64 0, i32 0, i64 %44, i32 2
  %61 = load i8*, i8** %60, align 8, !tbaa !12
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.7, i64 0, i64 0)) #2
  tail call void @abort() #2
  %64 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8, !tbaa !3
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %64, i64 0, i32 0, i64 %44, i32 2
  %66 = load i8*, i8** %65, align 8, !tbaa !12
  br label %67

67:                                               ; preds = %63, %55, %43
  %68 = phi i8* [ %53, %43 ], [ %66, %63 ], [ %61, %55 ]
  %69 = load i8, i8* %10, align 1, !tbaa !15
  %70 = add i8 %69, 1
  store i8 %70, i8* %10, align 1, !tbaa !15
  br label %113

71:                                               ; preds = %38
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 1, i32 1
  %73 = load i8, i8* %72, align 1, !tbaa !8, !range !18
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %43, label %89

75:                                               ; preds = %109, %36
  %76 = tail call i8* @malloc(i64 1024) #2
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #2
  br label %88

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, i8* %76, i64 1023
  store i8 0, i8* %81, align 1, !tbaa !7
  %82 = tail call i8* @halide_string_to_string(i8* nonnull %76, i8* nonnull %81, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #2
  %83 = ptrtoint i8* %82 to i64
  %84 = ptrtoint i8* %76 to i64
  %85 = sub i64 1, %84
  %86 = add i64 %85, %83
  %87 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %76, i64 %86) #2
  tail call void @halide_error(i8* %0, i8* nonnull %76) #2
  br label %88

88:                                               ; preds = %80, %78
  tail call void @free(i8* %76) #2
  br label %113

89:                                               ; preds = %71
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 2, i32 1
  %91 = load i8, i8* %90, align 1, !tbaa !8, !range !18
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %43, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 3, i32 1
  %95 = load i8, i8* %94, align 1, !tbaa !8, !range !18
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %43, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 4, i32 1
  %99 = load i8, i8* %98, align 1, !tbaa !8, !range !18
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %43, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 5, i32 1
  %103 = load i8, i8* %102, align 1, !tbaa !8, !range !18
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %43, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 6, i32 1
  %107 = load i8, i8* %106, align 1, !tbaa !8, !range !18
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %43, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %39, i64 0, i32 0, i64 7, i32 1
  %111 = load i8, i8* %110, align 1, !tbaa !8, !range !18
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %43, label %75

113:                                              ; preds = %30, %67, %88
  %114 = phi i8* [ null, %88 ], [ %32, %30 ], [ %68, %67 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i8* %114
}

; Function Attrs: nounwind
define weak i32 @halide_hexagon_free_to_dma_pool(i8* %0, i8* %1, i8* %2) local_unnamed_addr #0 {
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.9, i64 0, i64 0)) #2
  tail call void @abort() #2
  br label %6

6:                                                ; preds = %5, %3
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  %7 = getelementptr inbounds i8, i8* %2, i64 1
  %8 = load i8, i8* %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %2, i64 2
  %12 = load %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"*, %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"** @_ZN6Halide7Runtime8Internal10HexagonDma16hexagon_dma_poolE, align 8
  %13 = zext i8 %8 to i64
  br label %14

14:                                               ; preds = %27, %10
  %15 = phi i64 [ 0, %10 ], [ %28, %27 ]
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = zext i8 %17 to i64
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i64 0, i32 0, i64 %21, i32 2
  %23 = load i8*, i8** %22, align 8, !tbaa !12
  %24 = icmp eq i8* %23, %1
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t", %"struct.Halide::Runtime::Internal::HexagonDma::hexagon_dma_pool_t"* %12, i64 0, i32 0, i64 %21, i32 0
  store i8 0, i8* %26, align 8, !tbaa !11
  br label %44

27:                                               ; preds = %19, %14
  %28 = add nuw nsw i64 %15, 1
  %29 = icmp eq i64 %28, %13
  br i1 %29, label %30, label %14, !llvm.loop !20

30:                                               ; preds = %27, %6
  %31 = tail call i8* @malloc(i64 1024) #2
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i8* @halide_string_to_string(i8* null, i8* null, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #2
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #2
  br label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %31, i64 1023
  store i8 0, i8* %36, align 1, !tbaa !7
  %37 = tail call i8* @halide_string_to_string(i8* nonnull %31, i8* nonnull %36, i8* nonnull getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0)) #2
  %38 = ptrtoint i8* %37 to i64
  %39 = ptrtoint i8* %31 to i64
  %40 = sub i64 1, %39
  %41 = add i64 %40, %38
  %42 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %31, i64 %41) #2
  tail call void @halide_error(i8* %0, i8* nonnull %31) #2
  br label %43

43:                                               ; preds = %35, %33
  tail call void @free(i8* %31) #2
  br label %44

44:                                               ; preds = %25, %43
  %45 = phi i32 [ -1, %43 ], [ 0, %25 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal10HexagonDma22hexagon_dma_pool_mutexE) #2
  ret i32 %45
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
!9 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma20hexagon_dma_engine_tE", !10, i64 0, !10, i64 1, !4, i64 8}
!10 = !{!"bool", !5, i64 0}
!11 = !{!9, !10, i64 0}
!12 = !{!9, !4, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !5, i64 1}
!16 = !{!"_ZTSN6Halide7Runtime8Internal10HexagonDma28hexagon_dma_virtual_engine_tE", !10, i64 0, !5, i64 1, !5, i64 2}
!17 = !{!16, !10, i64 0}
!18 = !{i8 0, i8 2}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
