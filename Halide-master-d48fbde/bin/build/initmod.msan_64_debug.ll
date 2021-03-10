; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [6 x i8] }>
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"copy_memory: no copy needed as pointers are the same.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MSAN failure detected for \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" @ \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !278 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !297, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %1, metadata !298, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %2, metadata !299, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %3, metadata !300, metadata !DIExpression()), !dbg !308
  %5 = icmp sgt i32 %1, -1, !dbg !309
  br i1 %5, label %6, label %15, !dbg !310

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !298, metadata !DIExpression()), !dbg !308
  %8 = zext i32 %7 to i64, !dbg !311
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8, !dbg !311
  %10 = load i64, i64* %9, align 8, !dbg !311, !tbaa !312
  %11 = icmp eq i64 %10, 1, !dbg !316
  br i1 %11, label %12, label %15, !dbg !317

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !318
  call void @llvm.dbg.value(metadata i32 %13, metadata !298, metadata !DIExpression()), !dbg !308
  %14 = icmp sgt i32 %7, 0, !dbg !309
  br i1 %14, label %6, label %27, !dbg !310, !llvm.loop !320

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !323
  br i1 %17, label %27, label %18, !dbg !324

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !305, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %2, metadata !299, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %3, metadata !300, metadata !DIExpression()), !dbg !308
  %19 = sext i32 %16 to i64, !dbg !326
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19, !dbg !326
  %21 = load i64, i64* %20, align 8, !dbg !326, !tbaa !312
  %22 = icmp eq i64 %21, 0, !dbg !328
  br i1 %22, label %50, label %23, !dbg !329

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39, !dbg !329

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !330
  %29 = load i64, i64* %28, align 8, !dbg !330, !tbaa !331
  %30 = add i64 %29, %2, !dbg !333
  %31 = inttoptr i64 %30 to i8*, !dbg !334
  call void @llvm.dbg.value(metadata i8* %31, metadata !301, metadata !DIExpression()), !dbg !335
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !336
  %33 = load i64, i64* %32, align 8, !dbg !336, !tbaa !337
  %34 = add i64 %33, %3, !dbg !338
  %35 = inttoptr i64 %34 to i8*, !dbg !339
  call void @llvm.dbg.value(metadata i8* %35, metadata !304, metadata !DIExpression()), !dbg !335
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6, !dbg !340
  %37 = load i64, i64* %36, align 8, !dbg !340, !tbaa !341
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #6, !dbg !342
  br label %50, !dbg !343

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !305, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i64 %41, metadata !299, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %42, metadata !300, metadata !DIExpression()), !dbg !308
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #7, !dbg !344
  %43 = load i64, i64* %25, align 8, !dbg !346, !tbaa !312
  %44 = add i64 %43, %41, !dbg !347
  call void @llvm.dbg.value(metadata i64 %44, metadata !299, metadata !DIExpression()), !dbg !308
  %45 = load i64, i64* %26, align 8, !dbg !348, !tbaa !312
  %46 = add i64 %45, %42, !dbg !349
  call void @llvm.dbg.value(metadata i64 %46, metadata !300, metadata !DIExpression()), !dbg !308
  %47 = add nuw i64 %40, 1, !dbg !350
  call void @llvm.dbg.value(metadata i64 %47, metadata !305, metadata !DIExpression()), !dbg !325
  %48 = load i64, i64* %20, align 8, !dbg !326, !tbaa !312
  %49 = icmp ult i64 %47, %48, !dbg !328
  br i1 %49, label %39, label %50, !dbg !329, !llvm.loop !351

50:                                               ; preds = %39, %18, %27
  ret void, !dbg !353
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !354 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !358 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata i8* %1, metadata !363, metadata !DIExpression()), !dbg !364
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0, !dbg !365
  %4 = load i64, i64* %3, align 8, !dbg !365, !tbaa !331
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1, !dbg !367
  %6 = load i64, i64* %5, align 8, !dbg !367, !tbaa !337
  %7 = icmp eq i64 %4, %6, !dbg !368
  br i1 %7, label %11, label %8, !dbg !369

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2, !dbg !370
  %10 = load i64, i64* %9, align 8, !dbg !370, !tbaa !372
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #7, !dbg !373
  br label %25, !dbg !374

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !375, metadata !DIExpression()) #8, !dbg !381
  call void @llvm.dbg.value(metadata i8* %1, metadata !378, metadata !DIExpression()) #8, !dbg !381
  call void @llvm.dbg.value(metadata i8* null, metadata !379, metadata !DIExpression()) #8, !dbg !381
  %12 = tail call i8* @malloc(i64 1024) #6, !dbg !384
  %13 = icmp eq i8* %12, null, !dbg !389
  br i1 %13, label %14, label %16, !dbg !391

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !395, metadata !DIExpression()) #8, !dbg !396
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #6, !dbg !398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !401, metadata !DIExpression()) #8, !dbg !404
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !406
  br label %24, !dbg !410

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i64 1023, !dbg !411
  store i8 0, i8* %17, align 1, !dbg !413, !tbaa !414
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), metadata !395, metadata !DIExpression()) #8, !dbg !396
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0)) #6, !dbg !398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !401, metadata !DIExpression()) #8, !dbg !404
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !415, metadata !DIExpression()) #8, !dbg !418
  %19 = ptrtoint i8* %18 to i64, !dbg !421
  %20 = ptrtoint i8* %12 to i64, !dbg !421
  %21 = add i64 %19, 1, !dbg !421
  %22 = sub i64 %21, %20, !dbg !422
  %23 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %22) #6, !dbg !423
  tail call void @halide_print(i8* %1, i8* nonnull %12) #6, !dbg !424
  br label %24

24:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #6, !dbg !428
  br label %25

25:                                               ; preds = %24, %8
  ret void, !dbg !431
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !432 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !437, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i1 %2, metadata !438, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !464
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !439, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i1 %4, metadata !440, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !464
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #8, !dbg !465
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !441, metadata !DIExpression()), !dbg !466
  br i1 %2, label %8, label %12, !dbg !467

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2, !dbg !468
  %10 = load i8*, i8** %9, align 8, !dbg !468, !tbaa !469
  %11 = ptrtoint i8* %10 to i64, !dbg !476
  br label %15, !dbg !467

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0, !dbg !477
  %14 = load i64, i64* %13, align 8, !dbg !477, !tbaa !478
  br label %15, !dbg !467

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ], !dbg !467
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0, !dbg !479
  store i64 %16, i64* %17, align 8, !dbg !480, !tbaa !331
  br i1 %4, label %18, label %22, !dbg !481

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !482
  %20 = load i8*, i8** %19, align 8, !dbg !482, !tbaa !469
  %21 = ptrtoint i8* %20 to i64, !dbg !483
  br label %25, !dbg !481

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !484
  %24 = load i64, i64* %23, align 8, !dbg !484, !tbaa !478
  br label %25, !dbg !481

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ], !dbg !481
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1, !dbg !485
  store i64 %26, i64* %27, align 8, !dbg !486, !tbaa !337
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !487, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !491
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1, !dbg !493
  %29 = load i8, i8* %28, align 1, !dbg !493, !tbaa !494
  %30 = zext i8 %29 to i32, !dbg !493
  %31 = add nuw nsw i32 %30, 7, !dbg !495
  %32 = lshr i32 %31, 3, !dbg !496
  %33 = zext i32 %32 to i64, !dbg !497
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6, !dbg !498
  store i64 %33, i64* %34, align 8, !dbg !499, !tbaa !341
  call void @llvm.dbg.value(metadata i32 0, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 0, metadata !442, metadata !DIExpression()), !dbg !500
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0, !dbg !501
  store i64 1, i64* %35, align 8, !dbg !504, !tbaa !312
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0, !dbg !505
  store i64 0, i64* %36, align 8, !dbg !506, !tbaa !312
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0, !dbg !507
  store i64 0, i64* %37, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 1, metadata !442, metadata !DIExpression()), !dbg !500
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1, !dbg !501
  store i64 1, i64* %38, align 8, !dbg !504, !tbaa !312
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1, !dbg !505
  store i64 0, i64* %39, align 8, !dbg !506, !tbaa !312
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1, !dbg !507
  store i64 0, i64* %40, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 2, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 2, metadata !442, metadata !DIExpression()), !dbg !500
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2, !dbg !501
  store i64 1, i64* %41, align 8, !dbg !504, !tbaa !312
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2, !dbg !505
  store i64 0, i64* %42, align 8, !dbg !506, !tbaa !312
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2, !dbg !507
  store i64 0, i64* %43, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 3, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 3, metadata !442, metadata !DIExpression()), !dbg !500
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3, !dbg !501
  store i64 1, i64* %44, align 8, !dbg !504, !tbaa !312
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3, !dbg !505
  store i64 0, i64* %45, align 8, !dbg !506, !tbaa !312
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3, !dbg !507
  store i64 0, i64* %46, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 4, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 4, metadata !442, metadata !DIExpression()), !dbg !500
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4, !dbg !501
  store i64 1, i64* %47, align 8, !dbg !504, !tbaa !312
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4, !dbg !505
  store i64 0, i64* %48, align 8, !dbg !506, !tbaa !312
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4, !dbg !507
  store i64 0, i64* %49, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 5, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 5, metadata !442, metadata !DIExpression()), !dbg !500
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5, !dbg !501
  store i64 1, i64* %50, align 8, !dbg !504, !tbaa !312
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5, !dbg !505
  store i64 0, i64* %51, align 8, !dbg !506, !tbaa !312
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5, !dbg !507
  store i64 0, i64* %52, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 6, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 6, metadata !442, metadata !DIExpression()), !dbg !500
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6, !dbg !501
  store i64 1, i64* %53, align 8, !dbg !504, !tbaa !312
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6, !dbg !505
  store i64 0, i64* %54, align 8, !dbg !506, !tbaa !312
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6, !dbg !507
  store i64 0, i64* %55, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 7, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 7, metadata !442, metadata !DIExpression()), !dbg !500
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7, !dbg !501
  store i64 1, i64* %56, align 8, !dbg !504, !tbaa !312
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7, !dbg !505
  store i64 0, i64* %57, align 8, !dbg !506, !tbaa !312
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7, !dbg !507
  store i64 0, i64* %58, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 8, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 8, metadata !442, metadata !DIExpression()), !dbg !500
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8, !dbg !501
  store i64 1, i64* %59, align 8, !dbg !504, !tbaa !312
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8, !dbg !505
  store i64 0, i64* %60, align 8, !dbg !506, !tbaa !312
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8, !dbg !507
  store i64 0, i64* %61, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 9, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 9, metadata !442, metadata !DIExpression()), !dbg !500
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9, !dbg !501
  store i64 1, i64* %62, align 8, !dbg !504, !tbaa !312
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9, !dbg !505
  store i64 0, i64* %63, align 8, !dbg !506, !tbaa !312
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9, !dbg !507
  store i64 0, i64* %64, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 10, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 10, metadata !442, metadata !DIExpression()), !dbg !500
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10, !dbg !501
  store i64 1, i64* %65, align 8, !dbg !504, !tbaa !312
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10, !dbg !505
  store i64 0, i64* %66, align 8, !dbg !506, !tbaa !312
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10, !dbg !507
  store i64 0, i64* %67, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 11, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 11, metadata !442, metadata !DIExpression()), !dbg !500
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11, !dbg !501
  store i64 1, i64* %68, align 8, !dbg !504, !tbaa !312
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11, !dbg !505
  store i64 0, i64* %69, align 8, !dbg !506, !tbaa !312
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11, !dbg !507
  store i64 0, i64* %70, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 12, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 12, metadata !442, metadata !DIExpression()), !dbg !500
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12, !dbg !501
  store i64 1, i64* %71, align 8, !dbg !504, !tbaa !312
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12, !dbg !505
  store i64 0, i64* %72, align 8, !dbg !506, !tbaa !312
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12, !dbg !507
  store i64 0, i64* %73, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 13, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 13, metadata !442, metadata !DIExpression()), !dbg !500
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13, !dbg !501
  store i64 1, i64* %74, align 8, !dbg !504, !tbaa !312
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13, !dbg !505
  store i64 0, i64* %75, align 8, !dbg !506, !tbaa !312
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13, !dbg !507
  store i64 0, i64* %76, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 14, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 14, metadata !442, metadata !DIExpression()), !dbg !500
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14, !dbg !501
  store i64 1, i64* %77, align 8, !dbg !504, !tbaa !312
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14, !dbg !505
  store i64 0, i64* %78, align 8, !dbg !506, !tbaa !312
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14, !dbg !507
  store i64 0, i64* %79, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 15, metadata !442, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.value(metadata i64 15, metadata !442, metadata !DIExpression()), !dbg !500
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15, !dbg !501
  store i64 1, i64* %80, align 8, !dbg !504, !tbaa !312
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15, !dbg !505
  store i64 0, i64* %81, align 8, !dbg !506, !tbaa !312
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15, !dbg !507
  store i64 0, i64* %82, align 8, !dbg !508, !tbaa !312
  call void @llvm.dbg.value(metadata i64 16, metadata !442, metadata !DIExpression()), !dbg !500
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2, !dbg !509
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !510
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !511
  %85 = load i32, i32* %84, align 4, !dbg !511, !tbaa !513
  %86 = icmp sgt i32 %85, 0, !dbg !514
  br i1 %86, label %87, label %93, !dbg !515

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !516
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !516
  %92 = zext i32 %85 to i64, !dbg !514
  br label %100, !dbg !515

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ], !dbg !517
  %95 = load i64, i64* %34, align 8, !dbg !518, !tbaa !341
  %96 = mul i64 %94, %95, !dbg !517
  store i64 %96, i64* %83, align 8, !dbg !517, !tbaa !372
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !519
  %98 = load i32, i32* %97, align 4, !dbg !519, !tbaa !513
  %99 = icmp eq i32 %85, %98, !dbg !520
  br i1 %99, label %116, label %125, !dbg !521

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ], !dbg !510
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ], !dbg !510
  call void @llvm.dbg.value(metadata i64 %101, metadata !444, metadata !DIExpression()), !dbg !510
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2, !dbg !522
  %104 = load i32, i32* %103, align 4, !dbg !522, !tbaa !524
  %105 = sext i32 %104 to i64, !dbg !526
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0, !dbg !527
  %107 = load i32, i32* %106, align 4, !dbg !527, !tbaa !528
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0, !dbg !529
  %109 = load i32, i32* %108, align 4, !dbg !529, !tbaa !528
  %110 = sub nsw i32 %107, %109, !dbg !530
  %111 = sext i32 %110 to i64, !dbg !531
  %112 = mul nsw i64 %111, %105, !dbg !532
  %113 = add i64 %112, %102, !dbg !533
  %114 = add nuw nsw i64 %101, 1, !dbg !534
  call void @llvm.dbg.value(metadata i64 %114, metadata !444, metadata !DIExpression()), !dbg !510
  %115 = icmp eq i64 %114, %92, !dbg !514
  br i1 %115, label %93, label %100, !dbg !515, !llvm.loop !535

116:                                              ; preds = %93
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !487, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !537
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !487, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !539
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !541
  %118 = load i8, i8* %117, align 1, !dbg !541, !tbaa !494
  %119 = zext i8 %118 to i32, !dbg !541
  %120 = add nuw nsw i32 %119, 7, !dbg !542
  %121 = lshr i32 %120, 3, !dbg !543
  %122 = icmp ne i32 %32, %121, !dbg !544
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122, !dbg !545
  br i1 %124, label %125, label %127, !dbg !545

125:                                              ; preds = %116, %93
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !446, metadata !DIExpression()), !dbg !546
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !546
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false), !dbg !546
  br label %253, !dbg !547

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0, !dbg !548
  br i1 %128, label %136, label %129, !dbg !549

129:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !452, metadata !DIExpression()), !dbg !550
  br i1 %86, label %130, label %251, !dbg !551

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !516
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !516
  %135 = zext i32 %85 to i64, !dbg !552
  br label %144, !dbg !551

136:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !449, metadata !DIExpression()), !dbg !553
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !553
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false), !dbg !553
  br label %253, !dbg !554

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !dbg !555, !tbaa !341
  %140 = load i64, i64* %36, align 8, !dbg !556, !tbaa !312
  %141 = icmp eq i64 %139, %140, !dbg !557
  br i1 %141, label %142, label %251, !dbg !558

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !dbg !559, !tbaa !312
  br label %198, !dbg !558

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !452, metadata !DIExpression()), !dbg !550
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2, !dbg !560
  %147 = load i32, i32* %146, align 4, !dbg !560, !tbaa !524
  %148 = sext i32 %147 to i64, !dbg !561
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !487, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !562
  %149 = mul nsw i64 %148, %33, !dbg !564
  call void @llvm.dbg.value(metadata i64 %149, metadata !454, metadata !DIExpression()), !dbg !565
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2, !dbg !566
  %151 = load i32, i32* %150, align 4, !dbg !566, !tbaa !524
  %152 = sext i32 %151 to i64, !dbg !567
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !487, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !568
  %153 = mul nsw i64 %152, %33, !dbg !570
  call void @llvm.dbg.value(metadata i64 %153, metadata !457, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 0, metadata !458, metadata !DIExpression()), !dbg !565
  %154 = icmp eq i64 %145, 0, !dbg !571
  br i1 %154, label %170, label %155, !dbg !574

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159, !dbg !574

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i32 undef, metadata !458, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !565
  %158 = trunc i64 %145 to i32, !dbg !575
  br label %170, !dbg !575

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i64 %160, metadata !458, metadata !DIExpression()), !dbg !565
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160, !dbg !577
  %162 = load i64, i64* %161, align 8, !dbg !577, !tbaa !312
  %163 = icmp ult i64 %149, %162, !dbg !580
  br i1 %163, label %167, label %164, !dbg !581

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1, !dbg !582
  call void @llvm.dbg.value(metadata i64 %165, metadata !458, metadata !DIExpression()), !dbg !565
  %166 = icmp eq i64 %165, %145, !dbg !571
  br i1 %166, label %167, label %159, !dbg !574, !llvm.loop !583

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32, !dbg !585
  br label %170, !dbg !575

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ], !dbg !585
  call void @llvm.dbg.value(metadata i64 %145, metadata !459, metadata !DIExpression()), !dbg !586
  %172 = zext i32 %171 to i64, !dbg !575
  %173 = icmp ugt i64 %145, %172, !dbg !575
  br i1 %173, label %174, label %176, !dbg !587

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64, !dbg !587
  br label %185, !dbg !587

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1, !dbg !588
  %178 = load i32, i32* %177, align 4, !dbg !588, !tbaa !589
  %179 = sext i32 %178 to i64, !dbg !590
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172, !dbg !591
  store i64 %179, i64* %180, align 8, !dbg !592, !tbaa !312
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172, !dbg !593
  store i64 %149, i64* %181, align 8, !dbg !594, !tbaa !312
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172, !dbg !595
  store i64 %153, i64* %182, align 8, !dbg !596, !tbaa !312
  %183 = add nuw nsw i64 %145, 1, !dbg !597
  call void @llvm.dbg.value(metadata i64 %183, metadata !452, metadata !DIExpression()), !dbg !550
  %184 = icmp eq i64 %183, %135, !dbg !552
  br i1 %184, label %138, label %144, !dbg !551, !llvm.loop !598

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !459, metadata !DIExpression()), !dbg !586
  %187 = add nsw i64 %186, -1, !dbg !600
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187, !dbg !602
  %189 = load i64, i64* %188, align 8, !dbg !602, !tbaa !312
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186, !dbg !603
  store i64 %189, i64* %190, align 8, !dbg !604, !tbaa !312
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187, !dbg !605
  %192 = load i64, i64* %191, align 8, !dbg !605, !tbaa !312
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186, !dbg !606
  store i64 %192, i64* %193, align 8, !dbg !607, !tbaa !312
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187, !dbg !608
  %195 = load i64, i64* %194, align 8, !dbg !608, !tbaa !312
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186, !dbg !609
  store i64 %195, i64* %196, align 8, !dbg !610, !tbaa !312
  call void @llvm.dbg.value(metadata i64 %187, metadata !459, metadata !DIExpression()), !dbg !586
  %197 = icmp sgt i64 %187, %175, !dbg !575
  br i1 %197, label %185, label %176, !dbg !587, !llvm.loop !611

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ], !dbg !559
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199, !dbg !613
  br i1 %201, label %202, label %251, !dbg !614

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !dbg !615, !tbaa !312
  %204 = mul i64 %203, %199, !dbg !616
  store i64 %204, i64* %34, align 8, !dbg !616, !tbaa !341
  call void @llvm.dbg.value(metadata i64 1, metadata !461, metadata !DIExpression()), !dbg !617
  %205 = load i64, i64* %38, align 8, !dbg !618, !tbaa !312
  store i64 %205, i64* %35, align 8, !dbg !621, !tbaa !312
  %206 = load i64, i64* %39, align 8, !dbg !622, !tbaa !312
  store i64 %206, i64* %36, align 8, !dbg !623, !tbaa !312
  %207 = load i64, i64* %40, align 8, !dbg !624, !tbaa !312
  store i64 %207, i64* %37, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 2, metadata !461, metadata !DIExpression()), !dbg !617
  %208 = load i64, i64* %41, align 8, !dbg !618, !tbaa !312
  store i64 %208, i64* %38, align 8, !dbg !621, !tbaa !312
  %209 = load i64, i64* %42, align 8, !dbg !622, !tbaa !312
  store i64 %209, i64* %39, align 8, !dbg !623, !tbaa !312
  %210 = load i64, i64* %43, align 8, !dbg !624, !tbaa !312
  store i64 %210, i64* %40, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 3, metadata !461, metadata !DIExpression()), !dbg !617
  %211 = load i64, i64* %44, align 8, !dbg !618, !tbaa !312
  store i64 %211, i64* %41, align 8, !dbg !621, !tbaa !312
  %212 = load i64, i64* %45, align 8, !dbg !622, !tbaa !312
  store i64 %212, i64* %42, align 8, !dbg !623, !tbaa !312
  %213 = load i64, i64* %46, align 8, !dbg !624, !tbaa !312
  store i64 %213, i64* %43, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 4, metadata !461, metadata !DIExpression()), !dbg !617
  %214 = load i64, i64* %47, align 8, !dbg !618, !tbaa !312
  store i64 %214, i64* %44, align 8, !dbg !621, !tbaa !312
  %215 = load i64, i64* %48, align 8, !dbg !622, !tbaa !312
  store i64 %215, i64* %45, align 8, !dbg !623, !tbaa !312
  %216 = load i64, i64* %49, align 8, !dbg !624, !tbaa !312
  store i64 %216, i64* %46, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 5, metadata !461, metadata !DIExpression()), !dbg !617
  %217 = load i64, i64* %50, align 8, !dbg !618, !tbaa !312
  store i64 %217, i64* %47, align 8, !dbg !621, !tbaa !312
  %218 = load i64, i64* %51, align 8, !dbg !622, !tbaa !312
  store i64 %218, i64* %48, align 8, !dbg !623, !tbaa !312
  %219 = load i64, i64* %52, align 8, !dbg !624, !tbaa !312
  store i64 %219, i64* %49, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 6, metadata !461, metadata !DIExpression()), !dbg !617
  %220 = load i64, i64* %53, align 8, !dbg !618, !tbaa !312
  store i64 %220, i64* %50, align 8, !dbg !621, !tbaa !312
  %221 = load i64, i64* %54, align 8, !dbg !622, !tbaa !312
  store i64 %221, i64* %51, align 8, !dbg !623, !tbaa !312
  %222 = load i64, i64* %55, align 8, !dbg !624, !tbaa !312
  store i64 %222, i64* %52, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 7, metadata !461, metadata !DIExpression()), !dbg !617
  %223 = load i64, i64* %56, align 8, !dbg !618, !tbaa !312
  store i64 %223, i64* %53, align 8, !dbg !621, !tbaa !312
  %224 = load i64, i64* %57, align 8, !dbg !622, !tbaa !312
  store i64 %224, i64* %54, align 8, !dbg !623, !tbaa !312
  %225 = load i64, i64* %58, align 8, !dbg !624, !tbaa !312
  store i64 %225, i64* %55, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 8, metadata !461, metadata !DIExpression()), !dbg !617
  %226 = load i64, i64* %59, align 8, !dbg !618, !tbaa !312
  store i64 %226, i64* %56, align 8, !dbg !621, !tbaa !312
  %227 = load i64, i64* %60, align 8, !dbg !622, !tbaa !312
  store i64 %227, i64* %57, align 8, !dbg !623, !tbaa !312
  %228 = load i64, i64* %61, align 8, !dbg !624, !tbaa !312
  store i64 %228, i64* %58, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 9, metadata !461, metadata !DIExpression()), !dbg !617
  %229 = load i64, i64* %62, align 8, !dbg !618, !tbaa !312
  store i64 %229, i64* %59, align 8, !dbg !621, !tbaa !312
  %230 = load i64, i64* %63, align 8, !dbg !622, !tbaa !312
  store i64 %230, i64* %60, align 8, !dbg !623, !tbaa !312
  %231 = load i64, i64* %64, align 8, !dbg !624, !tbaa !312
  store i64 %231, i64* %61, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 10, metadata !461, metadata !DIExpression()), !dbg !617
  %232 = load i64, i64* %65, align 8, !dbg !618, !tbaa !312
  store i64 %232, i64* %62, align 8, !dbg !621, !tbaa !312
  %233 = load i64, i64* %66, align 8, !dbg !622, !tbaa !312
  store i64 %233, i64* %63, align 8, !dbg !623, !tbaa !312
  %234 = load i64, i64* %67, align 8, !dbg !624, !tbaa !312
  store i64 %234, i64* %64, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 11, metadata !461, metadata !DIExpression()), !dbg !617
  %235 = load i64, i64* %68, align 8, !dbg !618, !tbaa !312
  store i64 %235, i64* %65, align 8, !dbg !621, !tbaa !312
  %236 = load i64, i64* %69, align 8, !dbg !622, !tbaa !312
  store i64 %236, i64* %66, align 8, !dbg !623, !tbaa !312
  %237 = load i64, i64* %70, align 8, !dbg !624, !tbaa !312
  store i64 %237, i64* %67, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 12, metadata !461, metadata !DIExpression()), !dbg !617
  %238 = load i64, i64* %71, align 8, !dbg !618, !tbaa !312
  store i64 %238, i64* %68, align 8, !dbg !621, !tbaa !312
  %239 = load i64, i64* %72, align 8, !dbg !622, !tbaa !312
  store i64 %239, i64* %69, align 8, !dbg !623, !tbaa !312
  %240 = load i64, i64* %73, align 8, !dbg !624, !tbaa !312
  store i64 %240, i64* %70, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 13, metadata !461, metadata !DIExpression()), !dbg !617
  %241 = load i64, i64* %74, align 8, !dbg !618, !tbaa !312
  store i64 %241, i64* %71, align 8, !dbg !621, !tbaa !312
  %242 = load i64, i64* %75, align 8, !dbg !622, !tbaa !312
  store i64 %242, i64* %72, align 8, !dbg !623, !tbaa !312
  %243 = load i64, i64* %76, align 8, !dbg !624, !tbaa !312
  store i64 %243, i64* %73, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 14, metadata !461, metadata !DIExpression()), !dbg !617
  %244 = load i64, i64* %77, align 8, !dbg !618, !tbaa !312
  store i64 %244, i64* %74, align 8, !dbg !621, !tbaa !312
  %245 = load i64, i64* %78, align 8, !dbg !622, !tbaa !312
  store i64 %245, i64* %75, align 8, !dbg !623, !tbaa !312
  %246 = load i64, i64* %79, align 8, !dbg !624, !tbaa !312
  store i64 %246, i64* %76, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 15, metadata !461, metadata !DIExpression()), !dbg !617
  %247 = load i64, i64* %80, align 8, !dbg !618, !tbaa !312
  store i64 %247, i64* %77, align 8, !dbg !621, !tbaa !312
  %248 = load i64, i64* %81, align 8, !dbg !622, !tbaa !312
  store i64 %248, i64* %78, align 8, !dbg !623, !tbaa !312
  %249 = load i64, i64* %82, align 8, !dbg !624, !tbaa !312
  store i64 %249, i64* %79, align 8, !dbg !625, !tbaa !312
  call void @llvm.dbg.value(metadata i64 16, metadata !461, metadata !DIExpression()), !dbg !617
  store i64 1, i64* %80, align 8, !dbg !626, !tbaa !312
  store i64 0, i64* %81, align 8, !dbg !627, !tbaa !312
  store i64 0, i64* %82, align 8, !dbg !628, !tbaa !312
  %250 = icmp eq i64 %204, %206, !dbg !557
  br i1 %250, label %198, label %251, !dbg !558, !llvm.loop !629

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !dbg !631, !tbaa.struct !632
  br label %253, !dbg !633

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8, !dbg !634
  ret void, !dbg !634
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !635 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !639, metadata !DIExpression()), !dbg !640
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #7, !dbg !641
  ret void, !dbg !642
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !643 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !645, metadata !DIExpression()), !dbg !646
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #7, !dbg !647
  ret void, !dbg !648
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %1, i64 %2) local_unnamed_addr #0 !dbg !649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !654, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i8* %1, metadata !655, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata i64 %2, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @__msan_unpoison(i8* %1, i64 %2) #6, !dbg !658
  ret i32 0, !dbg !659
}

declare dso_local void @__msan_unpoison(i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %1, i64 %2, i8* %3) local_unnamed_addr #4 !dbg !660 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !664, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i8* %1, metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i64 %2, metadata !666, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i8* %3, metadata !667, metadata !DIExpression()), !dbg !670
  %5 = tail call i64 @__msan_test_shadow(i8* %1, i64 %2) #6, !dbg !671
  call void @llvm.dbg.value(metadata i64 %5, metadata !668, metadata !DIExpression()), !dbg !670
  %6 = icmp sgt i64 %5, -1, !dbg !672
  br i1 %6, label %7, label %37, !dbg !674

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !375, metadata !DIExpression()) #8, !dbg !675
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()) #8, !dbg !675
  call void @llvm.dbg.value(metadata i8* null, metadata !379, metadata !DIExpression()) #8, !dbg !675
  %8 = tail call i8* @malloc(i64 1024) #6, !dbg !678
  %9 = icmp eq i8* %8, null, !dbg !679
  br i1 %9, label %12, label %10, !dbg !680

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023, !dbg !681
  store i8 0, i8* %11, align 1, !dbg !682, !tbaa !414
  br label %12, !dbg !683

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ], !dbg !684
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !685
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), metadata !395, metadata !DIExpression()) #8, !dbg !685
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !687
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !688
  call void @llvm.dbg.value(metadata i8* %3, metadata !395, metadata !DIExpression()) #8, !dbg !688
  %15 = icmp eq i8* %3, null, !dbg !690
  br i1 %15, label %16, label %18, !dbg !691

16:                                               ; preds = %12
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !692
  br label %20, !dbg !694

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %3) #6, !dbg !695
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i8* [ %19, %18 ], [ %17, %16 ], !dbg !696
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !697
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), metadata !395, metadata !DIExpression()) #8, !dbg !697
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %13, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !699
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !700, metadata !DIExpression()) #8, !dbg !704
  call void @llvm.dbg.value(metadata i8* %1, metadata !703, metadata !DIExpression()) #8, !dbg !704
  %23 = tail call i8* @halide_pointer_to_string(i8* %22, i8* %13, i8* %1) #6, !dbg !706
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !395, metadata !DIExpression()) #8, !dbg !707
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !709
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !710, metadata !DIExpression()) #8, !dbg !714
  call void @llvm.dbg.value(metadata i64 %5, metadata !713, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !714
  %25 = shl i64 %5, 32, !dbg !716
  %26 = ashr exact i64 %25, 32, !dbg !716
  %27 = tail call i8* @halide_int64_to_string(i8* %24, i8* %13, i64 %26, i32 1) #6, !dbg !717
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), metadata !395, metadata !DIExpression()) #8, !dbg !718
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !401, metadata !DIExpression()) #8, !dbg !721
  br i1 %9, label %29, label %30, !dbg !723

29:                                               ; preds = %20
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !724
  br label %36, !dbg !725

30:                                               ; preds = %20
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !415, metadata !DIExpression()) #8, !dbg !726
  %31 = ptrtoint i8* %28 to i64, !dbg !728
  %32 = ptrtoint i8* %8 to i64, !dbg !728
  %33 = add i64 %31, 1, !dbg !728
  %34 = sub i64 %33, %32, !dbg !729
  %35 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %34) #6, !dbg !730
  tail call void @halide_print(i8* %0, i8* nonnull %8) #6, !dbg !731
  br label %36

36:                                               ; preds = %29, %30
  call void @free(i8* %8) #6, !dbg !732
  call void @__msan_check_mem_is_initialized(i8* %1, i64 %2) #6, !dbg !733
  br label %37, !dbg !734

37:                                               ; preds = %36, %4
  ret i32 0, !dbg !735
}

declare dso_local i64 @__msan_test_shadow(i8*, i64) local_unnamed_addr #3

declare dso_local void @__msan_check_mem_is_initialized(i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3) local_unnamed_addr #0 !dbg !736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !740, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %1, metadata !741, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i32 %2, metadata !742, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata i64 %3, metadata !743, metadata !DIExpression()), !dbg !750
  %5 = icmp sgt i32 %2, -1, !dbg !751
  br i1 %5, label %6, label %15, !dbg !752

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !742, metadata !DIExpression()), !dbg !750
  %8 = zext i32 %7 to i64, !dbg !753
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %8, !dbg !753
  %10 = load i64, i64* %9, align 8, !dbg !753, !tbaa !312
  %11 = icmp eq i64 %10, 1, !dbg !754
  br i1 %11, label %12, label %15, !dbg !755

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1, !dbg !756
  call void @llvm.dbg.value(metadata i32 %13, metadata !742, metadata !DIExpression()), !dbg !750
  %14 = icmp sgt i32 %7, 0, !dbg !751
  br i1 %14, label %6, label %26, !dbg !752, !llvm.loop !758

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %2, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1, !dbg !760
  br i1 %17, label %26, label %18, !dbg !761

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !747, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i64 %3, metadata !743, metadata !DIExpression()), !dbg !750
  %19 = sext i32 %16 to i64, !dbg !763
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %19, !dbg !763
  %21 = load i64, i64* %20, align 8, !dbg !763, !tbaa !312
  %22 = icmp eq i64 %21, 0, !dbg !765
  br i1 %22, label %42, label %23, !dbg !766

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %19
  br label %34, !dbg !766

26:                                               ; preds = %12, %15
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0, !dbg !767
  %28 = load i64, i64* %27, align 8, !dbg !767, !tbaa !331
  %29 = add i64 %28, %3, !dbg !768
  %30 = inttoptr i64 %29 to i8*, !dbg !769
  call void @llvm.dbg.value(metadata i8* %30, metadata !744, metadata !DIExpression()), !dbg !770
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6, !dbg !771
  %32 = load i64, i64* %31, align 8, !dbg !771, !tbaa !341
  %33 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %30, i64 %32) #7, !dbg !772
  br label %42, !dbg !773

34:                                               ; preds = %23, %34
  %35 = phi i64 [ 0, %23 ], [ %39, %34 ]
  %36 = phi i64 [ %3, %23 ], [ %38, %34 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !747, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i64 %36, metadata !743, metadata !DIExpression()), !dbg !750
  tail call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %24, i64 %36) #7, !dbg !774
  %37 = load i64, i64* %25, align 8, !dbg !776, !tbaa !312
  %38 = add i64 %37, %36, !dbg !777
  call void @llvm.dbg.value(metadata i64 %38, metadata !743, metadata !DIExpression()), !dbg !750
  %39 = add nuw i64 %35, 1, !dbg !778
  call void @llvm.dbg.value(metadata i64 %39, metadata !747, metadata !DIExpression()), !dbg !762
  %40 = load i64, i64* %20, align 8, !dbg !763, !tbaa !312
  %41 = icmp ult i64 %39, %40, !dbg !765
  br i1 %41, label %34, label %42, !dbg !766, !llvm.loop !779

42:                                               ; preds = %34, %18, %26
  ret void, !dbg !781
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3, i8* %4) local_unnamed_addr #0 !dbg !782 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !786, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %1, metadata !787, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i32 %2, metadata !788, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i64 %3, metadata !789, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i8* %4, metadata !790, metadata !DIExpression()), !dbg !797
  %6 = icmp sgt i32 %2, -1, !dbg !798
  br i1 %6, label %7, label %16, !dbg !799

7:                                                ; preds = %5, %13
  %8 = phi i32 [ %14, %13 ], [ %2, %5 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !788, metadata !DIExpression()), !dbg !797
  %9 = zext i32 %8 to i64, !dbg !800
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %9, !dbg !800
  %11 = load i64, i64* %10, align 8, !dbg !800, !tbaa !312
  %12 = icmp eq i64 %11, 1, !dbg !801
  br i1 %12, label %13, label %16, !dbg !802

13:                                               ; preds = %7
  %14 = add nsw i32 %8, -1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %14, metadata !788, metadata !DIExpression()), !dbg !797
  %15 = icmp sgt i32 %8, 0, !dbg !798
  br i1 %15, label %7, label %27, !dbg !799, !llvm.loop !805

16:                                               ; preds = %7, %5
  %17 = phi i32 [ %2, %5 ], [ %8, %7 ]
  %18 = icmp eq i32 %17, -1, !dbg !807
  br i1 %18, label %27, label %19, !dbg !808

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i64 0, metadata !794, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i64 %3, metadata !789, metadata !DIExpression()), !dbg !797
  %20 = sext i32 %17 to i64, !dbg !810
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %20, !dbg !810
  %22 = load i64, i64* %21, align 8, !dbg !810, !tbaa !312
  %23 = icmp eq i64 %22, 0, !dbg !812
  br i1 %23, label %43, label %24, !dbg !813

24:                                               ; preds = %19
  %25 = add nsw i32 %17, -1
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %20
  br label %35, !dbg !813

27:                                               ; preds = %13, %16
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0, !dbg !814
  %29 = load i64, i64* %28, align 8, !dbg !814, !tbaa !331
  %30 = add i64 %29, %3, !dbg !815
  %31 = inttoptr i64 %30 to i8*, !dbg !816
  call void @llvm.dbg.value(metadata i8* %31, metadata !791, metadata !DIExpression()), !dbg !817
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6, !dbg !818
  %33 = load i64, i64* %32, align 8, !dbg !818, !tbaa !341
  %34 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %31, i64 %33, i8* %4) #7, !dbg !819
  br label %43, !dbg !820

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %40, %35 ]
  %37 = phi i64 [ %3, %24 ], [ %39, %35 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !794, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i64 %37, metadata !789, metadata !DIExpression()), !dbg !797
  tail call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %25, i64 %37, i8* %4) #7, !dbg !821
  %38 = load i64, i64* %26, align 8, !dbg !823, !tbaa !312
  %39 = add i64 %38, %37, !dbg !824
  call void @llvm.dbg.value(metadata i64 %39, metadata !789, metadata !DIExpression()), !dbg !797
  %40 = add nuw i64 %36, 1, !dbg !825
  call void @llvm.dbg.value(metadata i64 %40, metadata !794, metadata !DIExpression()), !dbg !809
  %41 = load i64, i64* %21, align 8, !dbg !810, !tbaa !312
  %42 = icmp ult i64 %40, %41, !dbg !812
  br i1 %42, label %35, label %43, !dbg !813, !llvm.loop !826

43:                                               ; preds = %35, %19, %27
  ret void, !dbg !828
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !829 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !833, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !834, metadata !DIExpression()), !dbg !836
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !837
  br i1 %4, label %17, label %5, !dbg !839

5:                                                ; preds = %2
  %6 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %6) #8, !dbg !840
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %3, metadata !835, metadata !DIExpression()), !dbg !841
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #7, !dbg !842
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i64 0, i32 6, !dbg !843
  %8 = load i64, i64* %7, align 8, !dbg !843, !tbaa !341
  %9 = icmp eq i64 %8, 0, !dbg !845
  br i1 %9, label %16, label %10, !dbg !846

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !853, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i32 2, metadata !856, metadata !DIExpression()), !dbg !857
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !859
  %12 = load i64, i64* %11, align 8, !dbg !859, !tbaa !860
  %13 = and i64 %12, 2, !dbg !861
  %14 = icmp eq i64 %13, 0, !dbg !862
  br i1 %14, label %15, label %16, !dbg !863

15:                                               ; preds = %10
  call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %3, i32 15, i64 0) #7, !dbg !864
  br label %16, !dbg !865

16:                                               ; preds = %10, %5, %15
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %6) #8, !dbg !866
  br label %17

17:                                               ; preds = %2, %16
  ret i32 0, !dbg !866
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_msan_annotate_buffer_is_initialized_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !871, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i8* %1, metadata !872, metadata !DIExpression()), !dbg !873
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*, !dbg !874
  %4 = tail call i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %3) #7, !dbg !875
  ret void, !dbg !876
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_msan_check_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1, i8* %2) local_unnamed_addr #0 !dbg !877 {
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !881, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !882, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8* %2, metadata !883, metadata !DIExpression()), !dbg !885
  %5 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !886
  br i1 %5, label %28, label %6, !dbg !888

6:                                                ; preds = %3
  %7 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !889
  %8 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* nonnull %7, i64 56, i8* %2) #7, !dbg !890
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6, !dbg !891
  %10 = bitcast %struct.halide_dimension_t** %9 to i8**, !dbg !891
  %11 = load i8*, i8** %10, align 8, !dbg !891, !tbaa !516
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5, !dbg !892
  %13 = load i32, i32* %12, align 4, !dbg !892, !tbaa !513
  %14 = sext i32 %13 to i64, !dbg !893
  %15 = shl nsw i64 %14, 4, !dbg !894
  %16 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %11, i64 %15, i8* %2) #7, !dbg !895
  %17 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %17) #8, !dbg !896
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !884, metadata !DIExpression()), !dbg !897
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #7, !dbg !898
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6, !dbg !899
  %19 = load i64, i64* %18, align 8, !dbg !899, !tbaa !341
  %20 = icmp eq i64 %19, 0, !dbg !901
  br i1 %20, label %27, label %21, !dbg !902

21:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !847, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !853, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i32 2, metadata !856, metadata !DIExpression()), !dbg !906
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3, !dbg !908
  %23 = load i64, i64* %22, align 8, !dbg !908, !tbaa !860
  %24 = and i64 %23, 2, !dbg !909
  %25 = icmp eq i64 %24, 0, !dbg !910
  br i1 %25, label %26, label %27, !dbg !911

26:                                               ; preds = %21
  call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i8* %2) #7, !dbg !912
  br label %27, !dbg !913

27:                                               ; preds = %21, %6, %26
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %17) #8, !dbg !914
  br label %28

28:                                               ; preds = %3, %27
  ret i32 0, !dbg !914
}

declare !dbg !915 dso_local i8* @malloc(i64) local_unnamed_addr #3

declare !dbg !918 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !921 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !922 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !925 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !928 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !931 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!274, !275, !276}
!llvm.ident = !{!277}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, imports: !272, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{!3, !14}
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
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1415, baseType: !15, size: 32, elements: !16, identifier: "_ZTS19halide_buffer_flags")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!19 = !{!20, !21, !64, !233, !270, !60, !271, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !23, file: !22, line: 203, baseType: !27)
!22 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!23 = !DINamespace(scope: !24)
!24 = !DINamespace(name: "Internal", scope: !25)
!25 = !DINamespace(name: "Runtime", scope: !26)
!26 = !DINamespace(name: "Halide", scope: null)
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !23, file: !22, line: 30, size: 320, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !28, templateParams: !267)
!28 = !{!29, !32, !33, !34, !35, !37, !41, !45, !51, !56, !61, !66, !70, !74, !78, !83, !89, !122, !249, !252, !255, !260, !261, !264, !265, !266}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !27, file: !22, line: 32, baseType: !30, size: 64, flags: DIFlagPublic)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !27, file: !22, line: 32, baseType: !30, size: 64, offset: 64, flags: DIFlagPublic)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !27, file: !22, line: 32, baseType: !30, size: 64, offset: 128, flags: DIFlagPublic)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !27, file: !22, line: 33, baseType: !20, size: 64, offset: 192, flags: DIFlagPublic)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !27, file: !22, line: 34, baseType: !36, size: 8, offset: 256, flags: DIFlagPublic)
!36 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !27, file: !22, line: 35, baseType: !38, size: 8, offset: 264, flags: DIFlagPublic)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DISubprogram(name: "Printer", scope: !27, file: !22, line: 37, type: !42, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !20, !30}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!45 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !27, file: !22, line: 57, type: !46, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !44, !49}
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!51 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEx", scope: !27, file: !22, line: 67, type: !52, scopeLine: 67, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!52 = !DISubroutineType(types: !53)
!53 = !{!48, !44, !54}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 9, baseType: !55)
!55 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!56 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !27, file: !22, line: 72, type: !57, scopeLine: 72, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!57 = !DISubroutineType(types: !58)
!58 = !{!48, !44, !59}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 11, baseType: !60)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEy", scope: !27, file: !22, line: 77, type: !62, scopeLine: 77, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!62 = !DISubroutineType(types: !63)
!63 = !{!48, !44, !64}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 10, baseType: !65)
!65 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEj", scope: !27, file: !22, line: 82, type: !67, scopeLine: 82, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!67 = !DISubroutineType(types: !68)
!68 = !{!48, !44, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 12, baseType: !15)
!70 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEd", scope: !27, file: !22, line: 87, type: !71, scopeLine: 87, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!71 = !DISubroutineType(types: !72)
!72 = !{!48, !44, !73}
!73 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!74 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEf", scope: !27, file: !22, line: 92, type: !75, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DISubroutineType(types: !76)
!76 = !{!48, !44, !77}
!77 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!78 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !27, file: !22, line: 97, type: !79, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!79 = !DISubroutineType(types: !80)
!80 = !{!48, !44, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!83 = !DISubprogram(name: "write_float16_from_bits", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE23write_float16_from_bitsEt", scope: !27, file: !22, line: 102, type: !84, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{!48, !44, !86}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 14, baseType: !88)
!88 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!89 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK13halide_type_t", scope: !27, file: !22, line: 108, type: !90, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{!48, !44, !92}
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !4, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !95, identifier: "_ZTS13halide_type_t")
!95 = !{!96, !98, !99, !100, !104, !107, !111, !114, !115, !116, !119}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !94, file: !4, line: 434, baseType: !97, size: 8, align: 8)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !4, line: 413, baseType: !3)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !94, file: !4, line: 442, baseType: !5, size: 8, align: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !94, file: !4, line: 446, baseType: !87, size: 16, align: 16, offset: 16)
!100 = !DISubprogram(name: "halide_type_t", scope: !94, file: !4, line: 453, type: !101, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !97, !5, !87}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!104 = !DISubprogram(name: "halide_type_t", scope: !94, file: !4, line: 459, type: !105, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !103}
!107 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !94, file: !4, line: 463, type: !108, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!94, !110, !87}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !94, file: !4, line: 468, type: !112, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DISubroutineType(types: !113)
!113 = !{!36, !110, !92}
!114 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !94, file: !4, line: 472, type: !112, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !94, file: !4, line: 476, type: !112, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !94, file: !4, line: 481, type: !117, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!60, !110}
!119 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !94, file: !4, line: 485, type: !120, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubroutineType(types: !121)
!121 = !{!69, !110}
!122 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsERK15halide_buffer_t", scope: !27, file: !22, line: 113, type: !123, scopeLine: 113, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!48, !44, !125}
!125 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !129, identifier: "_ZTS15halide_buffer_t")
!129 = !{!130, !131, !184, !186, !187, !188, !189, !212, !213, !218, !222, !225, !226, !229, !230, !235, !238, !239, !240, !245, !248}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !128, file: !4, line: 1425, baseType: !64, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !128, file: !4, line: 1428, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !4, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !135, identifier: "_ZTS25halide_device_interface_t")
!135 = !{!136, !141, !145, !146, !150, !151, !152, !153, !154, !158, !164, !168, !169, !173, !174, !179}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !134, file: !4, line: 724, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!60, !20, !140, !132}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !134, file: !4, line: 726, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!60, !20, !140}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !134, file: !4, line: 727, baseType: !142, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !134, file: !4, line: 728, baseType: !147, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !20, !132}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !134, file: !4, line: 730, baseType: !142, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !134, file: !4, line: 731, baseType: !137, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !134, file: !4, line: 733, baseType: !137, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !134, file: !4, line: 735, baseType: !142, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !134, file: !4, line: 736, baseType: !155, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!60, !20, !140, !132, !140}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !134, file: !4, line: 738, baseType: !159, size: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!60, !20, !162, !140}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !134, file: !4, line: 740, baseType: !165, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!60, !20, !162, !60, !60, !140}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !134, file: !4, line: 742, baseType: !142, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !134, file: !4, line: 743, baseType: !170, size: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!60, !20, !140, !64, !132}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !134, file: !4, line: 745, baseType: !142, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !134, file: !4, line: 746, baseType: !175, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!60, !20, !178, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !134, file: !4, line: 747, baseType: !180, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !183, line: 10, size: 1024, flags: DIFlagFwdDecl, identifier: "_ZTS30halide_device_interface_impl_t")
!183 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !128, file: !4, line: 1433, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !4, line: 1436, baseType: !64, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !4, line: 1439, baseType: !94, size: 32, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !128, file: !4, line: 1442, baseType: !59, size: 32, offset: 288)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !128, file: !4, line: 1446, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !4, line: 1409, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !4, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !193, identifier: "_ZTS18halide_dimension_t")
!193 = !{!194, !195, !196, !197, !198, !202, !205, !211}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !192, file: !4, line: 1383, baseType: !59, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !192, file: !4, line: 1383, baseType: !59, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !192, file: !4, line: 1383, baseType: !59, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !4, line: 1386, baseType: !69, size: 32, offset: 96)
!198 = !DISubprogram(name: "halide_dimension_t", scope: !192, file: !4, line: 1388, type: !199, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!202 = !DISubprogram(name: "halide_dimension_t", scope: !192, file: !4, line: 1389, type: !203, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !201, !59, !59, !59, !69}
!205 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !192, file: !4, line: 1393, type: !206, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!36, !208, !210}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !209, size: 64)
!211 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !192, file: !4, line: 1400, type: !206, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !128, file: !4, line: 1449, baseType: !20, size: 64, offset: 384)
!213 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !128, file: !4, line: 1454, type: !214, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{!36, !216, !217}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !4, line: 1416, baseType: !14)
!218 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !128, file: !4, line: 1458, type: !219, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !217, !36}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!222 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !128, file: !4, line: 1466, type: !223, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{!36, !216}
!225 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !128, file: !4, line: 1470, type: !223, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !128, file: !4, line: 1474, type: !227, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !221, !36}
!229 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !128, file: !4, line: 1478, type: !227, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !128, file: !4, line: 1485, type: !231, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !216}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !234)
!234 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!235 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !128, file: !4, line: 1495, type: !236, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{!185, !216}
!238 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !128, file: !4, line: 1506, type: !236, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !128, file: !4, line: 1518, type: !231, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !128, file: !4, line: 1523, type: !241, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!185, !216, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!245 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !128, file: !4, line: 1534, type: !246, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!60, !221, !20}
!248 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !128, file: !4, line: 1545, type: !223, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !27, file: !22, line: 119, type: !250, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!49, !44}
!252 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !27, file: !22, line: 131, type: !253, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !44}
!255 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !27, file: !22, line: 139, type: !256, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!64, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!260 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !27, file: !22, line: 143, type: !256, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !27, file: !22, line: 148, type: !262, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !44, !60}
!264 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !27, file: !22, line: 158, type: !250, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !27, file: !22, line: 162, type: !253, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubprogram(name: "~Printer", scope: !27, file: !22, line: 166, type: !253, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !{!268, !269}
!268 = !DITemplateValueParameter(name: "type", type: !60, value: i32 0)
!269 = !DITemplateValueParameter(name: "length", type: !65, value: i64 1024)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "print", scope: !23, file: !22, line: 198, baseType: !27)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!272 = !{!273}
!273 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !24, file: !6, line: 225)
!274 = !{i32 7, !"Dwarf Version", i32 4}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{i32 1, !"wchar_size", i32 4}
!277 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!278 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !24, file: !279, line: 47, type: !280, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !296)
!279 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282, !60, !54, !54}
!282 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !24, file: !279, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !285, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!285 = !{!286, !287, !288, !289, !293, !294, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !284, file: !279, line: 35, baseType: !64, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !284, file: !279, line: 35, baseType: !64, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !284, file: !279, line: 37, baseType: !64, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !284, file: !279, line: 39, baseType: !290, size: 1024, offset: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !284, file: !279, line: 41, baseType: !290, size: 1024, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !284, file: !279, line: 42, baseType: !290, size: 1024, offset: 2240)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !284, file: !279, line: 44, baseType: !64, size: 64, offset: 3264)
!296 = !{!297, !298, !299, !300, !301, !304, !305}
!297 = !DILocalVariable(name: "copy", arg: 1, scope: !278, file: !279, line: 47, type: !282)
!298 = !DILocalVariable(name: "d", arg: 2, scope: !278, file: !279, line: 47, type: !60)
!299 = !DILocalVariable(name: "src_off", arg: 3, scope: !278, file: !279, line: 47, type: !54)
!300 = !DILocalVariable(name: "dst_off", arg: 4, scope: !278, file: !279, line: 47, type: !54)
!301 = !DILocalVariable(name: "from", scope: !302, file: !279, line: 54, type: !81)
!302 = distinct !DILexicalBlock(scope: !303, file: !279, line: 53, column: 18)
!303 = distinct !DILexicalBlock(scope: !278, file: !279, line: 53, column: 9)
!304 = !DILocalVariable(name: "to", scope: !302, file: !279, line: 55, type: !20)
!305 = !DILocalVariable(name: "i", scope: !306, file: !279, line: 58, type: !64)
!306 = distinct !DILexicalBlock(scope: !307, file: !279, line: 58, column: 9)
!307 = distinct !DILexicalBlock(scope: !303, file: !279, line: 57, column: 12)
!308 = !DILocation(line: 0, scope: !278)
!309 = !DILocation(line: 49, column: 14, scope: !278)
!310 = !DILocation(line: 49, column: 19, scope: !278)
!311 = !DILocation(line: 49, column: 22, scope: !278)
!312 = !{!313, !313, i64 0}
!313 = !{!"long long", !314, i64 0}
!314 = !{!"omnipotent char", !315, i64 0}
!315 = !{!"Simple C++ TBAA"}
!316 = !DILocation(line: 49, column: 37, scope: !278)
!317 = !DILocation(line: 49, column: 5, scope: !278)
!318 = !DILocation(line: 50, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !278, file: !279, line: 49, column: 43)
!320 = distinct !{!320, !317, !321, !322}
!321 = !DILocation(line: 51, column: 5, scope: !278)
!322 = !{!"llvm.loop.mustprogress"}
!323 = !DILocation(line: 53, column: 11, scope: !303)
!324 = !DILocation(line: 53, column: 9, scope: !278)
!325 = !DILocation(line: 0, scope: !306)
!326 = !DILocation(line: 58, column: 34, scope: !327)
!327 = distinct !DILexicalBlock(scope: !306, file: !279, line: 58, column: 9)
!328 = !DILocation(line: 58, column: 32, scope: !327)
!329 = !DILocation(line: 58, column: 9, scope: !306)
!330 = !DILocation(line: 54, column: 42, scope: !302)
!331 = !{!332, !313, i64 0}
!332 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !313, i64 0, !313, i64 8, !313, i64 16, !314, i64 24, !314, i64 152, !314, i64 280, !313, i64 408}
!333 = !DILocation(line: 54, column: 46, scope: !302)
!334 = !DILocation(line: 54, column: 28, scope: !302)
!335 = !DILocation(line: 0, scope: !302)
!336 = !DILocation(line: 55, column: 34, scope: !302)
!337 = !{!332, !313, i64 8}
!338 = !DILocation(line: 55, column: 38, scope: !302)
!339 = !DILocation(line: 55, column: 20, scope: !302)
!340 = !DILocation(line: 56, column: 31, scope: !302)
!341 = !{!332, !313, i64 408}
!342 = !DILocation(line: 56, column: 9, scope: !302)
!343 = !DILocation(line: 57, column: 5, scope: !302)
!344 = !DILocation(line: 59, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !327, file: !279, line: 58, column: 55)
!346 = !DILocation(line: 60, column: 24, scope: !345)
!347 = !DILocation(line: 60, column: 21, scope: !345)
!348 = !DILocation(line: 61, column: 24, scope: !345)
!349 = !DILocation(line: 61, column: 21, scope: !345)
!350 = !DILocation(line: 58, column: 51, scope: !327)
!351 = distinct !{!351, !329, !352, !322}
!352 = !DILocation(line: 62, column: 9, scope: !306)
!353 = !DILocation(line: 64, column: 1, scope: !278)
!354 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!20, !20, !81, !234}
!357 = !{}
!358 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !24, file: !279, line: 66, type: !359, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !282, !20}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "copy", arg: 1, scope: !358, file: !279, line: 66, type: !282)
!363 = !DILocalVariable(name: "user_context", arg: 2, scope: !358, file: !279, line: 66, type: !20)
!364 = !DILocation(line: 0, scope: !358)
!365 = !DILocation(line: 68, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !279, line: 68, column: 9)
!367 = !DILocation(line: 68, column: 26, scope: !366)
!368 = !DILocation(line: 68, column: 18, scope: !366)
!369 = !DILocation(line: 68, column: 9, scope: !358)
!370 = !DILocation(line: 69, column: 58, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !279, line: 68, column: 31)
!372 = !{!332, !313, i64 16}
!373 = !DILocation(line: 69, column: 9, scope: !371)
!374 = !DILocation(line: 70, column: 5, scope: !371)
!375 = !DILocalVariable(name: "this", arg: 1, scope: !376, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!376 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !27, file: !22, line: 37, type: !42, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !41, retainedNodes: !377)
!377 = !{!375, !378, !379}
!378 = !DILocalVariable(name: "ctx", arg: 2, scope: !376, file: !22, line: 37, type: !20)
!379 = !DILocalVariable(name: "mem", arg: 3, scope: !376, file: !22, line: 37, type: !30)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!381 = !DILocation(line: 0, scope: !376, inlinedAt: !382)
!382 = distinct !DILocation(line: 71, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !366, file: !279, line: 70, column: 12)
!384 = !DILocation(line: 44, column: 27, scope: !385, inlinedAt: !382)
!385 = distinct !DILexicalBlock(scope: !386, file: !22, line: 43, column: 16)
!386 = distinct !DILexicalBlock(scope: !387, file: !22, line: 41, column: 20)
!387 = distinct !DILexicalBlock(scope: !388, file: !22, line: 39, column: 13)
!388 = distinct !DILexicalBlock(scope: !376, file: !22, line: 38, column: 54)
!389 = !DILocation(line: 48, column: 13, scope: !390, inlinedAt: !382)
!390 = distinct !DILexicalBlock(scope: !388, file: !22, line: 48, column: 13)
!391 = !DILocation(line: 48, column: 13, scope: !388, inlinedAt: !382)
!392 = !DILocalVariable(name: "this", arg: 1, scope: !393, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!393 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !27, file: !22, line: 57, type: !46, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !45, retainedNodes: !394)
!394 = !{!392, !395}
!395 = !DILocalVariable(name: "arg", arg: 2, scope: !393, file: !22, line: 57, type: !49)
!396 = !DILocation(line: 0, scope: !393, inlinedAt: !397)
!397 = distinct !DILocation(line: 71, column: 29, scope: !383)
!398 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !397)
!399 = distinct !DILexicalBlock(scope: !400, file: !22, line: 61, column: 16)
!400 = distinct !DILexicalBlock(scope: !393, file: !22, line: 59, column: 13)
!401 = !DILocalVariable(name: "this", arg: 1, scope: !402, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!402 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !27, file: !22, line: 166, type: !253, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !266, retainedNodes: !403)
!403 = !{!401}
!404 = !DILocation(line: 0, scope: !402, inlinedAt: !405)
!405 = distinct !DILocation(line: 71, column: 9, scope: !383)
!406 = !DILocation(line: 168, column: 13, scope: !407, inlinedAt: !405)
!407 = distinct !DILexicalBlock(scope: !408, file: !22, line: 167, column: 19)
!408 = distinct !DILexicalBlock(scope: !409, file: !22, line: 167, column: 13)
!409 = distinct !DILexicalBlock(scope: !402, file: !22, line: 166, column: 16)
!410 = !DILocation(line: 169, column: 9, scope: !407, inlinedAt: !405)
!411 = !DILocation(line: 49, column: 23, scope: !412, inlinedAt: !382)
!412 = distinct !DILexicalBlock(scope: !390, file: !22, line: 48, column: 18)
!413 = !DILocation(line: 50, column: 18, scope: !412, inlinedAt: !382)
!414 = !{!314, !314, i64 0}
!415 = !DILocalVariable(name: "this", arg: 1, scope: !416, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !27, file: !22, line: 162, type: !253, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !265, retainedNodes: !417)
!417 = !{!415}
!418 = !DILocation(line: 0, scope: !416, inlinedAt: !419)
!419 = distinct !DILocation(line: 170, column: 13, scope: !420, inlinedAt: !405)
!420 = distinct !DILexicalBlock(scope: !408, file: !22, line: 169, column: 16)
!421 = !DILocation(line: 163, column: 81, scope: !416, inlinedAt: !419)
!422 = !DILocation(line: 163, column: 87, scope: !416, inlinedAt: !419)
!423 = !DILocation(line: 163, column: 15, scope: !416, inlinedAt: !419)
!424 = !DILocation(line: 174, column: 17, scope: !425, inlinedAt: !405)
!425 = distinct !DILexicalBlock(scope: !426, file: !22, line: 173, column: 46)
!426 = distinct !DILexicalBlock(scope: !427, file: !22, line: 173, column: 24)
!427 = distinct !DILexicalBlock(scope: !420, file: !22, line: 171, column: 17)
!428 = !DILocation(line: 181, column: 13, scope: !429, inlinedAt: !405)
!429 = distinct !DILexicalBlock(scope: !430, file: !22, line: 180, column: 40)
!430 = distinct !DILexicalBlock(scope: !409, file: !22, line: 180, column: 13)
!431 = !DILocation(line: 73, column: 1, scope: !358)
!432 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !24, file: !279, line: 76, type: !433, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!433 = !DISubroutineType(types: !434)
!434 = !{!284, !435, !36, !435, !36}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!436 = !{!437, !438, !439, !440, !441, !442, !444, !446, !449, !452, !454, !457, !458, !459, !461}
!437 = !DILocalVariable(name: "src", arg: 1, scope: !432, file: !279, line: 76, type: !435)
!438 = !DILocalVariable(name: "src_host", arg: 2, scope: !432, file: !279, line: 76, type: !36)
!439 = !DILocalVariable(name: "dst", arg: 3, scope: !432, file: !279, line: 77, type: !435)
!440 = !DILocalVariable(name: "dst_host", arg: 4, scope: !432, file: !279, line: 77, type: !36)
!441 = !DILocalVariable(name: "c", scope: !432, file: !279, line: 79, type: !284)
!442 = !DILocalVariable(name: "i", scope: !443, file: !279, line: 83, type: !60)
!443 = distinct !DILexicalBlock(scope: !432, file: !279, line: 83, column: 5)
!444 = !DILocalVariable(name: "i", scope: !445, file: !279, line: 91, type: !60)
!445 = distinct !DILexicalBlock(scope: !432, file: !279, line: 91, column: 5)
!446 = !DILocalVariable(name: "zero", scope: !447, file: !279, line: 100, type: !284)
!447 = distinct !DILexicalBlock(scope: !448, file: !279, line: 98, column: 42)
!448 = distinct !DILexicalBlock(scope: !432, file: !279, line: 96, column: 9)
!449 = !DILocalVariable(name: "zero", scope: !450, file: !279, line: 107, type: !284)
!450 = distinct !DILexicalBlock(scope: !451, file: !279, line: 104, column: 28)
!451 = distinct !DILexicalBlock(scope: !432, file: !279, line: 104, column: 9)
!452 = !DILocalVariable(name: "i", scope: !453, file: !279, line: 115, type: !60)
!453 = distinct !DILexicalBlock(scope: !432, file: !279, line: 115, column: 5)
!454 = !DILocalVariable(name: "dst_stride_bytes", scope: !455, file: !279, line: 117, type: !64)
!455 = distinct !DILexicalBlock(scope: !456, file: !279, line: 115, column: 47)
!456 = distinct !DILexicalBlock(scope: !453, file: !279, line: 115, column: 5)
!457 = !DILocalVariable(name: "src_stride_bytes", scope: !455, file: !279, line: 118, type: !64)
!458 = !DILocalVariable(name: "insert", scope: !455, file: !279, line: 120, type: !60)
!459 = !DILocalVariable(name: "j", scope: !460, file: !279, line: 128, type: !60)
!460 = distinct !DILexicalBlock(scope: !455, file: !279, line: 128, column: 9)
!461 = !DILocalVariable(name: "j", scope: !462, file: !279, line: 151, type: !60)
!462 = distinct !DILexicalBlock(scope: !463, file: !279, line: 151, column: 9)
!463 = distinct !DILexicalBlock(scope: !432, file: !279, line: 145, column: 51)
!464 = !DILocation(line: 0, scope: !432)
!465 = !DILocation(line: 79, column: 5, scope: !432)
!466 = !DILocation(line: 79, column: 17, scope: !432)
!467 = !DILocation(line: 80, column: 13, scope: !432)
!468 = !DILocation(line: 80, column: 39, scope: !432)
!469 = !{!470, !471, i64 16}
!470 = !{!"_ZTS15halide_buffer_t", !313, i64 0, !471, i64 8, !471, i64 16, !313, i64 24, !472, i64 32, !475, i64 36, !471, i64 40, !471, i64 48}
!471 = !{!"any pointer", !314, i64 0}
!472 = !{!"_ZTS13halide_type_t", !473, i64 0, !314, i64 1, !474, i64 2}
!473 = !{!"_ZTS18halide_type_code_t", !314, i64 0}
!474 = !{!"short", !314, i64 0}
!475 = !{!"int", !314, i64 0}
!476 = !DILocation(line: 80, column: 24, scope: !432)
!477 = !DILocation(line: 80, column: 51, scope: !432)
!478 = !{!470, !313, i64 0}
!479 = !DILocation(line: 80, column: 7, scope: !432)
!480 = !DILocation(line: 80, column: 11, scope: !432)
!481 = !DILocation(line: 81, column: 13, scope: !432)
!482 = !DILocation(line: 81, column: 39, scope: !432)
!483 = !DILocation(line: 81, column: 24, scope: !432)
!484 = !DILocation(line: 81, column: 51, scope: !432)
!485 = !DILocation(line: 81, column: 7, scope: !432)
!486 = !DILocation(line: 81, column: 11, scope: !432)
!487 = !DILocalVariable(name: "this", arg: 1, scope: !488, type: !490, flags: DIFlagArtificial | DIFlagObjectPointer)
!488 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !94, file: !4, line: 481, type: !117, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !116, retainedNodes: !489)
!489 = !{!487}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!491 = !DILocation(line: 0, scope: !488, inlinedAt: !492)
!492 = distinct !DILocation(line: 82, column: 30, scope: !432)
!493 = !DILocation(line: 482, column: 17, scope: !488, inlinedAt: !492)
!494 = !{!472, !314, i64 1}
!495 = !DILocation(line: 482, column: 22, scope: !488, inlinedAt: !492)
!496 = !DILocation(line: 482, column: 27, scope: !488, inlinedAt: !492)
!497 = !DILocation(line: 82, column: 20, scope: !432)
!498 = !DILocation(line: 82, column: 7, scope: !432)
!499 = !DILocation(line: 82, column: 18, scope: !432)
!500 = !DILocation(line: 0, scope: !443)
!501 = !DILocation(line: 84, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !279, line: 83, column: 45)
!503 = distinct !DILexicalBlock(scope: !443, file: !279, line: 83, column: 5)
!504 = !DILocation(line: 84, column: 21, scope: !502)
!505 = !DILocation(line: 85, column: 9, scope: !502)
!506 = !DILocation(line: 85, column: 31, scope: !502)
!507 = !DILocation(line: 86, column: 9, scope: !502)
!508 = !DILocation(line: 86, column: 31, scope: !502)
!509 = !DILocation(line: 90, column: 7, scope: !432)
!510 = !DILocation(line: 0, scope: !445)
!511 = !DILocation(line: 91, column: 30, scope: !512)
!512 = distinct !DILexicalBlock(scope: !445, file: !279, line: 91, column: 5)
!513 = !{!470, !475, i64 36}
!514 = !DILocation(line: 91, column: 23, scope: !512)
!515 = !DILocation(line: 91, column: 5, scope: !445)
!516 = !{!470, !471, i64 40}
!517 = !DILocation(line: 94, column: 17, scope: !432)
!518 = !DILocation(line: 94, column: 22, scope: !432)
!519 = !DILocation(line: 96, column: 33, scope: !448)
!520 = !DILocation(line: 96, column: 25, scope: !448)
!521 = !DILocation(line: 96, column: 44, scope: !448)
!522 = !DILocation(line: 92, column: 46, scope: !523)
!523 = distinct !DILexicalBlock(scope: !512, file: !279, line: 91, column: 47)
!524 = !{!525, !475, i64 8}
!525 = !{!"_ZTS18halide_dimension_t", !475, i64 0, !475, i64 4, !475, i64 8, !475, i64 12}
!526 = !DILocation(line: 92, column: 34, scope: !523)
!527 = !DILocation(line: 92, column: 68, scope: !523)
!528 = !{!525, !475, i64 0}
!529 = !DILocation(line: 92, column: 86, scope: !523)
!530 = !DILocation(line: 92, column: 72, scope: !523)
!531 = !DILocation(line: 92, column: 55, scope: !523)
!532 = !DILocation(line: 92, column: 53, scope: !523)
!533 = !DILocation(line: 92, column: 21, scope: !523)
!534 = !DILocation(line: 91, column: 43, scope: !512)
!535 = distinct !{!535, !515, !536, !322}
!536 = !DILocation(line: 93, column: 5, scope: !445)
!537 = !DILocation(line: 0, scope: !488, inlinedAt: !538)
!538 = distinct !DILocation(line: 97, column: 19, scope: !448)
!539 = !DILocation(line: 0, scope: !488, inlinedAt: !540)
!540 = distinct !DILocation(line: 97, column: 40, scope: !448)
!541 = !DILocation(line: 482, column: 17, scope: !488, inlinedAt: !540)
!542 = !DILocation(line: 482, column: 22, scope: !488, inlinedAt: !540)
!543 = !DILocation(line: 482, column: 27, scope: !488, inlinedAt: !540)
!544 = !DILocation(line: 97, column: 27, scope: !448)
!545 = !DILocation(line: 97, column: 48, scope: !448)
!546 = !DILocation(line: 100, column: 21, scope: !447)
!547 = !DILocation(line: 101, column: 9, scope: !447)
!548 = !DILocation(line: 104, column: 22, scope: !451)
!549 = !DILocation(line: 104, column: 9, scope: !432)
!550 = !DILocation(line: 0, scope: !453)
!551 = !DILocation(line: 115, column: 5, scope: !453)
!552 = !DILocation(line: 115, column: 23, scope: !456)
!553 = !DILocation(line: 107, column: 21, scope: !450)
!554 = !DILocation(line: 108, column: 9, scope: !450)
!555 = !DILocation(line: 144, column: 14, scope: !432)
!556 = !DILocation(line: 144, column: 28, scope: !432)
!557 = !DILocation(line: 144, column: 25, scope: !432)
!558 = !DILocation(line: 144, column: 50, scope: !432)
!559 = !DILocation(line: 145, column: 28, scope: !432)
!560 = !DILocation(line: 117, column: 59, scope: !455)
!561 = !DILocation(line: 117, column: 47, scope: !455)
!562 = !DILocation(line: 0, scope: !488, inlinedAt: !563)
!563 = distinct !DILocation(line: 117, column: 78, scope: !455)
!564 = !DILocation(line: 117, column: 66, scope: !455)
!565 = !DILocation(line: 0, scope: !455)
!566 = !DILocation(line: 118, column: 59, scope: !455)
!567 = !DILocation(line: 118, column: 47, scope: !455)
!568 = !DILocation(line: 0, scope: !488, inlinedAt: !569)
!569 = distinct !DILocation(line: 118, column: 78, scope: !455)
!570 = !DILocation(line: 118, column: 66, scope: !455)
!571 = !DILocation(line: 121, column: 33, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !279, line: 121, column: 9)
!573 = distinct !DILexicalBlock(scope: !455, file: !279, line: 121, column: 9)
!574 = !DILocation(line: 121, column: 9, scope: !573)
!575 = !DILocation(line: 128, column: 27, scope: !576)
!576 = distinct !DILexicalBlock(scope: !460, file: !279, line: 128, column: 9)
!577 = !DILocation(line: 124, column: 36, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !279, line: 124, column: 17)
!579 = distinct !DILexicalBlock(scope: !572, file: !279, line: 121, column: 48)
!580 = !DILocation(line: 124, column: 34, scope: !578)
!581 = !DILocation(line: 124, column: 63, scope: !578)
!582 = !DILocation(line: 121, column: 44, scope: !572)
!583 = distinct !{!583, !574, !584, !322}
!584 = !DILocation(line: 127, column: 9, scope: !573)
!585 = !DILocation(line: 0, scope: !573)
!586 = !DILocation(line: 0, scope: !460)
!587 = !DILocation(line: 128, column: 9, scope: !460)
!588 = !DILocation(line: 133, column: 40, scope: !455)
!589 = !{!525, !475, i64 4}
!590 = !DILocation(line: 133, column: 28, scope: !455)
!591 = !DILocation(line: 133, column: 9, scope: !455)
!592 = !DILocation(line: 133, column: 26, scope: !455)
!593 = !DILocation(line: 135, column: 9, scope: !455)
!594 = !DILocation(line: 135, column: 36, scope: !455)
!595 = !DILocation(line: 136, column: 9, scope: !455)
!596 = !DILocation(line: 136, column: 36, scope: !455)
!597 = !DILocation(line: 115, column: 43, scope: !456)
!598 = distinct !{!598, !551, !599, !322}
!599 = !DILocation(line: 137, column: 5, scope: !453)
!600 = !DILocation(line: 129, column: 38, scope: !601)
!601 = distinct !DILexicalBlock(scope: !576, file: !279, line: 128, column: 42)
!602 = !DILocation(line: 129, column: 27, scope: !601)
!603 = !DILocation(line: 129, column: 13, scope: !601)
!604 = !DILocation(line: 129, column: 25, scope: !601)
!605 = !DILocation(line: 130, column: 37, scope: !601)
!606 = !DILocation(line: 130, column: 13, scope: !601)
!607 = !DILocation(line: 130, column: 35, scope: !601)
!608 = !DILocation(line: 131, column: 37, scope: !601)
!609 = !DILocation(line: 131, column: 13, scope: !601)
!610 = !DILocation(line: 131, column: 35, scope: !601)
!611 = distinct !{!611, !587, !612, !322}
!612 = !DILocation(line: 132, column: 9, scope: !460)
!613 = !DILocation(line: 145, column: 25, scope: !432)
!614 = !DILocation(line: 144, column: 5, scope: !432)
!615 = !DILocation(line: 147, column: 25, scope: !463)
!616 = !DILocation(line: 147, column: 22, scope: !463)
!617 = !DILocation(line: 0, scope: !462)
!618 = !DILocation(line: 152, column: 31, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !279, line: 151, column: 49)
!620 = distinct !DILexicalBlock(scope: !462, file: !279, line: 151, column: 9)
!621 = !DILocation(line: 152, column: 29, scope: !619)
!622 = !DILocation(line: 153, column: 41, scope: !619)
!623 = !DILocation(line: 153, column: 39, scope: !619)
!624 = !DILocation(line: 154, column: 41, scope: !619)
!625 = !DILocation(line: 154, column: 39, scope: !619)
!626 = !DILocation(line: 156, column: 37, scope: !463)
!627 = !DILocation(line: 157, column: 47, scope: !463)
!628 = !DILocation(line: 158, column: 47, scope: !463)
!629 = distinct !{!629, !614, !630, !322}
!630 = !DILocation(line: 159, column: 5, scope: !432)
!631 = !DILocation(line: 160, column: 12, scope: !432)
!632 = !{i64 0, i64 8, !312, i64 8, i64 8, !312, i64 16, i64 8, !312, i64 24, i64 128, !414, i64 152, i64 128, !414, i64 280, i64 128, !414, i64 408, i64 8, !312}
!633 = !DILocation(line: 160, column: 5, scope: !432)
!634 = !DILocation(line: 161, column: 1, scope: !432)
!635 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !24, file: !279, line: 163, type: !636, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!284, !435}
!638 = !{!639}
!639 = !DILocalVariable(name: "buf", arg: 1, scope: !635, file: !279, line: 163, type: !435)
!640 = !DILocation(line: 0, scope: !635)
!641 = !DILocation(line: 164, column: 12, scope: !635)
!642 = !DILocation(line: 164, column: 5, scope: !635)
!643 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !24, file: !279, line: 167, type: !636, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !644)
!644 = !{!645}
!645 = !DILocalVariable(name: "buf", arg: 1, scope: !643, file: !279, line: 167, type: !435)
!646 = !DILocation(line: 0, scope: !643)
!647 = !DILocation(line: 168, column: 12, scope: !643)
!648 = !DILocation(line: 168, column: 5, scope: !643)
!649 = distinct !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !650, file: !650, line: 11, type: !651, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !653)
!650 = !DIFile(filename: "src/runtime/msan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!651 = !DISubroutineType(types: !652)
!652 = !{!60, !20, !81, !64}
!653 = !{!654, !655, !656}
!654 = !DILocalVariable(name: "user_context", arg: 1, scope: !649, file: !650, line: 11, type: !20)
!655 = !DILocalVariable(name: "ptr", arg: 2, scope: !649, file: !650, line: 11, type: !81)
!656 = !DILocalVariable(name: "len", arg: 3, scope: !649, file: !650, line: 11, type: !64)
!657 = !DILocation(line: 0, scope: !649)
!658 = !DILocation(line: 12, column: 5, scope: !649)
!659 = !DILocation(line: 13, column: 5, scope: !649)
!660 = distinct !DISubprogram(name: "halide_msan_check_memory_is_initialized", scope: !650, file: !650, line: 16, type: !661, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!60, !20, !81, !64, !49}
!663 = !{!664, !665, !666, !667, !668}
!664 = !DILocalVariable(name: "user_context", arg: 1, scope: !660, file: !650, line: 16, type: !20)
!665 = !DILocalVariable(name: "ptr", arg: 2, scope: !660, file: !650, line: 16, type: !81)
!666 = !DILocalVariable(name: "len", arg: 3, scope: !660, file: !650, line: 16, type: !64)
!667 = !DILocalVariable(name: "name", arg: 4, scope: !660, file: !650, line: 16, type: !49)
!668 = !DILocalVariable(name: "offset", scope: !660, file: !650, line: 17, type: !669)
!669 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!670 = !DILocation(line: 0, scope: !660)
!671 = !DILocation(line: 17, column: 19, scope: !660)
!672 = !DILocation(line: 18, column: 16, scope: !673)
!673 = distinct !DILexicalBlock(scope: !660, file: !650, line: 18, column: 9)
!674 = !DILocation(line: 18, column: 9, scope: !660)
!675 = !DILocation(line: 0, scope: !376, inlinedAt: !676)
!676 = distinct !DILocation(line: 19, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !650, line: 18, column: 22)
!678 = !DILocation(line: 44, column: 27, scope: !385, inlinedAt: !676)
!679 = !DILocation(line: 48, column: 13, scope: !390, inlinedAt: !676)
!680 = !DILocation(line: 48, column: 13, scope: !388, inlinedAt: !676)
!681 = !DILocation(line: 49, column: 23, scope: !412, inlinedAt: !676)
!682 = !DILocation(line: 50, column: 18, scope: !412, inlinedAt: !676)
!683 = !DILocation(line: 51, column: 9, scope: !412, inlinedAt: !676)
!684 = !DILocation(line: 0, scope: !390, inlinedAt: !676)
!685 = !DILocation(line: 0, scope: !393, inlinedAt: !686)
!686 = distinct !DILocation(line: 19, column: 29, scope: !677)
!687 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !686)
!688 = !DILocation(line: 0, scope: !393, inlinedAt: !689)
!689 = distinct !DILocation(line: 19, column: 61, scope: !677)
!690 = !DILocation(line: 59, column: 17, scope: !400, inlinedAt: !689)
!691 = !DILocation(line: 59, column: 13, scope: !393, inlinedAt: !689)
!692 = !DILocation(line: 60, column: 19, scope: !693, inlinedAt: !689)
!693 = distinct !DILexicalBlock(scope: !400, file: !22, line: 59, column: 29)
!694 = !DILocation(line: 61, column: 9, scope: !693, inlinedAt: !689)
!695 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !689)
!696 = !DILocation(line: 0, scope: !400, inlinedAt: !689)
!697 = !DILocation(line: 0, scope: !393, inlinedAt: !698)
!698 = distinct !DILocation(line: 19, column: 69, scope: !677)
!699 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !698)
!700 = !DILocalVariable(name: "this", arg: 1, scope: !701, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!701 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !27, file: !22, line: 97, type: !79, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !78, retainedNodes: !702)
!702 = !{!700, !703}
!703 = !DILocalVariable(name: "arg", arg: 2, scope: !701, file: !22, line: 97, type: !81)
!704 = !DILocation(line: 0, scope: !701, inlinedAt: !705)
!705 = distinct !DILocation(line: 19, column: 78, scope: !677)
!706 = !DILocation(line: 98, column: 15, scope: !701, inlinedAt: !705)
!707 = !DILocation(line: 0, scope: !393, inlinedAt: !708)
!708 = distinct !DILocation(line: 19, column: 85, scope: !677)
!709 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !708)
!710 = !DILocalVariable(name: "this", arg: 1, scope: !711, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!711 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !27, file: !22, line: 72, type: !57, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !56, retainedNodes: !712)
!712 = !{!710, !713}
!713 = !DILocalVariable(name: "arg", arg: 2, scope: !711, file: !22, line: 72, type: !59)
!714 = !DILocation(line: 0, scope: !711, inlinedAt: !715)
!715 = distinct !DILocation(line: 19, column: 94, scope: !677)
!716 = !DILocation(line: 73, column: 48, scope: !711, inlinedAt: !715)
!717 = !DILocation(line: 73, column: 15, scope: !711, inlinedAt: !715)
!718 = !DILocation(line: 0, scope: !393, inlinedAt: !719)
!719 = distinct !DILocation(line: 19, column: 109, scope: !677)
!720 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !719)
!721 = !DILocation(line: 0, scope: !402, inlinedAt: !722)
!722 = distinct !DILocation(line: 19, column: 9, scope: !677)
!723 = !DILocation(line: 167, column: 13, scope: !409, inlinedAt: !722)
!724 = !DILocation(line: 168, column: 13, scope: !407, inlinedAt: !722)
!725 = !DILocation(line: 169, column: 9, scope: !407, inlinedAt: !722)
!726 = !DILocation(line: 0, scope: !416, inlinedAt: !727)
!727 = distinct !DILocation(line: 170, column: 13, scope: !420, inlinedAt: !722)
!728 = !DILocation(line: 163, column: 81, scope: !416, inlinedAt: !727)
!729 = !DILocation(line: 163, column: 87, scope: !416, inlinedAt: !727)
!730 = !DILocation(line: 163, column: 15, scope: !416, inlinedAt: !727)
!731 = !DILocation(line: 174, column: 17, scope: !425, inlinedAt: !722)
!732 = !DILocation(line: 181, column: 13, scope: !429, inlinedAt: !722)
!733 = !DILocation(line: 21, column: 9, scope: !677)
!734 = !DILocation(line: 22, column: 5, scope: !677)
!735 = !DILocation(line: 23, column: 5, scope: !660)
!736 = distinct !DISubprogram(name: "annotate_helper", scope: !24, file: !650, line: 30, type: !737, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !20, !282, !60, !54}
!739 = !{!740, !741, !742, !743, !744, !747}
!740 = !DILocalVariable(name: "uc", arg: 1, scope: !736, file: !650, line: 30, type: !20)
!741 = !DILocalVariable(name: "c", arg: 2, scope: !736, file: !650, line: 30, type: !282)
!742 = !DILocalVariable(name: "d", arg: 3, scope: !736, file: !650, line: 30, type: !60)
!743 = !DILocalVariable(name: "off", arg: 4, scope: !736, file: !650, line: 30, type: !54)
!744 = !DILocalVariable(name: "from", scope: !745, file: !650, line: 36, type: !81)
!745 = distinct !DILexicalBlock(scope: !746, file: !650, line: 35, column: 18)
!746 = distinct !DILexicalBlock(scope: !736, file: !650, line: 35, column: 9)
!747 = !DILocalVariable(name: "i", scope: !748, file: !650, line: 39, type: !64)
!748 = distinct !DILexicalBlock(scope: !749, file: !650, line: 39, column: 9)
!749 = distinct !DILexicalBlock(scope: !746, file: !650, line: 38, column: 12)
!750 = !DILocation(line: 0, scope: !736)
!751 = !DILocation(line: 31, column: 14, scope: !736)
!752 = !DILocation(line: 31, column: 19, scope: !736)
!753 = !DILocation(line: 31, column: 22, scope: !736)
!754 = !DILocation(line: 31, column: 34, scope: !736)
!755 = !DILocation(line: 31, column: 5, scope: !736)
!756 = !DILocation(line: 32, column: 10, scope: !757)
!757 = distinct !DILexicalBlock(scope: !736, file: !650, line: 31, column: 40)
!758 = distinct !{!758, !755, !759, !322}
!759 = !DILocation(line: 33, column: 5, scope: !736)
!760 = !DILocation(line: 35, column: 11, scope: !746)
!761 = !DILocation(line: 35, column: 9, scope: !736)
!762 = !DILocation(line: 0, scope: !748)
!763 = !DILocation(line: 39, column: 34, scope: !764)
!764 = distinct !DILexicalBlock(scope: !748, file: !650, line: 39, column: 9)
!765 = !DILocation(line: 39, column: 32, scope: !764)
!766 = !DILocation(line: 39, column: 9, scope: !748)
!767 = !DILocation(line: 36, column: 39, scope: !745)
!768 = !DILocation(line: 36, column: 43, scope: !745)
!769 = !DILocation(line: 36, column: 28, scope: !745)
!770 = !DILocation(line: 0, scope: !745)
!771 = !DILocation(line: 37, column: 64, scope: !745)
!772 = !DILocation(line: 37, column: 9, scope: !745)
!773 = !DILocation(line: 38, column: 5, scope: !745)
!774 = !DILocation(line: 40, column: 13, scope: !775)
!775 = distinct !DILexicalBlock(scope: !764, file: !650, line: 39, column: 52)
!776 = !DILocation(line: 41, column: 20, scope: !775)
!777 = !DILocation(line: 41, column: 17, scope: !775)
!778 = !DILocation(line: 39, column: 48, scope: !764)
!779 = distinct !{!779, !766, !780, !322}
!780 = !DILocation(line: 42, column: 9, scope: !748)
!781 = !DILocation(line: 44, column: 1, scope: !736)
!782 = distinct !DISubprogram(name: "check_helper", scope: !24, file: !650, line: 46, type: !783, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !785)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !20, !282, !60, !54, !49}
!785 = !{!786, !787, !788, !789, !790, !791, !794}
!786 = !DILocalVariable(name: "uc", arg: 1, scope: !782, file: !650, line: 46, type: !20)
!787 = !DILocalVariable(name: "c", arg: 2, scope: !782, file: !650, line: 46, type: !282)
!788 = !DILocalVariable(name: "d", arg: 3, scope: !782, file: !650, line: 46, type: !60)
!789 = !DILocalVariable(name: "off", arg: 4, scope: !782, file: !650, line: 46, type: !54)
!790 = !DILocalVariable(name: "buf_name", arg: 5, scope: !782, file: !650, line: 46, type: !49)
!791 = !DILocalVariable(name: "from", scope: !792, file: !650, line: 52, type: !81)
!792 = distinct !DILexicalBlock(scope: !793, file: !650, line: 51, column: 18)
!793 = distinct !DILexicalBlock(scope: !782, file: !650, line: 51, column: 9)
!794 = !DILocalVariable(name: "i", scope: !795, file: !650, line: 55, type: !64)
!795 = distinct !DILexicalBlock(scope: !796, file: !650, line: 55, column: 9)
!796 = distinct !DILexicalBlock(scope: !793, file: !650, line: 54, column: 12)
!797 = !DILocation(line: 0, scope: !782)
!798 = !DILocation(line: 47, column: 14, scope: !782)
!799 = !DILocation(line: 47, column: 19, scope: !782)
!800 = !DILocation(line: 47, column: 22, scope: !782)
!801 = !DILocation(line: 47, column: 34, scope: !782)
!802 = !DILocation(line: 47, column: 5, scope: !782)
!803 = !DILocation(line: 48, column: 10, scope: !804)
!804 = distinct !DILexicalBlock(scope: !782, file: !650, line: 47, column: 40)
!805 = distinct !{!805, !802, !806, !322}
!806 = !DILocation(line: 49, column: 5, scope: !782)
!807 = !DILocation(line: 51, column: 11, scope: !793)
!808 = !DILocation(line: 51, column: 9, scope: !782)
!809 = !DILocation(line: 0, scope: !795)
!810 = !DILocation(line: 55, column: 34, scope: !811)
!811 = distinct !DILexicalBlock(scope: !795, file: !650, line: 55, column: 9)
!812 = !DILocation(line: 55, column: 32, scope: !811)
!813 = !DILocation(line: 55, column: 9, scope: !795)
!814 = !DILocation(line: 52, column: 39, scope: !792)
!815 = !DILocation(line: 52, column: 43, scope: !792)
!816 = !DILocation(line: 52, column: 28, scope: !792)
!817 = !DILocation(line: 0, scope: !792)
!818 = !DILocation(line: 53, column: 61, scope: !792)
!819 = !DILocation(line: 53, column: 9, scope: !792)
!820 = !DILocation(line: 54, column: 5, scope: !792)
!821 = !DILocation(line: 56, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !811, file: !650, line: 55, column: 52)
!823 = !DILocation(line: 57, column: 20, scope: !822)
!824 = !DILocation(line: 57, column: 17, scope: !822)
!825 = !DILocation(line: 55, column: 48, scope: !811)
!826 = distinct !{!826, !813, !827, !322}
!827 = !DILocation(line: 58, column: 9, scope: !795)
!828 = !DILocation(line: 60, column: 1, scope: !782)
!829 = distinct !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized", scope: !650, file: !650, line: 70, type: !830, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!60, !20, !271}
!832 = !{!833, !834, !835}
!833 = !DILocalVariable(name: "user_context", arg: 1, scope: !829, file: !650, line: 70, type: !20)
!834 = !DILocalVariable(name: "b", arg: 2, scope: !829, file: !650, line: 70, type: !271)
!835 = !DILocalVariable(name: "c", scope: !829, file: !650, line: 75, type: !284)
!836 = !DILocation(line: 0, scope: !829)
!837 = !DILocation(line: 71, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !829, file: !650, line: 71, column: 9)
!839 = !DILocation(line: 71, column: 9, scope: !829)
!840 = !DILocation(line: 75, column: 5, scope: !829)
!841 = !DILocation(line: 75, column: 44, scope: !829)
!842 = !DILocation(line: 75, column: 48, scope: !829)
!843 = !DILocation(line: 76, column: 11, scope: !844)
!844 = distinct !DILexicalBlock(scope: !829, file: !650, line: 76, column: 9)
!845 = !DILocation(line: 76, column: 22, scope: !844)
!846 = !DILocation(line: 76, column: 9, scope: !829)
!847 = !DILocalVariable(name: "this", arg: 1, scope: !848, type: !162, flags: DIFlagArtificial | DIFlagObjectPointer)
!848 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !128, file: !4, line: 1470, type: !223, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !225, retainedNodes: !849)
!849 = !{!847}
!850 = !DILocation(line: 0, scope: !848, inlinedAt: !851)
!851 = distinct !DILocation(line: 80, column: 12, scope: !852)
!852 = distinct !DILexicalBlock(scope: !829, file: !650, line: 80, column: 9)
!853 = !DILocalVariable(name: "this", arg: 1, scope: !854, type: !162, flags: DIFlagArtificial | DIFlagObjectPointer)
!854 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !128, file: !4, line: 1454, type: !214, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !213, retainedNodes: !855)
!855 = !{!853, !856}
!856 = !DILocalVariable(name: "flag", arg: 2, scope: !854, file: !4, line: 1454, type: !217)
!857 = !DILocation(line: 0, scope: !854, inlinedAt: !858)
!858 = distinct !DILocation(line: 1471, column: 16, scope: !848, inlinedAt: !851)
!859 = !DILocation(line: 1455, column: 17, scope: !854, inlinedAt: !858)
!860 = !{!470, !313, i64 24}
!861 = !DILocation(line: 1455, column: 23, scope: !854, inlinedAt: !858)
!862 = !DILocation(line: 1455, column: 31, scope: !854, inlinedAt: !858)
!863 = !DILocation(line: 80, column: 9, scope: !829)
!864 = !DILocation(line: 87, column: 5, scope: !829)
!865 = !DILocation(line: 88, column: 5, scope: !829)
!866 = !DILocation(line: 89, column: 1, scope: !829)
!867 = distinct !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized_as_destructor", scope: !650, file: !650, line: 91, type: !868, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !20, !20}
!870 = !{!871, !872}
!871 = !DILocalVariable(name: "user_context", arg: 1, scope: !867, file: !650, line: 91, type: !20)
!872 = !DILocalVariable(name: "b", arg: 2, scope: !867, file: !650, line: 91, type: !20)
!873 = !DILocation(line: 0, scope: !867)
!874 = !DILocation(line: 92, column: 68, scope: !867)
!875 = !DILocation(line: 92, column: 11, scope: !867)
!876 = !DILocation(line: 93, column: 1, scope: !867)
!877 = distinct !DISubprogram(name: "halide_msan_check_buffer_is_initialized", scope: !650, file: !650, line: 95, type: !878, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!60, !20, !271, !49}
!880 = !{!881, !882, !883, !884}
!881 = !DILocalVariable(name: "user_context", arg: 1, scope: !877, file: !650, line: 95, type: !20)
!882 = !DILocalVariable(name: "b", arg: 2, scope: !877, file: !650, line: 95, type: !271)
!883 = !DILocalVariable(name: "buf_name", arg: 3, scope: !877, file: !650, line: 95, type: !49)
!884 = !DILocalVariable(name: "c", scope: !877, file: !650, line: 103, type: !284)
!885 = !DILocation(line: 0, scope: !877)
!886 = !DILocation(line: 96, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !877, file: !650, line: 96, column: 9)
!888 = !DILocation(line: 96, column: 9, scope: !877)
!889 = !DILocation(line: 100, column: 67, scope: !877)
!890 = !DILocation(line: 100, column: 5, scope: !877)
!891 = !DILocation(line: 101, column: 70, scope: !877)
!892 = !DILocation(line: 101, column: 78, scope: !877)
!893 = !DILocation(line: 101, column: 75, scope: !877)
!894 = !DILocation(line: 101, column: 89, scope: !877)
!895 = !DILocation(line: 101, column: 5, scope: !877)
!896 = !DILocation(line: 103, column: 5, scope: !877)
!897 = !DILocation(line: 103, column: 44, scope: !877)
!898 = !DILocation(line: 103, column: 48, scope: !877)
!899 = !DILocation(line: 104, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !877, file: !650, line: 104, column: 9)
!901 = !DILocation(line: 104, column: 22, scope: !900)
!902 = !DILocation(line: 104, column: 9, scope: !877)
!903 = !DILocation(line: 0, scope: !848, inlinedAt: !904)
!904 = distinct !DILocation(line: 108, column: 12, scope: !905)
!905 = distinct !DILexicalBlock(scope: !877, file: !650, line: 108, column: 9)
!906 = !DILocation(line: 0, scope: !854, inlinedAt: !907)
!907 = distinct !DILocation(line: 1471, column: 16, scope: !848, inlinedAt: !904)
!908 = !DILocation(line: 1455, column: 17, scope: !854, inlinedAt: !907)
!909 = !DILocation(line: 1455, column: 23, scope: !854, inlinedAt: !907)
!910 = !DILocation(line: 1455, column: 31, scope: !854, inlinedAt: !907)
!911 = !DILocation(line: 108, column: 9, scope: !877)
!912 = !DILocation(line: 115, column: 5, scope: !877)
!913 = !DILocation(line: 116, column: 5, scope: !877)
!914 = !DILocation(line: 117, column: 1, scope: !877)
!915 = !DISubprogram(name: "malloc", scope: !6, file: !6, line: 87, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!916 = !DISubroutineType(types: !917)
!917 = !{!20, !234}
!918 = !DISubprogram(name: "halide_error", scope: !4, file: !4, line: 111, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !20, !49}
!921 = !DISubprogram(name: "halide_print", scope: !4, file: !4, line: 97, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!922 = !DISubprogram(name: "free", scope: !6, file: !6, line: 86, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !20}
!925 = !DISubprogram(name: "halide_string_to_string", scope: !6, file: !6, line: 120, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!926 = !DISubroutineType(types: !927)
!927 = !{!30, !30, !30, !49}
!928 = !DISubprogram(name: "halide_pointer_to_string", scope: !6, file: !6, line: 124, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!929 = !DISubroutineType(types: !930)
!930 = !{!30, !30, !30, !81}
!931 = !DISubprogram(name: "halide_int64_to_string", scope: !6, file: !6, line: 122, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!932 = !DISubroutineType(types: !933)
!933 = !{!30, !30, !30, !55, !60}
