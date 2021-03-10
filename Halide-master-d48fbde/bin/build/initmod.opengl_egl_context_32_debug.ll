; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>

@.str = private unnamed_addr constant [19 x i8] c"eglQueryDevicesEXT\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"eglGetPlatformDisplayEXT\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not initialize EGL display: \00", align 1
@__const.halide_opengl_create_context.attribs = private unnamed_addr constant [13 x i32] [i32 12339, i32 1, i32 12352, i32 4, i32 12324, i32 8, i32 12323, i32 8, i32 12322, i32 8, i32 12321, i32 8, i32 12344], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"eglChooseConfig(): config not found: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" result=\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" eglGetError=\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" numConfig=\00", align 1
@__const.halide_opengl_create_context.context_attribs = private unnamed_addr constant [3 x i32] [i32 12440, i32 2, i32 12344], align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Error: eglCreateContext failed: \00", align 1
@__const.halide_opengl_create_context.surface_attribs = private unnamed_addr constant [5 x i32] [i32 12375, i32 1, i32 12374, i32 1, i32 12344], align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Error: Could not create EGL window surface: \00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"eglMakeCurrent fails: \00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind
define weak dso_local i32 @halide_opengl_create_context(i8* %0) local_unnamed_addr #0 !dbg !173 {
  %2 = alloca [32 x i8*], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [13 x i32], align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [5 x i32], align 4
  %12 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()), !dbg !218
  %13 = tail call i8* @eglGetCurrentContext() #5, !dbg !219
  %14 = icmp eq i8* %13, null, !dbg !221
  br i1 %14, label %15, label %244, !dbg !222

15:                                               ; preds = %1
  %16 = tail call i8* @eglGetDisplay(i8* null) #5, !dbg !223
  call void @llvm.dbg.value(metadata i8* %16, metadata !178, metadata !DIExpression()), !dbg !218
  %17 = icmp eq i8* %16, null, !dbg !224
  br i1 %17, label %21, label %18, !dbg !225

18:                                               ; preds = %15
  %19 = tail call i32 @eglInitialize(i8* nonnull %16, i32* null, i32* null) #5, !dbg !226
  %20 = icmp eq i32 %19, 0, !dbg !226
  br i1 %20, label %21, label %94, !dbg !227

21:                                               ; preds = %18, %15
  %22 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5, !dbg !228
  %23 = bitcast i8* %22 to i32 (i32, i8**, i32*)*, !dbg !229
  call void @llvm.dbg.value(metadata i32 (i32, i8**, i32*)* %23, metadata !179, metadata !DIExpression()), !dbg !230
  %24 = icmp eq i8* %22, null, !dbg !231
  br i1 %24, label %244, label %25, !dbg !233

25:                                               ; preds = %21
  %26 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !234
  %27 = bitcast i8* %26 to i8* (i32, i8*, i32*)*, !dbg !235
  call void @llvm.dbg.value(metadata i8* (i32, i8*, i32*)* %27, metadata !182, metadata !DIExpression()), !dbg !230
  %28 = icmp eq i8* %26, null, !dbg !236
  br i1 %28, label %244, label %29, !dbg !238

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 32, metadata !183, metadata !DIExpression()), !dbg !230
  %30 = bitcast [32 x i8*]* %2 to i8*, !dbg !239
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #6, !dbg !239
  call void @llvm.dbg.declare(metadata [32 x i8*]* %2, metadata !185, metadata !DIExpression()), !dbg !240
  %31 = bitcast i32* %3 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #6, !dbg !241
  call void @llvm.dbg.value(metadata i32 0, metadata !189, metadata !DIExpression()), !dbg !230
  store i32 0, i32* %3, align 4, !dbg !242, !tbaa !243
  %32 = tail call i32 @eglGetError() #5, !dbg !247
  call void @llvm.dbg.value(metadata i32 %32, metadata !190, metadata !DIExpression()), !dbg !230
  %33 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i32 0, i32 0, !dbg !248
  call void @llvm.dbg.value(metadata i32* %3, metadata !189, metadata !DIExpression(DW_OP_deref)), !dbg !230
  %34 = call i32 %23(i32 32, i8** nonnull %33, i32* nonnull %3) #5, !dbg !250
  %35 = icmp eq i32 %34, 0, !dbg !250
  %36 = icmp ne i32 %32, 12288
  %37 = or i1 %36, %35, !dbg !251
  br i1 %37, label %92, label %38, !dbg !251

38:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8* %16, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !230
  %39 = load i32, i32* %3, align 4, !dbg !253, !tbaa !243
  call void @llvm.dbg.value(metadata i32 %39, metadata !189, metadata !DIExpression()), !dbg !230
  %40 = icmp sgt i32 %39, 0, !dbg !254
  br i1 %40, label %41, label %65, !dbg !255

41:                                               ; preds = %38
  %42 = bitcast i32* %4 to i8*
  %43 = bitcast i32* %5 to i8*
  br label %44, !dbg !255

44:                                               ; preds = %41, %60
  %45 = phi i32 [ 0, %41 ], [ %62, %60 ]
  %46 = phi i32 [ 0, %41 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !192, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 %46, metadata !191, metadata !DIExpression()), !dbg !230
  %47 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i32 0, i32 %45, !dbg !256
  %48 = load i8*, i8** %47, align 4, !dbg !256, !tbaa !257
  %49 = call i8* %27(i32 12607, i8* %48, i32* null) #5, !dbg !259
  call void @llvm.dbg.value(metadata i8* %49, metadata !178, metadata !DIExpression()), !dbg !218
  %50 = call i32 @eglGetError() #5, !dbg !260
  %51 = icmp eq i32 %50, 12288, !dbg !261
  %52 = icmp ne i8* %49, null
  %53 = and i1 %52, %51, !dbg !262
  br i1 %53, label %54, label %60, !dbg !262

54:                                               ; preds = %44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #6, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #6, !dbg !263
  call void @llvm.dbg.value(metadata i32* %4, metadata !194, metadata !DIExpression(DW_OP_deref)), !dbg !264
  call void @llvm.dbg.value(metadata i32* %5, metadata !199, metadata !DIExpression(DW_OP_deref)), !dbg !264
  %55 = call i32 @eglInitialize(i8* nonnull %49, i32* nonnull %4, i32* nonnull %5) #5, !dbg !265
  call void @llvm.dbg.value(metadata i32 %55, metadata !191, metadata !DIExpression()), !dbg !230
  %56 = call i32 @eglGetError() #5, !dbg !266
  %57 = icmp eq i32 %56, 12288, !dbg !268
  %58 = icmp eq i32 %55, 1
  %59 = and i1 %58, %57, !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #6, !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #6, !dbg !269
  br i1 %59, label %65, label %60

60:                                               ; preds = %44, %54
  %61 = phi i32 [ %55, %54 ], [ %46, %44 ], !dbg !230
  call void @llvm.dbg.value(metadata i32 %61, metadata !191, metadata !DIExpression()), !dbg !230
  %62 = add nuw nsw i32 %45, 1, !dbg !270
  call void @llvm.dbg.value(metadata i8* %49, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %62, metadata !192, metadata !DIExpression()), !dbg !252
  %63 = load i32, i32* %3, align 4, !dbg !253, !tbaa !243
  call void @llvm.dbg.value(metadata i32 %63, metadata !189, metadata !DIExpression()), !dbg !230
  %64 = icmp slt i32 %62, %63, !dbg !254
  br i1 %64, label %44, label %65, !dbg !255, !llvm.loop !271

65:                                               ; preds = %54, %60, %38
  %66 = phi i32 [ 0, %38 ], [ %61, %60 ], [ 1, %54 ], !dbg !230
  %67 = phi i8* [ %16, %38 ], [ %49, %60 ], [ %49, %54 ], !dbg !218
  call void @llvm.dbg.value(metadata i8* %67, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %66, metadata !191, metadata !DIExpression()), !dbg !230
  %68 = call i32 @eglGetError() #5, !dbg !274
  %69 = icmp ne i32 %68, 12288, !dbg !276
  %70 = icmp ne i32 %66, 1
  %71 = or i1 %70, %69, !dbg !277
  br i1 %71, label %72, label %93, !dbg !277

72:                                               ; preds = %65
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !278, metadata !DIExpression()) #6, !dbg !284
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !284
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !284
  %73 = call i8* @malloc(i32 1024) #5, !dbg !287
  %74 = icmp eq i8* %73, null, !dbg !292
  br i1 %74, label %77, label %75, !dbg !294

75:                                               ; preds = %72
  %76 = getelementptr inbounds i8, i8* %73, i32 1023, !dbg !295
  store i8 0, i8* %76, align 1, !dbg !297, !tbaa !298
  br label %77, !dbg !299

77:                                               ; preds = %72, %75
  %78 = phi i8* [ %76, %75 ], [ null, %72 ], !dbg !300
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !301, metadata !DIExpression()) #6, !dbg !305
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !305
  %79 = call i8* @halide_string_to_string(i8* %73, i8* %78, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !307
  %80 = call i32 @eglGetError() #5, !dbg !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !311, metadata !DIExpression()) #6, !dbg !315
  call void @llvm.dbg.value(metadata i32 %80, metadata !314, metadata !DIExpression()) #6, !dbg !315
  %81 = sext i32 %80 to i64, !dbg !317
  %82 = call i8* @halide_int64_to_string(i8* %79, i8* %78, i64 %81, i32 1) #5, !dbg !318
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #6, !dbg !322
  br i1 %74, label %83, label %84, !dbg !324

83:                                               ; preds = %77
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !326
  br label %91, !dbg !329

84:                                               ; preds = %77
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !333
  %85 = ptrtoint i8* %82 to i32, !dbg !336
  %86 = ptrtoint i8* %73 to i32, !dbg !336
  %87 = add i32 %85, 1, !dbg !336
  %88 = sub i32 %87, %86, !dbg !337
  %89 = sext i32 %88 to i64, !dbg !338
  %90 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %73, i64 %89) #5, !dbg !339
  call void @halide_error(i8* %0, i8* nonnull %73) #5, !dbg !340
  br label %91

91:                                               ; preds = %84, %83
  call void @free(i8* %73) #5, !dbg !343
  br label %92, !dbg !346

92:                                               ; preds = %29, %91
  call void @llvm.dbg.value(metadata i8* %67, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #6, !dbg !347
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #6, !dbg !347
  br label %244

93:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8* %67, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #6, !dbg !347
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #6, !dbg !347
  br label %94

94:                                               ; preds = %93, %18
  %95 = phi i8* [ %67, %93 ], [ %16, %18 ], !dbg !348
  call void @llvm.dbg.value(metadata i8* %95, metadata !178, metadata !DIExpression()), !dbg !218
  %96 = bitcast [13 x i32]* %6 to i8*, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %96) #6, !dbg !349
  call void @llvm.dbg.declare(metadata [13 x i32]* %6, metadata !200, metadata !DIExpression()), !dbg !350
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(52) %96, i8* nonnull align 4 dereferenceable(52) bitcast ([13 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i32 52, i1 false), !dbg !350
  %97 = bitcast i8** %7 to i8*, !dbg !351
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %97) #6, !dbg !351
  %98 = bitcast i32* %8 to i8*, !dbg !352
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %98) #6, !dbg !352
  %99 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i32 0, i32 0, !dbg !353
  call void @llvm.dbg.value(metadata i8** %7, metadata !204, metadata !DIExpression(DW_OP_deref)), !dbg !218
  call void @llvm.dbg.value(metadata i32* %8, metadata !206, metadata !DIExpression(DW_OP_deref)), !dbg !218
  %100 = call i32 @eglChooseConfig(i8* %95, i32* nonnull %99, i8** nonnull %7, i32 1, i32* nonnull %8) #5, !dbg !354
  call void @llvm.dbg.value(metadata i32 %100, metadata !207, metadata !DIExpression()), !dbg !218
  %101 = icmp ne i32 %100, 1, !dbg !355
  %102 = load i32, i32* %8, align 4
  call void @llvm.dbg.value(metadata i32 %102, metadata !206, metadata !DIExpression()), !dbg !218
  %103 = icmp ne i32 %102, 1
  %104 = or i1 %101, %103, !dbg !357
  br i1 %104, label %105, label %146, !dbg !357

105:                                              ; preds = %94
  %106 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*, !dbg !358
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %106) #6, !dbg !358
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !278, metadata !DIExpression()) #6, !dbg !360
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !360
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !360
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 3, !dbg !362
  store i8* %0, i8** %107, align 4, !dbg !362, !tbaa !363
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 4, !dbg !366
  store i8 1, i8* %108, align 4, !dbg !366, !tbaa !367
  %109 = call i8* @malloc(i32 1024) #5, !dbg !368
  %110 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 0, !dbg !369
  store i8* %109, i8** %110, align 4, !dbg !370, !tbaa !371
  %111 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 1, !dbg !372
  %112 = icmp eq i8* %109, null, !dbg !373
  br i1 %112, label %115, label %113, !dbg !374

113:                                              ; preds = %105
  %114 = getelementptr inbounds i8, i8* %109, i32 1023, !dbg !375
  store i8 0, i8* %114, align 1, !dbg !376, !tbaa !298
  br label %115, !dbg !377

115:                                              ; preds = %105, %113
  %116 = phi i8* [ %114, %113 ], [ null, %105 ], !dbg !378
  %117 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i32 0, i32 2, !dbg !379
  store i8* %116, i8** %117, align 4, !dbg !381
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !382
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !382
  %118 = call i8* @halide_string_to_string(i8* %109, i8* %116, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !384
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !385
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !385
  %119 = call i8* @halide_string_to_string(i8* %118, i8* %116, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !387
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !311, metadata !DIExpression()) #6, !dbg !388
  call void @llvm.dbg.value(metadata i32 %100, metadata !314, metadata !DIExpression()) #6, !dbg !388
  %120 = sext i32 %100 to i64, !dbg !390
  %121 = call i8* @halide_int64_to_string(i8* %119, i8* %116, i64 %120, i32 1) #5, !dbg !391
  store i8* %121, i8** %111, align 4, !dbg !392, !tbaa !393
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !394
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !394
  %122 = call i8* @halide_string_to_string(i8* %121, i8* %116, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !396
  %123 = call i32 @eglGetError() #5, !dbg !397
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !311, metadata !DIExpression()) #6, !dbg !398
  call void @llvm.dbg.value(metadata i32 %123, metadata !314, metadata !DIExpression()) #6, !dbg !398
  %124 = sext i32 %123 to i64, !dbg !400
  %125 = call i8* @halide_int64_to_string(i8* %122, i8* %116, i64 %124, i32 1) #5, !dbg !401
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !402
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !402
  %126 = call i8* @halide_string_to_string(i8* %125, i8* %116, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #5, !dbg !404
  %127 = load i32, i32* %8, align 4, !dbg !405, !tbaa !243
  call void @llvm.dbg.value(metadata i32 %127, metadata !206, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !311, metadata !DIExpression()) #6, !dbg !406
  call void @llvm.dbg.value(metadata i32 %127, metadata !314, metadata !DIExpression()) #6, !dbg !406
  %128 = sext i32 %127 to i64, !dbg !408
  %129 = call i8* @halide_int64_to_string(i8* %126, i8* %116, i64 %128, i32 1) #5, !dbg !409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !319, metadata !DIExpression()) #6, !dbg !410
  br i1 %112, label %130, label %131, !dbg !412

130:                                              ; preds = %115
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !413
  br label %140, !dbg !414

131:                                              ; preds = %115
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !415
  %132 = ptrtoint i8* %129 to i32, !dbg !417
  %133 = ptrtoint i8* %109 to i32, !dbg !417
  %134 = add i32 %132, 1, !dbg !417
  %135 = sub i32 %134, %133, !dbg !418
  %136 = sext i32 %135 to i64, !dbg !419
  %137 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %109, i64 %136) #5, !dbg !420
  %138 = load i8*, i8** %107, align 4, !dbg !421, !tbaa !363
  %139 = load i8*, i8** %110, align 4, !dbg !422, !tbaa !371
  call void @halide_error(i8* %138, i8* %139) #5, !dbg !423
  br label %140

140:                                              ; preds = %131, %130
  %141 = load i8, i8* %108, align 4, !dbg !424, !tbaa !367, !range !425
  %142 = icmp eq i8 %141, 0, !dbg !424
  br i1 %142, label %145, label %143, !dbg !426

143:                                              ; preds = %140
  %144 = load i8*, i8** %110, align 4, !dbg !427, !tbaa !371
  call void @free(i8* %144) #5, !dbg !428
  br label %145, !dbg !429

145:                                              ; preds = %140, %143
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %106) #6, !dbg !358
  br label %242, !dbg !430

146:                                              ; preds = %94
  %147 = bitcast [3 x i32]* %10 to i8*, !dbg !431
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %147) #6, !dbg !431
  call void @llvm.dbg.declare(metadata [3 x i32]* %10, metadata !208, metadata !DIExpression()), !dbg !432
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(12) %147, i8* nonnull align 4 dereferenceable(12) bitcast ([3 x i32]* @__const.halide_opengl_create_context.context_attribs to i8*), i32 12, i1 false), !dbg !432
  %148 = load i8*, i8** %7, align 4, !dbg !433, !tbaa !257
  call void @llvm.dbg.value(metadata i8* %148, metadata !204, metadata !DIExpression()), !dbg !218
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i32 0, i32 0, !dbg !434
  %150 = call i8* @eglCreateContext(i8* %95, i8* %148, i8* null, i32* nonnull %149) #5, !dbg !435
  call void @llvm.dbg.value(metadata i8* %150, metadata !212, metadata !DIExpression()), !dbg !218
  %151 = icmp eq i8* %150, null, !dbg !436
  br i1 %151, label %152, label %172, !dbg !438

152:                                              ; preds = %146
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !278, metadata !DIExpression()) #6, !dbg !439
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !439
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !439
  %153 = call i8* @malloc(i32 1024) #5, !dbg !442
  %154 = icmp eq i8* %153, null, !dbg !443
  br i1 %154, label %157, label %155, !dbg !444

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, i8* %153, i32 1023, !dbg !445
  store i8 0, i8* %156, align 1, !dbg !446, !tbaa !298
  br label %157, !dbg !447

157:                                              ; preds = %152, %155
  %158 = phi i8* [ %156, %155 ], [ null, %152 ], !dbg !448
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !301, metadata !DIExpression()) #6, !dbg !449
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !449
  %159 = call i8* @halide_string_to_string(i8* %153, i8* %158, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0)) #5, !dbg !451
  %160 = call i32 @eglGetError() #5, !dbg !452
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !311, metadata !DIExpression()) #6, !dbg !453
  call void @llvm.dbg.value(metadata i32 %160, metadata !314, metadata !DIExpression()) #6, !dbg !453
  %161 = sext i32 %160 to i64, !dbg !455
  %162 = call i8* @halide_int64_to_string(i8* %159, i8* %158, i64 %161, i32 1) #5, !dbg !456
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #6, !dbg !457
  br i1 %154, label %163, label %164, !dbg !459

163:                                              ; preds = %157
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !460
  br label %171, !dbg !461

164:                                              ; preds = %157
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !462
  %165 = ptrtoint i8* %162 to i32, !dbg !464
  %166 = ptrtoint i8* %153 to i32, !dbg !464
  %167 = add i32 %165, 1, !dbg !464
  %168 = sub i32 %167, %166, !dbg !465
  %169 = sext i32 %168 to i64, !dbg !466
  %170 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %153, i64 %169) #5, !dbg !467
  call void @halide_error(i8* %0, i8* nonnull %153) #5, !dbg !468
  br label %171

171:                                              ; preds = %164, %163
  call void @free(i8* %153) #5, !dbg !469
  br label %240, !dbg !470

172:                                              ; preds = %146
  %173 = bitcast [5 x i32]* %11 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %173) #6, !dbg !471
  call void @llvm.dbg.declare(metadata [5 x i32]* %11, metadata !213, metadata !DIExpression()), !dbg !472
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) %173, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.surface_attribs to i8*), i32 20, i1 false), !dbg !472
  %174 = load i8*, i8** %7, align 4, !dbg !473, !tbaa !257
  call void @llvm.dbg.value(metadata i8* %174, metadata !204, metadata !DIExpression()), !dbg !218
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i32 0, i32 0, !dbg !474
  %176 = call i8* @eglCreatePbufferSurface(i8* %95, i8* %174, i32* nonnull %175) #5, !dbg !475
  call void @llvm.dbg.value(metadata i8* %176, metadata !217, metadata !DIExpression()), !dbg !218
  %177 = icmp eq i8* %176, null, !dbg !476
  br i1 %177, label %178, label %198, !dbg !478

178:                                              ; preds = %172
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !278, metadata !DIExpression()) #6, !dbg !479
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !479
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !479
  %179 = call i8* @malloc(i32 1024) #5, !dbg !482
  %180 = icmp eq i8* %179, null, !dbg !483
  br i1 %180, label %183, label %181, !dbg !484

181:                                              ; preds = %178
  %182 = getelementptr inbounds i8, i8* %179, i32 1023, !dbg !485
  store i8 0, i8* %182, align 1, !dbg !486, !tbaa !298
  br label %183, !dbg !487

183:                                              ; preds = %178, %181
  %184 = phi i8* [ %182, %181 ], [ null, %178 ], !dbg !488
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !301, metadata !DIExpression()) #6, !dbg !489
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !489
  %185 = call i8* @halide_string_to_string(i8* %179, i8* %184, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !491
  %186 = call i32 @eglGetError() #5, !dbg !492
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !311, metadata !DIExpression()) #6, !dbg !493
  call void @llvm.dbg.value(metadata i32 %186, metadata !314, metadata !DIExpression()) #6, !dbg !493
  %187 = sext i32 %186 to i64, !dbg !495
  %188 = call i8* @halide_int64_to_string(i8* %185, i8* %184, i64 %187, i32 1) #5, !dbg !496
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #6, !dbg !497
  br i1 %180, label %189, label %190, !dbg !499

189:                                              ; preds = %183
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !500
  br label %197, !dbg !501

190:                                              ; preds = %183
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !502
  %191 = ptrtoint i8* %188 to i32, !dbg !504
  %192 = ptrtoint i8* %179 to i32, !dbg !504
  %193 = add i32 %191, 1, !dbg !504
  %194 = sub i32 %193, %192, !dbg !505
  %195 = sext i32 %194 to i64, !dbg !506
  %196 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %179, i64 %195) #5, !dbg !507
  call void @halide_error(i8* %0, i8* nonnull %179) #5, !dbg !508
  br label %197

197:                                              ; preds = %190, %189
  call void @free(i8* %179) #5, !dbg !509
  br label %238, !dbg !510

198:                                              ; preds = %172
  %199 = call i32 @eglMakeCurrent(i8* %95, i8* nonnull %176, i8* nonnull %176, i8* nonnull %150) #5, !dbg !511
  call void @llvm.dbg.value(metadata i32 %199, metadata !207, metadata !DIExpression()), !dbg !218
  %200 = icmp eq i32 %199, 1, !dbg !512
  br i1 %200, label %238, label %201, !dbg !514

201:                                              ; preds = %198
  %202 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*, !dbg !515
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %202) #6, !dbg !515
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !278, metadata !DIExpression()) #6, !dbg !517
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !517
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !517
  %203 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 3, !dbg !519
  store i8* %0, i8** %203, align 4, !dbg !519, !tbaa !363
  %204 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 4, !dbg !520
  store i8 1, i8* %204, align 4, !dbg !520, !tbaa !367
  %205 = call i8* @malloc(i32 1024) #5, !dbg !521
  %206 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 0, !dbg !522
  store i8* %205, i8** %206, align 4, !dbg !523, !tbaa !371
  %207 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 1, !dbg !524
  %208 = icmp eq i8* %205, null, !dbg !525
  br i1 %208, label %211, label %209, !dbg !526

209:                                              ; preds = %201
  %210 = getelementptr inbounds i8, i8* %205, i32 1023, !dbg !527
  store i8 0, i8* %210, align 1, !dbg !528, !tbaa !298
  br label %211, !dbg !529

211:                                              ; preds = %201, %209
  %212 = phi i8* [ %210, %209 ], [ null, %201 ], !dbg !530
  %213 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i32 0, i32 2, !dbg !531
  store i8* %212, i8** %213, align 4, !dbg !532
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !301, metadata !DIExpression()) #6, !dbg !533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !533
  %214 = call i8* @halide_string_to_string(i8* %205, i8* %212, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !535
  store i8* %214, i8** %207, align 4, !dbg !536, !tbaa !393
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !301, metadata !DIExpression()) #6, !dbg !537
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !537
  %215 = call i8* @halide_string_to_string(i8* %214, i8* %212, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5, !dbg !539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !311, metadata !DIExpression()) #6, !dbg !540
  call void @llvm.dbg.value(metadata i32 %199, metadata !314, metadata !DIExpression()) #6, !dbg !540
  %216 = sext i32 %199 to i64, !dbg !542
  %217 = call i8* @halide_int64_to_string(i8* %215, i8* %212, i64 %216, i32 1) #5, !dbg !543
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !301, metadata !DIExpression()) #6, !dbg !544
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), metadata !304, metadata !DIExpression()) #6, !dbg !544
  %218 = call i8* @halide_string_to_string(i8* %217, i8* %212, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #5, !dbg !546
  %219 = call i32 @eglGetError() #5, !dbg !547
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !311, metadata !DIExpression()) #6, !dbg !548
  call void @llvm.dbg.value(metadata i32 %219, metadata !314, metadata !DIExpression()) #6, !dbg !548
  %220 = sext i32 %219 to i64, !dbg !550
  %221 = call i8* @halide_int64_to_string(i8* %218, i8* %212, i64 %220, i32 1) #5, !dbg !551
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !319, metadata !DIExpression()) #6, !dbg !552
  br i1 %208, label %222, label %223, !dbg !554

222:                                              ; preds = %211
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0)) #5, !dbg !555
  br label %232, !dbg !556

223:                                              ; preds = %211
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !557
  %224 = ptrtoint i8* %221 to i32, !dbg !559
  %225 = ptrtoint i8* %205 to i32, !dbg !559
  %226 = add i32 %224, 1, !dbg !559
  %227 = sub i32 %226, %225, !dbg !560
  %228 = sext i32 %227 to i64, !dbg !561
  %229 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %205, i64 %228) #5, !dbg !562
  %230 = load i8*, i8** %203, align 4, !dbg !563, !tbaa !363
  %231 = load i8*, i8** %206, align 4, !dbg !564, !tbaa !371
  call void @halide_error(i8* %230, i8* %231) #5, !dbg !565
  br label %232

232:                                              ; preds = %223, %222
  %233 = load i8, i8* %204, align 4, !dbg !566, !tbaa !367, !range !425
  %234 = icmp eq i8 %233, 0, !dbg !566
  br i1 %234, label %237, label %235, !dbg !567

235:                                              ; preds = %232
  %236 = load i8*, i8** %206, align 4, !dbg !568, !tbaa !371
  call void @free(i8* %236) #5, !dbg !569
  br label %237, !dbg !570

237:                                              ; preds = %232, %235
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %202) #6, !dbg !515
  br label %238, !dbg !571

238:                                              ; preds = %198, %237, %197
  %239 = phi i32 [ -1, %197 ], [ -1, %237 ], [ 0, %198 ], !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %173) #6, !dbg !572
  br label %240

240:                                              ; preds = %238, %171
  %241 = phi i32 [ -1, %171 ], [ %239, %238 ], !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %147) #6, !dbg !572
  br label %242

242:                                              ; preds = %240, %145
  %243 = phi i32 [ -1, %145 ], [ %241, %240 ], !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %98) #6, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %97) #6, !dbg !572
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %96) #6, !dbg !572
  br label %244

244:                                              ; preds = %25, %21, %92, %242, %1
  %245 = phi i32 [ 0, %1 ], [ %243, %242 ], [ 1, %92 ], [ 1, %21 ], [ 1, %25 ], !dbg !218
  ret i32 %245, !dbg !572
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !573 dso_local i8* @eglGetCurrentContext() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !577 dso_local i8* @eglGetDisplay(i8*) local_unnamed_addr #2

declare !dbg !580 dso_local i32 @eglInitialize(i8*, i32*, i32*) local_unnamed_addr #2

declare !dbg !584 dso_local i8* @eglGetProcAddress(i8*) local_unnamed_addr #2

declare !dbg !587 dso_local i32 @eglGetError() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

declare !dbg !590 dso_local i32 @eglChooseConfig(i8*, i32*, i8**, i32, i32*) local_unnamed_addr #2

declare !dbg !595 dso_local i8* @eglCreateContext(i8*, i8*, i8*, i32*) local_unnamed_addr #2

declare !dbg !598 dso_local i8* @eglCreatePbufferSurface(i8*, i8*, i32*) local_unnamed_addr #2

declare !dbg !601 dso_local i32 @eglMakeCurrent(i8*, i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !608, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %1, metadata !609, metadata !DIExpression()), !dbg !610
  %3 = tail call i8* @eglGetProcAddress(i8* %1) #5, !dbg !611
  ret i8* %3, !dbg !612
}

declare !dbg !613 dso_local i8* @malloc(i32) local_unnamed_addr #2

declare !dbg !616 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #2

declare !dbg !619 dso_local void @free(i8*) local_unnamed_addr #2

declare !dbg !622 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare !dbg !625 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare !dbg !628 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!169, !170, !171}
!llvm.ident = !{!172}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14, imports: !167, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !4, line: 403, baseType: !5, size: 8, elements: !8, identifier: "_ZTS18halide_type_code_t")
!4 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 16, baseType: !7)
!6 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!14 = !{!15, !18, !19, !20, !32, !39, !28, !166, !17, !48}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLContext", file: !16, line: 13, baseType: !17)
!16 = !DIFile(filename: "src/runtime/opengl_egl_context.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLNativeDisplayType", file: !16, line: 15, baseType: !17)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLDisplay", file: !16, line: 14, baseType: !17)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNEGLQUERYDEVICESEXTPROC", file: !16, line: 20, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !26, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLBoolean", file: !16, line: 11, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLint", file: !16, line: 10, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLDeviceEXT", file: !16, line: 18, baseType: !17)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNEGLGETPLATFORMDISPLAYEXTPROC", file: !16, line: 22, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DISubroutineType(types: !35)
!35 = !{!19, !36, !17, !37}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLenum", file: !16, line: 12, baseType: !25)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !41, file: !40, line: 199, baseType: !45)
!40 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!41 = !DINamespace(scope: !42)
!42 = !DINamespace(name: "Internal", scope: !43)
!43 = !DINamespace(name: "Runtime", scope: !44)
!44 = !DINamespace(name: "Halide", scope: null)
!45 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !41, file: !40, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !46, templateParams: !163)
!46 = !{!47, !50, !51, !52, !53, !55, !59, !63, !69, !74, !77, !82, !86, !90, !94, !99, !105, !138, !145, !148, !151, !156, !157, !160, !161, !162}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !45, file: !40, line: 32, baseType: !48, size: 32, flags: DIFlagPublic)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !45, file: !40, line: 32, baseType: !48, size: 32, offset: 32, flags: DIFlagPublic)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !45, file: !40, line: 32, baseType: !48, size: 32, offset: 64, flags: DIFlagPublic)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !45, file: !40, line: 33, baseType: !17, size: 32, offset: 96, flags: DIFlagPublic)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !45, file: !40, line: 34, baseType: !54, size: 8, offset: 128, flags: DIFlagPublic)
!54 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !45, file: !40, line: 35, baseType: !56, size: 8, offset: 136, flags: DIFlagPublic)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DISubprogram(name: "Printer", scope: !45, file: !40, line: 37, type: !60, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !17, !48}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !45, file: !40, line: 57, type: !64, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !62, !67}
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !45, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!69 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !45, file: !40, line: 67, type: !70, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = !DISubroutineType(types: !71)
!71 = !{!66, !62, !72}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 9, baseType: !73)
!73 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!74 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !45, file: !40, line: 72, type: !75, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DISubroutineType(types: !76)
!76 = !{!66, !62, !27}
!77 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !45, file: !40, line: 77, type: !78, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!66, !62, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 10, baseType: !81)
!81 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !45, file: !40, line: 82, type: !83, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DISubroutineType(types: !84)
!84 = !{!66, !62, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !25)
!86 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !45, file: !40, line: 87, type: !87, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{!66, !62, !89}
!89 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!90 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !45, file: !40, line: 92, type: !91, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubroutineType(types: !92)
!92 = !{!66, !62, !93}
!93 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!94 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !45, file: !40, line: 97, type: !95, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubroutineType(types: !96)
!96 = !{!66, !62, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!99 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !45, file: !40, line: 102, type: !100, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{!66, !62, !102}
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !104)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !45, file: !40, line: 108, type: !106, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{!66, !62, !108}
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !111, identifier: "_ZTS13halide_type_t")
!111 = !{!112, !114, !115, !116, !120, !123, !127, !130, !131, !132, !135}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !110, file: !4, line: 434, baseType: !113, size: 8, align: 8)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !110, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !110, file: !4, line: 446, baseType: !103, size: 16, align: 16, offset: 16)
!116 = !DISubprogram(name: "halide_type_t", scope: !110, file: !4, line: 453, type: !117, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119, !113, !5, !103}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!120 = !DISubprogram(name: "halide_type_t", scope: !110, file: !4, line: 459, type: !121, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !119}
!123 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !110, file: !4, line: 463, type: !124, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!124 = !DISubroutineType(types: !125)
!125 = !{!110, !126, !103}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!127 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !110, file: !4, line: 468, type: !128, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubroutineType(types: !129)
!129 = !{!54, !126, !108}
!130 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !110, file: !4, line: 472, type: !128, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !110, file: !4, line: 476, type: !128, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !110, file: !4, line: 481, type: !133, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{!28, !126}
!135 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !110, file: !4, line: 485, type: !136, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{!85, !126}
!138 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !45, file: !40, line: 113, type: !139, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!66, !62, !141}
!141 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!145 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !45, file: !40, line: 119, type: !146, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubroutineType(types: !147)
!147 = !{!67, !62}
!148 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !45, file: !40, line: 131, type: !149, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !62}
!151 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !45, file: !40, line: 139, type: !152, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!80, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!156 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !45, file: !40, line: 143, type: !152, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !45, file: !40, line: 148, type: !158, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !62, !28}
!160 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !45, file: !40, line: 158, type: !146, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !45, file: !40, line: 162, type: !149, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubprogram(name: "~Printer", scope: !45, file: !40, line: 166, type: !149, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !{!164, !165}
!164 = !DITemplateValueParameter(name: "type", type: !28, value: i32 1)
!165 = !DITemplateValueParameter(name: "length", type: !81, value: i64 1024)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLSurface", file: !16, line: 17, baseType: !17)
!167 = !{!168}
!168 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !42, file: !6, line: 225)
!169 = !{i32 7, !"Dwarf Version", i32 4}
!170 = !{i32 2, !"Debug Info Version", i32 3}
!171 = !{i32 1, !"wchar_size", i32 4}
!172 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!173 = distinct !DISubprogram(name: "halide_opengl_create_context", scope: !16, file: !16, line: 70, type: !174, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!28, !17}
!176 = !{!177, !178, !179, !182, !183, !185, !189, !190, !191, !192, !194, !199, !200, !204, !206, !207, !208, !212, !213, !217}
!177 = !DILocalVariable(name: "user_context", arg: 1, scope: !173, file: !16, line: 70, type: !17)
!178 = !DILocalVariable(name: "display", scope: !173, file: !16, line: 75, type: !19)
!179 = !DILocalVariable(name: "eglQueryDevicesEXT", scope: !180, file: !16, line: 77, type: !20)
!180 = distinct !DILexicalBlock(scope: !181, file: !16, line: 76, column: 81)
!181 = distinct !DILexicalBlock(scope: !173, file: !16, line: 76, column: 9)
!182 = !DILocalVariable(name: "eglGetPlatformDisplayEXT", scope: !180, file: !16, line: 84, type: !32)
!183 = !DILocalVariable(name: "kMaxDevices", scope: !180, file: !16, line: 91, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!185 = !DILocalVariable(name: "egl_devices", scope: !180, file: !16, line: 92, type: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 32)
!189 = !DILocalVariable(name: "num_devices", scope: !180, file: !16, line: 93, type: !26)
!190 = !DILocalVariable(name: "egl_error", scope: !180, file: !16, line: 94, type: !26)
!191 = !DILocalVariable(name: "initialized", scope: !180, file: !16, line: 100, type: !24)
!192 = !DILocalVariable(name: "i", scope: !193, file: !16, line: 101, type: !26)
!193 = distinct !DILexicalBlock(scope: !180, file: !16, line: 101, column: 9)
!194 = !DILocalVariable(name: "major", scope: !195, file: !16, line: 105, type: !28)
!195 = distinct !DILexicalBlock(scope: !196, file: !16, line: 104, column: 76)
!196 = distinct !DILexicalBlock(scope: !197, file: !16, line: 104, column: 17)
!197 = distinct !DILexicalBlock(scope: !198, file: !16, line: 101, column: 50)
!198 = distinct !DILexicalBlock(scope: !193, file: !16, line: 101, column: 9)
!199 = !DILocalVariable(name: "minor", scope: !195, file: !16, line: 105, type: !28)
!200 = !DILocalVariable(name: "attribs", scope: !173, file: !16, line: 120, type: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 416, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 13)
!204 = !DILocalVariable(name: "config", scope: !173, file: !16, line: 135, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLConfig", file: !16, line: 16, baseType: !17)
!206 = !DILocalVariable(name: "numconfig", scope: !173, file: !16, line: 136, type: !28)
!207 = !DILocalVariable(name: "result", scope: !173, file: !16, line: 137, type: !24)
!208 = !DILocalVariable(name: "context_attribs", scope: !173, file: !16, line: 146, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 3)
!212 = !DILocalVariable(name: "context", scope: !173, file: !16, line: 149, type: !15)
!213 = !DILocalVariable(name: "surface_attribs", scope: !173, file: !16, line: 156, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 5)
!217 = !DILocalVariable(name: "surface", scope: !173, file: !16, line: 160, type: !166)
!218 = !DILocation(line: 0, scope: !173)
!219 = !DILocation(line: 71, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !173, file: !16, line: 71, column: 9)
!221 = !DILocation(line: 71, column: 32, scope: !220)
!222 = !DILocation(line: 71, column: 9, scope: !173)
!223 = !DILocation(line: 75, column: 26, scope: !173)
!224 = !DILocation(line: 76, column: 17, scope: !181)
!225 = !DILocation(line: 76, column: 35, scope: !181)
!226 = !DILocation(line: 76, column: 39, scope: !181)
!227 = !DILocation(line: 76, column: 9, scope: !173)
!228 = !DILocation(line: 79, column: 17, scope: !180)
!229 = !DILocation(line: 78, column: 13, scope: !180)
!230 = !DILocation(line: 0, scope: !180)
!231 = !DILocation(line: 80, column: 32, scope: !232)
!232 = distinct !DILexicalBlock(scope: !180, file: !16, line: 80, column: 13)
!233 = !DILocation(line: 80, column: 13, scope: !180)
!234 = !DILocation(line: 86, column: 17, scope: !180)
!235 = !DILocation(line: 85, column: 13, scope: !180)
!236 = !DILocation(line: 87, column: 38, scope: !237)
!237 = distinct !DILexicalBlock(scope: !180, file: !16, line: 87, column: 13)
!238 = !DILocation(line: 87, column: 13, scope: !180)
!239 = !DILocation(line: 92, column: 9, scope: !180)
!240 = !DILocation(line: 92, column: 22, scope: !180)
!241 = !DILocation(line: 93, column: 9, scope: !180)
!242 = !DILocation(line: 93, column: 16, scope: !180)
!243 = !{!244, !244, i64 0}
!244 = !{!"int", !245, i64 0}
!245 = !{!"omnipotent char", !246, i64 0}
!246 = !{!"Simple C++ TBAA"}
!247 = !DILocation(line: 94, column: 28, scope: !180)
!248 = !DILocation(line: 95, column: 46, scope: !249)
!249 = distinct !DILexicalBlock(scope: !180, file: !16, line: 95, column: 13)
!250 = !DILocation(line: 95, column: 14, scope: !249)
!251 = !DILocation(line: 95, column: 73, scope: !249)
!252 = !DILocation(line: 0, scope: !193)
!253 = !DILocation(line: 101, column: 32, scope: !198)
!254 = !DILocation(line: 101, column: 30, scope: !198)
!255 = !DILocation(line: 101, column: 9, scope: !193)
!256 = !DILocation(line: 103, column: 48, scope: !197)
!257 = !{!258, !258, i64 0}
!258 = !{!"any pointer", !245, i64 0}
!259 = !DILocation(line: 102, column: 23, scope: !197)
!260 = !DILocation(line: 104, column: 17, scope: !196)
!261 = !DILocation(line: 104, column: 31, scope: !196)
!262 = !DILocation(line: 104, column: 46, scope: !196)
!263 = !DILocation(line: 105, column: 17, scope: !195)
!264 = !DILocation(line: 0, scope: !195)
!265 = !DILocation(line: 106, column: 31, scope: !195)
!266 = !DILocation(line: 107, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !195, file: !16, line: 107, column: 21)
!268 = !DILocation(line: 107, column: 35, scope: !267)
!269 = !DILocation(line: 110, column: 13, scope: !196)
!270 = !DILocation(line: 101, column: 45, scope: !198)
!271 = distinct !{!271, !255, !272, !273}
!272 = !DILocation(line: 111, column: 9, scope: !193)
!273 = !{!"llvm.loop.mustprogress"}
!274 = !DILocation(line: 113, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !180, file: !16, line: 113, column: 13)
!276 = !DILocation(line: 113, column: 27, scope: !275)
!277 = !DILocation(line: 113, column: 42, scope: !275)
!278 = !DILocalVariable(name: "this", arg: 1, scope: !279, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!279 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !45, file: !40, line: 37, type: !60, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !59, retainedNodes: !280)
!280 = !{!278, !281, !282}
!281 = !DILocalVariable(name: "ctx", arg: 2, scope: !279, file: !40, line: 37, type: !17)
!282 = !DILocalVariable(name: "mem", arg: 3, scope: !279, file: !40, line: 37, type: !48)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!284 = !DILocation(line: 0, scope: !279, inlinedAt: !285)
!285 = distinct !DILocation(line: 114, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !16, line: 113, column: 70)
!287 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !285)
!288 = distinct !DILexicalBlock(scope: !289, file: !40, line: 43, column: 16)
!289 = distinct !DILexicalBlock(scope: !290, file: !40, line: 41, column: 20)
!290 = distinct !DILexicalBlock(scope: !291, file: !40, line: 39, column: 13)
!291 = distinct !DILexicalBlock(scope: !279, file: !40, line: 38, column: 54)
!292 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !285)
!293 = distinct !DILexicalBlock(scope: !291, file: !40, line: 48, column: 13)
!294 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !285)
!295 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !285)
!296 = distinct !DILexicalBlock(scope: !293, file: !40, line: 48, column: 18)
!297 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !285)
!298 = !{!245, !245, i64 0}
!299 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !285)
!300 = !DILocation(line: 0, scope: !293, inlinedAt: !285)
!301 = !DILocalVariable(name: "this", arg: 1, scope: !302, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!302 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !45, file: !40, line: 57, type: !64, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !63, retainedNodes: !303)
!303 = !{!301, !304}
!304 = !DILocalVariable(name: "arg", arg: 2, scope: !302, file: !40, line: 57, type: !67)
!305 = !DILocation(line: 0, scope: !302, inlinedAt: !306)
!306 = distinct !DILocation(line: 114, column: 33, scope: !286)
!307 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !306)
!308 = distinct !DILexicalBlock(scope: !309, file: !40, line: 61, column: 16)
!309 = distinct !DILexicalBlock(scope: !302, file: !40, line: 59, column: 13)
!310 = !DILocation(line: 115, column: 36, scope: !286)
!311 = !DILocalVariable(name: "this", arg: 1, scope: !312, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!312 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !45, file: !40, line: 72, type: !75, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !74, retainedNodes: !313)
!313 = !{!311, !314}
!314 = !DILocalVariable(name: "arg", arg: 2, scope: !312, file: !40, line: 72, type: !27)
!315 = !DILocation(line: 0, scope: !312, inlinedAt: !316)
!316 = distinct !DILocation(line: 115, column: 33, scope: !286)
!317 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !316)
!318 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !316)
!319 = !DILocalVariable(name: "this", arg: 1, scope: !320, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!320 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !45, file: !40, line: 166, type: !149, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !162, retainedNodes: !321)
!321 = !{!319}
!322 = !DILocation(line: 0, scope: !320, inlinedAt: !323)
!323 = distinct !DILocation(line: 114, column: 13, scope: !286)
!324 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !323)
!325 = distinct !DILexicalBlock(scope: !320, file: !40, line: 166, column: 16)
!326 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !323)
!327 = distinct !DILexicalBlock(scope: !328, file: !40, line: 167, column: 19)
!328 = distinct !DILexicalBlock(scope: !325, file: !40, line: 167, column: 13)
!329 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !323)
!330 = !DILocalVariable(name: "this", arg: 1, scope: !331, type: !283, flags: DIFlagArtificial | DIFlagObjectPointer)
!331 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !45, file: !40, line: 162, type: !149, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !161, retainedNodes: !332)
!332 = !{!330}
!333 = !DILocation(line: 0, scope: !331, inlinedAt: !334)
!334 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !323)
!335 = distinct !DILexicalBlock(scope: !328, file: !40, line: 169, column: 16)
!336 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !334)
!337 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !334)
!338 = !DILocation(line: 163, column: 77, scope: !331, inlinedAt: !334)
!339 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !334)
!340 = !DILocation(line: 172, column: 17, scope: !341, inlinedAt: !323)
!341 = distinct !DILexicalBlock(scope: !342, file: !40, line: 171, column: 39)
!342 = distinct !DILexicalBlock(scope: !335, file: !40, line: 171, column: 17)
!343 = !DILocation(line: 181, column: 13, scope: !344, inlinedAt: !323)
!344 = distinct !DILexicalBlock(scope: !345, file: !40, line: 180, column: 40)
!345 = distinct !DILexicalBlock(scope: !325, file: !40, line: 180, column: 13)
!346 = !DILocation(line: 116, column: 13, scope: !286)
!347 = !DILocation(line: 118, column: 5, scope: !181)
!348 = !DILocation(line: 75, column: 16, scope: !173)
!349 = !DILocation(line: 120, column: 5, scope: !173)
!350 = !DILocation(line: 120, column: 12, scope: !173)
!351 = !DILocation(line: 135, column: 5, scope: !173)
!352 = !DILocation(line: 136, column: 5, scope: !173)
!353 = !DILocation(line: 137, column: 50, scope: !173)
!354 = !DILocation(line: 137, column: 25, scope: !173)
!355 = !DILocation(line: 138, column: 16, scope: !356)
!356 = distinct !DILexicalBlock(scope: !173, file: !16, line: 138, column: 9)
!357 = !DILocation(line: 138, column: 28, scope: !356)
!358 = !DILocation(line: 139, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !16, line: 138, column: 47)
!360 = !DILocation(line: 0, scope: !279, inlinedAt: !361)
!361 = distinct !DILocation(line: 139, column: 9, scope: !359)
!362 = !DILocation(line: 38, column: 11, scope: !279, inlinedAt: !361)
!363 = !{!364, !258, i64 12}
!364 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !258, i64 0, !258, i64 4, !258, i64 8, !258, i64 12, !365, i64 16, !245, i64 17}
!365 = !{!"bool", !245, i64 0}
!366 = !DILocation(line: 38, column: 30, scope: !279, inlinedAt: !361)
!367 = !{!364, !365, i64 16}
!368 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !361)
!369 = !DILocation(line: 44, column: 13, scope: !288, inlinedAt: !361)
!370 = !DILocation(line: 44, column: 17, scope: !288, inlinedAt: !361)
!371 = !{!364, !258, i64 0}
!372 = !DILocation(line: 47, column: 9, scope: !291, inlinedAt: !361)
!373 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !361)
!374 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !361)
!375 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !361)
!376 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !361)
!377 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !361)
!378 = !DILocation(line: 0, scope: !293, inlinedAt: !361)
!379 = !DILocation(line: 53, column: 13, scope: !380, inlinedAt: !361)
!380 = distinct !DILexicalBlock(scope: !293, file: !40, line: 51, column: 16)
!381 = !DILocation(line: 53, column: 17, scope: !380, inlinedAt: !361)
!382 = !DILocation(line: 0, scope: !302, inlinedAt: !383)
!383 = distinct !DILocation(line: 139, column: 29, scope: !359)
!384 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !383)
!385 = !DILocation(line: 0, scope: !302, inlinedAt: !386)
!386 = distinct !DILocation(line: 140, column: 29, scope: !359)
!387 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !386)
!388 = !DILocation(line: 0, scope: !312, inlinedAt: !389)
!389 = distinct !DILocation(line: 140, column: 43, scope: !359)
!390 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !389)
!391 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !389)
!392 = !DILocation(line: 73, column: 13, scope: !312, inlinedAt: !389)
!393 = !{!364, !258, i64 4}
!394 = !DILocation(line: 0, scope: !302, inlinedAt: !395)
!395 = distinct !DILocation(line: 141, column: 29, scope: !359)
!396 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !395)
!397 = !DILocation(line: 141, column: 51, scope: !359)
!398 = !DILocation(line: 0, scope: !312, inlinedAt: !399)
!399 = distinct !DILocation(line: 141, column: 48, scope: !359)
!400 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !399)
!401 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !399)
!402 = !DILocation(line: 0, scope: !302, inlinedAt: !403)
!403 = distinct !DILocation(line: 142, column: 29, scope: !359)
!404 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !403)
!405 = !DILocation(line: 142, column: 49, scope: !359)
!406 = !DILocation(line: 0, scope: !312, inlinedAt: !407)
!407 = distinct !DILocation(line: 142, column: 46, scope: !359)
!408 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !407)
!409 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !407)
!410 = !DILocation(line: 0, scope: !320, inlinedAt: !411)
!411 = distinct !DILocation(line: 139, column: 9, scope: !359)
!412 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !411)
!413 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !411)
!414 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !411)
!415 = !DILocation(line: 0, scope: !331, inlinedAt: !416)
!416 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !411)
!417 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !416)
!418 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !416)
!419 = !DILocation(line: 163, column: 77, scope: !331, inlinedAt: !416)
!420 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !416)
!421 = !DILocation(line: 172, column: 30, scope: !341, inlinedAt: !411)
!422 = !DILocation(line: 172, column: 44, scope: !341, inlinedAt: !411)
!423 = !DILocation(line: 172, column: 17, scope: !341, inlinedAt: !411)
!424 = !DILocation(line: 180, column: 13, scope: !345, inlinedAt: !411)
!425 = !{i8 0, i8 2}
!426 = !DILocation(line: 180, column: 21, scope: !345, inlinedAt: !411)
!427 = !DILocation(line: 180, column: 24, scope: !345, inlinedAt: !411)
!428 = !DILocation(line: 181, column: 13, scope: !344, inlinedAt: !411)
!429 = !DILocation(line: 182, column: 9, scope: !344, inlinedAt: !411)
!430 = !DILocation(line: 143, column: 9, scope: !359)
!431 = !DILocation(line: 146, column: 5, scope: !173)
!432 = !DILocation(line: 146, column: 12, scope: !173)
!433 = !DILocation(line: 149, column: 52, scope: !173)
!434 = !DILocation(line: 150, column: 43, scope: !173)
!435 = !DILocation(line: 149, column: 26, scope: !173)
!436 = !DILocation(line: 151, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !173, file: !16, line: 151, column: 9)
!438 = !DILocation(line: 151, column: 9, scope: !173)
!439 = !DILocation(line: 0, scope: !279, inlinedAt: !440)
!440 = distinct !DILocation(line: 152, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !16, line: 151, column: 36)
!442 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !440)
!443 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !440)
!444 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !440)
!445 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !440)
!446 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !440)
!447 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !440)
!448 = !DILocation(line: 0, scope: !293, inlinedAt: !440)
!449 = !DILocation(line: 0, scope: !302, inlinedAt: !450)
!450 = distinct !DILocation(line: 152, column: 29, scope: !441)
!451 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !450)
!452 = !DILocation(line: 152, column: 70, scope: !441)
!453 = !DILocation(line: 0, scope: !312, inlinedAt: !454)
!454 = distinct !DILocation(line: 152, column: 67, scope: !441)
!455 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !454)
!456 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !454)
!457 = !DILocation(line: 0, scope: !320, inlinedAt: !458)
!458 = distinct !DILocation(line: 152, column: 9, scope: !441)
!459 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !458)
!460 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !458)
!461 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !458)
!462 = !DILocation(line: 0, scope: !331, inlinedAt: !463)
!463 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !458)
!464 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !463)
!465 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !463)
!466 = !DILocation(line: 163, column: 77, scope: !331, inlinedAt: !463)
!467 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !463)
!468 = !DILocation(line: 172, column: 17, scope: !341, inlinedAt: !458)
!469 = !DILocation(line: 181, column: 13, scope: !344, inlinedAt: !458)
!470 = !DILocation(line: 153, column: 9, scope: !441)
!471 = !DILocation(line: 156, column: 5, scope: !173)
!472 = !DILocation(line: 156, column: 12, scope: !173)
!473 = !DILocation(line: 160, column: 59, scope: !173)
!474 = !DILocation(line: 160, column: 67, scope: !173)
!475 = !DILocation(line: 160, column: 26, scope: !173)
!476 = !DILocation(line: 161, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !173, file: !16, line: 161, column: 9)
!478 = !DILocation(line: 161, column: 9, scope: !173)
!479 = !DILocation(line: 0, scope: !279, inlinedAt: !480)
!480 = distinct !DILocation(line: 162, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !16, line: 161, column: 36)
!482 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !480)
!483 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !480)
!484 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !480)
!485 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !480)
!486 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !480)
!487 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !480)
!488 = !DILocation(line: 0, scope: !293, inlinedAt: !480)
!489 = !DILocation(line: 0, scope: !302, inlinedAt: !490)
!490 = distinct !DILocation(line: 162, column: 29, scope: !481)
!491 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !490)
!492 = !DILocation(line: 162, column: 82, scope: !481)
!493 = !DILocation(line: 0, scope: !312, inlinedAt: !494)
!494 = distinct !DILocation(line: 162, column: 79, scope: !481)
!495 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !494)
!496 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !494)
!497 = !DILocation(line: 0, scope: !320, inlinedAt: !498)
!498 = distinct !DILocation(line: 162, column: 9, scope: !481)
!499 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !498)
!500 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !498)
!501 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !498)
!502 = !DILocation(line: 0, scope: !331, inlinedAt: !503)
!503 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !498)
!504 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !503)
!505 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !503)
!506 = !DILocation(line: 163, column: 77, scope: !331, inlinedAt: !503)
!507 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !503)
!508 = !DILocation(line: 172, column: 17, scope: !341, inlinedAt: !498)
!509 = !DILocation(line: 181, column: 13, scope: !344, inlinedAt: !498)
!510 = !DILocation(line: 163, column: 9, scope: !481)
!511 = !DILocation(line: 166, column: 14, scope: !173)
!512 = !DILocation(line: 167, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !173, file: !16, line: 167, column: 9)
!514 = !DILocation(line: 167, column: 9, scope: !173)
!515 = !DILocation(line: 168, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !513, file: !16, line: 167, column: 29)
!517 = !DILocation(line: 0, scope: !279, inlinedAt: !518)
!518 = distinct !DILocation(line: 168, column: 9, scope: !516)
!519 = !DILocation(line: 38, column: 11, scope: !279, inlinedAt: !518)
!520 = !DILocation(line: 38, column: 30, scope: !279, inlinedAt: !518)
!521 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !518)
!522 = !DILocation(line: 44, column: 13, scope: !288, inlinedAt: !518)
!523 = !DILocation(line: 44, column: 17, scope: !288, inlinedAt: !518)
!524 = !DILocation(line: 47, column: 9, scope: !291, inlinedAt: !518)
!525 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !518)
!526 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !518)
!527 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !518)
!528 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !518)
!529 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !518)
!530 = !DILocation(line: 0, scope: !293, inlinedAt: !518)
!531 = !DILocation(line: 53, column: 13, scope: !380, inlinedAt: !518)
!532 = !DILocation(line: 53, column: 17, scope: !380, inlinedAt: !518)
!533 = !DILocation(line: 0, scope: !302, inlinedAt: !534)
!534 = distinct !DILocation(line: 168, column: 29, scope: !516)
!535 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !534)
!536 = !DILocation(line: 62, column: 17, scope: !308, inlinedAt: !534)
!537 = !DILocation(line: 0, scope: !302, inlinedAt: !538)
!538 = distinct !DILocation(line: 169, column: 29, scope: !516)
!539 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !538)
!540 = !DILocation(line: 0, scope: !312, inlinedAt: !541)
!541 = distinct !DILocation(line: 169, column: 43, scope: !516)
!542 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !541)
!543 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !541)
!544 = !DILocation(line: 0, scope: !302, inlinedAt: !545)
!545 = distinct !DILocation(line: 170, column: 29, scope: !516)
!546 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !545)
!547 = !DILocation(line: 170, column: 51, scope: !516)
!548 = !DILocation(line: 0, scope: !312, inlinedAt: !549)
!549 = distinct !DILocation(line: 170, column: 48, scope: !516)
!550 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !549)
!551 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !549)
!552 = !DILocation(line: 0, scope: !320, inlinedAt: !553)
!553 = distinct !DILocation(line: 168, column: 9, scope: !516)
!554 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !553)
!555 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !553)
!556 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !553)
!557 = !DILocation(line: 0, scope: !331, inlinedAt: !558)
!558 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !553)
!559 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !558)
!560 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !558)
!561 = !DILocation(line: 163, column: 77, scope: !331, inlinedAt: !558)
!562 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !558)
!563 = !DILocation(line: 172, column: 30, scope: !341, inlinedAt: !553)
!564 = !DILocation(line: 172, column: 44, scope: !341, inlinedAt: !553)
!565 = !DILocation(line: 172, column: 17, scope: !341, inlinedAt: !553)
!566 = !DILocation(line: 180, column: 13, scope: !345, inlinedAt: !553)
!567 = !DILocation(line: 180, column: 21, scope: !345, inlinedAt: !553)
!568 = !DILocation(line: 180, column: 24, scope: !345, inlinedAt: !553)
!569 = !DILocation(line: 181, column: 13, scope: !344, inlinedAt: !553)
!570 = !DILocation(line: 182, column: 9, scope: !344, inlinedAt: !553)
!571 = !DILocation(line: 171, column: 9, scope: !516)
!572 = !DILocation(line: 174, column: 1, scope: !173)
!573 = !DISubprogram(name: "eglGetCurrentContext", scope: !16, file: !16, line: 52, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!17}
!576 = !{}
!577 = !DISubprogram(name: "eglGetDisplay", scope: !16, file: !16, line: 53, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!578 = !DISubroutineType(types: !579)
!579 = !{!17, !17}
!580 = !DISubprogram(name: "eglInitialize", scope: !16, file: !16, line: 54, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!581 = !DISubroutineType(types: !582)
!582 = !{!25, !17, !583, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!584 = !DISubprogram(name: "eglGetProcAddress", scope: !16, file: !16, line: 66, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!585 = !DISubroutineType(types: !586)
!586 = !{!17, !67}
!587 = !DISubprogram(name: "eglGetError", scope: !16, file: !16, line: 51, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!588 = !DISubroutineType(types: !589)
!589 = !{!28}
!590 = !DISubprogram(name: "eglChooseConfig", scope: !16, file: !16, line: 55, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!591 = !DISubroutineType(types: !592)
!592 = !{!25, !17, !593, !594, !28, !583}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!595 = !DISubprogram(name: "eglCreateContext", scope: !16, file: !16, line: 58, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!596 = !DISubroutineType(types: !597)
!597 = !{!17, !17, !17, !17, !593}
!598 = !DISubprogram(name: "eglCreatePbufferSurface", scope: !16, file: !16, line: 61, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!599 = !DISubroutineType(types: !600)
!600 = !{!17, !17, !17, !593}
!601 = !DISubprogram(name: "eglMakeCurrent", scope: !16, file: !16, line: 63, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!602 = !DISubroutineType(types: !603)
!603 = !{!25, !17, !17, !17, !17}
!604 = distinct !DISubprogram(name: "halide_opengl_get_proc_address", scope: !16, file: !16, line: 176, type: !605, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!17, !17, !67}
!607 = !{!608, !609}
!608 = !DILocalVariable(name: "user_context", arg: 1, scope: !604, file: !16, line: 176, type: !17)
!609 = !DILocalVariable(name: "name", arg: 2, scope: !604, file: !16, line: 176, type: !67)
!610 = !DILocation(line: 0, scope: !604)
!611 = !DILocation(line: 177, column: 20, scope: !604)
!612 = !DILocation(line: 177, column: 5, scope: !604)
!613 = !DISubprogram(name: "malloc", scope: !6, file: !6, line: 87, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!614 = !DISubroutineType(types: !615)
!615 = !{!17, !25}
!616 = !DISubprogram(name: "halide_error", scope: !4, file: !4, line: 111, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !17, !67}
!619 = !DISubprogram(name: "free", scope: !6, file: !6, line: 86, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !17}
!622 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !4, file: !4, line: 973, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!623 = !DISubroutineType(types: !624)
!624 = !{!28, !17, !97, !81}
!625 = !DISubprogram(name: "halide_string_to_string", scope: !6, file: !6, line: 120, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!626 = !DISubroutineType(types: !627)
!627 = !{!48, !48, !48, !67}
!628 = !DISubprogram(name: "halide_int64_to_string", scope: !6, file: !6, line: 122, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !576)
!629 = !DISubroutineType(types: !630)
!630 = !{!48, !48, !48, !73, !28}
