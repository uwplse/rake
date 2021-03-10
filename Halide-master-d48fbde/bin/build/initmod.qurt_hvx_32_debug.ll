; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/qurt_hvx.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
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
  %2 = tail call i8* @malloc(i32 1024) #7, !dbg !248
  %3 = icmp eq i8* %2, null, !dbg !253
  br i1 %3, label %6, label %4, !dbg !255

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !256
  store i8 0, i8* %5, align 1, !dbg !258, !tbaa !259
  br label %6, !dbg !262

6:                                                ; preds = %1, %4
  %7 = phi i8* [ %5, %4 ], [ null, %1 ], !dbg !263
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !268
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !268
  %8 = tail call i8* @halide_string_to_string(i8* %2, i8* %7, i8* nonnull getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #7, !dbg !270
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !273, metadata !DIExpression()) #6, !dbg !277
  call void @llvm.dbg.value(metadata i32 1, metadata !276, metadata !DIExpression()) #6, !dbg !277
  %9 = tail call i8* @halide_int64_to_string(i8* %8, i8* %7, i64 1, i32 1) #7, !dbg !279
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !280
  %10 = tail call i8* @halide_string_to_string(i8* %9, i8* %7, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #7, !dbg !282
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !286
  br i1 %3, label %11, label %12, !dbg !288

11:                                               ; preds = %6
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !290
  br label %19, !dbg !293

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !297
  %13 = ptrtoint i8* %10 to i32, !dbg !300
  %14 = ptrtoint i8* %2 to i32, !dbg !300
  %15 = add i32 %13, 1, !dbg !300
  %16 = sub i32 %15, %14, !dbg !301
  %17 = sext i32 %16 to i64, !dbg !302
  %18 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %17) #7, !dbg !303
  tail call void @halide_print(i8* %0, i8* nonnull %2) #7, !dbg !304
  br label %19

19:                                               ; preds = %12, %11
  tail call void @free(i8* %2) #7, !dbg !308
  %20 = tail call i32 @qurt_hvx_lock(i32 1) #7, !dbg !311
  call void @llvm.dbg.value(metadata i32 %20, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !312
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !312
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !312
  %21 = tail call i8* @malloc(i32 1024) #7, !dbg !314
  %22 = icmp eq i8* %21, null, !dbg !315
  br i1 %22, label %25, label %23, !dbg !316

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, i8* %21, i32 1023, !dbg !317
  store i8 0, i8* %24, align 1, !dbg !318, !tbaa !259
  br label %25, !dbg !319

25:                                               ; preds = %19, %23
  %26 = phi i8* [ %24, %23 ], [ null, %19 ], !dbg !320
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !321
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !321
  %27 = tail call i8* @halide_string_to_string(i8* %21, i8* %26, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !323
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !273, metadata !DIExpression()) #6, !dbg !324
  call void @llvm.dbg.value(metadata i32 %20, metadata !276, metadata !DIExpression()) #6, !dbg !324
  %28 = sext i32 %20 to i64, !dbg !326
  %29 = tail call i8* @halide_int64_to_string(i8* %27, i8* %26, i64 %28, i32 1) #7, !dbg !327
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !328
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !328
  %30 = tail call i8* @halide_string_to_string(i8* %29, i8* %26, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !330
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !331
  br i1 %22, label %31, label %32, !dbg !333

31:                                               ; preds = %25
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !334
  br label %39, !dbg !335

32:                                               ; preds = %25
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !336
  %33 = ptrtoint i8* %30 to i32, !dbg !338
  %34 = ptrtoint i8* %21 to i32, !dbg !338
  %35 = add i32 %33, 1, !dbg !338
  %36 = sub i32 %35, %34, !dbg !339
  %37 = sext i32 %36 to i64, !dbg !340
  %38 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %21, i64 %37) #7, !dbg !341
  tail call void @halide_print(i8* %0, i8* nonnull %21) #7, !dbg !342
  br label %39

39:                                               ; preds = %32, %31
  tail call void @free(i8* %21) #7, !dbg !343
  %40 = icmp eq i32 %20, 0, !dbg !344
  br i1 %40, label %56, label %41, !dbg !346

41:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !347, metadata !DIExpression()) #6, !dbg !353
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()) #6, !dbg !353
  call void @llvm.dbg.value(metadata i8* null, metadata !351, metadata !DIExpression()) #6, !dbg !353
  %42 = tail call i8* @malloc(i32 1024) #7, !dbg !356
  %43 = icmp eq i8* %42, null, !dbg !361
  br i1 %43, label %44, label %46, !dbg !363

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !364, metadata !DIExpression()) #6, !dbg !368
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), metadata !367, metadata !DIExpression()) #6, !dbg !368
  %45 = tail call i8* @halide_string_to_string(i8* %42, i8* null, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !370
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !373, metadata !DIExpression()) #6, !dbg !376
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !378
  br label %55, !dbg !382

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, i8* %42, i32 1023, !dbg !383
  store i8 0, i8* %47, align 1, !dbg !385, !tbaa !259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !364, metadata !DIExpression()) #6, !dbg !368
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), metadata !367, metadata !DIExpression()) #6, !dbg !368
  %48 = tail call i8* @halide_string_to_string(i8* nonnull %42, i8* nonnull %47, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !370
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !373, metadata !DIExpression()) #6, !dbg !376
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !386, metadata !DIExpression()) #6, !dbg !389
  %49 = ptrtoint i8* %48 to i32, !dbg !392
  %50 = ptrtoint i8* %42 to i32, !dbg !392
  %51 = add i32 %49, 1, !dbg !392
  %52 = sub i32 %51, %50, !dbg !393
  %53 = sext i32 %52 to i64, !dbg !394
  %54 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %42, i64 %53) #7, !dbg !395
  tail call void @halide_error(i8* %0, i8* nonnull %42) #7, !dbg !396
  br label %55

55:                                               ; preds = %46, %44
  tail call void @free(i8* %42) #7, !dbg !399
  br label %56, !dbg !402

56:                                               ; preds = %39, %55
  %57 = phi i32 [ -1, %55 ], [ 0, %39 ], !dbg !239
  ret i32 %57, !dbg !403
}

declare !dbg !404 dso_local i32 @qurt_hvx_lock(i32) local_unnamed_addr #1

; Function Attrs: nounwind
define weak dso_local i32 @halide_qurt_hvx_unlock(i8* %0) local_unnamed_addr #0 !dbg !408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !410, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !413
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !413
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !413
  %2 = tail call i8* @malloc(i32 1024) #7, !dbg !415
  %3 = icmp eq i8* %2, null, !dbg !416
  br i1 %3, label %4, label %6, !dbg !417

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !418
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !418
  %5 = tail call i8* @halide_string_to_string(i8* %2, i8* null, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !420
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !421
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !423
  br label %15, !dbg !424

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, i8* %2, i32 1023, !dbg !425
  store i8 0, i8* %7, align 1, !dbg !426, !tbaa !259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !418
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !418
  %8 = tail call i8* @halide_string_to_string(i8* nonnull %2, i8* nonnull %7, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !420
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !421
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !427
  %9 = ptrtoint i8* %8 to i32, !dbg !429
  %10 = ptrtoint i8* %2 to i32, !dbg !429
  %11 = add i32 %9, 1, !dbg !429
  %12 = sub i32 %11, %10, !dbg !430
  %13 = sext i32 %12 to i64, !dbg !431
  %14 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %2, i64 %13) #7, !dbg !432
  tail call void @halide_print(i8* %0, i8* nonnull %2) #7, !dbg !433
  br label %15

15:                                               ; preds = %6, %4
  tail call void @free(i8* %2) #7, !dbg !434
  %16 = tail call i32 @qurt_hvx_unlock() #7, !dbg !435
  call void @llvm.dbg.value(metadata i32 %16, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !240, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i8* %0, metadata !243, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i8* null, metadata !244, metadata !DIExpression()) #6, !dbg !436
  %17 = tail call i8* @malloc(i32 1024) #7, !dbg !438
  %18 = icmp eq i8* %17, null, !dbg !439
  br i1 %18, label %21, label %19, !dbg !440

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, i8* %17, i32 1023, !dbg !441
  store i8 0, i8* %20, align 1, !dbg !442, !tbaa !259
  br label %21, !dbg !443

21:                                               ; preds = %15, %19
  %22 = phi i8* [ %20, %19 ], [ null, %15 ], !dbg !444
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !445
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !445
  %23 = tail call i8* @halide_string_to_string(i8* %17, i8* %22, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #7, !dbg !447
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !273, metadata !DIExpression()) #6, !dbg !448
  call void @llvm.dbg.value(metadata i32 %16, metadata !276, metadata !DIExpression()) #6, !dbg !448
  %24 = sext i32 %16 to i64, !dbg !450
  %25 = tail call i8* @halide_int64_to_string(i8* %23, i8* %22, i64 %24, i32 1) #7, !dbg !451
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !264, metadata !DIExpression()) #6, !dbg !452
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), metadata !267, metadata !DIExpression()) #6, !dbg !452
  %26 = tail call i8* @halide_string_to_string(i8* %25, i8* %22, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !454
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !283, metadata !DIExpression()) #6, !dbg !455
  br i1 %18, label %27, label %28, !dbg !457

27:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !458
  br label %35, !dbg !459

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !294, metadata !DIExpression()) #6, !dbg !460
  %29 = ptrtoint i8* %26 to i32, !dbg !462
  %30 = ptrtoint i8* %17 to i32, !dbg !462
  %31 = add i32 %29, 1, !dbg !462
  %32 = sub i32 %31, %30, !dbg !463
  %33 = sext i32 %32 to i64, !dbg !464
  %34 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %17, i64 %33) #7, !dbg !465
  tail call void @halide_print(i8* %0, i8* nonnull %17) #7, !dbg !466
  br label %35

35:                                               ; preds = %28, %27
  tail call void @free(i8* %17) #7, !dbg !467
  %36 = icmp eq i32 %16, 0, !dbg !468
  br i1 %36, label %52, label %37, !dbg !470

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !347, metadata !DIExpression()) #6, !dbg !471
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()) #6, !dbg !471
  call void @llvm.dbg.value(metadata i8* null, metadata !351, metadata !DIExpression()) #6, !dbg !471
  %38 = tail call i8* @malloc(i32 1024) #7, !dbg !474
  %39 = icmp eq i8* %38, null, !dbg !475
  br i1 %39, label %40, label %42, !dbg !476

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !364, metadata !DIExpression()) #6, !dbg !477
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), metadata !367, metadata !DIExpression()) #6, !dbg !477
  %41 = tail call i8* @halide_string_to_string(i8* %38, i8* null, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !373, metadata !DIExpression()) #6, !dbg !480
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #7, !dbg !482
  br label %51, !dbg !483

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, i8* %38, i32 1023, !dbg !484
  store i8 0, i8* %43, align 1, !dbg !485, !tbaa !259
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !364, metadata !DIExpression()) #6, !dbg !477
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), metadata !367, metadata !DIExpression()) #6, !dbg !477
  %44 = tail call i8* @halide_string_to_string(i8* nonnull %38, i8* nonnull %43, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #7, !dbg !479
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !373, metadata !DIExpression()) #6, !dbg !480
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer.0"* undef, metadata !386, metadata !DIExpression()) #6, !dbg !486
  %45 = ptrtoint i8* %44 to i32, !dbg !488
  %46 = ptrtoint i8* %38 to i32, !dbg !488
  %47 = add i32 %45, 1, !dbg !488
  %48 = sub i32 %47, %46, !dbg !489
  %49 = sext i32 %48 to i64, !dbg !490
  %50 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %38, i64 %49) #7, !dbg !491
  tail call void @halide_error(i8* %0, i8* nonnull %38) #7, !dbg !492
  br label %51

51:                                               ; preds = %42, %40
  tail call void @free(i8* %38) #7, !dbg !493
  br label %52, !dbg !494

52:                                               ; preds = %35, %51
  %53 = phi i32 [ -1, %51 ], [ 0, %35 ], !dbg !412
  ret i32 %53, !dbg !495
}

declare !dbg !496 dso_local i32 @qurt_hvx_unlock() local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_qurt_hvx_unlock_as_destructor(i8* %0, i8* %1) local_unnamed_addr #2 !dbg !499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i8* %1, metadata !504, metadata !DIExpression()), !dbg !505
  %3 = tail call i32 @halide_qurt_hvx_unlock(i8* %0) #8, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_prefetch_2d(i8* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 !dbg !508 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !512, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %1, metadata !513, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %2, metadata !514, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 %3, metadata !515, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32 1, metadata !516, metadata !DIExpression()), !dbg !519
  %5 = zext i32 %3 to i64, !dbg !520
  %6 = shl nuw i64 %5, 32, !dbg !521
  %7 = sext i32 %1 to i64, !dbg !522
  %8 = shl nsw i64 %7, 16, !dbg !523
  %9 = sext i32 %2 to i64, !dbg !524
  %10 = or i64 %8, %9, !dbg !525
  %11 = or i64 %10, %6, !dbg !525
  %12 = or i64 %11, 281474976710656, !dbg !525
  call void @llvm.dbg.value(metadata i64 %12, metadata !518, metadata !DIExpression()), !dbg !519
  tail call void asm sideeffect "l2fetch($0,$1)", "r,r"(i8* %0, i64 %12) #6, !dbg !526, !srcloc !527
  ret i32 0, !dbg !528
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak dso_local i32 @_halide_prefetch(i8* %0, i32 %1) local_unnamed_addr #3 !dbg !529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !533, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i32 %1, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i8* %0, metadata !512, metadata !DIExpression()) #6, !dbg !536
  call void @llvm.dbg.value(metadata i32 %1, metadata !513, metadata !DIExpression()) #6, !dbg !536
  call void @llvm.dbg.value(metadata i32 1, metadata !514, metadata !DIExpression()) #6, !dbg !536
  call void @llvm.dbg.value(metadata i32 1, metadata !515, metadata !DIExpression()) #6, !dbg !536
  call void @llvm.dbg.value(metadata i32 1, metadata !516, metadata !DIExpression()) #6, !dbg !536
  %3 = sext i32 %1 to i64, !dbg !538
  %4 = shl nsw i64 %3, 16, !dbg !539
  %5 = or i64 %4, 281479271677953, !dbg !540
  call void @llvm.dbg.value(metadata i64 %5, metadata !518, metadata !DIExpression()) #6, !dbg !536
  tail call void asm sideeffect "l2fetch($0,$1)", "r,r"(i8* %0, i64 %5) #6, !dbg !541, !srcloc !527
  ret i32 0, !dbg !542
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i8* @_halide_hexagon_buffer_get_host(%struct.hexagon_buffer_t_arg* %0) local_unnamed_addr #4 !dbg !543 {
  call void @llvm.dbg.value(metadata %struct.hexagon_buffer_t_arg* %0, metadata !554, metadata !DIExpression()), !dbg !555
  %2 = getelementptr inbounds %struct.hexagon_buffer_t_arg, %struct.hexagon_buffer_t_arg* %0, i32 0, i32 1, !dbg !556
  %3 = load i8*, i8** %2, align 8, !dbg !556, !tbaa !557
  ret i8* %3, !dbg !561
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak dso_local i64 @_halide_hexagon_buffer_get_device(%struct.hexagon_buffer_t_arg* %0) local_unnamed_addr #4 !dbg !562 {
  call void @llvm.dbg.value(metadata %struct.hexagon_buffer_t_arg* %0, metadata !566, metadata !DIExpression()), !dbg !567
  %2 = getelementptr inbounds %struct.hexagon_buffer_t_arg, %struct.hexagon_buffer_t_arg* %0, i32 0, i32 0, !dbg !568
  %3 = load i64, i64* %2, align 8, !dbg !568, !tbaa !569
  ret i64 %3, !dbg !570
}

declare !dbg !571 dso_local i8* @malloc(i32) local_unnamed_addr #1

declare !dbg !574 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #1

declare !dbg !577 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #1

declare !dbg !578 dso_local void @free(i8*) local_unnamed_addr #1

declare !dbg !581 dso_local i32 @halide_msan_annotate_memory_is_initialized(i8*, i8*, i64) local_unnamed_addr #1

declare !dbg !584 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #1

declare !dbg !587 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #1

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
!31 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !30, file: !29, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !32, templateParams: !152)
!32 = !{!33, !36, !37, !38, !40, !42, !46, !50, !56, !61, !66, !71, !75, !79, !83, !88, !94, !127, !134, !137, !140, !145, !146, !149, !150, !151}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !31, file: !29, line: 32, baseType: !34, size: 32, flags: DIFlagPublic)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !31, file: !29, line: 32, baseType: !34, size: 32, offset: 32, flags: DIFlagPublic)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !31, file: !29, line: 32, baseType: !34, size: 32, offset: 64, flags: DIFlagPublic)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !31, file: !29, line: 33, baseType: !39, size: 32, offset: 96, flags: DIFlagPublic)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !31, file: !29, line: 34, baseType: !41, size: 8, offset: 128, flags: DIFlagPublic)
!41 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !31, file: !29, line: 35, baseType: !43, size: 8, offset: 136, flags: DIFlagPublic)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DISubprogram(name: "Printer", scope: !31, file: !29, line: 37, type: !47, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !39, !34}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!50 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !31, file: !29, line: 57, type: !51, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !49, !54}
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
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
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
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
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !98, size: 32)
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
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!109 = !DISubprogram(name: "halide_type_t", scope: !99, file: !10, line: 459, type: !110, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !108}
!112 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !99, file: !10, line: 463, type: !113, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{!99, !115, !92}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!130 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !10, line: 1550, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !10, line: 1423, size: 320, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS15halide_buffer_t")
!134 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !31, file: !29, line: 119, type: !135, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!54, !49}
!137 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !31, file: !29, line: 131, type: !138, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !49}
!140 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !31, file: !29, line: 139, type: !141, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!69, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!156 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<1, 1024>", scope: !30, file: !29, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !157, templateParams: !220)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !168, !172, !175, !178, !181, !184, !187, !190, !193, !196, !199, !202, !205, !208, !213, !214, !217, !218, !219}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !29, line: 32, baseType: !34, size: 32, flags: DIFlagPublic)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !156, file: !29, line: 32, baseType: !34, size: 32, offset: 32, flags: DIFlagPublic)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !156, file: !29, line: 32, baseType: !34, size: 32, offset: 64, flags: DIFlagPublic)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !156, file: !29, line: 33, baseType: !39, size: 32, offset: 96, flags: DIFlagPublic)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !156, file: !29, line: 34, baseType: !41, size: 8, offset: 128, flags: DIFlagPublic)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !156, file: !29, line: 35, baseType: !43, size: 8, offset: 136, flags: DIFlagPublic)
!164 = !DISubprogram(name: "Printer", scope: !156, file: !29, line: 37, type: !165, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !39, !34}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!168 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !156, file: !29, line: 57, type: !169, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !167, !54}
!171 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !156, size: 32)
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
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
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
!302 = !DILocation(line: 163, column: 77, scope: !295, inlinedAt: !298)
!303 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !298)
!304 = !DILocation(line: 174, column: 17, scope: !305, inlinedAt: !287)
!305 = distinct !DILexicalBlock(scope: !306, file: !29, line: 173, column: 46)
!306 = distinct !DILexicalBlock(scope: !307, file: !29, line: 173, column: 24)
!307 = distinct !DILexicalBlock(scope: !299, file: !29, line: 171, column: 17)
!308 = !DILocation(line: 181, column: 13, scope: !309, inlinedAt: !287)
!309 = distinct !DILexicalBlock(scope: !310, file: !29, line: 180, column: 40)
!310 = distinct !DILexicalBlock(scope: !289, file: !29, line: 180, column: 13)
!311 = !DILocation(line: 13, column: 18, scope: !230)
!312 = !DILocation(line: 0, scope: !241, inlinedAt: !313)
!313 = distinct !DILocation(line: 14, column: 5, scope: !230)
!314 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !313)
!315 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !313)
!316 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !313)
!317 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !313)
!318 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !313)
!319 = !DILocation(line: 51, column: 9, scope: !257, inlinedAt: !313)
!320 = !DILocation(line: 0, scope: !254, inlinedAt: !313)
!321 = !DILocation(line: 0, scope: !265, inlinedAt: !322)
!322 = distinct !DILocation(line: 14, column: 25, scope: !230)
!323 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !322)
!324 = !DILocation(line: 0, scope: !274, inlinedAt: !325)
!325 = distinct !DILocation(line: 14, column: 39, scope: !230)
!326 = !DILocation(line: 73, column: 48, scope: !274, inlinedAt: !325)
!327 = !DILocation(line: 73, column: 15, scope: !274, inlinedAt: !325)
!328 = !DILocation(line: 0, scope: !265, inlinedAt: !329)
!329 = distinct !DILocation(line: 14, column: 49, scope: !230)
!330 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !329)
!331 = !DILocation(line: 0, scope: !284, inlinedAt: !332)
!332 = distinct !DILocation(line: 14, column: 5, scope: !230)
!333 = !DILocation(line: 167, column: 13, scope: !289, inlinedAt: !332)
!334 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !332)
!335 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !332)
!336 = !DILocation(line: 0, scope: !295, inlinedAt: !337)
!337 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !332)
!338 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !337)
!339 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !337)
!340 = !DILocation(line: 163, column: 77, scope: !295, inlinedAt: !337)
!341 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !337)
!342 = !DILocation(line: 174, column: 17, scope: !305, inlinedAt: !332)
!343 = !DILocation(line: 181, column: 13, scope: !309, inlinedAt: !332)
!344 = !DILocation(line: 15, column: 16, scope: !345)
!345 = distinct !DILexicalBlock(scope: !230, file: !225, line: 15, column: 9)
!346 = !DILocation(line: 15, column: 9, scope: !230)
!347 = !DILocalVariable(name: "this", arg: 1, scope: !348, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!348 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc", scope: !156, file: !29, line: 37, type: !165, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !164, retainedNodes: !349)
!349 = !{!347, !350, !351}
!350 = !DILocalVariable(name: "ctx", arg: 2, scope: !348, file: !29, line: 37, type: !39)
!351 = !DILocalVariable(name: "mem", arg: 3, scope: !348, file: !29, line: 37, type: !34)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!353 = !DILocation(line: 0, scope: !348, inlinedAt: !354)
!354 = distinct !DILocation(line: 16, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !345, file: !225, line: 15, column: 29)
!356 = !DILocation(line: 44, column: 27, scope: !357, inlinedAt: !354)
!357 = distinct !DILexicalBlock(scope: !358, file: !29, line: 43, column: 16)
!358 = distinct !DILexicalBlock(scope: !359, file: !29, line: 41, column: 20)
!359 = distinct !DILexicalBlock(scope: !360, file: !29, line: 39, column: 13)
!360 = distinct !DILexicalBlock(scope: !348, file: !29, line: 38, column: 54)
!361 = !DILocation(line: 48, column: 13, scope: !362, inlinedAt: !354)
!362 = distinct !DILexicalBlock(scope: !360, file: !29, line: 48, column: 13)
!363 = !DILocation(line: 48, column: 13, scope: !360, inlinedAt: !354)
!364 = !DILocalVariable(name: "this", arg: 1, scope: !365, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!365 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EElsEPKc", scope: !156, file: !29, line: 57, type: !169, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !168, retainedNodes: !366)
!366 = !{!364, !367}
!367 = !DILocalVariable(name: "arg", arg: 2, scope: !365, file: !29, line: 57, type: !54)
!368 = !DILocation(line: 0, scope: !365, inlinedAt: !369)
!369 = distinct !DILocation(line: 16, column: 29, scope: !355)
!370 = !DILocation(line: 62, column: 19, scope: !371, inlinedAt: !369)
!371 = distinct !DILexicalBlock(scope: !372, file: !29, line: 61, column: 16)
!372 = distinct !DILexicalBlock(scope: !365, file: !29, line: 59, column: 13)
!373 = !DILocalVariable(name: "this", arg: 1, scope: !374, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!374 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev", scope: !156, file: !29, line: 166, type: !206, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !219, retainedNodes: !375)
!375 = !{!373}
!376 = !DILocation(line: 0, scope: !374, inlinedAt: !377)
!377 = distinct !DILocation(line: 16, column: 9, scope: !355)
!378 = !DILocation(line: 168, column: 13, scope: !379, inlinedAt: !377)
!379 = distinct !DILexicalBlock(scope: !380, file: !29, line: 167, column: 19)
!380 = distinct !DILexicalBlock(scope: !381, file: !29, line: 167, column: 13)
!381 = distinct !DILexicalBlock(scope: !374, file: !29, line: 166, column: 16)
!382 = !DILocation(line: 169, column: 9, scope: !379, inlinedAt: !377)
!383 = !DILocation(line: 49, column: 23, scope: !384, inlinedAt: !354)
!384 = distinct !DILexicalBlock(scope: !362, file: !29, line: 48, column: 18)
!385 = !DILocation(line: 50, column: 18, scope: !384, inlinedAt: !354)
!386 = !DILocalVariable(name: "this", arg: 1, scope: !387, type: !352, flags: DIFlagArtificial | DIFlagObjectPointer)
!387 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EE28msan_annotate_is_initializedEv", scope: !156, file: !29, line: 162, type: !206, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !218, retainedNodes: !388)
!388 = !{!386}
!389 = !DILocation(line: 0, scope: !387, inlinedAt: !390)
!390 = distinct !DILocation(line: 170, column: 13, scope: !391, inlinedAt: !377)
!391 = distinct !DILexicalBlock(scope: !380, file: !29, line: 169, column: 16)
!392 = !DILocation(line: 163, column: 81, scope: !387, inlinedAt: !390)
!393 = !DILocation(line: 163, column: 87, scope: !387, inlinedAt: !390)
!394 = !DILocation(line: 163, column: 77, scope: !387, inlinedAt: !390)
!395 = !DILocation(line: 163, column: 15, scope: !387, inlinedAt: !390)
!396 = !DILocation(line: 172, column: 17, scope: !397, inlinedAt: !377)
!397 = distinct !DILexicalBlock(scope: !398, file: !29, line: 171, column: 39)
!398 = distinct !DILexicalBlock(scope: !391, file: !29, line: 171, column: 17)
!399 = !DILocation(line: 181, column: 13, scope: !400, inlinedAt: !377)
!400 = distinct !DILexicalBlock(scope: !401, file: !29, line: 180, column: 40)
!401 = distinct !DILexicalBlock(scope: !381, file: !29, line: 180, column: 13)
!402 = !DILocation(line: 17, column: 9, scope: !355)
!403 = !DILocation(line: 20, column: 1, scope: !230)
!404 = !DISubprogram(name: "qurt_hvx_lock", scope: !4, file: !4, line: 241, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!65, !3}
!407 = !{}
!408 = distinct !DISubprogram(name: "halide_qurt_hvx_unlock", scope: !225, file: !225, line: 22, type: !231, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!409 = !{!410, !411}
!410 = !DILocalVariable(name: "user_context", arg: 1, scope: !408, file: !225, line: 22, type: !39)
!411 = !DILocalVariable(name: "result", scope: !408, file: !225, line: 24, type: !65)
!412 = !DILocation(line: 0, scope: !408)
!413 = !DILocation(line: 0, scope: !241, inlinedAt: !414)
!414 = distinct !DILocation(line: 23, column: 5, scope: !408)
!415 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !414)
!416 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !414)
!417 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !414)
!418 = !DILocation(line: 0, scope: !265, inlinedAt: !419)
!419 = distinct !DILocation(line: 23, column: 25, scope: !408)
!420 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !419)
!421 = !DILocation(line: 0, scope: !284, inlinedAt: !422)
!422 = distinct !DILocation(line: 23, column: 5, scope: !408)
!423 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !422)
!424 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !422)
!425 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !414)
!426 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !414)
!427 = !DILocation(line: 0, scope: !295, inlinedAt: !428)
!428 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !422)
!429 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !428)
!430 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !428)
!431 = !DILocation(line: 163, column: 77, scope: !295, inlinedAt: !428)
!432 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !428)
!433 = !DILocation(line: 174, column: 17, scope: !305, inlinedAt: !422)
!434 = !DILocation(line: 181, column: 13, scope: !309, inlinedAt: !422)
!435 = !DILocation(line: 24, column: 18, scope: !408)
!436 = !DILocation(line: 0, scope: !241, inlinedAt: !437)
!437 = distinct !DILocation(line: 25, column: 5, scope: !408)
!438 = !DILocation(line: 44, column: 27, scope: !249, inlinedAt: !437)
!439 = !DILocation(line: 48, column: 13, scope: !254, inlinedAt: !437)
!440 = !DILocation(line: 48, column: 13, scope: !252, inlinedAt: !437)
!441 = !DILocation(line: 49, column: 23, scope: !257, inlinedAt: !437)
!442 = !DILocation(line: 50, column: 18, scope: !257, inlinedAt: !437)
!443 = !DILocation(line: 51, column: 9, scope: !257, inlinedAt: !437)
!444 = !DILocation(line: 0, scope: !254, inlinedAt: !437)
!445 = !DILocation(line: 0, scope: !265, inlinedAt: !446)
!446 = distinct !DILocation(line: 25, column: 25, scope: !408)
!447 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !446)
!448 = !DILocation(line: 0, scope: !274, inlinedAt: !449)
!449 = distinct !DILocation(line: 25, column: 39, scope: !408)
!450 = !DILocation(line: 73, column: 48, scope: !274, inlinedAt: !449)
!451 = !DILocation(line: 73, column: 15, scope: !274, inlinedAt: !449)
!452 = !DILocation(line: 0, scope: !265, inlinedAt: !453)
!453 = distinct !DILocation(line: 25, column: 49, scope: !408)
!454 = !DILocation(line: 62, column: 19, scope: !271, inlinedAt: !453)
!455 = !DILocation(line: 0, scope: !284, inlinedAt: !456)
!456 = distinct !DILocation(line: 25, column: 5, scope: !408)
!457 = !DILocation(line: 167, column: 13, scope: !289, inlinedAt: !456)
!458 = !DILocation(line: 168, column: 13, scope: !291, inlinedAt: !456)
!459 = !DILocation(line: 169, column: 9, scope: !291, inlinedAt: !456)
!460 = !DILocation(line: 0, scope: !295, inlinedAt: !461)
!461 = distinct !DILocation(line: 170, column: 13, scope: !299, inlinedAt: !456)
!462 = !DILocation(line: 163, column: 81, scope: !295, inlinedAt: !461)
!463 = !DILocation(line: 163, column: 87, scope: !295, inlinedAt: !461)
!464 = !DILocation(line: 163, column: 77, scope: !295, inlinedAt: !461)
!465 = !DILocation(line: 163, column: 15, scope: !295, inlinedAt: !461)
!466 = !DILocation(line: 174, column: 17, scope: !305, inlinedAt: !456)
!467 = !DILocation(line: 181, column: 13, scope: !309, inlinedAt: !456)
!468 = !DILocation(line: 26, column: 16, scope: !469)
!469 = distinct !DILexicalBlock(scope: !408, file: !225, line: 26, column: 9)
!470 = !DILocation(line: 26, column: 9, scope: !408)
!471 = !DILocation(line: 0, scope: !348, inlinedAt: !472)
!472 = distinct !DILocation(line: 27, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !225, line: 26, column: 29)
!474 = !DILocation(line: 44, column: 27, scope: !357, inlinedAt: !472)
!475 = !DILocation(line: 48, column: 13, scope: !362, inlinedAt: !472)
!476 = !DILocation(line: 48, column: 13, scope: !360, inlinedAt: !472)
!477 = !DILocation(line: 0, scope: !365, inlinedAt: !478)
!478 = distinct !DILocation(line: 27, column: 29, scope: !473)
!479 = !DILocation(line: 62, column: 19, scope: !371, inlinedAt: !478)
!480 = !DILocation(line: 0, scope: !374, inlinedAt: !481)
!481 = distinct !DILocation(line: 27, column: 9, scope: !473)
!482 = !DILocation(line: 168, column: 13, scope: !379, inlinedAt: !481)
!483 = !DILocation(line: 169, column: 9, scope: !379, inlinedAt: !481)
!484 = !DILocation(line: 49, column: 23, scope: !384, inlinedAt: !472)
!485 = !DILocation(line: 50, column: 18, scope: !384, inlinedAt: !472)
!486 = !DILocation(line: 0, scope: !387, inlinedAt: !487)
!487 = distinct !DILocation(line: 170, column: 13, scope: !391, inlinedAt: !481)
!488 = !DILocation(line: 163, column: 81, scope: !387, inlinedAt: !487)
!489 = !DILocation(line: 163, column: 87, scope: !387, inlinedAt: !487)
!490 = !DILocation(line: 163, column: 77, scope: !387, inlinedAt: !487)
!491 = !DILocation(line: 163, column: 15, scope: !387, inlinedAt: !487)
!492 = !DILocation(line: 172, column: 17, scope: !397, inlinedAt: !481)
!493 = !DILocation(line: 181, column: 13, scope: !400, inlinedAt: !481)
!494 = !DILocation(line: 28, column: 9, scope: !473)
!495 = !DILocation(line: 32, column: 1, scope: !408)
!496 = !DISubprogram(name: "qurt_hvx_unlock", scope: !4, file: !4, line: 242, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!497 = !DISubroutineType(types: !498)
!498 = !{!65}
!499 = distinct !DISubprogram(name: "halide_qurt_hvx_unlock_as_destructor", scope: !225, file: !225, line: 34, type: !500, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !39, !39}
!502 = !{!503, !504}
!503 = !DILocalVariable(name: "user_context", arg: 1, scope: !499, file: !225, line: 34, type: !39)
!504 = !DILocalVariable(arg: 2, scope: !499, file: !225, line: 34, type: !39)
!505 = !DILocation(line: 0, scope: !499)
!506 = !DILocation(line: 35, column: 5, scope: !499)
!507 = !DILocation(line: 36, column: 1, scope: !499)
!508 = distinct !DISubprogram(name: "_halide_prefetch_2d", scope: !225, file: !225, line: 40, type: !509, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!65, !86, !65, !65, !65}
!511 = !{!512, !513, !514, !515, !516, !518}
!512 = !DILocalVariable(name: "ptr", arg: 1, scope: !508, file: !225, line: 40, type: !86)
!513 = !DILocalVariable(name: "width_bytes", arg: 2, scope: !508, file: !225, line: 40, type: !65)
!514 = !DILocalVariable(name: "height", arg: 3, scope: !508, file: !225, line: 40, type: !65)
!515 = !DILocalVariable(name: "stride_bytes", arg: 4, scope: !508, file: !225, line: 40, type: !65)
!516 = !DILocalVariable(name: "dir", scope: !508, file: !225, line: 48, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!518 = !DILocalVariable(name: "desc", scope: !508, file: !225, line: 49, type: !69)
!519 = !DILocation(line: 0, scope: !508)
!520 = !DILocation(line: 51, column: 32, scope: !508)
!521 = !DILocation(line: 51, column: 46, scope: !508)
!522 = !DILocation(line: 52, column: 32, scope: !508)
!523 = !DILocation(line: 52, column: 45, scope: !508)
!524 = !DILocation(line: 53, column: 32, scope: !508)
!525 = !DILocation(line: 52, column: 52, scope: !508)
!526 = !DILocation(line: 54, column: 5, scope: !508)
!527 = !{i32 1974}
!528 = !DILocation(line: 57, column: 5, scope: !508)
!529 = distinct !DISubprogram(name: "_halide_prefetch", scope: !225, file: !225, line: 60, type: !530, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{!65, !86, !65}
!532 = !{!533, !534}
!533 = !DILocalVariable(name: "ptr", arg: 1, scope: !529, file: !225, line: 60, type: !86)
!534 = !DILocalVariable(name: "size", arg: 2, scope: !529, file: !225, line: 60, type: !65)
!535 = !DILocation(line: 0, scope: !529)
!536 = !DILocation(line: 0, scope: !508, inlinedAt: !537)
!537 = distinct !DILocation(line: 61, column: 5, scope: !529)
!538 = !DILocation(line: 52, column: 32, scope: !508, inlinedAt: !537)
!539 = !DILocation(line: 52, column: 45, scope: !508, inlinedAt: !537)
!540 = !DILocation(line: 52, column: 52, scope: !508, inlinedAt: !537)
!541 = !DILocation(line: 54, column: 5, scope: !508, inlinedAt: !537)
!542 = !DILocation(line: 62, column: 5, scope: !529)
!543 = distinct !DISubprogram(name: "_halide_hexagon_buffer_get_host", scope: !225, file: !225, line: 70, type: !544, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !553)
!544 = !DISubroutineType(types: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hexagon_buffer_t_arg", file: !225, line: 65, size: 128, flags: DIFlagTypePassByValue, elements: !550, identifier: "_ZTS20hexagon_buffer_t_arg")
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !549, file: !225, line: 66, baseType: !69, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !549, file: !225, line: 67, baseType: !546, size: 32, offset: 64)
!553 = !{!554}
!554 = !DILocalVariable(name: "buf", arg: 1, scope: !543, file: !225, line: 70, type: !547)
!555 = !DILocation(line: 0, scope: !543)
!556 = !DILocation(line: 71, column: 17, scope: !543)
!557 = !{!558, !560, i64 8}
!558 = !{!"_ZTS20hexagon_buffer_t_arg", !559, i64 0, !560, i64 8}
!559 = !{!"long long", !260, i64 0}
!560 = !{!"any pointer", !260, i64 0}
!561 = !DILocation(line: 71, column: 5, scope: !543)
!562 = distinct !DISubprogram(name: "_halide_hexagon_buffer_get_device", scope: !225, file: !225, line: 74, type: !563, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!69, !547}
!565 = !{!566}
!566 = !DILocalVariable(name: "buf", arg: 1, scope: !562, file: !225, line: 74, type: !547)
!567 = !DILocation(line: 0, scope: !562)
!568 = !DILocation(line: 75, column: 17, scope: !562)
!569 = !{!558, !559, i64 0}
!570 = !DILocation(line: 75, column: 5, scope: !562)
!571 = !DISubprogram(name: "malloc", scope: !12, file: !12, line: 87, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!572 = !DISubroutineType(types: !573)
!573 = !{!39, !5}
!574 = !DISubprogram(name: "halide_error", scope: !10, file: !10, line: 111, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !39, !54}
!577 = !DISubprogram(name: "halide_print", scope: !10, file: !10, line: 97, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!578 = !DISubprogram(name: "free", scope: !12, file: !12, line: 86, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !39}
!581 = !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !10, file: !10, line: 973, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!582 = !DISubroutineType(types: !583)
!583 = !{!65, !39, !86, !70}
!584 = !DISubprogram(name: "halide_string_to_string", scope: !12, file: !12, line: 120, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!585 = !DISubroutineType(types: !586)
!586 = !{!34, !34, !34, !54}
!587 = !DISubprogram(name: "halide_int64_to_string", scope: !12, file: !12, line: 122, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !407)
!588 = !DISubroutineType(types: !589)
!589 = !{!34, !34, !34, !60, !65}
