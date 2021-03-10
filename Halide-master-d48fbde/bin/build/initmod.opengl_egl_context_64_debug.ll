; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_egl_context.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>

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
  %2 = alloca [32 x i8*], align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [13 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [5 x i32], align 4
  %12 = alloca %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()), !dbg !218
  %13 = tail call i8* @eglGetCurrentContext() #5, !dbg !219
  %14 = icmp eq i8* %13, null, !dbg !221
  br i1 %14, label %15, label %240, !dbg !222

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
  %22 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)) #5, !dbg !228
  %23 = bitcast i8* %22 to i32 (i32, i8**, i32*)*, !dbg !229
  call void @llvm.dbg.value(metadata i32 (i32, i8**, i32*)* %23, metadata !179, metadata !DIExpression()), !dbg !230
  %24 = icmp eq i8* %22, null, !dbg !231
  br i1 %24, label %240, label %25, !dbg !233

25:                                               ; preds = %21
  %26 = tail call i8* @eglGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !234
  %27 = bitcast i8* %26 to i8* (i32, i8*, i32*)*, !dbg !235
  call void @llvm.dbg.value(metadata i8* (i32, i8*, i32*)* %27, metadata !182, metadata !DIExpression()), !dbg !230
  %28 = icmp eq i8* %26, null, !dbg !236
  br i1 %28, label %240, label %29, !dbg !238

29:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 32, metadata !183, metadata !DIExpression()), !dbg !230
  %30 = bitcast [32 x i8*]* %2 to i8*, !dbg !239
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %30) #6, !dbg !239
  call void @llvm.dbg.declare(metadata [32 x i8*]* %2, metadata !185, metadata !DIExpression()), !dbg !240
  %31 = bitcast i32* %3 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #6, !dbg !241
  call void @llvm.dbg.value(metadata i32 0, metadata !189, metadata !DIExpression()), !dbg !230
  store i32 0, i32* %3, align 4, !dbg !242, !tbaa !243
  %32 = tail call i32 @eglGetError() #5, !dbg !247
  call void @llvm.dbg.value(metadata i32 %32, metadata !190, metadata !DIExpression()), !dbg !230
  %33 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 0, !dbg !248
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
  br i1 %40, label %41, label %66, !dbg !255

41:                                               ; preds = %38
  %42 = bitcast i32* %4 to i8*
  %43 = bitcast i32* %5 to i8*
  br label %44, !dbg !255

44:                                               ; preds = %41, %60
  %45 = phi i64 [ 0, %41 ], [ %62, %60 ]
  %46 = phi i32 [ 0, %41 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !192, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 %46, metadata !191, metadata !DIExpression()), !dbg !230
  %47 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 %45, !dbg !256
  %48 = load i8*, i8** %47, align 8, !dbg !256, !tbaa !257
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
  br i1 %59, label %66, label %60

60:                                               ; preds = %44, %54
  %61 = phi i32 [ %55, %54 ], [ %46, %44 ], !dbg !230
  call void @llvm.dbg.value(metadata i32 %61, metadata !191, metadata !DIExpression()), !dbg !230
  %62 = add nuw nsw i64 %45, 1, !dbg !270
  call void @llvm.dbg.value(metadata i8* %49, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i64 %62, metadata !192, metadata !DIExpression()), !dbg !252
  %63 = load i32, i32* %3, align 4, !dbg !253, !tbaa !243
  call void @llvm.dbg.value(metadata i32 %63, metadata !189, metadata !DIExpression()), !dbg !230
  %64 = sext i32 %63 to i64, !dbg !254
  %65 = icmp slt i64 %62, %64, !dbg !254
  br i1 %65, label %44, label %66, !dbg !255, !llvm.loop !271

66:                                               ; preds = %54, %60, %38
  %67 = phi i32 [ 0, %38 ], [ %61, %60 ], [ 1, %54 ], !dbg !230
  %68 = phi i8* [ %16, %38 ], [ %49, %60 ], [ %49, %54 ], !dbg !218
  call void @llvm.dbg.value(metadata i8* %68, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %67, metadata !191, metadata !DIExpression()), !dbg !230
  %69 = call i32 @eglGetError() #5, !dbg !274
  %70 = icmp ne i32 %69, 12288, !dbg !276
  %71 = icmp ne i32 %67, 1
  %72 = or i1 %71, %70, !dbg !277
  br i1 %72, label %73, label %93, !dbg !277

73:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !278, metadata !DIExpression()) #6, !dbg !284
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !284
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !284
  %74 = call i8* @malloc(i64 1024) #5, !dbg !287
  %75 = icmp eq i8* %74, null, !dbg !292
  br i1 %75, label %78, label %76, !dbg !294

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, i8* %74, i64 1023, !dbg !295
  store i8 0, i8* %77, align 1, !dbg !297, !tbaa !298
  br label %78, !dbg !299

78:                                               ; preds = %73, %76
  %79 = phi i8* [ %77, %76 ], [ null, %73 ], !dbg !300
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !301, metadata !DIExpression()) #6, !dbg !305
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !305
  %80 = call i8* @halide_string_to_string(i8* %74, i8* %79, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !307
  %81 = call i32 @eglGetError() #5, !dbg !310
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !311, metadata !DIExpression()) #6, !dbg !315
  call void @llvm.dbg.value(metadata i32 %81, metadata !314, metadata !DIExpression()) #6, !dbg !315
  %82 = sext i32 %81 to i64, !dbg !317
  %83 = call i8* @halide_int64_to_string(i8* %80, i8* %79, i64 %82, i32 1) #5, !dbg !318
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #6, !dbg !322
  br i1 %75, label %84, label %85, !dbg !324

84:                                               ; preds = %78
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !326
  br label %91, !dbg !329

85:                                               ; preds = %78
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !333
  %86 = ptrtoint i8* %83 to i64, !dbg !336
  %87 = ptrtoint i8* %74 to i64, !dbg !336
  %88 = add i64 %86, 1, !dbg !336
  %89 = sub i64 %88, %87, !dbg !337
  %90 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %74, i64 %89) #5, !dbg !338
  call void @halide_error(i8* %0, i8* nonnull %74) #5, !dbg !339
  br label %91

91:                                               ; preds = %85, %84
  call void @free(i8* %74) #5, !dbg !342
  br label %92, !dbg !345

92:                                               ; preds = %29, %91
  call void @llvm.dbg.value(metadata i8* %68, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #6, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %30) #6, !dbg !346
  br label %240

93:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i8* %68, metadata !178, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #6, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %30) #6, !dbg !346
  br label %94

94:                                               ; preds = %93, %18
  %95 = phi i8* [ %68, %93 ], [ %16, %18 ], !dbg !347
  call void @llvm.dbg.value(metadata i8* %95, metadata !178, metadata !DIExpression()), !dbg !218
  %96 = bitcast [13 x i32]* %6 to i8*, !dbg !348
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %96) #6, !dbg !348
  call void @llvm.dbg.declare(metadata [13 x i32]* %6, metadata !200, metadata !DIExpression()), !dbg !349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %96, i8* nonnull align 4 dereferenceable(52) bitcast ([13 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i64 52, i1 false), !dbg !349
  %97 = bitcast i8** %7 to i8*, !dbg !350
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97) #6, !dbg !350
  %98 = bitcast i32* %8 to i8*, !dbg !351
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %98) #6, !dbg !351
  %99 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0, !dbg !352
  call void @llvm.dbg.value(metadata i8** %7, metadata !204, metadata !DIExpression(DW_OP_deref)), !dbg !218
  call void @llvm.dbg.value(metadata i32* %8, metadata !206, metadata !DIExpression(DW_OP_deref)), !dbg !218
  %100 = call i32 @eglChooseConfig(i8* %95, i32* nonnull %99, i8** nonnull %7, i32 1, i32* nonnull %8) #5, !dbg !353
  call void @llvm.dbg.value(metadata i32 %100, metadata !207, metadata !DIExpression()), !dbg !218
  %101 = icmp ne i32 %100, 1, !dbg !354
  %102 = load i32, i32* %8, align 4
  call void @llvm.dbg.value(metadata i32 %102, metadata !206, metadata !DIExpression()), !dbg !218
  %103 = icmp ne i32 %102, 1
  %104 = or i1 %101, %103, !dbg !356
  br i1 %104, label %105, label %145, !dbg !356

105:                                              ; preds = %94
  %106 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9 to i8*, !dbg !357
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %106) #6, !dbg !357
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !278, metadata !DIExpression()) #6, !dbg !359
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !359
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !359
  %107 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 3, !dbg !361
  store i8* %0, i8** %107, align 8, !dbg !361, !tbaa !362
  %108 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 4, !dbg !365
  store i8 1, i8* %108, align 8, !dbg !365, !tbaa !366
  %109 = call i8* @malloc(i64 1024) #5, !dbg !367
  %110 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 0, !dbg !368
  store i8* %109, i8** %110, align 8, !dbg !369, !tbaa !370
  %111 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 1, !dbg !371
  %112 = icmp eq i8* %109, null, !dbg !372
  br i1 %112, label %115, label %113, !dbg !373

113:                                              ; preds = %105
  %114 = getelementptr inbounds i8, i8* %109, i64 1023, !dbg !374
  store i8 0, i8* %114, align 1, !dbg !375, !tbaa !298
  br label %115, !dbg !376

115:                                              ; preds = %105, %113
  %116 = phi i8* [ %114, %113 ], [ null, %105 ], !dbg !377
  %117 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, i64 0, i32 2, !dbg !378
  store i8* %116, i8** %117, align 8, !dbg !380
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !381
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !381
  %118 = call i8* @halide_string_to_string(i8* %109, i8* %116, i8* nonnull getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !383
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !384
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !384
  %119 = call i8* @halide_string_to_string(i8* %118, i8* %116, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !386
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !311, metadata !DIExpression()) #6, !dbg !387
  call void @llvm.dbg.value(metadata i32 %100, metadata !314, metadata !DIExpression()) #6, !dbg !387
  %120 = sext i32 %100 to i64, !dbg !389
  %121 = call i8* @halide_int64_to_string(i8* %119, i8* %116, i64 %120, i32 1) #5, !dbg !390
  store i8* %121, i8** %111, align 8, !dbg !391, !tbaa !392
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !393
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !393
  %122 = call i8* @halide_string_to_string(i8* %121, i8* %116, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !395
  %123 = call i32 @eglGetError() #5, !dbg !396
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !311, metadata !DIExpression()) #6, !dbg !397
  call void @llvm.dbg.value(metadata i32 %123, metadata !314, metadata !DIExpression()) #6, !dbg !397
  %124 = sext i32 %123 to i64, !dbg !399
  %125 = call i8* @halide_int64_to_string(i8* %122, i8* %116, i64 %124, i32 1) #5, !dbg !400
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !301, metadata !DIExpression()) #6, !dbg !401
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !401
  %126 = call i8* @halide_string_to_string(i8* %125, i8* %116, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !403
  %127 = load i32, i32* %8, align 4, !dbg !404, !tbaa !243
  call void @llvm.dbg.value(metadata i32 %127, metadata !206, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !311, metadata !DIExpression()) #6, !dbg !405
  call void @llvm.dbg.value(metadata i32 %127, metadata !314, metadata !DIExpression()) #6, !dbg !405
  %128 = sext i32 %127 to i64, !dbg !407
  %129 = call i8* @halide_int64_to_string(i8* %126, i8* %116, i64 %128, i32 1) #5, !dbg !408
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %9, metadata !319, metadata !DIExpression()) #6, !dbg !409
  br i1 %112, label %130, label %131, !dbg !411

130:                                              ; preds = %115
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !412
  br label %139, !dbg !413

131:                                              ; preds = %115
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !414
  %132 = ptrtoint i8* %129 to i64, !dbg !416
  %133 = ptrtoint i8* %109 to i64, !dbg !416
  %134 = add i64 %132, 1, !dbg !416
  %135 = sub i64 %134, %133, !dbg !417
  %136 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %109, i64 %135) #5, !dbg !418
  %137 = load i8*, i8** %107, align 8, !dbg !419, !tbaa !362
  %138 = load i8*, i8** %110, align 8, !dbg !420, !tbaa !370
  call void @halide_error(i8* %137, i8* %138) #5, !dbg !421
  br label %139

139:                                              ; preds = %131, %130
  %140 = load i8, i8* %108, align 8, !dbg !422, !tbaa !366, !range !423
  %141 = icmp eq i8 %140, 0, !dbg !422
  br i1 %141, label %144, label %142, !dbg !424

142:                                              ; preds = %139
  %143 = load i8*, i8** %110, align 8, !dbg !425, !tbaa !370
  call void @free(i8* %143) #5, !dbg !426
  br label %144, !dbg !427

144:                                              ; preds = %139, %142
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %106) #6, !dbg !357
  br label %238, !dbg !428

145:                                              ; preds = %94
  %146 = bitcast [3 x i32]* %10 to i8*, !dbg !429
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %146) #6, !dbg !429
  call void @llvm.dbg.declare(metadata [3 x i32]* %10, metadata !208, metadata !DIExpression()), !dbg !430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %146, i8* nonnull align 4 dereferenceable(12) bitcast ([3 x i32]* @__const.halide_opengl_create_context.context_attribs to i8*), i64 12, i1 false), !dbg !430
  %147 = load i8*, i8** %7, align 8, !dbg !431, !tbaa !257
  call void @llvm.dbg.value(metadata i8* %147, metadata !204, metadata !DIExpression()), !dbg !218
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0, !dbg !432
  %149 = call i8* @eglCreateContext(i8* %95, i8* %147, i8* null, i32* nonnull %148) #5, !dbg !433
  call void @llvm.dbg.value(metadata i8* %149, metadata !212, metadata !DIExpression()), !dbg !218
  %150 = icmp eq i8* %149, null, !dbg !434
  br i1 %150, label %151, label %170, !dbg !436

151:                                              ; preds = %145
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !278, metadata !DIExpression()) #6, !dbg !437
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !437
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !437
  %152 = call i8* @malloc(i64 1024) #5, !dbg !440
  %153 = icmp eq i8* %152, null, !dbg !441
  br i1 %153, label %156, label %154, !dbg !442

154:                                              ; preds = %151
  %155 = getelementptr inbounds i8, i8* %152, i64 1023, !dbg !443
  store i8 0, i8* %155, align 1, !dbg !444, !tbaa !298
  br label %156, !dbg !445

156:                                              ; preds = %151, %154
  %157 = phi i8* [ %155, %154 ], [ null, %151 ], !dbg !446
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !301, metadata !DIExpression()) #6, !dbg !447
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !447
  %158 = call i8* @halide_string_to_string(i8* %152, i8* %157, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !449
  %159 = call i32 @eglGetError() #5, !dbg !450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !311, metadata !DIExpression()) #6, !dbg !451
  call void @llvm.dbg.value(metadata i32 %159, metadata !314, metadata !DIExpression()) #6, !dbg !451
  %160 = sext i32 %159 to i64, !dbg !453
  %161 = call i8* @halide_int64_to_string(i8* %158, i8* %157, i64 %160, i32 1) #5, !dbg !454
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #6, !dbg !455
  br i1 %153, label %162, label %163, !dbg !457

162:                                              ; preds = %156
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !458
  br label %169, !dbg !459

163:                                              ; preds = %156
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !460
  %164 = ptrtoint i8* %161 to i64, !dbg !462
  %165 = ptrtoint i8* %152 to i64, !dbg !462
  %166 = add i64 %164, 1, !dbg !462
  %167 = sub i64 %166, %165, !dbg !463
  %168 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %152, i64 %167) #5, !dbg !464
  call void @halide_error(i8* %0, i8* nonnull %152) #5, !dbg !465
  br label %169

169:                                              ; preds = %163, %162
  call void @free(i8* %152) #5, !dbg !466
  br label %236, !dbg !467

170:                                              ; preds = %145
  %171 = bitcast [5 x i32]* %11 to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %171) #6, !dbg !468
  call void @llvm.dbg.declare(metadata [5 x i32]* %11, metadata !213, metadata !DIExpression()), !dbg !469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %171, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.surface_attribs to i8*), i64 20, i1 false), !dbg !469
  %172 = load i8*, i8** %7, align 8, !dbg !470, !tbaa !257
  call void @llvm.dbg.value(metadata i8* %172, metadata !204, metadata !DIExpression()), !dbg !218
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0, !dbg !471
  %174 = call i8* @eglCreatePbufferSurface(i8* %95, i8* %172, i32* nonnull %173) #5, !dbg !472
  call void @llvm.dbg.value(metadata i8* %174, metadata !217, metadata !DIExpression()), !dbg !218
  %175 = icmp eq i8* %174, null, !dbg !473
  br i1 %175, label %176, label %195, !dbg !475

176:                                              ; preds = %170
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !278, metadata !DIExpression()) #6, !dbg !476
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !476
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !476
  %177 = call i8* @malloc(i64 1024) #5, !dbg !479
  %178 = icmp eq i8* %177, null, !dbg !480
  br i1 %178, label %181, label %179, !dbg !481

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %177, i64 1023, !dbg !482
  store i8 0, i8* %180, align 1, !dbg !483, !tbaa !298
  br label %181, !dbg !484

181:                                              ; preds = %176, %179
  %182 = phi i8* [ %180, %179 ], [ null, %176 ], !dbg !485
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !301, metadata !DIExpression()) #6, !dbg !486
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !486
  %183 = call i8* @halide_string_to_string(i8* %177, i8* %182, i8* nonnull getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !488
  %184 = call i32 @eglGetError() #5, !dbg !489
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !311, metadata !DIExpression()) #6, !dbg !490
  call void @llvm.dbg.value(metadata i32 %184, metadata !314, metadata !DIExpression()) #6, !dbg !490
  %185 = sext i32 %184 to i64, !dbg !492
  %186 = call i8* @halide_int64_to_string(i8* %183, i8* %182, i64 %185, i32 1) #5, !dbg !493
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !319, metadata !DIExpression()) #6, !dbg !494
  br i1 %178, label %187, label %188, !dbg !496

187:                                              ; preds = %181
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !497
  br label %194, !dbg !498

188:                                              ; preds = %181
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !499
  %189 = ptrtoint i8* %186 to i64, !dbg !501
  %190 = ptrtoint i8* %177 to i64, !dbg !501
  %191 = add i64 %189, 1, !dbg !501
  %192 = sub i64 %191, %190, !dbg !502
  %193 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %177, i64 %192) #5, !dbg !503
  call void @halide_error(i8* %0, i8* nonnull %177) #5, !dbg !504
  br label %194

194:                                              ; preds = %188, %187
  call void @free(i8* %177) #5, !dbg !505
  br label %234, !dbg !506

195:                                              ; preds = %170
  %196 = call i32 @eglMakeCurrent(i8* %95, i8* nonnull %174, i8* nonnull %174, i8* nonnull %149) #5, !dbg !507
  call void @llvm.dbg.value(metadata i32 %196, metadata !207, metadata !DIExpression()), !dbg !218
  %197 = icmp eq i32 %196, 1, !dbg !508
  br i1 %197, label %234, label %198, !dbg !510

198:                                              ; preds = %195
  %199 = bitcast %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12 to i8*, !dbg !511
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %199) #6, !dbg !511
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !278, metadata !DIExpression()) #6, !dbg !513
  call void @llvm.dbg.value(metadata i8* %0, metadata !281, metadata !DIExpression()) #6, !dbg !513
  call void @llvm.dbg.value(metadata i8* null, metadata !282, metadata !DIExpression()) #6, !dbg !513
  %200 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 3, !dbg !515
  store i8* %0, i8** %200, align 8, !dbg !515, !tbaa !362
  %201 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 4, !dbg !516
  store i8 1, i8* %201, align 8, !dbg !516, !tbaa !366
  %202 = call i8* @malloc(i64 1024) #5, !dbg !517
  %203 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 0, !dbg !518
  store i8* %202, i8** %203, align 8, !dbg !519, !tbaa !370
  %204 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 1, !dbg !520
  %205 = icmp eq i8* %202, null, !dbg !521
  br i1 %205, label %208, label %206, !dbg !522

206:                                              ; preds = %198
  %207 = getelementptr inbounds i8, i8* %202, i64 1023, !dbg !523
  store i8 0, i8* %207, align 1, !dbg !524, !tbaa !298
  br label %208, !dbg !525

208:                                              ; preds = %198, %206
  %209 = phi i8* [ %207, %206 ], [ null, %198 ], !dbg !526
  %210 = getelementptr inbounds %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer", %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, i64 0, i32 2, !dbg !527
  store i8* %209, i8** %210, align 8, !dbg !528
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !301, metadata !DIExpression()) #6, !dbg !529
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !529
  %211 = call i8* @halide_string_to_string(i8* %202, i8* %209, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !531
  store i8* %211, i8** %204, align 8, !dbg !532, !tbaa !392
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !301, metadata !DIExpression()) #6, !dbg !533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !533
  %212 = call i8* @halide_string_to_string(i8* %211, i8* %209, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !535
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !311, metadata !DIExpression()) #6, !dbg !536
  call void @llvm.dbg.value(metadata i32 %196, metadata !314, metadata !DIExpression()) #6, !dbg !536
  %213 = sext i32 %196 to i64, !dbg !538
  %214 = call i8* @halide_int64_to_string(i8* %212, i8* %209, i64 %213, i32 1) #5, !dbg !539
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !301, metadata !DIExpression()) #6, !dbg !540
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), metadata !304, metadata !DIExpression()) #6, !dbg !540
  %215 = call i8* @halide_string_to_string(i8* %214, i8* %209, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !542
  %216 = call i32 @eglGetError() #5, !dbg !543
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !311, metadata !DIExpression()) #6, !dbg !544
  call void @llvm.dbg.value(metadata i32 %216, metadata !314, metadata !DIExpression()) #6, !dbg !544
  %217 = sext i32 %216 to i64, !dbg !546
  %218 = call i8* @halide_int64_to_string(i8* %215, i8* %209, i64 %217, i32 1) #5, !dbg !547
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* %12, metadata !319, metadata !DIExpression()) #6, !dbg !548
  br i1 %205, label %219, label %220, !dbg !550

219:                                              ; preds = %208
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !551
  br label %228, !dbg !552

220:                                              ; preds = %208
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !330, metadata !DIExpression()) #6, !dbg !553
  %221 = ptrtoint i8* %218 to i64, !dbg !555
  %222 = ptrtoint i8* %202 to i64, !dbg !555
  %223 = add i64 %221, 1, !dbg !555
  %224 = sub i64 %223, %222, !dbg !556
  %225 = call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %202, i64 %224) #5, !dbg !557
  %226 = load i8*, i8** %200, align 8, !dbg !558, !tbaa !362
  %227 = load i8*, i8** %203, align 8, !dbg !559, !tbaa !370
  call void @halide_error(i8* %226, i8* %227) #5, !dbg !560
  br label %228

228:                                              ; preds = %220, %219
  %229 = load i8, i8* %201, align 8, !dbg !561, !tbaa !366, !range !423
  %230 = icmp eq i8 %229, 0, !dbg !561
  br i1 %230, label %233, label %231, !dbg !562

231:                                              ; preds = %228
  %232 = load i8*, i8** %203, align 8, !dbg !563, !tbaa !370
  call void @free(i8* %232) #5, !dbg !564
  br label %233, !dbg !565

233:                                              ; preds = %228, %231
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %199) #6, !dbg !511
  br label %234, !dbg !566

234:                                              ; preds = %195, %233, %194
  %235 = phi i32 [ -1, %194 ], [ -1, %233 ], [ 0, %195 ], !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %171) #6, !dbg !567
  br label %236

236:                                              ; preds = %234, %169
  %237 = phi i32 [ -1, %169 ], [ %235, %234 ], !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %146) #6, !dbg !567
  br label %238

238:                                              ; preds = %236, %144
  %239 = phi i32 [ -1, %144 ], [ %237, %236 ], !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %98) #6, !dbg !567
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97) #6, !dbg !567
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %96) #6, !dbg !567
  br label %240

240:                                              ; preds = %25, %21, %92, %238, %1
  %241 = phi i32 [ 0, %1 ], [ %239, %238 ], [ 1, %92 ], [ 1, %21 ], [ 1, %25 ], !dbg !218
  ret i32 %241, !dbg !567
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !568 dso_local i8* @eglGetCurrentContext() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !572 dso_local i8* @eglGetDisplay(i8*) local_unnamed_addr #2

declare !dbg !575 dso_local i32 @eglInitialize(i8*, i32*, i32*) local_unnamed_addr #2

declare !dbg !579 dso_local i8* @eglGetProcAddress(i8*) local_unnamed_addr #2

declare !dbg !582 dso_local i32 @eglGetError() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !585 dso_local i32 @eglChooseConfig(i8*, i32*, i8**, i32, i32*) local_unnamed_addr #2

declare !dbg !590 dso_local i8* @eglCreateContext(i8*, i8*, i8*, i32*) local_unnamed_addr #2

declare !dbg !593 dso_local i8* @eglCreatePbufferSurface(i8*, i8*, i32*) local_unnamed_addr #2

declare !dbg !596 dso_local i32 @eglMakeCurrent(i8*, i8*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #4 !dbg !599 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !603, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i8* %1, metadata !604, metadata !DIExpression()), !dbg !605
  %3 = tail call i8* @eglGetProcAddress(i8* %1) #5, !dbg !606
  ret i8* %3, !dbg !607
}

declare !dbg !608 dso_local i8* @malloc(i64) local_unnamed_addr #2

declare !dbg !612 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #2

declare !dbg !615 dso_local void @free(i8*) local_unnamed_addr #2

declare !dbg !618 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #2

declare !dbg !621 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare !dbg !624 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

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
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLNativeDisplayType", file: !16, line: 15, baseType: !17)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLDisplay", file: !16, line: 14, baseType: !17)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNEGLQUERYDEVICESEXTPROC", file: !16, line: 20, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !26, !29, !31}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLBoolean", file: !16, line: 11, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLint", file: !16, line: 10, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLDeviceEXT", file: !16, line: 18, baseType: !17)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "PFNEGLGETPLATFORMDISPLAYEXTPROC", file: !16, line: 22, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!19, !36, !17, !37}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "EGLenum", file: !16, line: 12, baseType: !25)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !41, file: !40, line: 199, baseType: !45)
!40 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!41 = !DINamespace(scope: !42)
!42 = !DINamespace(name: "Internal", scope: !43)
!43 = !DINamespace(name: "Runtime", scope: !44)
!44 = !DINamespace(name: "Halide", scope: null)
!45 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !41, file: !40, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !46, templateParams: !163)
!46 = !{!47, !50, !51, !52, !53, !55, !59, !63, !69, !74, !77, !82, !86, !90, !94, !99, !105, !138, !145, !148, !151, !156, !157, !160, !161, !162}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !45, file: !40, line: 32, baseType: !48, size: 64, flags: DIFlagPublic)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !45, file: !40, line: 32, baseType: !48, size: 64, offset: 64, flags: DIFlagPublic)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !45, file: !40, line: 32, baseType: !48, size: 64, offset: 128, flags: DIFlagPublic)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !45, file: !40, line: 33, baseType: !17, size: 64, offset: 192, flags: DIFlagPublic)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !45, file: !40, line: 34, baseType: !54, size: 8, offset: 256, flags: DIFlagPublic)
!54 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !45, file: !40, line: 35, baseType: !56, size: 8, offset: 264, flags: DIFlagPublic)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DISubprogram(name: "Printer", scope: !45, file: !40, line: 37, type: !60, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !17, !48}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!63 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !45, file: !40, line: 57, type: !64, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !62, !67}
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !45, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
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
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
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
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !109, size: 64)
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
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!120 = !DISubprogram(name: "halide_type_t", scope: !110, file: !4, line: 459, type: !121, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !119}
!123 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !110, file: !4, line: 463, type: !124, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!124 = !DISubroutineType(types: !125)
!125 = !{!110, !126, !103}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!141 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!145 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !45, file: !40, line: 119, type: !146, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubroutineType(types: !147)
!147 = !{!67, !62}
!148 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !45, file: !40, line: 131, type: !149, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !62}
!151 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !45, file: !40, line: 139, type: !152, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!80, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !187)
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
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
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
!338 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !334)
!339 = !DILocation(line: 172, column: 17, scope: !340, inlinedAt: !323)
!340 = distinct !DILexicalBlock(scope: !341, file: !40, line: 171, column: 39)
!341 = distinct !DILexicalBlock(scope: !335, file: !40, line: 171, column: 17)
!342 = !DILocation(line: 181, column: 13, scope: !343, inlinedAt: !323)
!343 = distinct !DILexicalBlock(scope: !344, file: !40, line: 180, column: 40)
!344 = distinct !DILexicalBlock(scope: !325, file: !40, line: 180, column: 13)
!345 = !DILocation(line: 116, column: 13, scope: !286)
!346 = !DILocation(line: 118, column: 5, scope: !181)
!347 = !DILocation(line: 75, column: 16, scope: !173)
!348 = !DILocation(line: 120, column: 5, scope: !173)
!349 = !DILocation(line: 120, column: 12, scope: !173)
!350 = !DILocation(line: 135, column: 5, scope: !173)
!351 = !DILocation(line: 136, column: 5, scope: !173)
!352 = !DILocation(line: 137, column: 50, scope: !173)
!353 = !DILocation(line: 137, column: 25, scope: !173)
!354 = !DILocation(line: 138, column: 16, scope: !355)
!355 = distinct !DILexicalBlock(scope: !173, file: !16, line: 138, column: 9)
!356 = !DILocation(line: 138, column: 28, scope: !355)
!357 = !DILocation(line: 139, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !16, line: 138, column: 47)
!359 = !DILocation(line: 0, scope: !279, inlinedAt: !360)
!360 = distinct !DILocation(line: 139, column: 9, scope: !358)
!361 = !DILocation(line: 38, column: 11, scope: !279, inlinedAt: !360)
!362 = !{!363, !258, i64 24}
!363 = !{!"_ZTSN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEE", !258, i64 0, !258, i64 8, !258, i64 16, !258, i64 24, !364, i64 32, !245, i64 33}
!364 = !{!"bool", !245, i64 0}
!365 = !DILocation(line: 38, column: 30, scope: !279, inlinedAt: !360)
!366 = !{!363, !364, i64 32}
!367 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !360)
!368 = !DILocation(line: 44, column: 13, scope: !288, inlinedAt: !360)
!369 = !DILocation(line: 44, column: 17, scope: !288, inlinedAt: !360)
!370 = !{!363, !258, i64 0}
!371 = !DILocation(line: 47, column: 9, scope: !291, inlinedAt: !360)
!372 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !360)
!373 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !360)
!374 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !360)
!375 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !360)
!376 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !360)
!377 = !DILocation(line: 0, scope: !293, inlinedAt: !360)
!378 = !DILocation(line: 53, column: 13, scope: !379, inlinedAt: !360)
!379 = distinct !DILexicalBlock(scope: !293, file: !40, line: 51, column: 16)
!380 = !DILocation(line: 53, column: 17, scope: !379, inlinedAt: !360)
!381 = !DILocation(line: 0, scope: !302, inlinedAt: !382)
!382 = distinct !DILocation(line: 139, column: 29, scope: !358)
!383 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !382)
!384 = !DILocation(line: 0, scope: !302, inlinedAt: !385)
!385 = distinct !DILocation(line: 140, column: 29, scope: !358)
!386 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !385)
!387 = !DILocation(line: 0, scope: !312, inlinedAt: !388)
!388 = distinct !DILocation(line: 140, column: 43, scope: !358)
!389 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !388)
!390 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !388)
!391 = !DILocation(line: 73, column: 13, scope: !312, inlinedAt: !388)
!392 = !{!363, !258, i64 8}
!393 = !DILocation(line: 0, scope: !302, inlinedAt: !394)
!394 = distinct !DILocation(line: 141, column: 29, scope: !358)
!395 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !394)
!396 = !DILocation(line: 141, column: 51, scope: !358)
!397 = !DILocation(line: 0, scope: !312, inlinedAt: !398)
!398 = distinct !DILocation(line: 141, column: 48, scope: !358)
!399 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !398)
!400 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !398)
!401 = !DILocation(line: 0, scope: !302, inlinedAt: !402)
!402 = distinct !DILocation(line: 142, column: 29, scope: !358)
!403 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !402)
!404 = !DILocation(line: 142, column: 49, scope: !358)
!405 = !DILocation(line: 0, scope: !312, inlinedAt: !406)
!406 = distinct !DILocation(line: 142, column: 46, scope: !358)
!407 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !406)
!408 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !406)
!409 = !DILocation(line: 0, scope: !320, inlinedAt: !410)
!410 = distinct !DILocation(line: 139, column: 9, scope: !358)
!411 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !410)
!412 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !410)
!413 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !410)
!414 = !DILocation(line: 0, scope: !331, inlinedAt: !415)
!415 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !410)
!416 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !415)
!417 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !415)
!418 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !415)
!419 = !DILocation(line: 172, column: 30, scope: !340, inlinedAt: !410)
!420 = !DILocation(line: 172, column: 44, scope: !340, inlinedAt: !410)
!421 = !DILocation(line: 172, column: 17, scope: !340, inlinedAt: !410)
!422 = !DILocation(line: 180, column: 13, scope: !344, inlinedAt: !410)
!423 = !{i8 0, i8 2}
!424 = !DILocation(line: 180, column: 21, scope: !344, inlinedAt: !410)
!425 = !DILocation(line: 180, column: 24, scope: !344, inlinedAt: !410)
!426 = !DILocation(line: 181, column: 13, scope: !343, inlinedAt: !410)
!427 = !DILocation(line: 182, column: 9, scope: !343, inlinedAt: !410)
!428 = !DILocation(line: 143, column: 9, scope: !358)
!429 = !DILocation(line: 146, column: 5, scope: !173)
!430 = !DILocation(line: 146, column: 12, scope: !173)
!431 = !DILocation(line: 149, column: 52, scope: !173)
!432 = !DILocation(line: 150, column: 43, scope: !173)
!433 = !DILocation(line: 149, column: 26, scope: !173)
!434 = !DILocation(line: 151, column: 17, scope: !435)
!435 = distinct !DILexicalBlock(scope: !173, file: !16, line: 151, column: 9)
!436 = !DILocation(line: 151, column: 9, scope: !173)
!437 = !DILocation(line: 0, scope: !279, inlinedAt: !438)
!438 = distinct !DILocation(line: 152, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !16, line: 151, column: 36)
!440 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !438)
!441 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !438)
!442 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !438)
!443 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !438)
!444 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !438)
!445 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !438)
!446 = !DILocation(line: 0, scope: !293, inlinedAt: !438)
!447 = !DILocation(line: 0, scope: !302, inlinedAt: !448)
!448 = distinct !DILocation(line: 152, column: 29, scope: !439)
!449 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !448)
!450 = !DILocation(line: 152, column: 70, scope: !439)
!451 = !DILocation(line: 0, scope: !312, inlinedAt: !452)
!452 = distinct !DILocation(line: 152, column: 67, scope: !439)
!453 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !452)
!454 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !452)
!455 = !DILocation(line: 0, scope: !320, inlinedAt: !456)
!456 = distinct !DILocation(line: 152, column: 9, scope: !439)
!457 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !456)
!458 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !456)
!459 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !456)
!460 = !DILocation(line: 0, scope: !331, inlinedAt: !461)
!461 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !456)
!462 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !461)
!463 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !461)
!464 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !461)
!465 = !DILocation(line: 172, column: 17, scope: !340, inlinedAt: !456)
!466 = !DILocation(line: 181, column: 13, scope: !343, inlinedAt: !456)
!467 = !DILocation(line: 153, column: 9, scope: !439)
!468 = !DILocation(line: 156, column: 5, scope: !173)
!469 = !DILocation(line: 156, column: 12, scope: !173)
!470 = !DILocation(line: 160, column: 59, scope: !173)
!471 = !DILocation(line: 160, column: 67, scope: !173)
!472 = !DILocation(line: 160, column: 26, scope: !173)
!473 = !DILocation(line: 161, column: 17, scope: !474)
!474 = distinct !DILexicalBlock(scope: !173, file: !16, line: 161, column: 9)
!475 = !DILocation(line: 161, column: 9, scope: !173)
!476 = !DILocation(line: 0, scope: !279, inlinedAt: !477)
!477 = distinct !DILocation(line: 162, column: 9, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !16, line: 161, column: 36)
!479 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !477)
!480 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !477)
!481 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !477)
!482 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !477)
!483 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !477)
!484 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !477)
!485 = !DILocation(line: 0, scope: !293, inlinedAt: !477)
!486 = !DILocation(line: 0, scope: !302, inlinedAt: !487)
!487 = distinct !DILocation(line: 162, column: 29, scope: !478)
!488 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !487)
!489 = !DILocation(line: 162, column: 82, scope: !478)
!490 = !DILocation(line: 0, scope: !312, inlinedAt: !491)
!491 = distinct !DILocation(line: 162, column: 79, scope: !478)
!492 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !491)
!493 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !491)
!494 = !DILocation(line: 0, scope: !320, inlinedAt: !495)
!495 = distinct !DILocation(line: 162, column: 9, scope: !478)
!496 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !495)
!497 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !495)
!498 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !495)
!499 = !DILocation(line: 0, scope: !331, inlinedAt: !500)
!500 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !495)
!501 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !500)
!502 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !500)
!503 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !500)
!504 = !DILocation(line: 172, column: 17, scope: !340, inlinedAt: !495)
!505 = !DILocation(line: 181, column: 13, scope: !343, inlinedAt: !495)
!506 = !DILocation(line: 163, column: 9, scope: !478)
!507 = !DILocation(line: 166, column: 14, scope: !173)
!508 = !DILocation(line: 167, column: 16, scope: !509)
!509 = distinct !DILexicalBlock(scope: !173, file: !16, line: 167, column: 9)
!510 = !DILocation(line: 167, column: 9, scope: !173)
!511 = !DILocation(line: 168, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !16, line: 167, column: 29)
!513 = !DILocation(line: 0, scope: !279, inlinedAt: !514)
!514 = distinct !DILocation(line: 168, column: 9, scope: !512)
!515 = !DILocation(line: 38, column: 11, scope: !279, inlinedAt: !514)
!516 = !DILocation(line: 38, column: 30, scope: !279, inlinedAt: !514)
!517 = !DILocation(line: 44, column: 27, scope: !288, inlinedAt: !514)
!518 = !DILocation(line: 44, column: 13, scope: !288, inlinedAt: !514)
!519 = !DILocation(line: 44, column: 17, scope: !288, inlinedAt: !514)
!520 = !DILocation(line: 47, column: 9, scope: !291, inlinedAt: !514)
!521 = !DILocation(line: 48, column: 13, scope: !293, inlinedAt: !514)
!522 = !DILocation(line: 48, column: 13, scope: !291, inlinedAt: !514)
!523 = !DILocation(line: 49, column: 23, scope: !296, inlinedAt: !514)
!524 = !DILocation(line: 50, column: 18, scope: !296, inlinedAt: !514)
!525 = !DILocation(line: 51, column: 9, scope: !296, inlinedAt: !514)
!526 = !DILocation(line: 0, scope: !293, inlinedAt: !514)
!527 = !DILocation(line: 53, column: 13, scope: !379, inlinedAt: !514)
!528 = !DILocation(line: 53, column: 17, scope: !379, inlinedAt: !514)
!529 = !DILocation(line: 0, scope: !302, inlinedAt: !530)
!530 = distinct !DILocation(line: 168, column: 29, scope: !512)
!531 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !530)
!532 = !DILocation(line: 62, column: 17, scope: !308, inlinedAt: !530)
!533 = !DILocation(line: 0, scope: !302, inlinedAt: !534)
!534 = distinct !DILocation(line: 169, column: 29, scope: !512)
!535 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !534)
!536 = !DILocation(line: 0, scope: !312, inlinedAt: !537)
!537 = distinct !DILocation(line: 169, column: 43, scope: !512)
!538 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !537)
!539 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !537)
!540 = !DILocation(line: 0, scope: !302, inlinedAt: !541)
!541 = distinct !DILocation(line: 170, column: 29, scope: !512)
!542 = !DILocation(line: 62, column: 19, scope: !308, inlinedAt: !541)
!543 = !DILocation(line: 170, column: 51, scope: !512)
!544 = !DILocation(line: 0, scope: !312, inlinedAt: !545)
!545 = distinct !DILocation(line: 170, column: 48, scope: !512)
!546 = !DILocation(line: 73, column: 48, scope: !312, inlinedAt: !545)
!547 = !DILocation(line: 73, column: 15, scope: !312, inlinedAt: !545)
!548 = !DILocation(line: 0, scope: !320, inlinedAt: !549)
!549 = distinct !DILocation(line: 168, column: 9, scope: !512)
!550 = !DILocation(line: 167, column: 13, scope: !325, inlinedAt: !549)
!551 = !DILocation(line: 168, column: 13, scope: !327, inlinedAt: !549)
!552 = !DILocation(line: 169, column: 9, scope: !327, inlinedAt: !549)
!553 = !DILocation(line: 0, scope: !331, inlinedAt: !554)
!554 = distinct !DILocation(line: 170, column: 13, scope: !335, inlinedAt: !549)
!555 = !DILocation(line: 163, column: 81, scope: !331, inlinedAt: !554)
!556 = !DILocation(line: 163, column: 87, scope: !331, inlinedAt: !554)
!557 = !DILocation(line: 163, column: 15, scope: !331, inlinedAt: !554)
!558 = !DILocation(line: 172, column: 30, scope: !340, inlinedAt: !549)
!559 = !DILocation(line: 172, column: 44, scope: !340, inlinedAt: !549)
!560 = !DILocation(line: 172, column: 17, scope: !340, inlinedAt: !549)
!561 = !DILocation(line: 180, column: 13, scope: !344, inlinedAt: !549)
!562 = !DILocation(line: 180, column: 21, scope: !344, inlinedAt: !549)
!563 = !DILocation(line: 180, column: 24, scope: !344, inlinedAt: !549)
!564 = !DILocation(line: 181, column: 13, scope: !343, inlinedAt: !549)
!565 = !DILocation(line: 182, column: 9, scope: !343, inlinedAt: !549)
!566 = !DILocation(line: 171, column: 9, scope: !512)
!567 = !DILocation(line: 174, column: 1, scope: !173)
!568 = !DISubprogram(name: "eglGetCurrentContext", scope: !16, file: !16, line: 52, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!17}
!571 = !{}
!572 = !DISubprogram(name: "eglGetDisplay", scope: !16, file: !16, line: 53, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!573 = !DISubroutineType(types: !574)
!574 = !{!17, !17}
!575 = !DISubprogram(name: "eglInitialize", scope: !16, file: !16, line: 54, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!576 = !DISubroutineType(types: !577)
!577 = !{!25, !17, !578, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!579 = !DISubprogram(name: "eglGetProcAddress", scope: !16, file: !16, line: 66, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!580 = !DISubroutineType(types: !581)
!581 = !{!17, !67}
!582 = !DISubprogram(name: "eglGetError", scope: !16, file: !16, line: 51, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!583 = !DISubroutineType(types: !584)
!584 = !{!28}
!585 = !DISubprogram(name: "eglChooseConfig", scope: !16, file: !16, line: 55, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!586 = !DISubroutineType(types: !587)
!587 = !{!25, !17, !588, !589, !28, !578}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!590 = !DISubprogram(name: "eglCreateContext", scope: !16, file: !16, line: 58, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!591 = !DISubroutineType(types: !592)
!592 = !{!17, !17, !17, !17, !588}
!593 = !DISubprogram(name: "eglCreatePbufferSurface", scope: !16, file: !16, line: 61, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!594 = !DISubroutineType(types: !595)
!595 = !{!17, !17, !17, !588}
!596 = !DISubprogram(name: "eglMakeCurrent", scope: !16, file: !16, line: 63, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!597 = !DISubroutineType(types: !598)
!598 = !{!25, !17, !17, !17, !17}
!599 = distinct !DISubprogram(name: "halide_opengl_get_proc_address", scope: !16, file: !16, line: 176, type: !600, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!17, !17, !67}
!602 = !{!603, !604}
!603 = !DILocalVariable(name: "user_context", arg: 1, scope: !599, file: !16, line: 176, type: !17)
!604 = !DILocalVariable(name: "name", arg: 2, scope: !599, file: !16, line: 176, type: !67)
!605 = !DILocation(line: 0, scope: !599)
!606 = !DILocation(line: 177, column: 20, scope: !599)
!607 = !DILocation(line: 177, column: 5, scope: !599)
!608 = !DISubprogram(name: "malloc", scope: !6, file: !6, line: 87, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!609 = !DISubroutineType(types: !610)
!610 = !{!17, !611}
!611 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!612 = !DISubprogram(name: "halide_error", scope: !4, file: !4, line: 111, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !17, !67}
!615 = !DISubprogram(name: "free", scope: !6, file: !6, line: 86, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !17}
!618 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !4, file: !4, line: 973, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!619 = !DISubroutineType(types: !620)
!620 = !{!28, !17, !97, !81}
!621 = !DISubprogram(name: "halide_string_to_string", scope: !6, file: !6, line: 120, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!622 = !DISubroutineType(types: !623)
!623 = !{!48, !48, !48, !67}
!624 = !DISubprogram(name: "halide_int64_to_string", scope: !6, file: !6, line: 122, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !571)
!625 = !DISubroutineType(types: !626)
!626 = !{!48, !48, !48, !73, !28}
