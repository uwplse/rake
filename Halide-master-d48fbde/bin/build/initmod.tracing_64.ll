; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::TraceBuffer" = type { %"class.Halide::Runtime::Internal::SharedExclusiveSpinLock", i32, i32, [1048576 x i8] }
%"class.Halide::Runtime::Internal::SharedExclusiveSpinLock" = type { i32 }
%struct.halide_trace_event_t = type <{ i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32, [4 x i8] }>
%struct.halide_type_t = type { i8, i8, i16 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

@_ZN6Halide7Runtime8Internal19halide_trace_bufferE = weak local_unnamed_addr global %"class.Halide::Runtime::Internal::TraceBuffer"* null, align 8
@_ZN6Halide7Runtime8Internal17halide_trace_fileE = weak local_unnamed_addr global i32 -1, align 4
@_ZN6Halide7Runtime8Internal22halide_trace_file_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE = weak local_unnamed_addr global i8* null, align 8
@_ZZ20halide_default_traceE3ids = internal global i32 1, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [133 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:219 Assert failed: print_bits <= 64 && \22Tracing bad type\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Load\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Store\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Begin realization\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"End realization\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Produce\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"End produce\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Consume\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"End consume\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Begin pipeline\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"End pipeline\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@__const.halide_default_trace.event_types = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)], align 8
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c">, <\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c">)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" = <\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.24 = private unnamed_addr constant [135 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:288 Assert failed: print_bits >= 16 && \22Tracing a bad type\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c" tag = \22\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@_ZN6Halide7Runtime8Internal19halide_custom_traceE = weak local_unnamed_addr global i32 (i8*, %struct.halide_trace_event_t*)* @halide_default_trace, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"HL_TRACE_FILE\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.30 = private unnamed_addr constant [132 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:353 Assert failed: file && \22Failed to open trace file\\n\22\0A\00", align 1
@.str.31 = private unnamed_addr constant [113 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:87 Assert failed: size <= buffer_size\0A\00", align 1
@.str.32 = private unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:115 Assert failed: success && \22Could not write to trace file\22\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_trace_cleanup, i8* null }]

; Function Attrs: nounwind
define weak i32 @halide_default_trace(i8* %0, %struct.halide_trace_event_t* %1) #0 {
  %3 = alloca [4096 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 8
  %5 = atomicrmw add i32* @_ZZ20halide_default_traceE3ids, i32 1 seq_cst
  %6 = tail call i32 @halide_get_trace_file(i8* %0) #5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %253

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4
  %10 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 2
  %11 = load i16, i16* %10, align 2, !tbaa !3
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 7
  %17 = lshr i32 %16, 3
  %18 = mul nuw nsw i32 %17, %12
  %19 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 8
  %20 = load i32, i32* %19, align 8, !tbaa !14
  %21 = shl i32 %20, 2
  %22 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !15
  %24 = tail call i64 @strlen(i8* %23) #6
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, 1
  %27 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 3
  %28 = load i8*, i8** %27, align 8, !tbaa !16
  %29 = icmp eq i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %8
  %31 = tail call i64 @strlen(i8* nonnull %28) #6
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  br label %34

34:                                               ; preds = %8, %30
  %35 = phi i32 [ %33, %30 ], [ 1, %8 ]
  %36 = add i32 %21, 31
  %37 = add i32 %36, %18
  %38 = add i32 %37, %26
  %39 = add i32 %38, %35
  %40 = and i32 %39, -4
  %41 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !tbaa !17
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 0, i32 0
  %43 = icmp ult i32 %40, 1048577
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 1
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 2
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 3, i64 0
  br i1 %43, label %47, label %79

47:                                               ; preds = %34, %53
  %48 = load volatile i32, i32* %42, align 4, !tbaa !18
  %49 = and i32 %48, 1073741823
  %50 = add nuw nsw i32 %49, 1
  %51 = cmpxchg i32* %42, i32 %49, i32 %50 seq_cst seq_cst
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %54, label %53

53:                                               ; preds = %47, %77, %76, %68
  br label %47, !llvm.loop !20

54:                                               ; preds = %47
  %55 = atomicrmw add i32* %44, i32 %40 seq_cst
  %56 = add i32 %55, %40
  %57 = icmp ugt i32 %56, 1048576
  br i1 %57, label %58, label %111

58:                                               ; preds = %54
  %59 = atomicrmw add i32* %45, i32 %40 seq_cst
  %60 = atomicrmw sub i32* %42, i32 1 seq_cst
  br label %61

61:                                               ; preds = %61, %58
  %62 = atomicrmw or i32* %42, i32 1073741824 seq_cst
  %63 = cmpxchg i32* %42, i32 1073741824, i32 -2147483648 seq_cst seq_cst
  %64 = extractvalue { i32, i1 } %63, 1
  br i1 %64, label %65, label %61

65:                                               ; preds = %61
  %66 = load i32, i32* %44, align 4, !tbaa !22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %45, align 4, !tbaa !24
  %70 = sub i32 %66, %69
  store i32 %70, i32* %44, align 4, !tbaa !22
  %71 = zext i32 %70 to i64
  %72 = tail call i64 @write(i32 %6, i8* nonnull %46, i64 %71) #6
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %70, %73
  store i32 0, i32* %44, align 4, !tbaa !22
  store i32 0, i32* %45, align 4, !tbaa !24
  %75 = atomicrmw and i32* %42, i32 2147483647 seq_cst
  br i1 %74, label %53, label %76

76:                                               ; preds = %68
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %53

77:                                               ; preds = %65
  %78 = atomicrmw and i32* %42, i32 2147483647 seq_cst
  br label %53

79:                                               ; preds = %34, %85
  %80 = load volatile i32, i32* %42, align 4, !tbaa !18
  %81 = and i32 %80, 1073741823
  %82 = add nuw nsw i32 %81, 1
  %83 = cmpxchg i32* %42, i32 %81, i32 %82 seq_cst seq_cst
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %86, label %85

85:                                               ; preds = %79, %109, %108, %100
  br label %79, !llvm.loop !20

86:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.31, i64 0, i64 0)) #6
  tail call void @abort() #6
  %87 = atomicrmw add i32* %44, i32 %40 seq_cst
  %88 = add i32 %87, %40
  %89 = icmp ugt i32 %88, 1048576
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  %91 = atomicrmw add i32* %45, i32 %40 seq_cst
  %92 = atomicrmw sub i32* %42, i32 1 seq_cst
  br label %93

93:                                               ; preds = %93, %90
  %94 = atomicrmw or i32* %42, i32 1073741824 seq_cst
  %95 = cmpxchg i32* %42, i32 1073741824, i32 -2147483648 seq_cst seq_cst
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %97, label %93

97:                                               ; preds = %93
  %98 = load i32, i32* %44, align 4, !tbaa !22
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %45, align 4, !tbaa !24
  %102 = sub i32 %98, %101
  store i32 %102, i32* %44, align 4, !tbaa !22
  %103 = zext i32 %102 to i64
  %104 = tail call i64 @write(i32 %6, i8* nonnull %46, i64 %103) #6
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %102, %105
  store i32 0, i32* %44, align 4, !tbaa !22
  store i32 0, i32* %45, align 4, !tbaa !24
  %107 = atomicrmw and i32* %42, i32 2147483647 seq_cst
  br i1 %106, label %85, label %108

108:                                              ; preds = %100
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %85

109:                                              ; preds = %97
  %110 = atomicrmw and i32* %42, i32 2147483647 seq_cst
  br label %85

111:                                              ; preds = %86, %54
  %112 = phi i32 [ %55, %54 ], [ %87, %86 ]
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 3, i64 %113
  %115 = icmp ugt i32 %40, 4096
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = tail call i8* @malloc(i64 1024) #6
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, i8* %117, i64 1023
  store i8 0, i8* %120, align 1, !tbaa !25
  br label %121

121:                                              ; preds = %116, %119
  %122 = phi i8* [ %120, %119 ], [ null, %116 ]
  %123 = zext i32 %40 to i64
  %124 = tail call i8* @halide_uint64_to_string(i8* %117, i8* %122, i64 %123, i32 1) #6
  %125 = tail call i8* @halide_string_to_string(i8* %124, i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  br i1 %118, label %126, label %127

126:                                              ; preds = %121
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)) #6
  br label %133

127:                                              ; preds = %121
  %128 = ptrtoint i8* %125 to i64
  %129 = ptrtoint i8* %117 to i64
  %130 = add i64 %128, 1
  %131 = sub i64 %130, %129
  %132 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %117, i64 %131) #6
  tail call void @halide_print(i8* null, i8* nonnull %117) #6
  br label %133

133:                                              ; preds = %127, %126
  tail call void @free(i8* %117) #6
  br label %134

134:                                              ; preds = %133, %111
  %135 = bitcast i8* %114 to i32*
  store i32 %40, i32* %135, align 4, !tbaa !26
  %136 = getelementptr inbounds i8, i8* %114, i64 4
  %137 = bitcast i8* %136 to i32*
  store i32 %5, i32* %137, align 4, !tbaa !28
  %138 = getelementptr inbounds i8, i8* %114, i64 8
  %139 = bitcast %struct.halide_type_t* %9 to i32*
  %140 = bitcast i8* %138 to i32*
  %141 = load i32, i32* %139, align 8
  store i32 %141, i32* %140, align 4
  %142 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 5
  %143 = load i32, i32* %142, align 4, !tbaa !29
  %144 = getelementptr inbounds i8, i8* %114, i64 12
  %145 = bitcast i8* %144 to i32*
  store i32 %143, i32* %145, align 4, !tbaa !30
  %146 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 6
  %147 = load i32, i32* %146, align 8, !tbaa !31
  %148 = getelementptr inbounds i8, i8* %114, i64 16
  %149 = bitcast i8* %148 to i32*
  store i32 %147, i32* %149, align 4, !tbaa !32
  %150 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 7
  %151 = load i32, i32* %150, align 4, !tbaa !33
  %152 = getelementptr inbounds i8, i8* %114, i64 20
  %153 = bitcast i8* %152 to i32*
  store i32 %151, i32* %153, align 4, !tbaa !34
  %154 = load i32, i32* %19, align 8, !tbaa !14
  %155 = getelementptr inbounds i8, i8* %114, i64 24
  %156 = bitcast i8* %155 to i32*
  store i32 %154, i32* %156, align 4, !tbaa !35
  %157 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 2
  %158 = load i32*, i32** %157, align 8, !tbaa !36
  %159 = icmp eq i32* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %134
  %161 = bitcast i32* %158 to i8*
  %162 = getelementptr inbounds i8, i8* %114, i64 28
  %163 = zext i32 %21 to i64
  %164 = tail call i8* @memcpy(i8* nonnull %162, i8* nonnull %161, i64 %163) #6
  br label %165

165:                                              ; preds = %160, %134
  %166 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 1
  %167 = load i8*, i8** %166, align 8, !tbaa !37
  %168 = icmp eq i8* %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds i8, i8* %114, i64 28
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %156, align 4, !tbaa !35
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = bitcast i32* %174 to i8*
  %176 = zext i32 %18 to i64
  %177 = tail call i8* @memcpy(i8* nonnull %175, i8* nonnull %167, i64 %176) #6
  br label %178

178:                                              ; preds = %165, %169
  %179 = getelementptr inbounds i8, i8* %114, i64 28
  %180 = bitcast i8* %179 to i32*
  %181 = load i32, i32* %156, align 4, !tbaa !35
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = bitcast i32* %183 to i8*
  %185 = getelementptr inbounds i8, i8* %114, i64 10
  %186 = bitcast i8* %185 to i16*
  %187 = load i16, i16* %186, align 2, !tbaa !38
  %188 = zext i16 %187 to i32
  %189 = getelementptr inbounds i8, i8* %114, i64 9
  %190 = load i8, i8* %189, align 1, !tbaa !13
  %191 = zext i8 %190 to i32
  %192 = add nuw nsw i32 %191, 7
  %193 = lshr i32 %192, 3
  %194 = mul nuw nsw i32 %193, %188
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %184, i64 %195
  %197 = load i8*, i8** %22, align 8, !tbaa !15
  %198 = zext i32 %26 to i64
  %199 = tail call i8* @memcpy(i8* nonnull %196, i8* %197, i64 %198) #6
  %200 = load i32, i32* %156, align 4, !tbaa !35
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %180, i64 %201
  %203 = bitcast i32* %202 to i8*
  %204 = load i16, i16* %186, align 2, !tbaa !38
  %205 = zext i16 %204 to i32
  %206 = load i8, i8* %189, align 1, !tbaa !13
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %207, 7
  %209 = lshr i32 %208, 3
  %210 = mul nuw nsw i32 %209, %205
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %203, i64 %211
  br label %213

213:                                              ; preds = %213, %178
  %214 = phi i8* [ %212, %178 ], [ %215, %213 ]
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %214, align 1, !tbaa !25
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %213, !llvm.loop !39

218:                                              ; preds = %213
  %219 = load i8*, i8** %27, align 8, !tbaa !16
  %220 = icmp eq i8* %219, null
  %221 = select i1 %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %219
  %222 = zext i32 %35 to i64
  %223 = tail call i8* @memcpy(i8* nonnull %215, i8* %221, i64 %222) #6
  %224 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !tbaa !17
  fence seq_cst
  %225 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %224, i64 0, i32 0, i32 0
  %226 = atomicrmw sub i32* %225, i32 1 seq_cst
  %227 = load i32, i32* %142, align 4, !tbaa !29
  %228 = icmp eq i32 %227, 9
  br i1 %228, label %229, label %544

229:                                              ; preds = %218
  %230 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !tbaa !17
  %231 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 0, i32 0
  br label %232

232:                                              ; preds = %232, %229
  %233 = atomicrmw or i32* %231, i32 1073741824 seq_cst
  %234 = cmpxchg i32* %231, i32 1073741824, i32 -2147483648 seq_cst seq_cst
  %235 = extractvalue { i32, i1 } %234, 1
  br i1 %235, label %236, label %232

236:                                              ; preds = %232
  %237 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 1
  %238 = load i32, i32* %237, align 4, !tbaa !22
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %251, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 2
  %242 = load i32, i32* %241, align 4, !tbaa !24
  %243 = sub i32 %238, %242
  store i32 %243, i32* %237, align 4, !tbaa !22
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 3, i64 0
  %245 = zext i32 %243 to i64
  %246 = tail call i64 @write(i32 %6, i8* nonnull %244, i64 %245) #6
  %247 = trunc i64 %246 to i32
  %248 = icmp eq i32 %243, %247
  store i32 0, i32* %237, align 4, !tbaa !22
  store i32 0, i32* %241, align 4, !tbaa !24
  %249 = atomicrmw and i32* %231, i32 2147483647 seq_cst
  br i1 %248, label %544, label %250

250:                                              ; preds = %240
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %544

251:                                              ; preds = %236
  %252 = atomicrmw and i32* %231, i32 2147483647 seq_cst
  br label %544

253:                                              ; preds = %2
  %254 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %254) #7
  %255 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %255) #7
  %256 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 3
  store i8* %0, i8** %256, align 8, !tbaa !40
  %257 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 4
  store i8 0, i8* %257, align 8, !tbaa !43
  %258 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 0
  store i8* %254, i8** %258, align 8
  %259 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 1
  store i8* %254, i8** %259, align 8, !tbaa !44
  %260 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 4095
  %261 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 2
  store i8* %260, i8** %261, align 8, !tbaa !45
  store i8 0, i8* %260, align 1, !tbaa !25
  %262 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 1
  %263 = load i8, i8* %262, align 1, !tbaa !46
  %264 = zext i8 %263 to i32
  br label %265

265:                                              ; preds = %265, %253
  %266 = phi i32 [ 8, %253 ], [ %268, %265 ]
  %267 = icmp slt i32 %266, %264
  %268 = shl i32 %266, 1
  br i1 %267, label %265, label %269, !llvm.loop !47

269:                                              ; preds = %265
  %270 = icmp slt i32 %266, 65
  br i1 %270, label %274, label %271

271:                                              ; preds = %269
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0)) #6
  call void @abort() #6
  %272 = load i8*, i8** %259, align 8, !tbaa !44
  %273 = load i8*, i8** %261, align 8, !tbaa !45
  br label %274

274:                                              ; preds = %271, %269
  %275 = phi i8* [ %273, %271 ], [ %260, %269 ]
  %276 = phi i8* [ %272, %271 ], [ %254, %269 ]
  %277 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 5
  %278 = load i32, i32* %277, align 4, !tbaa !29
  %279 = icmp slt i32 %278, 2
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds [11 x i8*], [11 x i8*]* @__const.halide_default_trace.event_types, i64 0, i64 %280
  %282 = load i8*, i8** %281, align 8, !tbaa !17
  %283 = call i8* @halide_string_to_string(i8* %276, i8* %275, i8* nonnull %282) #6
  store i8* %283, i8** %259, align 8, !tbaa !44
  %284 = load i8*, i8** %261, align 8, !tbaa !45
  %285 = call i8* @halide_string_to_string(i8* %283, i8* %284, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6
  store i8* %285, i8** %259, align 8, !tbaa !44
  %286 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 0
  %287 = load i8*, i8** %286, align 8, !tbaa !15
  %288 = icmp eq i8* %287, null
  %289 = load i8*, i8** %261, align 8, !tbaa !45
  br i1 %288, label %290, label %292

290:                                              ; preds = %274
  %291 = call i8* @halide_string_to_string(i8* %285, i8* %289, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)) #6
  br label %294

292:                                              ; preds = %274
  %293 = call i8* @halide_string_to_string(i8* %285, i8* %289, i8* nonnull %287) #6
  br label %294

294:                                              ; preds = %290, %292
  %295 = phi i8* [ %293, %292 ], [ %291, %290 ]
  store i8* %295, i8** %259, align 8, !tbaa !44
  %296 = load i8*, i8** %261, align 8, !tbaa !45
  %297 = call i8* @halide_string_to_string(i8* %295, i8* %296, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #6
  store i8* %297, i8** %259, align 8, !tbaa !44
  %298 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 7
  %299 = load i32, i32* %298, align 4, !tbaa !33
  %300 = load i8*, i8** %261, align 8, !tbaa !45
  %301 = sext i32 %299 to i64
  %302 = call i8* @halide_int64_to_string(i8* %297, i8* %300, i64 %301, i32 1) #6
  store i8* %302, i8** %259, align 8, !tbaa !44
  %303 = load i8*, i8** %261, align 8, !tbaa !45
  %304 = call i8* @halide_string_to_string(i8* %302, i8* %303, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #6
  store i8* %304, i8** %259, align 8, !tbaa !44
  %305 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 2
  %306 = load i16, i16* %305, align 2, !tbaa !3
  %307 = icmp ugt i16 %306, 1
  br i1 %307, label %308, label %311

308:                                              ; preds = %294
  %309 = load i8*, i8** %261, align 8, !tbaa !45
  %310 = call i8* @halide_string_to_string(i8* %304, i8* %309, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6
  store i8* %310, i8** %259, align 8, !tbaa !44
  br label %311

311:                                              ; preds = %308, %294
  %312 = phi i8* [ %310, %308 ], [ %304, %294 ]
  %313 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 8
  %314 = load i32, i32* %313, align 8, !tbaa !14
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 2
  %318 = load i32*, i32** %317, align 8, !tbaa !36
  %319 = load i32, i32* %318, align 4, !tbaa !48
  %320 = load i8*, i8** %261, align 8, !tbaa !45
  %321 = sext i32 %319 to i64
  %322 = call i8* @halide_int64_to_string(i8* %312, i8* %320, i64 %321, i32 1) #6
  store i8* %322, i8** %259, align 8, !tbaa !44
  %323 = load i32, i32* %313, align 8, !tbaa !14
  %324 = icmp sgt i32 %323, 1
  br i1 %324, label %332, label %325

325:                                              ; preds = %343, %316, %311
  %326 = phi i8* [ %312, %311 ], [ %322, %316 ], [ %352, %343 ]
  %327 = load i16, i16* %305, align 2, !tbaa !3
  %328 = icmp ugt i16 %327, 1
  %329 = load i8*, i8** %261, align 8, !tbaa !45
  %330 = select i1 %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %331 = call i8* @halide_string_to_string(i8* %326, i8* %329, i8* nonnull %330) #6
  store i8* %331, i8** %259, align 8, !tbaa !44
  br i1 %279, label %357, label %486

332:                                              ; preds = %316, %343
  %333 = phi i8* [ %352, %343 ], [ %322, %316 ]
  %334 = phi i64 [ %353, %343 ], [ 1, %316 ]
  %335 = load i16, i16* %305, align 2, !tbaa !3
  %336 = icmp ugt i16 %335, 1
  br i1 %336, label %337, label %342

337:                                              ; preds = %332
  %338 = zext i16 %335 to i32
  %339 = trunc i64 %334 to i32
  %340 = urem i32 %339, %338
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %337, %332
  br label %343

343:                                              ; preds = %337, %342
  %344 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %342 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %337 ]
  %345 = load i8*, i8** %261, align 8, !tbaa !45
  %346 = call i8* @halide_string_to_string(i8* %333, i8* %345, i8* nonnull %344) #6
  store i8* %346, i8** %259, align 8, !tbaa !44
  %347 = load i32*, i32** %317, align 8, !tbaa !36
  %348 = getelementptr inbounds i32, i32* %347, i64 %334
  %349 = load i32, i32* %348, align 4, !tbaa !48
  %350 = load i8*, i8** %261, align 8, !tbaa !45
  %351 = sext i32 %349 to i64
  %352 = call i8* @halide_int64_to_string(i8* %346, i8* %350, i64 %351, i32 1) #6
  store i8* %352, i8** %259, align 8, !tbaa !44
  %353 = add nuw nsw i64 %334, 1
  %354 = load i32, i32* %313, align 8, !tbaa !14
  %355 = sext i32 %354 to i64
  %356 = icmp slt i64 %353, %355
  br i1 %356, label %332, label %325, !llvm.loop !49

357:                                              ; preds = %325
  %358 = load i16, i16* %305, align 2, !tbaa !3
  %359 = icmp ugt i16 %358, 1
  %360 = load i8*, i8** %261, align 8, !tbaa !45
  %361 = select i1 %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)
  %362 = call i8* @halide_string_to_string(i8* %331, i8* %360, i8* nonnull %361) #6
  store i8* %362, i8** %259, align 8, !tbaa !44
  %363 = load i16, i16* %305, align 2, !tbaa !3
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %486, label %365

365:                                              ; preds = %357
  %366 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 0
  %367 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 1
  %368 = bitcast i8** %367 to i8***
  %369 = icmp sgt i32 %266, 15
  %370 = bitcast i8** %367 to i16**
  %371 = bitcast i8** %367 to float**
  %372 = bitcast i8** %367 to double**
  %373 = bitcast i8** %367 to i32**
  %374 = bitcast i8** %367 to i64**
  br label %377

375:                                              ; preds = %477
  %376 = icmp ugt i16 %480, 1
  br i1 %376, label %483, label %486

377:                                              ; preds = %365, %477
  %378 = phi i8* [ %362, %365 ], [ %478, %477 ]
  %379 = phi i64 [ 0, %365 ], [ %479, %477 ]
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %377
  %382 = load i8*, i8** %261, align 8, !tbaa !45
  %383 = call i8* @halide_string_to_string(i8* %378, i8* %382, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #6
  store i8* %383, i8** %259, align 8, !tbaa !44
  br label %384

384:                                              ; preds = %381, %377
  %385 = phi i8* [ %383, %381 ], [ %378, %377 ]
  %386 = load i8, i8* %366, align 8, !tbaa !51
  switch i8 %386, label %477 [
    i8 0, label %387
    i8 1, label %415
    i8 2, label %443
    i8 3, label %469
  ]

387:                                              ; preds = %384
  switch i32 %266, label %409 [
    i32 8, label %388
    i32 16, label %395
    i32 32, label %402
  ]

388:                                              ; preds = %387
  %389 = load i8*, i8** %367, align 8, !tbaa !37
  %390 = getelementptr inbounds i8, i8* %389, i64 %379
  %391 = load i8, i8* %390, align 1, !tbaa !25
  %392 = load i8*, i8** %261, align 8, !tbaa !45
  %393 = sext i8 %391 to i64
  %394 = call i8* @halide_int64_to_string(i8* %385, i8* %392, i64 %393, i32 1) #6
  br label %475

395:                                              ; preds = %387
  %396 = load i16*, i16** %370, align 8, !tbaa !37
  %397 = getelementptr inbounds i16, i16* %396, i64 %379
  %398 = load i16, i16* %397, align 2, !tbaa !52
  %399 = load i8*, i8** %261, align 8, !tbaa !45
  %400 = sext i16 %398 to i64
  %401 = call i8* @halide_int64_to_string(i8* %385, i8* %399, i64 %400, i32 1) #6
  br label %475

402:                                              ; preds = %387
  %403 = load i32*, i32** %373, align 8, !tbaa !37
  %404 = getelementptr inbounds i32, i32* %403, i64 %379
  %405 = load i32, i32* %404, align 4, !tbaa !48
  %406 = load i8*, i8** %261, align 8, !tbaa !45
  %407 = sext i32 %405 to i64
  %408 = call i8* @halide_int64_to_string(i8* %385, i8* %406, i64 %407, i32 1) #6
  br label %475

409:                                              ; preds = %387
  %410 = load i64*, i64** %374, align 8, !tbaa !37
  %411 = getelementptr inbounds i64, i64* %410, i64 %379
  %412 = load i64, i64* %411, align 8, !tbaa !53
  %413 = load i8*, i8** %261, align 8, !tbaa !45
  %414 = call i8* @halide_int64_to_string(i8* %385, i8* %413, i64 %412, i32 1) #6
  br label %475

415:                                              ; preds = %384
  switch i32 %266, label %437 [
    i32 8, label %416
    i32 16, label %423
    i32 32, label %430
  ]

416:                                              ; preds = %415
  %417 = load i8*, i8** %367, align 8, !tbaa !37
  %418 = getelementptr inbounds i8, i8* %417, i64 %379
  %419 = load i8, i8* %418, align 1, !tbaa !25
  %420 = load i8*, i8** %261, align 8, !tbaa !45
  %421 = zext i8 %419 to i64
  %422 = call i8* @halide_int64_to_string(i8* %385, i8* %420, i64 %421, i32 1) #6
  br label %475

423:                                              ; preds = %415
  %424 = load i16*, i16** %370, align 8, !tbaa !37
  %425 = getelementptr inbounds i16, i16* %424, i64 %379
  %426 = load i16, i16* %425, align 2, !tbaa !52
  %427 = load i8*, i8** %261, align 8, !tbaa !45
  %428 = zext i16 %426 to i64
  %429 = call i8* @halide_int64_to_string(i8* %385, i8* %427, i64 %428, i32 1) #6
  br label %475

430:                                              ; preds = %415
  %431 = load i32*, i32** %373, align 8, !tbaa !37
  %432 = getelementptr inbounds i32, i32* %431, i64 %379
  %433 = load i32, i32* %432, align 4, !tbaa !48
  %434 = load i8*, i8** %261, align 8, !tbaa !45
  %435 = zext i32 %433 to i64
  %436 = call i8* @halide_uint64_to_string(i8* %385, i8* %434, i64 %435, i32 1) #6
  br label %475

437:                                              ; preds = %415
  %438 = load i64*, i64** %374, align 8, !tbaa !37
  %439 = getelementptr inbounds i64, i64* %438, i64 %379
  %440 = load i64, i64* %439, align 8, !tbaa !53
  %441 = load i8*, i8** %261, align 8, !tbaa !45
  %442 = call i8* @halide_uint64_to_string(i8* %385, i8* %441, i64 %440, i32 1) #6
  br label %475

443:                                              ; preds = %384
  br i1 %369, label %445, label %444

444:                                              ; preds = %443
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.24, i64 0, i64 0)) #6
  call void @abort() #6
  br label %445

445:                                              ; preds = %444, %443
  switch i32 %266, label %462 [
    i32 32, label %446
    i32 16, label %454
  ]

446:                                              ; preds = %445
  %447 = load float*, float** %371, align 8, !tbaa !37
  %448 = getelementptr inbounds float, float* %447, i64 %379
  %449 = load float, float* %448, align 4, !tbaa !55
  %450 = load i8*, i8** %259, align 8, !tbaa !44
  %451 = load i8*, i8** %261, align 8, !tbaa !45
  %452 = fpext float %449 to double
  %453 = call i8* @halide_double_to_string(i8* %450, i8* %451, double %452, i32 0) #6
  br label %475

454:                                              ; preds = %445
  %455 = load i16*, i16** %370, align 8, !tbaa !37
  %456 = getelementptr inbounds i16, i16* %455, i64 %379
  %457 = load i16, i16* %456, align 2, !tbaa !52
  %458 = call double @halide_float16_bits_to_double(i16 zeroext %457) #6
  %459 = load i8*, i8** %259, align 8, !tbaa !44
  %460 = load i8*, i8** %261, align 8, !tbaa !45
  %461 = call i8* @halide_double_to_string(i8* %459, i8* %460, double %458, i32 1) #6
  br label %475

462:                                              ; preds = %445
  %463 = load double*, double** %372, align 8, !tbaa !37
  %464 = getelementptr inbounds double, double* %463, i64 %379
  %465 = load double, double* %464, align 8, !tbaa !57
  %466 = load i8*, i8** %259, align 8, !tbaa !44
  %467 = load i8*, i8** %261, align 8, !tbaa !45
  %468 = call i8* @halide_double_to_string(i8* %466, i8* %467, double %465, i32 1) #6
  br label %475

469:                                              ; preds = %384
  %470 = load i8**, i8*** %368, align 8, !tbaa !37
  %471 = getelementptr inbounds i8*, i8** %470, i64 %379
  %472 = load i8*, i8** %471, align 8, !tbaa !17
  %473 = load i8*, i8** %261, align 8, !tbaa !45
  %474 = call i8* @halide_pointer_to_string(i8* %385, i8* %473, i8* %472) #6
  br label %475

475:                                              ; preds = %423, %437, %430, %416, %469, %446, %462, %454, %388, %402, %409, %395
  %476 = phi i8* [ %401, %395 ], [ %414, %409 ], [ %408, %402 ], [ %394, %388 ], [ %461, %454 ], [ %468, %462 ], [ %453, %446 ], [ %474, %469 ], [ %422, %416 ], [ %436, %430 ], [ %442, %437 ], [ %429, %423 ]
  store i8* %476, i8** %259, align 8, !tbaa !44
  br label %477

477:                                              ; preds = %475, %384
  %478 = phi i8* [ %385, %384 ], [ %476, %475 ]
  %479 = add nuw nsw i64 %379, 1
  %480 = load i16, i16* %305, align 2, !tbaa !3
  %481 = zext i16 %480 to i64
  %482 = icmp ult i64 %479, %481
  br i1 %482, label %377, label %375, !llvm.loop !59

483:                                              ; preds = %375
  %484 = load i8*, i8** %261, align 8, !tbaa !45
  %485 = call i8* @halide_string_to_string(i8* %478, i8* %484, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #6
  store i8* %485, i8** %259, align 8, !tbaa !44
  br label %486

486:                                              ; preds = %357, %375, %483, %325
  %487 = phi i8* [ %478, %375 ], [ %485, %483 ], [ %331, %325 ], [ %362, %357 ]
  %488 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 3
  %489 = load i8*, i8** %488, align 8, !tbaa !16
  %490 = icmp eq i8* %489, null
  br i1 %490, label %508, label %491

491:                                              ; preds = %486
  %492 = load i8, i8* %489, align 1, !tbaa !25
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %508, label %494

494:                                              ; preds = %491
  %495 = load i8*, i8** %261, align 8, !tbaa !45
  %496 = call i8* @halide_string_to_string(i8* %487, i8* %495, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #6
  store i8* %496, i8** %259, align 8, !tbaa !44
  %497 = load i8*, i8** %488, align 8, !tbaa !16
  %498 = icmp eq i8* %497, null
  %499 = load i8*, i8** %261, align 8, !tbaa !45
  br i1 %498, label %500, label %502

500:                                              ; preds = %494
  %501 = call i8* @halide_string_to_string(i8* %496, i8* %499, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)) #6
  br label %504

502:                                              ; preds = %494
  %503 = call i8* @halide_string_to_string(i8* %496, i8* %499, i8* nonnull %497) #6
  br label %504

504:                                              ; preds = %500, %502
  %505 = phi i8* [ %503, %502 ], [ %501, %500 ]
  store i8* %505, i8** %259, align 8, !tbaa !44
  %506 = load i8*, i8** %261, align 8, !tbaa !45
  %507 = call i8* @halide_string_to_string(i8* %505, i8* %506, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #6
  store i8* %507, i8** %259, align 8, !tbaa !44
  br label %508

508:                                              ; preds = %504, %491, %486
  %509 = phi i8* [ %507, %504 ], [ %487, %491 ], [ %487, %486 ]
  %510 = load i8*, i8** %261, align 8, !tbaa !45
  %511 = call i8* @halide_string_to_string(i8* %509, i8* %510, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  store i8* %511, i8** %259, align 8, !tbaa !44
  %512 = load i8*, i8** %258, align 8, !tbaa !60
  %513 = load i8*, i8** %256, align 8, !tbaa !40
  %514 = ptrtoint i8* %511 to i64
  %515 = ptrtoint i8* %512 to i64
  %516 = add i64 %514, 1
  %517 = sub i64 %516, %515
  %518 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %513, i8* %512, i64 %517) #6
  br label %519

519:                                              ; preds = %519, %508
  %520 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %522, label %519, !llvm.loop !61

522:                                              ; preds = %519
  call void @halide_print(i8* %0, i8* nonnull %254) #6
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1
  %523 = load i8*, i8** %258, align 8, !tbaa !60
  %524 = icmp eq i8* %523, null
  br i1 %524, label %525, label %527

525:                                              ; preds = %522
  %526 = load i8*, i8** %256, align 8, !tbaa !40
  call void @halide_error(i8* %526, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)) #6
  br label %535

527:                                              ; preds = %522
  %528 = load i8*, i8** %259, align 8, !tbaa !44
  %529 = load i8*, i8** %256, align 8, !tbaa !40
  %530 = ptrtoint i8* %528 to i64
  %531 = ptrtoint i8* %523 to i64
  %532 = sub i64 1, %531
  %533 = add i64 %532, %530
  %534 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %529, i8* nonnull %523, i64 %533) #6
  br label %535

535:                                              ; preds = %527, %525
  %536 = load i8, i8* %257, align 8, !tbaa !43, !range !62
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %543, label %538

538:                                              ; preds = %535
  %539 = load i8*, i8** %258, align 8, !tbaa !60
  %540 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 5, i64 0
  %541 = icmp eq i8* %539, %540
  br i1 %541, label %543, label %542

542:                                              ; preds = %538
  call void @free(i8* %539) #6
  br label %543

543:                                              ; preds = %535, %538, %542
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %255) #7
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %254) #7
  br label %544

544:                                              ; preds = %251, %250, %240, %218, %543
  ret i32 %5
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define weak i32 @halide_get_trace_file(i8* %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %2, !llvm.loop !61

5:                                                ; preds = %2
  %6 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !tbaa !48
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0)) #6
  %10 = icmp eq i8* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @fopen(i8* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.30, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %15

15:                                               ; preds = %14, %11
  %16 = tail call i32 @fileno(i8* %12) #6
  tail call void @halide_set_trace_file(i32 %16) #5
  store i8* %12, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 8, !tbaa !17
  %17 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !tbaa !17
  %18 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = tail call i8* @malloc(i64 1048588) #6
  store i8* %20, i8** bitcast (%"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE to i8**), align 8, !tbaa !17
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 4, !tbaa !22
  %23 = getelementptr inbounds i8, i8* %20, i64 8
  %24 = bitcast i8* %23 to i32*
  store i32 0, i32* %24, align 4, !tbaa !24
  %25 = bitcast i8* %20 to i32*
  store volatile i32 0, i32* %25, align 4, !tbaa !18
  br label %27

26:                                               ; preds = %8
  tail call void @halide_set_trace_file(i32 0) #5
  br label %27

27:                                               ; preds = %26, %19, %15, %5
  %28 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !tbaa !48
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1
  ret i32 %28
}

declare i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, %struct.halide_trace_event_t*)* @halide_set_custom_trace(i32 (i8*, %struct.halide_trace_event_t*)* %0) local_unnamed_addr #3 {
  %2 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 8, !tbaa !17
  store i32 (i8*, %struct.halide_trace_event_t*)* %0, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 8, !tbaa !17
  ret i32 (i8*, %struct.halide_trace_event_t*)* %2
}

; Function Attrs: nounwind willreturn mustprogress
define weak void @halide_set_trace_file(i32 %0) local_unnamed_addr #3 {
  store i32 %0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !tbaa !48
  ret void
}

declare i8* @getenv(i8*) local_unnamed_addr #2

declare i8* @fopen(i8*, i8*) local_unnamed_addr #2

declare i32 @fileno(i8*) local_unnamed_addr #2

declare i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_trace(i8* %0, %struct.halide_trace_event_t* %1) local_unnamed_addr #4 {
  %3 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 8, !tbaa !17
  %4 = tail call i32 %3(i8* %0, %struct.halide_trace_event_t* %1) #6
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_shutdown_trace() local_unnamed_addr #4 {
  %1 = load i8*, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 8, !tbaa !17
  %2 = icmp eq i8* %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(i8* nonnull %1) #6
  store i32 0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !tbaa !48
  store i8 0, i8* @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, align 1, !tbaa !63
  store i8* null, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 8, !tbaa !17
  %5 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !tbaa !17
  %6 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = bitcast %"class.Halide::Runtime::Internal::TraceBuffer"* %5 to i8*
  tail call void @free(i8* nonnull %8) #6
  br label %9

9:                                                ; preds = %0, %3, %7
  %10 = phi i32 [ %4, %7 ], [ %4, %3 ], [ 0, %0 ]
  ret i32 %10
}

declare i32 @fclose(i8*) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @halide_trace_cleanup() #4 {
  %1 = tail call i32 @halide_shutdown_trace() #5
  ret void
}

declare i64 @write(i32, i8*, i64) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare extern_weak i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

declare extern_weak i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #2

declare double @halide_float16_bits_to_double(i16 zeroext) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !10, i64 34}
!4 = !{!"_ZTS20halide_trace_event_t", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !8, i64 32, !11, i64 36, !12, i64 40, !12, i64 44, !12, i64 48}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"_ZTS13halide_type_t", !9, i64 0, !6, i64 1, !10, i64 2}
!9 = !{!"_ZTS18halide_type_code_t", !6, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!"_ZTS25halide_trace_event_code_t", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!8, !6, i64 1}
!14 = !{!4, !12, i64 48}
!15 = !{!4, !5, i64 0}
!16 = !{!4, !5, i64 24}
!17 = !{!5, !5, i64 0}
!18 = !{!19, !12, i64 0}
!19 = !{!"_ZTSN6Halide7Runtime8Internal23SharedExclusiveSpinLockE", !12, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !12, i64 4}
!23 = !{!"_ZTSN6Halide7Runtime8Internal11TraceBufferE", !19, i64 0, !12, i64 4, !12, i64 8, !6, i64 12}
!24 = !{!23, !12, i64 8}
!25 = !{!6, !6, i64 0}
!26 = !{!27, !12, i64 0}
!27 = !{!"_ZTS21halide_trace_packet_t", !12, i64 0, !12, i64 4, !8, i64 8, !11, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!28 = !{!27, !12, i64 4}
!29 = !{!4, !11, i64 36}
!30 = !{!27, !11, i64 12}
!31 = !{!4, !12, i64 40}
!32 = !{!27, !12, i64 16}
!33 = !{!4, !12, i64 44}
!34 = !{!27, !12, i64 20}
!35 = !{!27, !12, i64 24}
!36 = !{!4, !5, i64 16}
!37 = !{!4, !5, i64 8}
!38 = !{!27, !10, i64 10}
!39 = distinct !{!39, !21}
!40 = !{!41, !5, i64 24}
!41 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EEE", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !42, i64 32, !6, i64 33}
!42 = !{!"bool", !6, i64 0}
!43 = !{!41, !42, i64 32}
!44 = !{!41, !5, i64 8}
!45 = !{!41, !5, i64 16}
!46 = !{!4, !6, i64 33}
!47 = distinct !{!47, !21}
!48 = !{!12, !12, i64 0}
!49 = distinct !{!49, !21, !50}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{!4, !9, i64 32}
!52 = !{!10, !10, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"long long", !6, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !6, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !6, i64 0}
!59 = distinct !{!59, !21}
!60 = !{!41, !5, i64 0}
!61 = distinct !{!61, !21}
!62 = !{i8 0, i8 2}
!63 = !{!42, !42, i64 0}
