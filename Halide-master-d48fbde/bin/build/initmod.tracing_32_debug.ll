; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"class.Halide::Runtime::Internal::TraceBuffer" = type { %"class.Halide::Runtime::Internal::SharedExclusiveSpinLock", i32, i32, [1048576 x i8] }
%"class.Halide::Runtime::Internal::SharedExclusiveSpinLock" = type { i32 }
%struct.halide_trace_event_t = type { i8*, i8*, i32*, i8*, %struct.halide_type_t, i32, i32, i32, i32 }
%struct.halide_type_t = type { i8, i8, i16 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%struct.halide_trace_packet_t = type { i32, i32, %struct.halide_type_t, i32, i32, i32, i32 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"struct.Halide::Runtime::Internal::ScopedSpinLock" = type { i8* }

@_ZN6Halide7Runtime8Internal19halide_trace_bufferE = weak dso_local local_unnamed_addr global %"class.Halide::Runtime::Internal::TraceBuffer"* null, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal17halide_trace_fileE = weak dso_local local_unnamed_addr global i32 -1, align 4, !dbg !157
@_ZN6Halide7Runtime8Internal22halide_trace_file_lockE = weak dso_local global i8 0, align 1, !dbg !159
@_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !176
@_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE = weak dso_local local_unnamed_addr global i8* null, align 4, !dbg !178
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
@_ZN6Halide7Runtime8Internal19halide_custom_traceE = weak dso_local local_unnamed_addr global i32 (i8*, %struct.halide_trace_event_t*)* @halide_default_trace, align 4, !dbg !306
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
  %4 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !315, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata %struct.halide_trace_event_t* %1, metadata !316, metadata !DIExpression()), !dbg !420
  %5 = atomicrmw add i32* @_ZZ20halide_default_traceE3ids, i32 1 seq_cst, !dbg !421
  call void @llvm.dbg.value(metadata i32 %5, metadata !317, metadata !DIExpression()), !dbg !420
  %6 = tail call i32 @halide_get_trace_file(i8* %0) #6, !dbg !422
  call void @llvm.dbg.value(metadata i32 %6, metadata !318, metadata !DIExpression()), !dbg !420
  %7 = icmp sgt i32 %6, 0, !dbg !423
  br i1 %7, label %8, label %236, !dbg !424

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, !dbg !425
  %10 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 2, !dbg !426
  %11 = load i16, i16* %10, align 2, !dbg !426, !tbaa !427
  %12 = zext i16 %11 to i32, !dbg !437
  call void @llvm.dbg.value(metadata %struct.halide_type_t* %9, metadata !438, metadata !DIExpression()), !dbg !442
  %13 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 1, !dbg !444
  %14 = load i8, i8* %13, align 1, !dbg !444, !tbaa !445
  %15 = zext i8 %14 to i32, !dbg !444
  %16 = add nuw nsw i32 %15, 7, !dbg !446
  %17 = lshr i32 %16, 3, !dbg !447
  %18 = mul nuw nsw i32 %17, %12, !dbg !448
  call void @llvm.dbg.value(metadata i32 %18, metadata !319, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 28, metadata !322, metadata !DIExpression()), !dbg !449
  %19 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 8, !dbg !450
  %20 = load i32, i32* %19, align 4, !dbg !450, !tbaa !451
  %21 = shl i32 %20, 2, !dbg !452
  call void @llvm.dbg.value(metadata i32 %21, metadata !323, metadata !DIExpression()), !dbg !449
  %22 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 0, !dbg !453
  %23 = load i8*, i8** %22, align 4, !dbg !453, !tbaa !454
  %24 = tail call i32 @strlen(i8* %23) #7, !dbg !455
  %25 = add i32 %24, 1, !dbg !456
  call void @llvm.dbg.value(metadata i32 %25, metadata !324, metadata !DIExpression()), !dbg !449
  %26 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 3, !dbg !457
  %27 = load i8*, i8** %26, align 4, !dbg !457, !tbaa !458
  %28 = icmp eq i8* %27, null, !dbg !459
  br i1 %28, label %32, label %29, !dbg !459

29:                                               ; preds = %8
  %30 = tail call i32 @strlen(i8* nonnull %27) #7, !dbg !460
  %31 = add i32 %30, 1, !dbg !461
  br label %32, !dbg !459

32:                                               ; preds = %8, %29
  %33 = phi i32 [ %31, %29 ], [ 1, %8 ], !dbg !459
  call void @llvm.dbg.value(metadata i32 %33, metadata !325, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 undef, metadata !326, metadata !DIExpression()), !dbg !449
  %34 = add i32 %21, 31, !dbg !462
  %35 = add i32 %34, %18, !dbg !463
  %36 = add i32 %35, %25, !dbg !464
  %37 = add i32 %36, %33, !dbg !465
  %38 = and i32 %37, -4, !dbg !466
  call void @llvm.dbg.value(metadata i32 %38, metadata !327, metadata !DIExpression()), !dbg !449
  %39 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !dbg !467, !tbaa !468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !469, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata i8* %0, metadata !472, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata i32 %6, metadata !473, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata i32 %38, metadata !474, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata %struct.halide_trace_packet_t* null, metadata !475, metadata !DIExpression()) #8, !dbg !476
  %40 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 0, i32 0
  %41 = icmp ult i32 %38, 1048577
  %42 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 1
  %43 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 2
  %44 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 3, i32 0
  br i1 %41, label %45, label %75, !dbg !478

45:                                               ; preds = %32, %51
  %46 = load volatile i32, i32* %40, align 4, !dbg !479, !tbaa !494
  %47 = and i32 %46, 1073741823, !dbg !496
  call void @llvm.dbg.value(metadata i32 %47, metadata !485, metadata !DIExpression()) #8, !dbg !497
  %48 = add nuw nsw i32 %47, 1, !dbg !498
  %49 = cmpxchg i32* %40, i32 %47, i32 %48 seq_cst seq_cst, !dbg !500
  %50 = extractvalue { i32, i1 } %49, 1, !dbg !500
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %73, %72, %66
  br label %45, !dbg !479, !llvm.loop !501

52:                                               ; preds = %45
  %53 = atomicrmw add i32* %42, i32 %38 seq_cst, !dbg !504
  call void @llvm.dbg.value(metadata i32 %53, metadata !492, metadata !DIExpression()) #8, !dbg !505
  %54 = add i32 %53, %38, !dbg !506
  %55 = icmp ugt i32 %54, 1048576, !dbg !508
  br i1 %55, label %56, label %105, !dbg !509

56:                                               ; preds = %52
  %57 = atomicrmw add i32* %43, i32 %38 seq_cst, !dbg !510
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !512, metadata !DIExpression()) #8, !dbg !515
  %58 = atomicrmw sub i32* %40, i32 1 seq_cst, !dbg !517
  call void @llvm.dbg.value(metadata i8* %107, metadata !475, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !518, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata i8* %0, metadata !521, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata i32 %6, metadata !522, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !527, metadata !DIExpression()) #8, !dbg !530
  br label %59, !dbg !532

59:                                               ; preds = %59, %56
  %60 = atomicrmw or i32* %40, i32 1073741824 seq_cst, !dbg !533
  %61 = cmpxchg i32* %40, i32 1073741824, i32 -2147483648 seq_cst seq_cst, !dbg !535
  %62 = extractvalue { i32, i1 } %61, 1, !dbg !535
  br i1 %62, label %63, label %59, !dbg !537, !llvm.loop !538

63:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 1, metadata !523, metadata !DIExpression()) #8, !dbg !524
  %64 = load i32, i32* %42, align 4, !dbg !540, !tbaa !542
  %65 = icmp eq i32 %64, 0, !dbg !540
  br i1 %65, label %73, label %66, !dbg !544

66:                                               ; preds = %63
  %67 = load i32, i32* %43, align 4, !dbg !545, !tbaa !547
  %68 = sub i32 %64, %67, !dbg !548
  store i32 %68, i32* %42, align 4, !dbg !548, !tbaa !542
  %69 = tail call i32 @write(i32 %6, i8* nonnull %44, i32 %68) #7, !dbg !549
  %70 = icmp eq i32 %68, %69, !dbg !550
  call void @llvm.dbg.value(metadata i1 %70, metadata !523, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !524
  store i32 0, i32* %42, align 4, !dbg !551, !tbaa !542
  store i32 0, i32* %43, align 4, !dbg !552, !tbaa !547
  call void @llvm.dbg.value(metadata i8 undef, metadata !523, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !553, metadata !DIExpression()) #8, !dbg !556
  %71 = atomicrmw and i32* %40, i32 2147483647 seq_cst, !dbg !558
  br i1 %70, label %51, label %72, !dbg !559

72:                                               ; preds = %66
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !561
  tail call void @abort() #7, !dbg !561
  br label %51, !dbg !561

73:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8 undef, metadata !523, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !553, metadata !DIExpression()) #8, !dbg !564
  %74 = atomicrmw and i32* %40, i32 2147483647 seq_cst, !dbg !566
  br label %51, !dbg !559

75:                                               ; preds = %32, %81
  %76 = load volatile i32, i32* %40, align 4, !dbg !479, !tbaa !494
  %77 = and i32 %76, 1073741823, !dbg !496
  call void @llvm.dbg.value(metadata i32 %77, metadata !485, metadata !DIExpression()) #8, !dbg !497
  %78 = add nuw nsw i32 %77, 1, !dbg !498
  %79 = cmpxchg i32* %40, i32 %77, i32 %78 seq_cst seq_cst, !dbg !500
  %80 = extractvalue { i32, i1 } %79, 1, !dbg !500
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %103, %102, %96
  br label %75, !dbg !479, !llvm.loop !567

82:                                               ; preds = %75
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.31, i32 0, i32 0)) #7, !dbg !568
  tail call void @abort() #7, !dbg !568
  %83 = atomicrmw add i32* %42, i32 %38 seq_cst, !dbg !504
  call void @llvm.dbg.value(metadata i32 %83, metadata !492, metadata !DIExpression()) #8, !dbg !505
  %84 = add i32 %83, %38, !dbg !506
  %85 = icmp ugt i32 %84, 1048576, !dbg !508
  br i1 %85, label %86, label %105, !dbg !509

86:                                               ; preds = %82
  %87 = atomicrmw add i32* %43, i32 %38 seq_cst, !dbg !510
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !512, metadata !DIExpression()) #8, !dbg !515
  %88 = atomicrmw sub i32* %40, i32 1 seq_cst, !dbg !517
  call void @llvm.dbg.value(metadata i8* %107, metadata !475, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !518, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata i8* %0, metadata !521, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata i32 %6, metadata !522, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !527, metadata !DIExpression()) #8, !dbg !530
  br label %89, !dbg !532

89:                                               ; preds = %89, %86
  %90 = atomicrmw or i32* %40, i32 1073741824 seq_cst, !dbg !533
  %91 = cmpxchg i32* %40, i32 1073741824, i32 -2147483648 seq_cst seq_cst, !dbg !535
  %92 = extractvalue { i32, i1 } %91, 1, !dbg !535
  br i1 %92, label %93, label %89, !dbg !537, !llvm.loop !572

93:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i8 1, metadata !523, metadata !DIExpression()) #8, !dbg !524
  %94 = load i32, i32* %42, align 4, !dbg !540, !tbaa !542
  %95 = icmp eq i32 %94, 0, !dbg !540
  br i1 %95, label %103, label %96, !dbg !544

96:                                               ; preds = %93
  %97 = load i32, i32* %43, align 4, !dbg !545, !tbaa !547
  %98 = sub i32 %94, %97, !dbg !548
  store i32 %98, i32* %42, align 4, !dbg !548, !tbaa !542
  %99 = tail call i32 @write(i32 %6, i8* nonnull %44, i32 %98) #7, !dbg !549
  %100 = icmp eq i32 %98, %99, !dbg !550
  call void @llvm.dbg.value(metadata i1 %100, metadata !523, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !524
  store i32 0, i32* %42, align 4, !dbg !551, !tbaa !542
  store i32 0, i32* %43, align 4, !dbg !552, !tbaa !547
  call void @llvm.dbg.value(metadata i8 undef, metadata !523, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !553, metadata !DIExpression()) #8, !dbg !556
  %101 = atomicrmw and i32* %40, i32 2147483647 seq_cst, !dbg !558
  br i1 %100, label %81, label %102, !dbg !559

102:                                              ; preds = %96
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !561
  tail call void @abort() #7, !dbg !561
  br label %81, !dbg !561

103:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i8 undef, metadata !523, metadata !DIExpression()) #8, !dbg !524
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %39, metadata !553, metadata !DIExpression()) #8, !dbg !564
  %104 = atomicrmw and i32* %40, i32 2147483647 seq_cst, !dbg !566
  br label %81, !dbg !559

105:                                              ; preds = %82, %52
  %106 = phi i32 [ %53, %52 ], [ %83, %82 ], !dbg !504
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %39, i32 0, i32 3, i32 %106, !dbg !573
  call void @llvm.dbg.value(metadata i8* %107, metadata !475, metadata !DIExpression()) #8, !dbg !476
  call void @llvm.dbg.value(metadata i8* %107, metadata !328, metadata !DIExpression()), !dbg !449
  %108 = icmp ugt i32 %38, 4096, !dbg !575
  br i1 %108, label %109, label %128, !dbg !577

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !578, metadata !DIExpression()) #8, !dbg !584
  call void @llvm.dbg.value(metadata i8* null, metadata !581, metadata !DIExpression()) #8, !dbg !584
  call void @llvm.dbg.value(metadata i8* null, metadata !582, metadata !DIExpression()) #8, !dbg !584
  %110 = tail call i8* @malloc(i32 1024) #7, !dbg !587
  %111 = icmp eq i8* %110, null, !dbg !592
  br i1 %111, label %114, label %112, !dbg !594

112:                                              ; preds = %109
  %113 = getelementptr inbounds i8, i8* %110, i32 1023, !dbg !595
  store i8 0, i8* %113, align 1, !dbg !597, !tbaa !598
  br label %114, !dbg !599

114:                                              ; preds = %109, %112
  %115 = phi i8* [ %113, %112 ], [ null, %109 ], !dbg !600
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !601, metadata !DIExpression()) #8, !dbg !605
  call void @llvm.dbg.value(metadata i32 %38, metadata !604, metadata !DIExpression()) #8, !dbg !605
  %116 = zext i32 %38 to i64, !dbg !607
  %117 = tail call i8* @halide_uint64_to_string(i8* %110, i8* %115, i64 %116, i32 1) #7, !dbg !608
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !609, metadata !DIExpression()) #8, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), metadata !612, metadata !DIExpression()) #8, !dbg !613
  %118 = tail call i8* @halide_string_to_string(i8* %117, i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7, !dbg !615
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !618, metadata !DIExpression()) #8, !dbg !621
  br i1 %111, label %119, label %120, !dbg !623

119:                                              ; preds = %114
  tail call void @halide_error(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !625
  br label %127, !dbg !628

120:                                              ; preds = %114
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !629, metadata !DIExpression()) #8, !dbg !632
  %121 = ptrtoint i8* %118 to i32, !dbg !635
  %122 = ptrtoint i8* %110 to i32, !dbg !635
  %123 = add i32 %121, 1, !dbg !635
  %124 = sub i32 %123, %122, !dbg !636
  %125 = sext i32 %124 to i64, !dbg !637
  %126 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* null, i8* nonnull %110, i64 %125) #7, !dbg !638
  tail call void @halide_print(i8* null, i8* nonnull %110) #7, !dbg !639
  br label %127

127:                                              ; preds = %120, %119
  tail call void @free(i8* %110) #7, !dbg !643
  br label %128, !dbg !646

128:                                              ; preds = %127, %105
  %129 = bitcast i8* %107 to i32*, !dbg !647
  store i32 %38, i32* %129, align 4, !dbg !648, !tbaa !649
  %130 = getelementptr inbounds i8, i8* %107, i32 4, !dbg !651
  %131 = bitcast i8* %130 to i32*, !dbg !651
  store i32 %5, i32* %131, align 4, !dbg !652, !tbaa !653
  %132 = getelementptr inbounds i8, i8* %107, i32 8, !dbg !654
  %133 = bitcast %struct.halide_type_t* %9 to i32*, !dbg !654
  %134 = bitcast i8* %132 to i32*, !dbg !654
  %135 = load i32, i32* %133, align 4, !dbg !654
  store i32 %135, i32* %134, align 4, !dbg !654
  %136 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 5, !dbg !655
  %137 = load i32, i32* %136, align 4, !dbg !655, !tbaa !656
  %138 = getelementptr inbounds i8, i8* %107, i32 12, !dbg !657
  %139 = bitcast i8* %138 to i32*, !dbg !657
  store i32 %137, i32* %139, align 4, !dbg !658, !tbaa !659
  %140 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 6, !dbg !660
  %141 = load i32, i32* %140, align 4, !dbg !660, !tbaa !661
  %142 = getelementptr inbounds i8, i8* %107, i32 16, !dbg !662
  %143 = bitcast i8* %142 to i32*, !dbg !662
  store i32 %141, i32* %143, align 4, !dbg !663, !tbaa !664
  %144 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 7, !dbg !665
  %145 = load i32, i32* %144, align 4, !dbg !665, !tbaa !666
  %146 = getelementptr inbounds i8, i8* %107, i32 20, !dbg !667
  %147 = bitcast i8* %146 to i32*, !dbg !667
  store i32 %145, i32* %147, align 4, !dbg !668, !tbaa !669
  %148 = load i32, i32* %19, align 4, !dbg !670, !tbaa !451
  %149 = getelementptr inbounds i8, i8* %107, i32 24, !dbg !671
  %150 = bitcast i8* %149 to i32*, !dbg !671
  store i32 %148, i32* %150, align 4, !dbg !672, !tbaa !673
  %151 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 2, !dbg !674
  %152 = load i32*, i32** %151, align 4, !dbg !674, !tbaa !676
  %153 = icmp eq i32* %152, null, !dbg !677
  br i1 %153, label %158, label %154, !dbg !678

154:                                              ; preds = %128
  %155 = bitcast i32* %152 to i8*, !dbg !678
  call void @llvm.dbg.value(metadata i8* %107, metadata !679, metadata !DIExpression()), !dbg !682
  %156 = getelementptr inbounds i8, i8* %107, i32 28, !dbg !685
  %157 = tail call i8* @memcpy(i8* nonnull %156, i8* nonnull %155, i32 %21) #7, !dbg !686
  br label %158, !dbg !687

158:                                              ; preds = %154, %128
  %159 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 1, !dbg !688
  %160 = load i8*, i8** %159, align 4, !dbg !688, !tbaa !690
  %161 = icmp eq i8* %160, null, !dbg !691
  br i1 %161, label %169, label %162, !dbg !692

162:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8* %107, metadata !693, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* %107, metadata !679, metadata !DIExpression()), !dbg !699
  %163 = getelementptr inbounds i8, i8* %107, i32 28, !dbg !701
  %164 = bitcast i8* %163 to i32*, !dbg !701
  %165 = load i32, i32* %150, align 4, !dbg !702, !tbaa !673
  %166 = getelementptr inbounds i32, i32* %164, i32 %165, !dbg !703
  %167 = bitcast i32* %166 to i8*, !dbg !704
  %168 = tail call i8* @memcpy(i8* nonnull %167, i8* nonnull %160, i32 %18) #7, !dbg !705
  br label %169, !dbg !706

169:                                              ; preds = %158, %162
  call void @llvm.dbg.value(metadata i8* %107, metadata !707, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %107, metadata !693, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i8* %107, metadata !679, metadata !DIExpression()), !dbg !714
  %170 = getelementptr inbounds i8, i8* %107, i32 28, !dbg !716
  %171 = bitcast i8* %170 to i32*, !dbg !716
  %172 = load i32, i32* %150, align 4, !dbg !717, !tbaa !673
  %173 = getelementptr inbounds i32, i32* %171, i32 %172, !dbg !718
  %174 = bitcast i32* %173 to i8*, !dbg !719
  %175 = getelementptr inbounds i8, i8* %107, i32 10, !dbg !720
  %176 = bitcast i8* %175 to i16*, !dbg !720
  %177 = load i16, i16* %176, align 2, !dbg !720, !tbaa !721
  %178 = zext i16 %177 to i32, !dbg !722
  call void @llvm.dbg.value(metadata i8* %107, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !723
  %179 = getelementptr inbounds i8, i8* %107, i32 9, !dbg !725
  %180 = load i8, i8* %179, align 1, !dbg !725, !tbaa !445
  %181 = zext i8 %180 to i32, !dbg !725
  %182 = add nuw nsw i32 %181, 7, !dbg !726
  %183 = lshr i32 %182, 3, !dbg !727
  %184 = mul nuw nsw i32 %183, %178, !dbg !728
  %185 = getelementptr inbounds i8, i8* %174, i32 %184, !dbg !729
  %186 = load i8*, i8** %22, align 4, !dbg !730, !tbaa !454
  %187 = tail call i8* @memcpy(i8* nonnull %185, i8* %186, i32 %25) #7, !dbg !731
  call void @llvm.dbg.value(metadata i8* %107, metadata !732, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata i8* %107, metadata !707, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i8* %107, metadata !693, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %107, metadata !679, metadata !DIExpression()), !dbg !742
  %188 = load i32, i32* %150, align 4, !dbg !744, !tbaa !673
  %189 = getelementptr inbounds i32, i32* %171, i32 %188, !dbg !745
  %190 = bitcast i32* %189 to i8*, !dbg !746
  %191 = load i16, i16* %176, align 2, !dbg !747, !tbaa !721
  %192 = zext i16 %191 to i32, !dbg !748
  call void @llvm.dbg.value(metadata i8* %107, metadata !438, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !749
  %193 = load i8, i8* %179, align 1, !dbg !751, !tbaa !445
  %194 = zext i8 %193 to i32, !dbg !751
  %195 = add nuw nsw i32 %194, 7, !dbg !752
  %196 = lshr i32 %195, 3, !dbg !753
  %197 = mul nuw nsw i32 %196, %192, !dbg !754
  %198 = getelementptr inbounds i8, i8* %190, i32 %197, !dbg !755
  call void @llvm.dbg.value(metadata i8* %198, metadata !735, metadata !DIExpression()), !dbg !736
  br label %199, !dbg !756

199:                                              ; preds = %199, %169
  %200 = phi i8* [ %198, %169 ], [ %201, %199 ], !dbg !736
  call void @llvm.dbg.value(metadata i8* %200, metadata !735, metadata !DIExpression()), !dbg !736
  %201 = getelementptr inbounds i8, i8* %200, i32 1, !dbg !757
  call void @llvm.dbg.value(metadata i8* %201, metadata !735, metadata !DIExpression()), !dbg !736
  %202 = load i8, i8* %200, align 1, !dbg !758, !tbaa !598
  %203 = icmp eq i8 %202, 0, !dbg !758
  br i1 %203, label %204, label %199, !dbg !756, !llvm.loop !759

204:                                              ; preds = %199
  %205 = load i8*, i8** %26, align 4, !dbg !761, !tbaa !458
  %206 = icmp eq i8* %205, null, !dbg !762
  %207 = select i1 %206, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* %205, !dbg !762
  %208 = tail call i8* @memcpy(i8* nonnull %201, i8* %207, i32 %33) #7, !dbg !763
  %209 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !dbg !764, !tbaa !468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %209, metadata !765, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i8* %107, metadata !768, metadata !DIExpression()), !dbg !769
  fence seq_cst, !dbg !771
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %209, metadata !512, metadata !DIExpression()), !dbg !772
  %210 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %209, i32 0, i32 0, i32 0, !dbg !774
  %211 = atomicrmw sub i32* %210, i32 1 seq_cst, !dbg !775
  %212 = load i32, i32* %136, align 4, !dbg !776, !tbaa !656
  %213 = icmp eq i32 %212, 9, !dbg !778
  br i1 %213, label %214, label %526, !dbg !779

214:                                              ; preds = %204
  %215 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !dbg !780, !tbaa !468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %215, metadata !518, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata i8* %0, metadata !521, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata i32 %6, metadata !522, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %215, metadata !527, metadata !DIExpression()) #8, !dbg !784
  %216 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 0, i32 0
  br label %217, !dbg !786

217:                                              ; preds = %217, %214
  %218 = atomicrmw or i32* %216, i32 1073741824 seq_cst, !dbg !787
  %219 = cmpxchg i32* %216, i32 1073741824, i32 -2147483648 seq_cst seq_cst, !dbg !788
  %220 = extractvalue { i32, i1 } %219, 1, !dbg !788
  br i1 %220, label %221, label %217, !dbg !789, !llvm.loop !790

221:                                              ; preds = %217
  call void @llvm.dbg.value(metadata i8 1, metadata !523, metadata !DIExpression()) #8, !dbg !782
  %222 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 1, !dbg !792
  %223 = load i32, i32* %222, align 4, !dbg !792, !tbaa !542
  %224 = icmp eq i32 %223, 0, !dbg !792
  br i1 %224, label %234, label %225, !dbg !793

225:                                              ; preds = %221
  %226 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 2, !dbg !794
  %227 = load i32, i32* %226, align 4, !dbg !794, !tbaa !547
  %228 = sub i32 %223, %227, !dbg !795
  store i32 %228, i32* %222, align 4, !dbg !795, !tbaa !542
  %229 = getelementptr inbounds %"class.Halide::Runtime::Internal::TraceBuffer", %"class.Halide::Runtime::Internal::TraceBuffer"* %215, i32 0, i32 3, i32 0, !dbg !796
  %230 = tail call i32 @write(i32 %6, i8* nonnull %229, i32 %228) #7, !dbg !797
  %231 = icmp eq i32 %228, %230, !dbg !798
  call void @llvm.dbg.value(metadata i1 %231, metadata !523, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !782
  store i32 0, i32* %222, align 4, !dbg !799, !tbaa !542
  store i32 0, i32* %226, align 4, !dbg !800, !tbaa !547
  call void @llvm.dbg.value(metadata i8 undef, metadata !523, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %215, metadata !553, metadata !DIExpression()) #8, !dbg !801
  %232 = atomicrmw and i32* %216, i32 2147483647 seq_cst, !dbg !803
  br i1 %231, label %526, label %233, !dbg !804

233:                                              ; preds = %225
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.32, i32 0, i32 0)) #7, !dbg !805
  tail call void @abort() #7, !dbg !805
  br label %526, !dbg !805

234:                                              ; preds = %221
  call void @llvm.dbg.value(metadata i8 undef, metadata !523, metadata !DIExpression()) #8, !dbg !782
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::TraceBuffer"* %215, metadata !553, metadata !DIExpression()) #8, !dbg !806
  %235 = atomicrmw and i32* %216, i32 2147483647 seq_cst, !dbg !808
  br label %526, !dbg !804

236:                                              ; preds = %2
  %237 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0, !dbg !809
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %237) #8, !dbg !809
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !329, metadata !DIExpression()), !dbg !810
  %238 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4 to i8*, !dbg !811
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %238) #8, !dbg !811
  call void @llvm.dbg.declare(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !334, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !813, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %0, metadata !816, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %237, metadata !817, metadata !DIExpression()), !dbg !819
  %239 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 3, !dbg !821
  store i8* %0, i8** %239, align 4, !dbg !821, !tbaa !822
  %240 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 4, !dbg !825
  store i8 0, i8* %240, align 4, !dbg !825, !tbaa !826
  %241 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 0, !dbg !827
  store i8* %237, i8** %241, align 4, !dbg !832
  %242 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 1, !dbg !833
  store i8* %237, i8** %242, align 4, !dbg !834, !tbaa !835
  %243 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 4095, !dbg !836
  %244 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 2, !dbg !839
  store i8* %243, i8** %244, align 4, !dbg !840, !tbaa !841
  store i8 0, i8* %243, align 1, !dbg !842, !tbaa !598
  call void @llvm.dbg.value(metadata i32 8, metadata !402, metadata !DIExpression()), !dbg !843
  %245 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 1
  %246 = load i8, i8* %245, align 1, !tbaa !844
  %247 = zext i8 %246 to i32
  br label %248, !dbg !845

248:                                              ; preds = %248, %236
  %249 = phi i32 [ 8, %236 ], [ %251, %248 ], !dbg !843
  call void @llvm.dbg.value(metadata i32 %249, metadata !402, metadata !DIExpression()), !dbg !843
  %250 = icmp slt i32 %249, %247, !dbg !846
  %251 = shl i32 %249, 1, !dbg !847
  call void @llvm.dbg.value(metadata i32 %251, metadata !402, metadata !DIExpression()), !dbg !843
  br i1 %250, label %248, label %252, !dbg !845, !llvm.loop !849

252:                                              ; preds = %248
  %253 = icmp slt i32 %249, 65, !dbg !851
  br i1 %253, label %257, label %254, !dbg !854

254:                                              ; preds = %252
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !855
  call void @abort() #7, !dbg !855
  %255 = load i8*, i8** %242, align 4, !dbg !857, !tbaa !835
  %256 = load i8*, i8** %244, align 4, !dbg !865, !tbaa !841
  br label %257, !dbg !855

257:                                              ; preds = %254, %252
  %258 = phi i8* [ %256, %254 ], [ %243, %252 ], !dbg !865
  %259 = phi i8* [ %255, %254 ], [ %237, %252 ], !dbg !857
  call void @llvm.dbg.declare(metadata [11 x i8*]* @__const.halide_default_trace.event_types, metadata !403, metadata !DIExpression()), !dbg !866
  %260 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 5, !dbg !867
  %261 = load i32, i32* %260, align 4, !dbg !867, !tbaa !656
  %262 = icmp slt i32 %261, 2, !dbg !868
  call void @llvm.dbg.value(metadata i1 %262, metadata !407, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !843
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !869
  call void @llvm.dbg.value(metadata i8* undef, metadata !863, metadata !DIExpression()) #8, !dbg !869
  %263 = getelementptr inbounds [11 x i8*], [11 x i8*]* @__const.halide_default_trace.event_types, i32 0, i32 %261, !dbg !870
  %264 = load i8*, i8** %263, align 4, !dbg !870, !tbaa !468
  call void @llvm.dbg.value(metadata i8* %264, metadata !863, metadata !DIExpression()) #8, !dbg !869
  %265 = call i8* @halide_string_to_string(i8* %259, i8* %258, i8* nonnull %264) #7, !dbg !871
  store i8* %265, i8** %242, align 4, !dbg !872, !tbaa !835
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !873
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !873
  %266 = load i8*, i8** %244, align 4, !dbg !875, !tbaa !841
  %267 = call i8* @halide_string_to_string(i8* %265, i8* %266, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #7, !dbg !876
  store i8* %267, i8** %242, align 4, !dbg !877, !tbaa !835
  %268 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 0, !dbg !878
  %269 = load i8*, i8** %268, align 4, !dbg !878, !tbaa !454
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !879
  call void @llvm.dbg.value(metadata i8* %269, metadata !863, metadata !DIExpression()) #8, !dbg !879
  %270 = icmp eq i8* %269, null, !dbg !881
  %271 = load i8*, i8** %244, align 4, !dbg !882, !tbaa !841
  br i1 %270, label %272, label %274, !dbg !883

272:                                              ; preds = %257
  %273 = call i8* @halide_string_to_string(i8* %267, i8* %271, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #7, !dbg !884
  br label %276, !dbg !886

274:                                              ; preds = %257
  %275 = call i8* @halide_string_to_string(i8* %267, i8* %271, i8* nonnull %269) #7, !dbg !887
  br label %276

276:                                              ; preds = %272, %274
  %277 = phi i8* [ %275, %274 ], [ %273, %272 ], !dbg !882
  store i8* %277, i8** %242, align 4, !dbg !882, !tbaa !835
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !888
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !888
  %278 = load i8*, i8** %244, align 4, !dbg !890, !tbaa !841
  %279 = call i8* @halide_string_to_string(i8* %277, i8* %278, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)) #7, !dbg !891
  store i8* %279, i8** %242, align 4, !dbg !892, !tbaa !835
  %280 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 7, !dbg !893
  %281 = load i32, i32* %280, align 4, !dbg !893, !tbaa !666
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !898
  call void @llvm.dbg.value(metadata i32 %281, metadata !897, metadata !DIExpression()) #8, !dbg !898
  %282 = load i8*, i8** %244, align 4, !dbg !900, !tbaa !841
  %283 = sext i32 %281 to i64, !dbg !901
  %284 = call i8* @halide_int64_to_string(i8* %279, i8* %282, i64 %283, i32 1) #7, !dbg !902
  store i8* %284, i8** %242, align 4, !dbg !903, !tbaa !835
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !904
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !904
  %285 = load i8*, i8** %244, align 4, !dbg !906, !tbaa !841
  %286 = call i8* @halide_string_to_string(i8* %284, i8* %285, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)) #7, !dbg !907
  store i8* %286, i8** %242, align 4, !dbg !908, !tbaa !835
  %287 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 4, i32 2, !dbg !909
  %288 = load i16, i16* %287, align 2, !dbg !909, !tbaa !427
  %289 = icmp ugt i16 %288, 1, !dbg !911
  br i1 %289, label %290, label %293, !dbg !912

290:                                              ; preds = %276
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !913
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !913
  %291 = load i8*, i8** %244, align 4, !dbg !916, !tbaa !841
  %292 = call i8* @halide_string_to_string(i8* %286, i8* %291, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #7, !dbg !917
  store i8* %292, i8** %242, align 4, !dbg !918, !tbaa !835
  br label %293, !dbg !919

293:                                              ; preds = %290, %276
  %294 = phi i8* [ %292, %290 ], [ %286, %276 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !920
  %295 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 8, !dbg !921
  %296 = load i32, i32* %295, align 4, !dbg !921, !tbaa !451
  %297 = icmp sgt i32 %296, 0, !dbg !923
  br i1 %297, label %298, label %307, !dbg !924

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 2
  call void @llvm.dbg.value(metadata i32 0, metadata !408, metadata !DIExpression()), !dbg !920
  %300 = load i32*, i32** %299, align 4, !dbg !925, !tbaa !676
  %301 = load i32, i32* %300, align 4, !dbg !927, !tbaa !928
  %302 = load i8*, i8** %244, align 4, !dbg !929, !tbaa !841
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !931
  call void @llvm.dbg.value(metadata i32 %301, metadata !897, metadata !DIExpression()) #8, !dbg !931
  %303 = sext i32 %301 to i64, !dbg !932
  %304 = call i8* @halide_int64_to_string(i8* %294, i8* %302, i64 %303, i32 1) #7, !dbg !933
  store i8* %304, i8** %242, align 4, !dbg !934, !tbaa !835
  call void @llvm.dbg.value(metadata i32 1, metadata !408, metadata !DIExpression()), !dbg !920
  %305 = load i32, i32* %295, align 4, !dbg !921, !tbaa !451
  %306 = icmp sgt i32 %305, 1, !dbg !923
  br i1 %306, label %314, label %307, !dbg !924

307:                                              ; preds = %324, %298, %293
  %308 = phi i8* [ %294, %293 ], [ %304, %298 ], [ %333, %324 ]
  %309 = load i16, i16* %287, align 2, !dbg !935, !tbaa !427
  %310 = icmp ugt i16 %309, 1, !dbg !937
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !938
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !941
  %311 = load i8*, i8** %244, align 4, !dbg !944, !tbaa !841
  %312 = select i1 %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), !dbg !945
  %313 = call i8* @halide_string_to_string(i8* %308, i8* %311, i8* nonnull %312) #7, !dbg !944
  store i8* %313, i8** %242, align 4, !dbg !944, !tbaa !835
  br i1 %262, label %337, label %466, !dbg !946

314:                                              ; preds = %298, %324
  %315 = phi i8* [ %333, %324 ], [ %304, %298 ]
  %316 = phi i32 [ %334, %324 ], [ 1, %298 ]
  call void @llvm.dbg.value(metadata i32 %316, metadata !408, metadata !DIExpression()), !dbg !920
  %317 = load i16, i16* %287, align 2, !dbg !947, !tbaa !427
  %318 = icmp ugt i16 %317, 1, !dbg !951
  br i1 %318, label %319, label %323, !dbg !952

319:                                              ; preds = %314
  %320 = zext i16 %317 to i32, !dbg !953
  %321 = urem i32 %316, %320, !dbg !954
  %322 = icmp eq i32 %321, 0, !dbg !955
  br i1 %322, label %324, label %323, !dbg !956

323:                                              ; preds = %319, %314
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !957
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !957
  br label %324

324:                                              ; preds = %319, %323
  %325 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %323 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %319 ]
  %326 = load i8*, i8** %244, align 4, !dbg !960, !tbaa !841
  %327 = call i8* @halide_string_to_string(i8* %315, i8* %326, i8* nonnull %325) #7, !dbg !960
  store i8* %327, i8** %242, align 4, !dbg !960, !tbaa !835
  %328 = load i32*, i32** %299, align 4, !dbg !925, !tbaa !676
  %329 = getelementptr inbounds i32, i32* %328, i32 %316, !dbg !927
  %330 = load i32, i32* %329, align 4, !dbg !927, !tbaa !928
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !931
  call void @llvm.dbg.value(metadata i32 %330, metadata !897, metadata !DIExpression()) #8, !dbg !931
  %331 = load i8*, i8** %244, align 4, !dbg !929, !tbaa !841
  %332 = sext i32 %330 to i64, !dbg !932
  %333 = call i8* @halide_int64_to_string(i8* %327, i8* %331, i64 %332, i32 1) #7, !dbg !933
  store i8* %333, i8** %242, align 4, !dbg !934, !tbaa !835
  %334 = add nuw nsw i32 %316, 1, !dbg !961
  call void @llvm.dbg.value(metadata i32 %334, metadata !408, metadata !DIExpression()), !dbg !920
  %335 = load i32, i32* %295, align 4, !dbg !921, !tbaa !451
  %336 = icmp slt i32 %334, %335, !dbg !923
  br i1 %336, label %314, label %307, !dbg !924, !llvm.loop !962

337:                                              ; preds = %307
  %338 = load i16, i16* %287, align 2, !dbg !965, !tbaa !427
  %339 = icmp ugt i16 %338, 1, !dbg !967
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !968
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !971
  %340 = load i8*, i8** %244, align 4, !dbg !974, !tbaa !841
  %341 = select i1 %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), !dbg !975
  %342 = call i8* @halide_string_to_string(i8* %313, i8* %340, i8* nonnull %341) #7, !dbg !974
  store i8* %342, i8** %242, align 4, !dbg !974, !tbaa !835
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()), !dbg !976
  %343 = load i16, i16* %287, align 2, !dbg !977, !tbaa !427
  %344 = icmp eq i16 %343, 0, !dbg !979
  br i1 %344, label %466, label %345, !dbg !980

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
  br label %357, !dbg !980

355:                                              ; preds = %457
  %356 = icmp ugt i16 %460, 1, !dbg !981
  br i1 %356, label %463, label %466, !dbg !983

357:                                              ; preds = %345, %457
  %358 = phi i8* [ %342, %345 ], [ %458, %457 ]
  %359 = phi i32 [ 0, %345 ], [ %459, %457 ]
  call void @llvm.dbg.value(metadata i32 %359, metadata !410, metadata !DIExpression()), !dbg !976
  %360 = icmp eq i32 %359, 0, !dbg !984
  br i1 %360, label %364, label %361, !dbg !987

361:                                              ; preds = %357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !988
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !988
  %362 = load i8*, i8** %244, align 4, !dbg !991, !tbaa !841
  %363 = call i8* @halide_string_to_string(i8* %358, i8* %362, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #7, !dbg !992
  store i8* %363, i8** %242, align 4, !dbg !993, !tbaa !835
  br label %364, !dbg !994

364:                                              ; preds = %361, %357
  %365 = phi i8* [ %363, %361 ], [ %358, %357 ]
  %366 = load i8, i8* %346, align 4, !dbg !995, !tbaa !997
  switch i8 %366, label %457 [
    i8 0, label %367
    i8 1, label %395
    i8 2, label %423
    i8 3, label %449
  ], !dbg !998

367:                                              ; preds = %364
  switch i32 %249, label %389 [
    i32 8, label %368
    i32 16, label %375
    i32 32, label %382
  ], !dbg !999

368:                                              ; preds = %367
  %369 = load i8*, i8** %347, align 4, !dbg !1001, !tbaa !690
  %370 = getelementptr inbounds i8, i8* %369, i32 %359, !dbg !1004
  %371 = load i8, i8* %370, align 1, !dbg !1004, !tbaa !598
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !1005
  call void @llvm.dbg.value(metadata i8 %371, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #8, !dbg !1005
  %372 = load i8*, i8** %244, align 4, !dbg !1007, !tbaa !841
  %373 = sext i8 %371 to i64, !dbg !1008
  %374 = call i8* @halide_int64_to_string(i8* %365, i8* %372, i64 %373, i32 1) #7, !dbg !1009
  br label %455, !dbg !1010

375:                                              ; preds = %367
  %376 = load i16*, i16** %350, align 4, !dbg !1011, !tbaa !690
  %377 = getelementptr inbounds i16, i16* %376, i32 %359, !dbg !1014
  %378 = load i16, i16* %377, align 2, !dbg !1014, !tbaa !1015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !1016
  call void @llvm.dbg.value(metadata i16 %378, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #8, !dbg !1016
  %379 = load i8*, i8** %244, align 4, !dbg !1018, !tbaa !841
  %380 = sext i16 %378 to i64, !dbg !1019
  %381 = call i8* @halide_int64_to_string(i8* %365, i8* %379, i64 %380, i32 1) #7, !dbg !1020
  br label %455, !dbg !1021

382:                                              ; preds = %367
  %383 = load i32*, i32** %353, align 4, !dbg !1022, !tbaa !690
  %384 = getelementptr inbounds i32, i32* %383, i32 %359, !dbg !1025
  %385 = load i32, i32* %384, align 4, !dbg !1025, !tbaa !928
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !1026
  call void @llvm.dbg.value(metadata i32 %385, metadata !897, metadata !DIExpression()) #8, !dbg !1026
  %386 = load i8*, i8** %244, align 4, !dbg !1028, !tbaa !841
  %387 = sext i32 %385 to i64, !dbg !1029
  %388 = call i8* @halide_int64_to_string(i8* %365, i8* %386, i64 %387, i32 1) #7, !dbg !1030
  br label %455, !dbg !1031

389:                                              ; preds = %367
  %390 = load i64*, i64** %354, align 4, !dbg !1032, !tbaa !690
  %391 = getelementptr inbounds i64, i64* %390, i32 %359, !dbg !1034
  %392 = load i64, i64* %391, align 8, !dbg !1034, !tbaa !1035
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1037, metadata !DIExpression()) #8, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %392, metadata !1040, metadata !DIExpression()) #8, !dbg !1041
  %393 = load i8*, i8** %244, align 4, !dbg !1043, !tbaa !841
  %394 = call i8* @halide_int64_to_string(i8* %365, i8* %393, i64 %392, i32 1) #7, !dbg !1044
  br label %455

395:                                              ; preds = %364
  switch i32 %249, label %417 [
    i32 8, label %396
    i32 16, label %403
    i32 32, label %410
  ], !dbg !1045

396:                                              ; preds = %395
  %397 = load i8*, i8** %347, align 4, !dbg !1048, !tbaa !690
  %398 = getelementptr inbounds i8, i8* %397, i32 %359, !dbg !1051
  %399 = load i8, i8* %398, align 1, !dbg !1051, !tbaa !598
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !1052
  call void @llvm.dbg.value(metadata i8 %399, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1052
  %400 = load i8*, i8** %244, align 4, !dbg !1054, !tbaa !841
  %401 = zext i8 %399 to i64, !dbg !1055
  %402 = call i8* @halide_int64_to_string(i8* %365, i8* %400, i64 %401, i32 1) #7, !dbg !1056
  br label %455, !dbg !1057

403:                                              ; preds = %395
  %404 = load i16*, i16** %350, align 4, !dbg !1058, !tbaa !690
  %405 = getelementptr inbounds i16, i16* %404, i32 %359, !dbg !1061
  %406 = load i16, i16* %405, align 2, !dbg !1061, !tbaa !1015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !894, metadata !DIExpression()) #8, !dbg !1062
  call void @llvm.dbg.value(metadata i16 %406, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !1062
  %407 = load i8*, i8** %244, align 4, !dbg !1064, !tbaa !841
  %408 = zext i16 %406 to i64, !dbg !1065
  %409 = call i8* @halide_int64_to_string(i8* %365, i8* %407, i64 %408, i32 1) #7, !dbg !1066
  br label %455, !dbg !1067

410:                                              ; preds = %395
  %411 = load i32*, i32** %353, align 4, !dbg !1068, !tbaa !690
  %412 = getelementptr inbounds i32, i32* %411, i32 %359, !dbg !1071
  %413 = load i32, i32* %412, align 4, !dbg !1071, !tbaa !928
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1072, metadata !DIExpression()) #8, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %413, metadata !1075, metadata !DIExpression()) #8, !dbg !1076
  %414 = load i8*, i8** %244, align 4, !dbg !1078, !tbaa !841
  %415 = zext i32 %413 to i64, !dbg !1079
  %416 = call i8* @halide_uint64_to_string(i8* %365, i8* %414, i64 %415, i32 1) #7, !dbg !1080
  br label %455, !dbg !1081

417:                                              ; preds = %395
  %418 = load i64*, i64** %354, align 4, !dbg !1082, !tbaa !690
  %419 = getelementptr inbounds i64, i64* %418, i32 %359, !dbg !1084
  %420 = load i64, i64* %419, align 8, !dbg !1084, !tbaa !1035
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1085, metadata !DIExpression()) #8, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %420, metadata !1088, metadata !DIExpression()) #8, !dbg !1089
  %421 = load i8*, i8** %244, align 4, !dbg !1091, !tbaa !841
  %422 = call i8* @halide_uint64_to_string(i8* %365, i8* %421, i64 %420, i32 1) #7, !dbg !1092
  br label %455

423:                                              ; preds = %364
  br i1 %349, label %425, label %424, !dbg !1093

424:                                              ; preds = %423
  call void @halide_print(i8* %0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.24, i32 0, i32 0)) #7, !dbg !1097
  call void @abort() #7, !dbg !1097
  br label %425, !dbg !1097

425:                                              ; preds = %424, %423
  switch i32 %249, label %442 [
    i32 32, label %426
    i32 16, label %434
  ], !dbg !1100

426:                                              ; preds = %425
  %427 = load float*, float** %351, align 4, !dbg !1101, !tbaa !690
  %428 = getelementptr inbounds float, float* %427, i32 %359, !dbg !1104
  %429 = load float, float* %428, align 4, !dbg !1104, !tbaa !1105
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1107, metadata !DIExpression()) #8, !dbg !1111
  call void @llvm.dbg.value(metadata float %429, metadata !1110, metadata !DIExpression()) #8, !dbg !1111
  %430 = load i8*, i8** %242, align 4, !dbg !1113, !tbaa !835
  %431 = load i8*, i8** %244, align 4, !dbg !1114, !tbaa !841
  %432 = fpext float %429 to double, !dbg !1115
  %433 = call i8* @halide_double_to_string(i8* %430, i8* %431, double %432, i32 0) #7, !dbg !1116
  br label %455, !dbg !1117

434:                                              ; preds = %425
  %435 = load i16*, i16** %350, align 4, !dbg !1118, !tbaa !690
  %436 = getelementptr inbounds i16, i16* %435, i32 %359, !dbg !1121
  %437 = load i16, i16* %436, align 2, !dbg !1121, !tbaa !1015
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1122, metadata !DIExpression()) #8, !dbg !1127
  call void @llvm.dbg.value(metadata i16 %437, metadata !1125, metadata !DIExpression()) #8, !dbg !1127
  %438 = call double @halide_float16_bits_to_double(i16 zeroext %437) #7, !dbg !1129
  call void @llvm.dbg.value(metadata double %438, metadata !1126, metadata !DIExpression()) #8, !dbg !1127
  %439 = load i8*, i8** %242, align 4, !dbg !1130, !tbaa !835
  %440 = load i8*, i8** %244, align 4, !dbg !1131, !tbaa !841
  %441 = call i8* @halide_double_to_string(i8* %439, i8* %440, double %438, i32 1) #7, !dbg !1132
  br label %455, !dbg !1133

442:                                              ; preds = %425
  %443 = load double*, double** %352, align 4, !dbg !1134, !tbaa !690
  %444 = getelementptr inbounds double, double* %443, i32 %359, !dbg !1136
  %445 = load double, double* %444, align 8, !dbg !1136, !tbaa !1137
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1139, metadata !DIExpression()) #8, !dbg !1143
  call void @llvm.dbg.value(metadata double %445, metadata !1142, metadata !DIExpression()) #8, !dbg !1143
  %446 = load i8*, i8** %242, align 4, !dbg !1145, !tbaa !835
  %447 = load i8*, i8** %244, align 4, !dbg !1146, !tbaa !841
  %448 = call i8* @halide_double_to_string(i8* %446, i8* %447, double %445, i32 1) #7, !dbg !1147
  br label %455

449:                                              ; preds = %364
  %450 = load i8**, i8*** %348, align 4, !dbg !1148, !tbaa !690
  %451 = getelementptr inbounds i8*, i8** %450, i32 %359, !dbg !1151
  %452 = load i8*, i8** %451, align 4, !dbg !1151, !tbaa !468
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1152, metadata !DIExpression()) #8, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %452, metadata !1155, metadata !DIExpression()) #8, !dbg !1156
  %453 = load i8*, i8** %244, align 4, !dbg !1158, !tbaa !841
  %454 = call i8* @halide_pointer_to_string(i8* %365, i8* %453, i8* %452) #7, !dbg !1159
  br label %455, !dbg !1160

455:                                              ; preds = %403, %417, %410, %396, %449, %426, %442, %434, %368, %382, %389, %375
  %456 = phi i8* [ %381, %375 ], [ %394, %389 ], [ %388, %382 ], [ %374, %368 ], [ %441, %434 ], [ %448, %442 ], [ %433, %426 ], [ %454, %449 ], [ %402, %396 ], [ %416, %410 ], [ %422, %417 ], [ %409, %403 ]
  store i8* %456, i8** %242, align 4, !dbg !1161, !tbaa !835
  br label %457, !dbg !1162

457:                                              ; preds = %455, %364
  %458 = phi i8* [ %365, %364 ], [ %456, %455 ]
  %459 = add nuw nsw i32 %359, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %459, metadata !410, metadata !DIExpression()), !dbg !976
  %460 = load i16, i16* %287, align 2, !dbg !977, !tbaa !427
  %461 = zext i16 %460 to i32, !dbg !1163
  %462 = icmp ult i32 %459, %461, !dbg !979
  br i1 %462, label %357, label %355, !dbg !980, !llvm.loop !1164

463:                                              ; preds = %355
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !1166
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !1166
  %464 = load i8*, i8** %244, align 4, !dbg !1169, !tbaa !841
  %465 = call i8* @halide_string_to_string(i8* %458, i8* %464, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)) #7, !dbg !1170
  store i8* %465, i8** %242, align 4, !dbg !1171, !tbaa !835
  br label %466, !dbg !1172

466:                                              ; preds = %337, %355, %463, %307
  %467 = phi i8* [ %458, %355 ], [ %465, %463 ], [ %313, %307 ], [ %342, %337 ]
  %468 = getelementptr inbounds %struct.halide_trace_event_t, %struct.halide_trace_event_t* %1, i32 0, i32 3, !dbg !1173
  %469 = load i8*, i8** %468, align 4, !dbg !1173, !tbaa !458
  %470 = icmp eq i8* %469, null, !dbg !1175
  br i1 %470, label %488, label %471, !dbg !1176

471:                                              ; preds = %466
  %472 = load i8, i8* %469, align 1, !dbg !1177, !tbaa !598
  %473 = icmp eq i8 %472, 0, !dbg !1177
  br i1 %473, label %488, label %474, !dbg !1178

474:                                              ; preds = %471
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !1179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !1179
  %475 = load i8*, i8** %244, align 4, !dbg !1182, !tbaa !841
  %476 = call i8* @halide_string_to_string(i8* %467, i8* %475, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)) #7, !dbg !1183
  store i8* %476, i8** %242, align 4, !dbg !1184, !tbaa !835
  %477 = load i8*, i8** %468, align 4, !dbg !1185, !tbaa !458
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %477, metadata !863, metadata !DIExpression()) #8, !dbg !1186
  %478 = icmp eq i8* %477, null, !dbg !1188
  %479 = load i8*, i8** %244, align 4, !dbg !1189, !tbaa !841
  br i1 %478, label %480, label %482, !dbg !1190

480:                                              ; preds = %474
  %481 = call i8* @halide_string_to_string(i8* %476, i8* %479, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0)) #7, !dbg !1191
  br label %484, !dbg !1192

482:                                              ; preds = %474
  %483 = call i8* @halide_string_to_string(i8* %476, i8* %479, i8* nonnull %477) #7, !dbg !1193
  br label %484

484:                                              ; preds = %480, %482
  %485 = phi i8* [ %483, %482 ], [ %481, %480 ], !dbg !1189
  store i8* %485, i8** %242, align 4, !dbg !1189, !tbaa !835
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !1194
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !1194
  %486 = load i8*, i8** %244, align 4, !dbg !1196, !tbaa !841
  %487 = call i8* @halide_string_to_string(i8* %485, i8* %486, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)) #7, !dbg !1197
  store i8* %487, i8** %242, align 4, !dbg !1198, !tbaa !835
  br label %488, !dbg !1199

488:                                              ; preds = %484, %471, %466
  %489 = phi i8* [ %487, %484 ], [ %467, %471 ], [ %467, %466 ], !dbg !1200
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !862, metadata !DIExpression()) #8, !dbg !1202
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), metadata !863, metadata !DIExpression()) #8, !dbg !1202
  %490 = load i8*, i8** %244, align 4, !dbg !1203, !tbaa !841
  %491 = call i8* @halide_string_to_string(i8* %489, i8* %490, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #7, !dbg !1204
  store i8* %491, i8** %242, align 4, !dbg !1205, !tbaa !835
  %492 = load i8*, i8** %241, align 4, !dbg !1206, !tbaa !1207
  %493 = load i8*, i8** %239, align 4, !dbg !1206, !tbaa !822
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1208, metadata !DIExpression()) #8, !dbg !1211
  %494 = ptrtoint i8* %491 to i32, !dbg !1213
  %495 = ptrtoint i8* %492 to i32, !dbg !1213
  %496 = add i32 %494, 1, !dbg !1213
  %497 = sub i32 %496, %495, !dbg !1214
  %498 = sext i32 %497 to i64, !dbg !1215
  %499 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %493, i8* %492, i64 %498) #7, !dbg !1216
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1217, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !1220, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !414, metadata !DIExpression()), !dbg !1224
  br label %500, !dbg !1225

500:                                              ; preds = %500, %488
  %501 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire, !dbg !1227
  %502 = icmp eq i8 %501, 0, !dbg !1227
  br i1 %502, label %503, label %500, !dbg !1225, !llvm.loop !1228

503:                                              ; preds = %500
  call void @halide_print(i8* %0, i8* nonnull %237) #7, !dbg !1230
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1231, metadata !DIExpression()), !dbg !1234
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1, !dbg !1236
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, metadata !1238, metadata !DIExpression()) #8, !dbg !1241
  %504 = load i8*, i8** %241, align 4, !dbg !1243, !tbaa !1207
  %505 = icmp eq i8* %504, null, !dbg !1243
  br i1 %505, label %506, label %508, !dbg !1246

506:                                              ; preds = %503
  %507 = load i8*, i8** %239, align 4, !dbg !1247, !tbaa !822
  call void @halide_error(i8* %507, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)) #7, !dbg !1249
  br label %517, !dbg !1250

508:                                              ; preds = %503
  %509 = load i8*, i8** %242, align 4, !dbg !1251, !tbaa !835
  %510 = load i8*, i8** %239, align 4, !dbg !1251, !tbaa !822
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !1208, metadata !DIExpression()) #8, !dbg !1253
  %511 = ptrtoint i8* %509 to i32, !dbg !1255
  %512 = ptrtoint i8* %504 to i32, !dbg !1255
  %513 = sub i32 1, %512, !dbg !1255
  %514 = add i32 %513, %511, !dbg !1256
  %515 = sext i32 %514 to i64, !dbg !1257
  %516 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %510, i8* nonnull %504, i64 %515) #7, !dbg !1258
  br label %517

517:                                              ; preds = %508, %506
  %518 = load i8, i8* %240, align 4, !dbg !1259, !tbaa !826, !range !1261
  %519 = icmp eq i8 %518, 0, !dbg !1259
  br i1 %519, label %525, label %520, !dbg !1262

520:                                              ; preds = %517
  %521 = load i8*, i8** %241, align 4, !dbg !1263, !tbaa !1207
  %522 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* %4, i32 0, i32 5, i32 0, !dbg !1264
  %523 = icmp eq i8* %521, %522, !dbg !1265
  br i1 %523, label %525, label %524, !dbg !1266

524:                                              ; preds = %520
  call void @free(i8* %521) #7, !dbg !1267
  br label %525, !dbg !1269

525:                                              ; preds = %517, %520, %524
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %238) #8, !dbg !1270
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %237) #8, !dbg !1270
  br label %526

526:                                              ; preds = %234, %233, %225, %204, %525
  ret i32 %5, !dbg !1271
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_get_trace_file(i8* %0) local_unnamed_addr #0 !dbg !1272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1276, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1217, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !1220, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, metadata !1277, metadata !DIExpression()), !dbg !1284
  br label %2, !dbg !1287

2:                                                ; preds = %2, %1
  %3 = atomicrmw volatile xchg i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, i8 1 acquire, !dbg !1288
  %4 = icmp eq i8 %3, 0, !dbg !1288
  br i1 %4, label %5, label %2, !dbg !1287, !llvm.loop !1289

5:                                                ; preds = %2
  %6 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1291, !tbaa !928
  %7 = icmp slt i32 %6, 0, !dbg !1292
  br i1 %7, label %8, label %27, !dbg !1293

8:                                                ; preds = %5
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)) #7, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %9, metadata !1278, metadata !DIExpression()), !dbg !1295
  %10 = icmp eq i8* %9, null, !dbg !1296
  br i1 %10, label %26, label %11, !dbg !1297

11:                                               ; preds = %8
  %12 = tail call i8* @fopen(i8* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #7, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %12, metadata !1281, metadata !DIExpression()), !dbg !1299
  %13 = icmp eq i8* %12, null, !dbg !1300
  br i1 %13, label %14, label %15, !dbg !1303

14:                                               ; preds = %11
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.30, i32 0, i32 0)) #7, !dbg !1304
  tail call void @abort() #7, !dbg !1304
  br label %15, !dbg !1304

15:                                               ; preds = %14, %11
  %16 = tail call i32 @fileno(i8* %12) #7, !dbg !1306
  tail call void @halide_set_trace_file(i32 %16) #6, !dbg !1307
  store i8* %12, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 4, !dbg !1308, !tbaa !468
  %17 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !dbg !1309, !tbaa !468
  %18 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %17, null, !dbg !1309
  br i1 %18, label %19, label %27, !dbg !1311

19:                                               ; preds = %15
  %20 = tail call i8* @malloc(i32 1048588) #7, !dbg !1312
  store i8* %20, i8** bitcast (%"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE to i8**), align 4, !dbg !1314, !tbaa !468
  call void @llvm.dbg.value(metadata i8* %20, metadata !1315, metadata !DIExpression()), !dbg !1318
  %21 = getelementptr inbounds i8, i8* %20, i32 4, !dbg !1320
  %22 = bitcast i8* %21 to i32*, !dbg !1320
  store i32 0, i32* %22, align 4, !dbg !1321, !tbaa !542
  %23 = getelementptr inbounds i8, i8* %20, i32 8, !dbg !1322
  %24 = bitcast i8* %23 to i32*, !dbg !1322
  store i32 0, i32* %24, align 4, !dbg !1323, !tbaa !547
  call void @llvm.dbg.value(metadata i8* %20, metadata !1324, metadata !DIExpression()), !dbg !1327
  %25 = bitcast i8* %20 to i32*, !dbg !1329
  store volatile i32 0, i32* %25, align 4, !dbg !1330, !tbaa !494
  br label %27, !dbg !1331

26:                                               ; preds = %8
  tail call void @halide_set_trace_file(i32 0) #6, !dbg !1332
  br label %27

27:                                               ; preds = %26, %19, %15, %5
  %28 = load i32, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1334, !tbaa !928
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedSpinLock"* undef, metadata !1231, metadata !DIExpression()), !dbg !1335
  store atomic volatile i8 0, i8* @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE release, align 1, !dbg !1337
  ret i32 %28, !dbg !1338
}

declare !dbg !1339 dso_local i32 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !1343 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

declare !dbg !1346 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !1349 dso_local void @abort() local_unnamed_addr #3

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i32 (i8*, %struct.halide_trace_event_t*)* @halide_set_custom_trace(i32 (i8*, %struct.halide_trace_event_t*)* %0) local_unnamed_addr #4 !dbg !1352 {
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.halide_trace_event_t*)* %0, metadata !1356, metadata !DIExpression()), !dbg !1358
  %2 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 4, !dbg !1359, !tbaa !468
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.halide_trace_event_t*)* %2, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i32 (i8*, %struct.halide_trace_event_t*)* %0, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 4, !dbg !1360, !tbaa !468
  ret i32 (i8*, %struct.halide_trace_event_t*)* %2, !dbg !1361
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void @halide_set_trace_file(i32 %0) local_unnamed_addr #4 !dbg !1362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1366, metadata !DIExpression()), !dbg !1367
  store i32 %0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1368, !tbaa !928
  ret void, !dbg !1369
}

declare !dbg !1370 dso_local i8* @getenv(i8*) local_unnamed_addr #3

declare !dbg !1373 dso_local i8* @fopen(i8*, i8*) local_unnamed_addr #3

declare !dbg !1376 dso_local i32 @fileno(i8*) local_unnamed_addr #3

declare !dbg !1377 dso_local i8* @malloc(i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_trace(i8* %0, %struct.halide_trace_event_t* %1) local_unnamed_addr #5 !dbg !1380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.halide_trace_event_t* %1, metadata !1383, metadata !DIExpression()), !dbg !1384
  %3 = load i32 (i8*, %struct.halide_trace_event_t*)*, i32 (i8*, %struct.halide_trace_event_t*)** @_ZN6Halide7Runtime8Internal19halide_custom_traceE, align 4, !dbg !1385, !tbaa !468
  %4 = tail call i32 %3(i8* %0, %struct.halide_trace_event_t* %1) #7, !dbg !1386
  ret i32 %4, !dbg !1387
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_shutdown_trace() local_unnamed_addr #5 !dbg !1388 {
  %1 = load i8*, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 4, !dbg !1395, !tbaa !468
  %2 = icmp eq i8* %1, null, !dbg !1395
  br i1 %2, label %9, label %3, !dbg !1396

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(i8* nonnull %1) #7, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %4, metadata !1392, metadata !DIExpression()), !dbg !1398
  store i32 0, i32* @_ZN6Halide7Runtime8Internal17halide_trace_fileE, align 4, !dbg !1399, !tbaa !928
  store i8 0, i8* @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, align 1, !dbg !1400, !tbaa !1401
  store i8* null, i8** @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, align 4, !dbg !1402, !tbaa !468
  %5 = load %"class.Halide::Runtime::Internal::TraceBuffer"*, %"class.Halide::Runtime::Internal::TraceBuffer"** @_ZN6Halide7Runtime8Internal19halide_trace_bufferE, align 4, !dbg !1403, !tbaa !468
  %6 = icmp eq %"class.Halide::Runtime::Internal::TraceBuffer"* %5, null, !dbg !1403
  br i1 %6, label %9, label %7, !dbg !1405

7:                                                ; preds = %3
  %8 = bitcast %"class.Halide::Runtime::Internal::TraceBuffer"* %5 to i8*, !dbg !1406
  tail call void @free(i8* nonnull %8) #7, !dbg !1408
  br label %9, !dbg !1409

9:                                                ; preds = %0, %3, %7
  %10 = phi i32 [ %4, %7 ], [ %4, %3 ], [ 0, %0 ], !dbg !1410
  ret i32 %10, !dbg !1411
}

declare !dbg !1412 dso_local i32 @fclose(i8*) local_unnamed_addr #3

declare !dbg !1413 dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_trace_cleanup() #5 !dbg !1416 {
  %1 = tail call i32 @halide_shutdown_trace() #6, !dbg !1418
  ret void, !dbg !1419
}

declare !dbg !1420 dso_local i32 @write(i32, i8*, i32) local_unnamed_addr #3

declare !dbg !1423 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !1424 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #3

declare !dbg !1427 extern_weak dso_local i8* @halide_uint64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !1430 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !1433 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

declare !dbg !1436 extern_weak dso_local i8* @halide_double_to_string(i8*, i8*, double, i32) local_unnamed_addr #3

declare !dbg !1439 dso_local double @halide_float16_bits_to_double(i16 zeroext) local_unnamed_addr #3

declare !dbg !1442 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

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
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
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
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
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
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DISubprogram(name: "halide_type_t", scope: !50, file: !43, line: 459, type: !70, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !68}
!72 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !50, file: !43, line: 463, type: !73, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{!50, !75, !63}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!77 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !50, file: !43, line: 468, type: !78, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !75, !81}
!80 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!81 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !76, size: 32)
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
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DISubprogram(name: "coordinates", linkageName: "_ZNK21halide_trace_packet_t11coordinatesEv", scope: !42, file: !43, line: 627, type: !112, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!118 = !DISubprogram(name: "coordinates", linkageName: "_ZN21halide_trace_packet_t11coordinatesEv", scope: !42, file: !43, line: 631, type: !119, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !110}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!122 = !DISubprogram(name: "value", linkageName: "_ZNK21halide_trace_packet_t5valueEv", scope: !42, file: !43, line: 638, type: !123, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !116}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!127 = !DISubprogram(name: "value", linkageName: "_ZN21halide_trace_packet_t5valueEv", scope: !42, file: !43, line: 642, type: !128, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !110}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!131 = !DISubprogram(name: "func", linkageName: "_ZNK21halide_trace_packet_t4funcEv", scope: !42, file: !43, line: 648, type: !132, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !116}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!137 = !DISubprogram(name: "func", linkageName: "_ZN21halide_trace_packet_t4funcEv", scope: !42, file: !43, line: 652, type: !138, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !110}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!141 = !DISubprogram(name: "trace_tag", linkageName: "_ZNK21halide_trace_packet_t9trace_tagEv", scope: !42, file: !43, line: 659, type: !132, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DISubprogram(name: "trace_tag", linkageName: "_ZN21halide_trace_packet_t9trace_tagEv", scope: !42, file: !43, line: 668, type: !138, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedSpinLock", scope: !2, file: !162, line: 9, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !164, identifier: "_ZTSN6Halide7Runtime8Internal14ScopedSpinLockE")
!164 = !{!165, !169, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !163, file: !162, line: 13, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!169 = !DISubprogram(name: "ScopedSpinLock", scope: !163, file: !162, line: 15, type: !170, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !172, !167}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_trace_event_t", file: !43, line: 505, size: 288, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !188, identifier: "_ZTS20halide_trace_event_t")
!188 = !{!189, !190, !191, !193, !194, !195, !196, !197, !198, !199}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !187, file: !43, line: 507, baseType: !134, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !187, file: !43, line: 513, baseType: !130, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "coordinates", scope: !187, file: !43, line: 525, baseType: !192, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "trace_tag", scope: !187, file: !43, line: 530, baseType: !134, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !187, file: !43, line: 534, baseType: !50, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !187, file: !43, line: 537, baseType: !91, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent_id", scope: !187, file: !43, line: 541, baseType: !47, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value_index", scope: !187, file: !43, line: 545, baseType: !47, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !187, file: !43, line: 548, baseType: !47, size: 32, offset: 256)
!199 = !DISubprogram(name: "halide_trace_event_t", scope: !187, file: !43, line: 553, type: !200, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!203 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !204, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205, retainedTypes: !206, globals: !305, imports: !312, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/tracing.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!205 = !{!54, !91}
!206 = !{!14, !207, !130, !140, !291, !294, !192, !297, !298, !299, !300, !301, !302, !303, !304, !134, !6, !41, !121, !10}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "print", scope: !209, file: !208, line: 198, baseType: !210)
!208 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!209 = !DINamespace(scope: !2)
!210 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !209, file: !208, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !211, templateParams: !288)
!211 = !{!212, !213, !214, !215, !216, !217, !221, !225, !229, !234, !237, !242, !245, !249, !253, !256, !260, !263, !270, !273, !276, !281, !282, !285, !286, !287}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !210, file: !208, line: 32, baseType: !140, size: 32, flags: DIFlagPublic)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !210, file: !208, line: 32, baseType: !140, size: 32, offset: 32, flags: DIFlagPublic)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !210, file: !208, line: 32, baseType: !140, size: 32, offset: 64, flags: DIFlagPublic)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !210, file: !208, line: 33, baseType: !130, size: 32, offset: 96, flags: DIFlagPublic)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !210, file: !208, line: 34, baseType: !80, size: 8, offset: 128, flags: DIFlagPublic)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !210, file: !208, line: 35, baseType: !218, size: 8, offset: 136, flags: DIFlagPublic)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 8, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 1)
!221 = !DISubprogram(name: "Printer", scope: !210, file: !208, line: 37, type: !222, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !130, !140}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!225 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !210, file: !208, line: 57, type: !226, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !224, !134}
!228 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !210, size: 32)
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
!266 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !43, line: 1550, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !43, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!270 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !210, file: !208, line: 119, type: !271, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!134, !224}
!273 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !210, file: !208, line: 131, type: !274, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !224}
!276 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !210, file: !208, line: 139, type: !277, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!240, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !15, line: 15, baseType: !293)
!293 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !15, line: 13, baseType: !296)
!296 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!305 = !{!0, !157, !159, !176, !178, !180, !306, !310}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "halide_custom_trace", linkageName: "_ZN6Halide7Runtime8Internal19halide_custom_traceE", scope: !2, file: !5, line: 327, type: !308, isLocal: false, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_fn", file: !5, line: 7, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
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
!335 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<2, 4096>", scope: !209, file: !208, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !336, templateParams: !399)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !347, !351, !354, !357, !360, !363, !366, !369, !372, !375, !378, !381, !384, !387, !392, !393, !396, !397, !398}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !335, file: !208, line: 32, baseType: !140, size: 32, flags: DIFlagPublic)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !335, file: !208, line: 32, baseType: !140, size: 32, offset: 32, flags: DIFlagPublic)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !335, file: !208, line: 32, baseType: !140, size: 32, offset: 64, flags: DIFlagPublic)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !335, file: !208, line: 33, baseType: !130, size: 32, offset: 96, flags: DIFlagPublic)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !335, file: !208, line: 34, baseType: !80, size: 8, offset: 128, flags: DIFlagPublic)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !335, file: !208, line: 35, baseType: !218, size: 8, offset: 136, flags: DIFlagPublic)
!343 = !DISubprogram(name: "Printer", scope: !335, file: !208, line: 37, type: !344, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !130, !140}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!347 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKc", scope: !335, file: !208, line: 57, type: !348, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !346, !134}
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !335, size: 32)
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
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 352, elements: !405)
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
!427 = !{!428, !434, i64 18}
!428 = !{!"_ZTS20halide_trace_event_t", !429, i64 0, !429, i64 4, !429, i64 8, !429, i64 12, !432, i64 16, !435, i64 20, !436, i64 24, !436, i64 28, !436, i64 32}
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
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32)
!442 = !DILocation(line: 0, scope: !439, inlinedAt: !443)
!443 = distinct !DILocation(line: 169, column: 67, scope: !320)
!444 = !DILocation(line: 482, column: 17, scope: !439, inlinedAt: !443)
!445 = !{!432, !430, i64 1}
!446 = !DILocation(line: 482, column: 22, scope: !439, inlinedAt: !443)
!447 = !DILocation(line: 482, column: 27, scope: !439, inlinedAt: !443)
!448 = !DILocation(line: 169, column: 57, scope: !320)
!449 = !DILocation(line: 0, scope: !320)
!450 = !DILocation(line: 171, column: 36, scope: !320)
!451 = !{!428, !436, i64 32}
!452 = !DILocation(line: 171, column: 47, scope: !320)
!453 = !DILocation(line: 172, column: 41, scope: !320)
!454 = !{!428, !429, i64 0}
!455 = !DILocation(line: 172, column: 31, scope: !320)
!456 = !DILocation(line: 172, column: 47, scope: !320)
!457 = !DILocation(line: 173, column: 39, scope: !320)
!458 = !{!428, !429, i64 12}
!459 = !DILocation(line: 173, column: 36, scope: !320)
!460 = !DILocation(line: 173, column: 52, scope: !320)
!461 = !DILocation(line: 173, column: 73, scope: !320)
!462 = !DILocation(line: 174, column: 74, scope: !320)
!463 = !DILocation(line: 174, column: 89, scope: !320)
!464 = !DILocation(line: 174, column: 102, scope: !320)
!465 = !DILocation(line: 175, column: 59, scope: !320)
!466 = !DILocation(line: 175, column: 64, scope: !320)
!467 = !DILocation(line: 178, column: 41, scope: !320)
!468 = !{!429, !429, i64 0}
!469 = !DILocalVariable(name: "this", arg: 1, scope: !470, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!470 = distinct !DISubprogram(name: "acquire_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer14acquire_packetEPvij", scope: !7, file: !5, line: 123, type: !148, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !147, retainedNodes: !471)
!471 = !{!469, !472, !473, !474, !475}
!472 = !DILocalVariable(name: "user_context", arg: 2, scope: !470, file: !5, line: 123, type: !130)
!473 = !DILocalVariable(name: "fd", arg: 3, scope: !470, file: !5, line: 123, type: !48)
!474 = !DILocalVariable(name: "size", arg: 4, scope: !470, file: !5, line: 123, type: !14)
!475 = !DILocalVariable(name: "packet", scope: !470, file: !5, line: 124, type: !41)
!476 = !DILocation(line: 0, scope: !470, inlinedAt: !477)
!477 = distinct !DILocation(line: 178, column: 62, scope: !320)
!478 = !DILocation(line: 125, column: 9, scope: !470, inlinedAt: !477)
!479 = !DILocation(line: 41, column: 26, scope: !480, inlinedAt: !486)
!480 = distinct !DILexicalBlock(scope: !481, file: !5, line: 40, column: 22)
!481 = distinct !DISubprogram(name: "acquire_shared", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock14acquire_sharedEv", scope: !10, file: !5, line: 39, type: !22, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !21, retainedNodes: !482)
!482 = !{!483, !485}
!483 = !DILocalVariable(name: "this", arg: 1, scope: !481, type: !484, flags: DIFlagArtificial | DIFlagObjectPointer)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!485 = !DILocalVariable(name: "x", scope: !480, file: !5, line: 41, type: !14)
!486 = distinct !DILocation(line: 86, column: 14, scope: !487, inlinedAt: !493)
!487 = distinct !DISubprogram(name: "try_acquire_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer18try_acquire_packetEPvj", scope: !7, file: !5, line: 85, type: !39, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !38, retainedNodes: !488)
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(name: "this", arg: 1, scope: !487, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!490 = !DILocalVariable(name: "user_context", arg: 2, scope: !487, file: !5, line: 85, type: !130)
!491 = !DILocalVariable(name: "size", arg: 3, scope: !487, file: !5, line: 85, type: !14)
!492 = !DILocalVariable(name: "my_cursor", scope: !487, file: !5, line: 88, type: !14)
!493 = distinct !DILocation(line: 125, column: 27, scope: !470, inlinedAt: !477)
!494 = !{!495, !436, i64 0}
!495 = !{!"_ZTSN6Halide7Runtime8Internal23SharedExclusiveSpinLockE", !436, i64 0}
!496 = !DILocation(line: 41, column: 31, scope: !480, inlinedAt: !486)
!497 = !DILocation(line: 0, scope: !480, inlinedAt: !486)
!498 = !DILocation(line: 42, column: 58, scope: !499, inlinedAt: !486)
!499 = distinct !DILexicalBlock(scope: !480, file: !5, line: 42, column: 17)
!500 = !DILocation(line: 42, column: 17, scope: !499, inlinedAt: !486)
!501 = distinct !{!501, !478, !502, !503}
!502 = !DILocation(line: 128, column: 9, scope: !470, inlinedAt: !477)
!503 = !{!"llvm.loop.mustprogress"}
!504 = !DILocation(line: 88, column: 30, scope: !487, inlinedAt: !493)
!505 = !DILocation(line: 0, scope: !487, inlinedAt: !493)
!506 = !DILocation(line: 89, column: 23, scope: !507, inlinedAt: !493)
!507 = distinct !DILexicalBlock(scope: !487, file: !5, line: 89, column: 13)
!508 = !DILocation(line: 89, column: 30, scope: !507, inlinedAt: !493)
!509 = !DILocation(line: 89, column: 13, scope: !487, inlinedAt: !493)
!510 = !DILocation(line: 94, column: 13, scope: !511, inlinedAt: !493)
!511 = distinct !DILexicalBlock(scope: !507, file: !5, line: 89, column: 45)
!512 = !DILocalVariable(name: "this", arg: 1, scope: !513, type: !484, flags: DIFlagArtificial | DIFlagObjectPointer)
!513 = distinct !DISubprogram(name: "release_shared", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock14release_sharedEv", scope: !10, file: !5, line: 48, type: !22, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !25, retainedNodes: !514)
!514 = !{!512}
!515 = !DILocation(line: 0, scope: !513, inlinedAt: !516)
!516 = distinct !DILocation(line: 95, column: 18, scope: !511, inlinedAt: !493)
!517 = !DILocation(line: 49, column: 9, scope: !513, inlinedAt: !516)
!518 = !DILocalVariable(name: "this", arg: 1, scope: !519, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!519 = distinct !DISubprogram(name: "flush", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer5flushEPvi", scope: !7, file: !5, line: 105, type: !145, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !144, retainedNodes: !520)
!520 = !{!518, !521, !522, !523}
!521 = !DILocalVariable(name: "user_context", arg: 2, scope: !519, file: !5, line: 105, type: !130)
!522 = !DILocalVariable(name: "fd", arg: 3, scope: !519, file: !5, line: 105, type: !48)
!523 = !DILocalVariable(name: "success", scope: !519, file: !5, line: 107, type: !80)
!524 = !DILocation(line: 0, scope: !519, inlinedAt: !525)
!525 = distinct !DILocation(line: 127, column: 13, scope: !526, inlinedAt: !477)
!526 = distinct !DILexicalBlock(scope: !470, file: !5, line: 125, column: 68)
!527 = !DILocalVariable(name: "this", arg: 1, scope: !528, type: !484, flags: DIFlagArtificial | DIFlagObjectPointer)
!528 = distinct !DISubprogram(name: "acquire_exclusive", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock17acquire_exclusiveEv", scope: !10, file: !5, line: 52, type: !22, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !26, retainedNodes: !529)
!529 = !{!527}
!530 = !DILocation(line: 0, scope: !528, inlinedAt: !531)
!531 = distinct !DILocation(line: 106, column: 14, scope: !519, inlinedAt: !525)
!532 = !DILocation(line: 53, column: 9, scope: !528, inlinedAt: !531)
!533 = !DILocation(line: 58, column: 13, scope: !534, inlinedAt: !531)
!534 = distinct !DILexicalBlock(scope: !528, file: !5, line: 53, column: 22)
!535 = !DILocation(line: 59, column: 17, scope: !536, inlinedAt: !531)
!536 = distinct !DILexicalBlock(scope: !534, file: !5, line: 59, column: 17)
!537 = !DILocation(line: 59, column: 17, scope: !534, inlinedAt: !531)
!538 = distinct !{!538, !532, !539}
!539 = !DILocation(line: 62, column: 9, scope: !528, inlinedAt: !531)
!540 = !DILocation(line: 108, column: 13, scope: !541, inlinedAt: !525)
!541 = distinct !DILexicalBlock(scope: !519, file: !5, line: 108, column: 13)
!542 = !{!543, !436, i64 4}
!543 = !{!"_ZTSN6Halide7Runtime8Internal11TraceBufferE", !495, i64 0, !436, i64 4, !436, i64 8, !430, i64 12}
!544 = !DILocation(line: 108, column: 13, scope: !519, inlinedAt: !525)
!545 = !DILocation(line: 109, column: 23, scope: !546, inlinedAt: !525)
!546 = distinct !DILexicalBlock(scope: !541, file: !5, line: 108, column: 21)
!547 = !{!543, !436, i64 8}
!548 = !DILocation(line: 109, column: 20, scope: !546, inlinedAt: !525)
!549 = !DILocation(line: 110, column: 44, scope: !546, inlinedAt: !525)
!550 = !DILocation(line: 110, column: 31, scope: !546, inlinedAt: !525)
!551 = !DILocation(line: 111, column: 20, scope: !546, inlinedAt: !525)
!552 = !DILocation(line: 112, column: 21, scope: !546, inlinedAt: !525)
!553 = !DILocalVariable(name: "this", arg: 1, scope: !554, type: !484, flags: DIFlagArtificial | DIFlagObjectPointer)
!554 = distinct !DISubprogram(name: "release_exclusive", linkageName: "_ZN6Halide7Runtime8Internal23SharedExclusiveSpinLock17release_exclusiveEv", scope: !10, file: !5, line: 65, type: !22, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !27, retainedNodes: !555)
!555 = !{!553}
!556 = !DILocation(line: 0, scope: !554, inlinedAt: !557)
!557 = distinct !DILocation(line: 114, column: 14, scope: !519, inlinedAt: !525)
!558 = !DILocation(line: 66, column: 9, scope: !554, inlinedAt: !557)
!559 = !DILocation(line: 115, column: 9, scope: !560, inlinedAt: !525)
!560 = distinct !DILexicalBlock(scope: !519, file: !5, line: 115, column: 9)
!561 = !DILocation(line: 115, column: 9, scope: !562, inlinedAt: !525)
!562 = distinct !DILexicalBlock(scope: !563, file: !5, line: 115, column: 9)
!563 = distinct !DILexicalBlock(scope: !560, file: !5, line: 115, column: 9)
!564 = !DILocation(line: 0, scope: !554, inlinedAt: !565)
!565 = distinct !DILocation(line: 114, column: 14, scope: !519, inlinedAt: !525)
!566 = !DILocation(line: 66, column: 9, scope: !554, inlinedAt: !565)
!567 = distinct !{!567, !478, !502, !503}
!568 = !DILocation(line: 87, column: 9, scope: !569, inlinedAt: !493)
!569 = distinct !DILexicalBlock(scope: !570, file: !5, line: 87, column: 9)
!570 = distinct !DILexicalBlock(scope: !571, file: !5, line: 87, column: 9)
!571 = distinct !DILexicalBlock(scope: !487, file: !5, line: 87, column: 9)
!572 = distinct !{!572, !532, !539}
!573 = !DILocation(line: 98, column: 50, scope: !574, inlinedAt: !493)
!574 = distinct !DILexicalBlock(scope: !507, file: !5, line: 97, column: 16)
!575 = !DILocation(line: 180, column: 24, scope: !576)
!576 = distinct !DILexicalBlock(scope: !320, file: !5, line: 180, column: 13)
!577 = !DILocation(line: 180, column: 13, scope: !320)
!578 = !DILocalVariable(name: "this", arg: 1, scope: !579, type: !583, flags: DIFlagArtificial | DIFlagObjectPointer)
!579 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !210, file: !208, line: 37, type: !222, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !221, retainedNodes: !580)
!580 = !{!578, !581, !582}
!581 = !DILocalVariable(name: "ctx", arg: 2, scope: !579, file: !208, line: 37, type: !130)
!582 = !DILocalVariable(name: "mem", arg: 3, scope: !579, file: !208, line: 37, type: !140)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!584 = !DILocation(line: 0, scope: !579, inlinedAt: !585)
!585 = distinct !DILocation(line: 181, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !576, file: !5, line: 180, column: 32)
!587 = !DILocation(line: 44, column: 27, scope: !588, inlinedAt: !585)
!588 = distinct !DILexicalBlock(scope: !589, file: !208, line: 43, column: 16)
!589 = distinct !DILexicalBlock(scope: !590, file: !208, line: 41, column: 20)
!590 = distinct !DILexicalBlock(scope: !591, file: !208, line: 39, column: 13)
!591 = distinct !DILexicalBlock(scope: !579, file: !208, line: 38, column: 54)
!592 = !DILocation(line: 48, column: 13, scope: !593, inlinedAt: !585)
!593 = distinct !DILexicalBlock(scope: !591, file: !208, line: 48, column: 13)
!594 = !DILocation(line: 48, column: 13, scope: !591, inlinedAt: !585)
!595 = !DILocation(line: 49, column: 23, scope: !596, inlinedAt: !585)
!596 = distinct !DILexicalBlock(scope: !593, file: !208, line: 48, column: 18)
!597 = !DILocation(line: 50, column: 18, scope: !596, inlinedAt: !585)
!598 = !{!430, !430, i64 0}
!599 = !DILocation(line: 51, column: 9, scope: !596, inlinedAt: !585)
!600 = !DILocation(line: 0, scope: !593, inlinedAt: !585)
!601 = !DILocalVariable(name: "this", arg: 1, scope: !602, type: !583, flags: DIFlagArtificial | DIFlagObjectPointer)
!602 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !210, file: !208, line: 82, type: !243, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !242, retainedNodes: !603)
!603 = !{!601, !604}
!604 = !DILocalVariable(name: "arg", arg: 2, scope: !602, file: !208, line: 82, type: !14)
!605 = !DILocation(line: 0, scope: !602, inlinedAt: !606)
!606 = distinct !DILocation(line: 181, column: 28, scope: !586)
!607 = !DILocation(line: 83, column: 49, scope: !602, inlinedAt: !606)
!608 = !DILocation(line: 83, column: 15, scope: !602, inlinedAt: !606)
!609 = !DILocalVariable(name: "this", arg: 1, scope: !610, type: !583, flags: DIFlagArtificial | DIFlagObjectPointer)
!610 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !210, file: !208, line: 57, type: !226, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !225, retainedNodes: !611)
!611 = !{!609, !612}
!612 = !DILocalVariable(name: "arg", arg: 2, scope: !610, file: !208, line: 57, type: !134)
!613 = !DILocation(line: 0, scope: !610, inlinedAt: !614)
!614 = distinct !DILocation(line: 181, column: 42, scope: !586)
!615 = !DILocation(line: 62, column: 19, scope: !616, inlinedAt: !614)
!616 = distinct !DILexicalBlock(scope: !617, file: !208, line: 61, column: 16)
!617 = distinct !DILexicalBlock(scope: !610, file: !208, line: 59, column: 13)
!618 = !DILocalVariable(name: "this", arg: 1, scope: !619, type: !583, flags: DIFlagArtificial | DIFlagObjectPointer)
!619 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !210, file: !208, line: 166, type: !274, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !287, retainedNodes: !620)
!620 = !{!618}
!621 = !DILocation(line: 0, scope: !619, inlinedAt: !622)
!622 = distinct !DILocation(line: 181, column: 13, scope: !586)
!623 = !DILocation(line: 167, column: 13, scope: !624, inlinedAt: !622)
!624 = distinct !DILexicalBlock(scope: !619, file: !208, line: 166, column: 16)
!625 = !DILocation(line: 168, column: 13, scope: !626, inlinedAt: !622)
!626 = distinct !DILexicalBlock(scope: !627, file: !208, line: 167, column: 19)
!627 = distinct !DILexicalBlock(scope: !624, file: !208, line: 167, column: 13)
!628 = !DILocation(line: 169, column: 9, scope: !626, inlinedAt: !622)
!629 = !DILocalVariable(name: "this", arg: 1, scope: !630, type: !583, flags: DIFlagArtificial | DIFlagObjectPointer)
!630 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !210, file: !208, line: 162, type: !274, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !286, retainedNodes: !631)
!631 = !{!629}
!632 = !DILocation(line: 0, scope: !630, inlinedAt: !633)
!633 = distinct !DILocation(line: 170, column: 13, scope: !634, inlinedAt: !622)
!634 = distinct !DILexicalBlock(scope: !627, file: !208, line: 169, column: 16)
!635 = !DILocation(line: 163, column: 81, scope: !630, inlinedAt: !633)
!636 = !DILocation(line: 163, column: 87, scope: !630, inlinedAt: !633)
!637 = !DILocation(line: 163, column: 77, scope: !630, inlinedAt: !633)
!638 = !DILocation(line: 163, column: 15, scope: !630, inlinedAt: !633)
!639 = !DILocation(line: 174, column: 17, scope: !640, inlinedAt: !622)
!640 = distinct !DILexicalBlock(scope: !641, file: !208, line: 173, column: 46)
!641 = distinct !DILexicalBlock(scope: !642, file: !208, line: 173, column: 24)
!642 = distinct !DILexicalBlock(scope: !634, file: !208, line: 171, column: 17)
!643 = !DILocation(line: 181, column: 13, scope: !644, inlinedAt: !622)
!644 = distinct !DILexicalBlock(scope: !645, file: !208, line: 180, column: 40)
!645 = distinct !DILexicalBlock(scope: !624, file: !208, line: 180, column: 13)
!646 = !DILocation(line: 182, column: 9, scope: !586)
!647 = !DILocation(line: 185, column: 17, scope: !320)
!648 = !DILocation(line: 185, column: 22, scope: !320)
!649 = !{!650, !436, i64 0}
!650 = !{!"_ZTS21halide_trace_packet_t", !436, i64 0, !436, i64 4, !432, i64 8, !435, i64 12, !436, i64 16, !436, i64 20, !436, i64 24}
!651 = !DILocation(line: 186, column: 17, scope: !320)
!652 = !DILocation(line: 186, column: 20, scope: !320)
!653 = !{!650, !436, i64 4}
!654 = !DILocation(line: 187, column: 22, scope: !320)
!655 = !DILocation(line: 188, column: 28, scope: !320)
!656 = !{!428, !435, i64 20}
!657 = !DILocation(line: 188, column: 17, scope: !320)
!658 = !DILocation(line: 188, column: 23, scope: !320)
!659 = !{!650, !435, i64 12}
!660 = !DILocation(line: 189, column: 32, scope: !320)
!661 = !{!428, !436, i64 24}
!662 = !DILocation(line: 189, column: 17, scope: !320)
!663 = !DILocation(line: 189, column: 27, scope: !320)
!664 = !{!650, !436, i64 16}
!665 = !DILocation(line: 190, column: 34, scope: !320)
!666 = !{!428, !436, i64 28}
!667 = !DILocation(line: 190, column: 17, scope: !320)
!668 = !DILocation(line: 190, column: 29, scope: !320)
!669 = !{!650, !436, i64 20}
!670 = !DILocation(line: 191, column: 33, scope: !320)
!671 = !DILocation(line: 191, column: 17, scope: !320)
!672 = !DILocation(line: 191, column: 28, scope: !320)
!673 = !{!650, !436, i64 24}
!674 = !DILocation(line: 192, column: 16, scope: !675)
!675 = distinct !DILexicalBlock(scope: !320, file: !5, line: 192, column: 13)
!676 = !{!428, !429, i64 8}
!677 = !DILocation(line: 192, column: 13, scope: !675)
!678 = !DILocation(line: 192, column: 13, scope: !320)
!679 = !DILocalVariable(name: "this", arg: 1, scope: !680, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!680 = distinct !DISubprogram(name: "coordinates", linkageName: "_ZN21halide_trace_packet_t11coordinatesEv", scope: !42, file: !43, line: 631, type: !119, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !118, retainedNodes: !681)
!681 = !{!679}
!682 = !DILocation(line: 0, scope: !680, inlinedAt: !683)
!683 = distinct !DILocation(line: 193, column: 36, scope: !684)
!684 = distinct !DILexicalBlock(scope: !675, file: !5, line: 192, column: 29)
!685 = !DILocation(line: 632, column: 16, scope: !680, inlinedAt: !683)
!686 = !DILocation(line: 193, column: 13, scope: !684)
!687 = !DILocation(line: 194, column: 9, scope: !684)
!688 = !DILocation(line: 195, column: 16, scope: !689)
!689 = distinct !DILexicalBlock(scope: !320, file: !5, line: 195, column: 13)
!690 = !{!428, !429, i64 4}
!691 = !DILocation(line: 195, column: 13, scope: !689)
!692 = !DILocation(line: 195, column: 13, scope: !320)
!693 = !DILocalVariable(name: "this", arg: 1, scope: !694, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!694 = distinct !DISubprogram(name: "value", linkageName: "_ZN21halide_trace_packet_t5valueEv", scope: !42, file: !43, line: 642, type: !128, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !127, retainedNodes: !695)
!695 = !{!693}
!696 = !DILocation(line: 0, scope: !694, inlinedAt: !697)
!697 = distinct !DILocation(line: 196, column: 36, scope: !698)
!698 = distinct !DILexicalBlock(scope: !689, file: !5, line: 195, column: 23)
!699 = !DILocation(line: 0, scope: !680, inlinedAt: !700)
!700 = distinct !DILocation(line: 643, column: 25, scope: !694, inlinedAt: !697)
!701 = !DILocation(line: 632, column: 16, scope: !680, inlinedAt: !700)
!702 = !DILocation(line: 643, column: 41, scope: !694, inlinedAt: !697)
!703 = !DILocation(line: 643, column: 39, scope: !694, inlinedAt: !697)
!704 = !DILocation(line: 643, column: 24, scope: !694, inlinedAt: !697)
!705 = !DILocation(line: 196, column: 13, scope: !698)
!706 = !DILocation(line: 197, column: 9, scope: !698)
!707 = !DILocalVariable(name: "this", arg: 1, scope: !708, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!708 = distinct !DISubprogram(name: "func", linkageName: "_ZN21halide_trace_packet_t4funcEv", scope: !42, file: !43, line: 652, type: !138, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !137, retainedNodes: !709)
!709 = !{!707}
!710 = !DILocation(line: 0, scope: !708, inlinedAt: !711)
!711 = distinct !DILocation(line: 198, column: 32, scope: !320)
!712 = !DILocation(line: 0, scope: !694, inlinedAt: !713)
!713 = distinct !DILocation(line: 653, column: 24, scope: !708, inlinedAt: !711)
!714 = !DILocation(line: 0, scope: !680, inlinedAt: !715)
!715 = distinct !DILocation(line: 643, column: 25, scope: !694, inlinedAt: !713)
!716 = !DILocation(line: 632, column: 16, scope: !680, inlinedAt: !715)
!717 = !DILocation(line: 643, column: 41, scope: !694, inlinedAt: !713)
!718 = !DILocation(line: 643, column: 39, scope: !694, inlinedAt: !713)
!719 = !DILocation(line: 643, column: 24, scope: !694, inlinedAt: !713)
!720 = !DILocation(line: 653, column: 39, scope: !708, inlinedAt: !711)
!721 = !{!650, !434, i64 10}
!722 = !DILocation(line: 653, column: 34, scope: !708, inlinedAt: !711)
!723 = !DILocation(line: 0, scope: !439, inlinedAt: !724)
!724 = distinct !DILocation(line: 653, column: 52, scope: !708, inlinedAt: !711)
!725 = !DILocation(line: 482, column: 17, scope: !439, inlinedAt: !724)
!726 = !DILocation(line: 482, column: 22, scope: !439, inlinedAt: !724)
!727 = !DILocation(line: 482, column: 27, scope: !439, inlinedAt: !724)
!728 = !DILocation(line: 653, column: 45, scope: !708, inlinedAt: !711)
!729 = !DILocation(line: 653, column: 32, scope: !708, inlinedAt: !711)
!730 = !DILocation(line: 198, column: 43, scope: !320)
!731 = !DILocation(line: 198, column: 9, scope: !320)
!732 = !DILocalVariable(name: "this", arg: 1, scope: !733, type: !41, flags: DIFlagArtificial | DIFlagObjectPointer)
!733 = distinct !DISubprogram(name: "trace_tag", linkageName: "_ZN21halide_trace_packet_t9trace_tagEv", scope: !42, file: !43, line: 668, type: !138, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !142, retainedNodes: !734)
!734 = !{!732, !735}
!735 = !DILocalVariable(name: "f", scope: !733, file: !43, line: 669, type: !140)
!736 = !DILocation(line: 0, scope: !733, inlinedAt: !737)
!737 = distinct !DILocation(line: 199, column: 32, scope: !320)
!738 = !DILocation(line: 0, scope: !708, inlinedAt: !739)
!739 = distinct !DILocation(line: 669, column: 19, scope: !733, inlinedAt: !737)
!740 = !DILocation(line: 0, scope: !694, inlinedAt: !741)
!741 = distinct !DILocation(line: 653, column: 24, scope: !708, inlinedAt: !739)
!742 = !DILocation(line: 0, scope: !680, inlinedAt: !743)
!743 = distinct !DILocation(line: 643, column: 25, scope: !694, inlinedAt: !741)
!744 = !DILocation(line: 643, column: 41, scope: !694, inlinedAt: !741)
!745 = !DILocation(line: 643, column: 39, scope: !694, inlinedAt: !741)
!746 = !DILocation(line: 643, column: 24, scope: !694, inlinedAt: !741)
!747 = !DILocation(line: 653, column: 39, scope: !708, inlinedAt: !739)
!748 = !DILocation(line: 653, column: 34, scope: !708, inlinedAt: !739)
!749 = !DILocation(line: 0, scope: !439, inlinedAt: !750)
!750 = distinct !DILocation(line: 653, column: 52, scope: !708, inlinedAt: !739)
!751 = !DILocation(line: 482, column: 17, scope: !439, inlinedAt: !750)
!752 = !DILocation(line: 482, column: 22, scope: !439, inlinedAt: !750)
!753 = !DILocation(line: 482, column: 27, scope: !439, inlinedAt: !750)
!754 = !DILocation(line: 653, column: 45, scope: !708, inlinedAt: !739)
!755 = !DILocation(line: 653, column: 32, scope: !708, inlinedAt: !739)
!756 = !DILocation(line: 671, column: 9, scope: !733, inlinedAt: !737)
!757 = !DILocation(line: 671, column: 18, scope: !733, inlinedAt: !737)
!758 = !DILocation(line: 671, column: 16, scope: !733, inlinedAt: !737)
!759 = distinct !{!759, !756, !760, !503}
!760 = !DILocation(line: 673, column: 9, scope: !733, inlinedAt: !737)
!761 = !DILocation(line: 199, column: 48, scope: !320)
!762 = !DILocation(line: 199, column: 45, scope: !320)
!763 = !DILocation(line: 199, column: 9, scope: !320)
!764 = !DILocation(line: 202, column: 9, scope: !320)
!765 = !DILocalVariable(name: "this", arg: 1, scope: !766, type: !6, flags: DIFlagArtificial | DIFlagObjectPointer)
!766 = distinct !DISubprogram(name: "release_packet", linkageName: "_ZN6Halide7Runtime8Internal11TraceBuffer14release_packetEP21halide_trace_packet_t", scope: !7, file: !5, line: 133, type: !151, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !150, retainedNodes: !767)
!767 = !{!765, !768}
!768 = !DILocalVariable(arg: 2, scope: !766, file: !5, line: 133, type: !41)
!769 = !DILocation(line: 0, scope: !766, inlinedAt: !770)
!770 = distinct !DILocation(line: 202, column: 30, scope: !320)
!771 = !DILocation(line: 135, column: 9, scope: !766, inlinedAt: !770)
!772 = !DILocation(line: 0, scope: !513, inlinedAt: !773)
!773 = distinct !DILocation(line: 136, column: 14, scope: !766, inlinedAt: !770)
!774 = !DILocation(line: 49, column: 31, scope: !513, inlinedAt: !773)
!775 = !DILocation(line: 49, column: 9, scope: !513, inlinedAt: !773)
!776 = !DILocation(line: 206, column: 16, scope: !777)
!777 = distinct !DILexicalBlock(scope: !320, file: !5, line: 206, column: 13)
!778 = !DILocation(line: 206, column: 22, scope: !777)
!779 = !DILocation(line: 206, column: 13, scope: !320)
!780 = !DILocation(line: 207, column: 13, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !5, line: 206, column: 52)
!782 = !DILocation(line: 0, scope: !519, inlinedAt: !783)
!783 = distinct !DILocation(line: 207, column: 34, scope: !781)
!784 = !DILocation(line: 0, scope: !528, inlinedAt: !785)
!785 = distinct !DILocation(line: 106, column: 14, scope: !519, inlinedAt: !783)
!786 = !DILocation(line: 53, column: 9, scope: !528, inlinedAt: !785)
!787 = !DILocation(line: 58, column: 13, scope: !534, inlinedAt: !785)
!788 = !DILocation(line: 59, column: 17, scope: !536, inlinedAt: !785)
!789 = !DILocation(line: 59, column: 17, scope: !534, inlinedAt: !785)
!790 = distinct !{!790, !786, !791}
!791 = !DILocation(line: 62, column: 9, scope: !528, inlinedAt: !785)
!792 = !DILocation(line: 108, column: 13, scope: !541, inlinedAt: !783)
!793 = !DILocation(line: 108, column: 13, scope: !519, inlinedAt: !783)
!794 = !DILocation(line: 109, column: 23, scope: !546, inlinedAt: !783)
!795 = !DILocation(line: 109, column: 20, scope: !546, inlinedAt: !783)
!796 = !DILocation(line: 110, column: 54, scope: !546, inlinedAt: !783)
!797 = !DILocation(line: 110, column: 44, scope: !546, inlinedAt: !783)
!798 = !DILocation(line: 110, column: 31, scope: !546, inlinedAt: !783)
!799 = !DILocation(line: 111, column: 20, scope: !546, inlinedAt: !783)
!800 = !DILocation(line: 112, column: 21, scope: !546, inlinedAt: !783)
!801 = !DILocation(line: 0, scope: !554, inlinedAt: !802)
!802 = distinct !DILocation(line: 114, column: 14, scope: !519, inlinedAt: !783)
!803 = !DILocation(line: 66, column: 9, scope: !554, inlinedAt: !802)
!804 = !DILocation(line: 115, column: 9, scope: !560, inlinedAt: !783)
!805 = !DILocation(line: 115, column: 9, scope: !562, inlinedAt: !783)
!806 = !DILocation(line: 0, scope: !554, inlinedAt: !807)
!807 = distinct !DILocation(line: 114, column: 14, scope: !519, inlinedAt: !783)
!808 = !DILocation(line: 66, column: 9, scope: !554, inlinedAt: !807)
!809 = !DILocation(line: 211, column: 9, scope: !330)
!810 = !DILocation(line: 211, column: 17, scope: !330)
!811 = !DILocation(line: 212, column: 9, scope: !330)
!812 = !DILocation(line: 212, column: 54, scope: !330)
!813 = !DILocalVariable(name: "this", arg: 1, scope: !814, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!814 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EEC2EPvPc", scope: !335, file: !208, line: 37, type: !344, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !343, retainedNodes: !815)
!815 = !{!813, !816, !817}
!816 = !DILocalVariable(name: "ctx", arg: 2, scope: !814, file: !208, line: 37, type: !130)
!817 = !DILocalVariable(name: "mem", arg: 3, scope: !814, file: !208, line: 37, type: !140)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!819 = !DILocation(line: 0, scope: !814, inlinedAt: !820)
!820 = distinct !DILocation(line: 212, column: 54, scope: !330)
!821 = !DILocation(line: 38, column: 11, scope: !814, inlinedAt: !820)
!822 = !{!823, !429, i64 12}
!823 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EEE", !429, i64 0, !429, i64 4, !429, i64 8, !429, i64 12, !824, i64 16, !430, i64 17}
!824 = !{!"bool", !430, i64 0}
!825 = !DILocation(line: 38, column: 30, scope: !814, inlinedAt: !820)
!826 = !{!823, !824, i64 16}
!827 = !DILocation(line: 44, column: 13, scope: !828, inlinedAt: !820)
!828 = distinct !DILexicalBlock(scope: !829, file: !208, line: 43, column: 16)
!829 = distinct !DILexicalBlock(scope: !830, file: !208, line: 41, column: 20)
!830 = distinct !DILexicalBlock(scope: !831, file: !208, line: 39, column: 13)
!831 = distinct !DILexicalBlock(scope: !814, file: !208, line: 38, column: 54)
!832 = !DILocation(line: 44, column: 17, scope: !828, inlinedAt: !820)
!833 = !DILocation(line: 47, column: 9, scope: !831, inlinedAt: !820)
!834 = !DILocation(line: 47, column: 13, scope: !831, inlinedAt: !820)
!835 = !{!823, !429, i64 4}
!836 = !DILocation(line: 49, column: 23, scope: !837, inlinedAt: !820)
!837 = distinct !DILexicalBlock(scope: !838, file: !208, line: 48, column: 18)
!838 = distinct !DILexicalBlock(scope: !831, file: !208, line: 48, column: 13)
!839 = !DILocation(line: 49, column: 13, scope: !837, inlinedAt: !820)
!840 = !DILocation(line: 49, column: 17, scope: !837, inlinedAt: !820)
!841 = !{!823, !429, i64 8}
!842 = !DILocation(line: 50, column: 18, scope: !837, inlinedAt: !820)
!843 = !DILocation(line: 0, scope: !330)
!844 = !{!428, !430, i64 17}
!845 = !DILocation(line: 216, column: 9, scope: !330)
!846 = !DILocation(line: 216, column: 27, scope: !330)
!847 = !DILocation(line: 217, column: 24, scope: !848)
!848 = distinct !DILexicalBlock(scope: !330, file: !5, line: 216, column: 43)
!849 = distinct !{!849, !845, !850, !503}
!850 = !DILocation(line: 218, column: 9, scope: !330)
!851 = !DILocation(line: 219, column: 9, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !5, line: 219, column: 9)
!853 = distinct !DILexicalBlock(scope: !330, file: !5, line: 219, column: 9)
!854 = !DILocation(line: 219, column: 9, scope: !853)
!855 = !DILocation(line: 219, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !5, line: 219, column: 9)
!857 = !DILocation(line: 62, column: 43, scope: !858, inlinedAt: !864)
!858 = distinct !DILexicalBlock(scope: !859, file: !208, line: 61, column: 16)
!859 = distinct !DILexicalBlock(scope: !860, file: !208, line: 59, column: 13)
!860 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKc", scope: !335, file: !208, line: 57, type: !348, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !347, retainedNodes: !861)
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "this", arg: 1, scope: !860, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!863 = !DILocalVariable(name: "arg", arg: 2, scope: !860, file: !208, line: 57, type: !134)
!864 = distinct !DILocation(line: 237, column: 12, scope: !330)
!865 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !864)
!866 = !DILocation(line: 222, column: 21, scope: !330)
!867 = !DILocation(line: 235, column: 32, scope: !330)
!868 = !DILocation(line: 235, column: 38, scope: !330)
!869 = !DILocation(line: 0, scope: !860, inlinedAt: !864)
!870 = !DILocation(line: 237, column: 15, scope: !330)
!871 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !864)
!872 = !DILocation(line: 0, scope: !859, inlinedAt: !864)
!873 = !DILocation(line: 0, scope: !860, inlinedAt: !874)
!874 = distinct !DILocation(line: 237, column: 37, scope: !330)
!875 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !874)
!876 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !874)
!877 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !874)
!878 = !DILocation(line: 237, column: 50, scope: !330)
!879 = !DILocation(line: 0, scope: !860, inlinedAt: !880)
!880 = distinct !DILocation(line: 237, column: 44, scope: !330)
!881 = !DILocation(line: 59, column: 17, scope: !859, inlinedAt: !880)
!882 = !DILocation(line: 0, scope: !859, inlinedAt: !880)
!883 = !DILocation(line: 59, column: 13, scope: !860, inlinedAt: !880)
!884 = !DILocation(line: 60, column: 19, scope: !885, inlinedAt: !880)
!885 = distinct !DILexicalBlock(scope: !859, file: !208, line: 59, column: 29)
!886 = !DILocation(line: 61, column: 9, scope: !885, inlinedAt: !880)
!887 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !880)
!888 = !DILocation(line: 0, scope: !860, inlinedAt: !889)
!889 = distinct !DILocation(line: 237, column: 55, scope: !330)
!890 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !889)
!891 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !889)
!892 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !889)
!893 = !DILocation(line: 237, column: 68, scope: !330)
!894 = !DILocalVariable(name: "this", arg: 1, scope: !895, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!895 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEi", scope: !335, file: !208, line: 72, type: !355, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !354, retainedNodes: !896)
!896 = !{!894, !897}
!897 = !DILocalVariable(name: "arg", arg: 2, scope: !895, file: !208, line: 72, type: !47)
!898 = !DILocation(line: 0, scope: !895, inlinedAt: !899)
!899 = distinct !DILocation(line: 237, column: 62, scope: !330)
!900 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !899)
!901 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !899)
!902 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !899)
!903 = !DILocation(line: 73, column: 13, scope: !895, inlinedAt: !899)
!904 = !DILocation(line: 0, scope: !860, inlinedAt: !905)
!905 = distinct !DILocation(line: 237, column: 80, scope: !330)
!906 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !905)
!907 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !905)
!908 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !905)
!909 = !DILocation(line: 238, column: 21, scope: !910)
!910 = distinct !DILexicalBlock(scope: !330, file: !5, line: 238, column: 13)
!911 = !DILocation(line: 238, column: 27, scope: !910)
!912 = !DILocation(line: 238, column: 13, scope: !330)
!913 = !DILocation(line: 0, scope: !860, inlinedAt: !914)
!914 = distinct !DILocation(line: 239, column: 16, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !5, line: 238, column: 32)
!916 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !914)
!917 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !914)
!918 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !914)
!919 = !DILocation(line: 240, column: 9, scope: !915)
!920 = !DILocation(line: 0, scope: !409)
!921 = !DILocation(line: 241, column: 32, scope: !922)
!922 = distinct !DILexicalBlock(scope: !409, file: !5, line: 241, column: 9)
!923 = !DILocation(line: 241, column: 27, scope: !922)
!924 = !DILocation(line: 241, column: 9, scope: !409)
!925 = !DILocation(line: 249, column: 22, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !5, line: 241, column: 49)
!927 = !DILocation(line: 249, column: 19, scope: !926)
!928 = !{!436, !436, i64 0}
!929 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !930)
!930 = distinct !DILocation(line: 249, column: 16, scope: !926)
!931 = !DILocation(line: 0, scope: !895, inlinedAt: !930)
!932 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !930)
!933 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !930)
!934 = !DILocation(line: 73, column: 13, scope: !895, inlinedAt: !930)
!935 = !DILocation(line: 251, column: 21, scope: !936)
!936 = distinct !DILexicalBlock(scope: !330, file: !5, line: 251, column: 13)
!937 = !DILocation(line: 251, column: 27, scope: !936)
!938 = !DILocation(line: 0, scope: !860, inlinedAt: !939)
!939 = distinct !DILocation(line: 252, column: 16, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !5, line: 251, column: 32)
!941 = !DILocation(line: 0, scope: !860, inlinedAt: !942)
!942 = distinct !DILocation(line: 254, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !936, file: !5, line: 253, column: 16)
!944 = !DILocation(line: 0, scope: !936)
!945 = !DILocation(line: 251, column: 13, scope: !330)
!946 = !DILocation(line: 257, column: 13, scope: !330)
!947 = !DILocation(line: 243, column: 30, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !5, line: 243, column: 21)
!949 = distinct !DILexicalBlock(scope: !950, file: !5, line: 242, column: 24)
!950 = distinct !DILexicalBlock(scope: !926, file: !5, line: 242, column: 17)
!951 = !DILocation(line: 243, column: 36, scope: !948)
!952 = !DILocation(line: 243, column: 41, scope: !948)
!953 = !DILocation(line: 243, column: 22, scope: !948)
!954 = !DILocation(line: 243, column: 47, scope: !948)
!955 = !DILocation(line: 243, column: 64, scope: !948)
!956 = !DILocation(line: 243, column: 21, scope: !949)
!957 = !DILocation(line: 0, scope: !860, inlinedAt: !958)
!958 = distinct !DILocation(line: 246, column: 24, scope: !959)
!959 = distinct !DILexicalBlock(scope: !948, file: !5, line: 245, column: 24)
!960 = !DILocation(line: 0, scope: !948)
!961 = !DILocation(line: 241, column: 45, scope: !922)
!962 = distinct !{!962, !924, !963, !503, !964}
!963 = !DILocation(line: 250, column: 9, scope: !409)
!964 = !{!"llvm.loop.peeled.count", i32 1}
!965 = !DILocation(line: 258, column: 25, scope: !966)
!966 = distinct !DILexicalBlock(scope: !412, file: !5, line: 258, column: 17)
!967 = !DILocation(line: 258, column: 31, scope: !966)
!968 = !DILocation(line: 0, scope: !860, inlinedAt: !969)
!969 = distinct !DILocation(line: 259, column: 20, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !5, line: 258, column: 36)
!971 = !DILocation(line: 0, scope: !860, inlinedAt: !972)
!972 = distinct !DILocation(line: 261, column: 20, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !5, line: 260, column: 20)
!974 = !DILocation(line: 0, scope: !966)
!975 = !DILocation(line: 258, column: 17, scope: !412)
!976 = !DILocation(line: 0, scope: !411)
!977 = !DILocation(line: 263, column: 41, scope: !978)
!978 = distinct !DILexicalBlock(scope: !411, file: !5, line: 263, column: 13)
!979 = !DILocation(line: 263, column: 31, scope: !978)
!980 = !DILocation(line: 263, column: 13, scope: !411)
!981 = !DILocation(line: 300, column: 31, scope: !982)
!982 = distinct !DILexicalBlock(scope: !412, file: !5, line: 300, column: 17)
!983 = !DILocation(line: 300, column: 17, scope: !412)
!984 = !DILocation(line: 264, column: 23, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !5, line: 264, column: 21)
!986 = distinct !DILexicalBlock(scope: !978, file: !5, line: 263, column: 53)
!987 = !DILocation(line: 264, column: 21, scope: !986)
!988 = !DILocation(line: 0, scope: !860, inlinedAt: !989)
!989 = distinct !DILocation(line: 265, column: 24, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !5, line: 264, column: 28)
!991 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !989)
!992 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !989)
!993 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !989)
!994 = !DILocation(line: 266, column: 17, scope: !990)
!995 = !DILocation(line: 267, column: 29, scope: !996)
!996 = distinct !DILexicalBlock(scope: !986, file: !5, line: 267, column: 21)
!997 = !{!428, !433, i64 16}
!998 = !DILocation(line: 267, column: 21, scope: !986)
!999 = !DILocation(line: 268, column: 25, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !5, line: 267, column: 40)
!1001 = !DILocation(line: 269, column: 46, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !5, line: 268, column: 42)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !5, line: 268, column: 25)
!1004 = !DILocation(line: 269, column: 31, scope: !1002)
!1005 = !DILocation(line: 0, scope: !895, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 269, column: 28, scope: !1002)
!1007 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !1006)
!1008 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !1006)
!1009 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !1006)
!1010 = !DILocation(line: 270, column: 21, scope: !1002)
!1011 = !DILocation(line: 271, column: 47, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !5, line: 270, column: 50)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !5, line: 270, column: 32)
!1014 = !DILocation(line: 271, column: 31, scope: !1012)
!1015 = !{!434, !434, i64 0}
!1016 = !DILocation(line: 0, scope: !895, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 271, column: 28, scope: !1012)
!1018 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !1017)
!1019 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !1017)
!1020 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !1017)
!1021 = !DILocation(line: 272, column: 21, scope: !1012)
!1022 = !DILocation(line: 273, column: 47, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 272, column: 50)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !5, line: 272, column: 32)
!1025 = !DILocation(line: 273, column: 31, scope: !1023)
!1026 = !DILocation(line: 0, scope: !895, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 273, column: 28, scope: !1023)
!1028 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !1027)
!1029 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !1027)
!1030 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !1027)
!1031 = !DILocation(line: 274, column: 21, scope: !1023)
!1032 = !DILocation(line: 275, column: 47, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1024, file: !5, line: 274, column: 28)
!1034 = !DILocation(line: 275, column: 31, scope: !1033)
!1035 = !{!1036, !1036, i64 0}
!1036 = !{!"long long", !430, i64 0}
!1037 = !DILocalVariable(name: "this", arg: 1, scope: !1038, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1038 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEx", scope: !335, file: !208, line: 67, type: !352, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !351, retainedNodes: !1039)
!1039 = !{!1037, !1040}
!1040 = !DILocalVariable(name: "arg", arg: 2, scope: !1038, file: !208, line: 67, type: !232)
!1041 = !DILocation(line: 0, scope: !1038, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 275, column: 28, scope: !1033)
!1043 = !DILocation(line: 68, column: 43, scope: !1038, inlinedAt: !1042)
!1044 = !DILocation(line: 68, column: 15, scope: !1038, inlinedAt: !1042)
!1045 = !DILocation(line: 278, column: 25, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !5, line: 277, column: 47)
!1047 = distinct !DILexicalBlock(scope: !996, file: !5, line: 277, column: 28)
!1048 = !DILocation(line: 279, column: 47, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !5, line: 278, column: 42)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !5, line: 278, column: 25)
!1051 = !DILocation(line: 279, column: 31, scope: !1049)
!1052 = !DILocation(line: 0, scope: !895, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 279, column: 28, scope: !1049)
!1054 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !1053)
!1055 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !1053)
!1056 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !1053)
!1057 = !DILocation(line: 280, column: 21, scope: !1049)
!1058 = !DILocation(line: 281, column: 48, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !5, line: 280, column: 50)
!1060 = distinct !DILexicalBlock(scope: !1050, file: !5, line: 280, column: 32)
!1061 = !DILocation(line: 281, column: 31, scope: !1059)
!1062 = !DILocation(line: 0, scope: !895, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 281, column: 28, scope: !1059)
!1064 = !DILocation(line: 73, column: 43, scope: !895, inlinedAt: !1063)
!1065 = !DILocation(line: 73, column: 48, scope: !895, inlinedAt: !1063)
!1066 = !DILocation(line: 73, column: 15, scope: !895, inlinedAt: !1063)
!1067 = !DILocation(line: 282, column: 21, scope: !1059)
!1068 = !DILocation(line: 283, column: 48, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !5, line: 282, column: 50)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !5, line: 282, column: 32)
!1071 = !DILocation(line: 283, column: 31, scope: !1069)
!1072 = !DILocalVariable(name: "this", arg: 1, scope: !1073, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1073 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEj", scope: !335, file: !208, line: 82, type: !361, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !360, retainedNodes: !1074)
!1074 = !{!1072, !1075}
!1075 = !DILocalVariable(name: "arg", arg: 2, scope: !1073, file: !208, line: 82, type: !14)
!1076 = !DILocation(line: 0, scope: !1073, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 283, column: 28, scope: !1069)
!1078 = !DILocation(line: 83, column: 44, scope: !1073, inlinedAt: !1077)
!1079 = !DILocation(line: 83, column: 49, scope: !1073, inlinedAt: !1077)
!1080 = !DILocation(line: 83, column: 15, scope: !1073, inlinedAt: !1077)
!1081 = !DILocation(line: 284, column: 21, scope: !1069)
!1082 = !DILocation(line: 285, column: 48, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1070, file: !5, line: 284, column: 28)
!1084 = !DILocation(line: 285, column: 31, scope: !1083)
!1085 = !DILocalVariable(name: "this", arg: 1, scope: !1086, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1086 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEy", scope: !335, file: !208, line: 77, type: !358, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !357, retainedNodes: !1087)
!1087 = !{!1085, !1088}
!1088 = !DILocalVariable(name: "arg", arg: 2, scope: !1086, file: !208, line: 77, type: !240)
!1089 = !DILocation(line: 0, scope: !1086, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 285, column: 28, scope: !1083)
!1091 = !DILocation(line: 78, column: 44, scope: !1086, inlinedAt: !1090)
!1092 = !DILocation(line: 78, column: 15, scope: !1086, inlinedAt: !1090)
!1093 = !DILocation(line: 288, column: 21, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !5, line: 288, column: 21)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !5, line: 287, column: 47)
!1096 = distinct !DILexicalBlock(scope: !1047, file: !5, line: 287, column: 28)
!1097 = !DILocation(line: 288, column: 21, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !5, line: 288, column: 21)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !5, line: 288, column: 21)
!1100 = !DILocation(line: 289, column: 25, scope: !1095)
!1101 = !DILocation(line: 290, column: 45, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !5, line: 289, column: 43)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !5, line: 289, column: 25)
!1104 = !DILocation(line: 290, column: 31, scope: !1102)
!1105 = !{!1106, !1106, i64 0}
!1106 = !{!"float", !430, i64 0}
!1107 = !DILocalVariable(name: "this", arg: 1, scope: !1108, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1108 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEf", scope: !335, file: !208, line: 92, type: !367, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !366, retainedNodes: !1109)
!1109 = !{!1107, !1110}
!1110 = !DILocalVariable(name: "arg", arg: 2, scope: !1108, file: !208, line: 92, type: !252)
!1111 = !DILocation(line: 0, scope: !1108, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 290, column: 28, scope: !1102)
!1113 = !DILocation(line: 93, column: 39, scope: !1108, inlinedAt: !1112)
!1114 = !DILocation(line: 93, column: 44, scope: !1108, inlinedAt: !1112)
!1115 = !DILocation(line: 93, column: 49, scope: !1108, inlinedAt: !1112)
!1116 = !DILocation(line: 93, column: 15, scope: !1108, inlinedAt: !1112)
!1117 = !DILocation(line: 291, column: 21, scope: !1102)
!1118 = !DILocation(line: 292, column: 69, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !5, line: 291, column: 50)
!1120 = distinct !DILexicalBlock(scope: !1103, file: !5, line: 291, column: 32)
!1121 = !DILocation(line: 292, column: 52, scope: !1119)
!1122 = !DILocalVariable(name: "this", arg: 1, scope: !1123, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1123 = distinct !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE23write_float16_from_bitsEt", scope: !335, file: !208, line: 102, type: !373, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !372, retainedNodes: !1124)
!1124 = !{!1122, !1125, !1126}
!1125 = !DILocalVariable(name: "arg", arg: 2, scope: !1123, file: !208, line: 102, type: !259)
!1126 = !DILocalVariable(name: "value", scope: !1123, file: !208, line: 103, type: !248)
!1127 = !DILocation(line: 0, scope: !1123, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 292, column: 28, scope: !1119)
!1129 = !DILocation(line: 103, column: 24, scope: !1123, inlinedAt: !1128)
!1130 = !DILocation(line: 104, column: 39, scope: !1123, inlinedAt: !1128)
!1131 = !DILocation(line: 104, column: 44, scope: !1123, inlinedAt: !1128)
!1132 = !DILocation(line: 104, column: 15, scope: !1123, inlinedAt: !1128)
!1133 = !DILocation(line: 293, column: 21, scope: !1119)
!1134 = !DILocation(line: 294, column: 46, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1120, file: !5, line: 293, column: 28)
!1136 = !DILocation(line: 294, column: 31, scope: !1135)
!1137 = !{!1138, !1138, i64 0}
!1138 = !{!"double", !430, i64 0}
!1139 = !DILocalVariable(name: "this", arg: 1, scope: !1140, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1140 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEd", scope: !335, file: !208, line: 87, type: !364, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !363, retainedNodes: !1141)
!1141 = !{!1139, !1142}
!1142 = !DILocalVariable(name: "arg", arg: 2, scope: !1140, file: !208, line: 87, type: !248)
!1143 = !DILocation(line: 0, scope: !1140, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 294, column: 28, scope: !1135)
!1145 = !DILocation(line: 88, column: 39, scope: !1140, inlinedAt: !1144)
!1146 = !DILocation(line: 88, column: 44, scope: !1140, inlinedAt: !1144)
!1147 = !DILocation(line: 88, column: 15, scope: !1140, inlinedAt: !1144)
!1148 = !DILocation(line: 297, column: 41, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !5, line: 296, column: 47)
!1150 = distinct !DILexicalBlock(scope: !1096, file: !5, line: 296, column: 28)
!1151 = !DILocation(line: 297, column: 27, scope: !1149)
!1152 = !DILocalVariable(name: "this", arg: 1, scope: !1153, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1153 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EElsEPKv", scope: !335, file: !208, line: 97, type: !370, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !369, retainedNodes: !1154)
!1154 = !{!1152, !1155}
!1155 = !DILocalVariable(name: "arg", arg: 2, scope: !1153, file: !208, line: 97, type: !125)
!1156 = !DILocation(line: 0, scope: !1153, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 297, column: 24, scope: !1149)
!1158 = !DILocation(line: 98, column: 45, scope: !1153, inlinedAt: !1157)
!1159 = !DILocation(line: 98, column: 15, scope: !1153, inlinedAt: !1157)
!1160 = !DILocation(line: 298, column: 17, scope: !1149)
!1161 = !DILocation(line: 0, scope: !996)
!1162 = !DILocation(line: 263, column: 49, scope: !978)
!1163 = !DILocation(line: 263, column: 33, scope: !978)
!1164 = distinct !{!1164, !980, !1165, !503}
!1165 = !DILocation(line: 299, column: 13, scope: !411)
!1166 = !DILocation(line: 0, scope: !860, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 301, column: 20, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !982, file: !5, line: 300, column: 36)
!1169 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !1167)
!1170 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !1167)
!1171 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !1167)
!1172 = !DILocation(line: 302, column: 13, scope: !1168)
!1173 = !DILocation(line: 305, column: 16, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !330, file: !5, line: 305, column: 13)
!1175 = !DILocation(line: 305, column: 13, scope: !1174)
!1176 = !DILocation(line: 305, column: 26, scope: !1174)
!1177 = !DILocation(line: 305, column: 29, scope: !1174)
!1178 = !DILocation(line: 305, column: 13, scope: !330)
!1179 = !DILocation(line: 0, scope: !860, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 306, column: 16, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !5, line: 305, column: 44)
!1182 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !1180)
!1183 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !1180)
!1184 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !1180)
!1185 = !DILocation(line: 306, column: 37, scope: !1181)
!1186 = !DILocation(line: 0, scope: !860, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 306, column: 31, scope: !1181)
!1188 = !DILocation(line: 59, column: 17, scope: !859, inlinedAt: !1187)
!1189 = !DILocation(line: 0, scope: !859, inlinedAt: !1187)
!1190 = !DILocation(line: 59, column: 13, scope: !860, inlinedAt: !1187)
!1191 = !DILocation(line: 60, column: 19, scope: !885, inlinedAt: !1187)
!1192 = !DILocation(line: 61, column: 9, scope: !885, inlinedAt: !1187)
!1193 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !1187)
!1194 = !DILocation(line: 0, scope: !860, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 306, column: 47, scope: !1181)
!1196 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !1195)
!1197 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !1195)
!1198 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !1195)
!1199 = !DILocation(line: 307, column: 9, scope: !1181)
!1200 = !DILocation(line: 62, column: 43, scope: !858, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 309, column: 12, scope: !330)
!1202 = !DILocation(line: 0, scope: !860, inlinedAt: !1201)
!1203 = !DILocation(line: 62, column: 48, scope: !858, inlinedAt: !1201)
!1204 = !DILocation(line: 62, column: 19, scope: !858, inlinedAt: !1201)
!1205 = !DILocation(line: 62, column: 17, scope: !858, inlinedAt: !1201)
!1206 = !DILocation(line: 310, column: 12, scope: !330)
!1207 = !{!823, !429, i64 0}
!1208 = !DILocalVariable(name: "this", arg: 1, scope: !1209, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1209 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EE28msan_annotate_is_initializedEv", scope: !335, file: !208, line: 162, type: !385, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !397, retainedNodes: !1210)
!1210 = !{!1208}
!1211 = !DILocation(line: 0, scope: !1209, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 310, column: 12, scope: !330)
!1213 = !DILocation(line: 163, column: 81, scope: !1209, inlinedAt: !1212)
!1214 = !DILocation(line: 163, column: 87, scope: !1209, inlinedAt: !1212)
!1215 = !DILocation(line: 163, column: 77, scope: !1209, inlinedAt: !1212)
!1216 = !DILocation(line: 163, column: 15, scope: !1209, inlinedAt: !1212)
!1217 = !DILocalVariable(name: "this", arg: 1, scope: !1218, type: !1221, flags: DIFlagArtificial | DIFlagObjectPointer)
!1218 = distinct !DISubprogram(name: "ScopedSpinLock", linkageName: "_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVc", scope: !163, file: !162, line: 15, type: !170, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !169, retainedNodes: !1219)
!1219 = !{!1217, !1220}
!1220 = !DILocalVariable(name: "flag", arg: 2, scope: !1218, file: !162, line: 15, type: !167)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!1222 = !DILocation(line: 0, scope: !1218, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 313, column: 28, scope: !415)
!1224 = !DILocation(line: 0, scope: !415)
!1225 = !DILocation(line: 17, column: 9, scope: !1226, inlinedAt: !1223)
!1226 = distinct !DILexicalBlock(scope: !1218, file: !162, line: 16, column: 22)
!1227 = !DILocation(line: 17, column: 16, scope: !1226, inlinedAt: !1223)
!1228 = distinct !{!1228, !1225, !1229, !503}
!1229 = !DILocation(line: 19, column: 9, scope: !1226, inlinedAt: !1223)
!1230 = !DILocation(line: 314, column: 13, scope: !415)
!1231 = !DILocalVariable(name: "this", arg: 1, scope: !1232, type: !1221, flags: DIFlagArtificial | DIFlagObjectPointer)
!1232 = distinct !DISubprogram(name: "~ScopedSpinLock", linkageName: "_ZN6Halide7Runtime8Internal14ScopedSpinLockD2Ev", scope: !163, file: !162, line: 22, type: !174, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !173, retainedNodes: !1233)
!1233 = !{!1231}
!1234 = !DILocation(line: 0, scope: !1232, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 315, column: 9, scope: !330)
!1236 = !DILocation(line: 23, column: 9, scope: !1237, inlinedAt: !1235)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !162, line: 22, column: 37)
!1238 = !DILocalVariable(name: "this", arg: 1, scope: !1239, type: !818, flags: DIFlagArtificial | DIFlagObjectPointer)
!1239 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EED2Ev", scope: !335, file: !208, line: 166, type: !385, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !203, declaration: !398, retainedNodes: !1240)
!1240 = !{!1238}
!1241 = !DILocation(line: 0, scope: !1239, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 316, column: 5, scope: !321)
!1243 = !DILocation(line: 167, column: 14, scope: !1244, inlinedAt: !1242)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !208, line: 167, column: 13)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !208, line: 166, column: 16)
!1246 = !DILocation(line: 167, column: 13, scope: !1245, inlinedAt: !1242)
!1247 = !DILocation(line: 168, column: 26, scope: !1248, inlinedAt: !1242)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !208, line: 167, column: 19)
!1249 = !DILocation(line: 168, column: 13, scope: !1248, inlinedAt: !1242)
!1250 = !DILocation(line: 169, column: 9, scope: !1248, inlinedAt: !1242)
!1251 = !DILocation(line: 170, column: 13, scope: !1252, inlinedAt: !1242)
!1252 = distinct !DILexicalBlock(scope: !1244, file: !208, line: 169, column: 16)
!1253 = !DILocation(line: 0, scope: !1209, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 170, column: 13, scope: !1252, inlinedAt: !1242)
!1255 = !DILocation(line: 163, column: 81, scope: !1209, inlinedAt: !1254)
!1256 = !DILocation(line: 163, column: 87, scope: !1209, inlinedAt: !1254)
!1257 = !DILocation(line: 163, column: 77, scope: !1209, inlinedAt: !1254)
!1258 = !DILocation(line: 163, column: 15, scope: !1209, inlinedAt: !1254)
!1259 = !DILocation(line: 180, column: 13, scope: !1260, inlinedAt: !1242)
!1260 = distinct !DILexicalBlock(scope: !1245, file: !208, line: 180, column: 13)
!1261 = !{i8 0, i8 2}
!1262 = !DILocation(line: 180, column: 21, scope: !1260, inlinedAt: !1242)
!1263 = !DILocation(line: 180, column: 24, scope: !1260, inlinedAt: !1242)
!1264 = !DILocation(line: 180, column: 31, scope: !1260, inlinedAt: !1242)
!1265 = !DILocation(line: 180, column: 28, scope: !1260, inlinedAt: !1242)
!1266 = !DILocation(line: 180, column: 13, scope: !1245, inlinedAt: !1242)
!1267 = !DILocation(line: 181, column: 13, scope: !1268, inlinedAt: !1242)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !208, line: 180, column: 40)
!1269 = !DILocation(line: 182, column: 9, scope: !1268, inlinedAt: !1242)
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
!1285 = !DILocation(line: 0, scope: !1218, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 348, column: 20, scope: !1272)
!1287 = !DILocation(line: 17, column: 9, scope: !1226, inlinedAt: !1286)
!1288 = !DILocation(line: 17, column: 16, scope: !1226, inlinedAt: !1286)
!1289 = distinct !{!1289, !1287, !1290, !503}
!1290 = !DILocation(line: 19, column: 9, scope: !1226, inlinedAt: !1286)
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
!1324 = !DILocalVariable(name: "this", arg: 1, scope: !1325, type: !484, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!1335 = !DILocation(line: 0, scope: !1232, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 365, column: 1, scope: !1272)
!1337 = !DILocation(line: 23, column: 9, scope: !1237, inlinedAt: !1336)
!1338 = !DILocation(line: 365, column: 1, scope: !1272)
!1339 = !DISubprogram(name: "strlen", scope: !15, file: !15, line: 92, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!16, !134}
!1342 = !{}
!1343 = !DISubprogram(name: "memcpy", scope: !15, file: !15, line: 94, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!130, !130, !125, !16}
!1346 = !DISubprogram(name: "halide_print", scope: !43, file: !43, line: 97, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !130, !134}
!1349 = !DISubprogram(name: "abort", scope: !15, file: !15, line: 108, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null}
!1352 = distinct !DISubprogram(name: "halide_set_custom_trace", scope: !5, file: !5, line: 335, type: !1353, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!308, !308}
!1355 = !{!1356, !1357}
!1356 = !DILocalVariable(name: "t", arg: 1, scope: !1352, file: !5, line: 335, type: !308)
!1357 = !DILocalVariable(name: "result", scope: !1352, file: !5, line: 336, type: !308)
!1358 = !DILocation(line: 0, scope: !1352)
!1359 = !DILocation(line: 336, column: 23, scope: !1352)
!1360 = !DILocation(line: 337, column: 25, scope: !1352)
!1361 = !DILocation(line: 338, column: 5, scope: !1352)
!1362 = distinct !DISubprogram(name: "halide_set_trace_file", scope: !5, file: !5, line: 341, type: !1363, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !48}
!1365 = !{!1366}
!1366 = !DILocalVariable(name: "fd", arg: 1, scope: !1362, file: !5, line: 341, type: !48)
!1367 = !DILocation(line: 0, scope: !1362)
!1368 = !DILocation(line: 342, column: 23, scope: !1362)
!1369 = !DILocation(line: 343, column: 1, scope: !1362)
!1370 = !DISubprogram(name: "getenv", scope: !15, file: !15, line: 85, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!140, !134}
!1373 = !DISubprogram(name: "fopen", scope: !15, file: !15, line: 99, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!130, !134, !134}
!1376 = !DISubprogram(name: "fileno", scope: !15, file: !15, line: 100, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1377 = !DISubprogram(name: "malloc", scope: !15, file: !15, line: 87, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!130, !16}
!1380 = distinct !DISubprogram(name: "halide_trace", scope: !5, file: !5, line: 367, type: !183, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1381)
!1381 = !{!1382, !1383}
!1382 = !DILocalVariable(name: "user_context", arg: 1, scope: !1380, file: !5, line: 367, type: !130)
!1383 = !DILocalVariable(name: "e", arg: 2, scope: !1380, file: !5, line: 367, type: !185)
!1384 = !DILocation(line: 0, scope: !1380)
!1385 = !DILocation(line: 368, column: 14, scope: !1380)
!1386 = !DILocation(line: 368, column: 12, scope: !1380)
!1387 = !DILocation(line: 368, column: 5, scope: !1380)
!1388 = distinct !DISubprogram(name: "halide_shutdown_trace", scope: !5, file: !5, line: 371, type: !1389, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!48}
!1391 = !{!1392}
!1392 = !DILocalVariable(name: "ret", scope: !1393, file: !5, line: 373, type: !48)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !5, line: 372, column: 46)
!1394 = distinct !DILexicalBlock(scope: !1388, file: !5, line: 372, column: 9)
!1395 = !DILocation(line: 372, column: 9, scope: !1394)
!1396 = !DILocation(line: 372, column: 9, scope: !1388)
!1397 = !DILocation(line: 373, column: 19, scope: !1393)
!1398 = !DILocation(line: 0, scope: !1393)
!1399 = !DILocation(line: 374, column: 27, scope: !1393)
!1400 = !DILocation(line: 375, column: 39, scope: !1393)
!1401 = !{!824, !824, i64 0}
!1402 = !DILocation(line: 376, column: 45, scope: !1393)
!1403 = !DILocation(line: 377, column: 13, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1393, file: !5, line: 377, column: 13)
!1405 = !DILocation(line: 377, column: 13, scope: !1393)
!1406 = !DILocation(line: 378, column: 18, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !5, line: 377, column: 34)
!1408 = !DILocation(line: 378, column: 13, scope: !1407)
!1409 = !DILocation(line: 379, column: 9, scope: !1407)
!1410 = !DILocation(line: 0, scope: !1394)
!1411 = !DILocation(line: 384, column: 1, scope: !1388)
!1412 = !DISubprogram(name: "fclose", scope: !15, file: !15, line: 101, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1413 = !DISubprogram(name: "free", scope: !15, file: !15, line: 86, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !130}
!1416 = distinct !DISubprogram(name: "halide_trace_cleanup", scope: !1417, file: !5, line: 387, type: !1350, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1342)
!1417 = !DINamespace(scope: null)
!1418 = !DILocation(line: 388, column: 5, scope: !1416)
!1419 = !DILocation(line: 389, column: 1, scope: !1416)
!1420 = !DISubprogram(name: "write", scope: !15, file: !15, line: 104, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!48, !48, !125, !16}
!1423 = !DISubprogram(name: "halide_error", scope: !43, file: !43, line: 111, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1424 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !43, file: !43, line: 973, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!48, !130, !125, !241}
!1427 = !DISubprogram(name: "halide_uint64_to_string", scope: !15, file: !15, line: 123, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!140, !140, !140, !241, !48}
!1430 = !DISubprogram(name: "halide_string_to_string", scope: !15, file: !15, line: 120, type: !1431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!140, !140, !140, !134}
!1433 = !DISubprogram(name: "halide_int64_to_string", scope: !15, file: !15, line: 122, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!140, !140, !140, !233, !48}
!1436 = !DISubprogram(name: "halide_double_to_string", scope: !15, file: !15, line: 121, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!140, !140, !140, !248, !48}
!1439 = !DISubprogram(name: "halide_float16_bits_to_double", scope: !43, file: !43, line: 1846, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!248, !64}
!1442 = !DISubprogram(name: "halide_pointer_to_string", scope: !15, file: !15, line: 124, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1342)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!140, !140, !140, !125}
