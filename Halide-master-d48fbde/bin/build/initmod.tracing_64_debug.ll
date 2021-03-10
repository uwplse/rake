; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::TraceBuffer" = type { %"class.Halide::Runtime::Internal::SharedExclusiveSpinLock", i32, i32, [1048576 x i8] }
%"class.Halide::Runtime::Internal::SharedExclusiveSpinLock" = type { i32 }
%struct.halide_trace_event_t = type <{ i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32, [4 x i8] }>
%struct.halide_type_t = type { i8, i8, i16 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.halide_trace_packet_t = type { i32, i32, %struct.halide_type_t, i32, i32, i32, i32 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"struct.Halide::Runtime::Internal::ScopedSpinLock" = type { i8* }

@_ZN6Halide7Runtime8Internal19halide_trace_bufferE = weak dso_local local_unnamed_addr global %"class.Halide::Runtime::Internal::TraceBuffer"* null, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal17halide_trace_fileE = weak dso_local local_unnamed_addr global i32 -1, align 4, !dbg !157
@_ZN6Halide7Runtime8Internal22halide_trace_file_lockE = weak dso_local global i8 0, align 1, !dbg !159
@_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !176
@_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE = weak dso_local local_unnamed_addr global i8* null, align 8, !dbg !178
@_ZZ20halide_default_traceE3ids = internal global i32 1, align 4, !dbg !180
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
@_ZN6Halide7Runtime8Internal19halide_custom_traceE = weak dso_local local_unnamed_addr global i32 (i8*, %struct.halide_trace_event_t*)* @halide_default_trace, align 8, !dbg !306
@.str.28 = private unnamed_addr constant [14 x i8] c"HL_TRACE_FILE\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.30 = private unnamed_addr constant [132 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:353 Assert failed: file && \22Failed to open trace file\\n\22\0A\00", align 1
@.str.31 = private unnamed_addr constant [113 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:87 Assert failed: size <= buffer_size\0A\00", align 1
@.str.32 = private unnamed_addr constant [137 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp:115 Assert failed: success && \22Could not write to trace file\22\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_trace_cleanup, i8* null }]

; Function Attrs: nounwind
define weak dso_local i32 @halide_default_trace(i8* %0, %struct.halide_trace_event_t* %1) #0 !dbg !182 {
  %3 = alloca [4096 x i8], align 1
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !315, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_trace_event_t* %1, metadata !316, metadata !DIExpression()), !dbg !420
  %5 = atomicrmw add i32* @_ZZ20halide_default_traceE3ids, i32 1 seq_cst, !dbg !421
  call void @llvm.dbg.value(metadata i32 %5, metadata !317, metadata !DIExpression()), !dbg !420
  %6 = tail call i32 @halide_get_trace_file(i8* %0) #6, !dbg !422
  call void @llvm.dbg.value(metadata i32 %6, metadata !318, metadata !DIExpression()), !dbg !420
  %7 = icmp sgt i32 %6, 0, !dbg !423
  br i1 %7, label %8, label %253, !dbg !424

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, !dbg !425
  %10 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 2, !dbg !426
  %11 = load i16, i16* %10, align 2, !dbg !426, !tbaa !427
  %12 = zext i16 %11 to i32, !dbg !437
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %9, metadata !438, metadata !DIExpression()), !dbg !442
  %13 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 1, !dbg !444
  %14 = load i8, i8* %13, align 1, !dbg !444, !tbaa !445
  %15 = zext i8 %14 to i32, !dbg !444
  %16 = add nuw nsw i32 %15, 7, !dbg !446
  %17 = lshr i32 %16, 3, !dbg !447
  %18 = mul nuw nsw i32 %17, %12, !dbg !448
  call void @llvm.dbg.value(metadata i32 %18, metadata !319, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 28, metadata !322, metadata !DIExpression()), !dbg !449
  %19 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 8, !dbg !450
  %20 = load i32, i32* %19, align 8, !dbg !450, !tbaa !451
  %21 = shl i32 %20, 2, !dbg !452
  call void @llvm.dbg.value(metadata i32 %21, metadata !323, metadata !DIExpression()), !dbg !449
  %22 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 0, !dbg !453
  %23 = load i8*, i8** %22, align 8, !dbg !453, !tbaa !454
  %24 = tail call i64 @strlen(i8* %23) #7, !dbg !455
  %25 = trunc i64 %24 to i32, !dbg !455
  %26 = add i32 %25, 1, !dbg !455
  call void @llvm.dbg.value(metadata i32 %26, metadata !324, metadata !DIExpression()), !dbg !449
  %27 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 3, !dbg !456
  %28 = load i8*, i8** %27, align 8, !dbg !456, !tbaa !457
  %29 = icmp eq i8* %28, null, !dbg !458
  br i1 %29, label %34, label %30, !dbg !458

30:                                               ; preds = %8
  %31 = tail call i64 @strlen(i8* nonnull %28) #7, !dbg !459
  %32 = trunc i64 %31 to i32, !dbg !458
  %33 = add i32 %32, 1, !dbg !458
  br label %34, !dbg !458

34:                                               ; preds = %8, %30
  %35 = phi i32 [ %33, %30 ], [ 1, %8 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !325, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 undef, metadata !326, metadata !DIExpression()), !dbg !449
  %36 = add i32 %21, 31, !dbg !460
  %37 = add i32 %36, %18, !dbg !461
  %38 = add i32 %37, %26, !dbg !462
  %39 = add i32 %38, %35, !dbg !463
  %40 = and i32 %39, -4, !dbg !464
  call void @llvm.dbg.value(metadata i32 %40, metadata !327, metadata !DIExpression()), !dbg !449
  %41 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !dbg !465, !tbaa !466
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !467, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata i8* %0, metadata !470, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata i32 %6, metadata !471, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata i32 %40, metadata !472, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata %struct.halide_trace_packet_t* null, metadata !473, metadata !DIExpression()) #8, !dbg !474
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 0, i32 0
  %43 = icmp ult i32 %40, 1048577
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 1
  %45 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 2
  %46 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 3, i64 0
  br i1 %43, label %47, label %79, !dbg !476

47:                                               ; preds = %34, %53
  %48 = load volatile i32, i32* %42, align 4, !dbg !477, !tbaa !492
  %49 = and i32 %48, 1073741823, !dbg !494
  call void @llvm.dbg.value(metadata i32 %49, metadata !483, metadata !DIExpression()) #8, !dbg !495
  %50 = add nuw nsw i32 %49, 1, !dbg !496
  %51 = cmpxchg i32* %42, i32 %49, i32 %50 seq_cst seq_cst, !dbg !498
  %52 = extractvalue { i32, i1 } %51, 1, !dbg !498
  br i1 %52, label %54, label %53

53:                                               ; preds = %47, %77, %76, %68
  br label %47, !dbg !477, !llvm.loop !499

54:                                               ; preds = %47
  %55 = atomicrmw add i32* %44, i32 %40 seq_cst, !dbg !502
  call void @llvm.dbg.value(metadata i32 %55, metadata !490, metadata !DIExpression()) #8, !dbg !503
  %56 = add i32 %55, %40, !dbg !504
  %57 = icmp ugt i32 %56, 1048576, !dbg !506
  br i1 %57, label %58, label %111, !dbg !507

58:                                               ; preds = %54
  %59 = atomicrmw add i32* %45, i32 %40 seq_cst, !dbg !508
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !510, metadata !DIExpression()) #8, !dbg !513
  %60 = atomicrmw sub i32* %42, i32 1 seq_cst, !dbg !515
  call void @llvm.dbg.value(metadata i8* %114, metadata !473, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !516, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata i8* %0, metadata !519, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata i32 %6, metadata !520, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !525, metadata !DIExpression()) #8, !dbg !528
  br label %61, !dbg !530

61:                                               ; preds = %61, %58
  %62 = atomicrmw or i32* %42, i32 1073741824 seq_cst, !dbg !531
  %63 = cmpxchg i32* %42, i32 1073741824, i32 -2147483648 seq_cst seq_cst, !dbg !533
  %64 = extractvalue { i32, i1 } %63, 1, !dbg !533
  br i1 %64, label %65, label %61, !dbg !535, !llvm.loop !536

65:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i8 1, metadata !521, metadata !DIExpression()) #8, !dbg !522
  %66 = load i32, i32* %44, align 4, !dbg !538, !tbaa !540
  %67 = icmp eq i32 %66, 0, !dbg !538
  br i1 %67, label %77, label %68, !dbg !542

68:                                               ; preds = %65
  %69 = load i32, i32* %45, align 4, !dbg !543, !tbaa !545
  %70 = sub i32 %66, %69, !dbg !546
  store i32 %70, i32* %44, align 4, !dbg !546, !tbaa !540
  %71 = zext i32 %70 to i64, !dbg !547
  %72 = tail call i64 @write(i32 %6, i8* nonnull %46, i64 %71) #7, !dbg !548
  %73 = trunc i64 %72 to i32, !dbg !548
  %74 = icmp eq i32 %70, %73, !dbg !549
  call void @llvm.dbg.value(metadata i1 %74, metadata !521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !522
  store i32 0, i32* %44, align 4, !dbg !550, !tbaa !540
  store i32 0, i32* %45, align 4, !dbg !551, !tbaa !545
  call void @llvm.dbg.value(metadata i8 undef, metadata !521, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !552, metadata !DIExpression()) #8, !dbg !555
  %75 = atomicrmw and i32* %42, i32 2147483647 seq_cst, !dbg !557
  br i1 %74, label %53, label %76, !dbg !558

76:                                               ; preds = %68
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !560
  tail call void @abort() #7, !dbg !560
  br label %53, !dbg !560

77:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 undef, metadata !521, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !552, metadata !DIExpression()) #8, !dbg !563
  %78 = atomicrmw and i32* %42, i32 2147483647 seq_cst, !dbg !565
  br label %53, !dbg !558

79:                                               ; preds = %34, %85
  %80 = load volatile i32, i32* %42, align 4, !dbg !477, !tbaa !492
  %81 = and i32 %80, 1073741823, !dbg !494
  call void @llvm.dbg.value(metadata i32 %81, metadata !483, metadata !DIExpression()) #8, !dbg !495
  %82 = add nuw nsw i32 %81, 1, !dbg !496
  %83 = cmpxchg i32* %42, i32 %81, i32 %82 seq_cst seq_cst, !dbg !498
  %84 = extractvalue { i32, i1 } %83, 1, !dbg !498
  br i1 %84, label %86, label %85

85:                                               ; preds = %79, %109, %108, %100
  br label %79, !dbg !477, !llvm.loop !566

86:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !567
  tail call void @abort() #7, !dbg !567
  %87 = atomicrmw add i32* %44, i32 %40 seq_cst, !dbg !502
  call void @llvm.dbg.value(metadata i32 %87, metadata !490, metadata !DIExpression()) #8, !dbg !503
  %88 = add i32 %87, %40, !dbg !504
  %89 = icmp ugt i32 %88, 1048576, !dbg !506
  br i1 %89, label %90, label %111, !dbg !507

90:                                               ; preds = %86
  %91 = atomicrmw add i32* %45, i32 %40 seq_cst, !dbg !508
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !510, metadata !DIExpression()) #8, !dbg !513
  %92 = atomicrmw sub i32* %42, i32 1 seq_cst, !dbg !515
  call void @llvm.dbg.value(metadata i8* %114, metadata !473, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !516, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata i8* %0, metadata !519, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata i32 %6, metadata !520, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !525, metadata !DIExpression()) #8, !dbg !528
  br label %93, !dbg !530

93:                                               ; preds = %93, %90
  %94 = atomicrmw or i32* %42, i32 1073741824 seq_cst, !dbg !531
  %95 = cmpxchg i32* %42, i32 1073741824, i32 -2147483648 seq_cst seq_cst, !dbg !533
  %96 = extractvalue { i32, i1 } %95, 1, !dbg !533
  br i1 %96, label %97, label %93, !dbg !535, !llvm.loop !571

97:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i8 1, metadata !521, metadata !DIExpression()) #8, !dbg !522
  %98 = load i32, i32* %44, align 4, !dbg !538, !tbaa !540
  %99 = icmp eq i32 %98, 0, !dbg !538
  br i1 %99, label %109, label %100, !dbg !542

100:                                              ; preds = %97
  %101 = load i32, i32* %45, align 4, !dbg !543, !tbaa !545
  %102 = sub i32 %98, %101, !dbg !546
  store i32 %102, i32* %44, align 4, !dbg !546, !tbaa !540
  %103 = zext i32 %102 to i64, !dbg !547
  %104 = tail call i64 @write(i32 %6, i8* nonnull %46, i64 %103) #7, !dbg !548
  %105 = trunc i64 %104 to i32, !dbg !548
  %106 = icmp eq i32 %102, %105, !dbg !549
  call void @llvm.dbg.value(metadata i1 %106, metadata !521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !522
  store i32 0, i32* %44, align 4, !dbg !550, !tbaa !540
  store i32 0, i32* %45, align 4, !dbg !551, !tbaa !545
  call void @llvm.dbg.value(metadata i8 undef, metadata !521, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !552, metadata !DIExpression()) #8, !dbg !555
  %107 = atomicrmw and i32* %42, i32 2147483647 seq_cst, !dbg !557
  br i1 %106, label %85, label %108, !dbg !558

108:                                              ; preds = %100
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !560
  tail call void @abort() #7, !dbg !560
  br label %85, !dbg !560

109:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8 undef, metadata !521, metadata !DIExpression()) #8, !dbg !522
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %41, metadata !552, metadata !DIExpression()) #8, !dbg !563
  %110 = atomicrmw and i32* %42, i32 2147483647 seq_cst, !dbg !565
  br label %85, !dbg !558

111:                                              ; preds = %86, %54
  %112 = phi i32 [ %55, %54 ], [ %87, %86 ], !dbg !502
  %113 = zext i32 %112 to i64, !dbg !572
  %114 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %41, i64 0, i32 3, i64 %113, !dbg !572
  call void @llvm.dbg.value(metadata i8* %114, metadata !473, metadata !DIExpression()) #8, !dbg !474
  call void @llvm.dbg.value(metadata i8* %114, metadata !328, metadata !DIExpression()), !dbg !449
  %115 = icmp ugt i32 %40, 4096, !dbg !574
  br i1 %115, label %116, label %134, !dbg !576

116:                                              ; preds = %111
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !577, metadata !DIExpression()) #8, !dbg !583
  call void @llvm.dbg.value(metadata i8* null, metadata !580, metadata !DIExpression()) #8, !dbg !583
  call void @llvm.dbg.value(metadata i8* null, metadata !581, metadata !DIExpression()) #8, !dbg !583
  %117 = tail call i8* @malloc(i64 1024) #7, !dbg !586
  %118 = icmp eq i8* %117, null, !dbg !591
  br i1 %118, label %121, label %119, !dbg !593

119:                                              ; preds = %116
  %120 = getelementptr inbounds i8, i8* %117, i64 1023, !dbg !594
  store i8 0, i8* %120, align 1, !dbg !596, !tbaa !597
  br label %121, !dbg !598

121:                                              ; preds = %116, %119
  %122 = phi i8* [ %120, %119 ], [ null, %116 ], !dbg !599
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !600, metadata !DIExpression()) #8, !dbg !604
  call void @llvm.dbg.value(metadata i32 %40, metadata !603, metadata !DIExpression()) #8, !dbg !604
  %123 = zext i32 %40 to i64, !dbg !606
  %124 = tail call i8* @halide_uint64_to_string(i8* %117, i8* %122, i64 %123, i32 1) #7, !dbg !607
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !608, metadata !DIExpression()) #8, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), metadata !611, metadata !DIExpression()) #8, !dbg !612
  %125 = tail call i8* @halide_string_to_string(i8* %124, i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !614
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !617, metadata !DIExpression()) #8, !dbg !620
  br i1 %118, label %126, label %127, !dbg !622

126:                                              ; preds = %121
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !624
  br label %133, !dbg !627

127:                                              ; preds = %121
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !628, metadata !DIExpression()) #8, !dbg !631
  %128 = ptrtoint i8* %125 to i64, !dbg !634
  %129 = ptrtoint i8* %117 to i64, !dbg !634
  %130 = add i64 %128, 1, !dbg !634
  %131 = sub i64 %130, %129, !dbg !635
  %132 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %117, i64 %131) #7, !dbg !636
  tail call void @halide_print(i8* null, i8* nonnull %117) #7, !dbg !637
  br label %133

133:                                              ; preds = %127, %126
  tail call void @free(i8* %117) #7, !dbg !641
  br label %134, !dbg !644

134:                                              ; preds = %133, %111
  %135 = bitcast i8* %114 to i32*, !dbg !645
  store i32 %40, i32* %135, align 4, !dbg !646, !tbaa !647
  %136 = getelementptr inbounds i8, i8* %114, i64 4, !dbg !649
  %137 = bitcast i8* %136 to i32*, !dbg !649
  store i32 %5, i32* %137, align 4, !dbg !650, !tbaa !651
  %138 = getelementptr inbounds i8, i8* %114, i64 8, !dbg !652
  %139 = bitcast %struct.halide_type_t* %9 to i32*, !dbg !652
  %140 = bitcast i8* %138 to i32*, !dbg !652
  %141 = load i32, i32* %139, align 8, !dbg !652
  store i32 %141, i32* %140, align 4, !dbg !652
  %142 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 5, !dbg !653
  %143 = load i32, i32* %142, align 4, !dbg !653, !tbaa !654
  %144 = getelementptr inbounds i8, i8* %114, i64 12, !dbg !655
  %145 = bitcast i8* %144 to i32*, !dbg !655
  store i32 %143, i32* %145, align 4, !dbg !656, !tbaa !657
  %146 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 6, !dbg !658
  %147 = load i32, i32* %146, align 8, !dbg !658, !tbaa !659
  %148 = getelementptr inbounds i8, i8* %114, i64 16, !dbg !660
  %149 = bitcast i8* %148 to i32*, !dbg !660
  store i32 %147, i32* %149, align 4, !dbg !661, !tbaa !662
  %150 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 7, !dbg !663
  %151 = load i32, i32* %150, align 4, !dbg !663, !tbaa !664
  %152 = getelementptr inbounds i8, i8* %114, i64 20, !dbg !665
  %153 = bitcast i8* %152 to i32*, !dbg !665
  store i32 %151, i32* %153, align 4, !dbg !666, !tbaa !667
  %154 = load i32, i32* %19, align 8, !dbg !668, !tbaa !451
  %155 = getelementptr inbounds i8, i8* %114, i64 24, !dbg !669
  %156 = bitcast i8* %155 to i32*, !dbg !669
  store i32 %154, i32* %156, align 4, !dbg !670, !tbaa !671
  %157 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 2, !dbg !672
  %158 = load i32*, i32** %157, align 8, !dbg !672, !tbaa !674
  %159 = icmp eq i32* %158, null, !dbg !675
  br i1 %159, label %165, label %160, !dbg !676

160:                                              ; preds = %134
  %161 = bitcast i32* %158 to i8*, !dbg !676
  call void @llvm.dbg.value(metadata i8* %114, metadata !677, metadata !DIExpression()), !dbg !680
  %162 = getelementptr inbounds i8, i8* %114, i64 28, !dbg !683
  %163 = zext i32 %21 to i64, !dbg !684
  %164 = tail call i8* @memcpy(i8* nonnull %162, i8* nonnull %161, i64 %163) #7, !dbg !685
  br label %165, !dbg !686

165:                                              ; preds = %160, %134
  %166 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 1, !dbg !687
  %167 = load i8*, i8** %166, align 8, !dbg !687, !tbaa !689
  %168 = icmp eq i8* %167, null, !dbg !690
  br i1 %168, label %178, label %169, !dbg !691

169:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i8* %114, metadata !692, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8* %114, metadata !677, metadata !DIExpression()), !dbg !698
  %170 = getelementptr inbounds i8, i8* %114, i64 28, !dbg !700
  %171 = bitcast i8* %170 to i32*, !dbg !700
  %172 = load i32, i32* %156, align 4, !dbg !701, !tbaa !671
  %173 = sext i32 %172 to i64, !dbg !702
  %174 = getelementptr inbounds i32, i32* %171, i64 %173, !dbg !702
  %175 = bitcast i32* %174 to i8*, !dbg !703
  %176 = zext i32 %18 to i64, !dbg !704
  %177 = tail call i8* @memcpy(i8* nonnull %175, i8* nonnull %167, i64 %176) #7, !dbg !705
  br label %178, !dbg !706

178:                                              ; preds = %165, %169
  call void @llvm.dbg.value(metadata i8* %114, metadata !707, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %114, metadata !692, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i8* %114, metadata !677, metadata !DIExpression()), !dbg !714
  %179 = getelementptr inbounds i8, i8* %114, i64 28, !dbg !716
  %180 = bitcast i8* %179 to i32*, !dbg !716
  %181 = load i32, i32* %156, align 4, !dbg !717, !tbaa !671
  %182 = sext i32 %181 to i64, !dbg !718
  %183 = getelementptr inbounds i32, i32* %180, i64 %182, !dbg !718
  %184 = bitcast i32* %183 to i8*, !dbg !719
  %185 = getelementptr inbounds i8, i8* %114, i64 10, !dbg !720
  %186 = bitcast i8* %185 to i16*, !dbg !720
  %187 = load i16, i16* %186, align 2, !dbg !720, !tbaa !721
  %188 = zext i16 %187 to i32, !dbg !722
  call void @llvm.dbg.value(metadata i8* %114, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !723
  %189 = getelementptr inbounds i8, i8* %114, i64 9, !dbg !725
  %190 = load i8, i8* %189, align 1, !dbg !725, !tbaa !445
  %191 = zext i8 %190 to i32, !dbg !725
  %192 = add nuw nsw i32 %191, 7, !dbg !726
  %193 = lshr i32 %192, 3, !dbg !727
  %194 = mul nuw nsw i32 %193, %188, !dbg !728
  %195 = zext i32 %194 to i64, !dbg !729
  %196 = getelementptr inbounds i8, i8* %184, i64 %195, !dbg !729
  %197 = load i8*, i8** %22, align 8, !dbg !730, !tbaa !454
  %198 = zext i32 %26 to i64, !dbg !731
  %199 = tail call i8* @memcpy(i8* nonnull %196, i8* %197, i64 %198) #7, !dbg !732
  call void @llvm.dbg.value(metadata i8* %114, metadata !733, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i8* %114, metadata !707, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i8* %114, metadata !692, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i8* %114, metadata !677, metadata !DIExpression()), !dbg !743
  %200 = load i32, i32* %156, align 4, !dbg !745, !tbaa !671
  %201 = sext i32 %200 to i64, !dbg !746
  %202 = getelementptr inbounds i32, i32* %180, i64 %201, !dbg !746
  %203 = bitcast i32* %202 to i8*, !dbg !747
  %204 = load i16, i16* %186, align 2, !dbg !748, !tbaa !721
  %205 = zext i16 %204 to i32, !dbg !749
  call void @llvm.dbg.value(metadata i8* %114, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !750
  %206 = load i8, i8* %189, align 1, !dbg !752, !tbaa !445
  %207 = zext i8 %206 to i32, !dbg !752
  %208 = add nuw nsw i32 %207, 7, !dbg !753
  %209 = lshr i32 %208, 3, !dbg !754
  %210 = mul nuw nsw i32 %209, %205, !dbg !755
  %211 = zext i32 %210 to i64, !dbg !756
  %212 = getelementptr inbounds i8, i8* %203, i64 %211, !dbg !756
  call void @llvm.dbg.value(metadata i8* %212, metadata !736, metadata !DIExpression()), !dbg !737
  br label %213, !dbg !757

213:                                              ; preds = %213, %178
  %214 = phi i8* [ %212, %178 ], [ %215, %213 ], !dbg !737
  call void @llvm.dbg.value(metadata i8* %214, metadata !736, metadata !DIExpression()), !dbg !737
  %215 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !758
  call void @llvm.dbg.value(metadata i8* %215, metadata !736, metadata !DIExpression()), !dbg !737
  %216 = load i8, i8* %214, align 1, !dbg !759, !tbaa !597
  %217 = icmp eq i8 %216, 0, !dbg !759
  br i1 %217, label %218, label %213, !dbg !757, !llvm.loop !760

218:                                              ; preds = %213
  %219 = load i8*, i8** %27, align 8, !dbg !762, !tbaa !457
  %220 = icmp eq i8* %219, null, !dbg !763
  %221 = select i1 %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %219, !dbg !763
  %222 = zext i32 %35 to i64, !dbg !764
  %223 = tail call i8* @memcpy(i8* nonnull %215, i8* %221, i64 %222) #7, !dbg !765
  %224 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !dbg !766, !tbaa !466
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %224, metadata !767, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %114, metadata !770, metadata !DIExpression()), !dbg !771
  fence seq_cst, !dbg !773
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %224, metadata !510, metadata !DIExpression()), !dbg !774
  %225 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %224, i64 0, i32 0, i32 0, !dbg !776
  %226 = atomicrmw sub i32* %225, i32 1 seq_cst, !dbg !777
  %227 = load i32, i32* %142, align 4, !dbg !778, !tbaa !654
  %228 = icmp eq i32 %227, 9, !dbg !780
  br i1 %228, label %229, label %544, !dbg !781

229:                                              ; preds = %218
  %230 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !dbg !782, !tbaa !466
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %230, metadata !516, metadata !DIExpression()) #8, !dbg !784
  call void @llvm.dbg.value(metadata i8* %0, metadata !519, metadata !DIExpression()) #8, !dbg !784
  call void @llvm.dbg.value(metadata i32 %6, metadata !520, metadata !DIExpression()) #8, !dbg !784
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %230, metadata !525, metadata !DIExpression()) #8, !dbg !786
  %231 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 0, i32 0
  br label %232, !dbg !788

232:                                              ; preds = %232, %229
  %233 = atomicrmw or i32* %231, i32 1073741824 seq_cst, !dbg !789
  %234 = cmpxchg i32* %231, i32 1073741824, i32 -2147483648 seq_cst seq_cst, !dbg !790
  %235 = extractvalue { i32, i1 } %234, 1, !dbg !790
  br i1 %235, label %236, label %232, !dbg !791, !llvm.loop !792

236:                                              ; preds = %232
  call void @llvm.dbg.value(metadata i8 1, metadata !521, metadata !DIExpression()) #8, !dbg !784
  %237 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 1, !dbg !794
  %238 = load i32, i32* %237, align 4, !dbg !794, !tbaa !540
  %239 = icmp eq i32 %238, 0, !dbg !794
  br i1 %239, label %251, label %240, !dbg !795

240:                                              ; preds = %236
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 2, !dbg !796
  %242 = load i32, i32* %241, align 4, !dbg !796, !tbaa !545
  %243 = sub i32 %238, %242, !dbg !797
  store i32 %243, i32* %237, align 4, !dbg !797, !tbaa !540
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %230, i64 0, i32 3, i64 0, !dbg !798
  %245 = zext i32 %243 to i64, !dbg !799
  %246 = tail call i64 @write(i32 %6, i8* nonnull %244, i64 %245) #7, !dbg !800
  %247 = trunc i64 %246 to i32, !dbg !800
  %248 = icmp eq i32 %243, %247, !dbg !801
  call void @llvm.dbg.value(metadata i1 %248, metadata !521, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !784
  store i32 0, i32* %237, align 4, !dbg !802, !tbaa !540
  store i32 0, i32* %241, align 4, !dbg !803, !tbaa !545
  call void @llvm.dbg.value(metadata i8 undef, metadata !521, metadata !DIExpression()) #8, !dbg !784
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %230, metadata !552, metadata !DIExpression()) #8, !dbg !804
  %249 = atomicrmw and i32* %231, i32 2147483647 seq_cst, !dbg !806
  br i1 %248, label %544, label %250, !dbg !807

250:                                              ; preds = %240
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !808
  tail call void @abort() #7, !dbg !808
  br label %544, !dbg !808

251:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i8 undef, metadata !521, metadata !DIExpression()) #8, !dbg !784
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %230, metadata !552, metadata !DIExpression()) #8, !dbg !809
  %252 = atomicrmw and i32* %231, i32 2147483647 seq_cst, !dbg !811
  br label %544, !dbg !807

253:                                              ; preds = %2
  %254 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %254) #8, !dbg !812
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !329, metadata !DIExpression()), !dbg !813
  %255 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4 to i8*, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %255) #8, !dbg !814
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !334, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !816, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8* %0, metadata !819, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8* %254, metadata !820, metadata !DIExpression()), !dbg !822
  %256 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 3, !dbg !824
  store i8* %0, i8** %256, align 8, !dbg !824, !tbaa !825
  %257 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 4, !dbg !828
  store i8 0, i8* %257, align 8, !dbg !828, !tbaa !829
  %258 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 0, !dbg !830
  store i8* %254, i8** %258, align 8, !dbg !835
  %259 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 1, !dbg !836
  store i8* %254, i8** %259, align 8, !dbg !837, !tbaa !838
  %260 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 4095, !dbg !839
  %261 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 2, !dbg !842
  store i8* %260, i8** %261, align 8, !dbg !843, !tbaa !844
  store i8 0, i8* %260, align 1, !dbg !845, !tbaa !597
  call void @llvm.dbg.value(metadata i32 8, metadata !402, metadata !DIExpression()), !dbg !846
  %262 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 1
  %263 = load i8, i8* %262, align 1, !tbaa !847
  %264 = zext i8 %263 to i32
  br label %265, !dbg !848

265:                                              ; preds = %265, %253
  %266 = phi i32 [ 8, %253 ], [ %268, %265 ], !dbg !846
  call void @llvm.dbg.value(metadata i32 %266, metadata !402, metadata !DIExpression()), !dbg !846
  %267 = icmp slt i32 %266, %264, !dbg !849
  %268 = shl i32 %266, 1, !dbg !850
  call void @llvm.dbg.value(metadata i32 %268, metadata !402, metadata !DIExpression()), !dbg !846
  br i1 %267, label %265, label %269, !dbg !848, !llvm.loop !852

269:                                              ; preds = %265
  %270 = icmp slt i32 %266, 65, !dbg !854
  br i1 %270, label %274, label %271, !dbg !857

271:                                              ; preds = %269
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !858
  call void @abort() #7, !dbg !858
  %272 = load i8*, i8** %259, align 8, !dbg !860, !tbaa !838
  %273 = load i8*, i8** %261, align 8, !dbg !868, !tbaa !844
  br label %274, !dbg !858

274:                                              ; preds = %271, %269
  %275 = phi i8* [ %273, %271 ], [ %260, %269 ], !dbg !868
  %276 = phi i8* [ %272, %271 ], [ %254, %269 ], !dbg !860
  call void @llvm.dbg.declare(metadata [11 x i8*]* @__const.halide_default_trace.event_types, metadata !403, metadata !DIExpression()), !dbg !869
  %277 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 5, !dbg !870
  %278 = load i32, i32* %277, align 4, !dbg !870, !tbaa !654
  %279 = icmp slt i32 %278, 2, !dbg !871
  call void @llvm.dbg.value(metadata i1 %279, metadata !407, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !846
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !872
  call void @llvm.dbg.value(metadata i8* undef, metadata !866, metadata !DIExpression()) #8, !dbg !872
  %280 = zext i32 %278 to i64, !dbg !873
  %281 = getelementptr inbounds [11 x i8*], [11 x i8*]* @__const.halide_default_trace.event_types, i64 0, i64 %280, !dbg !873
  %282 = load i8*, i8** %281, align 8, !dbg !873, !tbaa !466
  call void @llvm.dbg.value(metadata i8* %282, metadata !866, metadata !DIExpression()) #8, !dbg !872
  %283 = call i8* @halide_string_to_string(i8* %276, i8* %275, i8* nonnull %282) #7, !dbg !874
  store i8* %283, i8** %259, align 8, !dbg !875, !tbaa !838
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !876
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !876
  %284 = load i8*, i8** %261, align 8, !dbg !878, !tbaa !844
  %285 = call i8* @halide_string_to_string(i8* %283, i8* %284, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !879
  store i8* %285, i8** %259, align 8, !dbg !880, !tbaa !838
  %286 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 0, !dbg !881
  %287 = load i8*, i8** %286, align 8, !dbg !881, !tbaa !454
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !882
  call void @llvm.dbg.value(metadata i8* %287, metadata !866, metadata !DIExpression()) #8, !dbg !882
  %288 = icmp eq i8* %287, null, !dbg !884
  %289 = load i8*, i8** %261, align 8, !dbg !885, !tbaa !844
  br i1 %288, label %290, label %292, !dbg !886

290:                                              ; preds = %274
  %291 = call i8* @halide_string_to_string(i8* %285, i8* %289, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !887
  br label %294, !dbg !889

292:                                              ; preds = %274
  %293 = call i8* @halide_string_to_string(i8* %285, i8* %289, i8* nonnull %287) #7, !dbg !890
  br label %294

294:                                              ; preds = %290, %292
  %295 = phi i8* [ %293, %292 ], [ %291, %290 ], !dbg !885
  store i8* %295, i8** %259, align 8, !dbg !885, !tbaa !838
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !891
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !891
  %296 = load i8*, i8** %261, align 8, !dbg !893, !tbaa !844
  %297 = call i8* @halide_string_to_string(i8* %295, i8* %296, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !894
  store i8* %297, i8** %259, align 8, !dbg !895, !tbaa !838
  %298 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 7, !dbg !896
  %299 = load i32, i32* %298, align 4, !dbg !896, !tbaa !664
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !901
  call void @llvm.dbg.value(metadata i32 %299, metadata !900, metadata !DIExpression()) #8, !dbg !901
  %300 = load i8*, i8** %261, align 8, !dbg !903, !tbaa !844
  %301 = sext i32 %299 to i64, !dbg !904
  %302 = call i8* @halide_int64_to_string(i8* %297, i8* %300, i64 %301, i32 1) #7, !dbg !905
  store i8* %302, i8** %259, align 8, !dbg !906, !tbaa !838
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !907
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !907
  %303 = load i8*, i8** %261, align 8, !dbg !909, !tbaa !844
  %304 = call i8* @halide_string_to_string(i8* %302, i8* %303, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !910
  store i8* %304, i8** %259, align 8, !dbg !911, !tbaa !838
  %305 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 4, i32 2, !dbg !912
  %306 = load i16, i16* %305, align 2, !dbg !912, !tbaa !427
  %307 = icmp ugt i16 %306, 1, !dbg !914
  br i1 %307, label %308, label %311, !dbg !915

308:                                              ; preds = %294
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !916
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !916
  %309 = load i8*, i8** %261, align 8, !dbg !919, !tbaa !844
  %310 = call i8* @halide_string_to_string(i8* %304, i8* %309, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !920
  store i8* %310, i8** %259, align 8, !dbg !921, !tbaa !838
  br label %311, !dbg !922

311:                                              ; preds = %308, %294
  %312 = phi i8* [ %310, %308 ], [ %304, %294 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !923
  %313 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 8, !dbg !924
  %314 = load i32, i32* %313, align 8, !dbg !924, !tbaa !451
  %315 = icmp sgt i32 %314, 0, !dbg !926
  br i1 %315, label %316, label %325, !dbg !927

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !408, metadata !DIExpression()), !dbg !923
  %318 = load i32*, i32** %317, align 8, !dbg !928, !tbaa !674
  %319 = load i32, i32* %318, align 4, !dbg !930, !tbaa !931
  %320 = load i8*, i8** %261, align 8, !dbg !932, !tbaa !844
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !934
  call void @llvm.dbg.value(metadata i32 %319, metadata !900, metadata !DIExpression()) #8, !dbg !934
  %321 = sext i32 %319 to i64, !dbg !935
  %322 = call i8* @halide_int64_to_string(i8* %312, i8* %320, i64 %321, i32 1) #7, !dbg !936
  store i8* %322, i8** %259, align 8, !dbg !937, !tbaa !838
  call void @llvm.dbg.value(metadata i64 1, metadata !408, metadata !DIExpression()), !dbg !923
  %323 = load i32, i32* %313, align 8, !dbg !924, !tbaa !451
  %324 = icmp sgt i32 %323, 1, !dbg !926
  br i1 %324, label %332, label %325, !dbg !927

325:                                              ; preds = %343, %316, %311
  %326 = phi i8* [ %312, %311 ], [ %322, %316 ], [ %352, %343 ]
  %327 = load i16, i16* %305, align 2, !dbg !938, !tbaa !427
  %328 = icmp ugt i16 %327, 1, !dbg !940
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !941
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !944
  %329 = load i8*, i8** %261, align 8, !dbg !947, !tbaa !844
  %330 = select i1 %328, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), !dbg !948
  %331 = call i8* @halide_string_to_string(i8* %326, i8* %329, i8* nonnull %330) #7, !dbg !947
  store i8* %331, i8** %259, align 8, !dbg !947, !tbaa !838
  br i1 %279, label %357, label %486, !dbg !949

332:                                              ; preds = %316, %343
  %333 = phi i8* [ %352, %343 ], [ %322, %316 ]
  %334 = phi i64 [ %353, %343 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %334, metadata !408, metadata !DIExpression()), !dbg !923
  %335 = load i16, i16* %305, align 2, !dbg !950, !tbaa !427
  %336 = icmp ugt i16 %335, 1, !dbg !954
  br i1 %336, label %337, label %342, !dbg !955

337:                                              ; preds = %332
  %338 = zext i16 %335 to i32, !dbg !956
  %339 = trunc i64 %334 to i32, !dbg !957
  %340 = urem i32 %339, %338, !dbg !957
  %341 = icmp eq i32 %340, 0, !dbg !958
  br i1 %341, label %343, label %342, !dbg !959

342:                                              ; preds = %337, %332
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !960
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !960
  br label %343

343:                                              ; preds = %337, %342
  %344 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %342 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %337 ]
  %345 = load i8*, i8** %261, align 8, !dbg !963, !tbaa !844
  %346 = call i8* @halide_string_to_string(i8* %333, i8* %345, i8* nonnull %344) #7, !dbg !963
  store i8* %346, i8** %259, align 8, !dbg !963, !tbaa !838
  %347 = load i32*, i32** %317, align 8, !dbg !928, !tbaa !674
  %348 = getelementptr inbounds i32, i32* %347, i64 %334, !dbg !930
  %349 = load i32, i32* %348, align 4, !dbg !930, !tbaa !931
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !934
  call void @llvm.dbg.value(metadata i32 %349, metadata !900, metadata !DIExpression()) #8, !dbg !934
  %350 = load i8*, i8** %261, align 8, !dbg !932, !tbaa !844
  %351 = sext i32 %349 to i64, !dbg !935
  %352 = call i8* @halide_int64_to_string(i8* %346, i8* %350, i64 %351, i32 1) #7, !dbg !936
  store i8* %352, i8** %259, align 8, !dbg !937, !tbaa !838
  %353 = add nuw nsw i64 %334, 1, !dbg !964
  call void @llvm.dbg.value(metadata i64 %353, metadata !408, metadata !DIExpression()), !dbg !923
  %354 = load i32, i32* %313, align 8, !dbg !924, !tbaa !451
  %355 = sext i32 %354 to i64, !dbg !926
  %356 = icmp slt i64 %353, %355, !dbg !926
  br i1 %356, label %332, label %325, !dbg !927, !llvm.loop !965

357:                                              ; preds = %325
  %358 = load i16, i16* %305, align 2, !dbg !968, !tbaa !427
  %359 = icmp ugt i16 %358, 1, !dbg !970
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !971
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !974
  %360 = load i8*, i8** %261, align 8, !dbg !977, !tbaa !844
  %361 = select i1 %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), !dbg !978
  %362 = call i8* @halide_string_to_string(i8* %331, i8* %360, i8* nonnull %361) #7, !dbg !977
  store i8* %362, i8** %259, align 8, !dbg !977, !tbaa !838
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()), !dbg !979
  %363 = load i16, i16* %305, align 2, !dbg !980, !tbaa !427
  %364 = icmp eq i16 %363, 0, !dbg !982
  br i1 %364, label %486, label %365, !dbg !983

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
  br label %377, !dbg !983

375:                                              ; preds = %477
  %376 = icmp ugt i16 %480, 1, !dbg !984
  br i1 %376, label %483, label %486, !dbg !986

377:                                              ; preds = %365, %477
  %378 = phi i8* [ %362, %365 ], [ %478, %477 ]
  %379 = phi i64 [ 0, %365 ], [ %479, %477 ]
  call void @llvm.dbg.value(metadata i64 %379, metadata !410, metadata !DIExpression()), !dbg !979
  %380 = icmp eq i64 %379, 0, !dbg !987
  br i1 %380, label %384, label %381, !dbg !990

381:                                              ; preds = %377
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !991
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !991
  %382 = load i8*, i8** %261, align 8, !dbg !994, !tbaa !844
  %383 = call i8* @halide_string_to_string(i8* %378, i8* %382, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !995
  store i8* %383, i8** %259, align 8, !dbg !996, !tbaa !838
  br label %384, !dbg !997

384:                                              ; preds = %381, %377
  %385 = phi i8* [ %383, %381 ], [ %378, %377 ]
  %386 = load i8, i8* %366, align 8, !dbg !998, !tbaa !1000
  switch i8 %386, label %477 [
    i8 0, label %387
    i8 1, label %415
    i8 2, label %443
    i8 3, label %469
  ], !dbg !1001

387:                                              ; preds = %384
  switch i32 %266, label %409 [
    i32 8, label %388
    i32 16, label %395
    i32 32, label %402
  ], !dbg !1002

388:                                              ; preds = %387
  %389 = load i8*, i8** %367, align 8, !dbg !1004, !tbaa !689
  %390 = getelementptr inbounds i8, i8* %389, i64 %379, !dbg !1007
  %391 = load i8, i8* %390, align 1, !dbg !1007, !tbaa !597
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !1008
  call void @llvm.dbg.value(metadata i8 %391, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #8, !dbg !1008
  %392 = load i8*, i8** %261, align 8, !dbg !1010, !tbaa !844
  %393 = sext i8 %391 to i64, !dbg !1011
  %394 = call i8* @halide_int64_to_string(i8* %385, i8* %392, i64 %393, i32 1) #7, !dbg !1012
  br label %475, !dbg !1013

395:                                              ; preds = %387
  %396 = load i16*, i16** %370, align 8, !dbg !1014, !tbaa !689
  %397 = getelementptr inbounds i16, i16* %396, i64 %379, !dbg !1017
  %398 = load i16, i16* %397, align 2, !dbg !1017, !tbaa !1018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !1019
  call void @llvm.dbg.value(metadata i16 %398, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #8, !dbg !1019
  %399 = load i8*, i8** %261, align 8, !dbg !1021, !tbaa !844
  %400 = sext i16 %398 to i64, !dbg !1022
  %401 = call i8* @halide_int64_to_string(i8* %385, i8* %399, i64 %400, i32 1) #7, !dbg !1023
  br label %475, !dbg !1024

402:                                              ; preds = %387
  %403 = load i32*, i32** %373, align 8, !dbg !1025, !tbaa !689
  %404 = getelementptr inbounds i32, i32* %403, i64 %379, !dbg !1028
  %405 = load i32, i32* %404, align 4, !dbg !1028, !tbaa !931
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !1029
  call void @llvm.dbg.value(metadata i32 %405, metadata !900, metadata !DIExpression()) #8, !dbg !1029
  %406 = load i8*, i8** %261, align 8, !dbg !1031, !tbaa !844
  %407 = sext i32 %405 to i64, !dbg !1032
  %408 = call i8* @halide_int64_to_string(i8* %385, i8* %406, i64 %407, i32 1) #7, !dbg !1033
  br label %475, !dbg !1034

409:                                              ; preds = %387
  %410 = load i64*, i64** %374, align 8, !dbg !1035, !tbaa !689
  %411 = getelementptr inbounds i64, i64* %410, i64 %379, !dbg !1037
  %412 = load i64, i64* %411, align 8, !dbg !1037, !tbaa !1038
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1040, metadata !DIExpression()) #8, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %412, metadata !1043, metadata !DIExpression()) #8, !dbg !1044
  %413 = load i8*, i8** %261, align 8, !dbg !1046, !tbaa !844
  %414 = call i8* @halide_int64_to_string(i8* %385, i8* %413, i64 %412, i32 1) #7, !dbg !1047
  br label %475

415:                                              ; preds = %384
  switch i32 %266, label %437 [
    i32 8, label %416
    i32 16, label %423
    i32 32, label %430
  ], !dbg !1048

416:                                              ; preds = %415
  %417 = load i8*, i8** %367, align 8, !dbg !1051, !tbaa !689
  %418 = getelementptr inbounds i8, i8* %417, i64 %379, !dbg !1054
  %419 = load i8, i8* %418, align 1, !dbg !1054, !tbaa !597
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !1055
  call void @llvm.dbg.value(metadata i8 %419, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1055
  %420 = load i8*, i8** %261, align 8, !dbg !1057, !tbaa !844
  %421 = zext i8 %419 to i64, !dbg !1058
  %422 = call i8* @halide_int64_to_string(i8* %385, i8* %420, i64 %421, i32 1) #7, !dbg !1059
  br label %475, !dbg !1060

423:                                              ; preds = %415
  %424 = load i16*, i16** %370, align 8, !dbg !1061, !tbaa !689
  %425 = getelementptr inbounds i16, i16* %424, i64 %379, !dbg !1064
  %426 = load i16, i16* %425, align 2, !dbg !1064, !tbaa !1018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !897, metadata !DIExpression()) #8, !dbg !1065
  call void @llvm.dbg.value(metadata i16 %426, metadata !900, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1065
  %427 = load i8*, i8** %261, align 8, !dbg !1067, !tbaa !844
  %428 = zext i16 %426 to i64, !dbg !1068
  %429 = call i8* @halide_int64_to_string(i8* %385, i8* %427, i64 %428, i32 1) #7, !dbg !1069
  br label %475, !dbg !1070

430:                                              ; preds = %415
  %431 = load i32*, i32** %373, align 8, !dbg !1071, !tbaa !689
  %432 = getelementptr inbounds i32, i32* %431, i64 %379, !dbg !1074
  %433 = load i32, i32* %432, align 4, !dbg !1074, !tbaa !931
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1075, metadata !DIExpression()) #8, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %433, metadata !1078, metadata !DIExpression()) #8, !dbg !1079
  %434 = load i8*, i8** %261, align 8, !dbg !1081, !tbaa !844
  %435 = zext i32 %433 to i64, !dbg !1082
  %436 = call i8* @halide_uint64_to_string(i8* %385, i8* %434, i64 %435, i32 1) #7, !dbg !1083
  br label %475, !dbg !1084

437:                                              ; preds = %415
  %438 = load i64*, i64** %374, align 8, !dbg !1085, !tbaa !689
  %439 = getelementptr inbounds i64, i64* %438, i64 %379, !dbg !1087
  %440 = load i64, i64* %439, align 8, !dbg !1087, !tbaa !1038
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1088, metadata !DIExpression()) #8, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %440, metadata !1091, metadata !DIExpression()) #8, !dbg !1092
  %441 = load i8*, i8** %261, align 8, !dbg !1094, !tbaa !844
  %442 = call i8* @halide_uint64_to_string(i8* %385, i8* %441, i64 %440, i32 1) #7, !dbg !1095
  br label %475

443:                                              ; preds = %384
  br i1 %369, label %445, label %444, !dbg !1096

444:                                              ; preds = %443
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !1100
  call void @abort() #7, !dbg !1100
  br label %445, !dbg !1100

445:                                              ; preds = %444, %443
  switch i32 %266, label %462 [
    i32 32, label %446
    i32 16, label %454
  ], !dbg !1103

446:                                              ; preds = %445
  %447 = load float*, float** %371, align 8, !dbg !1104, !tbaa !689
  %448 = getelementptr inbounds float, float* %447, i64 %379, !dbg !1107
  %449 = load float, float* %448, align 4, !dbg !1107, !tbaa !1108
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1110, metadata !DIExpression()) #8, !dbg !1114
  call void @llvm.dbg.value(metadata float %449, metadata !1113, metadata !DIExpression()) #8, !dbg !1114
  %450 = load i8*, i8** %259, align 8, !dbg !1116, !tbaa !838
  %451 = load i8*, i8** %261, align 8, !dbg !1117, !tbaa !844
  %452 = fpext float %449 to double, !dbg !1118
  %453 = call i8* @halide_double_to_string(i8* %450, i8* %451, double %452, i32 0) #7, !dbg !1119
  br label %475, !dbg !1120

454:                                              ; preds = %445
  %455 = load i16*, i16** %370, align 8, !dbg !1121, !tbaa !689
  %456 = getelementptr inbounds i16, i16* %455, i64 %379, !dbg !1124
  %457 = load i16, i16* %456, align 2, !dbg !1124, !tbaa !1018
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1125, metadata !DIExpression()) #8, !dbg !1130
  call void @llvm.dbg.value(metadata i16 %457, metadata !1128, metadata !DIExpression()) #8, !dbg !1130
  %458 = call double @halide_float16_bits_to_double(i16 zeroext %457) #7, !dbg !1132
  call void @llvm.dbg.value(metadata double %458, metadata !1129, metadata !DIExpression()) #8, !dbg !1130
  %459 = load i8*, i8** %259, align 8, !dbg !1133, !tbaa !838
  %460 = load i8*, i8** %261, align 8, !dbg !1134, !tbaa !844
  %461 = call i8* @halide_double_to_string(i8* %459, i8* %460, double %458, i32 1) #7, !dbg !1135
  br label %475, !dbg !1136

462:                                              ; preds = %445
  %463 = load double*, double** %372, align 8, !dbg !1137, !tbaa !689
  %464 = getelementptr inbounds double, double* %463, i64 %379, !dbg !1139
  %465 = load double, double* %464, align 8, !dbg !1139, !tbaa !1140
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1142, metadata !DIExpression()) #8, !dbg !1146
  call void @llvm.dbg.value(metadata double %465, metadata !1145, metadata !DIExpression()) #8, !dbg !1146
  %466 = load i8*, i8** %259, align 8, !dbg !1148, !tbaa !838
  %467 = load i8*, i8** %261, align 8, !dbg !1149, !tbaa !844
  %468 = call i8* @halide_double_to_string(i8* %466, i8* %467, double %465, i32 1) #7, !dbg !1150
  br label %475

469:                                              ; preds = %384
  %470 = load i8**, i8*** %368, align 8, !dbg !1151, !tbaa !689
  %471 = getelementptr inbounds i8*, i8** %470, i64 %379, !dbg !1154
  %472 = load i8*, i8** %471, align 8, !dbg !1154, !tbaa !466
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1155, metadata !DIExpression()) #8, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %472, metadata !1158, metadata !DIExpression()) #8, !dbg !1159
  %473 = load i8*, i8** %261, align 8, !dbg !1161, !tbaa !844
  %474 = call i8* @halide_pointer_to_string(i8* %385, i8* %473, i8* %472) #7, !dbg !1162
  br label %475, !dbg !1163

475:                                              ; preds = %423, %437, %430, %416, %469, %446, %462, %454, %388, %402, %409, %395
  %476 = phi i8* [ %401, %395 ], [ %414, %409 ], [ %408, %402 ], [ %394, %388 ], [ %461, %454 ], [ %468, %462 ], [ %453, %446 ], [ %474, %469 ], [ %422, %416 ], [ %436, %430 ], [ %442, %437 ], [ %429, %423 ]
  store i8* %476, i8** %259, align 8, !dbg !1164, !tbaa !838
  br label %477, !dbg !1165

477:                                              ; preds = %475, %384
  %478 = phi i8* [ %385, %384 ], [ %476, %475 ]
  %479 = add nuw nsw i64 %379, 1, !dbg !1165
  call void @llvm.dbg.value(metadata i64 %479, metadata !410, metadata !DIExpression()), !dbg !979
  %480 = load i16, i16* %305, align 2, !dbg !980, !tbaa !427
  %481 = zext i16 %480 to i64, !dbg !982
  %482 = icmp ult i64 %479, %481, !dbg !982
  br i1 %482, label %377, label %375, !dbg !983, !llvm.loop !1166

483:                                              ; preds = %375
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !1168
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !1168
  %484 = load i8*, i8** %261, align 8, !dbg !1171, !tbaa !844
  %485 = call i8* @halide_string_to_string(i8* %478, i8* %484, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1172
  store i8* %485, i8** %259, align 8, !dbg !1173, !tbaa !838
  br label %486, !dbg !1174

486:                                              ; preds = %357, %375, %483, %325
  %487 = phi i8* [ %478, %375 ], [ %485, %483 ], [ %331, %325 ], [ %362, %357 ]
  %488 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i64 0, i32 3, !dbg !1175
  %489 = load i8*, i8** %488, align 8, !dbg !1175, !tbaa !457
  %490 = icmp eq i8* %489, null, !dbg !1177
  br i1 %490, label %508, label %491, !dbg !1178

491:                                              ; preds = %486
  %492 = load i8, i8* %489, align 1, !dbg !1179, !tbaa !597
  %493 = icmp eq i8 %492, 0, !dbg !1179
  br i1 %493, label %508, label %494, !dbg !1180

494:                                              ; preds = %491
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !1181
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !1181
  %495 = load i8*, i8** %261, align 8, !dbg !1184, !tbaa !844
  %496 = call i8* @halide_string_to_string(i8* %487, i8* %495, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1185
  store i8* %496, i8** %259, align 8, !dbg !1186, !tbaa !838
  %497 = load i8*, i8** %488, align 8, !dbg !1187, !tbaa !457
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %497, metadata !866, metadata !DIExpression()) #8, !dbg !1188
  %498 = icmp eq i8* %497, null, !dbg !1190
  %499 = load i8*, i8** %261, align 8, !dbg !1191, !tbaa !844
  br i1 %498, label %500, label %502, !dbg !1192

500:                                              ; preds = %494
  %501 = call i8* @halide_string_to_string(i8* %496, i8* %499, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !1193
  br label %504, !dbg !1194

502:                                              ; preds = %494
  %503 = call i8* @halide_string_to_string(i8* %496, i8* %499, i8* nonnull %497) #7, !dbg !1195
  br label %504

504:                                              ; preds = %500, %502
  %505 = phi i8* [ %503, %502 ], [ %501, %500 ], !dbg !1191
  store i8* %505, i8** %259, align 8, !dbg !1191, !tbaa !838
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !1196
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !1196
  %506 = load i8*, i8** %261, align 8, !dbg !1198, !tbaa !844
  %507 = call i8* @halide_string_to_string(i8* %505, i8* %506, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1199
  store i8* %507, i8** %259, align 8, !dbg !1200, !tbaa !838
  br label %508, !dbg !1201

508:                                              ; preds = %504, %491, %486
  %509 = phi i8* [ %507, %504 ], [ %487, %491 ], [ %487, %486 ], !dbg !1202
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !865, metadata !DIExpression()) #8, !dbg !1204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), metadata !866, metadata !DIExpression()) #8, !dbg !1204
  %510 = load i8*, i8** %261, align 8, !dbg !1205, !tbaa !844
  %511 = call i8* @halide_string_to_string(i8* %509, i8* %510, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1206
  store i8* %511, i8** %259, align 8, !dbg !1207, !tbaa !838
  %512 = load i8*, i8** %258, align 8, !dbg !1208, !tbaa !1209
  %513 = load i8*, i8** %256, align 8, !dbg !1208, !tbaa !825
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1210, metadata !DIExpression()) #8, !dbg !1213
  %514 = ptrtoint i8* %511 to i64, !dbg !1215
  %515 = ptrtoint i8* %512 to i64, !dbg !1215
  %516 = add i64 %514, 1, !dbg !1215
  %517 = sub i64 %516, %515, !dbg !1216
  %518 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %513, i8* %512, i64 %517) #7, !dbg !1217
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1218, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !1221, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !414, metadata !DIExpression()), !dbg !1225
  br label %519, !dbg !1226

519:                                              ; preds = %519, %508
  %520 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire, !dbg !1228
  %521 = icmp eq i8 %520, 0, !dbg !1228
  br i1 %521, label %522, label %519, !dbg !1226, !llvm.loop !1229

522:                                              ; preds = %519
  call void @halide_print(i8* %0, i8* nonnull %254) #7, !dbg !1231
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1232, metadata !DIExpression()), !dbg !1235
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1, !dbg !1237
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1239, metadata !DIExpression()) #8, !dbg !1242
  %523 = load i8*, i8** %258, align 8, !dbg !1244, !tbaa !1209
  %524 = icmp eq i8* %523, null, !dbg !1244
  br i1 %524, label %525, label %527, !dbg !1247

525:                                              ; preds = %522
  %526 = load i8*, i8** %256, align 8, !dbg !1248, !tbaa !825
  call void @halide_error(i8* %526, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !1250
  br label %535, !dbg !1251

527:                                              ; preds = %522
  %528 = load i8*, i8** %259, align 8, !dbg !1252, !tbaa !838
  %529 = load i8*, i8** %256, align 8, !dbg !1252, !tbaa !825
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1210, metadata !DIExpression()) #8, !dbg !1254
  %530 = ptrtoint i8* %528 to i64, !dbg !1256
  %531 = ptrtoint i8* %523 to i64, !dbg !1256
  %532 = sub i64 1, %531, !dbg !1256
  %533 = add i64 %532, %530, !dbg !1257
  %534 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %529, i8* nonnull %523, i64 %533) #7, !dbg !1258
  br label %535

535:                                              ; preds = %527, %525
  %536 = load i8, i8* %257, align 8, !dbg !1259, !tbaa !829, !range !1261
  %537 = icmp eq i8 %536, 0, !dbg !1259
  br i1 %537, label %543, label %538, !dbg !1262

538:                                              ; preds = %535
  %539 = load i8*, i8** %258, align 8, !dbg !1263, !tbaa !1209
  %540 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i64 0, i32 5, i64 0, !dbg !1264
  %541 = icmp eq i8* %539, %540, !dbg !1265
  br i1 %541, label %543, label %542, !dbg !1266

542:                                              ; preds = %538
  call void @free(i8* %539) #7, !dbg !1267
  br label %543, !dbg !1269

543:                                              ; preds = %535, %538, %542
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %255) #8, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %254) #8, !dbg !1270
  br label %544

544:                                              ; preds = %251, %250, %240, %218, %543
  ret i32 %5, !dbg !1271
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_get_trace_file(i8* %0) local_unnamed_addr #0 !dbg !1272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1276, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1218, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !1221, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !1277, metadata !DIExpression()), !dbg !1284
  br label %2, !dbg !1287

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire, !dbg !1288
  %4 = icmp eq i8 %3, 0, !dbg !1288
  br i1 %4, label %5, label %2, !dbg !1287, !llvm.loop !1289

5:                                                ; preds = %2
  %6 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1291, !tbaa !931
  %7 = icmp slt i32 %6, 0, !dbg !1292
  br i1 %7, label %8, label %27, !dbg !1293

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %9, metadata !1278, metadata !DIExpression()), !dbg !1295
  %10 = icmp eq i8* %9, null, !dbg !1296
  br i1 %10, label %26, label %11, !dbg !1297

11:                                               ; preds = %8
  %12 = tail call i8* @fopen(i8* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %12, metadata !1281, metadata !DIExpression()), !dbg !1299
  %13 = icmp eq i8* %12, null, !dbg !1300
  br i1 %13, label %14, label %15, !dbg !1303

14:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !1304
  tail call void @abort() #7, !dbg !1304
  br label %15, !dbg !1304

15:                                               ; preds = %14, %11
  %16 = tail call i32 @fileno(i8* %12) #7, !dbg !1306
  tail call void @halide_set_trace_file(i32 %16) #6, !dbg !1307
  store i8* %12, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 8, !dbg !1308, !tbaa !466
  %17 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !dbg !1309, !tbaa !466
  %18 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %17, null, !dbg !1309
  br i1 %18, label %19, label %27, !dbg !1311

19:                                               ; preds = %15
  %20 = tail call i8* @malloc(i64 1048588) #7, !dbg !1312
  store i8* %20, i8** bitcast (%"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE to i8**), align 8, !dbg !1314, !tbaa !466
  call void @llvm.dbg.value(metadata i8* %20, metadata !1315, metadata !DIExpression()), !dbg !1318
  %21 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !1320
  %22 = bitcast i8* %21 to i32*, !dbg !1320
  store i32 0, i32* %22, align 4, !dbg !1321, !tbaa !540
  %23 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !1322
  %24 = bitcast i8* %23 to i32*, !dbg !1322
  store i32 0, i32* %24, align 4, !dbg !1323, !tbaa !545
  call void @llvm.dbg.value(metadata i8* %20, metadata !1324, metadata !DIExpression()), !dbg !1327
  %25 = bitcast i8* %20 to i32*, !dbg !1329
  store volatile i32 0, i32* %25, align 4, !dbg !1330, !tbaa !492
  br label %27, !dbg !1331

26:                                               ; preds = %8
  tail call void @halide_set_trace_file(i32 0) #6, !dbg !1332
  br label %27

27:                                               ; preds = %26, %19, %15, %5
  %28 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1334, !tbaa !931
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1232, metadata !DIExpression()), !dbg !1335
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1, !dbg !1337
  ret i32 %28, !dbg !1338
}

declare !dbg !1339 dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !1344 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !1347 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1350 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, %struct.halide_trace_event_t*)* @halide_set_custom_trace(i32 (i8*, %struct.halide_trace_event_t*)* %0) local_unnamed_addr #4 !dbg !1353 {
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.halide_trace_event_t*)* %0, metadata !1357, metadata !DIExpression()), !dbg !1359
  %2 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 8, !dbg !1360, !tbaa !466
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.halide_trace_event_t*)* %2, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i32 (i8*, %struct.halide_trace_event_t*)* %0, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 8, !dbg !1361, !tbaa !466
  ret i32 (i8*, %struct.halide_trace_event_t*)* %2, !dbg !1362
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_trace_file(i32 %0) local_unnamed_addr #4 !dbg !1363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1367, metadata !DIExpression()), !dbg !1368
  store i32 %0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1369, !tbaa !931
  ret void, !dbg !1370
}

declare !dbg !1371 dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare !dbg !1374 dso_local i8* @fopen(i8*, i8*) local_unnamed_addr #3

declare !dbg !1377 dso_local i32 @fileno(i8*) local_unnamed_addr #3

declare !dbg !1378 dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_trace(i8* %0, %struct.halide_trace_event_t* %1) local_unnamed_addr #5 !dbg !1381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata %struct.halide_trace_event_t* %1, metadata !1384, metadata !DIExpression()), !dbg !1385
  %3 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 8, !dbg !1386, !tbaa !466
  %4 = tail call i32 %3(i8* %0, %struct.halide_trace_event_t* %1) #7, !dbg !1387
  ret i32 %4, !dbg !1388
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_shutdown_trace() local_unnamed_addr #5 !dbg !1389 {
  %1 = load i8*, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 8, !dbg !1396, !tbaa !466
  %2 = icmp eq i8* %1, null, !dbg !1396
  br i1 %2, label %9, label %3, !dbg !1397

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(i8* nonnull %1) #7, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %4, metadata !1393, metadata !DIExpression()), !dbg !1399
  store i32 0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1400, !tbaa !931
  store i8 0, i8* @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, align 1, !dbg !1401, !tbaa !1402
  store i8* null, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 8, !dbg !1403, !tbaa !466
  %5 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 8, !dbg !1404, !tbaa !466
  %6 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %5, null, !dbg !1404
  br i1 %6, label %9, label %7, !dbg !1406

7:                                                ; preds = %3
  %8 = bitcast %"class.Halide::Runtime::Internal::TraceBuffer"* %5 to i8*, !dbg !1407
  tail call void @free(i8* nonnull %8) #7, !dbg !1409
  br label %9, !dbg !1410

9:                                                ; preds = %0, %3, %7
  %10 = phi i32 [ %4, %7 ], [ %4, %3 ], [ 0, %0 ], !dbg !1411
  ret i32 %10, !dbg !1412
}

declare !dbg !1413 dso_local i32 @fclose(i8*) local_unnamed_addr #3

declare !dbg !1414 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_trace_cleanup() #5 !dbg !1417 {
  %1 = tail call i32 @halide_shutdown_trace() #6, !dbg !1419
  ret void, !dbg !1420
}

declare !dbg !1421 dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

declare !dbg !1425 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !1426 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !1429 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !1432 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !1435 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !1438 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

declare !dbg !1441 dso_local double @halide_float16_bits_to_double(i16 zeroext) local_unnamed_addr #3

declare !dbg !1444 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!203}
!llvm.module.flags = !{!416, !417, !418}
!llvm.ident = !{!419}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halide_trace_buffer", linkageName: "_ZN6Halide7Runtime8Internal19halide_trace_bufferE", scope: !2, file: !5, line: 148, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/tracing.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TraceBuffer", scope: !2, file: !5, line: 78, size: 8388704, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !8, identifier: "_ZTSN6Halide7Runtime8Internal11TraceBufferE")
!8 = !{!9, !30, !31, !32, !38, !144, !147, !150, !153, !156}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !5, line: 79, baseType: !10, size: 32)
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SharedExclusiveSpinLock", scope: !2, file: !5, line: 19, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !11, identifier: "_ZTSN6Halide7Runtime8Internal23SharedExclusiveSpinLockE")
!11 = !{!12, !17, !19, !20, !21, !25, !26, !27, !28, !29}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !10, file: !5, line: 20, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 12, baseType: !16)
!15 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_held_mask", scope: !10, file: !5, line: 26, baseType: !18, flags: DIFlagStaticMember, extraData: i32 -2147483648)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_waiting_mask", scope: !10, file: !5, line: 31, baseType: !18, flags: DIFlagStaticMember, extraData: i32 1073741824)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "shared_mask", scope: !10, file: !5, line: 36, baseType: !18, flags: DIFlagStaticMember, extraData: i32 1073741823)
!21 = !DISubprogram(name: "acquire_shared", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock14acquire_sharedEv", scope: !10, file: !5, line: 39, type: !22, scopeLine: 39, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!25 = !DISubprogram(name: "release_shared", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock14release_sharedEv", scope: !10, file: !5, line: 48, type: !22, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!26 = !DISubprogram(name: "acquire_exclusive", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock17acquire_exclusiveEv", scope: !10, file: !5, line: 52, type: !22, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!27 = !DISubprogram(name: "release_exclusive", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock17release_exclusiveEv", scope: !10, file: !5, line: 65, type: !22, scopeLine: 65, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!28 = !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock4initEv", scope: !10, file: !5, line: 69, type: !22, scopeLine: 69, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!29 = !DISubprogram(name: "SharedExclusiveSpinLock", scope: !10, file: !5, line: 73, type: !22, scopeLine: 73, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !7, file: !5, line: 80, baseType: !14, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "overage", scope: !7, file: !5, line: 80, baseType: !14, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !7, file: !5, line: 81, baseType: !33, size: 8388608, offset: 96)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8388608, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 16, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 1048576)
!38 = !DISubprogram(name: "try_acquire_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer18try_acquire_packetEPvj", scope: !7, file: !5, line: 85, type: !39, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !143, !130, !14}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_trace_packet_t", file: !43, line: 601, size: 224, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !44, identifier: "_ZTS21halide_trace_packet_t")
!43 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!44 = !{!45, !46, !49, !90, !104, !105, !106, !107, !111, !118, !122, !127, !131, !137, !141, !142}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !42, file: !43, line: 605, baseType: !14, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !42, file: !43, line: 608, baseType: !47, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !15, line: 11, baseType: !48)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !43, line: 612, baseType: !50, size: 32, offset: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !43, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !51, identifier: "_ZTS13halide_type_t")
!51 = !{!52, !61, !62, !65, !69, !72, !77, !82, !83, !84, !87}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !50, file: !43, line: 434, baseType: !53, size: 8, align: 8)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !43, line: 413, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !43, line: 403, baseType: !34, size: 8, elements: !55, identifier: "_ZTS18halide_type_code_t")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!60 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !50, file: !43, line: 442, baseType: !34, size: 8, align: 8, offset: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !50, file: !43, line: 446, baseType: !63, size: 16, align: 16, offset: 16)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 14, baseType: !64)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !DISubprogram(name: "halide_type_t", scope: !50, file: !43, line: 453, type: !66, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !53, !34, !63}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DISubprogram(name: "halide_type_t", scope: !50, file: !43, line: 459, type: !70, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !68}
!72 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !50, file: !43, line: 463, type: !73, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{!50, !75, !63}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!77 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !50, file: !43, line: 468, type: !78, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !75, !81}
!80 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!81 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !76, size: 64)
!82 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !50, file: !43, line: 472, type: !78, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !50, file: !43, line: 476, type: !78, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !50, file: !43, line: 481, type: !85, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{!48, !75}
!87 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !50, file: !43, line: 485, type: !88, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DISubroutineType(types: !89)
!89 = !{!14, !75}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !42, file: !43, line: 613, baseType: !91, size: 32, offset: 96)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_trace_event_code_t", file: !43, line: 493, baseType: !16, size: 32, elements: !92, identifier: "_ZTS25halide_trace_event_code_t")
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!93 = !DIEnumerator(name: "halide_trace_load", value: 0, isUnsigned: true)
!94 = !DIEnumerator(name: "halide_trace_store", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "halide_trace_begin_realization", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "halide_trace_end_realization", value: 3, isUnsigned: true)
!97 = !DIEnumerator(name: "halide_trace_produce", value: 4, isUnsigned: true)
!98 = !DIEnumerator(name: "halide_trace_end_produce", value: 5, isUnsigned: true)
!99 = !DIEnumerator(name: "halide_trace_consume", value: 6, isUnsigned: true)
!100 = !DIEnumerator(name: "halide_trace_end_consume", value: 7, isUnsigned: true)
!101 = !DIEnumerator(name: "halide_trace_begin_pipeline", value: 8, isUnsigned: true)
!102 = !DIEnumerator(name: "halide_trace_end_pipeline", value: 9, isUnsigned: true)
!103 = !DIEnumerator(name: "halide_trace_tag", value: 10, isUnsigned: true)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "parent_id", scope: !42, file: !43, line: 614, baseType: !47, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value_index", scope: !42, file: !43, line: 615, baseType: !47, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !42, file: !43, line: 616, baseType: !47, size: 32, offset: 192)
!107 = !DISubprogram(name: "halide_trace_packet_t", scope: !42, file: !43, line: 622, type: !108, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DISubprogram(name: "coordinates", linkageName: "_ZNK21halide_trace_packet_t11coordinatesEv", scope: !42, file: !43, line: 627, type: !112, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!118 = !DISubprogram(name: "coordinates", linkageName: "_ZN21halide_trace_packet_t11coordinatesEv", scope: !42, file: !43, line: 631, type: !119, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !110}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!122 = !DISubprogram(name: "value", linkageName: "_ZNK21halide_trace_packet_t5valueEv", scope: !42, file: !43, line: 638, type: !123, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !116}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!127 = !DISubprogram(name: "value", linkageName: "_ZN21halide_trace_packet_t5valueEv", scope: !42, file: !43, line: 642, type: !128, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !110}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DISubprogram(name: "func", linkageName: "_ZNK21halide_trace_packet_t4funcEv", scope: !42, file: !43, line: 648, type: !132, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !116}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!137 = !DISubprogram(name: "func", linkageName: "_ZN21halide_trace_packet_t4funcEv", scope: !42, file: !43, line: 652, type: !138, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !110}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!141 = !DISubprogram(name: "trace_tag", linkageName: "_ZNK21halide_trace_packet_t9trace_tagEv", scope: !42, file: !43, line: 659, type: !132, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubprogram(name: "trace_tag", linkageName: "_ZN21halide_trace_packet_t9trace_tagEv", scope: !42, file: !43, line: 668, type: !138, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!144 = !DISubprogram(name: "flush", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer5flushEPvi", scope: !7, file: !5, line: 105, type: !145, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !143, !130, !48}
!147 = !DISubprogram(name: "acquire_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer14acquire_packetEPvij", scope: !7, file: !5, line: 123, type: !148, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{!41, !143, !130, !48, !14}
!150 = !DISubprogram(name: "release_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer14release_packetEP21halide_trace_packet_t", scope: !7, file: !5, line: 133, type: !151, scopeLine: 133, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !143, !41}
!153 = !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer4initEv", scope: !7, file: !5, line: 139, type: !154, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !143}
!156 = !DISubprogram(name: "TraceBuffer", scope: !7, file: !5, line: 145, type: !154, scopeLine: 145, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "halide_trace_file", linkageName: "_ZN6Halide7Runtime8Internal17halide_trace_fileE", scope: !2, file: !5, line: 149, type: !48, isLocal: false, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "halide_trace_file_lock", linkageName: "_ZN6Halide7Runtime8Internal22halide_trace_file_lockE", scope: !2, file: !5, line: 150, type: !161, isLocal: false, isDefinition: true)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "AtomicFlag", scope: !163, file: !162, line: 11, baseType: !136)
!162 = !DIFile(filename: "src/runtime/scoped_spin_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedSpinLock", scope: !2, file: !162, line: 9, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !164, identifier: "_ZTSN6Halide7Runtime8Internal14ScopedSpinLockE")
!164 = !{!165, !169, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !163, file: !162, line: 13, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!169 = !DISubprogram(name: "ScopedSpinLock", scope: !163, file: !162, line: 15, type: !170, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172, !167}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!173 = !DISubprogram(name: "~ScopedSpinLock", scope: !163, file: !162, line: 22, type: !174, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !172}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "halide_trace_file_initialized", linkageName: "_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE", scope: !2, file: !5, line: 151, type: !80, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "halide_trace_file_internally_opened", linkageName: "_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE", scope: !2, file: !5, line: 152, type: !130, isLocal: false, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "ids", scope: !182, file: !5, line: 161, type: !47, isLocal: true, isDefinition: true)
!182 = distinct !DISubprogram(name: "halide_default_trace", scope: !5, file: !5, line: 160, type: !183, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !314)
!183 = !DISubroutineType(types: !184)
!184 = !{!47, !130, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_trace_event_t", file: !43, line: 505, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !188, identifier: "_ZTS20halide_trace_event_t")
!188 = !{!189, !190, !191, !193, !194, !195, !196, !197, !198, !199}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !187, file: !43, line: 507, baseType: !134, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !187, file: !43, line: 513, baseType: !130, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "coordinates", scope: !187, file: !43, line: 525, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "trace_tag", scope: !187, file: !43, line: 530, baseType: !134, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !43, line: 534, baseType: !50, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !187, file: !43, line: 537, baseType: !91, size: 32, offset: 288)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent_id", scope: !187, file: !43, line: 541, baseType: !47, size: 32, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value_index", scope: !187, file: !43, line: 545, baseType: !47, size: 32, offset: 352)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !187, file: !43, line: 548, baseType: !47, size: 32, offset: 384)
!199 = !DISubprogram(name: "halide_trace_event_t", scope: !187, file: !43, line: 553, type: !200, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!203 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !204, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205, retainedTypes: !206, globals: !305, imports: !312, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!205 = !{!54, !91}
!206 = !{!14, !207, !130, !140, !291, !294, !192, !297, !298, !299, !300, !301, !302, !303, !304, !134, !6, !41, !121, !10}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "print", scope: !209, file: !208, line: 198, baseType: !210)
!208 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!209 = !DINamespace(scope: !2)
!210 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !209, file: !208, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !211, templateParams: !288)
!211 = !{!212, !213, !214, !215, !216, !217, !221, !225, !229, !234, !237, !242, !245, !249, !253, !256, !260, !263, !270, !273, !276, !281, !282, !285, !286, !287}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !210, file: !208, line: 32, baseType: !140, size: 64, flags: DIFlagPublic)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !210, file: !208, line: 32, baseType: !140, size: 64, offset: 64, flags: DIFlagPublic)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !210, file: !208, line: 32, baseType: !140, size: 64, offset: 128, flags: DIFlagPublic)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !210, file: !208, line: 33, baseType: !130, size: 64, offset: 192, flags: DIFlagPublic)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !210, file: !208, line: 34, baseType: !80, size: 8, offset: 256, flags: DIFlagPublic)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !210, file: !208, line: 35, baseType: !218, size: 8, offset: 264, flags: DIFlagPublic)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 8, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 1)
!221 = !DISubprogram(name: "Printer", scope: !210, file: !208, line: 37, type: !222, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !130, !140}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!225 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !210, file: !208, line: 57, type: !226, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !224, !134}
!228 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 64)
!229 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !210, file: !208, line: 67, type: !230, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!228, !224, !232}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !15, line: 9, baseType: !233)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !210, file: !208, line: 72, type: !235, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{!228, !224, !47}
!237 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !210, file: !208, line: 77, type: !238, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!228, !224, !240}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 10, baseType: !241)
!241 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !210, file: !208, line: 82, type: !243, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{!228, !224, !14}
!245 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !210, file: !208, line: 87, type: !246, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!228, !224, !248}
!248 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!249 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !210, file: !208, line: 92, type: !250, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!228, !224, !252}
!252 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!253 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !210, file: !208, line: 97, type: !254, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!228, !224, !125}
!256 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !210, file: !208, line: 102, type: !257, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!228, !224, !259}
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!260 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !210, file: !208, line: 108, type: !261, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{!228, !224, !81}
!263 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !210, file: !208, line: 113, type: !264, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!228, !224, !266}
!266 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !43, line: 1550, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !43, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!270 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !210, file: !208, line: 119, type: !271, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!134, !224}
!273 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !210, file: !208, line: 131, type: !274, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !224}
!276 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !210, file: !208, line: 139, type: !277, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!240, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!281 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !210, file: !208, line: 143, type: !277, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !210, file: !208, line: 148, type: !283, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !224, !48}
!285 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !210, file: !208, line: 158, type: !271, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !210, file: !208, line: 162, type: !274, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubprogram(name: "~Printer", scope: !210, file: !208, line: 166, type: !274, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !{!289, !290}
!289 = !DITemplateValueParameter(name: "type", type: !48, value: i32 0)
!290 = !DITemplateValueParameter(name: "length", type: !241, value: i64 1024)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !15, line: 15, baseType: !293)
!293 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !15, line: 13, baseType: !296)
!296 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!305 = !{!0, !157, !159, !176, !178, !180, !306, !310}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "halide_custom_trace", linkageName: "_ZN6Halide7Runtime8Internal19halide_custom_traceE", scope: !2, file: !5, line: 327, type: !308, isLocal: false, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_fn", file: !5, line: 7, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression(DW_OP_constu, 1048576, DW_OP_stack_value))
!311 = distinct !DIGlobalVariable(name: "buffer_size", scope: !2, file: !5, line: 76, type: !115, isLocal: true, isDefinition: true)
!312 = !{!313}
!313 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !203, entity: !2, file: !15, line: 225)
!314 = !{!315, !316, !317, !318, !319, !322, !323, !324, !325, !326, !327, !328, !329, !334, !402, !403, !407, !408, !410, !414}
!315 = !DILocalVariable(name: "user_context", arg: 1, scope: !182, file: !5, line: 160, type: !130)
!316 = !DILocalVariable(name: "e", arg: 2, scope: !182, file: !5, line: 160, type: !185)
!317 = !DILocalVariable(name: "my_id", scope: !182, file: !5, line: 163, type: !47)
!318 = !DILocalVariable(name: "fd", scope: !182, file: !5, line: 166, type: !48)
!319 = !DILocalVariable(name: "value_bytes", scope: !320, file: !5, line: 169, type: !14)
!320 = distinct !DILexicalBlock(scope: !321, file: !5, line: 167, column: 17)
!321 = distinct !DILexicalBlock(scope: !182, file: !5, line: 167, column: 9)
!322 = !DILocalVariable(name: "header_bytes", scope: !320, file: !5, line: 170, type: !14)
!323 = !DILocalVariable(name: "coords_bytes", scope: !320, file: !5, line: 171, type: !14)
!324 = !DILocalVariable(name: "name_bytes", scope: !320, file: !5, line: 172, type: !14)
!325 = !DILocalVariable(name: "trace_tag_bytes", scope: !320, file: !5, line: 173, type: !14)
!326 = !DILocalVariable(name: "total_size_without_padding", scope: !320, file: !5, line: 174, type: !14)
!327 = !DILocalVariable(name: "total_size", scope: !320, file: !5, line: 175, type: !14)
!328 = !DILocalVariable(name: "packet", scope: !320, file: !5, line: 178, type: !41)
!329 = !DILocalVariable(name: "buffer", scope: !330, file: !5, line: 211, type: !331)
!330 = distinct !DILexicalBlock(scope: !321, file: !5, line: 210, column: 12)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32768, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 4096)
!334 = !DILocalVariable(name: "ss", scope: !330, file: !5, line: 212, type: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2, 4096>", scope: !209, file: !208, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !336, templateParams: !399)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !347, !351, !354, !357, !360, !363, !366, !369, !372, !375, !378, !381, !384, !387, !392, !393, !396, !397, !398}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !335, file: !208, line: 32, baseType: !140, size: 64, flags: DIFlagPublic)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !335, file: !208, line: 32, baseType: !140, size: 64, offset: 64, flags: DIFlagPublic)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !335, file: !208, line: 32, baseType: !140, size: 64, offset: 128, flags: DIFlagPublic)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !335, file: !208, line: 33, baseType: !130, size: 64, offset: 192, flags: DIFlagPublic)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !335, file: !208, line: 34, baseType: !80, size: 8, offset: 256, flags: DIFlagPublic)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !335, file: !208, line: 35, baseType: !218, size: 8, offset: 264, flags: DIFlagPublic)
!343 = !DISubprogram(name: "Printer", scope: !335, file: !208, line: 37, type: !344, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !130, !140}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!347 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKc", scope: !335, file: !208, line: 57, type: !348, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !346, !134}
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !335, size: 64)
!351 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEx", scope: !335, file: !208, line: 67, type: !352, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{!350, !346, !232}
!354 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEi", scope: !335, file: !208, line: 72, type: !355, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!350, !346, !47}
!357 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEy", scope: !335, file: !208, line: 77, type: !358, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{!350, !346, !240}
!360 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEj", scope: !335, file: !208, line: 82, type: !361, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{!350, !346, !14}
!363 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEd", scope: !335, file: !208, line: 87, type: !364, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{!350, !346, !248}
!366 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEf", scope: !335, file: !208, line: 92, type: !367, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!350, !346, !252}
!369 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKv", scope: !335, file: !208, line: 97, type: !370, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{!350, !346, !125}
!372 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE23write_float16_from_bitsEt", scope: !335, file: !208, line: 102, type: !373, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!350, !346, !259}
!375 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsERK13halide_type_t", scope: !335, file: !208, line: 108, type: !376, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!350, !346, !81}
!378 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsERK15halide_buffer_t", scope: !335, file: !208, line: 113, type: !379, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{!350, !346, !266}
!381 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE3strEv", scope: !335, file: !208, line: 119, type: !382, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!134, !346}
!384 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE5clearEv", scope: !335, file: !208, line: 131, type: !385, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !346}
!387 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE4sizeEv", scope: !335, file: !208, line: 139, type: !388, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubroutineType(types: !389)
!389 = !{!240, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!392 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE8capacityEv", scope: !335, file: !208, line: 143, type: !388, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE5eraseEi", scope: !335, file: !208, line: 148, type: !394, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !346, !48}
!396 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE16allocation_errorEv", scope: !335, file: !208, line: 158, type: !382, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE28msan_annotate_is_initializedEv", scope: !335, file: !208, line: 162, type: !385, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubprogram(name: "~Printer", scope: !335, file: !208, line: 166, type: !385, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !{!400, !401}
!400 = !DITemplateValueParameter(name: "type", type: !48, value: i32 2)
!401 = !DITemplateValueParameter(name: "length", type: !241, value: i64 4096)
!402 = !DILocalVariable(name: "print_bits", scope: !330, file: !5, line: 215, type: !48)
!403 = !DILocalVariable(name: "event_types", scope: !330, file: !5, line: 222, type: !404)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 704, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 11)
!407 = !DILocalVariable(name: "print_value", scope: !330, file: !5, line: 235, type: !80)
!408 = !DILocalVariable(name: "i", scope: !409, file: !5, line: 241, type: !48)
!409 = distinct !DILexicalBlock(scope: !330, file: !5, line: 241, column: 9)
!410 = !DILocalVariable(name: "i", scope: !411, file: !5, line: 263, type: !48)
!411 = distinct !DILexicalBlock(scope: !412, file: !5, line: 263, column: 13)
!412 = distinct !DILexicalBlock(scope: !413, file: !5, line: 257, column: 26)
!413 = distinct !DILexicalBlock(scope: !330, file: !5, line: 257, column: 13)
!414 = !DILocalVariable(name: "lock", scope: !415, file: !5, line: 313, type: !163)
!415 = distinct !DILexicalBlock(scope: !330, file: !5, line: 312, column: 9)
!416 = !{i32 7, !"Dwarf Version", i32 4}
!417 = !{i32 2, !"Debug Info Version", i32 3}
!418 = !{i32 1, !"wchar_size", i32 4}
!419 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!420 = !DILocation(line: 0, scope: !182)
!421 = !DILocation(line: 163, column: 21, scope: !182)
!422 = !DILocation(line: 166, column: 14, scope: !182)
!423 = !DILocation(line: 167, column: 12, scope: !321)
!424 = !DILocation(line: 167, column: 9, scope: !182)
!425 = !DILocation(line: 169, column: 46, scope: !320)
!426 = !DILocation(line: 169, column: 51, scope: !320)
!427 = !{!428, !434, i64 34}
!428 = !{!"_ZTS20halide_trace_event_t", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !432, i64 32, !435, i64 36, !436, i64 40, !436, i64 44, !436, i64 48}
!429 = !{!"any pointer", !430, i64 0}
!430 = !{!"omnipotent char", !431, i64 0}
!431 = !{!"Simple C++ TBAA"}
!432 = !{!"_ZTS13halide_type_t", !433, i64 0, !430, i64 1, !434, i64 2}
!433 = !{!"_ZTS18halide_type_code_t", !430, i64 0}
!434 = !{!"short", !430, i64 0}
!435 = !{!"_ZTS25halide_trace_event_code_t", !430, i64 0}
!436 = !{!"int", !430, i64 0}
!437 = !DILocation(line: 169, column: 43, scope: !320)
!438 = !DILocalVariable(name: "this", arg: 1, scope: !439, type: !441, flags: DIFlagArtificial | DIFlagObjectPointer)
!439 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !50, file: !43, line: 481, type: !85, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !84, retainedNodes: !440)
!440 = !{!438}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!442 = !DILocation(line: 0, scope: !439, inlinedAt: !443)
!443 = distinct !DILocation(line: 169, column: 67, scope: !320)
!444 = !DILocation(line: 482, column: 17, scope: !439, inlinedAt: !443)
!445 = !{!432, !430, i64 1}
!446 = !DILocation(line: 482, column: 22, scope: !439, inlinedAt: !443)
!447 = !DILocation(line: 482, column: 27, scope: !439, inlinedAt: !443)
!448 = !DILocation(line: 169, column: 57, scope: !320)
!449 = !DILocation(line: 0, scope: !320)
!450 = !DILocation(line: 171, column: 36, scope: !320)
!451 = !{!428, !436, i64 48}
!452 = !DILocation(line: 171, column: 47, scope: !320)
!453 = !DILocation(line: 172, column: 41, scope: !320)
!454 = !{!428, !429, i64 0}
!455 = !DILocation(line: 172, column: 31, scope: !320)
!456 = !DILocation(line: 173, column: 39, scope: !320)
!457 = !{!428, !429, i64 24}
!458 = !DILocation(line: 173, column: 36, scope: !320)
!459 = !DILocation(line: 173, column: 52, scope: !320)
!460 = !DILocation(line: 174, column: 74, scope: !320)
!461 = !DILocation(line: 174, column: 89, scope: !320)
!462 = !DILocation(line: 174, column: 102, scope: !320)
!463 = !DILocation(line: 175, column: 59, scope: !320)
!464 = !DILocation(line: 175, column: 64, scope: !320)
!465 = !DILocation(line: 178, column: 41, scope: !320)
!466 = !{!429, !429, i64 0}
!467 = !DILocalVariable(name: "this", arg: 1, scope: !468, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!468 = distinct !DISubprogram(name: "acquire_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer14acquire_packetEPvij", scope: !7, file: !5, line: 123, type: !148, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !147, retainedNodes: !469)
!469 = !{!467, !470, !471, !472, !473}
!470 = !DILocalVariable(name: "user_context", arg: 2, scope: !468, file: !5, line: 123, type: !130)
!471 = !DILocalVariable(name: "fd", arg: 3, scope: !468, file: !5, line: 123, type: !48)
!472 = !DILocalVariable(name: "size", arg: 4, scope: !468, file: !5, line: 123, type: !14)
!473 = !DILocalVariable(name: "packet", scope: !468, file: !5, line: 124, type: !41)
!474 = !DILocation(line: 0, scope: !468, inlinedAt: !475)
!475 = distinct !DILocation(line: 178, column: 62, scope: !320)
!476 = !DILocation(line: 125, column: 9, scope: !468, inlinedAt: !475)
!477 = !DILocation(line: 41, column: 26, scope: !478, inlinedAt: !484)
!478 = distinct !DILexicalBlock(scope: !479, file: !5, line: 40, column: 22)
!479 = distinct !DISubprogram(name: "acquire_shared", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock14acquire_sharedEv", scope: !10, file: !5, line: 39, type: !22, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !21, retainedNodes: !480)
!480 = !{!481, !483}
!481 = !DILocalVariable(name: "this", arg: 1, scope: !479, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!483 = !DILocalVariable(name: "x", scope: !478, file: !5, line: 41, type: !14)
!484 = distinct !DILocation(line: 86, column: 14, scope: !485, inlinedAt: !491)
!485 = distinct !DISubprogram(name: "try_acquire_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer18try_acquire_packetEPvj", scope: !7, file: !5, line: 85, type: !39, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !38, retainedNodes: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DILocalVariable(name: "this", arg: 1, scope: !485, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!488 = !DILocalVariable(name: "user_context", arg: 2, scope: !485, file: !5, line: 85, type: !130)
!489 = !DILocalVariable(name: "size", arg: 3, scope: !485, file: !5, line: 85, type: !14)
!490 = !DILocalVariable(name: "my_cursor", scope: !485, file: !5, line: 88, type: !14)
!491 = distinct !DILocation(line: 125, column: 27, scope: !468, inlinedAt: !475)
!492 = !{!493, !436, i64 0}
!493 = !{!"_ZTSN6Halide7Runtime8Internal23SharedExclusiveSpinLockE", !436, i64 0}
!494 = !DILocation(line: 41, column: 31, scope: !478, inlinedAt: !484)
!495 = !DILocation(line: 0, scope: !478, inlinedAt: !484)
!496 = !DILocation(line: 42, column: 58, scope: !497, inlinedAt: !484)
!497 = distinct !DILexicalBlock(scope: !478, file: !5, line: 42, column: 17)
!498 = !DILocation(line: 42, column: 17, scope: !497, inlinedAt: !484)
!499 = distinct !{!499, !476, !500, !501}
!500 = !DILocation(line: 128, column: 9, scope: !468, inlinedAt: !475)
!501 = !{!"llvm.loop.mustprogress"}
!502 = !DILocation(line: 88, column: 30, scope: !485, inlinedAt: !491)
!503 = !DILocation(line: 0, scope: !485, inlinedAt: !491)
!504 = !DILocation(line: 89, column: 23, scope: !505, inlinedAt: !491)
!505 = distinct !DILexicalBlock(scope: !485, file: !5, line: 89, column: 13)
!506 = !DILocation(line: 89, column: 30, scope: !505, inlinedAt: !491)
!507 = !DILocation(line: 89, column: 13, scope: !485, inlinedAt: !491)
!508 = !DILocation(line: 94, column: 13, scope: !509, inlinedAt: !491)
!509 = distinct !DILexicalBlock(scope: !505, file: !5, line: 89, column: 45)
!510 = !DILocalVariable(name: "this", arg: 1, scope: !511, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!511 = distinct !DISubprogram(name: "release_shared", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock14release_sharedEv", scope: !10, file: !5, line: 48, type: !22, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !25, retainedNodes: !512)
!512 = !{!510}
!513 = !DILocation(line: 0, scope: !511, inlinedAt: !514)
!514 = distinct !DILocation(line: 95, column: 18, scope: !509, inlinedAt: !491)
!515 = !DILocation(line: 49, column: 9, scope: !511, inlinedAt: !514)
!516 = !DILocalVariable(name: "this", arg: 1, scope: !517, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!517 = distinct !DISubprogram(name: "flush", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer5flushEPvi", scope: !7, file: !5, line: 105, type: !145, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !144, retainedNodes: !518)
!518 = !{!516, !519, !520, !521}
!519 = !DILocalVariable(name: "user_context", arg: 2, scope: !517, file: !5, line: 105, type: !130)
!520 = !DILocalVariable(name: "fd", arg: 3, scope: !517, file: !5, line: 105, type: !48)
!521 = !DILocalVariable(name: "success", scope: !517, file: !5, line: 107, type: !80)
!522 = !DILocation(line: 0, scope: !517, inlinedAt: !523)
!523 = distinct !DILocation(line: 127, column: 13, scope: !524, inlinedAt: !475)
!524 = distinct !DILexicalBlock(scope: !468, file: !5, line: 125, column: 68)
!525 = !DILocalVariable(name: "this", arg: 1, scope: !526, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!526 = distinct !DISubprogram(name: "acquire_exclusive", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock17acquire_exclusiveEv", scope: !10, file: !5, line: 52, type: !22, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !26, retainedNodes: !527)
!527 = !{!525}
!528 = !DILocation(line: 0, scope: !526, inlinedAt: !529)
!529 = distinct !DILocation(line: 106, column: 14, scope: !517, inlinedAt: !523)
!530 = !DILocation(line: 53, column: 9, scope: !526, inlinedAt: !529)
!531 = !DILocation(line: 58, column: 13, scope: !532, inlinedAt: !529)
!532 = distinct !DILexicalBlock(scope: !526, file: !5, line: 53, column: 22)
!533 = !DILocation(line: 59, column: 17, scope: !534, inlinedAt: !529)
!534 = distinct !DILexicalBlock(scope: !532, file: !5, line: 59, column: 17)
!535 = !DILocation(line: 59, column: 17, scope: !532, inlinedAt: !529)
!536 = distinct !{!536, !530, !537}
!537 = !DILocation(line: 62, column: 9, scope: !526, inlinedAt: !529)
!538 = !DILocation(line: 108, column: 13, scope: !539, inlinedAt: !523)
!539 = distinct !DILexicalBlock(scope: !517, file: !5, line: 108, column: 13)
!540 = !{!541, !436, i64 4}
!541 = !{!"_ZTSN6Halide7Runtime8Internal11TraceBufferE", !493, i64 0, !436, i64 4, !436, i64 8, !430, i64 12}
!542 = !DILocation(line: 108, column: 13, scope: !517, inlinedAt: !523)
!543 = !DILocation(line: 109, column: 23, scope: !544, inlinedAt: !523)
!544 = distinct !DILexicalBlock(scope: !539, file: !5, line: 108, column: 21)
!545 = !{!541, !436, i64 8}
!546 = !DILocation(line: 109, column: 20, scope: !544, inlinedAt: !523)
!547 = !DILocation(line: 110, column: 59, scope: !544, inlinedAt: !523)
!548 = !DILocation(line: 110, column: 44, scope: !544, inlinedAt: !523)
!549 = !DILocation(line: 110, column: 31, scope: !544, inlinedAt: !523)
!550 = !DILocation(line: 111, column: 20, scope: !544, inlinedAt: !523)
!551 = !DILocation(line: 112, column: 21, scope: !544, inlinedAt: !523)
!552 = !DILocalVariable(name: "this", arg: 1, scope: !553, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!553 = distinct !DISubprogram(name: "release_exclusive", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock17release_exclusiveEv", scope: !10, file: !5, line: 65, type: !22, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !27, retainedNodes: !554)
!554 = !{!552}
!555 = !DILocation(line: 0, scope: !553, inlinedAt: !556)
!556 = distinct !DILocation(line: 114, column: 14, scope: !517, inlinedAt: !523)
!557 = !DILocation(line: 66, column: 9, scope: !553, inlinedAt: !556)
!558 = !DILocation(line: 115, column: 9, scope: !559, inlinedAt: !523)
!559 = distinct !DILexicalBlock(scope: !517, file: !5, line: 115, column: 9)
!560 = !DILocation(line: 115, column: 9, scope: !561, inlinedAt: !523)
!561 = distinct !DILexicalBlock(scope: !562, file: !5, line: 115, column: 9)
!562 = distinct !DILexicalBlock(scope: !559, file: !5, line: 115, column: 9)
!563 = !DILocation(line: 0, scope: !553, inlinedAt: !564)
!564 = distinct !DILocation(line: 114, column: 14, scope: !517, inlinedAt: !523)
!565 = !DILocation(line: 66, column: 9, scope: !553, inlinedAt: !564)
!566 = distinct !{!566, !476, !500, !501}
!567 = !DILocation(line: 87, column: 9, scope: !568, inlinedAt: !491)
!568 = distinct !DILexicalBlock(scope: !569, file: !5, line: 87, column: 9)
!569 = distinct !DILexicalBlock(scope: !570, file: !5, line: 87, column: 9)
!570 = distinct !DILexicalBlock(scope: !485, file: !5, line: 87, column: 9)
!571 = distinct !{!571, !530, !537}
!572 = !DILocation(line: 98, column: 50, scope: !573, inlinedAt: !491)
!573 = distinct !DILexicalBlock(scope: !505, file: !5, line: 97, column: 16)
!574 = !DILocation(line: 180, column: 24, scope: !575)
!575 = distinct !DILexicalBlock(scope: !320, file: !5, line: 180, column: 13)
!576 = !DILocation(line: 180, column: 13, scope: !320)
!577 = !DILocalVariable(name: "this", arg: 1, scope: !578, type: !582, flags: DIFlagArtificial | DIFlagObjectPointer)
!578 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !210, file: !208, line: 37, type: !222, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !221, retainedNodes: !579)
!579 = !{!577, !580, !581}
!580 = !DILocalVariable(name: "ctx", arg: 2, scope: !578, file: !208, line: 37, type: !130)
!581 = !DILocalVariable(name: "mem", arg: 3, scope: !578, file: !208, line: 37, type: !140)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!583 = !DILocation(line: 0, scope: !578, inlinedAt: !584)
!584 = distinct !DILocation(line: 181, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !575, file: !5, line: 180, column: 32)
!586 = !DILocation(line: 44, column: 27, scope: !587, inlinedAt: !584)
!587 = distinct !DILexicalBlock(scope: !588, file: !208, line: 43, column: 16)
!588 = distinct !DILexicalBlock(scope: !589, file: !208, line: 41, column: 20)
!589 = distinct !DILexicalBlock(scope: !590, file: !208, line: 39, column: 13)
!590 = distinct !DILexicalBlock(scope: !578, file: !208, line: 38, column: 54)
!591 = !DILocation(line: 48, column: 13, scope: !592, inlinedAt: !584)
!592 = distinct !DILexicalBlock(scope: !590, file: !208, line: 48, column: 13)
!593 = !DILocation(line: 48, column: 13, scope: !590, inlinedAt: !584)
!594 = !DILocation(line: 49, column: 23, scope: !595, inlinedAt: !584)
!595 = distinct !DILexicalBlock(scope: !592, file: !208, line: 48, column: 18)
!596 = !DILocation(line: 50, column: 18, scope: !595, inlinedAt: !584)
!597 = !{!430, !430, i64 0}
!598 = !DILocation(line: 51, column: 9, scope: !595, inlinedAt: !584)
!599 = !DILocation(line: 0, scope: !592, inlinedAt: !584)
!600 = !DILocalVariable(name: "this", arg: 1, scope: !601, type: !582, flags: DIFlagArtificial | DIFlagObjectPointer)
!601 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !210, file: !208, line: 82, type: !243, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !242, retainedNodes: !602)
!602 = !{!600, !603}
!603 = !DILocalVariable(name: "arg", arg: 2, scope: !601, file: !208, line: 82, type: !14)
!604 = !DILocation(line: 0, scope: !601, inlinedAt: !605)
!605 = distinct !DILocation(line: 181, column: 28, scope: !585)
!606 = !DILocation(line: 83, column: 49, scope: !601, inlinedAt: !605)
!607 = !DILocation(line: 83, column: 15, scope: !601, inlinedAt: !605)
!608 = !DILocalVariable(name: "this", arg: 1, scope: !609, type: !582, flags: DIFlagArtificial | DIFlagObjectPointer)
!609 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !210, file: !208, line: 57, type: !226, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !225, retainedNodes: !610)
!610 = !{!608, !611}
!611 = !DILocalVariable(name: "arg", arg: 2, scope: !609, file: !208, line: 57, type: !134)
!612 = !DILocation(line: 0, scope: !609, inlinedAt: !613)
!613 = distinct !DILocation(line: 181, column: 42, scope: !585)
!614 = !DILocation(line: 62, column: 19, scope: !615, inlinedAt: !613)
!615 = distinct !DILexicalBlock(scope: !616, file: !208, line: 61, column: 16)
!616 = distinct !DILexicalBlock(scope: !609, file: !208, line: 59, column: 13)
!617 = !DILocalVariable(name: "this", arg: 1, scope: !618, type: !582, flags: DIFlagArtificial | DIFlagObjectPointer)
!618 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !210, file: !208, line: 166, type: !274, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !287, retainedNodes: !619)
!619 = !{!617}
!620 = !DILocation(line: 0, scope: !618, inlinedAt: !621)
!621 = distinct !DILocation(line: 181, column: 13, scope: !585)
!622 = !DILocation(line: 167, column: 13, scope: !623, inlinedAt: !621)
!623 = distinct !DILexicalBlock(scope: !618, file: !208, line: 166, column: 16)
!624 = !DILocation(line: 168, column: 13, scope: !625, inlinedAt: !621)
!625 = distinct !DILexicalBlock(scope: !626, file: !208, line: 167, column: 19)
!626 = distinct !DILexicalBlock(scope: !623, file: !208, line: 167, column: 13)
!627 = !DILocation(line: 169, column: 9, scope: !625, inlinedAt: !621)
!628 = !DILocalVariable(name: "this", arg: 1, scope: !629, type: !582, flags: DIFlagArtificial | DIFlagObjectPointer)
!629 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !210, file: !208, line: 162, type: !274, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !286, retainedNodes: !630)
!630 = !{!628}
!631 = !DILocation(line: 0, scope: !629, inlinedAt: !632)
!632 = distinct !DILocation(line: 170, column: 13, scope: !633, inlinedAt: !621)
!633 = distinct !DILexicalBlock(scope: !626, file: !208, line: 169, column: 16)
!634 = !DILocation(line: 163, column: 81, scope: !629, inlinedAt: !632)
!635 = !DILocation(line: 163, column: 87, scope: !629, inlinedAt: !632)
!636 = !DILocation(line: 163, column: 15, scope: !629, inlinedAt: !632)
!637 = !DILocation(line: 174, column: 17, scope: !638, inlinedAt: !621)
!638 = distinct !DILexicalBlock(scope: !639, file: !208, line: 173, column: 46)
!639 = distinct !DILexicalBlock(scope: !640, file: !208, line: 173, column: 24)
!640 = distinct !DILexicalBlock(scope: !633, file: !208, line: 171, column: 17)
!641 = !DILocation(line: 181, column: 13, scope: !642, inlinedAt: !621)
!642 = distinct !DILexicalBlock(scope: !643, file: !208, line: 180, column: 40)
!643 = distinct !DILexicalBlock(scope: !623, file: !208, line: 180, column: 13)
!644 = !DILocation(line: 182, column: 9, scope: !585)
!645 = !DILocation(line: 185, column: 17, scope: !320)
!646 = !DILocation(line: 185, column: 22, scope: !320)
!647 = !{!648, !436, i64 0}
!648 = !{!"_ZTS21halide_trace_packet_t", !436, i64 0, !436, i64 4, !432, i64 8, !435, i64 12, !436, i64 16, !436, i64 20, !436, i64 24}
!649 = !DILocation(line: 186, column: 17, scope: !320)
!650 = !DILocation(line: 186, column: 20, scope: !320)
!651 = !{!648, !436, i64 4}
!652 = !DILocation(line: 187, column: 22, scope: !320)
!653 = !DILocation(line: 188, column: 28, scope: !320)
!654 = !{!428, !435, i64 36}
!655 = !DILocation(line: 188, column: 17, scope: !320)
!656 = !DILocation(line: 188, column: 23, scope: !320)
!657 = !{!648, !435, i64 12}
!658 = !DILocation(line: 189, column: 32, scope: !320)
!659 = !{!428, !436, i64 40}
!660 = !DILocation(line: 189, column: 17, scope: !320)
!661 = !DILocation(line: 189, column: 27, scope: !320)
!662 = !{!648, !436, i64 16}
!663 = !DILocation(line: 190, column: 34, scope: !320)
!664 = !{!428, !436, i64 44}
!665 = !DILocation(line: 190, column: 17, scope: !320)
!666 = !DILocation(line: 190, column: 29, scope: !320)
!667 = !{!648, !436, i64 20}
!668 = !DILocation(line: 191, column: 33, scope: !320)
!669 = !DILocation(line: 191, column: 17, scope: !320)
!670 = !DILocation(line: 191, column: 28, scope: !320)
!671 = !{!648, !436, i64 24}
!672 = !DILocation(line: 192, column: 16, scope: !673)
!673 = distinct !DILexicalBlock(scope: !320, file: !5, line: 192, column: 13)
!674 = !{!428, !429, i64 16}
!675 = !DILocation(line: 192, column: 13, scope: !673)
!676 = !DILocation(line: 192, column: 13, scope: !320)
!677 = !DILocalVariable(name: "this", arg: 1, scope: !678, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!678 = distinct !DISubprogram(name: "coordinates", linkageName: "_ZN21halide_trace_packet_t11coordinatesEv", scope: !42, file: !43, line: 631, type: !119, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !118, retainedNodes: !679)
!679 = !{!677}
!680 = !DILocation(line: 0, scope: !678, inlinedAt: !681)
!681 = distinct !DILocation(line: 193, column: 36, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !5, line: 192, column: 29)
!683 = !DILocation(line: 632, column: 16, scope: !678, inlinedAt: !681)
!684 = !DILocation(line: 193, column: 67, scope: !682)
!685 = !DILocation(line: 193, column: 13, scope: !682)
!686 = !DILocation(line: 194, column: 9, scope: !682)
!687 = !DILocation(line: 195, column: 16, scope: !688)
!688 = distinct !DILexicalBlock(scope: !320, file: !5, line: 195, column: 13)
!689 = !{!428, !429, i64 8}
!690 = !DILocation(line: 195, column: 13, scope: !688)
!691 = !DILocation(line: 195, column: 13, scope: !320)
!692 = !DILocalVariable(name: "this", arg: 1, scope: !693, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!693 = distinct !DISubprogram(name: "value", linkageName: "_ZN21halide_trace_packet_t5valueEv", scope: !42, file: !43, line: 642, type: !128, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !127, retainedNodes: !694)
!694 = !{!692}
!695 = !DILocation(line: 0, scope: !693, inlinedAt: !696)
!696 = distinct !DILocation(line: 196, column: 36, scope: !697)
!697 = distinct !DILexicalBlock(scope: !688, file: !5, line: 195, column: 23)
!698 = !DILocation(line: 0, scope: !678, inlinedAt: !699)
!699 = distinct !DILocation(line: 643, column: 25, scope: !693, inlinedAt: !696)
!700 = !DILocation(line: 632, column: 16, scope: !678, inlinedAt: !699)
!701 = !DILocation(line: 643, column: 41, scope: !693, inlinedAt: !696)
!702 = !DILocation(line: 643, column: 39, scope: !693, inlinedAt: !696)
!703 = !DILocation(line: 643, column: 24, scope: !693, inlinedAt: !696)
!704 = !DILocation(line: 196, column: 55, scope: !697)
!705 = !DILocation(line: 196, column: 13, scope: !697)
!706 = !DILocation(line: 197, column: 9, scope: !697)
!707 = !DILocalVariable(name: "this", arg: 1, scope: !708, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!708 = distinct !DISubprogram(name: "func", linkageName: "_ZN21halide_trace_packet_t4funcEv", scope: !42, file: !43, line: 652, type: !138, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !137, retainedNodes: !709)
!709 = !{!707}
!710 = !DILocation(line: 0, scope: !708, inlinedAt: !711)
!711 = distinct !DILocation(line: 198, column: 32, scope: !320)
!712 = !DILocation(line: 0, scope: !693, inlinedAt: !713)
!713 = distinct !DILocation(line: 653, column: 24, scope: !708, inlinedAt: !711)
!714 = !DILocation(line: 0, scope: !678, inlinedAt: !715)
!715 = distinct !DILocation(line: 643, column: 25, scope: !693, inlinedAt: !713)
!716 = !DILocation(line: 632, column: 16, scope: !678, inlinedAt: !715)
!717 = !DILocation(line: 643, column: 41, scope: !693, inlinedAt: !713)
!718 = !DILocation(line: 643, column: 39, scope: !693, inlinedAt: !713)
!719 = !DILocation(line: 643, column: 24, scope: !693, inlinedAt: !713)
!720 = !DILocation(line: 653, column: 39, scope: !708, inlinedAt: !711)
!721 = !{!648, !434, i64 10}
!722 = !DILocation(line: 653, column: 34, scope: !708, inlinedAt: !711)
!723 = !DILocation(line: 0, scope: !439, inlinedAt: !724)
!724 = distinct !DILocation(line: 653, column: 52, scope: !708, inlinedAt: !711)
!725 = !DILocation(line: 482, column: 17, scope: !439, inlinedAt: !724)
!726 = !DILocation(line: 482, column: 22, scope: !439, inlinedAt: !724)
!727 = !DILocation(line: 482, column: 27, scope: !439, inlinedAt: !724)
!728 = !DILocation(line: 653, column: 45, scope: !708, inlinedAt: !711)
!729 = !DILocation(line: 653, column: 32, scope: !708, inlinedAt: !711)
!730 = !DILocation(line: 198, column: 43, scope: !320)
!731 = !DILocation(line: 198, column: 49, scope: !320)
!732 = !DILocation(line: 198, column: 9, scope: !320)
!733 = !DILocalVariable(name: "this", arg: 1, scope: !734, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!734 = distinct !DISubprogram(name: "trace_tag", linkageName: "_ZN21halide_trace_packet_t9trace_tagEv", scope: !42, file: !43, line: 668, type: !138, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !142, retainedNodes: !735)
!735 = !{!733, !736}
!736 = !DILocalVariable(name: "f", scope: !734, file: !43, line: 669, type: !140)
!737 = !DILocation(line: 0, scope: !734, inlinedAt: !738)
!738 = distinct !DILocation(line: 199, column: 32, scope: !320)
!739 = !DILocation(line: 0, scope: !708, inlinedAt: !740)
!740 = distinct !DILocation(line: 669, column: 19, scope: !734, inlinedAt: !738)
!741 = !DILocation(line: 0, scope: !693, inlinedAt: !742)
!742 = distinct !DILocation(line: 653, column: 24, scope: !708, inlinedAt: !740)
!743 = !DILocation(line: 0, scope: !678, inlinedAt: !744)
!744 = distinct !DILocation(line: 643, column: 25, scope: !693, inlinedAt: !742)
!745 = !DILocation(line: 643, column: 41, scope: !693, inlinedAt: !742)
!746 = !DILocation(line: 643, column: 39, scope: !693, inlinedAt: !742)
!747 = !DILocation(line: 643, column: 24, scope: !693, inlinedAt: !742)
!748 = !DILocation(line: 653, column: 39, scope: !708, inlinedAt: !740)
!749 = !DILocation(line: 653, column: 34, scope: !708, inlinedAt: !740)
!750 = !DILocation(line: 0, scope: !439, inlinedAt: !751)
!751 = distinct !DILocation(line: 653, column: 52, scope: !708, inlinedAt: !740)
!752 = !DILocation(line: 482, column: 17, scope: !439, inlinedAt: !751)
!753 = !DILocation(line: 482, column: 22, scope: !439, inlinedAt: !751)
!754 = !DILocation(line: 482, column: 27, scope: !439, inlinedAt: !751)
!755 = !DILocation(line: 653, column: 45, scope: !708, inlinedAt: !740)
!756 = !DILocation(line: 653, column: 32, scope: !708, inlinedAt: !740)
!757 = !DILocation(line: 671, column: 9, scope: !734, inlinedAt: !738)
!758 = !DILocation(line: 671, column: 18, scope: !734, inlinedAt: !738)
!759 = !DILocation(line: 671, column: 16, scope: !734, inlinedAt: !738)
!760 = distinct !{!760, !757, !761, !501}
!761 = !DILocation(line: 673, column: 9, scope: !734, inlinedAt: !738)
!762 = !DILocation(line: 199, column: 48, scope: !320)
!763 = !DILocation(line: 199, column: 45, scope: !320)
!764 = !DILocation(line: 199, column: 79, scope: !320)
!765 = !DILocation(line: 199, column: 9, scope: !320)
!766 = !DILocation(line: 202, column: 9, scope: !320)
!767 = !DILocalVariable(name: "this", arg: 1, scope: !768, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!768 = distinct !DISubprogram(name: "release_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer14release_packetEP21halide_trace_packet_t", scope: !7, file: !5, line: 133, type: !151, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !150, retainedNodes: !769)
!769 = !{!767, !770}
!770 = !DILocalVariable(arg: 2, scope: !768, file: !5, line: 133, type: !41)
!771 = !DILocation(line: 0, scope: !768, inlinedAt: !772)
!772 = distinct !DILocation(line: 202, column: 30, scope: !320)
!773 = !DILocation(line: 135, column: 9, scope: !768, inlinedAt: !772)
!774 = !DILocation(line: 0, scope: !511, inlinedAt: !775)
!775 = distinct !DILocation(line: 136, column: 14, scope: !768, inlinedAt: !772)
!776 = !DILocation(line: 49, column: 31, scope: !511, inlinedAt: !775)
!777 = !DILocation(line: 49, column: 9, scope: !511, inlinedAt: !775)
!778 = !DILocation(line: 206, column: 16, scope: !779)
!779 = distinct !DILexicalBlock(scope: !320, file: !5, line: 206, column: 13)
!780 = !DILocation(line: 206, column: 22, scope: !779)
!781 = !DILocation(line: 206, column: 13, scope: !320)
!782 = !DILocation(line: 207, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !5, line: 206, column: 52)
!784 = !DILocation(line: 0, scope: !517, inlinedAt: !785)
!785 = distinct !DILocation(line: 207, column: 34, scope: !783)
!786 = !DILocation(line: 0, scope: !526, inlinedAt: !787)
!787 = distinct !DILocation(line: 106, column: 14, scope: !517, inlinedAt: !785)
!788 = !DILocation(line: 53, column: 9, scope: !526, inlinedAt: !787)
!789 = !DILocation(line: 58, column: 13, scope: !532, inlinedAt: !787)
!790 = !DILocation(line: 59, column: 17, scope: !534, inlinedAt: !787)
!791 = !DILocation(line: 59, column: 17, scope: !532, inlinedAt: !787)
!792 = distinct !{!792, !788, !793}
!793 = !DILocation(line: 62, column: 9, scope: !526, inlinedAt: !787)
!794 = !DILocation(line: 108, column: 13, scope: !539, inlinedAt: !785)
!795 = !DILocation(line: 108, column: 13, scope: !517, inlinedAt: !785)
!796 = !DILocation(line: 109, column: 23, scope: !544, inlinedAt: !785)
!797 = !DILocation(line: 109, column: 20, scope: !544, inlinedAt: !785)
!798 = !DILocation(line: 110, column: 54, scope: !544, inlinedAt: !785)
!799 = !DILocation(line: 110, column: 59, scope: !544, inlinedAt: !785)
!800 = !DILocation(line: 110, column: 44, scope: !544, inlinedAt: !785)
!801 = !DILocation(line: 110, column: 31, scope: !544, inlinedAt: !785)
!802 = !DILocation(line: 111, column: 20, scope: !544, inlinedAt: !785)
!803 = !DILocation(line: 112, column: 21, scope: !544, inlinedAt: !785)
!804 = !DILocation(line: 0, scope: !553, inlinedAt: !805)
!805 = distinct !DILocation(line: 114, column: 14, scope: !517, inlinedAt: !785)
!806 = !DILocation(line: 66, column: 9, scope: !553, inlinedAt: !805)
!807 = !DILocation(line: 115, column: 9, scope: !559, inlinedAt: !785)
!808 = !DILocation(line: 115, column: 9, scope: !561, inlinedAt: !785)
!809 = !DILocation(line: 0, scope: !553, inlinedAt: !810)
!810 = distinct !DILocation(line: 114, column: 14, scope: !517, inlinedAt: !785)
!811 = !DILocation(line: 66, column: 9, scope: !553, inlinedAt: !810)
!812 = !DILocation(line: 211, column: 9, scope: !330)
!813 = !DILocation(line: 211, column: 17, scope: !330)
!814 = !DILocation(line: 212, column: 9, scope: !330)
!815 = !DILocation(line: 212, column: 54, scope: !330)
!816 = !DILocalVariable(name: "this", arg: 1, scope: !817, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!817 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EEC2EPvPc", scope: !335, file: !208, line: 37, type: !344, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !343, retainedNodes: !818)
!818 = !{!816, !819, !820}
!819 = !DILocalVariable(name: "ctx", arg: 2, scope: !817, file: !208, line: 37, type: !130)
!820 = !DILocalVariable(name: "mem", arg: 3, scope: !817, file: !208, line: 37, type: !140)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!822 = !DILocation(line: 0, scope: !817, inlinedAt: !823)
!823 = distinct !DILocation(line: 212, column: 54, scope: !330)
!824 = !DILocation(line: 38, column: 11, scope: !817, inlinedAt: !823)
!825 = !{!826, !429, i64 24}
!826 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EEE", !429, i64 0, !429, i64 8, !429, i64 16, !429, i64 24, !827, i64 32, !430, i64 33}
!827 = !{!"bool", !430, i64 0}
!828 = !DILocation(line: 38, column: 30, scope: !817, inlinedAt: !823)
!829 = !{!826, !827, i64 32}
!830 = !DILocation(line: 44, column: 13, scope: !831, inlinedAt: !823)
!831 = distinct !DILexicalBlock(scope: !832, file: !208, line: 43, column: 16)
!832 = distinct !DILexicalBlock(scope: !833, file: !208, line: 41, column: 20)
!833 = distinct !DILexicalBlock(scope: !834, file: !208, line: 39, column: 13)
!834 = distinct !DILexicalBlock(scope: !817, file: !208, line: 38, column: 54)
!835 = !DILocation(line: 44, column: 17, scope: !831, inlinedAt: !823)
!836 = !DILocation(line: 47, column: 9, scope: !834, inlinedAt: !823)
!837 = !DILocation(line: 47, column: 13, scope: !834, inlinedAt: !823)
!838 = !{!826, !429, i64 8}
!839 = !DILocation(line: 49, column: 23, scope: !840, inlinedAt: !823)
!840 = distinct !DILexicalBlock(scope: !841, file: !208, line: 48, column: 18)
!841 = distinct !DILexicalBlock(scope: !834, file: !208, line: 48, column: 13)
!842 = !DILocation(line: 49, column: 13, scope: !840, inlinedAt: !823)
!843 = !DILocation(line: 49, column: 17, scope: !840, inlinedAt: !823)
!844 = !{!826, !429, i64 16}
!845 = !DILocation(line: 50, column: 18, scope: !840, inlinedAt: !823)
!846 = !DILocation(line: 0, scope: !330)
!847 = !{!428, !430, i64 33}
!848 = !DILocation(line: 216, column: 9, scope: !330)
!849 = !DILocation(line: 216, column: 27, scope: !330)
!850 = !DILocation(line: 217, column: 24, scope: !851)
!851 = distinct !DILexicalBlock(scope: !330, file: !5, line: 216, column: 43)
!852 = distinct !{!852, !848, !853, !501}
!853 = !DILocation(line: 218, column: 9, scope: !330)
!854 = !DILocation(line: 219, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !5, line: 219, column: 9)
!856 = distinct !DILexicalBlock(scope: !330, file: !5, line: 219, column: 9)
!857 = !DILocation(line: 219, column: 9, scope: !856)
!858 = !DILocation(line: 219, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !5, line: 219, column: 9)
!860 = !DILocation(line: 62, column: 43, scope: !861, inlinedAt: !867)
!861 = distinct !DILexicalBlock(scope: !862, file: !208, line: 61, column: 16)
!862 = distinct !DILexicalBlock(scope: !863, file: !208, line: 59, column: 13)
!863 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKc", scope: !335, file: !208, line: 57, type: !348, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !347, retainedNodes: !864)
!864 = !{!865, !866}
!865 = !DILocalVariable(name: "this", arg: 1, scope: !863, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!866 = !DILocalVariable(name: "arg", arg: 2, scope: !863, file: !208, line: 57, type: !134)
!867 = distinct !DILocation(line: 237, column: 12, scope: !330)
!868 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !867)
!869 = !DILocation(line: 222, column: 21, scope: !330)
!870 = !DILocation(line: 235, column: 32, scope: !330)
!871 = !DILocation(line: 235, column: 38, scope: !330)
!872 = !DILocation(line: 0, scope: !863, inlinedAt: !867)
!873 = !DILocation(line: 237, column: 15, scope: !330)
!874 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !867)
!875 = !DILocation(line: 0, scope: !862, inlinedAt: !867)
!876 = !DILocation(line: 0, scope: !863, inlinedAt: !877)
!877 = distinct !DILocation(line: 237, column: 37, scope: !330)
!878 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !877)
!879 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !877)
!880 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !877)
!881 = !DILocation(line: 237, column: 50, scope: !330)
!882 = !DILocation(line: 0, scope: !863, inlinedAt: !883)
!883 = distinct !DILocation(line: 237, column: 44, scope: !330)
!884 = !DILocation(line: 59, column: 17, scope: !862, inlinedAt: !883)
!885 = !DILocation(line: 0, scope: !862, inlinedAt: !883)
!886 = !DILocation(line: 59, column: 13, scope: !863, inlinedAt: !883)
!887 = !DILocation(line: 60, column: 19, scope: !888, inlinedAt: !883)
!888 = distinct !DILexicalBlock(scope: !862, file: !208, line: 59, column: 29)
!889 = !DILocation(line: 61, column: 9, scope: !888, inlinedAt: !883)
!890 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !883)
!891 = !DILocation(line: 0, scope: !863, inlinedAt: !892)
!892 = distinct !DILocation(line: 237, column: 55, scope: !330)
!893 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !892)
!894 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !892)
!895 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !892)
!896 = !DILocation(line: 237, column: 68, scope: !330)
!897 = !DILocalVariable(name: "this", arg: 1, scope: !898, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!898 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEi", scope: !335, file: !208, line: 72, type: !355, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !354, retainedNodes: !899)
!899 = !{!897, !900}
!900 = !DILocalVariable(name: "arg", arg: 2, scope: !898, file: !208, line: 72, type: !47)
!901 = !DILocation(line: 0, scope: !898, inlinedAt: !902)
!902 = distinct !DILocation(line: 237, column: 62, scope: !330)
!903 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !902)
!904 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !902)
!905 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !902)
!906 = !DILocation(line: 73, column: 13, scope: !898, inlinedAt: !902)
!907 = !DILocation(line: 0, scope: !863, inlinedAt: !908)
!908 = distinct !DILocation(line: 237, column: 80, scope: !330)
!909 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !908)
!910 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !908)
!911 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !908)
!912 = !DILocation(line: 238, column: 21, scope: !913)
!913 = distinct !DILexicalBlock(scope: !330, file: !5, line: 238, column: 13)
!914 = !DILocation(line: 238, column: 27, scope: !913)
!915 = !DILocation(line: 238, column: 13, scope: !330)
!916 = !DILocation(line: 0, scope: !863, inlinedAt: !917)
!917 = distinct !DILocation(line: 239, column: 16, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !5, line: 238, column: 32)
!919 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !917)
!920 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !917)
!921 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !917)
!922 = !DILocation(line: 240, column: 9, scope: !918)
!923 = !DILocation(line: 0, scope: !409)
!924 = !DILocation(line: 241, column: 32, scope: !925)
!925 = distinct !DILexicalBlock(scope: !409, file: !5, line: 241, column: 9)
!926 = !DILocation(line: 241, column: 27, scope: !925)
!927 = !DILocation(line: 241, column: 9, scope: !409)
!928 = !DILocation(line: 249, column: 22, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !5, line: 241, column: 49)
!930 = !DILocation(line: 249, column: 19, scope: !929)
!931 = !{!436, !436, i64 0}
!932 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !933)
!933 = distinct !DILocation(line: 249, column: 16, scope: !929)
!934 = !DILocation(line: 0, scope: !898, inlinedAt: !933)
!935 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !933)
!936 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !933)
!937 = !DILocation(line: 73, column: 13, scope: !898, inlinedAt: !933)
!938 = !DILocation(line: 251, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !330, file: !5, line: 251, column: 13)
!940 = !DILocation(line: 251, column: 27, scope: !939)
!941 = !DILocation(line: 0, scope: !863, inlinedAt: !942)
!942 = distinct !DILocation(line: 252, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !5, line: 251, column: 32)
!944 = !DILocation(line: 0, scope: !863, inlinedAt: !945)
!945 = distinct !DILocation(line: 254, column: 16, scope: !946)
!946 = distinct !DILexicalBlock(scope: !939, file: !5, line: 253, column: 16)
!947 = !DILocation(line: 0, scope: !939)
!948 = !DILocation(line: 251, column: 13, scope: !330)
!949 = !DILocation(line: 257, column: 13, scope: !330)
!950 = !DILocation(line: 243, column: 30, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !5, line: 243, column: 21)
!952 = distinct !DILexicalBlock(scope: !953, file: !5, line: 242, column: 24)
!953 = distinct !DILexicalBlock(scope: !929, file: !5, line: 242, column: 17)
!954 = !DILocation(line: 243, column: 36, scope: !951)
!955 = !DILocation(line: 243, column: 41, scope: !951)
!956 = !DILocation(line: 243, column: 22, scope: !951)
!957 = !DILocation(line: 243, column: 47, scope: !951)
!958 = !DILocation(line: 243, column: 64, scope: !951)
!959 = !DILocation(line: 243, column: 21, scope: !952)
!960 = !DILocation(line: 0, scope: !863, inlinedAt: !961)
!961 = distinct !DILocation(line: 246, column: 24, scope: !962)
!962 = distinct !DILexicalBlock(scope: !951, file: !5, line: 245, column: 24)
!963 = !DILocation(line: 0, scope: !951)
!964 = !DILocation(line: 241, column: 45, scope: !925)
!965 = distinct !{!965, !927, !966, !501, !967}
!966 = !DILocation(line: 250, column: 9, scope: !409)
!967 = !{!"llvm.loop.peeled.count", i32 1}
!968 = !DILocation(line: 258, column: 25, scope: !969)
!969 = distinct !DILexicalBlock(scope: !412, file: !5, line: 258, column: 17)
!970 = !DILocation(line: 258, column: 31, scope: !969)
!971 = !DILocation(line: 0, scope: !863, inlinedAt: !972)
!972 = distinct !DILocation(line: 259, column: 20, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !5, line: 258, column: 36)
!974 = !DILocation(line: 0, scope: !863, inlinedAt: !975)
!975 = distinct !DILocation(line: 261, column: 20, scope: !976)
!976 = distinct !DILexicalBlock(scope: !969, file: !5, line: 260, column: 20)
!977 = !DILocation(line: 0, scope: !969)
!978 = !DILocation(line: 258, column: 17, scope: !412)
!979 = !DILocation(line: 0, scope: !411)
!980 = !DILocation(line: 263, column: 41, scope: !981)
!981 = distinct !DILexicalBlock(scope: !411, file: !5, line: 263, column: 13)
!982 = !DILocation(line: 263, column: 31, scope: !981)
!983 = !DILocation(line: 263, column: 13, scope: !411)
!984 = !DILocation(line: 300, column: 31, scope: !985)
!985 = distinct !DILexicalBlock(scope: !412, file: !5, line: 300, column: 17)
!986 = !DILocation(line: 300, column: 17, scope: !412)
!987 = !DILocation(line: 264, column: 23, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !5, line: 264, column: 21)
!989 = distinct !DILexicalBlock(scope: !981, file: !5, line: 263, column: 53)
!990 = !DILocation(line: 264, column: 21, scope: !989)
!991 = !DILocation(line: 0, scope: !863, inlinedAt: !992)
!992 = distinct !DILocation(line: 265, column: 24, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !5, line: 264, column: 28)
!994 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !992)
!995 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !992)
!996 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !992)
!997 = !DILocation(line: 266, column: 17, scope: !993)
!998 = !DILocation(line: 267, column: 29, scope: !999)
!999 = distinct !DILexicalBlock(scope: !989, file: !5, line: 267, column: 21)
!1000 = !{!428, !433, i64 32}
!1001 = !DILocation(line: 267, column: 21, scope: !989)
!1002 = !DILocation(line: 268, column: 25, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !5, line: 267, column: 40)
!1004 = !DILocation(line: 269, column: 46, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !5, line: 268, column: 42)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !5, line: 268, column: 25)
!1007 = !DILocation(line: 269, column: 31, scope: !1005)
!1008 = !DILocation(line: 0, scope: !898, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 269, column: 28, scope: !1005)
!1010 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !1009)
!1011 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !1009)
!1012 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !1009)
!1013 = !DILocation(line: 270, column: 21, scope: !1005)
!1014 = !DILocation(line: 271, column: 47, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !5, line: 270, column: 50)
!1016 = distinct !DILexicalBlock(scope: !1006, file: !5, line: 270, column: 32)
!1017 = !DILocation(line: 271, column: 31, scope: !1015)
!1018 = !{!434, !434, i64 0}
!1019 = !DILocation(line: 0, scope: !898, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 271, column: 28, scope: !1015)
!1021 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !1020)
!1022 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !1020)
!1023 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !1020)
!1024 = !DILocation(line: 272, column: 21, scope: !1015)
!1025 = !DILocation(line: 273, column: 47, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !5, line: 272, column: 50)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !5, line: 272, column: 32)
!1028 = !DILocation(line: 273, column: 31, scope: !1026)
!1029 = !DILocation(line: 0, scope: !898, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 273, column: 28, scope: !1026)
!1031 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !1030)
!1032 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !1030)
!1033 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !1030)
!1034 = !DILocation(line: 274, column: 21, scope: !1026)
!1035 = !DILocation(line: 275, column: 47, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !5, line: 274, column: 28)
!1037 = !DILocation(line: 275, column: 31, scope: !1036)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"long long", !430, i64 0}
!1040 = !DILocalVariable(name: "this", arg: 1, scope: !1041, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1041 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEx", scope: !335, file: !208, line: 67, type: !352, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !351, retainedNodes: !1042)
!1042 = !{!1040, !1043}
!1043 = !DILocalVariable(name: "arg", arg: 2, scope: !1041, file: !208, line: 67, type: !232)
!1044 = !DILocation(line: 0, scope: !1041, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 275, column: 28, scope: !1036)
!1046 = !DILocation(line: 68, column: 43, scope: !1041, inlinedAt: !1045)
!1047 = !DILocation(line: 68, column: 15, scope: !1041, inlinedAt: !1045)
!1048 = !DILocation(line: 278, column: 25, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !5, line: 277, column: 47)
!1050 = distinct !DILexicalBlock(scope: !999, file: !5, line: 277, column: 28)
!1051 = !DILocation(line: 279, column: 47, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !5, line: 278, column: 42)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !5, line: 278, column: 25)
!1054 = !DILocation(line: 279, column: 31, scope: !1052)
!1055 = !DILocation(line: 0, scope: !898, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 279, column: 28, scope: !1052)
!1057 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !1056)
!1058 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !1056)
!1059 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !1056)
!1060 = !DILocation(line: 280, column: 21, scope: !1052)
!1061 = !DILocation(line: 281, column: 48, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !5, line: 280, column: 50)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !5, line: 280, column: 32)
!1064 = !DILocation(line: 281, column: 31, scope: !1062)
!1065 = !DILocation(line: 0, scope: !898, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 281, column: 28, scope: !1062)
!1067 = !DILocation(line: 73, column: 43, scope: !898, inlinedAt: !1066)
!1068 = !DILocation(line: 73, column: 48, scope: !898, inlinedAt: !1066)
!1069 = !DILocation(line: 73, column: 15, scope: !898, inlinedAt: !1066)
!1070 = !DILocation(line: 282, column: 21, scope: !1062)
!1071 = !DILocation(line: 283, column: 48, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !5, line: 282, column: 50)
!1073 = distinct !DILexicalBlock(scope: !1063, file: !5, line: 282, column: 32)
!1074 = !DILocation(line: 283, column: 31, scope: !1072)
!1075 = !DILocalVariable(name: "this", arg: 1, scope: !1076, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1076 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEj", scope: !335, file: !208, line: 82, type: !361, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !360, retainedNodes: !1077)
!1077 = !{!1075, !1078}
!1078 = !DILocalVariable(name: "arg", arg: 2, scope: !1076, file: !208, line: 82, type: !14)
!1079 = !DILocation(line: 0, scope: !1076, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 283, column: 28, scope: !1072)
!1081 = !DILocation(line: 83, column: 44, scope: !1076, inlinedAt: !1080)
!1082 = !DILocation(line: 83, column: 49, scope: !1076, inlinedAt: !1080)
!1083 = !DILocation(line: 83, column: 15, scope: !1076, inlinedAt: !1080)
!1084 = !DILocation(line: 284, column: 21, scope: !1072)
!1085 = !DILocation(line: 285, column: 48, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1073, file: !5, line: 284, column: 28)
!1087 = !DILocation(line: 285, column: 31, scope: !1086)
!1088 = !DILocalVariable(name: "this", arg: 1, scope: !1089, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1089 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEy", scope: !335, file: !208, line: 77, type: !358, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !357, retainedNodes: !1090)
!1090 = !{!1088, !1091}
!1091 = !DILocalVariable(name: "arg", arg: 2, scope: !1089, file: !208, line: 77, type: !240)
!1092 = !DILocation(line: 0, scope: !1089, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 285, column: 28, scope: !1086)
!1094 = !DILocation(line: 78, column: 44, scope: !1089, inlinedAt: !1093)
!1095 = !DILocation(line: 78, column: 15, scope: !1089, inlinedAt: !1093)
!1096 = !DILocation(line: 288, column: 21, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !5, line: 288, column: 21)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !5, line: 287, column: 47)
!1099 = distinct !DILexicalBlock(scope: !1050, file: !5, line: 287, column: 28)
!1100 = !DILocation(line: 288, column: 21, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !5, line: 288, column: 21)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !5, line: 288, column: 21)
!1103 = !DILocation(line: 289, column: 25, scope: !1098)
!1104 = !DILocation(line: 290, column: 45, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !5, line: 289, column: 43)
!1106 = distinct !DILexicalBlock(scope: !1098, file: !5, line: 289, column: 25)
!1107 = !DILocation(line: 290, column: 31, scope: !1105)
!1108 = !{!1109, !1109, i64 0}
!1109 = !{!"float", !430, i64 0}
!1110 = !DILocalVariable(name: "this", arg: 1, scope: !1111, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1111 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEf", scope: !335, file: !208, line: 92, type: !367, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !366, retainedNodes: !1112)
!1112 = !{!1110, !1113}
!1113 = !DILocalVariable(name: "arg", arg: 2, scope: !1111, file: !208, line: 92, type: !252)
!1114 = !DILocation(line: 0, scope: !1111, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 290, column: 28, scope: !1105)
!1116 = !DILocation(line: 93, column: 39, scope: !1111, inlinedAt: !1115)
!1117 = !DILocation(line: 93, column: 44, scope: !1111, inlinedAt: !1115)
!1118 = !DILocation(line: 93, column: 49, scope: !1111, inlinedAt: !1115)
!1119 = !DILocation(line: 93, column: 15, scope: !1111, inlinedAt: !1115)
!1120 = !DILocation(line: 291, column: 21, scope: !1105)
!1121 = !DILocation(line: 292, column: 69, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !5, line: 291, column: 50)
!1123 = distinct !DILexicalBlock(scope: !1106, file: !5, line: 291, column: 32)
!1124 = !DILocation(line: 292, column: 52, scope: !1122)
!1125 = !DILocalVariable(name: "this", arg: 1, scope: !1126, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1126 = distinct !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE23write_float16_from_bitsEt", scope: !335, file: !208, line: 102, type: !373, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !372, retainedNodes: !1127)
!1127 = !{!1125, !1128, !1129}
!1128 = !DILocalVariable(name: "arg", arg: 2, scope: !1126, file: !208, line: 102, type: !259)
!1129 = !DILocalVariable(name: "value", scope: !1126, file: !208, line: 103, type: !248)
!1130 = !DILocation(line: 0, scope: !1126, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 292, column: 28, scope: !1122)
!1132 = !DILocation(line: 103, column: 24, scope: !1126, inlinedAt: !1131)
!1133 = !DILocation(line: 104, column: 39, scope: !1126, inlinedAt: !1131)
!1134 = !DILocation(line: 104, column: 44, scope: !1126, inlinedAt: !1131)
!1135 = !DILocation(line: 104, column: 15, scope: !1126, inlinedAt: !1131)
!1136 = !DILocation(line: 293, column: 21, scope: !1122)
!1137 = !DILocation(line: 294, column: 46, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1123, file: !5, line: 293, column: 28)
!1139 = !DILocation(line: 294, column: 31, scope: !1138)
!1140 = !{!1141, !1141, i64 0}
!1141 = !{!"double", !430, i64 0}
!1142 = !DILocalVariable(name: "this", arg: 1, scope: !1143, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1143 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEd", scope: !335, file: !208, line: 87, type: !364, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !363, retainedNodes: !1144)
!1144 = !{!1142, !1145}
!1145 = !DILocalVariable(name: "arg", arg: 2, scope: !1143, file: !208, line: 87, type: !248)
!1146 = !DILocation(line: 0, scope: !1143, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 294, column: 28, scope: !1138)
!1148 = !DILocation(line: 88, column: 39, scope: !1143, inlinedAt: !1147)
!1149 = !DILocation(line: 88, column: 44, scope: !1143, inlinedAt: !1147)
!1150 = !DILocation(line: 88, column: 15, scope: !1143, inlinedAt: !1147)
!1151 = !DILocation(line: 297, column: 41, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !5, line: 296, column: 47)
!1153 = distinct !DILexicalBlock(scope: !1099, file: !5, line: 296, column: 28)
!1154 = !DILocation(line: 297, column: 27, scope: !1152)
!1155 = !DILocalVariable(name: "this", arg: 1, scope: !1156, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1156 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKv", scope: !335, file: !208, line: 97, type: !370, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !369, retainedNodes: !1157)
!1157 = !{!1155, !1158}
!1158 = !DILocalVariable(name: "arg", arg: 2, scope: !1156, file: !208, line: 97, type: !125)
!1159 = !DILocation(line: 0, scope: !1156, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 297, column: 24, scope: !1152)
!1161 = !DILocation(line: 98, column: 45, scope: !1156, inlinedAt: !1160)
!1162 = !DILocation(line: 98, column: 15, scope: !1156, inlinedAt: !1160)
!1163 = !DILocation(line: 298, column: 17, scope: !1152)
!1164 = !DILocation(line: 0, scope: !999)
!1165 = !DILocation(line: 263, column: 49, scope: !981)
!1166 = distinct !{!1166, !983, !1167, !501}
!1167 = !DILocation(line: 299, column: 13, scope: !411)
!1168 = !DILocation(line: 0, scope: !863, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 301, column: 20, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !985, file: !5, line: 300, column: 36)
!1171 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !1169)
!1172 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !1169)
!1173 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !1169)
!1174 = !DILocation(line: 302, column: 13, scope: !1170)
!1175 = !DILocation(line: 305, column: 16, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !330, file: !5, line: 305, column: 13)
!1177 = !DILocation(line: 305, column: 13, scope: !1176)
!1178 = !DILocation(line: 305, column: 26, scope: !1176)
!1179 = !DILocation(line: 305, column: 29, scope: !1176)
!1180 = !DILocation(line: 305, column: 13, scope: !330)
!1181 = !DILocation(line: 0, scope: !863, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 306, column: 16, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !5, line: 305, column: 44)
!1184 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !1182)
!1185 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !1182)
!1186 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !1182)
!1187 = !DILocation(line: 306, column: 37, scope: !1183)
!1188 = !DILocation(line: 0, scope: !863, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 306, column: 31, scope: !1183)
!1190 = !DILocation(line: 59, column: 17, scope: !862, inlinedAt: !1189)
!1191 = !DILocation(line: 0, scope: !862, inlinedAt: !1189)
!1192 = !DILocation(line: 59, column: 13, scope: !863, inlinedAt: !1189)
!1193 = !DILocation(line: 60, column: 19, scope: !888, inlinedAt: !1189)
!1194 = !DILocation(line: 61, column: 9, scope: !888, inlinedAt: !1189)
!1195 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !1189)
!1196 = !DILocation(line: 0, scope: !863, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 306, column: 47, scope: !1183)
!1198 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !1197)
!1199 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !1197)
!1200 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !1197)
!1201 = !DILocation(line: 307, column: 9, scope: !1183)
!1202 = !DILocation(line: 62, column: 43, scope: !861, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 309, column: 12, scope: !330)
!1204 = !DILocation(line: 0, scope: !863, inlinedAt: !1203)
!1205 = !DILocation(line: 62, column: 48, scope: !861, inlinedAt: !1203)
!1206 = !DILocation(line: 62, column: 19, scope: !861, inlinedAt: !1203)
!1207 = !DILocation(line: 62, column: 17, scope: !861, inlinedAt: !1203)
!1208 = !DILocation(line: 310, column: 12, scope: !330)
!1209 = !{!826, !429, i64 0}
!1210 = !DILocalVariable(name: "this", arg: 1, scope: !1211, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1211 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE28msan_annotate_is_initializedEv", scope: !335, file: !208, line: 162, type: !385, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !397, retainedNodes: !1212)
!1212 = !{!1210}
!1213 = !DILocation(line: 0, scope: !1211, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 310, column: 12, scope: !330)
!1215 = !DILocation(line: 163, column: 81, scope: !1211, inlinedAt: !1214)
!1216 = !DILocation(line: 163, column: 87, scope: !1211, inlinedAt: !1214)
!1217 = !DILocation(line: 163, column: 15, scope: !1211, inlinedAt: !1214)
!1218 = !DILocalVariable(name: "this", arg: 1, scope: !1219, type: !1222, flags: DIFlagArtificial | DIFlagObjectPointer)
!1219 = distinct !DISubprogram(name: "ScopedSpinLock", linkageName: "_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVc", scope: !163, file: !162, line: 15, type: !170, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !169, retainedNodes: !1220)
!1220 = !{!1218, !1221}
!1221 = !DILocalVariable(name: "flag", arg: 2, scope: !1219, file: !162, line: 15, type: !167)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1223 = !DILocation(line: 0, scope: !1219, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 313, column: 28, scope: !415)
!1225 = !DILocation(line: 0, scope: !415)
!1226 = !DILocation(line: 17, column: 9, scope: !1227, inlinedAt: !1224)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !162, line: 16, column: 22)
!1228 = !DILocation(line: 17, column: 16, scope: !1227, inlinedAt: !1224)
!1229 = distinct !{!1229, !1226, !1230, !501}
!1230 = !DILocation(line: 19, column: 9, scope: !1227, inlinedAt: !1224)
!1231 = !DILocation(line: 314, column: 13, scope: !415)
!1232 = !DILocalVariable(name: "this", arg: 1, scope: !1233, type: !1222, flags: DIFlagArtificial | DIFlagObjectPointer)
!1233 = distinct !DISubprogram(name: "~ScopedSpinLock", linkageName: "_ZN6Halide7Runtime8Internal14ScopedSpinLockD2Ev", scope: !163, file: !162, line: 22, type: !174, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !173, retainedNodes: !1234)
!1234 = !{!1232}
!1235 = !DILocation(line: 0, scope: !1233, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 315, column: 9, scope: !330)
!1237 = !DILocation(line: 23, column: 9, scope: !1238, inlinedAt: !1236)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !162, line: 22, column: 37)
!1239 = !DILocalVariable(name: "this", arg: 1, scope: !1240, type: !821, flags: DIFlagArtificial | DIFlagObjectPointer)
!1240 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EED2Ev", scope: !335, file: !208, line: 166, type: !385, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !398, retainedNodes: !1241)
!1241 = !{!1239}
!1242 = !DILocation(line: 0, scope: !1240, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 316, column: 5, scope: !321)
!1244 = !DILocation(line: 167, column: 14, scope: !1245, inlinedAt: !1243)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !208, line: 167, column: 13)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !208, line: 166, column: 16)
!1247 = !DILocation(line: 167, column: 13, scope: !1246, inlinedAt: !1243)
!1248 = !DILocation(line: 168, column: 26, scope: !1249, inlinedAt: !1243)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !208, line: 167, column: 19)
!1250 = !DILocation(line: 168, column: 13, scope: !1249, inlinedAt: !1243)
!1251 = !DILocation(line: 169, column: 9, scope: !1249, inlinedAt: !1243)
!1252 = !DILocation(line: 170, column: 13, scope: !1253, inlinedAt: !1243)
!1253 = distinct !DILexicalBlock(scope: !1245, file: !208, line: 169, column: 16)
!1254 = !DILocation(line: 0, scope: !1211, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 170, column: 13, scope: !1253, inlinedAt: !1243)
!1256 = !DILocation(line: 163, column: 81, scope: !1211, inlinedAt: !1255)
!1257 = !DILocation(line: 163, column: 87, scope: !1211, inlinedAt: !1255)
!1258 = !DILocation(line: 163, column: 15, scope: !1211, inlinedAt: !1255)
!1259 = !DILocation(line: 180, column: 13, scope: !1260, inlinedAt: !1243)
!1260 = distinct !DILexicalBlock(scope: !1246, file: !208, line: 180, column: 13)
!1261 = !{i8 0, i8 2}
!1262 = !DILocation(line: 180, column: 21, scope: !1260, inlinedAt: !1243)
!1263 = !DILocation(line: 180, column: 24, scope: !1260, inlinedAt: !1243)
!1264 = !DILocation(line: 180, column: 31, scope: !1260, inlinedAt: !1243)
!1265 = !DILocation(line: 180, column: 28, scope: !1260, inlinedAt: !1243)
!1266 = !DILocation(line: 180, column: 13, scope: !1246, inlinedAt: !1243)
!1267 = !DILocation(line: 181, column: 13, scope: !1268, inlinedAt: !1243)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !208, line: 180, column: 40)
!1269 = !DILocation(line: 182, column: 9, scope: !1268, inlinedAt: !1243)
!1270 = !DILocation(line: 316, column: 5, scope: !321)
!1271 = !DILocation(line: 318, column: 5, scope: !182)
!1272 = distinct !DISubprogram(name: "halide_get_trace_file", scope: !5, file: !5, line: 347, type: !1273, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!48, !130}
!1275 = !{!1276, !1277, !1278, !1281}
!1276 = !DILocalVariable(name: "user_context", arg: 1, scope: !1272, file: !5, line: 347, type: !130)
!1277 = !DILocalVariable(name: "lock", scope: !1272, file: !5, line: 348, type: !163)
!1278 = !DILocalVariable(name: "trace_file_name", scope: !1279, file: !5, line: 350, type: !134)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !5, line: 349, column: 32)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !5, line: 349, column: 9)
!1281 = !DILocalVariable(name: "file", scope: !1282, file: !5, line: 352, type: !130)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !5, line: 351, column: 30)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !5, line: 351, column: 13)
!1284 = !DILocation(line: 0, scope: !1272)
!1285 = !DILocation(line: 0, scope: !1219, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 348, column: 20, scope: !1272)
!1287 = !DILocation(line: 17, column: 9, scope: !1227, inlinedAt: !1286)
!1288 = !DILocation(line: 17, column: 16, scope: !1227, inlinedAt: !1286)
!1289 = distinct !{!1289, !1287, !1290, !501}
!1290 = !DILocation(line: 19, column: 9, scope: !1227, inlinedAt: !1286)
!1291 = !DILocation(line: 349, column: 9, scope: !1280)
!1292 = !DILocation(line: 349, column: 27, scope: !1280)
!1293 = !DILocation(line: 349, column: 9, scope: !1272)
!1294 = !DILocation(line: 350, column: 39, scope: !1279)
!1295 = !DILocation(line: 0, scope: !1279)
!1296 = !DILocation(line: 351, column: 13, scope: !1283)
!1297 = !DILocation(line: 351, column: 13, scope: !1279)
!1298 = !DILocation(line: 352, column: 26, scope: !1282)
!1299 = !DILocation(line: 0, scope: !1282)
!1300 = !DILocation(line: 353, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !5, line: 353, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1282, file: !5, line: 353, column: 13)
!1303 = !DILocation(line: 353, column: 13, scope: !1302)
!1304 = !DILocation(line: 353, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !5, line: 353, column: 13)
!1306 = !DILocation(line: 354, column: 35, scope: !1282)
!1307 = !DILocation(line: 354, column: 13, scope: !1282)
!1308 = !DILocation(line: 355, column: 49, scope: !1282)
!1309 = !DILocation(line: 356, column: 18, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1282, file: !5, line: 356, column: 17)
!1311 = !DILocation(line: 356, column: 17, scope: !1282)
!1312 = !DILocation(line: 357, column: 54, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !5, line: 356, column: 39)
!1314 = !DILocation(line: 357, column: 37, scope: !1313)
!1315 = !DILocalVariable(name: "this", arg: 1, scope: !1316, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!1316 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer4initEv", scope: !7, file: !5, line: 139, type: !154, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !153, retainedNodes: !1317)
!1317 = !{!1315}
!1318 = !DILocation(line: 0, scope: !1316, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 358, column: 38, scope: !1313)
!1320 = !DILocation(line: 140, column: 9, scope: !1316, inlinedAt: !1319)
!1321 = !DILocation(line: 140, column: 16, scope: !1316, inlinedAt: !1319)
!1322 = !DILocation(line: 141, column: 9, scope: !1316, inlinedAt: !1319)
!1323 = !DILocation(line: 141, column: 17, scope: !1316, inlinedAt: !1319)
!1324 = !DILocalVariable(name: "this", arg: 1, scope: !1325, type: !482, flags: DIFlagArtificial | DIFlagObjectPointer)
!1325 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock4initEv", scope: !10, file: !5, line: 69, type: !22, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !28, retainedNodes: !1326)
!1326 = !{!1324}
!1327 = !DILocation(line: 0, scope: !1325, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 142, column: 14, scope: !1316, inlinedAt: !1319)
!1329 = !DILocation(line: 70, column: 9, scope: !1325, inlinedAt: !1328)
!1330 = !DILocation(line: 70, column: 14, scope: !1325, inlinedAt: !1328)
!1331 = !DILocation(line: 359, column: 13, scope: !1313)
!1332 = !DILocation(line: 361, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1283, file: !5, line: 360, column: 16)
!1334 = !DILocation(line: 364, column: 12, scope: !1272)
!1335 = !DILocation(line: 0, scope: !1233, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 365, column: 1, scope: !1272)
!1337 = !DILocation(line: 23, column: 9, scope: !1238, inlinedAt: !1336)
!1338 = !DILocation(line: 365, column: 1, scope: !1272)
!1339 = !DISubprogram(name: "strlen", scope: !15, file: !15, line: 92, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1342, !134}
!1342 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1343 = !{}
!1344 = !DISubprogram(name: "memcpy", scope: !15, file: !15, line: 94, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!130, !130, !125, !1342}
!1347 = !DISubprogram(name: "halide_print", scope: !43, file: !43, line: 97, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !130, !134}
!1350 = !DISubprogram(name: "abort", scope: !15, file: !15, line: 108, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null}
!1353 = distinct !DISubprogram(name: "halide_set_custom_trace", scope: !5, file: !5, line: 335, type: !1354, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!308, !308}
!1356 = !{!1357, !1358}
!1357 = !DILocalVariable(name: "t", arg: 1, scope: !1353, file: !5, line: 335, type: !308)
!1358 = !DILocalVariable(name: "result", scope: !1353, file: !5, line: 336, type: !308)
!1359 = !DILocation(line: 0, scope: !1353)
!1360 = !DILocation(line: 336, column: 23, scope: !1353)
!1361 = !DILocation(line: 337, column: 25, scope: !1353)
!1362 = !DILocation(line: 338, column: 5, scope: !1353)
!1363 = distinct !DISubprogram(name: "halide_set_trace_file", scope: !5, file: !5, line: 341, type: !1364, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !48}
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "fd", arg: 1, scope: !1363, file: !5, line: 341, type: !48)
!1368 = !DILocation(line: 0, scope: !1363)
!1369 = !DILocation(line: 342, column: 23, scope: !1363)
!1370 = !DILocation(line: 343, column: 1, scope: !1363)
!1371 = !DISubprogram(name: "getenv", scope: !15, file: !15, line: 85, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!140, !134}
!1374 = !DISubprogram(name: "fopen", scope: !15, file: !15, line: 99, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!130, !134, !134}
!1377 = !DISubprogram(name: "fileno", scope: !15, file: !15, line: 100, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1378 = !DISubprogram(name: "malloc", scope: !15, file: !15, line: 87, type: !1379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!130, !1342}
!1381 = distinct !DISubprogram(name: "halide_trace", scope: !5, file: !5, line: 367, type: !183, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1382)
!1382 = !{!1383, !1384}
!1383 = !DILocalVariable(name: "user_context", arg: 1, scope: !1381, file: !5, line: 367, type: !130)
!1384 = !DILocalVariable(name: "e", arg: 2, scope: !1381, file: !5, line: 367, type: !185)
!1385 = !DILocation(line: 0, scope: !1381)
!1386 = !DILocation(line: 368, column: 14, scope: !1381)
!1387 = !DILocation(line: 368, column: 12, scope: !1381)
!1388 = !DILocation(line: 368, column: 5, scope: !1381)
!1389 = distinct !DISubprogram(name: "halide_shutdown_trace", scope: !5, file: !5, line: 371, type: !1390, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!48}
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "ret", scope: !1394, file: !5, line: 373, type: !48)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !5, line: 372, column: 46)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !5, line: 372, column: 9)
!1396 = !DILocation(line: 372, column: 9, scope: !1395)
!1397 = !DILocation(line: 372, column: 9, scope: !1389)
!1398 = !DILocation(line: 373, column: 19, scope: !1394)
!1399 = !DILocation(line: 0, scope: !1394)
!1400 = !DILocation(line: 374, column: 27, scope: !1394)
!1401 = !DILocation(line: 375, column: 39, scope: !1394)
!1402 = !{!827, !827, i64 0}
!1403 = !DILocation(line: 376, column: 45, scope: !1394)
!1404 = !DILocation(line: 377, column: 13, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1394, file: !5, line: 377, column: 13)
!1406 = !DILocation(line: 377, column: 13, scope: !1394)
!1407 = !DILocation(line: 378, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !5, line: 377, column: 34)
!1409 = !DILocation(line: 378, column: 13, scope: !1408)
!1410 = !DILocation(line: 379, column: 9, scope: !1408)
!1411 = !DILocation(line: 0, scope: !1395)
!1412 = !DILocation(line: 384, column: 1, scope: !1389)
!1413 = !DISubprogram(name: "fclose", scope: !15, file: !15, line: 101, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1414 = !DISubprogram(name: "free", scope: !15, file: !15, line: 86, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !130}
!1417 = distinct !DISubprogram(name: "halide_trace_cleanup", scope: !1418, file: !5, line: 387, type: !1351, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1343)
!1418 = !DINamespace(scope: null)
!1419 = !DILocation(line: 388, column: 5, scope: !1417)
!1420 = !DILocation(line: 389, column: 1, scope: !1417)
!1421 = !DISubprogram(name: "write", scope: !15, file: !15, line: 104, type: !1422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1424, !48, !125, !1342}
!1424 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1425 = !DISubprogram(name: "halide_error", scope: !43, file: !43, line: 111, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1426 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !43, file: !43, line: 973, type: !1427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!48, !130, !125, !241}
!1429 = !DISubprogram(name: "halide_uint64_to_string", scope: !15, file: !15, line: 123, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!140, !140, !140, !241, !48}
!1432 = !DISubprogram(name: "halide_string_to_string", scope: !15, file: !15, line: 120, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!140, !140, !140, !134}
!1435 = !DISubprogram(name: "halide_int64_to_string", scope: !15, file: !15, line: 122, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!140, !140, !140, !233, !48}
!1438 = !DISubprogram(name: "halide_double_to_string", scope: !15, file: !15, line: 121, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!140, !140, !140, !248, !48}
!1441 = !DISubprogram(name: "halide_float16_bits_to_double", scope: !43, file: !43, line: 1846, type: !1442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!248, !64}
!1444 = !DISubprogram(name: "halide_pointer_to_string", scope: !15, file: !15, line: 124, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1343)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!140, !140, !140, !125}
