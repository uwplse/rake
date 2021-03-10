; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"class.Halide::Runtime::Internal::(anonymous namespace)::Printer" = type <{ i8*, i8*, i8*, i8*, i8, [1 x i8], [2 x i8] }>
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
define weak dso_local void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 !dbg !277 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !296, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32 %1, metadata !297, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i64 %2, metadata !298, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i64 %3, metadata !299, metadata !DIExpression()), !dbg !307
  %5 = icmp sgt i32 %1, -1, !dbg !308
  br i1 %5, label %6, label %14, !dbg !309

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !297, metadata !DIExpression()), !dbg !307
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7, !dbg !310
  %9 = load i64, i64* %8, align 8, !dbg !310, !tbaa !311
  %10 = icmp eq i64 %9, 1, !dbg !315
  br i1 %10, label %11, label %14, !dbg !316

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !317
  call void @llvm.dbg.value(metadata i32 %12, metadata !297, metadata !DIExpression()), !dbg !307
  %13 = icmp sgt i32 %7, 0, !dbg !308
  br i1 %13, label %6, label %25, !dbg !309, !llvm.loop !319

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !322
  br i1 %16, label %25, label %17, !dbg !323

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !304, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64 %2, metadata !298, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i64 %3, metadata !299, metadata !DIExpression()), !dbg !307
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15, !dbg !325
  %19 = load i64, i64* %18, align 8, !dbg !325, !tbaa !311
  %20 = icmp eq i64 %19, 0, !dbg !327
  br i1 %20, label %51, label %21, !dbg !328

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40, !dbg !328

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !329
  %27 = load i64, i64* %26, align 8, !dbg !329, !tbaa !330
  %28 = add i64 %27, %2, !dbg !332
  %29 = trunc i64 %28 to i32, !dbg !333
  %30 = inttoptr i32 %29 to i8*, !dbg !333
  call void @llvm.dbg.value(metadata i8* %30, metadata !300, metadata !DIExpression()), !dbg !334
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !335
  %32 = load i64, i64* %31, align 8, !dbg !335, !tbaa !336
  %33 = add i64 %32, %3, !dbg !337
  %34 = trunc i64 %33 to i32, !dbg !338
  %35 = inttoptr i32 %34 to i8*, !dbg !338
  call void @llvm.dbg.value(metadata i8* %35, metadata !303, metadata !DIExpression()), !dbg !334
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6, !dbg !339
  %37 = load i64, i64* %36, align 8, !dbg !339, !tbaa !340
  %38 = trunc i64 %37 to i32, !dbg !341
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #6, !dbg !342
  br label %51, !dbg !343

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !304, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64 %42, metadata !298, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i64 %43, metadata !299, metadata !DIExpression()), !dbg !307
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #7, !dbg !344
  %44 = load i64, i64* %23, align 8, !dbg !346, !tbaa !311
  %45 = add i64 %44, %42, !dbg !347
  call void @llvm.dbg.value(metadata i64 %45, metadata !298, metadata !DIExpression()), !dbg !307
  %46 = load i64, i64* %24, align 8, !dbg !348, !tbaa !311
  %47 = add i64 %46, %43, !dbg !349
  call void @llvm.dbg.value(metadata i64 %47, metadata !299, metadata !DIExpression()), !dbg !307
  %48 = add nuw i64 %41, 1, !dbg !350
  call void @llvm.dbg.value(metadata i64 %48, metadata !304, metadata !DIExpression()), !dbg !324
  %49 = load i64, i64* %18, align 8, !dbg !325, !tbaa !311
  %50 = icmp ult i64 %48, %49, !dbg !327
  br i1 %50, label %40, label %51, !dbg !328, !llvm.loop !351

51:                                               ; preds = %40, %17, %25
  ret void, !dbg !353
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !354 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #4 !dbg !358 {
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata i8* %1, metadata !363, metadata !DIExpression()), !dbg !364
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0, !dbg !365
  %4 = load i64, i64* %3, align 8, !dbg !365, !tbaa !330
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1, !dbg !367
  %6 = load i64, i64* %5, align 8, !dbg !367, !tbaa !336
  %7 = icmp eq i64 %4, %6, !dbg !368
  br i1 %7, label %11, label %8, !dbg !369

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2, !dbg !370
  %10 = load i64, i64* %9, align 8, !dbg !370, !tbaa !372
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #7, !dbg !373
  br label %26, !dbg !374

11:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !375, metadata !DIExpression()) #8, !dbg !381
  call void @llvm.dbg.value(metadata i8* %1, metadata !378, metadata !DIExpression()) #8, !dbg !381
  call void @llvm.dbg.value(metadata i8* null, metadata !379, metadata !DIExpression()) #8, !dbg !381
  %12 = tail call i8* @malloc(i32 1024) #6, !dbg !384
  %13 = icmp eq i8* %12, null, !dbg !389
  br i1 %13, label %14, label %16, !dbg !391

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !395, metadata !DIExpression()) #8, !dbg !396
  %15 = tail call i8* @halide_string_to_string(i8* %12, i8* null, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #6, !dbg !398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !401, metadata !DIExpression()) #8, !dbg !404
  tail call void @halide_error(i8* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !406
  br label %25, !dbg !410

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %12, i32 1023, !dbg !411
  store i8 0, i8* %17, align 1, !dbg !413, !tbaa !414
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !396
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), metadata !395, metadata !DIExpression()) #8, !dbg !396
  %18 = tail call i8* @halide_string_to_string(i8* nonnull %12, i8* nonnull %17, i8* nonnull getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0)) #6, !dbg !398
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !401, metadata !DIExpression()) #8, !dbg !404
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !415, metadata !DIExpression()) #8, !dbg !418
  %19 = ptrtoint i8* %18 to i32, !dbg !421
  %20 = ptrtoint i8* %12 to i32, !dbg !421
  %21 = add i32 %19, 1, !dbg !421
  %22 = sub i32 %21, %20, !dbg !422
  %23 = sext i32 %22 to i64, !dbg !423
  %24 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %1, i8* nonnull %12, i64 %23) #6, !dbg !424
  tail call void @halide_print(i8* %1, i8* nonnull %12) #6, !dbg !425
  br label %25

25:                                               ; preds = %16, %14
  tail call void @free(i8* %12) #6, !dbg !429
  br label %26

26:                                               ; preds = %25, %8
  ret void, !dbg !432
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 !dbg !433 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !438, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i1 %2, metadata !439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !465
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !440, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i1 %4, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !465
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*, !dbg !466
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #8, !dbg !466
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %6, metadata !442, metadata !DIExpression()), !dbg !467
  br i1 %2, label %8, label %13, !dbg !468

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2, !dbg !469
  %10 = load i8*, i8** %9, align 4, !dbg !469, !tbaa !470
  %11 = ptrtoint i8* %10 to i32, !dbg !477
  %12 = zext i32 %11 to i64, !dbg !477
  br label %16, !dbg !468

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0, !dbg !478
  %15 = load i64, i64* %14, align 8, !dbg !478, !tbaa !479
  br label %16, !dbg !468

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ], !dbg !468
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0, !dbg !480
  store i64 %17, i64* %18, align 8, !dbg !481, !tbaa !330
  br i1 %4, label %19, label %24, !dbg !482

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !483
  %21 = load i8*, i8** %20, align 4, !dbg !483, !tbaa !470
  %22 = ptrtoint i8* %21 to i32, !dbg !484
  %23 = zext i32 %22 to i64, !dbg !484
  br label %27, !dbg !482

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !485
  %26 = load i64, i64* %25, align 8, !dbg !485, !tbaa !479
  br label %27, !dbg !482

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ], !dbg !482
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1, !dbg !486
  store i64 %28, i64* %29, align 8, !dbg !487, !tbaa !336
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !488, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !492
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1, !dbg !494
  %31 = load i8, i8* %30, align 1, !dbg !494, !tbaa !495
  %32 = zext i8 %31 to i32, !dbg !494
  %33 = add nuw nsw i32 %32, 7, !dbg !496
  %34 = lshr i32 %33, 3, !dbg !497
  %35 = zext i32 %34 to i64, !dbg !498
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6, !dbg !499
  store i64 %35, i64* %36, align 8, !dbg !500, !tbaa !340
  call void @llvm.dbg.value(metadata i32 0, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !443, metadata !DIExpression()), !dbg !501
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0, !dbg !502
  store i64 1, i64* %37, align 8, !dbg !505, !tbaa !311
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0, !dbg !506
  store i64 0, i64* %38, align 8, !dbg !507, !tbaa !311
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0, !dbg !508
  store i64 0, i64* %39, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 1, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 1, metadata !443, metadata !DIExpression()), !dbg !501
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1, !dbg !502
  store i64 1, i64* %40, align 8, !dbg !505, !tbaa !311
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1, !dbg !506
  store i64 0, i64* %41, align 8, !dbg !507, !tbaa !311
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1, !dbg !508
  store i64 0, i64* %42, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 2, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 2, metadata !443, metadata !DIExpression()), !dbg !501
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2, !dbg !502
  store i64 1, i64* %43, align 8, !dbg !505, !tbaa !311
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2, !dbg !506
  store i64 0, i64* %44, align 8, !dbg !507, !tbaa !311
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2, !dbg !508
  store i64 0, i64* %45, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 3, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 3, metadata !443, metadata !DIExpression()), !dbg !501
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3, !dbg !502
  store i64 1, i64* %46, align 8, !dbg !505, !tbaa !311
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3, !dbg !506
  store i64 0, i64* %47, align 8, !dbg !507, !tbaa !311
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3, !dbg !508
  store i64 0, i64* %48, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 4, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 4, metadata !443, metadata !DIExpression()), !dbg !501
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4, !dbg !502
  store i64 1, i64* %49, align 8, !dbg !505, !tbaa !311
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4, !dbg !506
  store i64 0, i64* %50, align 8, !dbg !507, !tbaa !311
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4, !dbg !508
  store i64 0, i64* %51, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 5, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 5, metadata !443, metadata !DIExpression()), !dbg !501
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5, !dbg !502
  store i64 1, i64* %52, align 8, !dbg !505, !tbaa !311
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5, !dbg !506
  store i64 0, i64* %53, align 8, !dbg !507, !tbaa !311
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5, !dbg !508
  store i64 0, i64* %54, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 6, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 6, metadata !443, metadata !DIExpression()), !dbg !501
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6, !dbg !502
  store i64 1, i64* %55, align 8, !dbg !505, !tbaa !311
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6, !dbg !506
  store i64 0, i64* %56, align 8, !dbg !507, !tbaa !311
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6, !dbg !508
  store i64 0, i64* %57, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 7, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 7, metadata !443, metadata !DIExpression()), !dbg !501
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7, !dbg !502
  store i64 1, i64* %58, align 8, !dbg !505, !tbaa !311
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7, !dbg !506
  store i64 0, i64* %59, align 8, !dbg !507, !tbaa !311
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7, !dbg !508
  store i64 0, i64* %60, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 8, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 8, metadata !443, metadata !DIExpression()), !dbg !501
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8, !dbg !502
  store i64 1, i64* %61, align 8, !dbg !505, !tbaa !311
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8, !dbg !506
  store i64 0, i64* %62, align 8, !dbg !507, !tbaa !311
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8, !dbg !508
  store i64 0, i64* %63, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 9, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 9, metadata !443, metadata !DIExpression()), !dbg !501
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9, !dbg !502
  store i64 1, i64* %64, align 8, !dbg !505, !tbaa !311
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9, !dbg !506
  store i64 0, i64* %65, align 8, !dbg !507, !tbaa !311
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9, !dbg !508
  store i64 0, i64* %66, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 10, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 10, metadata !443, metadata !DIExpression()), !dbg !501
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10, !dbg !502
  store i64 1, i64* %67, align 8, !dbg !505, !tbaa !311
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10, !dbg !506
  store i64 0, i64* %68, align 8, !dbg !507, !tbaa !311
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10, !dbg !508
  store i64 0, i64* %69, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 11, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 11, metadata !443, metadata !DIExpression()), !dbg !501
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11, !dbg !502
  store i64 1, i64* %70, align 8, !dbg !505, !tbaa !311
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11, !dbg !506
  store i64 0, i64* %71, align 8, !dbg !507, !tbaa !311
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11, !dbg !508
  store i64 0, i64* %72, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 12, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 12, metadata !443, metadata !DIExpression()), !dbg !501
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12, !dbg !502
  store i64 1, i64* %73, align 8, !dbg !505, !tbaa !311
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12, !dbg !506
  store i64 0, i64* %74, align 8, !dbg !507, !tbaa !311
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12, !dbg !508
  store i64 0, i64* %75, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 13, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 13, metadata !443, metadata !DIExpression()), !dbg !501
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13, !dbg !502
  store i64 1, i64* %76, align 8, !dbg !505, !tbaa !311
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13, !dbg !506
  store i64 0, i64* %77, align 8, !dbg !507, !tbaa !311
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13, !dbg !508
  store i64 0, i64* %78, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 14, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 14, metadata !443, metadata !DIExpression()), !dbg !501
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14, !dbg !502
  store i64 1, i64* %79, align 8, !dbg !505, !tbaa !311
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14, !dbg !506
  store i64 0, i64* %80, align 8, !dbg !507, !tbaa !311
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14, !dbg !508
  store i64 0, i64* %81, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 15, metadata !443, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 15, metadata !443, metadata !DIExpression()), !dbg !501
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15, !dbg !502
  store i64 1, i64* %82, align 8, !dbg !505, !tbaa !311
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15, !dbg !506
  store i64 0, i64* %83, align 8, !dbg !507, !tbaa !311
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15, !dbg !508
  store i64 0, i64* %84, align 8, !dbg !509, !tbaa !311
  call void @llvm.dbg.value(metadata i32 16, metadata !443, metadata !DIExpression()), !dbg !501
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2, !dbg !510
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !511
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !512
  %87 = load i32, i32* %86, align 4, !dbg !512, !tbaa !514
  %88 = icmp sgt i32 %87, 0, !dbg !515
  br i1 %88, label %89, label %94, !dbg !516

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !517
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !517
  br label %101, !dbg !516

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ], !dbg !518
  %96 = load i64, i64* %36, align 8, !dbg !519, !tbaa !340
  %97 = mul i64 %95, %96, !dbg !518
  store i64 %97, i64* %85, align 8, !dbg !518, !tbaa !372
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !520
  %99 = load i32, i32* %98, align 4, !dbg !520, !tbaa !514
  %100 = icmp eq i32 %87, %99, !dbg !521
  br i1 %100, label %117, label %126, !dbg !522

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ], !dbg !511
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  call void @llvm.dbg.value(metadata i32 %103, metadata !445, metadata !DIExpression()), !dbg !511
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2, !dbg !523
  %105 = load i32, i32* %104, align 4, !dbg !523, !tbaa !525
  %106 = sext i32 %105 to i64, !dbg !527
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0, !dbg !528
  %108 = load i32, i32* %107, align 4, !dbg !528, !tbaa !529
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0, !dbg !530
  %110 = load i32, i32* %109, align 4, !dbg !530, !tbaa !529
  %111 = sub nsw i32 %108, %110, !dbg !531
  %112 = sext i32 %111 to i64, !dbg !532
  %113 = mul nsw i64 %112, %106, !dbg !533
  %114 = add i64 %113, %102, !dbg !534
  %115 = add nuw nsw i32 %103, 1, !dbg !535
  call void @llvm.dbg.value(metadata i32 %115, metadata !445, metadata !DIExpression()), !dbg !511
  %116 = icmp slt i32 %115, %87, !dbg !515
  br i1 %116, label %101, label %94, !dbg !516, !llvm.loop !536

117:                                              ; preds = %94
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !488, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !538
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !488, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !540
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !542
  %119 = load i8, i8* %118, align 1, !dbg !542, !tbaa !495
  %120 = zext i8 %119 to i32, !dbg !542
  %121 = add nuw nsw i32 %120, 7, !dbg !543
  %122 = lshr i32 %121, 3, !dbg !544
  %123 = icmp ne i32 %34, %122, !dbg !545
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123, !dbg !546
  br i1 %125, label %126, label %128, !dbg !546

126:                                              ; preds = %117, %94
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !447, metadata !DIExpression()), !dbg !547
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !547
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false), !dbg !547
  br label %245, !dbg !548

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0, !dbg !549
  br i1 %129, label %136, label %130, !dbg !550

130:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 0, metadata !453, metadata !DIExpression()), !dbg !551
  br i1 %88, label %131, label %243, !dbg !552

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !517
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !517
  br label %144, !dbg !552

136:                                              ; preds = %128
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %0, metadata !450, metadata !DIExpression()), !dbg !553
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !553
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false), !dbg !553
  br label %245, !dbg !554

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !dbg !555, !tbaa !340
  %140 = load i64, i64* %38, align 8, !dbg !556, !tbaa !311
  %141 = icmp eq i64 %139, %140, !dbg !557
  br i1 %141, label %142, label %243, !dbg !558

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !dbg !559, !tbaa !311
  br label %190, !dbg !558

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  call void @llvm.dbg.value(metadata i32 %145, metadata !453, metadata !DIExpression()), !dbg !551
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2, !dbg !560
  %147 = load i32, i32* %146, align 4, !dbg !560, !tbaa !525
  %148 = sext i32 %147 to i64, !dbg !561
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !488, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !562
  %149 = mul nsw i64 %148, %35, !dbg !564
  call void @llvm.dbg.value(metadata i64 %149, metadata !455, metadata !DIExpression()), !dbg !565
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2, !dbg !566
  %151 = load i32, i32* %150, align 4, !dbg !566, !tbaa !525
  %152 = sext i32 %151 to i64, !dbg !567
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !488, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !568
  %153 = mul nsw i64 %152, %35, !dbg !570
  call void @llvm.dbg.value(metadata i64 %153, metadata !458, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 0, metadata !459, metadata !DIExpression()), !dbg !565
  %154 = icmp eq i32 %145, 0, !dbg !571
  br i1 %154, label %165, label %155, !dbg !574

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157, !dbg !574

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  call void @llvm.dbg.value(metadata i32 %158, metadata !459, metadata !DIExpression()), !dbg !565
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158, !dbg !575
  %160 = load i64, i64* %159, align 8, !dbg !575, !tbaa !311
  %161 = icmp ult i64 %149, %160, !dbg !578
  br i1 %161, label %165, label %162, !dbg !579

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1, !dbg !580
  call void @llvm.dbg.value(metadata i32 %163, metadata !459, metadata !DIExpression()), !dbg !565
  %164 = icmp ult i32 %163, %145, !dbg !571
  br i1 %164, label %157, label %165, !dbg !574, !llvm.loop !581

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ], !dbg !583
  call void @llvm.dbg.value(metadata i32 %145, metadata !460, metadata !DIExpression()), !dbg !584
  %167 = icmp ugt i32 %145, %166, !dbg !585
  br i1 %167, label %177, label %168, !dbg !587

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1, !dbg !588
  %170 = load i32, i32* %169, align 4, !dbg !588, !tbaa !589
  %171 = sext i32 %170 to i64, !dbg !590
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166, !dbg !591
  store i64 %171, i64* %172, align 8, !dbg !592, !tbaa !311
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166, !dbg !593
  store i64 %149, i64* %173, align 8, !dbg !594, !tbaa !311
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166, !dbg !595
  store i64 %153, i64* %174, align 8, !dbg !596, !tbaa !311
  %175 = add nuw nsw i32 %145, 1, !dbg !597
  call void @llvm.dbg.value(metadata i32 %175, metadata !453, metadata !DIExpression()), !dbg !551
  %176 = icmp slt i32 %175, %87, !dbg !598
  br i1 %176, label %144, label %138, !dbg !552, !llvm.loop !599

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  call void @llvm.dbg.value(metadata i32 %178, metadata !460, metadata !DIExpression()), !dbg !584
  %179 = add nsw i32 %178, -1, !dbg !601
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179, !dbg !603
  %181 = load i64, i64* %180, align 8, !dbg !603, !tbaa !311
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178, !dbg !604
  store i64 %181, i64* %182, align 8, !dbg !605, !tbaa !311
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179, !dbg !606
  %184 = load i64, i64* %183, align 8, !dbg !606, !tbaa !311
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178, !dbg !607
  store i64 %184, i64* %185, align 8, !dbg !608, !tbaa !311
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179, !dbg !609
  %187 = load i64, i64* %186, align 8, !dbg !609, !tbaa !311
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178, !dbg !610
  store i64 %187, i64* %188, align 8, !dbg !611, !tbaa !311
  call void @llvm.dbg.value(metadata i32 %179, metadata !460, metadata !DIExpression()), !dbg !584
  %189 = icmp sgt i32 %179, %166, !dbg !585
  br i1 %189, label %177, label %168, !dbg !587, !llvm.loop !612

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ], !dbg !559
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191, !dbg !614
  br i1 %193, label %194, label %243, !dbg !615

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !dbg !616, !tbaa !311
  %196 = mul i64 %195, %191, !dbg !617
  store i64 %196, i64* %36, align 8, !dbg !617, !tbaa !340
  call void @llvm.dbg.value(metadata i32 1, metadata !462, metadata !DIExpression()), !dbg !618
  %197 = load i64, i64* %40, align 8, !dbg !619, !tbaa !311
  store i64 %197, i64* %37, align 8, !dbg !622, !tbaa !311
  %198 = load i64, i64* %41, align 8, !dbg !623, !tbaa !311
  store i64 %198, i64* %38, align 8, !dbg !624, !tbaa !311
  %199 = load i64, i64* %42, align 8, !dbg !625, !tbaa !311
  store i64 %199, i64* %39, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 2, metadata !462, metadata !DIExpression()), !dbg !618
  %200 = load i64, i64* %43, align 8, !dbg !619, !tbaa !311
  store i64 %200, i64* %40, align 8, !dbg !622, !tbaa !311
  %201 = load i64, i64* %44, align 8, !dbg !623, !tbaa !311
  store i64 %201, i64* %41, align 8, !dbg !624, !tbaa !311
  %202 = load i64, i64* %45, align 8, !dbg !625, !tbaa !311
  store i64 %202, i64* %42, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 3, metadata !462, metadata !DIExpression()), !dbg !618
  %203 = load i64, i64* %46, align 8, !dbg !619, !tbaa !311
  store i64 %203, i64* %43, align 8, !dbg !622, !tbaa !311
  %204 = load i64, i64* %47, align 8, !dbg !623, !tbaa !311
  store i64 %204, i64* %44, align 8, !dbg !624, !tbaa !311
  %205 = load i64, i64* %48, align 8, !dbg !625, !tbaa !311
  store i64 %205, i64* %45, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 4, metadata !462, metadata !DIExpression()), !dbg !618
  %206 = load i64, i64* %49, align 8, !dbg !619, !tbaa !311
  store i64 %206, i64* %46, align 8, !dbg !622, !tbaa !311
  %207 = load i64, i64* %50, align 8, !dbg !623, !tbaa !311
  store i64 %207, i64* %47, align 8, !dbg !624, !tbaa !311
  %208 = load i64, i64* %51, align 8, !dbg !625, !tbaa !311
  store i64 %208, i64* %48, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 5, metadata !462, metadata !DIExpression()), !dbg !618
  %209 = load i64, i64* %52, align 8, !dbg !619, !tbaa !311
  store i64 %209, i64* %49, align 8, !dbg !622, !tbaa !311
  %210 = load i64, i64* %53, align 8, !dbg !623, !tbaa !311
  store i64 %210, i64* %50, align 8, !dbg !624, !tbaa !311
  %211 = load i64, i64* %54, align 8, !dbg !625, !tbaa !311
  store i64 %211, i64* %51, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 6, metadata !462, metadata !DIExpression()), !dbg !618
  %212 = load i64, i64* %55, align 8, !dbg !619, !tbaa !311
  store i64 %212, i64* %52, align 8, !dbg !622, !tbaa !311
  %213 = load i64, i64* %56, align 8, !dbg !623, !tbaa !311
  store i64 %213, i64* %53, align 8, !dbg !624, !tbaa !311
  %214 = load i64, i64* %57, align 8, !dbg !625, !tbaa !311
  store i64 %214, i64* %54, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 7, metadata !462, metadata !DIExpression()), !dbg !618
  %215 = load i64, i64* %58, align 8, !dbg !619, !tbaa !311
  store i64 %215, i64* %55, align 8, !dbg !622, !tbaa !311
  %216 = load i64, i64* %59, align 8, !dbg !623, !tbaa !311
  store i64 %216, i64* %56, align 8, !dbg !624, !tbaa !311
  %217 = load i64, i64* %60, align 8, !dbg !625, !tbaa !311
  store i64 %217, i64* %57, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 8, metadata !462, metadata !DIExpression()), !dbg !618
  %218 = load i64, i64* %61, align 8, !dbg !619, !tbaa !311
  store i64 %218, i64* %58, align 8, !dbg !622, !tbaa !311
  %219 = load i64, i64* %62, align 8, !dbg !623, !tbaa !311
  store i64 %219, i64* %59, align 8, !dbg !624, !tbaa !311
  %220 = load i64, i64* %63, align 8, !dbg !625, !tbaa !311
  store i64 %220, i64* %60, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 9, metadata !462, metadata !DIExpression()), !dbg !618
  %221 = load i64, i64* %64, align 8, !dbg !619, !tbaa !311
  store i64 %221, i64* %61, align 8, !dbg !622, !tbaa !311
  %222 = load i64, i64* %65, align 8, !dbg !623, !tbaa !311
  store i64 %222, i64* %62, align 8, !dbg !624, !tbaa !311
  %223 = load i64, i64* %66, align 8, !dbg !625, !tbaa !311
  store i64 %223, i64* %63, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 10, metadata !462, metadata !DIExpression()), !dbg !618
  %224 = load i64, i64* %67, align 8, !dbg !619, !tbaa !311
  store i64 %224, i64* %64, align 8, !dbg !622, !tbaa !311
  %225 = load i64, i64* %68, align 8, !dbg !623, !tbaa !311
  store i64 %225, i64* %65, align 8, !dbg !624, !tbaa !311
  %226 = load i64, i64* %69, align 8, !dbg !625, !tbaa !311
  store i64 %226, i64* %66, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 11, metadata !462, metadata !DIExpression()), !dbg !618
  %227 = load i64, i64* %70, align 8, !dbg !619, !tbaa !311
  store i64 %227, i64* %67, align 8, !dbg !622, !tbaa !311
  %228 = load i64, i64* %71, align 8, !dbg !623, !tbaa !311
  store i64 %228, i64* %68, align 8, !dbg !624, !tbaa !311
  %229 = load i64, i64* %72, align 8, !dbg !625, !tbaa !311
  store i64 %229, i64* %69, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 12, metadata !462, metadata !DIExpression()), !dbg !618
  %230 = load i64, i64* %73, align 8, !dbg !619, !tbaa !311
  store i64 %230, i64* %70, align 8, !dbg !622, !tbaa !311
  %231 = load i64, i64* %74, align 8, !dbg !623, !tbaa !311
  store i64 %231, i64* %71, align 8, !dbg !624, !tbaa !311
  %232 = load i64, i64* %75, align 8, !dbg !625, !tbaa !311
  store i64 %232, i64* %72, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 13, metadata !462, metadata !DIExpression()), !dbg !618
  %233 = load i64, i64* %76, align 8, !dbg !619, !tbaa !311
  store i64 %233, i64* %73, align 8, !dbg !622, !tbaa !311
  %234 = load i64, i64* %77, align 8, !dbg !623, !tbaa !311
  store i64 %234, i64* %74, align 8, !dbg !624, !tbaa !311
  %235 = load i64, i64* %78, align 8, !dbg !625, !tbaa !311
  store i64 %235, i64* %75, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 14, metadata !462, metadata !DIExpression()), !dbg !618
  %236 = load i64, i64* %79, align 8, !dbg !619, !tbaa !311
  store i64 %236, i64* %76, align 8, !dbg !622, !tbaa !311
  %237 = load i64, i64* %80, align 8, !dbg !623, !tbaa !311
  store i64 %237, i64* %77, align 8, !dbg !624, !tbaa !311
  %238 = load i64, i64* %81, align 8, !dbg !625, !tbaa !311
  store i64 %238, i64* %78, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 15, metadata !462, metadata !DIExpression()), !dbg !618
  %239 = load i64, i64* %82, align 8, !dbg !619, !tbaa !311
  store i64 %239, i64* %79, align 8, !dbg !622, !tbaa !311
  %240 = load i64, i64* %83, align 8, !dbg !623, !tbaa !311
  store i64 %240, i64* %80, align 8, !dbg !624, !tbaa !311
  %241 = load i64, i64* %84, align 8, !dbg !625, !tbaa !311
  store i64 %241, i64* %81, align 8, !dbg !626, !tbaa !311
  call void @llvm.dbg.value(metadata i32 16, metadata !462, metadata !DIExpression()), !dbg !618
  store i64 1, i64* %82, align 8, !dbg !627, !tbaa !311
  store i64 0, i64* %83, align 8, !dbg !628, !tbaa !311
  store i64 0, i64* %84, align 8, !dbg !629, !tbaa !311
  %242 = icmp eq i64 %196, %198, !dbg !557
  br i1 %242, label %190, label %243, !dbg !558, !llvm.loop !630

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*, !dbg !632
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !dbg !632, !tbaa.struct !633
  br label %245, !dbg !634

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8, !dbg !635
  ret void, !dbg !635
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !636 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !640, metadata !DIExpression()), !dbg !641
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #7, !dbg !642
  ret void, !dbg !643
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !644 {
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !646, metadata !DIExpression()), !dbg !647
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #7, !dbg !648
  ret void, !dbg !649
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %1, i64 %2) local_unnamed_addr #0 !dbg !650 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !655, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i8* %1, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i64 %2, metadata !657, metadata !DIExpression()), !dbg !658
  %4 = trunc i64 %2 to i32, !dbg !659
  tail call void @__msan_unpoison(i8* %1, i32 %4) #6, !dbg !660
  ret i32 0, !dbg !661
}

declare dso_local void @__msan_unpoison(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
define weak dso_local i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %1, i64 %2, i8* %3) local_unnamed_addr #4 !dbg !662 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !666, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8* %1, metadata !667, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %2, metadata !668, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8* %3, metadata !669, metadata !DIExpression()), !dbg !672
  %5 = trunc i64 %2 to i32, !dbg !673
  %6 = tail call i32 @__msan_test_shadow(i8* %1, i32 %5) #6, !dbg !674
  call void @llvm.dbg.value(metadata i32 %6, metadata !670, metadata !DIExpression()), !dbg !672
  %7 = icmp sgt i32 %6, -1, !dbg !675
  br i1 %7, label %8, label %38, !dbg !677

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !375, metadata !DIExpression()) #8, !dbg !678
  call void @llvm.dbg.value(metadata i8* %0, metadata !378, metadata !DIExpression()) #8, !dbg !678
  call void @llvm.dbg.value(metadata i8* null, metadata !379, metadata !DIExpression()) #8, !dbg !678
  %9 = tail call i8* @malloc(i32 1024) #6, !dbg !681
  %10 = icmp eq i8* %9, null, !dbg !682
  br i1 %10, label %13, label %11, !dbg !683

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023, !dbg !684
  store i8 0, i8* %12, align 1, !dbg !685, !tbaa !414
  br label %13, !dbg !686

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ], !dbg !687
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), metadata !395, metadata !DIExpression()) #8, !dbg !688
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !690
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !691
  call void @llvm.dbg.value(metadata i8* %3, metadata !395, metadata !DIExpression()) #8, !dbg !691
  %16 = icmp eq i8* %3, null, !dbg !693
  br i1 %16, label %17, label %19, !dbg !694

17:                                               ; preds = %13
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #6, !dbg !695
  br label %21, !dbg !697

19:                                               ; preds = %13
  %20 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %3) #6, !dbg !698
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ], !dbg !699
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !700
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), metadata !395, metadata !DIExpression()) #8, !dbg !700
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %14, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !702
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !703, metadata !DIExpression()) #8, !dbg !707
  call void @llvm.dbg.value(metadata i8* %1, metadata !706, metadata !DIExpression()) #8, !dbg !707
  %24 = tail call i8* @halide_pointer_to_string(i8* %23, i8* %14, i8* %1) #6, !dbg !709
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !710
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), metadata !395, metadata !DIExpression()) #8, !dbg !710
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %14, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !712
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !713, metadata !DIExpression()) #8, !dbg !717
  call void @llvm.dbg.value(metadata i32 %6, metadata !716, metadata !DIExpression()) #8, !dbg !717
  %26 = zext i32 %6 to i64, !dbg !719
  %27 = tail call i8* @halide_int64_to_string(i8* %25, i8* %14, i64 %26, i32 1) #6, !dbg !720
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !392, metadata !DIExpression()) #8, !dbg !721
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), metadata !395, metadata !DIExpression()) #8, !dbg !721
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !723
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !401, metadata !DIExpression()) #8, !dbg !724
  br i1 %10, label %29, label %30, !dbg !726

29:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !727
  br label %37, !dbg !728

30:                                               ; preds = %21
  call void @llvm.dbg.value(metadata %"class.Halide::Runtime::Internal::(anonymous namespace)::Printer"* undef, metadata !415, metadata !DIExpression()) #8, !dbg !729
  %31 = ptrtoint i8* %28 to i32, !dbg !731
  %32 = ptrtoint i8* %9 to i32, !dbg !731
  %33 = add i32 %31, 1, !dbg !731
  %34 = sub i32 %33, %32, !dbg !732
  %35 = sext i32 %34 to i64, !dbg !733
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %35) #6, !dbg !734
  tail call void @halide_print(i8* %0, i8* nonnull %9) #6, !dbg !735
  br label %37

37:                                               ; preds = %29, %30
  call void @free(i8* %9) #6, !dbg !736
  call void @__msan_check_mem_is_initialized(i8* %1, i32 %5) #6, !dbg !737
  br label %38, !dbg !738

38:                                               ; preds = %37, %4
  ret i32 0, !dbg !739
}

declare dso_local i32 @__msan_test_shadow(i8*, i32) local_unnamed_addr #3

declare dso_local void @__msan_check_mem_is_initialized(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind mustprogress
define weak dso_local void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3) local_unnamed_addr #0 !dbg !740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !744, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %1, metadata !745, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i32 %2, metadata !746, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()), !dbg !754
  %5 = icmp sgt i32 %2, -1, !dbg !755
  br i1 %5, label %6, label %14, !dbg !756

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %2, %4 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !746, metadata !DIExpression()), !dbg !754
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %7, !dbg !757
  %9 = load i64, i64* %8, align 8, !dbg !757, !tbaa !311
  %10 = icmp eq i64 %9, 1, !dbg !758
  br i1 %10, label %11, label %14, !dbg !759

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1, !dbg !760
  call void @llvm.dbg.value(metadata i32 %12, metadata !746, metadata !DIExpression()), !dbg !754
  %13 = icmp sgt i32 %7, 0, !dbg !755
  br i1 %13, label %6, label %24, !dbg !756, !llvm.loop !762

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %2, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1, !dbg !764
  br i1 %16, label %24, label %17, !dbg !765

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 0, metadata !751, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 %3, metadata !747, metadata !DIExpression()), !dbg !754
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %15, !dbg !767
  %19 = load i64, i64* %18, align 8, !dbg !767, !tbaa !311
  %20 = icmp eq i64 %19, 0, !dbg !769
  br i1 %20, label %41, label %21, !dbg !770

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %15
  br label %33, !dbg !770

24:                                               ; preds = %11, %14
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 0, !dbg !771
  %26 = load i64, i64* %25, align 8, !dbg !771, !tbaa !330
  %27 = add i64 %26, %3, !dbg !772
  %28 = trunc i64 %27 to i32, !dbg !773
  %29 = inttoptr i32 %28 to i8*, !dbg !773
  call void @llvm.dbg.value(metadata i8* %29, metadata !748, metadata !DIExpression()), !dbg !774
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6, !dbg !775
  %31 = load i64, i64* %30, align 8, !dbg !775, !tbaa !340
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %29, i64 %31) #7, !dbg !776
  br label %41, !dbg !777

33:                                               ; preds = %21, %33
  %34 = phi i64 [ 0, %21 ], [ %38, %33 ]
  %35 = phi i64 [ %3, %21 ], [ %37, %33 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !751, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i64 %35, metadata !747, metadata !DIExpression()), !dbg !754
  tail call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %22, i64 %35) #7, !dbg !778
  %36 = load i64, i64* %23, align 8, !dbg !780, !tbaa !311
  %37 = add i64 %36, %35, !dbg !781
  call void @llvm.dbg.value(metadata i64 %37, metadata !747, metadata !DIExpression()), !dbg !754
  %38 = add nuw i64 %34, 1, !dbg !782
  call void @llvm.dbg.value(metadata i64 %38, metadata !751, metadata !DIExpression()), !dbg !766
  %39 = load i64, i64* %18, align 8, !dbg !767, !tbaa !311
  %40 = icmp ult i64 %38, %39, !dbg !769
  br i1 %40, label %33, label %41, !dbg !770, !llvm.loop !783

41:                                               ; preds = %33, %17, %24
  ret void, !dbg !785
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3, i8* %4) local_unnamed_addr #0 !dbg !786 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !790, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::device_copy"* %1, metadata !791, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 %2, metadata !792, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i64 %3, metadata !793, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i8* %4, metadata !794, metadata !DIExpression()), !dbg !801
  %6 = icmp sgt i32 %2, -1, !dbg !802
  br i1 %6, label %7, label %15, !dbg !803

7:                                                ; preds = %5, %12
  %8 = phi i32 [ %13, %12 ], [ %2, %5 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !792, metadata !DIExpression()), !dbg !801
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %8, !dbg !804
  %10 = load i64, i64* %9, align 8, !dbg !804, !tbaa !311
  %11 = icmp eq i64 %10, 1, !dbg !805
  br i1 %11, label %12, label %15, !dbg !806

12:                                               ; preds = %7
  %13 = add nsw i32 %8, -1, !dbg !807
  call void @llvm.dbg.value(metadata i32 %13, metadata !792, metadata !DIExpression()), !dbg !801
  %14 = icmp sgt i32 %8, 0, !dbg !802
  br i1 %14, label %7, label %25, !dbg !803, !llvm.loop !809

15:                                               ; preds = %7, %5
  %16 = phi i32 [ %2, %5 ], [ %8, %7 ]
  %17 = icmp eq i32 %16, -1, !dbg !811
  br i1 %17, label %25, label %18, !dbg !812

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 0, metadata !798, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i64 %3, metadata !793, metadata !DIExpression()), !dbg !801
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %16, !dbg !814
  %20 = load i64, i64* %19, align 8, !dbg !814, !tbaa !311
  %21 = icmp eq i64 %20, 0, !dbg !816
  br i1 %21, label %42, label %22, !dbg !817

22:                                               ; preds = %18
  %23 = add nsw i32 %16, -1
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %16
  br label %34, !dbg !817

25:                                               ; preds = %12, %15
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 0, !dbg !818
  %27 = load i64, i64* %26, align 8, !dbg !818, !tbaa !330
  %28 = add i64 %27, %3, !dbg !819
  %29 = trunc i64 %28 to i32, !dbg !820
  %30 = inttoptr i32 %29 to i8*, !dbg !820
  call void @llvm.dbg.value(metadata i8* %30, metadata !795, metadata !DIExpression()), !dbg !821
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6, !dbg !822
  %32 = load i64, i64* %31, align 8, !dbg !822, !tbaa !340
  %33 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %30, i64 %32, i8* %4) #7, !dbg !823
  br label %42, !dbg !824

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %39, %34 ]
  %36 = phi i64 [ %3, %22 ], [ %38, %34 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !798, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i64 %36, metadata !793, metadata !DIExpression()), !dbg !801
  tail call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %23, i64 %36, i8* %4) #7, !dbg !825
  %37 = load i64, i64* %24, align 8, !dbg !827, !tbaa !311
  %38 = add i64 %37, %36, !dbg !828
  call void @llvm.dbg.value(metadata i64 %38, metadata !793, metadata !DIExpression()), !dbg !801
  %39 = add nuw i64 %35, 1, !dbg !829
  call void @llvm.dbg.value(metadata i64 %39, metadata !798, metadata !DIExpression()), !dbg !813
  %40 = load i64, i64* %19, align 8, !dbg !814, !tbaa !311
  %41 = icmp ult i64 %39, %40, !dbg !816
  br i1 %41, label %34, label %42, !dbg !817, !llvm.loop !830

42:                                               ; preds = %34, %18, %25
  ret void, !dbg !832
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 !dbg !833 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !837, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !838, metadata !DIExpression()), !dbg !840
  %4 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !841
  br i1 %4, label %17, label %5, !dbg !843

5:                                                ; preds = %2
  %6 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %6) #8, !dbg !844
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %3, metadata !839, metadata !DIExpression()), !dbg !845
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #7, !dbg !846
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i32 0, i32 6, !dbg !847
  %8 = load i64, i64* %7, align 8, !dbg !847, !tbaa !340
  %9 = icmp eq i64 %8, 0, !dbg !849
  br i1 %9, label %16, label %10, !dbg !850

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !851, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !857, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i32 2, metadata !860, metadata !DIExpression()), !dbg !861
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !863
  %12 = load i64, i64* %11, align 8, !dbg !863, !tbaa !864
  %13 = and i64 %12, 2, !dbg !865
  %14 = icmp eq i64 %13, 0, !dbg !866
  br i1 %14, label %15, label %16, !dbg !867

15:                                               ; preds = %10
  call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %3, i32 15, i64 0) #7, !dbg !868
  br label %16, !dbg !869

16:                                               ; preds = %10, %5, %15
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %6) #8, !dbg !870
  br label %17

17:                                               ; preds = %2, %16
  ret i32 0, !dbg !870
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_msan_annotate_buffer_is_initialized_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !875, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i8* %1, metadata !876, metadata !DIExpression()), !dbg !877
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*, !dbg !878
  %4 = tail call i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %3) #7, !dbg !879
  ret void, !dbg !880
}

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_msan_check_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1, i8* %2) local_unnamed_addr #0 !dbg !881 {
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !885, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !886, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata i8* %2, metadata !887, metadata !DIExpression()), !dbg !889
  %5 = icmp eq %struct.halide_buffer_t* %1, null, !dbg !890
  br i1 %5, label %28, label %6, !dbg !892

6:                                                ; preds = %3
  %7 = bitcast %struct.halide_buffer_t* %1 to i8*, !dbg !893
  %8 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* nonnull %7, i64 40, i8* %2) #7, !dbg !894
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6, !dbg !895
  %10 = bitcast %struct.halide_dimension_t** %9 to i8**, !dbg !895
  %11 = load i8*, i8** %10, align 8, !dbg !895, !tbaa !517
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5, !dbg !896
  %13 = load i32, i32* %12, align 4, !dbg !896, !tbaa !514
  %14 = shl i32 %13, 4, !dbg !897
  %15 = zext i32 %14 to i64, !dbg !898
  %16 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %11, i64 %15, i8* %2) #7, !dbg !899
  %17 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*, !dbg !900
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %17) #8, !dbg !900
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::device_copy"* %4, metadata !888, metadata !DIExpression()), !dbg !901
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #7, !dbg !902
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6, !dbg !903
  %19 = load i64, i64* %18, align 8, !dbg !903, !tbaa !340
  %20 = icmp eq i64 %19, 0, !dbg !905
  br i1 %20, label %27, label %21, !dbg !906

21:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !851, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %1, metadata !857, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i32 2, metadata !860, metadata !DIExpression()), !dbg !910
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3, !dbg !912
  %23 = load i64, i64* %22, align 8, !dbg !912, !tbaa !864
  %24 = and i64 %23, 2, !dbg !913
  %25 = icmp eq i64 %24, 0, !dbg !914
  br i1 %25, label %26, label %27, !dbg !915

26:                                               ; preds = %21
  call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i8* %2) #7, !dbg !916
  br label %27, !dbg !917

27:                                               ; preds = %21, %6, %26
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %17) #8, !dbg !918
  br label %28

28:                                               ; preds = %3, %27
  ret i32 0, !dbg !918
}

declare !dbg !919 dso_local i8* @malloc(i32) local_unnamed_addr #3

declare !dbg !922 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #3

declare !dbg !925 extern_weak dso_local void @halide_print(i8*, i8*) local_unnamed_addr #3

declare !dbg !926 dso_local void @free(i8*) local_unnamed_addr #3

declare !dbg !929 extern_weak dso_local i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !932 extern_weak dso_local i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #3

declare !dbg !935 extern_weak dso_local i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #3

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
!llvm.module.flags = !{!273, !274, !275}
!llvm.ident = !{!276}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, imports: !271, splitDebugInlining: false, nameTableKind: None)
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
!19 = !{!20, !21, !64, !233, !269, !60, !270, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "debug", scope: !23, file: !22, line: 203, baseType: !27)
!22 = !DIFile(filename: "src/runtime/printer.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!23 = !DINamespace(scope: !24)
!24 = !DINamespace(name: "Internal", scope: !25)
!25 = !DINamespace(name: "Runtime", scope: !26)
!26 = !DINamespace(name: "Halide", scope: null)
!27 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Printer<0, 1024>", scope: !23, file: !22, line: 30, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !28, templateParams: !266)
!28 = !{!29, !32, !33, !34, !35, !37, !41, !45, !51, !56, !61, !66, !70, !74, !78, !83, !89, !122, !248, !251, !254, !259, !260, !263, !264, !265}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !27, file: !22, line: 32, baseType: !30, size: 32, flags: DIFlagPublic)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !27, file: !22, line: 32, baseType: !30, size: 32, offset: 32, flags: DIFlagPublic)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !27, file: !22, line: 32, baseType: !30, size: 32, offset: 64, flags: DIFlagPublic)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "user_context", scope: !27, file: !22, line: 33, baseType: !20, size: 32, offset: 96, flags: DIFlagPublic)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "own_mem", scope: !27, file: !22, line: 34, baseType: !36, size: 8, offset: 128, flags: DIFlagPublic)
!36 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !27, file: !22, line: 35, baseType: !38, size: 8, offset: 136, flags: DIFlagPublic)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 1)
!41 = !DISubprogram(name: "Printer", scope: !27, file: !22, line: 37, type: !42, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !20, !30}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!45 = !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKc", scope: !27, file: !22, line: 57, type: !46, scopeLine: 57, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !44, !49}
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
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
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
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
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !93, size: 32)
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
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!104 = !DISubprogram(name: "halide_type_t", scope: !94, file: !4, line: 459, type: !105, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !103}
!107 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !94, file: !4, line: 463, type: !108, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!94, !110, !87}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!125 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_t", file: !4, line: 1550, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !4, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !129, identifier: "_ZTS15halide_buffer_t")
!129 = !{!130, !131, !184, !186, !187, !188, !189, !212, !213, !218, !222, !225, !226, !229, !230, !234, !237, !238, !239, !244, !247}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !128, file: !4, line: 1425, baseType: !64, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !128, file: !4, line: 1428, baseType: !132, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !4, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !135, identifier: "_ZTS25halide_device_interface_t")
!135 = !{!136, !141, !145, !146, !150, !151, !152, !153, !154, !158, !164, !168, !169, !173, !174, !179}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !134, file: !4, line: 724, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DISubroutineType(types: !139)
!139 = !{!60, !20, !140, !132}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !134, file: !4, line: 726, baseType: !142, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DISubroutineType(types: !144)
!144 = !{!60, !20, !140}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !134, file: !4, line: 727, baseType: !142, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !134, file: !4, line: 728, baseType: !147, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !20, !132}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !134, file: !4, line: 730, baseType: !142, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !134, file: !4, line: 731, baseType: !137, size: 32, offset: 160)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !134, file: !4, line: 733, baseType: !137, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !134, file: !4, line: 735, baseType: !142, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !134, file: !4, line: 736, baseType: !155, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = !DISubroutineType(types: !157)
!157 = !{!60, !20, !140, !132, !140}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !134, file: !4, line: 738, baseType: !159, size: 32, offset: 288)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!160 = !DISubroutineType(types: !161)
!161 = !{!60, !20, !162, !140}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !134, file: !4, line: 740, baseType: !165, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 32)
!166 = !DISubroutineType(types: !167)
!167 = !{!60, !20, !162, !60, !60, !140}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !134, file: !4, line: 742, baseType: !142, size: 32, offset: 352)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !134, file: !4, line: 743, baseType: !170, size: 32, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DISubroutineType(types: !172)
!172 = !{!60, !20, !140, !64, !132}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !134, file: !4, line: 745, baseType: !142, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !134, file: !4, line: 746, baseType: !175, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DISubroutineType(types: !177)
!177 = !{!60, !20, !178, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !134, file: !4, line: 747, baseType: !180, size: 32, offset: 480)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !183, line: 10, size: 512, flags: DIFlagFwdDecl, identifier: "_ZTS30halide_device_interface_impl_t")
!183 = !DIFile(filename: "src/runtime/device_interface.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !128, file: !4, line: 1433, baseType: !185, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !4, line: 1436, baseType: !64, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !4, line: 1439, baseType: !94, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !128, file: !4, line: 1442, baseType: !59, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !128, file: !4, line: 1446, baseType: !190, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
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
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!202 = !DISubprogram(name: "halide_dimension_t", scope: !192, file: !4, line: 1389, type: !203, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !201, !59, !59, !59, !69}
!205 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !192, file: !4, line: 1393, type: !206, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!36, !208, !210}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!210 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !209, size: 32)
!211 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !192, file: !4, line: 1400, type: !206, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !128, file: !4, line: 1449, baseType: !20, size: 32, offset: 288)
!213 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !128, file: !4, line: 1454, type: !214, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{!36, !216, !217}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !4, line: 1416, baseType: !14)
!218 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !128, file: !4, line: 1458, type: !219, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !217, !36}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
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
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 27, baseType: !15)
!234 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !128, file: !4, line: 1495, type: !235, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{!185, !216}
!237 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !128, file: !4, line: 1506, type: !235, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !128, file: !4, line: 1518, type: !231, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !128, file: !4, line: 1523, type: !240, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubroutineType(types: !241)
!241 = !{!185, !216, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!244 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !128, file: !4, line: 1534, type: !245, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubroutineType(types: !246)
!246 = !{!60, !221, !20}
!247 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !128, file: !4, line: 1545, type: !223, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubprogram(name: "str", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE3strEv", scope: !27, file: !22, line: 119, type: !249, scopeLine: 119, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!49, !44}
!251 = !DISubprogram(name: "clear", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5clearEv", scope: !27, file: !22, line: 131, type: !252, scopeLine: 131, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !44}
!254 = !DISubprogram(name: "size", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE4sizeEv", scope: !27, file: !22, line: 139, type: !255, scopeLine: 139, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!64, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!259 = !DISubprogram(name: "capacity", linkageName: "_ZNK6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE8capacityEv", scope: !27, file: !22, line: 143, type: !255, scopeLine: 143, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubprogram(name: "erase", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE5eraseEi", scope: !27, file: !22, line: 148, type: !261, scopeLine: 148, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !44, !60}
!263 = !DISubprogram(name: "allocation_error", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE16allocation_errorEv", scope: !27, file: !22, line: 158, type: !249, scopeLine: 158, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !27, file: !22, line: 162, type: !252, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubprogram(name: "~Printer", scope: !27, file: !22, line: 166, type: !252, scopeLine: 166, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !{!267, !268}
!267 = !DITemplateValueParameter(name: "type", type: !60, value: i32 0)
!268 = !DITemplateValueParameter(name: "length", type: !65, value: i64 1024)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "print", scope: !23, file: !22, line: 198, baseType: !27)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!271 = !{!272}
!272 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !24, file: !6, line: 225)
!273 = !{i32 7, !"Dwarf Version", i32 4}
!274 = !{i32 2, !"Debug Info Version", i32 3}
!275 = !{i32 1, !"wchar_size", i32 4}
!276 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!277 = distinct !DISubprogram(name: "copy_memory_helper", linkageName: "_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx", scope: !24, file: !278, line: 47, type: !279, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!278 = !DIFile(filename: "src/runtime/device_buffer_utils.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281, !60, !54, !54}
!281 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_copy", scope: !24, file: !278, line: 33, size: 3328, flags: DIFlagTypePassByValue, elements: !284, identifier: "_ZTSN6Halide7Runtime8Internal11device_copyE")
!284 = !{!285, !286, !287, !288, !292, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !283, file: !278, line: 35, baseType: !64, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !283, file: !278, line: 35, baseType: !64, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "src_begin", scope: !283, file: !278, line: 37, baseType: !64, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !283, file: !278, line: 39, baseType: !289, size: 1024, offset: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1024, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "src_stride_bytes", scope: !283, file: !278, line: 41, baseType: !289, size: 1024, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "dst_stride_bytes", scope: !283, file: !278, line: 42, baseType: !289, size: 1024, offset: 2240)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !283, file: !278, line: 44, baseType: !64, size: 64, offset: 3264)
!295 = !{!296, !297, !298, !299, !300, !303, !304}
!296 = !DILocalVariable(name: "copy", arg: 1, scope: !277, file: !278, line: 47, type: !281)
!297 = !DILocalVariable(name: "d", arg: 2, scope: !277, file: !278, line: 47, type: !60)
!298 = !DILocalVariable(name: "src_off", arg: 3, scope: !277, file: !278, line: 47, type: !54)
!299 = !DILocalVariable(name: "dst_off", arg: 4, scope: !277, file: !278, line: 47, type: !54)
!300 = !DILocalVariable(name: "from", scope: !301, file: !278, line: 54, type: !81)
!301 = distinct !DILexicalBlock(scope: !302, file: !278, line: 53, column: 18)
!302 = distinct !DILexicalBlock(scope: !277, file: !278, line: 53, column: 9)
!303 = !DILocalVariable(name: "to", scope: !301, file: !278, line: 55, type: !20)
!304 = !DILocalVariable(name: "i", scope: !305, file: !278, line: 58, type: !64)
!305 = distinct !DILexicalBlock(scope: !306, file: !278, line: 58, column: 9)
!306 = distinct !DILexicalBlock(scope: !302, file: !278, line: 57, column: 12)
!307 = !DILocation(line: 0, scope: !277)
!308 = !DILocation(line: 49, column: 14, scope: !277)
!309 = !DILocation(line: 49, column: 19, scope: !277)
!310 = !DILocation(line: 49, column: 22, scope: !277)
!311 = !{!312, !312, i64 0}
!312 = !{!"long long", !313, i64 0}
!313 = !{!"omnipotent char", !314, i64 0}
!314 = !{!"Simple C++ TBAA"}
!315 = !DILocation(line: 49, column: 37, scope: !277)
!316 = !DILocation(line: 49, column: 5, scope: !277)
!317 = !DILocation(line: 50, column: 10, scope: !318)
!318 = distinct !DILexicalBlock(scope: !277, file: !278, line: 49, column: 43)
!319 = distinct !{!319, !316, !320, !321}
!320 = !DILocation(line: 51, column: 5, scope: !277)
!321 = !{!"llvm.loop.mustprogress"}
!322 = !DILocation(line: 53, column: 11, scope: !302)
!323 = !DILocation(line: 53, column: 9, scope: !277)
!324 = !DILocation(line: 0, scope: !305)
!325 = !DILocation(line: 58, column: 34, scope: !326)
!326 = distinct !DILexicalBlock(scope: !305, file: !278, line: 58, column: 9)
!327 = !DILocation(line: 58, column: 32, scope: !326)
!328 = !DILocation(line: 58, column: 9, scope: !305)
!329 = !DILocation(line: 54, column: 42, scope: !301)
!330 = !{!331, !312, i64 0}
!331 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !312, i64 0, !312, i64 8, !312, i64 16, !313, i64 24, !313, i64 152, !313, i64 280, !312, i64 408}
!332 = !DILocation(line: 54, column: 46, scope: !301)
!333 = !DILocation(line: 54, column: 28, scope: !301)
!334 = !DILocation(line: 0, scope: !301)
!335 = !DILocation(line: 55, column: 34, scope: !301)
!336 = !{!331, !312, i64 8}
!337 = !DILocation(line: 55, column: 38, scope: !301)
!338 = !DILocation(line: 55, column: 20, scope: !301)
!339 = !DILocation(line: 56, column: 31, scope: !301)
!340 = !{!331, !312, i64 408}
!341 = !DILocation(line: 56, column: 26, scope: !301)
!342 = !DILocation(line: 56, column: 9, scope: !301)
!343 = !DILocation(line: 57, column: 5, scope: !301)
!344 = !DILocation(line: 59, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !326, file: !278, line: 58, column: 55)
!346 = !DILocation(line: 60, column: 24, scope: !345)
!347 = !DILocation(line: 60, column: 21, scope: !345)
!348 = !DILocation(line: 61, column: 24, scope: !345)
!349 = !DILocation(line: 61, column: 21, scope: !345)
!350 = !DILocation(line: 58, column: 51, scope: !326)
!351 = distinct !{!351, !328, !352, !321}
!352 = !DILocation(line: 62, column: 9, scope: !305)
!353 = !DILocation(line: 64, column: 1, scope: !277)
!354 = !DISubprogram(name: "memcpy", scope: !6, file: !6, line: 94, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!20, !20, !81, !15}
!357 = !{}
!358 = distinct !DISubprogram(name: "copy_memory", linkageName: "_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv", scope: !24, file: !278, line: 66, type: !359, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !281, !20}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "copy", arg: 1, scope: !358, file: !278, line: 66, type: !281)
!363 = !DILocalVariable(name: "user_context", arg: 2, scope: !358, file: !278, line: 66, type: !20)
!364 = !DILocation(line: 0, scope: !358)
!365 = !DILocation(line: 68, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !278, line: 68, column: 9)
!367 = !DILocation(line: 68, column: 26, scope: !366)
!368 = !DILocation(line: 68, column: 18, scope: !366)
!369 = !DILocation(line: 68, column: 9, scope: !358)
!370 = !DILocation(line: 69, column: 58, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !278, line: 68, column: 31)
!372 = !{!331, !312, i64 16}
!373 = !DILocation(line: 69, column: 9, scope: !371)
!374 = !DILocation(line: 70, column: 5, scope: !371)
!375 = !DILocalVariable(name: "this", arg: 1, scope: !376, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!376 = distinct !DISubprogram(name: "Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EEC2EPvPc", scope: !27, file: !22, line: 37, type: !42, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !41, retainedNodes: !377)
!377 = !{!375, !378, !379}
!378 = !DILocalVariable(name: "ctx", arg: 2, scope: !376, file: !22, line: 37, type: !20)
!379 = !DILocalVariable(name: "mem", arg: 3, scope: !376, file: !22, line: 37, type: !30)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!381 = !DILocation(line: 0, scope: !376, inlinedAt: !382)
!382 = distinct !DILocation(line: 71, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !366, file: !278, line: 70, column: 12)
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
!402 = distinct !DISubprogram(name: "~Printer", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EED2Ev", scope: !27, file: !22, line: 166, type: !252, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !265, retainedNodes: !403)
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
!414 = !{!313, !313, i64 0}
!415 = !DILocalVariable(name: "this", arg: 1, scope: !416, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!416 = distinct !DISubprogram(name: "msan_annotate_is_initialized", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EE28msan_annotate_is_initializedEv", scope: !27, file: !22, line: 162, type: !252, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !264, retainedNodes: !417)
!417 = !{!415}
!418 = !DILocation(line: 0, scope: !416, inlinedAt: !419)
!419 = distinct !DILocation(line: 170, column: 13, scope: !420, inlinedAt: !405)
!420 = distinct !DILexicalBlock(scope: !408, file: !22, line: 169, column: 16)
!421 = !DILocation(line: 163, column: 81, scope: !416, inlinedAt: !419)
!422 = !DILocation(line: 163, column: 87, scope: !416, inlinedAt: !419)
!423 = !DILocation(line: 163, column: 77, scope: !416, inlinedAt: !419)
!424 = !DILocation(line: 163, column: 15, scope: !416, inlinedAt: !419)
!425 = !DILocation(line: 174, column: 17, scope: !426, inlinedAt: !405)
!426 = distinct !DILexicalBlock(scope: !427, file: !22, line: 173, column: 46)
!427 = distinct !DILexicalBlock(scope: !428, file: !22, line: 173, column: 24)
!428 = distinct !DILexicalBlock(scope: !420, file: !22, line: 171, column: 17)
!429 = !DILocation(line: 181, column: 13, scope: !430, inlinedAt: !405)
!430 = distinct !DILexicalBlock(scope: !431, file: !22, line: 180, column: 40)
!431 = distinct !DILexicalBlock(scope: !409, file: !22, line: 180, column: 13)
!432 = !DILocation(line: 73, column: 1, scope: !358)
!433 = distinct !DISubprogram(name: "make_buffer_copy", linkageName: "_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b", scope: !24, file: !278, line: 76, type: !434, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !437)
!434 = !DISubroutineType(types: !435)
!435 = !{!283, !436, !36, !436, !36}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!437 = !{!438, !439, !440, !441, !442, !443, !445, !447, !450, !453, !455, !458, !459, !460, !462}
!438 = !DILocalVariable(name: "src", arg: 1, scope: !433, file: !278, line: 76, type: !436)
!439 = !DILocalVariable(name: "src_host", arg: 2, scope: !433, file: !278, line: 76, type: !36)
!440 = !DILocalVariable(name: "dst", arg: 3, scope: !433, file: !278, line: 77, type: !436)
!441 = !DILocalVariable(name: "dst_host", arg: 4, scope: !433, file: !278, line: 77, type: !36)
!442 = !DILocalVariable(name: "c", scope: !433, file: !278, line: 79, type: !283)
!443 = !DILocalVariable(name: "i", scope: !444, file: !278, line: 83, type: !60)
!444 = distinct !DILexicalBlock(scope: !433, file: !278, line: 83, column: 5)
!445 = !DILocalVariable(name: "i", scope: !446, file: !278, line: 91, type: !60)
!446 = distinct !DILexicalBlock(scope: !433, file: !278, line: 91, column: 5)
!447 = !DILocalVariable(name: "zero", scope: !448, file: !278, line: 100, type: !283)
!448 = distinct !DILexicalBlock(scope: !449, file: !278, line: 98, column: 42)
!449 = distinct !DILexicalBlock(scope: !433, file: !278, line: 96, column: 9)
!450 = !DILocalVariable(name: "zero", scope: !451, file: !278, line: 107, type: !283)
!451 = distinct !DILexicalBlock(scope: !452, file: !278, line: 104, column: 28)
!452 = distinct !DILexicalBlock(scope: !433, file: !278, line: 104, column: 9)
!453 = !DILocalVariable(name: "i", scope: !454, file: !278, line: 115, type: !60)
!454 = distinct !DILexicalBlock(scope: !433, file: !278, line: 115, column: 5)
!455 = !DILocalVariable(name: "dst_stride_bytes", scope: !456, file: !278, line: 117, type: !64)
!456 = distinct !DILexicalBlock(scope: !457, file: !278, line: 115, column: 47)
!457 = distinct !DILexicalBlock(scope: !454, file: !278, line: 115, column: 5)
!458 = !DILocalVariable(name: "src_stride_bytes", scope: !456, file: !278, line: 118, type: !64)
!459 = !DILocalVariable(name: "insert", scope: !456, file: !278, line: 120, type: !60)
!460 = !DILocalVariable(name: "j", scope: !461, file: !278, line: 128, type: !60)
!461 = distinct !DILexicalBlock(scope: !456, file: !278, line: 128, column: 9)
!462 = !DILocalVariable(name: "j", scope: !463, file: !278, line: 151, type: !60)
!463 = distinct !DILexicalBlock(scope: !464, file: !278, line: 151, column: 9)
!464 = distinct !DILexicalBlock(scope: !433, file: !278, line: 145, column: 51)
!465 = !DILocation(line: 0, scope: !433)
!466 = !DILocation(line: 79, column: 5, scope: !433)
!467 = !DILocation(line: 79, column: 17, scope: !433)
!468 = !DILocation(line: 80, column: 13, scope: !433)
!469 = !DILocation(line: 80, column: 39, scope: !433)
!470 = !{!471, !472, i64 12}
!471 = !{!"_ZTS15halide_buffer_t", !312, i64 0, !472, i64 8, !472, i64 12, !312, i64 16, !473, i64 24, !476, i64 28, !472, i64 32, !472, i64 36}
!472 = !{!"any pointer", !313, i64 0}
!473 = !{!"_ZTS13halide_type_t", !474, i64 0, !313, i64 1, !475, i64 2}
!474 = !{!"_ZTS18halide_type_code_t", !313, i64 0}
!475 = !{!"short", !313, i64 0}
!476 = !{!"int", !313, i64 0}
!477 = !DILocation(line: 80, column: 24, scope: !433)
!478 = !DILocation(line: 80, column: 51, scope: !433)
!479 = !{!471, !312, i64 0}
!480 = !DILocation(line: 80, column: 7, scope: !433)
!481 = !DILocation(line: 80, column: 11, scope: !433)
!482 = !DILocation(line: 81, column: 13, scope: !433)
!483 = !DILocation(line: 81, column: 39, scope: !433)
!484 = !DILocation(line: 81, column: 24, scope: !433)
!485 = !DILocation(line: 81, column: 51, scope: !433)
!486 = !DILocation(line: 81, column: 7, scope: !433)
!487 = !DILocation(line: 81, column: 11, scope: !433)
!488 = !DILocalVariable(name: "this", arg: 1, scope: !489, type: !491, flags: DIFlagArtificial | DIFlagObjectPointer)
!489 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !94, file: !4, line: 481, type: !117, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !116, retainedNodes: !490)
!490 = !{!488}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!492 = !DILocation(line: 0, scope: !489, inlinedAt: !493)
!493 = distinct !DILocation(line: 82, column: 30, scope: !433)
!494 = !DILocation(line: 482, column: 17, scope: !489, inlinedAt: !493)
!495 = !{!473, !313, i64 1}
!496 = !DILocation(line: 482, column: 22, scope: !489, inlinedAt: !493)
!497 = !DILocation(line: 482, column: 27, scope: !489, inlinedAt: !493)
!498 = !DILocation(line: 82, column: 20, scope: !433)
!499 = !DILocation(line: 82, column: 7, scope: !433)
!500 = !DILocation(line: 82, column: 18, scope: !433)
!501 = !DILocation(line: 0, scope: !444)
!502 = !DILocation(line: 84, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !278, line: 83, column: 45)
!504 = distinct !DILexicalBlock(scope: !444, file: !278, line: 83, column: 5)
!505 = !DILocation(line: 84, column: 21, scope: !503)
!506 = !DILocation(line: 85, column: 9, scope: !503)
!507 = !DILocation(line: 85, column: 31, scope: !503)
!508 = !DILocation(line: 86, column: 9, scope: !503)
!509 = !DILocation(line: 86, column: 31, scope: !503)
!510 = !DILocation(line: 90, column: 7, scope: !433)
!511 = !DILocation(line: 0, scope: !446)
!512 = !DILocation(line: 91, column: 30, scope: !513)
!513 = distinct !DILexicalBlock(scope: !446, file: !278, line: 91, column: 5)
!514 = !{!471, !476, i64 28}
!515 = !DILocation(line: 91, column: 23, scope: !513)
!516 = !DILocation(line: 91, column: 5, scope: !446)
!517 = !{!471, !472, i64 32}
!518 = !DILocation(line: 94, column: 17, scope: !433)
!519 = !DILocation(line: 94, column: 22, scope: !433)
!520 = !DILocation(line: 96, column: 33, scope: !449)
!521 = !DILocation(line: 96, column: 25, scope: !449)
!522 = !DILocation(line: 96, column: 44, scope: !449)
!523 = !DILocation(line: 92, column: 46, scope: !524)
!524 = distinct !DILexicalBlock(scope: !513, file: !278, line: 91, column: 47)
!525 = !{!526, !476, i64 8}
!526 = !{!"_ZTS18halide_dimension_t", !476, i64 0, !476, i64 4, !476, i64 8, !476, i64 12}
!527 = !DILocation(line: 92, column: 34, scope: !524)
!528 = !DILocation(line: 92, column: 68, scope: !524)
!529 = !{!526, !476, i64 0}
!530 = !DILocation(line: 92, column: 86, scope: !524)
!531 = !DILocation(line: 92, column: 72, scope: !524)
!532 = !DILocation(line: 92, column: 55, scope: !524)
!533 = !DILocation(line: 92, column: 53, scope: !524)
!534 = !DILocation(line: 92, column: 21, scope: !524)
!535 = !DILocation(line: 91, column: 43, scope: !513)
!536 = distinct !{!536, !516, !537, !321}
!537 = !DILocation(line: 93, column: 5, scope: !446)
!538 = !DILocation(line: 0, scope: !489, inlinedAt: !539)
!539 = distinct !DILocation(line: 97, column: 19, scope: !449)
!540 = !DILocation(line: 0, scope: !489, inlinedAt: !541)
!541 = distinct !DILocation(line: 97, column: 40, scope: !449)
!542 = !DILocation(line: 482, column: 17, scope: !489, inlinedAt: !541)
!543 = !DILocation(line: 482, column: 22, scope: !489, inlinedAt: !541)
!544 = !DILocation(line: 482, column: 27, scope: !489, inlinedAt: !541)
!545 = !DILocation(line: 97, column: 27, scope: !449)
!546 = !DILocation(line: 97, column: 48, scope: !449)
!547 = !DILocation(line: 100, column: 21, scope: !448)
!548 = !DILocation(line: 101, column: 9, scope: !448)
!549 = !DILocation(line: 104, column: 22, scope: !452)
!550 = !DILocation(line: 104, column: 9, scope: !433)
!551 = !DILocation(line: 0, scope: !454)
!552 = !DILocation(line: 115, column: 5, scope: !454)
!553 = !DILocation(line: 107, column: 21, scope: !451)
!554 = !DILocation(line: 108, column: 9, scope: !451)
!555 = !DILocation(line: 144, column: 14, scope: !433)
!556 = !DILocation(line: 144, column: 28, scope: !433)
!557 = !DILocation(line: 144, column: 25, scope: !433)
!558 = !DILocation(line: 144, column: 50, scope: !433)
!559 = !DILocation(line: 145, column: 28, scope: !433)
!560 = !DILocation(line: 117, column: 59, scope: !456)
!561 = !DILocation(line: 117, column: 47, scope: !456)
!562 = !DILocation(line: 0, scope: !489, inlinedAt: !563)
!563 = distinct !DILocation(line: 117, column: 78, scope: !456)
!564 = !DILocation(line: 117, column: 66, scope: !456)
!565 = !DILocation(line: 0, scope: !456)
!566 = !DILocation(line: 118, column: 59, scope: !456)
!567 = !DILocation(line: 118, column: 47, scope: !456)
!568 = !DILocation(line: 0, scope: !489, inlinedAt: !569)
!569 = distinct !DILocation(line: 118, column: 78, scope: !456)
!570 = !DILocation(line: 118, column: 66, scope: !456)
!571 = !DILocation(line: 121, column: 33, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !278, line: 121, column: 9)
!573 = distinct !DILexicalBlock(scope: !456, file: !278, line: 121, column: 9)
!574 = !DILocation(line: 121, column: 9, scope: !573)
!575 = !DILocation(line: 124, column: 36, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !278, line: 124, column: 17)
!577 = distinct !DILexicalBlock(scope: !572, file: !278, line: 121, column: 48)
!578 = !DILocation(line: 124, column: 34, scope: !576)
!579 = !DILocation(line: 124, column: 63, scope: !576)
!580 = !DILocation(line: 121, column: 44, scope: !572)
!581 = distinct !{!581, !574, !582, !321}
!582 = !DILocation(line: 127, column: 9, scope: !573)
!583 = !DILocation(line: 0, scope: !573)
!584 = !DILocation(line: 0, scope: !461)
!585 = !DILocation(line: 128, column: 27, scope: !586)
!586 = distinct !DILexicalBlock(scope: !461, file: !278, line: 128, column: 9)
!587 = !DILocation(line: 128, column: 9, scope: !461)
!588 = !DILocation(line: 133, column: 40, scope: !456)
!589 = !{!526, !476, i64 4}
!590 = !DILocation(line: 133, column: 28, scope: !456)
!591 = !DILocation(line: 133, column: 9, scope: !456)
!592 = !DILocation(line: 133, column: 26, scope: !456)
!593 = !DILocation(line: 135, column: 9, scope: !456)
!594 = !DILocation(line: 135, column: 36, scope: !456)
!595 = !DILocation(line: 136, column: 9, scope: !456)
!596 = !DILocation(line: 136, column: 36, scope: !456)
!597 = !DILocation(line: 115, column: 43, scope: !457)
!598 = !DILocation(line: 115, column: 23, scope: !457)
!599 = distinct !{!599, !552, !600, !321}
!600 = !DILocation(line: 137, column: 5, scope: !454)
!601 = !DILocation(line: 129, column: 38, scope: !602)
!602 = distinct !DILexicalBlock(scope: !586, file: !278, line: 128, column: 42)
!603 = !DILocation(line: 129, column: 27, scope: !602)
!604 = !DILocation(line: 129, column: 13, scope: !602)
!605 = !DILocation(line: 129, column: 25, scope: !602)
!606 = !DILocation(line: 130, column: 37, scope: !602)
!607 = !DILocation(line: 130, column: 13, scope: !602)
!608 = !DILocation(line: 130, column: 35, scope: !602)
!609 = !DILocation(line: 131, column: 37, scope: !602)
!610 = !DILocation(line: 131, column: 13, scope: !602)
!611 = !DILocation(line: 131, column: 35, scope: !602)
!612 = distinct !{!612, !587, !613, !321}
!613 = !DILocation(line: 132, column: 9, scope: !461)
!614 = !DILocation(line: 145, column: 25, scope: !433)
!615 = !DILocation(line: 144, column: 5, scope: !433)
!616 = !DILocation(line: 147, column: 25, scope: !464)
!617 = !DILocation(line: 147, column: 22, scope: !464)
!618 = !DILocation(line: 0, scope: !463)
!619 = !DILocation(line: 152, column: 31, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !278, line: 151, column: 49)
!621 = distinct !DILexicalBlock(scope: !463, file: !278, line: 151, column: 9)
!622 = !DILocation(line: 152, column: 29, scope: !620)
!623 = !DILocation(line: 153, column: 41, scope: !620)
!624 = !DILocation(line: 153, column: 39, scope: !620)
!625 = !DILocation(line: 154, column: 41, scope: !620)
!626 = !DILocation(line: 154, column: 39, scope: !620)
!627 = !DILocation(line: 156, column: 37, scope: !464)
!628 = !DILocation(line: 157, column: 47, scope: !464)
!629 = !DILocation(line: 158, column: 47, scope: !464)
!630 = distinct !{!630, !615, !631, !321}
!631 = !DILocation(line: 159, column: 5, scope: !433)
!632 = !DILocation(line: 160, column: 12, scope: !433)
!633 = !{i64 0, i64 8, !311, i64 8, i64 8, !311, i64 16, i64 8, !311, i64 24, i64 128, !414, i64 152, i64 128, !414, i64 280, i64 128, !414, i64 408, i64 8, !311}
!634 = !DILocation(line: 160, column: 5, scope: !433)
!635 = !DILocation(line: 161, column: 1, scope: !433)
!636 = distinct !DISubprogram(name: "make_host_to_device_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t", scope: !24, file: !278, line: 163, type: !637, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!283, !436}
!639 = !{!640}
!640 = !DILocalVariable(name: "buf", arg: 1, scope: !636, file: !278, line: 163, type: !436)
!641 = !DILocation(line: 0, scope: !636)
!642 = !DILocation(line: 164, column: 12, scope: !636)
!643 = !DILocation(line: 164, column: 5, scope: !636)
!644 = distinct !DISubprogram(name: "make_device_to_host_copy", linkageName: "_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t", scope: !24, file: !278, line: 167, type: !637, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !645)
!645 = !{!646}
!646 = !DILocalVariable(name: "buf", arg: 1, scope: !644, file: !278, line: 167, type: !436)
!647 = !DILocation(line: 0, scope: !644)
!648 = !DILocation(line: 168, column: 12, scope: !644)
!649 = !DILocation(line: 168, column: 5, scope: !644)
!650 = distinct !DISubprogram(name: "halide_msan_annotate_memory_is_initialized", scope: !651, file: !651, line: 11, type: !652, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !654)
!651 = !DIFile(filename: "src/runtime/msan.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!652 = !DISubroutineType(types: !653)
!653 = !{!60, !20, !81, !64}
!654 = !{!655, !656, !657}
!655 = !DILocalVariable(name: "user_context", arg: 1, scope: !650, file: !651, line: 11, type: !20)
!656 = !DILocalVariable(name: "ptr", arg: 2, scope: !650, file: !651, line: 11, type: !81)
!657 = !DILocalVariable(name: "len", arg: 3, scope: !650, file: !651, line: 11, type: !64)
!658 = !DILocation(line: 0, scope: !650)
!659 = !DILocation(line: 12, column: 34, scope: !650)
!660 = !DILocation(line: 12, column: 5, scope: !650)
!661 = !DILocation(line: 13, column: 5, scope: !650)
!662 = distinct !DISubprogram(name: "halide_msan_check_memory_is_initialized", scope: !651, file: !651, line: 16, type: !663, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!60, !20, !81, !64, !49}
!665 = !{!666, !667, !668, !669, !670}
!666 = !DILocalVariable(name: "user_context", arg: 1, scope: !662, file: !651, line: 16, type: !20)
!667 = !DILocalVariable(name: "ptr", arg: 2, scope: !662, file: !651, line: 16, type: !81)
!668 = !DILocalVariable(name: "len", arg: 3, scope: !662, file: !651, line: 16, type: !64)
!669 = !DILocalVariable(name: "name", arg: 4, scope: !662, file: !651, line: 16, type: !49)
!670 = !DILocalVariable(name: "offset", scope: !662, file: !651, line: 17, type: !671)
!671 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!672 = !DILocation(line: 0, scope: !662)
!673 = !DILocation(line: 17, column: 51, scope: !662)
!674 = !DILocation(line: 17, column: 19, scope: !662)
!675 = !DILocation(line: 18, column: 16, scope: !676)
!676 = distinct !DILexicalBlock(scope: !662, file: !651, line: 18, column: 9)
!677 = !DILocation(line: 18, column: 9, scope: !662)
!678 = !DILocation(line: 0, scope: !376, inlinedAt: !679)
!679 = distinct !DILocation(line: 19, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !651, line: 18, column: 22)
!681 = !DILocation(line: 44, column: 27, scope: !385, inlinedAt: !679)
!682 = !DILocation(line: 48, column: 13, scope: !390, inlinedAt: !679)
!683 = !DILocation(line: 48, column: 13, scope: !388, inlinedAt: !679)
!684 = !DILocation(line: 49, column: 23, scope: !412, inlinedAt: !679)
!685 = !DILocation(line: 50, column: 18, scope: !412, inlinedAt: !679)
!686 = !DILocation(line: 51, column: 9, scope: !412, inlinedAt: !679)
!687 = !DILocation(line: 0, scope: !390, inlinedAt: !679)
!688 = !DILocation(line: 0, scope: !393, inlinedAt: !689)
!689 = distinct !DILocation(line: 19, column: 29, scope: !680)
!690 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !689)
!691 = !DILocation(line: 0, scope: !393, inlinedAt: !692)
!692 = distinct !DILocation(line: 19, column: 61, scope: !680)
!693 = !DILocation(line: 59, column: 17, scope: !400, inlinedAt: !692)
!694 = !DILocation(line: 59, column: 13, scope: !393, inlinedAt: !692)
!695 = !DILocation(line: 60, column: 19, scope: !696, inlinedAt: !692)
!696 = distinct !DILexicalBlock(scope: !400, file: !22, line: 59, column: 29)
!697 = !DILocation(line: 61, column: 9, scope: !696, inlinedAt: !692)
!698 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !692)
!699 = !DILocation(line: 0, scope: !400, inlinedAt: !692)
!700 = !DILocation(line: 0, scope: !393, inlinedAt: !701)
!701 = distinct !DILocation(line: 19, column: 69, scope: !680)
!702 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !701)
!703 = !DILocalVariable(name: "this", arg: 1, scope: !704, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!704 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEPKv", scope: !27, file: !22, line: 97, type: !79, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !78, retainedNodes: !705)
!705 = !{!703, !706}
!706 = !DILocalVariable(name: "arg", arg: 2, scope: !704, file: !22, line: 97, type: !81)
!707 = !DILocation(line: 0, scope: !704, inlinedAt: !708)
!708 = distinct !DILocation(line: 19, column: 78, scope: !680)
!709 = !DILocation(line: 98, column: 15, scope: !704, inlinedAt: !708)
!710 = !DILocation(line: 0, scope: !393, inlinedAt: !711)
!711 = distinct !DILocation(line: 19, column: 85, scope: !680)
!712 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !711)
!713 = !DILocalVariable(name: "this", arg: 1, scope: !714, type: !380, flags: DIFlagArtificial | DIFlagObjectPointer)
!714 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi0ELy1024EElsEi", scope: !27, file: !22, line: 72, type: !57, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !56, retainedNodes: !715)
!715 = !{!713, !716}
!716 = !DILocalVariable(name: "arg", arg: 2, scope: !714, file: !22, line: 72, type: !59)
!717 = !DILocation(line: 0, scope: !714, inlinedAt: !718)
!718 = distinct !DILocation(line: 19, column: 94, scope: !680)
!719 = !DILocation(line: 73, column: 48, scope: !714, inlinedAt: !718)
!720 = !DILocation(line: 73, column: 15, scope: !714, inlinedAt: !718)
!721 = !DILocation(line: 0, scope: !393, inlinedAt: !722)
!722 = distinct !DILocation(line: 19, column: 109, scope: !680)
!723 = !DILocation(line: 62, column: 19, scope: !399, inlinedAt: !722)
!724 = !DILocation(line: 0, scope: !402, inlinedAt: !725)
!725 = distinct !DILocation(line: 19, column: 9, scope: !680)
!726 = !DILocation(line: 167, column: 13, scope: !409, inlinedAt: !725)
!727 = !DILocation(line: 168, column: 13, scope: !407, inlinedAt: !725)
!728 = !DILocation(line: 169, column: 9, scope: !407, inlinedAt: !725)
!729 = !DILocation(line: 0, scope: !416, inlinedAt: !730)
!730 = distinct !DILocation(line: 170, column: 13, scope: !420, inlinedAt: !725)
!731 = !DILocation(line: 163, column: 81, scope: !416, inlinedAt: !730)
!732 = !DILocation(line: 163, column: 87, scope: !416, inlinedAt: !730)
!733 = !DILocation(line: 163, column: 77, scope: !416, inlinedAt: !730)
!734 = !DILocation(line: 163, column: 15, scope: !416, inlinedAt: !730)
!735 = !DILocation(line: 174, column: 17, scope: !426, inlinedAt: !725)
!736 = !DILocation(line: 181, column: 13, scope: !430, inlinedAt: !725)
!737 = !DILocation(line: 21, column: 9, scope: !680)
!738 = !DILocation(line: 22, column: 5, scope: !680)
!739 = !DILocation(line: 23, column: 5, scope: !662)
!740 = distinct !DISubprogram(name: "annotate_helper", scope: !24, file: !651, line: 30, type: !741, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !20, !281, !60, !54}
!743 = !{!744, !745, !746, !747, !748, !751}
!744 = !DILocalVariable(name: "uc", arg: 1, scope: !740, file: !651, line: 30, type: !20)
!745 = !DILocalVariable(name: "c", arg: 2, scope: !740, file: !651, line: 30, type: !281)
!746 = !DILocalVariable(name: "d", arg: 3, scope: !740, file: !651, line: 30, type: !60)
!747 = !DILocalVariable(name: "off", arg: 4, scope: !740, file: !651, line: 30, type: !54)
!748 = !DILocalVariable(name: "from", scope: !749, file: !651, line: 36, type: !81)
!749 = distinct !DILexicalBlock(scope: !750, file: !651, line: 35, column: 18)
!750 = distinct !DILexicalBlock(scope: !740, file: !651, line: 35, column: 9)
!751 = !DILocalVariable(name: "i", scope: !752, file: !651, line: 39, type: !64)
!752 = distinct !DILexicalBlock(scope: !753, file: !651, line: 39, column: 9)
!753 = distinct !DILexicalBlock(scope: !750, file: !651, line: 38, column: 12)
!754 = !DILocation(line: 0, scope: !740)
!755 = !DILocation(line: 31, column: 14, scope: !740)
!756 = !DILocation(line: 31, column: 19, scope: !740)
!757 = !DILocation(line: 31, column: 22, scope: !740)
!758 = !DILocation(line: 31, column: 34, scope: !740)
!759 = !DILocation(line: 31, column: 5, scope: !740)
!760 = !DILocation(line: 32, column: 10, scope: !761)
!761 = distinct !DILexicalBlock(scope: !740, file: !651, line: 31, column: 40)
!762 = distinct !{!762, !759, !763, !321}
!763 = !DILocation(line: 33, column: 5, scope: !740)
!764 = !DILocation(line: 35, column: 11, scope: !750)
!765 = !DILocation(line: 35, column: 9, scope: !740)
!766 = !DILocation(line: 0, scope: !752)
!767 = !DILocation(line: 39, column: 34, scope: !768)
!768 = distinct !DILexicalBlock(scope: !752, file: !651, line: 39, column: 9)
!769 = !DILocation(line: 39, column: 32, scope: !768)
!770 = !DILocation(line: 39, column: 9, scope: !752)
!771 = !DILocation(line: 36, column: 39, scope: !749)
!772 = !DILocation(line: 36, column: 43, scope: !749)
!773 = !DILocation(line: 36, column: 28, scope: !749)
!774 = !DILocation(line: 0, scope: !749)
!775 = !DILocation(line: 37, column: 64, scope: !749)
!776 = !DILocation(line: 37, column: 9, scope: !749)
!777 = !DILocation(line: 38, column: 5, scope: !749)
!778 = !DILocation(line: 40, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !768, file: !651, line: 39, column: 52)
!780 = !DILocation(line: 41, column: 20, scope: !779)
!781 = !DILocation(line: 41, column: 17, scope: !779)
!782 = !DILocation(line: 39, column: 48, scope: !768)
!783 = distinct !{!783, !770, !784, !321}
!784 = !DILocation(line: 42, column: 9, scope: !752)
!785 = !DILocation(line: 44, column: 1, scope: !740)
!786 = distinct !DISubprogram(name: "check_helper", scope: !24, file: !651, line: 46, type: !787, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !20, !281, !60, !54, !49}
!789 = !{!790, !791, !792, !793, !794, !795, !798}
!790 = !DILocalVariable(name: "uc", arg: 1, scope: !786, file: !651, line: 46, type: !20)
!791 = !DILocalVariable(name: "c", arg: 2, scope: !786, file: !651, line: 46, type: !281)
!792 = !DILocalVariable(name: "d", arg: 3, scope: !786, file: !651, line: 46, type: !60)
!793 = !DILocalVariable(name: "off", arg: 4, scope: !786, file: !651, line: 46, type: !54)
!794 = !DILocalVariable(name: "buf_name", arg: 5, scope: !786, file: !651, line: 46, type: !49)
!795 = !DILocalVariable(name: "from", scope: !796, file: !651, line: 52, type: !81)
!796 = distinct !DILexicalBlock(scope: !797, file: !651, line: 51, column: 18)
!797 = distinct !DILexicalBlock(scope: !786, file: !651, line: 51, column: 9)
!798 = !DILocalVariable(name: "i", scope: !799, file: !651, line: 55, type: !64)
!799 = distinct !DILexicalBlock(scope: !800, file: !651, line: 55, column: 9)
!800 = distinct !DILexicalBlock(scope: !797, file: !651, line: 54, column: 12)
!801 = !DILocation(line: 0, scope: !786)
!802 = !DILocation(line: 47, column: 14, scope: !786)
!803 = !DILocation(line: 47, column: 19, scope: !786)
!804 = !DILocation(line: 47, column: 22, scope: !786)
!805 = !DILocation(line: 47, column: 34, scope: !786)
!806 = !DILocation(line: 47, column: 5, scope: !786)
!807 = !DILocation(line: 48, column: 10, scope: !808)
!808 = distinct !DILexicalBlock(scope: !786, file: !651, line: 47, column: 40)
!809 = distinct !{!809, !806, !810, !321}
!810 = !DILocation(line: 49, column: 5, scope: !786)
!811 = !DILocation(line: 51, column: 11, scope: !797)
!812 = !DILocation(line: 51, column: 9, scope: !786)
!813 = !DILocation(line: 0, scope: !799)
!814 = !DILocation(line: 55, column: 34, scope: !815)
!815 = distinct !DILexicalBlock(scope: !799, file: !651, line: 55, column: 9)
!816 = !DILocation(line: 55, column: 32, scope: !815)
!817 = !DILocation(line: 55, column: 9, scope: !799)
!818 = !DILocation(line: 52, column: 39, scope: !796)
!819 = !DILocation(line: 52, column: 43, scope: !796)
!820 = !DILocation(line: 52, column: 28, scope: !796)
!821 = !DILocation(line: 0, scope: !796)
!822 = !DILocation(line: 53, column: 61, scope: !796)
!823 = !DILocation(line: 53, column: 9, scope: !796)
!824 = !DILocation(line: 54, column: 5, scope: !796)
!825 = !DILocation(line: 56, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !815, file: !651, line: 55, column: 52)
!827 = !DILocation(line: 57, column: 20, scope: !826)
!828 = !DILocation(line: 57, column: 17, scope: !826)
!829 = !DILocation(line: 55, column: 48, scope: !815)
!830 = distinct !{!830, !817, !831, !321}
!831 = !DILocation(line: 58, column: 9, scope: !799)
!832 = !DILocation(line: 60, column: 1, scope: !786)
!833 = distinct !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized", scope: !651, file: !651, line: 70, type: !834, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!60, !20, !270}
!836 = !{!837, !838, !839}
!837 = !DILocalVariable(name: "user_context", arg: 1, scope: !833, file: !651, line: 70, type: !20)
!838 = !DILocalVariable(name: "b", arg: 2, scope: !833, file: !651, line: 70, type: !270)
!839 = !DILocalVariable(name: "c", scope: !833, file: !651, line: 75, type: !283)
!840 = !DILocation(line: 0, scope: !833)
!841 = !DILocation(line: 71, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !833, file: !651, line: 71, column: 9)
!843 = !DILocation(line: 71, column: 9, scope: !833)
!844 = !DILocation(line: 75, column: 5, scope: !833)
!845 = !DILocation(line: 75, column: 44, scope: !833)
!846 = !DILocation(line: 75, column: 48, scope: !833)
!847 = !DILocation(line: 76, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !833, file: !651, line: 76, column: 9)
!849 = !DILocation(line: 76, column: 22, scope: !848)
!850 = !DILocation(line: 76, column: 9, scope: !833)
!851 = !DILocalVariable(name: "this", arg: 1, scope: !852, type: !162, flags: DIFlagArtificial | DIFlagObjectPointer)
!852 = distinct !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !128, file: !4, line: 1470, type: !223, scopeLine: 1470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !225, retainedNodes: !853)
!853 = !{!851}
!854 = !DILocation(line: 0, scope: !852, inlinedAt: !855)
!855 = distinct !DILocation(line: 80, column: 12, scope: !856)
!856 = distinct !DILexicalBlock(scope: !833, file: !651, line: 80, column: 9)
!857 = !DILocalVariable(name: "this", arg: 1, scope: !858, type: !162, flags: DIFlagArtificial | DIFlagObjectPointer)
!858 = distinct !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !128, file: !4, line: 1454, type: !214, scopeLine: 1454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !213, retainedNodes: !859)
!859 = !{!857, !860}
!860 = !DILocalVariable(name: "flag", arg: 2, scope: !858, file: !4, line: 1454, type: !217)
!861 = !DILocation(line: 0, scope: !858, inlinedAt: !862)
!862 = distinct !DILocation(line: 1471, column: 16, scope: !852, inlinedAt: !855)
!863 = !DILocation(line: 1455, column: 17, scope: !858, inlinedAt: !862)
!864 = !{!471, !312, i64 16}
!865 = !DILocation(line: 1455, column: 23, scope: !858, inlinedAt: !862)
!866 = !DILocation(line: 1455, column: 31, scope: !858, inlinedAt: !862)
!867 = !DILocation(line: 80, column: 9, scope: !833)
!868 = !DILocation(line: 87, column: 5, scope: !833)
!869 = !DILocation(line: 88, column: 5, scope: !833)
!870 = !DILocation(line: 89, column: 1, scope: !833)
!871 = distinct !DISubprogram(name: "halide_msan_annotate_buffer_is_initialized_as_destructor", scope: !651, file: !651, line: 91, type: !872, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !874)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !20, !20}
!874 = !{!875, !876}
!875 = !DILocalVariable(name: "user_context", arg: 1, scope: !871, file: !651, line: 91, type: !20)
!876 = !DILocalVariable(name: "b", arg: 2, scope: !871, file: !651, line: 91, type: !20)
!877 = !DILocation(line: 0, scope: !871)
!878 = !DILocation(line: 92, column: 68, scope: !871)
!879 = !DILocation(line: 92, column: 11, scope: !871)
!880 = !DILocation(line: 93, column: 1, scope: !871)
!881 = distinct !DISubprogram(name: "halide_msan_check_buffer_is_initialized", scope: !651, file: !651, line: 95, type: !882, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{!60, !20, !270, !49}
!884 = !{!885, !886, !887, !888}
!885 = !DILocalVariable(name: "user_context", arg: 1, scope: !881, file: !651, line: 95, type: !20)
!886 = !DILocalVariable(name: "b", arg: 2, scope: !881, file: !651, line: 95, type: !270)
!887 = !DILocalVariable(name: "buf_name", arg: 3, scope: !881, file: !651, line: 95, type: !49)
!888 = !DILocalVariable(name: "c", scope: !881, file: !651, line: 103, type: !283)
!889 = !DILocation(line: 0, scope: !881)
!890 = !DILocation(line: 96, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !881, file: !651, line: 96, column: 9)
!892 = !DILocation(line: 96, column: 9, scope: !881)
!893 = !DILocation(line: 100, column: 67, scope: !881)
!894 = !DILocation(line: 100, column: 5, scope: !881)
!895 = !DILocation(line: 101, column: 70, scope: !881)
!896 = !DILocation(line: 101, column: 78, scope: !881)
!897 = !DILocation(line: 101, column: 89, scope: !881)
!898 = !DILocation(line: 101, column: 75, scope: !881)
!899 = !DILocation(line: 101, column: 5, scope: !881)
!900 = !DILocation(line: 103, column: 5, scope: !881)
!901 = !DILocation(line: 103, column: 44, scope: !881)
!902 = !DILocation(line: 103, column: 48, scope: !881)
!903 = !DILocation(line: 104, column: 11, scope: !904)
!904 = distinct !DILexicalBlock(scope: !881, file: !651, line: 104, column: 9)
!905 = !DILocation(line: 104, column: 22, scope: !904)
!906 = !DILocation(line: 104, column: 9, scope: !881)
!907 = !DILocation(line: 0, scope: !852, inlinedAt: !908)
!908 = distinct !DILocation(line: 108, column: 12, scope: !909)
!909 = distinct !DILexicalBlock(scope: !881, file: !651, line: 108, column: 9)
!910 = !DILocation(line: 0, scope: !858, inlinedAt: !911)
!911 = distinct !DILocation(line: 1471, column: 16, scope: !852, inlinedAt: !908)
!912 = !DILocation(line: 1455, column: 17, scope: !858, inlinedAt: !911)
!913 = !DILocation(line: 1455, column: 23, scope: !858, inlinedAt: !911)
!914 = !DILocation(line: 1455, column: 31, scope: !858, inlinedAt: !911)
!915 = !DILocation(line: 108, column: 9, scope: !881)
!916 = !DILocation(line: 115, column: 5, scope: !881)
!917 = !DILocation(line: 116, column: 5, scope: !881)
!918 = !DILocation(line: 117, column: 1, scope: !881)
!919 = !DISubprogram(name: "malloc", scope: !6, file: !6, line: 87, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!920 = !DISubroutineType(types: !921)
!921 = !{!20, !15}
!922 = !DISubprogram(name: "halide_error", scope: !4, file: !4, line: 111, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !20, !49}
!925 = !DISubprogram(name: "halide_print", scope: !4, file: !4, line: 97, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!926 = !DISubprogram(name: "free", scope: !6, file: !6, line: 86, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !20}
!929 = !DISubprogram(name: "halide_string_to_string", scope: !6, file: !6, line: 120, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!930 = !DISubroutineType(types: !931)
!931 = !{!30, !30, !30, !49}
!932 = !DISubprogram(name: "halide_pointer_to_string", scope: !6, file: !6, line: 124, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!933 = !DISubroutineType(types: !934)
!934 = !{!30, !30, !30, !81}
!935 = !DISubprogram(name: "halide_int64_to_string", scope: !6, file: !6, line: 122, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !357)
!936 = !DISubroutineType(types: !937)
!937 = !{!30, !30, !30, !55, !60}
