; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"class.Halide::Runtime::Internal::TraceBuffer" = type { %"class.Halide::Runtime::Internal::SharedExclusiveSpinLock", i32, i32, [1048576 x i8] }
%"class.Halide::Runtime::Internal::SharedExclusiveSpinLock" = type { i32 }
%struct.halide_trace_event_t = type { i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32 }
%struct.halide_type_t = type { i8, i8, i16 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

@_ZN6Halide7Runtime8Internal19halide_trace_bufferE = weak local_unnamed_addr global %"class.Halide::Runtime::Internal::TraceBuffer"* null, align 4
@_ZN6Halide7Runtime8Internal17halide_trace_fileE = weak local_unnamed_addr global i32 -1, align 4
@_ZN6Halide7Runtime8Internal22halide_trace_file_lockE = weak global i8 0, align 1
@_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE = weak local_unnamed_addr global i8* null, align 4
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
@__const.halide_default_trace.event_types = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)], align 4
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
@_ZN6Halide7Runtime8Internal19halide_custom_traceE = weak local_unnamed_addr global i32 (i8*, %struct.halide_trace_event_t*)* @halide_default_trace, align 4
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
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 4
  %5 = atomicrmw add i32* @_ZZ20halide_default_traceE3ids, i32 1 seq_cst
  %6 = tail call i32 @halide_get_trace_file(i8* %0) #5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %236

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 2
  %11 = load i16, i16* %10, align 2, !tbaa !3
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 7
  %17 = lshr i32 %16, 3
  %18 = mul nuw nsw i32 %17, %12
  %19 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 8
  %20 = load i32, i32* %19, align 4, !tbaa !14
  %21 = shl i32 %20, 2
  %22 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 0
  %23 = load i8*, i8** %22, align 4, !tbaa !15
  %24 = tail call i32 @strlen(i8* %23) #6
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 3
  %27 = load i8*, i8** %26, align 4, !tbaa !16
  %28 = icmp eq i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = tail call i32 @strlen(i8* nonnull %27) #6
  %31 = add i32 %30, 1
  br label %32

32:                                               ; preds = %8, %29
  %33 = phi i32 [ %31, %29 ], [ 1, %8 ]
  %34 = add i32 %21, 31
  %35 = add i32 %34, %18
  %36 = add i32 %35, %25
  %37 = add i32 %36, %33
  %38 = and i32 %37, -4
  %39 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !tbaa !17
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 0, i32 0
  %41 = icmp ult i32 %38, 1048577
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 1
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 2
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 3, i32 0
  br i1 %41, label %45, label %75

45:                                               ; preds = %32, %51
  %46 = load volatile i32, i32* %40, align 4, !tbaa !18
  %47 = and i32 %46, 1073741823
  %48 = add nuw nsw i32 %47, 1
  %49 = cmpxchg i32* %40, i32 %47, i32 %48 seq_cst seq_cst
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %73, %72, %66
  br label %45, !llvm.loop !20

52:                                               ; preds = %45
  %53 = atomicrmw add i32* %42, i32 %38 seq_cst
  %54 = add i32 %53, %38
  %55 = icmp ugt i32 %54, 1048576
  br i1 %55, label %56, label %105

56:                                               ; preds = %52
  %57 = atomicrmw add i32* %43, i32 %38 seq_cst
  %58 = atomicrmw sub i32* %40, i32 1 seq_cst
  br label %59

59:                                               ; preds = %59, %56
  %60 = atomicrmw or i32* %40, i32 1073741824 seq_cst
  %61 = cmpxchg i32* %40, i32 1073741824, i32 -2147483648 seq_cst seq_cst
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %63, label %59

63:                                               ; preds = %59
  %64 = load i32, i32* %42, align 4, !tbaa !22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %43, align 4, !tbaa !24
  %68 = sub i32 %64, %67
  store i32 %68, i32* %42, align 4, !tbaa !22
  %69 = tail call i32 @write(i32 %6, i8* nonnull %44, i32 %68) #6
  %70 = icmp eq i32 %68, %69
  store i32 0, i32* %42, align 4, !tbaa !22
  store i32 0, i32* %43, align 4, !tbaa !24
  %71 = atomicrmw and i32* %40, i32 2147483647 seq_cst
  br i1 %70, label %51, label %72

72:                                               ; preds = %66
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %51

73:                                               ; preds = %63
  %74 = atomicrmw and i32* %40, i32 2147483647 seq_cst
  br label %51

75:                                               ; preds = %32, %81
  %76 = load volatile i32, i32* %40, align 4, !tbaa !18
  %77 = and i32 %76, 1073741823
  %78 = add nuw nsw i32 %77, 1
  %79 = cmpxchg i32* %40, i32 %77, i32 %78 seq_cst seq_cst
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %103, %102, %96
  br label %75, !llvm.loop !20

82:                                               ; preds = %75
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.31, i32 0, i32 0)) #6
  tail call void @abort() #6
  %83 = atomicrmw add i32* %42, i32 %38 seq_cst
  %84 = add i32 %83, %38
  %85 = icmp ugt i32 %84, 1048576
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = atomicrmw add i32* %43, i32 %38 seq_cst
  %88 = atomicrmw sub i32* %40, i32 1 seq_cst
  br label %89

89:                                               ; preds = %89, %86
  %90 = atomicrmw or i32* %40, i32 1073741824 seq_cst
  %91 = cmpxchg i32* %40, i32 1073741824, i32 -2147483648 seq_cst seq_cst
  %92 = extractvalue { i32, i1 } %91, 1
  br i1 %92, label %93, label %89

93:                                               ; preds = %89
  %94 = load i32, i32* %42, align 4, !tbaa !22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %43, align 4, !tbaa !24
  %98 = sub i32 %94, %97
  store i32 %98, i32* %42, align 4, !tbaa !22
  %99 = tail call i32 @write(i32 %6, i8* nonnull %44, i32 %98) #6
  %100 = icmp eq i32 %98, %99
  store i32 0, i32* %42, align 4, !tbaa !22
  store i32 0, i32* %43, align 4, !tbaa !24
  %101 = atomicrmw and i32* %40, i32 2147483647 seq_cst
  br i1 %100, label %81, label %102

102:                                              ; preds = %96
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %81

103:                                              ; preds = %93
  %104 = atomicrmw and i32* %40, i32 2147483647 seq_cst
  br label %81

105:                                              ; preds = %82, %52
  %106 = phi i32 [ %53, %52 ], [ %83, %82 ]
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 3, i32 %106
  %108 = icmp ugt i32 %38, 4096
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = tail call i8* @malloc(i32 1024) #6
  %111 = icmp eq i8* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds i8, i8* %110, i32 1023
  store i8 0, i8* %113, align 1, !tbaa !25
  br label %114

114:                                              ; preds = %109, %112
  %115 = phi i8* [ %113, %112 ], [ null, %109 ]
  %116 = zext i32 %38 to i64
  %117 = tail call i8* @halide_uint64_to_string(i8* %110, i8* %115, i64 %116, i32 1) #6
  %118 = tail call i8* @halide_string_to_string(i8* %117, i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #6
  br i1 %111, label %119, label %120

119:                                              ; preds = %114
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)) #6
  br label %127

120:                                              ; preds = %114
  %121 = ptrtoint i8* %118 to i32
  %122 = ptrtoint i8* %110 to i32
  %123 = add i32 %121, 1
  %124 = sub i32 %123, %122
  %125 = sext i32 %124 to i64
  %126 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %110, i64 %125) #6
  tail call void @halide_print(i8* null, i8* nonnull %110) #6
  br label %127

127:                                              ; preds = %120, %119
  tail call void @free(i8* %110) #6
  br label %128

128:                                              ; preds = %127, %105
  %129 = bitcast i8* %107 to i32*
  store i32 %38, i32* %129, align 4, !tbaa !26
  %130 = getelementptr inbounds i8, i8* %107, i32 4
  %131 = bitcast i8* %130 to i32*
  store i32 %5, i32* %131, align 4, !tbaa !28
  %132 = getelementptr inbounds i8, i8* %107, i32 8
  %133 = bitcast %struct.halide_type_t* %9 to i32*
  %134 = bitcast i8* %132 to i32*
  %135 = load i32, i32* %133, align 4
  store i32 %135, i32* %134, align 4
  %136 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 5
  %137 = load i32, i32* %136, align 4, !tbaa !29
  %138 = getelementptr inbounds i8, i8* %107, i32 12
  %139 = bitcast i8* %138 to i32*
  store i32 %137, i32* %139, align 4, !tbaa !30
  %140 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 6
  %141 = load i32, i32* %140, align 4, !tbaa !31
  %142 = getelementptr inbounds i8, i8* %107, i32 16
  %143 = bitcast i8* %142 to i32*
  store i32 %141, i32* %143, align 4, !tbaa !32
  %144 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 7
  %145 = load i32, i32* %144, align 4, !tbaa !33
  %146 = getelementptr inbounds i8, i8* %107, i32 20
  %147 = bitcast i8* %146 to i32*
  store i32 %145, i32* %147, align 4, !tbaa !34
  %148 = load i32, i32* %19, align 4, !tbaa !14
  %149 = getelementptr inbounds i8, i8* %107, i32 24
  %150 = bitcast i8* %149 to i32*
  store i32 %148, i32* %150, align 4, !tbaa !35
  %151 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 2
  %152 = load i32*, i32** %151, align 4, !tbaa !36
  %153 = icmp eq i32* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %128
  %155 = bitcast i32* %152 to i8*
  %156 = getelementptr inbounds i8, i8* %107, i32 28
  %157 = tail call i8* @memcpy(i8* nonnull %156, i8* nonnull %155, i32 %21) #6
  br label %158

158:                                              ; preds = %154, %128
  %159 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 1
  %160 = load i8*, i8** %159, align 4, !tbaa !37
  %161 = icmp eq i8* %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds i8, i8* %107, i32 28
  %164 = bitcast i8* %163 to i32*
  %165 = load i32, i32* %150, align 4, !tbaa !35
  %166 = getelementptr inbounds i32, i32* %164, i32 %165
  %167 = bitcast i32* %166 to i8*
  %168 = tail call i8* @memcpy(i8* nonnull %167, i8* nonnull %160, i32 %18) #6
  br label %169

169:                                              ; preds = %158, %162
  %170 = getelementptr inbounds i8, i8* %107, i32 28
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %150, align 4, !tbaa !35
  %173 = getelementptr inbounds i32, i32* %171, i32 %172
  %174 = bitcast i32* %173 to i8*
  %175 = getelementptr inbounds i8, i8* %107, i32 10
  %176 = bitcast i8* %175 to i16*
  %177 = load i16, i16* %176, align 2, !tbaa !38
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds i8, i8* %107, i32 9
  %180 = load i8, i8* %179, align 1, !tbaa !13
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %181, 7
  %183 = lshr i32 %182, 3
  %184 = mul nuw nsw i32 %183, %178
  %185 = getelementptr inbounds i8, i8* %174, i32 %184
  %186 = load i8*, i8** %22, align 4, !tbaa !15
  %187 = tail call i8* @memcpy(i8* nonnull %185, i8* %186, i32 %25) #6
  %188 = load i32, i32* %150, align 4, !tbaa !35
  %189 = getelementptr inbounds i32, i32* %171, i32 %188
  %190 = bitcast i32* %189 to i8*
  %191 = load i16, i16* %176, align 2, !tbaa !38
  %192 = zext i16 %191 to i32
  %193 = load i8, i8* %179, align 1, !tbaa !13
  %194 = zext i8 %193 to i32
  %195 = add nuw nsw i32 %194, 7
  %196 = lshr i32 %195, 3
  %197 = mul nuw nsw i32 %196, %192
  %198 = getelementptr inbounds i8, i8* %190, i32 %197
  br label %199

199:                                              ; preds = %199, %169
  %200 = phi i8* [ %198, %169 ], [ %201, %199 ]
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  %202 = load i8, i8* %200, align 1, !tbaa !25
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %199, !llvm.loop !39

204:                                              ; preds = %199
  %205 = load i8*, i8** %26, align 4, !tbaa !16
  %206 = icmp eq i8* %205, null
  %207 = select i1 %206, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* %205
  %208 = tail call i8* @memcpy(i8* nonnull %201, i8* %207, i32 %33) #6
  %209 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !tbaa !17
  fence seq_cst
  %210 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %209, i32 0, i32 0, i32 0
  %211 = atomicrmw sub i32* %210, i32 1 seq_cst
  %212 = load i32, i32* %136, align 4, !tbaa !29
  %213 = icmp eq i32 %212, 9
  br i1 %213, label %214, label %526

214:                                              ; preds = %204
  %215 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !tbaa !17
  %216 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 0, i32 0
  br label %217

217:                                              ; preds = %217, %214
  %218 = atomicrmw or i32* %216, i32 1073741824 seq_cst
  %219 = cmpxchg i32* %216, i32 1073741824, i32 -2147483648 seq_cst seq_cst
  %220 = extractvalue { i32, i1 } %219, 1
  br i1 %220, label %221, label %217

221:                                              ; preds = %217
  %222 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 1
  %223 = load i32, i32* %222, align 4, !tbaa !22
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 2
  %227 = load i32, i32* %226, align 4, !tbaa !24
  %228 = sub i32 %223, %227
  store i32 %228, i32* %222, align 4, !tbaa !22
  %229 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 3, i32 0
  %230 = tail call i32 @write(i32 %6, i8* nonnull %229, i32 %228) #6
  %231 = icmp eq i32 %228, %230
  store i32 0, i32* %222, align 4, !tbaa !22
  store i32 0, i32* %226, align 4, !tbaa !24
  %232 = atomicrmw and i32* %216, i32 2147483647 seq_cst
  br i1 %231, label %526, label %233

233:                                              ; preds = %225
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %526

234:                                              ; preds = %221
  %235 = atomicrmw and i32* %216, i32 2147483647 seq_cst
  br label %526

236:                                              ; preds = %2
  %237 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %237) #7
  %238 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %238) #7
  %239 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 3
  store i8* %0, i8** %239, align 4, !tbaa !40
  %240 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 4
  store i8 0, i8* %240, align 4, !tbaa !43
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 0
  store i8* %237, i8** %241, align 4
  %242 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 1
  store i8* %237, i8** %242, align 4, !tbaa !44
  %243 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 4095
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 2
  store i8* %243, i8** %244, align 4, !tbaa !45
  store i8 0, i8* %243, align 1, !tbaa !25
  %245 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 1
  %246 = load i8, i8* %245, align 1, !tbaa !46
  %247 = zext i8 %246 to i32
  br label %248

248:                                              ; preds = %248, %236
  %249 = phi i32 [ 8, %236 ], [ %251, %248 ]
  %250 = icmp slt i32 %249, %247
  %251 = shl i32 %249, 1
  br i1 %250, label %248, label %252, !llvm.loop !47

252:                                              ; preds = %248
  %253 = icmp slt i32 %249, 65
  br i1 %253, label %257, label %254

254:                                              ; preds = %252
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i32 0, i32 0)) #6
  call void @abort() #6
  %255 = load i8*, i8** %242, align 4, !tbaa !44
  %256 = load i8*, i8** %244, align 4, !tbaa !45
  br label %257

257:                                              ; preds = %254, %252
  %258 = phi i8* [ %256, %254 ], [ %243, %252 ]
  %259 = phi i8* [ %255, %254 ], [ %237, %252 ]
  %260 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 5
  %261 = load i32, i32* %260, align 4, !tbaa !29
  %262 = icmp slt i32 %261, 2
  %263 = getelementptr inbounds [11 x i8*], [11 x i8*]* @__const.halide_default_trace.event_types, i32 0, i32 %261
  %264 = load i8*, i8** %263, align 4, !tbaa !17
  %265 = call i8* @halide_string_to_string(i8* %259, i8* %258, i8* nonnull %264) #6
  store i8* %265, i8** %242, align 4, !tbaa !44
  %266 = load i8*, i8** %244, align 4, !tbaa !45
  %267 = call i8* @halide_string_to_string(i8* %265, i8* %266, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #6
  store i8* %267, i8** %242, align 4, !tbaa !44
  %268 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 0
  %269 = load i8*, i8** %268, align 4, !tbaa !15
  %270 = icmp eq i8* %269, null
  %271 = load i8*, i8** %244, align 4, !tbaa !45
  br i1 %270, label %272, label %274

272:                                              ; preds = %257
  %273 = call i8* @halide_string_to_string(i8* %267, i8* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #6
  br label %276

274:                                              ; preds = %257
  %275 = call i8* @halide_string_to_string(i8* %267, i8* %271, i8* nonnull %269) #6
  br label %276

276:                                              ; preds = %272, %274
  %277 = phi i8* [ %275, %274 ], [ %273, %272 ]
  store i8* %277, i8** %242, align 4, !tbaa !44
  %278 = load i8*, i8** %244, align 4, !tbaa !45
  %279 = call i8* @halide_string_to_string(i8* %277, i8* %278, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)) #6
  store i8* %279, i8** %242, align 4, !tbaa !44
  %280 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 7
  %281 = load i32, i32* %280, align 4, !tbaa !33
  %282 = load i8*, i8** %244, align 4, !tbaa !45
  %283 = sext i32 %281 to i64
  %284 = call i8* @halide_int64_to_string(i8* %279, i8* %282, i64 %283, i32 1) #6
  store i8* %284, i8** %242, align 4, !tbaa !44
  %285 = load i8*, i8** %244, align 4, !tbaa !45
  %286 = call i8* @halide_string_to_string(i8* %284, i8* %285, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #6
  store i8* %286, i8** %242, align 4, !tbaa !44
  %287 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 2
  %288 = load i16, i16* %287, align 2, !tbaa !3
  %289 = icmp ugt i16 %288, 1
  br i1 %289, label %290, label %293

290:                                              ; preds = %276
  %291 = load i8*, i8** %244, align 4, !tbaa !45
  %292 = call i8* @halide_string_to_string(i8* %286, i8* %291, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #6
  store i8* %292, i8** %242, align 4, !tbaa !44
  br label %293

293:                                              ; preds = %290, %276
  %294 = phi i8* [ %292, %290 ], [ %286, %276 ]
  %295 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 8
  %296 = load i32, i32* %295, align 4, !tbaa !14
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 2
  %300 = load i32*, i32** %299, align 4, !tbaa !36
  %301 = load i32, i32* %300, align 4, !tbaa !48
  %302 = load i8*, i8** %244, align 4, !tbaa !45
  %303 = sext i32 %301 to i64
  %304 = call i8* @halide_int64_to_string(i8* %294, i8* %302, i64 %303, i32 1) #6
  store i8* %304, i8** %242, align 4, !tbaa !44
  %305 = load i32, i32* %295, align 4, !tbaa !14
  %306 = icmp sgt i32 %305, 1
  br i1 %306, label %314, label %307

307:                                              ; preds = %324, %298, %293
  %308 = phi i8* [ %294, %293 ], [ %304, %298 ], [ %333, %324 ]
  %309 = load i16, i16* %287, align 2, !tbaa !3
  %310 = icmp ugt i16 %309, 1
  %311 = load i8*, i8** %244, align 4, !tbaa !45
  %312 = select i1 %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)
  %313 = call i8* @halide_string_to_string(i8* %308, i8* %311, i8* nonnull %312) #6
  store i8* %313, i8** %242, align 4, !tbaa !44
  br i1 %262, label %337, label %466

314:                                              ; preds = %298, %324
  %315 = phi i8* [ %333, %324 ], [ %304, %298 ]
  %316 = phi i32 [ %334, %324 ], [ 1, %298 ]
  %317 = load i16, i16* %287, align 2, !tbaa !3
  %318 = icmp ugt i16 %317, 1
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = zext i16 %317 to i32
  %321 = urem i32 %316, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %319, %314
  br label %324

324:                                              ; preds = %319, %323
  %325 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %323 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %319 ]
  %326 = load i8*, i8** %244, align 4, !tbaa !45
  %327 = call i8* @halide_string_to_string(i8* %315, i8* %326, i8* nonnull %325) #6
  store i8* %327, i8** %242, align 4, !tbaa !44
  %328 = load i32*, i32** %299, align 4, !tbaa !36
  %329 = getelementptr inbounds i32, i32* %328, i32 %316
  %330 = load i32, i32* %329, align 4, !tbaa !48
  %331 = load i8*, i8** %244, align 4, !tbaa !45
  %332 = sext i32 %330 to i64
  %333 = call i8* @halide_int64_to_string(i8* %327, i8* %331, i64 %332, i32 1) #6
  store i8* %333, i8** %242, align 4, !tbaa !44
  %334 = add nuw nsw i32 %316, 1
  %335 = load i32, i32* %295, align 4, !tbaa !14
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %314, label %307, !llvm.loop !49

337:                                              ; preds = %307
  %338 = load i16, i16* %287, align 2, !tbaa !3
  %339 = icmp ugt i16 %338, 1
  %340 = load i8*, i8** %244, align 4, !tbaa !45
  %341 = select i1 %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)
  %342 = call i8* @halide_string_to_string(i8* %313, i8* %340, i8* nonnull %341) #6
  store i8* %342, i8** %242, align 4, !tbaa !44
  %343 = load i16, i16* %287, align 2, !tbaa !3
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %466, label %345

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 0
  %347 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 1
  %348 = bitcast i8** %347 to i8***
  %349 = icmp sgt i32 %249, 15
  %350 = bitcast i8** %347 to i16**
  %351 = bitcast i8** %347 to float**
  %352 = bitcast i8** %347 to double**
  %353 = bitcast i8** %347 to i32**
  %354 = bitcast i8** %347 to i64**
  br label %357

355:                                              ; preds = %457
  %356 = icmp ugt i16 %460, 1
  br i1 %356, label %463, label %466

357:                                              ; preds = %345, %457
  %358 = phi i8* [ %342, %345 ], [ %458, %457 ]
  %359 = phi i32 [ 0, %345 ], [ %459, %457 ]
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %357
  %362 = load i8*, i8** %244, align 4, !tbaa !45
  %363 = call i8* @halide_string_to_string(i8* %358, i8* %362, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #6
  store i8* %363, i8** %242, align 4, !tbaa !44
  br label %364

364:                                              ; preds = %361, %357
  %365 = phi i8* [ %363, %361 ], [ %358, %357 ]
  %366 = load i8, i8* %346, align 4, !tbaa !51
  switch i8 %366, label %457 [
    i8 0, label %367
    i8 1, label %395
    i8 2, label %423
    i8 3, label %449
  ]

367:                                              ; preds = %364
  switch i32 %249, label %389 [
    i32 8, label %368
    i32 16, label %375
    i32 32, label %382
  ]

368:                                              ; preds = %367
  %369 = load i8*, i8** %347, align 4, !tbaa !37
  %370 = getelementptr inbounds i8, i8* %369, i32 %359
  %371 = load i8, i8* %370, align 1, !tbaa !25
  %372 = load i8*, i8** %244, align 4, !tbaa !45
  %373 = sext i8 %371 to i64
  %374 = call i8* @halide_int64_to_string(i8* %365, i8* %372, i64 %373, i32 1) #6
  br label %455

375:                                              ; preds = %367
  %376 = load i16*, i16** %350, align 4, !tbaa !37
  %377 = getelementptr inbounds i16, i16* %376, i32 %359
  %378 = load i16, i16* %377, align 2, !tbaa !52
  %379 = load i8*, i8** %244, align 4, !tbaa !45
  %380 = sext i16 %378 to i64
  %381 = call i8* @halide_int64_to_string(i8* %365, i8* %379, i64 %380, i32 1) #6
  br label %455

382:                                              ; preds = %367
  %383 = load i32*, i32** %353, align 4, !tbaa !37
  %384 = getelementptr inbounds i32, i32* %383, i32 %359
  %385 = load i32, i32* %384, align 4, !tbaa !48
  %386 = load i8*, i8** %244, align 4, !tbaa !45
  %387 = sext i32 %385 to i64
  %388 = call i8* @halide_int64_to_string(i8* %365, i8* %386, i64 %387, i32 1) #6
  br label %455

389:                                              ; preds = %367
  %390 = load i64*, i64** %354, align 4, !tbaa !37
  %391 = getelementptr inbounds i64, i64* %390, i32 %359
  %392 = load i64, i64* %391, align 8, !tbaa !53
  %393 = load i8*, i8** %244, align 4, !tbaa !45
  %394 = call i8* @halide_int64_to_string(i8* %365, i8* %393, i64 %392, i32 1) #6
  br label %455

395:                                              ; preds = %364
  switch i32 %249, label %417 [
    i32 8, label %396
    i32 16, label %403
    i32 32, label %410
  ]

396:                                              ; preds = %395
  %397 = load i8*, i8** %347, align 4, !tbaa !37
  %398 = getelementptr inbounds i8, i8* %397, i32 %359
  %399 = load i8, i8* %398, align 1, !tbaa !25
  %400 = load i8*, i8** %244, align 4, !tbaa !45
  %401 = zext i8 %399 to i64
  %402 = call i8* @halide_int64_to_string(i8* %365, i8* %400, i64 %401, i32 1) #6
  br label %455

403:                                              ; preds = %395
  %404 = load i16*, i16** %350, align 4, !tbaa !37
  %405 = getelementptr inbounds i16, i16* %404, i32 %359
  %406 = load i16, i16* %405, align 2, !tbaa !52
  %407 = load i8*, i8** %244, align 4, !tbaa !45
  %408 = zext i16 %406 to i64
  %409 = call i8* @halide_int64_to_string(i8* %365, i8* %407, i64 %408, i32 1) #6
  br label %455

410:                                              ; preds = %395
  %411 = load i32*, i32** %353, align 4, !tbaa !37
  %412 = getelementptr inbounds i32, i32* %411, i32 %359
  %413 = load i32, i32* %412, align 4, !tbaa !48
  %414 = load i8*, i8** %244, align 4, !tbaa !45
  %415 = zext i32 %413 to i64
  %416 = call i8* @halide_uint64_to_string(i8* %365, i8* %414, i64 %415, i32 1) #6
  br label %455

417:                                              ; preds = %395
  %418 = load i64*, i64** %354, align 4, !tbaa !37
  %419 = getelementptr inbounds i64, i64* %418, i32 %359
  %420 = load i64, i64* %419, align 8, !tbaa !53
  %421 = load i8*, i8** %244, align 4, !tbaa !45
  %422 = call i8* @halide_uint64_to_string(i8* %365, i8* %421, i64 %420, i32 1) #6
  br label %455

423:                                              ; preds = %364
  br i1 %349, label %425, label %424

424:                                              ; preds = %423
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.24, i32 0, i32 0)) #6
  call void @abort() #6
  br label %425

425:                                              ; preds = %424, %423
  switch i32 %249, label %442 [
    i32 32, label %426
    i32 16, label %434
  ]

426:                                              ; preds = %425
  %427 = load float*, float** %351, align 4, !tbaa !37
  %428 = getelementptr inbounds float, float* %427, i32 %359
  %429 = load float, float* %428, align 4, !tbaa !55
  %430 = load i8*, i8** %242, align 4, !tbaa !44
  %431 = load i8*, i8** %244, align 4, !tbaa !45
  %432 = fpext float %429 to double
  %433 = call i8* @halide_double_to_string(i8* %430, i8* %431, double %432, i32 0) #6
  br label %455

434:                                              ; preds = %425
  %435 = load i16*, i16** %350, align 4, !tbaa !37
  %436 = getelementptr inbounds i16, i16* %435, i32 %359
  %437 = load i16, i16* %436, align 2, !tbaa !52
  %438 = call double @halide_float16_bits_to_double(i16 zeroext %437) #6
  %439 = load i8*, i8** %242, align 4, !tbaa !44
  %440 = load i8*, i8** %244, align 4, !tbaa !45
  %441 = call i8* @halide_double_to_string(i8* %439, i8* %440, double %438, i32 1) #6
  br label %455

442:                                              ; preds = %425
  %443 = load double*, double** %352, align 4, !tbaa !37
  %444 = getelementptr inbounds double, double* %443, i32 %359
  %445 = load double, double* %444, align 8, !tbaa !57
  %446 = load i8*, i8** %242, align 4, !tbaa !44
  %447 = load i8*, i8** %244, align 4, !tbaa !45
  %448 = call i8* @halide_double_to_string(i8* %446, i8* %447, double %445, i32 1) #6
  br label %455

449:                                              ; preds = %364
  %450 = load i8**, i8*** %348, align 4, !tbaa !37
  %451 = getelementptr inbounds i8*, i8** %450, i32 %359
  %452 = load i8*, i8** %451, align 4, !tbaa !17
  %453 = load i8*, i8** %244, align 4, !tbaa !45
  %454 = call i8* @halide_pointer_to_string(i8* %365, i8* %453, i8* %452) #6
  br label %455

455:                                              ; preds = %403, %417, %410, %396, %449, %426, %442, %434, %368, %382, %389, %375
  %456 = phi i8* [ %381, %375 ], [ %394, %389 ], [ %388, %382 ], [ %374, %368 ], [ %441, %434 ], [ %448, %442 ], [ %433, %426 ], [ %454, %449 ], [ %402, %396 ], [ %416, %410 ], [ %422, %417 ], [ %409, %403 ]
  store i8* %456, i8** %242, align 4, !tbaa !44
  br label %457

457:                                              ; preds = %455, %364
  %458 = phi i8* [ %365, %364 ], [ %456, %455 ]
  %459 = add nuw nsw i32 %359, 1
  %460 = load i16, i16* %287, align 2, !tbaa !3
  %461 = zext i16 %460 to i32
  %462 = icmp ult i32 %459, %461
  br i1 %462, label %357, label %355, !llvm.loop !59

463:                                              ; preds = %355
  %464 = load i8*, i8** %244, align 4, !tbaa !45
  %465 = call i8* @halide_string_to_string(i8* %458, i8* %464, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)) #6
  store i8* %465, i8** %242, align 4, !tbaa !44
  br label %466

466:                                              ; preds = %337, %355, %463, %307
  %467 = phi i8* [ %458, %355 ], [ %465, %463 ], [ %313, %307 ], [ %342, %337 ]
  %468 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 3
  %469 = load i8*, i8** %468, align 4, !tbaa !16
  %470 = icmp eq i8* %469, null
  br i1 %470, label %488, label %471

471:                                              ; preds = %466
  %472 = load i8, i8* %469, align 1, !tbaa !25
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %488, label %474

474:                                              ; preds = %471
  %475 = load i8*, i8** %244, align 4, !tbaa !45
  %476 = call i8* @halide_string_to_string(i8* %467, i8* %475, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #6
  store i8* %476, i8** %242, align 4, !tbaa !44
  %477 = load i8*, i8** %468, align 4, !tbaa !16
  %478 = icmp eq i8* %477, null
  %479 = load i8*, i8** %244, align 4, !tbaa !45
  br i1 %478, label %480, label %482

480:                                              ; preds = %474
  %481 = call i8* @halide_string_to_string(i8* %476, i8* %479, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #6
  br label %484

482:                                              ; preds = %474
  %483 = call i8* @halide_string_to_string(i8* %476, i8* %479, i8* nonnull %477) #6
  br label %484

484:                                              ; preds = %480, %482
  %485 = phi i8* [ %483, %482 ], [ %481, %480 ]
  store i8* %485, i8** %242, align 4, !tbaa !44
  %486 = load i8*, i8** %244, align 4, !tbaa !45
  %487 = call i8* @halide_string_to_string(i8* %485, i8* %486, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)) #6
  store i8* %487, i8** %242, align 4, !tbaa !44
  br label %488

488:                                              ; preds = %484, %471, %466
  %489 = phi i8* [ %487, %484 ], [ %467, %471 ], [ %467, %466 ]
  %490 = load i8*, i8** %244, align 4, !tbaa !45
  %491 = call i8* @halide_string_to_string(i8* %489, i8* %490, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %491, i8** %242, align 4, !tbaa !44
  %492 = load i8*, i8** %241, align 4, !tbaa !60
  %493 = load i8*, i8** %239, align 4, !tbaa !40
  %494 = ptrtoint i8* %491 to i32
  %495 = ptrtoint i8* %492 to i32
  %496 = add i32 %494, 1
  %497 = sub i32 %496, %495
  %498 = sext i32 %497 to i64
  %499 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %493, i8* %492, i64 %498) #6
  br label %500

500:                                              ; preds = %500, %488
  %501 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %500, !llvm.loop !61

503:                                              ; preds = %500
  call void @halide_print(i8* %0, i8* nonnull %237) #6
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1
  %504 = load i8*, i8** %241, align 4, !tbaa !60
  %505 = icmp eq i8* %504, null
  br i1 %505, label %506, label %508

506:                                              ; preds = %503
  %507 = load i8*, i8** %239, align 4, !tbaa !40
  call void @halide_error(i8* %507, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)) #6
  br label %517

508:                                              ; preds = %503
  %509 = load i8*, i8** %242, align 4, !tbaa !44
  %510 = load i8*, i8** %239, align 4, !tbaa !40
  %511 = ptrtoint i8* %509 to i32
  %512 = ptrtoint i8* %504 to i32
  %513 = sub i32 1, %512
  %514 = add i32 %513, %511
  %515 = sext i32 %514 to i64
  %516 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %510, i8* nonnull %504, i64 %515) #6
  br label %517

517:                                              ; preds = %508, %506
  %518 = load i8, i8* %240, align 4, !tbaa !43, !range !62
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %525, label %520

520:                                              ; preds = %517
  %521 = load i8*, i8** %241, align 4, !tbaa !60
  %522 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 5, i32 0
  %523 = icmp eq i8* %521, %522
  br i1 %523, label %525, label %524

524:                                              ; preds = %520
  call void @free(i8* %521) #6
  br label %525

525:                                              ; preds = %517, %520, %524
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %238) #7
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %237) #7
  br label %526

526:                                              ; preds = %234, %233, %225, %204, %525
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
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #6
  %10 = icmp eq i8* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @fopen(i8* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #6
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.30, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %15

15:                                               ; preds = %14, %11
  %16 = tail call i32 @fileno(i8* %12) #6
  tail call void @halide_set_trace_file(i32 %16) #5
  store i8* %12, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 4, !tbaa !17
  %17 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !tbaa !17
  %18 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = tail call i8* @malloc(i32 1048588) #6
  store i8* %20, i8** bitcast (%"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE to i8**), align 4, !tbaa !17
  %21 = getelementptr inbounds i8, i8* %20, i32 4
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 4, !tbaa !22
  %23 = getelementptr inbounds i8, i8* %20, i32 8
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

declare i32 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #2

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind willreturn mustprogress
define weak i32 (i8*, %struct.halide_trace_event_t*)* @halide_set_custom_trace(i32 (i8*, %struct.halide_trace_event_t*)* %0) local_unnamed_addr #3 {
  %2 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 4, !tbaa !17
  store i32 (i8*, %struct.halide_trace_event_t*)* %0, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 4, !tbaa !17
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

declare i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @halide_trace(i8* %0, %struct.halide_trace_event_t* %1) local_unnamed_addr #4 {
  %3 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 4, !tbaa !17
  %4 = tail call i32 %3(i8* %0, %struct.halide_trace_event_t* %1) #6
  ret i32 %4
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_shutdown_trace() local_unnamed_addr #4 {
  %1 = load i8*, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 4, !tbaa !17
  %2 = icmp eq i8* %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(i8* nonnull %1) #6
  store i32 0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !tbaa !48
  store i8 0, i8* @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, align 1, !tbaa !63
  store i8* null, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 4, !tbaa !17
  %5 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !tbaa !17
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

declare i32 @write(i32, i8*, i32) local_unnamed_addr #2

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
!3 = !{!4, !10, i64 18}
!4 = !{!"_ZTS20halide_trace_event_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !8, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"_ZTS13halide_type_t", !9, i64 0, !6, i64 1, !10, i64 2}
!9 = !{!"_ZTS18halide_type_code_t", !6, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!"_ZTS25halide_trace_event_code_t", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!8, !6, i64 1}
!14 = !{!4, !12, i64 32}
!15 = !{!4, !5, i64 0}
!16 = !{!4, !5, i64 12}
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
!29 = !{!4, !11, i64 20}
!30 = !{!27, !11, i64 12}
!31 = !{!4, !12, i64 24}
!32 = !{!27, !12, i64 16}
!33 = !{!4, !12, i64 28}
!34 = !{!27, !12, i64 20}
!35 = !{!27, !12, i64 24}
!36 = !{!4, !5, i64 8}
!37 = !{!4, !5, i64 4}
!38 = !{!27, !10, i64 10}
!39 = distinct !{!39, !21}
!40 = !{!41, !5, i64 12}
!41 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !42, i64 16, !6, i64 17}
!42 = !{!"bool", !6, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!41, !5, i64 4}
!45 = !{!41, !5, i64 8}
!46 = !{!4, !6, i64 17}
!47 = distinct !{!47, !21}
!48 = !{!12, !12, i64 0}
!49 = distinct !{!49, !21, !50}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{!4, !9, i64 16}
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
