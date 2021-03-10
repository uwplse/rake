; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.hexagon_buffer_t_arg = type { i64, i8* }

@.str = private unnamed_addr constant [21 x i8] c"QuRT: qurt_hvx_lock(\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c") ->\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"qurt_hvx_lock failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"QuRT: qurt_hvx_unlock ->\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"qurt_hvx_unlock failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1

; Function Attrs: nounwind
define weak dso_local i32 @halide_qurt_hvx_lock(i8* %0) local_unnamed_addr #0 !dbg !230 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !234, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 1, metadata !235, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !246
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !246
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !246
  %2 = tail call i8* @malloc(i64 1024) #7, !dbg !248
  %3 = icmp eq i8* %2, null, !dbg !253
  br i1 %3, label %6, label %4, !dbg !255

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !256
  store i8 0, i8* %5, align 1, !dbg !258, !tbaa !259
  br label %6, !dbg !262

6:                                                ; preds = %1, %4
  %7 = phi i8* [ %5, %4 ], [ null, %1 ], !dbg !263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !268
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !268
  %8 = tail call i8* @halide_string_to_string(i8* %2, i8* %7, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #7, !dbg !270
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !273, metadata !DIExpression()) #6, !dbg !277
  call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()) #6, !dbg !277
  %9 = tail call i8* @halide_int64_to_string(i8* %8, i8* %7, i64 1, i32 1) #7, !dbg !279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !280
  %10 = tail call i8* @halide_string_to_string(i8* %9, i8* %7, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !282
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !286
  br i1 %3, label %11, label %12, !dbg !288

11:                                               ; preds = %6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !290
  br label %18, !dbg !293

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !297
  %13 = ptrtoint i8* %10 to i64, !dbg !300
  %14 = ptrtoint i8* %2 to i64, !dbg !300
  %15 = add i64 %13, 1, !dbg !300
  %16 = sub i64 %15, %14, !dbg !301
  %17 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %16) #7, !dbg !302
  tail call void @halide_print(i8* %0, i8* nonnull %2) #7, !dbg !303
  br label %18

18:                                               ; preds = %12, %11
  tail call void @free(i8* %2) #7, !dbg !307
  %19 = tail call i32 @qurt_hvx_lock(i32 1) #7, !dbg !310
  call void @llvm.dbg.value(metadata i32 %19, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !311
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !311
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !311
  %20 = tail call i8* @malloc(i64 1024) #7, !dbg !313
  %21 = icmp eq i8* %20, null, !dbg !314
  br i1 %21, label %24, label %22, !dbg !315

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, i8* %20, i64 1023, !dbg !316
  store i8 0, i8* %23, align 1, !dbg !317, !tbaa !259
  br label %24, !dbg !318

24:                                               ; preds = %18, %22
  %25 = phi i8* [ %23, %22 ], [ null, %18 ], !dbg !319
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !320
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !320
  %26 = tail call i8* @halide_string_to_string(i8* %20, i8* %25, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !322
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !273, metadata !DIExpression()) #6, !dbg !323
  call void @llvm.dbg.value(metadata i32 %19, metadata !276, metadata !DIExpression()) #6, !dbg !323
  %27 = sext i32 %19 to i64, !dbg !325
  %28 = tail call i8* @halide_int64_to_string(i8* %26, i8* %25, i64 %27, i32 1) #7, !dbg !326
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !327
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !327
  %29 = tail call i8* @halide_string_to_string(i8* %28, i8* %25, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !329
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !330
  br i1 %21, label %30, label %31, !dbg !332

30:                                               ; preds = %24
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !333
  br label %37, !dbg !334

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !335
  %32 = ptrtoint i8* %29 to i64, !dbg !337
  %33 = ptrtoint i8* %20 to i64, !dbg !337
  %34 = add i64 %32, 1, !dbg !337
  %35 = sub i64 %34, %33, !dbg !338
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %20, i64 %35) #7, !dbg !339
  tail call void @halide_print(i8* %0, i8* nonnull %20) #7, !dbg !340
  br label %37

37:                                               ; preds = %31, %30
  tail call void @free(i8* %20) #7, !dbg !341
  %38 = icmp eq i32 %19, 0, !dbg !342
  br i1 %38, label %53, label %39, !dbg !344

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !345, metadata !DIExpression()) #6, !dbg !351
  call void @llvm.dbg.value(metadata i8* %0, metadata !348, metadata !DIExpression()) #6, !dbg !351
  call void @llvm.dbg.value(metadata i8* null, metadata !349, metadata !DIExpression()) #6, !dbg !351
  %40 = tail call i8* @malloc(i64 1024) #7, !dbg !354
  %41 = icmp eq i8* %40, null, !dbg !359
  br i1 %41, label %42, label %44, !dbg !361

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !362, metadata !DIExpression()) #6, !dbg !366
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), metadata !365, metadata !DIExpression()) #6, !dbg !366
  %43 = tail call i8* @halide_string_to_string(i8* %40, i8* null, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !368
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !371, metadata !DIExpression()) #6, !dbg !374
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !376
  br label %52, !dbg !380

44:                                               ; preds = %39
  %45 = getelementptr inbounds i8, i8* %40, i64 1023, !dbg !381
  store i8 0, i8* %45, align 1, !dbg !383, !tbaa !259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !362, metadata !DIExpression()) #6, !dbg !366
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), metadata !365, metadata !DIExpression()) #6, !dbg !366
  %46 = tail call i8* @halide_string_to_string(i8* nonnull %40, i8* nonnull %45, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !368
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !371, metadata !DIExpression()) #6, !dbg !374
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !384, metadata !DIExpression()) #6, !dbg !387
  %47 = ptrtoint i8* %46 to i64, !dbg !390
  %48 = ptrtoint i8* %40 to i64, !dbg !390
  %49 = add i64 %47, 1, !dbg !390
  %50 = sub i64 %49, %48, !dbg !391
  %51 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %40, i64 %50) #7, !dbg !392
  tail call void @halide_error(i8* %0, i8* nonnull %40) #7, !dbg !393
  br label %52

52:                                               ; preds = %44, %42
  tail call void @free(i8* %40) #7, !dbg !396
  br label %53, !dbg !399

53:                                               ; preds = %37, %52
  %54 = phi i32 [ -1, %52 ], [ 0, %37 ], !dbg !239
  ret i32 %54, !dbg !400
}

declare !dbg !401 dso_local i32 @qurt_hvx_lock(i32) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i32 @halide_qurt_hvx_unlock(i8* %0) local_unnamed_addr #0 !dbg !405 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !410
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !410
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !410
  %2 = tail call i8* @malloc(i64 1024) #7, !dbg !412
  %3 = icmp eq i8* %2, null, !dbg !413
  br i1 %3, label %4, label %6, !dbg !414

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !415
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !415
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !417
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !418
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !420
  br label %14, !dbg !421

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i64 1023, !dbg !422
  store i8 0, i8* %7, align 1, !dbg !423, !tbaa !259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !415
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !415
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !417
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !418
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !424
  %9 = ptrtoint i8* %8 to i64, !dbg !426
  %10 = ptrtoint i8* %2 to i64, !dbg !426
  %11 = add i64 %9, 1, !dbg !426
  %12 = sub i64 %11, %10, !dbg !427
  %13 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %12) #7, !dbg !428
  tail call void @halide_print(i8* %0, i8* nonnull %2) #7, !dbg !429
  br label %14

14:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #7, !dbg !430
  %15 = tail call i32 @qurt_hvx_unlock() #7, !dbg !431
  call void @llvm.dbg.value(metadata i32 %15, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !432
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !432
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !432
  %16 = tail call i8* @malloc(i64 1024) #7, !dbg !434
  %17 = icmp eq i8* %16, null, !dbg !435
  br i1 %17, label %20, label %18, !dbg !436

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, i8* %16, i64 1023, !dbg !437
  store i8 0, i8* %19, align 1, !dbg !438, !tbaa !259
  br label %20, !dbg !439

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %19, %18 ], [ null, %14 ], !dbg !440
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !441
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !441
  %22 = tail call i8* @halide_string_to_string(i8* %16, i8* %21, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !443
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !273, metadata !DIExpression()) #6, !dbg !444
  call void @llvm.dbg.value(metadata i32 %15, metadata !276, metadata !DIExpression()) #6, !dbg !444
  %23 = sext i32 %15 to i64, !dbg !446
  %24 = tail call i8* @halide_int64_to_string(i8* %22, i8* %21, i64 %23, i32 1) #7, !dbg !447
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !448
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), metadata !267, metadata !DIExpression()) #6, !dbg !448
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %21, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !450
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !451
  br i1 %17, label %26, label %27, !dbg !453

26:                                               ; preds = %20
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !454
  br label %33, !dbg !455

27:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !456
  %28 = ptrtoint i8* %25 to i64, !dbg !458
  %29 = ptrtoint i8* %16 to i64, !dbg !458
  %30 = add i64 %28, 1, !dbg !458
  %31 = sub i64 %30, %29, !dbg !459
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %16, i64 %31) #7, !dbg !460
  tail call void @halide_print(i8* %0, i8* nonnull %16) #7, !dbg !461
  br label %33

33:                                               ; preds = %27, %26
  tail call void @free(i8* %16) #7, !dbg !462
  %34 = icmp eq i32 %15, 0, !dbg !463
  br i1 %34, label %49, label %35, !dbg !465

35:                                               ; preds = %33
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !345, metadata !DIExpression()) #6, !dbg !466
  call void @llvm.dbg.value(metadata i8* %0, metadata !348, metadata !DIExpression()) #6, !dbg !466
  call void @llvm.dbg.value(metadata i8* null, metadata !349, metadata !DIExpression()) #6, !dbg !466
  %36 = tail call i8* @malloc(i64 1024) #7, !dbg !469
  %37 = icmp eq i8* %36, null, !dbg !470
  br i1 %37, label %38, label %40, !dbg !471

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !362, metadata !DIExpression()) #6, !dbg !472
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), metadata !365, metadata !DIExpression()) #6, !dbg !472
  %39 = tail call i8* @halide_string_to_string(i8* %36, i8* null, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !474
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !371, metadata !DIExpression()) #6, !dbg !475
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !477
  br label %48, !dbg !478

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, i8* %36, i64 1023, !dbg !479
  store i8 0, i8* %41, align 1, !dbg !480, !tbaa !259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !362, metadata !DIExpression()) #6, !dbg !472
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), metadata !365, metadata !DIExpression()) #6, !dbg !472
  %42 = tail call i8* @halide_string_to_string(i8* nonnull %36, i8* nonnull %41, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !474
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !371, metadata !DIExpression()) #6, !dbg !475
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !384, metadata !DIExpression()) #6, !dbg !481
  %43 = ptrtoint i8* %42 to i64, !dbg !483
  %44 = ptrtoint i8* %36 to i64, !dbg !483
  %45 = add i64 %43, 1, !dbg !483
  %46 = sub i64 %45, %44, !dbg !484
  %47 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %36, i64 %46) #7, !dbg !485
  tail call void @halide_error(i8* %0, i8* nonnull %36) #7, !dbg !486
  br label %48

48:                                               ; preds = %40, %38
  tail call void @free(i8* %36) #7, !dbg !487
  br label %49, !dbg !488

49:                                               ; preds = %33, %48
  %50 = phi i32 [ -1, %48 ], [ 0, %33 ], !dbg !409
  ret i32 %50, !dbg !489
}

declare !dbg !490 dso_local i32 @qurt_hvx_unlock() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_qurt_hvx_unlock_as_destructor(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !497, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i8* %1, metadata !498, metadata !DIExpression()), !dbg !499
  %3 = tail call i32 @halide_qurt_hvx_unlock(i8* %0) #8, !dbg !500
  ret void, !dbg !501
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_prefetch_2d(i8* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 !dbg !502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !506, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %1, metadata !507, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %2, metadata !508, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %3, metadata !509, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 1, metadata !510, metadata !DIExpression()), !dbg !513
  %5 = zext i32 %3 to i64, !dbg !514
  %6 = shl nuw i64 %5, 32, !dbg !515
  %7 = sext i32 %1 to i64, !dbg !516
  %8 = shl nsw i64 %7, 16, !dbg !517
  %9 = sext i32 %2 to i64, !dbg !518
  %10 = or i64 %8, %9, !dbg !519
  %11 = or i64 %10, %6, !dbg !519
  %12 = or i64 %11, 281474976710656, !dbg !519
  call void @llvm.dbg.value(metadata i64 %12, metadata !512, metadata !DIExpression()), !dbg !513
  tail call void asm sideeffect "l2fetch($0,$1)", "r,r"(i8* %0, i64 %12) #6, !dbg !520, !srcloc !521
  ret i32 0, !dbg !522
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_prefetch(i8* %0, i32 %1) local_unnamed_addr #3 !dbg !523 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !527, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %1, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8* %0, metadata !506, metadata !DIExpression()) #6, !dbg !530
  call void @llvm.dbg.value(metadata i32 %1, metadata !507, metadata !DIExpression()) #6, !dbg !530
  call void @llvm.dbg.value(metadata i32 1, metadata !508, metadata !DIExpression()) #6, !dbg !530
  call void @llvm.dbg.value(metadata i32 1, metadata !509, metadata !DIExpression()) #6, !dbg !530
  call void @llvm.dbg.value(metadata i32 1, metadata !510, metadata !DIExpression()) #6, !dbg !530
  %3 = sext i32 %1 to i64, !dbg !532
  %4 = shl nsw i64 %3, 16, !dbg !533
  %5 = or i64 %4, 281479271677953, !dbg !534
  call void @llvm.dbg.value(metadata i64 %5, metadata !512, metadata !DIExpression()) #6, !dbg !530
  tail call void asm sideeffect "l2fetch($0,$1)", "r,r"(i8* %0, i64 %5) #6, !dbg !535, !srcloc !521
  ret i32 0, !dbg !536
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i8* @_halide_hexagon_buffer_get_host(%struct.hexagon_buffer_t_arg* %0) local_unnamed_addr #4 !dbg !537 {
  call void @llvm.dbg.value(metadata %struct.hexagon_buffer_t_arg* %0, metadata !548, metadata !DIExpression()), !dbg !549
  %2 = getelementptr inbounds %struct.hexagon_buffer_t_arg, %struct.hexagon_buffer_t_arg* %0, i64 0, i32 1, !dbg !550
  %3 = load i8*, i8** %2, align 8, !dbg !550, !tbaa !551
  ret i8* %3, !dbg !555
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i64 @_halide_hexagon_buffer_get_device(%struct.hexagon_buffer_t_arg* %0) local_unnamed_addr #4 !dbg !556 {
  call void @llvm.dbg.value(metadata %struct.hexagon_buffer_t_arg* %0, metadata !560, metadata !DIExpression()), !dbg !561
  %2 = getelementptr inbounds %struct.hexagon_buffer_t_arg, %struct.hexagon_buffer_t_arg* %0, i64 0, i32 0, !dbg !562
  %3 = load i64, i64* %2, align 8, !dbg !562, !tbaa !563
  ret i64 %3, !dbg !564
}

declare !dbg !565 dso_local i8* @malloc(i64) local_unnamed_addr #1

declare !dbg !569 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !572 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !573 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !576 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !579 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

declare !dbg !582 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!226, !227, !228}
!llvm.ident = !{!229}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, imports: !222, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{!3, !9, !20}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 236, baseType: !5, size: 32, elements: !6, identifier: "_ZTS15qurt_hvx_mode_t")
!4 = !DIFile(filename: "src/runtime/mini_qurt.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "QURT_HVX_MODE_64B", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "QURT_HVX_MODE_128B", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !10, line: 403, baseType: !11, size: 8, elements: !14, identifier: "_ZTS18halide_type_code_t")
!10 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 16, baseType: !13)
!12 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !4, line: 10, baseType: !5, size: 32, elements: !25)
!21 = !DINamespace(name: "Qurt", scope: !22)
!22 = !DINamespace(name: "Internal", scope: !23)
!23 = !DINamespace(name: "Runtime", scope: !24)
!24 = !DINamespace(name: "Halide", scope: null)
!25 = !{!26}
!26 = !DIEnumerator(name: "QURT_EOK", value: 0, isUnsigned: true)
!27 = !{!28, !155, !69, !34}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !30, file: !29, line: 203, baseType: !31)
!29 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!30 = !DINamespace(scope: !22)
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !30, file: !29, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !32, templateParams: !152)
!32 = !{!33, !36, !37, !38, !40, !42, !46, !50, !56, !61, !66, !71, !75, !79, !83, !88, !94, !127, !134, !137, !140, !145, !146, !149, !150, !151}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !31, file: !29, line: 32, baseType: !34, size: 64, flags: DIFlagPublic)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !31, file: !29, line: 32, baseType: !34, size: 64, offset: 64, flags: DIFlagPublic)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !31, file: !29, line: 32, baseType: !34, size: 64, offset: 128, flags: DIFlagPublic)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !31, file: !29, line: 33, baseType: !39, size: 64, offset: 192, flags: DIFlagPublic)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !31, file: !29, line: 34, baseType: !41, size: 8, offset: 256, flags: DIFlagPublic)
!41 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !31, file: !29, line: 35, baseType: !43, size: 8, offset: 264, flags: DIFlagPublic)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DISubprogram(name: "Printer", scope: !31, file: !29, line: 37, type: !47, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !39, !34}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!50 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !31, file: !29, line: 57, type: !51, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !49, !54}
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!56 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !31, file: !29, line: 67, type: !57, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!57 = !DISubroutineType(types: !58)
!58 = !{!53, !49, !59}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 9, baseType: !60)
!60 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!61 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !31, file: !29, line: 72, type: !62, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubroutineType(types: !63)
!63 = !{!53, !49, !64}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 11, baseType: !65)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !31, file: !29, line: 77, type: !67, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!67 = !DISubroutineType(types: !68)
!68 = !{!53, !49, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 10, baseType: !70)
!70 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !31, file: !29, line: 82, type: !72, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!72 = !DISubroutineType(types: !73)
!73 = !{!53, !49, !74}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 12, baseType: !5)
!75 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !31, file: !29, line: 87, type: !76, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!76 = !DISubroutineType(types: !77)
!77 = !{!53, !49, !78}
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !31, file: !29, line: 92, type: !80, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!80 = !DISubroutineType(types: !81)
!81 = !{!53, !49, !82}
!82 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!83 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !31, file: !29, line: 97, type: !84, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{!53, !49, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!88 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !31, file: !29, line: 102, type: !89, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubroutineType(types: !90)
!90 = !{!53, !49, !91}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 14, baseType: !93)
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !31, file: !29, line: 108, type: !95, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubroutineType(types: !96)
!96 = !{!53, !49, !97}
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !10, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !100, identifier: "_ZTS13halide_type_t")
!100 = !{!101, !103, !104, !105, !109, !112, !116, !119, !120, !121, !124}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !99, file: !10, line: 434, baseType: !102, size: 8, align: 8)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !10, line: 413, baseType: !9)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !99, file: !10, line: 442, baseType: !11, size: 8, align: 8, offset: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !99, file: !10, line: 446, baseType: !92, size: 16, align: 16, offset: 16)
!105 = !DISubprogram(name: "halide_type_t", scope: !99, file: !10, line: 453, type: !106, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !102, !11, !92}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "halide_type_t", scope: !99, file: !10, line: 459, type: !110, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !108}
!112 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !99, file: !10, line: 463, type: !113, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{!99, !115, !92}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !99, file: !10, line: 468, type: !117, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!41, !115, !97}
!119 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !99, file: !10, line: 472, type: !117, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !99, file: !10, line: 476, type: !117, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !99, file: !10, line: 481, type: !122, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!122 = !DISubroutineType(types: !123)
!123 = !{!65, !115}
!124 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !99, file: !10, line: 485, type: !125, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{!74, !115}
!127 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !31, file: !29, line: 113, type: !128, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!128 = !DISubroutineType(types: !129)
!129 = !{!53, !49, !130}
!130 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !10, line: 1550, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !10, line: 1423, size: 448, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!134 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !31, file: !29, line: 119, type: !135, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!54, !49}
!137 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !31, file: !29, line: 131, type: !138, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !49}
!140 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !31, file: !29, line: 139, type: !141, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!69, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!145 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !31, file: !29, line: 143, type: !141, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !31, file: !29, line: 148, type: !147, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !49, !65}
!149 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !31, file: !29, line: 158, type: !135, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !31, file: !29, line: 162, type: !138, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!151 = !DISubprogram(name: "~Printer", scope: !31, file: !29, line: 166, type: !138, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !{!153, !154}
!153 = !DITemplateValueParameter(name: "type", type: !65, value: i32 0)
!154 = !DITemplateValueParameter(name: "length", type: !70, value: i64 1024)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", scope: !30, file: !29, line: 199, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !30, file: !29, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !157, templateParams: !220)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !168, !172, !175, !178, !181, !184, !187, !190, !193, !196, !199, !202, !205, !208, !213, !214, !217, !218, !219}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !29, line: 32, baseType: !34, size: 64, flags: DIFlagPublic)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !156, file: !29, line: 32, baseType: !34, size: 64, offset: 64, flags: DIFlagPublic)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !156, file: !29, line: 32, baseType: !34, size: 64, offset: 128, flags: DIFlagPublic)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !156, file: !29, line: 33, baseType: !39, size: 64, offset: 192, flags: DIFlagPublic)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !156, file: !29, line: 34, baseType: !41, size: 8, offset: 256, flags: DIFlagPublic)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !156, file: !29, line: 35, baseType: !43, size: 8, offset: 264, flags: DIFlagPublic)
!164 = !DISubprogram(name: "Printer", scope: !156, file: !29, line: 37, type: !165, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !39, !34}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !156, file: !29, line: 57, type: !169, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !167, !54}
!171 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 64)
!172 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEx", scope: !156, file: !29, line: 67, type: !173, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubroutineType(types: !174)
!174 = !{!171, !167, !59}
!175 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEi", scope: !156, file: !29, line: 72, type: !176, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{!171, !167, !64}
!178 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEy", scope: !156, file: !29, line: 77, type: !179, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{!171, !167, !69}
!181 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEj", scope: !156, file: !29, line: 82, type: !182, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!171, !167, !74}
!184 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEd", scope: !156, file: !29, line: 87, type: !185, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!171, !167, !78}
!187 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEf", scope: !156, file: !29, line: 92, type: !188, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{!171, !167, !82}
!190 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKv", scope: !156, file: !29, line: 97, type: !191, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DISubroutineType(types: !192)
!192 = !{!171, !167, !86}
!193 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE23write_float16_from_bitsEt", scope: !156, file: !29, line: 102, type: !194, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubroutineType(types: !195)
!195 = !{!171, !167, !91}
!196 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK13halide_type_t", scope: !156, file: !29, line: 108, type: !197, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DISubroutineType(types: !198)
!198 = !{!171, !167, !97}
!199 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsERK15halide_buffer_t", scope: !156, file: !29, line: 113, type: !200, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!171, !167, !130}
!202 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE3strEv", scope: !156, file: !29, line: 119, type: !203, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{!54, !167}
!205 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5clearEv", scope: !156, file: !29, line: 131, type: !206, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !167}
!208 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE4sizeEv", scope: !156, file: !29, line: 139, type: !209, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{!69, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!213 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE8capacityEv", scope: !156, file: !29, line: 143, type: !209, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE5eraseEi", scope: !156, file: !29, line: 148, type: !215, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !167, !65}
!217 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE16allocation_errorEv", scope: !156, file: !29, line: 158, type: !203, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !156, file: !29, line: 162, type: !206, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "~Printer", scope: !156, file: !29, line: 166, type: !206, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !{!221, !154}
!221 = !DITemplateValueParameter(name: "type", type: !65, value: i32 1)
!222 = !{!223, !224}
!223 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !22, file: !12, line: 225)
!224 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !21, file: !225, line: 6)
!225 = !DIFile(filename: "src/runtime/qurt_hvx.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!226 = !{i32 7, !"Dwarf Version", i32 4}
!227 = !{i32 2, !"Debug Info Version", i32 3}
!228 = !{i32 1, !"wchar_size", i32 4}
!229 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!230 = distinct !DISubprogram(name: "halide_qurt_hvx_lock", scope: !225, file: !225, line: 10, type: !231, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!65, !39}
!233 = !{!234, !235, !238}
!234 = !DILocalVariable(name: "user_context", arg: 1, scope: !230, file: !225, line: 10, type: !39)
!235 = !DILocalVariable(name: "mode", scope: !230, file: !225, line: 11, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "qurt_hvx_mode_t", file: !4, line: 239, baseType: !3)
!238 = !DILocalVariable(name: "result", scope: !230, file: !225, line: 13, type: !65)
!239 = !DILocation(line: 0, scope: !230)
!240 = !DILocalVariable(name: "this", arg: 1, scope: !241, type: !245, flags: DIFlagArtificial | DIFlagObjectPointer)
!241 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !31, file: !29, line: 37, type: !47, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !46, retainedNodes: !242)
!242 = !{!240, !243, !244}
!243 = !DILocalVariable(name: "ctx", arg: 2, scope: !241, file: !29, line: 37, type: !39)
!244 = !DILocalVariable(name: "mem", arg: 3, scope: !241, file: !29, line: 37, type: !34)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!246 = !DILocation(line: 0, scope: !241, inlinedAt: !247)
!247 = distinct !DILocation(line: 12, column: 5, scope: !230)
!248 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !247)
!249 = distinct !DILexicalBlock(scope: !250, file: !29, line: 43, column: 16)
!250 = distinct !DILexicalBlock(scope: !251, file: !29, line: 41, column: 20)
!251 = distinct !DILexicalBlock(scope: !252, file: !29, line: 39, column: 13)
!252 = distinct !DILexicalBlock(scope: !241, file: !29, line: 38, column: 54)
!253 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !247)
!254 = distinct !DILexicalBlock(scope: !252, file: !29, line: 48, column: 13)
!255 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !247)
!256 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !247)
!257 = distinct !DILexicalBlock(scope: !254, file: !29, line: 48, column: 18)
!258 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !247)
!259 = !{!260, !260, i64 0}
!260 = !{!"omnipotent char", !261, i64 0}
!261 = !{!"Simple C++ TBAA"}
!262 = !DILocation(line: 51, column: 9, scope: !257, inlinedAt: !247)
!263 = !DILocation(line: 0, scope: !254, inlinedAt: !247)
!264 = !DILocalVariable(name: "this", arg: 1, scope: !265, type: !245, flags: DIFlagArtificial | DIFlagObjectPointer)
!265 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !31, file: !29, line: 57, type: !51, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !50, retainedNodes: !266)
!266 = !{!264, !267}
!267 = !DILocalVariable(name: "arg", arg: 2, scope: !265, file: !29, line: 57, type: !54)
!268 = !DILocation(line: 0, scope: !265, inlinedAt: !269)
!269 = distinct !DILocation(line: 12, column: 25, scope: !230)
!270 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !269)
!271 = distinct !DILexicalBlock(scope: !272, file: !29, line: 61, column: 16)
!272 = distinct !DILexicalBlock(scope: !265, file: !29, line: 59, column: 13)
!273 = !DILocalVariable(name: "this", arg: 1, scope: !274, type: !245, flags: DIFlagArtificial | DIFlagObjectPointer)
!274 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !31, file: !29, line: 72, type: !62, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !61, retainedNodes: !275)
!275 = !{!273, !276}
!276 = !DILocalVariable(name: "arg", arg: 2, scope: !274, file: !29, line: 72, type: !64)
!277 = !DILocation(line: 0, scope: !274, inlinedAt: !278)
!278 = distinct !DILocation(line: 12, column: 51, scope: !230)
!279 = !DILocation(line: 73, column: 15, scope: !274, inlinedAt: !278)
!280 = !DILocation(line: 0, scope: !265, inlinedAt: !281)
!281 = distinct !DILocation(line: 12, column: 59, scope: !230)
!282 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !281)
!283 = !DILocalVariable(name: "this", arg: 1, scope: !284, type: !245, flags: DIFlagArtificial | DIFlagObjectPointer)
!284 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !31, file: !29, line: 166, type: !138, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !151, retainedNodes: !285)
!285 = !{!283}
!286 = !DILocation(line: 0, scope: !284, inlinedAt: !287)
!287 = distinct !DILocation(line: 12, column: 5, scope: !230)
!288 = !DILocation(line: 167, column: 13, scope: !289, inlinedAt: !287)
!289 = distinct !DILexicalBlock(scope: !284, file: !29, line: 166, column: 16)
!290 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !287)
!291 = distinct !DILexicalBlock(scope: !292, file: !29, line: 167, column: 19)
!292 = distinct !DILexicalBlock(scope: !289, file: !29, line: 167, column: 13)
!293 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !287)
!294 = !DILocalVariable(name: "this", arg: 1, scope: !295, type: !245, flags: DIFlagArtificial | DIFlagObjectPointer)
!295 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !31, file: !29, line: 162, type: !138, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !150, retainedNodes: !296)
!296 = !{!294}
!297 = !DILocation(line: 0, scope: !295, inlinedAt: !298)
!298 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !287)
!299 = distinct !DILexicalBlock(scope: !292, file: !29, line: 169, column: 16)
!300 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !298)
!301 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !298)
!302 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !298)
!303 = !DILocation(line: 174, column: 17, scope: !304, inlinedAt: !287)
!304 = distinct !DILexicalBlock(scope: !305, file: !29, line: 173, column: 46)
!305 = distinct !DILexicalBlock(scope: !306, file: !29, line: 173, column: 24)
!306 = distinct !DILexicalBlock(scope: !299, file: !29, line: 171, column: 17)
!307 = !DILocation(line: 181, column: 13, scope: !308, inlinedAt: !287)
!308 = distinct !DILexicalBlock(scope: !309, file: !29, line: 180, column: 40)
!309 = distinct !DILexicalBlock(scope: !289, file: !29, line: 180, column: 13)
!310 = !DILocation(line: 13, column: 18, scope: !230)
!311 = !DILocation(line: 0, scope: !241, inlinedAt: !312)
!312 = distinct !DILocation(line: 14, column: 5, scope: !230)
!313 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !312)
!314 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !312)
!315 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !312)
!316 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !312)
!317 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !312)
!318 = !DILocation(line: 51, column: 9, scope: !257, inlinedAt: !312)
!319 = !DILocation(line: 0, scope: !254, inlinedAt: !312)
!320 = !DILocation(line: 0, scope: !265, inlinedAt: !321)
!321 = distinct !DILocation(line: 14, column: 25, scope: !230)
!322 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !321)
!323 = !DILocation(line: 0, scope: !274, inlinedAt: !324)
!324 = distinct !DILocation(line: 14, column: 39, scope: !230)
!325 = !DILocation(line: 73, column: 48, scope: !274, inlinedAt: !324)
!326 = !DILocation(line: 73, column: 15, scope: !274, inlinedAt: !324)
!327 = !DILocation(line: 0, scope: !265, inlinedAt: !328)
!328 = distinct !DILocation(line: 14, column: 49, scope: !230)
!329 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !328)
!330 = !DILocation(line: 0, scope: !284, inlinedAt: !331)
!331 = distinct !DILocation(line: 14, column: 5, scope: !230)
!332 = !DILocation(line: 167, column: 13, scope: !289, inlinedAt: !331)
!333 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !331)
!334 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !331)
!335 = !DILocation(line: 0, scope: !295, inlinedAt: !336)
!336 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !331)
!337 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !336)
!338 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !336)
!339 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !336)
!340 = !DILocation(line: 174, column: 17, scope: !304, inlinedAt: !331)
!341 = !DILocation(line: 181, column: 13, scope: !308, inlinedAt: !331)
!342 = !DILocation(line: 15, column: 16, scope: !343)
!343 = distinct !DILexicalBlock(scope: !230, file: !225, line: 15, column: 9)
!344 = !DILocation(line: 15, column: 9, scope: !230)
!345 = !DILocalVariable(name: "this", arg: 1, scope: !346, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!346 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !156, file: !29, line: 37, type: !165, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !164, retainedNodes: !347)
!347 = !{!345, !348, !349}
!348 = !DILocalVariable(name: "ctx", arg: 2, scope: !346, file: !29, line: 37, type: !39)
!349 = !DILocalVariable(name: "mem", arg: 3, scope: !346, file: !29, line: 37, type: !34)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!351 = !DILocation(line: 0, scope: !346, inlinedAt: !352)
!352 = distinct !DILocation(line: 16, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !343, file: !225, line: 15, column: 29)
!354 = !DILocation(line: 44, column: 27, scope: !355, inlinedAt: !352)
!355 = distinct !DILexicalBlock(scope: !356, file: !29, line: 43, column: 16)
!356 = distinct !DILexicalBlock(scope: !357, file: !29, line: 41, column: 20)
!357 = distinct !DILexicalBlock(scope: !358, file: !29, line: 39, column: 13)
!358 = distinct !DILexicalBlock(scope: !346, file: !29, line: 38, column: 54)
!359 = !DILocation(line: 48, column: 13, scope: !360, inlinedAt: !352)
!360 = distinct !DILexicalBlock(scope: !358, file: !29, line: 48, column: 13)
!361 = !DILocation(line: 48, column: 13, scope: !358, inlinedAt: !352)
!362 = !DILocalVariable(name: "this", arg: 1, scope: !363, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!363 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !156, file: !29, line: 57, type: !169, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !168, retainedNodes: !364)
!364 = !{!362, !365}
!365 = !DILocalVariable(name: "arg", arg: 2, scope: !363, file: !29, line: 57, type: !54)
!366 = !DILocation(line: 0, scope: !363, inlinedAt: !367)
!367 = distinct !DILocation(line: 16, column: 29, scope: !353)
!368 = !DILocation(line: 62, column: 19, scope: !369, inlinedAt: !367)
!369 = distinct !DILexicalBlock(scope: !370, file: !29, line: 61, column: 16)
!370 = distinct !DILexicalBlock(scope: !363, file: !29, line: 59, column: 13)
!371 = !DILocalVariable(name: "this", arg: 1, scope: !372, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!372 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !156, file: !29, line: 166, type: !206, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !219, retainedNodes: !373)
!373 = !{!371}
!374 = !DILocation(line: 0, scope: !372, inlinedAt: !375)
!375 = distinct !DILocation(line: 16, column: 9, scope: !353)
!376 = !DILocation(line: 168, column: 13, scope: !377, inlinedAt: !375)
!377 = distinct !DILexicalBlock(scope: !378, file: !29, line: 167, column: 19)
!378 = distinct !DILexicalBlock(scope: !379, file: !29, line: 167, column: 13)
!379 = distinct !DILexicalBlock(scope: !372, file: !29, line: 166, column: 16)
!380 = !DILocation(line: 169, column: 9, scope: !377, inlinedAt: !375)
!381 = !DILocation(line: 49, column: 23, scope: !382, inlinedAt: !352)
!382 = distinct !DILexicalBlock(scope: !360, file: !29, line: 48, column: 18)
!383 = !DILocation(line: 50, column: 18, scope: !382, inlinedAt: !352)
!384 = !DILocalVariable(name: "this", arg: 1, scope: !385, type: !350, flags: DIFlagArtificial | DIFlagObjectPointer)
!385 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !156, file: !29, line: 162, type: !206, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !218, retainedNodes: !386)
!386 = !{!384}
!387 = !DILocation(line: 0, scope: !385, inlinedAt: !388)
!388 = distinct !DILocation(line: 170, column: 13, scope: !389, inlinedAt: !375)
!389 = distinct !DILexicalBlock(scope: !378, file: !29, line: 169, column: 16)
!390 = !DILocation(line: 163, column: 81, scope: !385, inlinedAt: !388)
!391 = !DILocation(line: 163, column: 87, scope: !385, inlinedAt: !388)
!392 = !DILocation(line: 163, column: 15, scope: !385, inlinedAt: !388)
!393 = !DILocation(line: 172, column: 17, scope: !394, inlinedAt: !375)
!394 = distinct !DILexicalBlock(scope: !395, file: !29, line: 171, column: 39)
!395 = distinct !DILexicalBlock(scope: !389, file: !29, line: 171, column: 17)
!396 = !DILocation(line: 181, column: 13, scope: !397, inlinedAt: !375)
!397 = distinct !DILexicalBlock(scope: !398, file: !29, line: 180, column: 40)
!398 = distinct !DILexicalBlock(scope: !379, file: !29, line: 180, column: 13)
!399 = !DILocation(line: 17, column: 9, scope: !353)
!400 = !DILocation(line: 20, column: 1, scope: !230)
!401 = !DISubprogram(name: "qurt_hvx_lock", scope: !4, file: !4, line: 241, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!65, !3}
!404 = !{}
!405 = distinct !DISubprogram(name: "halide_qurt_hvx_unlock", scope: !225, file: !225, line: 22, type: !231, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !406)
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "user_context", arg: 1, scope: !405, file: !225, line: 22, type: !39)
!408 = !DILocalVariable(name: "result", scope: !405, file: !225, line: 24, type: !65)
!409 = !DILocation(line: 0, scope: !405)
!410 = !DILocation(line: 0, scope: !241, inlinedAt: !411)
!411 = distinct !DILocation(line: 23, column: 5, scope: !405)
!412 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !411)
!413 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !411)
!414 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !411)
!415 = !DILocation(line: 0, scope: !265, inlinedAt: !416)
!416 = distinct !DILocation(line: 23, column: 25, scope: !405)
!417 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !416)
!418 = !DILocation(line: 0, scope: !284, inlinedAt: !419)
!419 = distinct !DILocation(line: 23, column: 5, scope: !405)
!420 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !419)
!421 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !419)
!422 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !411)
!423 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !411)
!424 = !DILocation(line: 0, scope: !295, inlinedAt: !425)
!425 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !419)
!426 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !425)
!427 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !425)
!428 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !425)
!429 = !DILocation(line: 174, column: 17, scope: !304, inlinedAt: !419)
!430 = !DILocation(line: 181, column: 13, scope: !308, inlinedAt: !419)
!431 = !DILocation(line: 24, column: 18, scope: !405)
!432 = !DILocation(line: 0, scope: !241, inlinedAt: !433)
!433 = distinct !DILocation(line: 25, column: 5, scope: !405)
!434 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !433)
!435 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !433)
!436 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !433)
!437 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !433)
!438 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !433)
!439 = !DILocation(line: 51, column: 9, scope: !257, inlinedAt: !433)
!440 = !DILocation(line: 0, scope: !254, inlinedAt: !433)
!441 = !DILocation(line: 0, scope: !265, inlinedAt: !442)
!442 = distinct !DILocation(line: 25, column: 25, scope: !405)
!443 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !442)
!444 = !DILocation(line: 0, scope: !274, inlinedAt: !445)
!445 = distinct !DILocation(line: 25, column: 39, scope: !405)
!446 = !DILocation(line: 73, column: 48, scope: !274, inlinedAt: !445)
!447 = !DILocation(line: 73, column: 15, scope: !274, inlinedAt: !445)
!448 = !DILocation(line: 0, scope: !265, inlinedAt: !449)
!449 = distinct !DILocation(line: 25, column: 49, scope: !405)
!450 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !449)
!451 = !DILocation(line: 0, scope: !284, inlinedAt: !452)
!452 = distinct !DILocation(line: 25, column: 5, scope: !405)
!453 = !DILocation(line: 167, column: 13, scope: !289, inlinedAt: !452)
!454 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !452)
!455 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !452)
!456 = !DILocation(line: 0, scope: !295, inlinedAt: !457)
!457 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !452)
!458 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !457)
!459 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !457)
!460 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !457)
!461 = !DILocation(line: 174, column: 17, scope: !304, inlinedAt: !452)
!462 = !DILocation(line: 181, column: 13, scope: !308, inlinedAt: !452)
!463 = !DILocation(line: 26, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !405, file: !225, line: 26, column: 9)
!465 = !DILocation(line: 26, column: 9, scope: !405)
!466 = !DILocation(line: 0, scope: !346, inlinedAt: !467)
!467 = distinct !DILocation(line: 27, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !225, line: 26, column: 29)
!469 = !DILocation(line: 44, column: 27, scope: !355, inlinedAt: !467)
!470 = !DILocation(line: 48, column: 13, scope: !360, inlinedAt: !467)
!471 = !DILocation(line: 48, column: 13, scope: !358, inlinedAt: !467)
!472 = !DILocation(line: 0, scope: !363, inlinedAt: !473)
!473 = distinct !DILocation(line: 27, column: 29, scope: !468)
!474 = !DILocation(line: 62, column: 19, scope: !369, inlinedAt: !473)
!475 = !DILocation(line: 0, scope: !372, inlinedAt: !476)
!476 = distinct !DILocation(line: 27, column: 9, scope: !468)
!477 = !DILocation(line: 168, column: 13, scope: !377, inlinedAt: !476)
!478 = !DILocation(line: 169, column: 9, scope: !377, inlinedAt: !476)
!479 = !DILocation(line: 49, column: 23, scope: !382, inlinedAt: !467)
!480 = !DILocation(line: 50, column: 18, scope: !382, inlinedAt: !467)
!481 = !DILocation(line: 0, scope: !385, inlinedAt: !482)
!482 = distinct !DILocation(line: 170, column: 13, scope: !389, inlinedAt: !476)
!483 = !DILocation(line: 163, column: 81, scope: !385, inlinedAt: !482)
!484 = !DILocation(line: 163, column: 87, scope: !385, inlinedAt: !482)
!485 = !DILocation(line: 163, column: 15, scope: !385, inlinedAt: !482)
!486 = !DILocation(line: 172, column: 17, scope: !394, inlinedAt: !476)
!487 = !DILocation(line: 181, column: 13, scope: !397, inlinedAt: !476)
!488 = !DILocation(line: 28, column: 9, scope: !468)
!489 = !DILocation(line: 32, column: 1, scope: !405)
!490 = !DISubprogram(name: "qurt_hvx_unlock", scope: !4, file: !4, line: 242, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!491 = !DISubroutineType(types: !492)
!492 = !{!65}
!493 = distinct !DISubprogram(name: "halide_qurt_hvx_unlock_as_destructor", scope: !225, file: !225, line: 34, type: !494, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !39, !39}
!496 = !{!497, !498}
!497 = !DILocalVariable(name: "user_context", arg: 1, scope: !493, file: !225, line: 34, type: !39)
!498 = !DILocalVariable(arg: 2, scope: !493, file: !225, line: 34, type: !39)
!499 = !DILocation(line: 0, scope: !493)
!500 = !DILocation(line: 35, column: 5, scope: !493)
!501 = !DILocation(line: 36, column: 1, scope: !493)
!502 = distinct !DISubprogram(name: "_halide_prefetch_2d", scope: !225, file: !225, line: 40, type: !503, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!65, !86, !65, !65, !65}
!505 = !{!506, !507, !508, !509, !510, !512}
!506 = !DILocalVariable(name: "ptr", arg: 1, scope: !502, file: !225, line: 40, type: !86)
!507 = !DILocalVariable(name: "width_bytes", arg: 2, scope: !502, file: !225, line: 40, type: !65)
!508 = !DILocalVariable(name: "height", arg: 3, scope: !502, file: !225, line: 40, type: !65)
!509 = !DILocalVariable(name: "stride_bytes", arg: 4, scope: !502, file: !225, line: 40, type: !65)
!510 = !DILocalVariable(name: "dir", scope: !502, file: !225, line: 48, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!512 = !DILocalVariable(name: "desc", scope: !502, file: !225, line: 49, type: !69)
!513 = !DILocation(line: 0, scope: !502)
!514 = !DILocation(line: 51, column: 32, scope: !502)
!515 = !DILocation(line: 51, column: 46, scope: !502)
!516 = !DILocation(line: 52, column: 32, scope: !502)
!517 = !DILocation(line: 52, column: 45, scope: !502)
!518 = !DILocation(line: 53, column: 32, scope: !502)
!519 = !DILocation(line: 52, column: 52, scope: !502)
!520 = !DILocation(line: 54, column: 5, scope: !502)
!521 = !{i32 1974}
!522 = !DILocation(line: 57, column: 5, scope: !502)
!523 = distinct !DISubprogram(name: "_halide_prefetch", scope: !225, file: !225, line: 60, type: !524, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!65, !86, !65}
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "ptr", arg: 1, scope: !523, file: !225, line: 60, type: !86)
!528 = !DILocalVariable(name: "size", arg: 2, scope: !523, file: !225, line: 60, type: !65)
!529 = !DILocation(line: 0, scope: !523)
!530 = !DILocation(line: 0, scope: !502, inlinedAt: !531)
!531 = distinct !DILocation(line: 61, column: 5, scope: !523)
!532 = !DILocation(line: 52, column: 32, scope: !502, inlinedAt: !531)
!533 = !DILocation(line: 52, column: 45, scope: !502, inlinedAt: !531)
!534 = !DILocation(line: 52, column: 52, scope: !502, inlinedAt: !531)
!535 = !DILocation(line: 54, column: 5, scope: !502, inlinedAt: !531)
!536 = !DILocation(line: 62, column: 5, scope: !523)
!537 = distinct !DISubprogram(name: "_halide_hexagon_buffer_get_host", scope: !225, file: !225, line: 70, type: !538, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !547)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hexagon_buffer_t_arg", file: !225, line: 65, size: 128, flags: DIFlagTypePassByValue, elements: !544, identifier: "_ZTS20hexagon_buffer_t_arg")
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !543, file: !225, line: 66, baseType: !69, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !543, file: !225, line: 67, baseType: !540, size: 64, offset: 64)
!547 = !{!548}
!548 = !DILocalVariable(name: "buf", arg: 1, scope: !537, file: !225, line: 70, type: !541)
!549 = !DILocation(line: 0, scope: !537)
!550 = !DILocation(line: 71, column: 17, scope: !537)
!551 = !{!552, !554, i64 8}
!552 = !{!"_ZTS20hexagon_buffer_t_arg", !553, i64 0, !554, i64 8}
!553 = !{!"long long", !260, i64 0}
!554 = !{!"any pointer", !260, i64 0}
!555 = !DILocation(line: 71, column: 5, scope: !537)
!556 = distinct !DISubprogram(name: "_halide_hexagon_buffer_get_device", scope: !225, file: !225, line: 74, type: !557, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!69, !541}
!559 = !{!560}
!560 = !DILocalVariable(name: "buf", arg: 1, scope: !556, file: !225, line: 74, type: !541)
!561 = !DILocation(line: 0, scope: !556)
!562 = !DILocation(line: 75, column: 17, scope: !556)
!563 = !{!552, !553, i64 0}
!564 = !DILocation(line: 75, column: 5, scope: !556)
!565 = !DISubprogram(name: "malloc", scope: !12, file: !12, line: 87, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!566 = !DISubroutineType(types: !567)
!567 = !{!39, !568}
!568 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!569 = !DISubprogram(name: "halide_error", scope: !10, file: !10, line: 111, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !39, !54}
!572 = !DISubprogram(name: "halide_print", scope: !10, file: !10, line: 97, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!573 = !DISubprogram(name: "free", scope: !12, file: !12, line: 86, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !39}
!576 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !10, file: !10, line: 973, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!577 = !DISubroutineType(types: !578)
!578 = !{!65, !39, !86, !70}
!579 = !DISubprogram(name: "halide_string_to_string", scope: !12, file: !12, line: 120, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!580 = !DISubroutineType(types: !581)
!581 = !{!34, !34, !34, !54}
!582 = !DISubprogram(name: "halide_int64_to_string", scope: !12, file: !12, line: 122, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !404)
!583 = !DISubroutineType(types: !584)
!584 = !{!34, !34, !34, !60, !65}
