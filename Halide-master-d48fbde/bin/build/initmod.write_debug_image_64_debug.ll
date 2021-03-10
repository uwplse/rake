; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/write_debug_image.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/write_debug_image.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%"struct.Halide::Runtime::Internal::halide_tiff_header" = type <{ i16, i16, i32, i16, [15 x %"struct.Halide::Runtime::Internal::tiff_tag"], i32, [2 x i32], [2 x i32] }>
%"struct.Halide::Runtime::Internal::tiff_tag" = type { i16, i16, i32, %union.anon }
%union.anon = type { i32 }
%"struct.Halide::Runtime::Internal::ScopedFile" = type { i8* }

@_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE = weak dso_local local_unnamed_addr global [10 x i16] [i16 3, i16 3, i16 1, i16 2, i16 1, i16 2, i16 1, i16 2, i16 1, i16 2], align 2, !dbg !0
@_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE = weak dso_local local_unnamed_addr global [10 x i8] c"\07\06\09\08\0B\0A\0D\0C\0F\0E", align 1, !dbg !12
@_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE = weak dso_local local_unnamed_addr global [10 x i8] c"\07\09\02\01\04\03\06\05\0D\0C", align 1, !dbg !17
@.str = private unnamed_addr constant [51 x i8] c"Bounds query buffer passed to halide_debug_to_file\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't debug_to_file a Func with more than four dimensions\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".tiff\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".tif\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".mat\00", align 1
@__const.halide_debug_to_file.header = private unnamed_addr constant [129 x i8] c"MATLAB 5.0 MAT-file, produced by Halide                                                                                     \00\01IM\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Can't debug_to_file to a .mat file greater than 4GB\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !54 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i8* %1, metadata !60, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i8* %0, metadata !61, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i8* %1, metadata !62, metadata !DIExpression()), !dbg !63
  br label %3, !dbg !64

3:                                                ; preds = %3, %2
  %4 = phi i8* [ %0, %2 ], [ %7, %3 ], !dbg !63
  call void @llvm.dbg.value(metadata i8* %4, metadata !61, metadata !DIExpression()), !dbg !63
  %5 = load i8, i8* %4, align 1, !dbg !65, !tbaa !66
  %6 = icmp eq i8 %5, 0, !dbg !65
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !69
  call void @llvm.dbg.value(metadata i8* %7, metadata !61, metadata !DIExpression()), !dbg !63
  br i1 %6, label %8, label %3, !dbg !64, !llvm.loop !71

8:                                                ; preds = %3, %8
  %9 = phi i8* [ %12, %8 ], [ %1, %3 ], !dbg !63
  call void @llvm.dbg.value(metadata i8* %9, metadata !62, metadata !DIExpression()), !dbg !63
  %10 = load i8, i8* %9, align 1, !dbg !74, !tbaa !66
  %11 = icmp eq i8 %10, 0, !dbg !74
  %12 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !75
  call void @llvm.dbg.value(metadata i8* %12, metadata !62, metadata !DIExpression()), !dbg !63
  br i1 %11, label %13, label %8, !dbg !77, !llvm.loop !78

13:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i8* %4, metadata !61, metadata !DIExpression()), !dbg !63
  %14 = icmp ne i8* %9, %1, !dbg !80
  %15 = icmp ne i8* %4, %0, !dbg !81
  %16 = and i1 %15, %14, !dbg !81
  br i1 %16, label %17, label %29, !dbg !82

17:                                               ; preds = %13, %27
  %18 = phi i8* [ %20, %27 ], [ %4, %13 ]
  %19 = phi i8* [ %21, %27 ], [ %9, %13 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !61, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i8* %19, metadata !62, metadata !DIExpression()), !dbg !63
  %20 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !83
  call void @llvm.dbg.value(metadata i8* %20, metadata !61, metadata !DIExpression()), !dbg !63
  %21 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !85
  call void @llvm.dbg.value(metadata i8* %21, metadata !62, metadata !DIExpression()), !dbg !63
  %22 = icmp ne i8* %21, %1, !dbg !80
  %23 = icmp ne i8* %20, %0, !dbg !81
  %24 = and i1 %23, %22, !dbg !81
  %25 = load i8, i8* %20, align 1, !dbg !63, !tbaa !66
  %26 = load i8, i8* %21, align 1, !dbg !63, !tbaa !66
  br i1 %24, label %27, label %29, !dbg !82, !llvm.loop !86

27:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i8* %20, metadata !61, metadata !DIExpression()), !dbg !63
  %28 = icmp eq i8 %25, %26, !dbg !88
  br i1 %28, label %17, label %33, !dbg !90

29:                                               ; preds = %17, %13
  %30 = phi i8 [ 0, %13 ], [ %26, %17 ], !dbg !91
  %31 = phi i8 [ 0, %13 ], [ %25, %17 ], !dbg !92
  %32 = icmp eq i8 %31, %30, !dbg !93
  br label %33, !dbg !94

33:                                               ; preds = %27, %29
  %34 = phi i1 [ %32, %29 ], [ false, %27 ], !dbg !63
  ret i1 %34, !dbg !95
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_debug_to_file(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #3 !dbg !96 {
  %5 = alloca [4 x %struct.halide_dimension_t], align 4
  %6 = alloca %"struct.Halide::Runtime::Internal::halide_tiff_header", align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 1
  %10 = alloca [129 x i8], align 1
  %11 = alloca [8 x i32], align 4
  %12 = alloca [4 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [5 x i32], align 4
  %16 = alloca [4096 x i8], align 1
  %17 = alloca [4 x i32], align 4
  %18 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !252, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i8* %1, metadata !253, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 %2, metadata !254, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !255, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !408, metadata !DIExpression()), !dbg !411
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2, !dbg !414
  %20 = load i8*, i8** %19, align 8, !dbg !414, !tbaa !415
  %21 = icmp eq i8* %20, null, !dbg !423
  br i1 %21, label %22, label %27, !dbg !424

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0, !dbg !425
  %24 = load i64, i64* %23, align 8, !dbg !425, !tbaa !426
  %25 = icmp eq i64 %24, 0, !dbg !427
  br i1 %25, label %26, label %27, !dbg !428

26:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0)) #5, !dbg !429
  br label %618, !dbg !431

27:                                               ; preds = %4, %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5, !dbg !432
  %29 = load i32, i32* %28, align 4, !dbg !432, !tbaa !434
  %30 = icmp sgt i32 %29, 4, !dbg !435
  br i1 %30, label %31, label %32, !dbg !436

31:                                               ; preds = %27
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !437
  br label %618, !dbg !439

32:                                               ; preds = %27
  %33 = tail call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* nonnull %3) #5, !dbg !440
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !441, metadata !DIExpression()) #6, !dbg !447
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()) #6, !dbg !447
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), metadata !445, metadata !DIExpression()) #6, !dbg !447
  %34 = tail call i8* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !449
  call void @llvm.dbg.value(metadata i8* %34, metadata !256, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !451, metadata !DIExpression()), !dbg !455
  %35 = icmp eq i8* %34, null, !dbg !458
  br i1 %35, label %618, label %36, !dbg !459

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i64 1, metadata !277, metadata !DIExpression()), !dbg !407
  %37 = bitcast [4 x %struct.halide_dimension_t]* %5 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #6, !dbg !460
  call void @llvm.dbg.declare(metadata [4 x %struct.halide_dimension_t]* %5, metadata !278, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !462, metadata !DIExpression()), !dbg !466
  %38 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 0, !dbg !468
  store i32 0, i32* %38, align 4, !dbg !468, !tbaa !469
  %39 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1, !dbg !471
  store i32 0, i32* %39, align 4, !dbg !471, !tbaa !472
  %40 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 2, !dbg !473
  store i32 0, i32* %40, align 4, !dbg !473, !tbaa !474
  %41 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 3, !dbg !475
  store i32 0, i32* %41, align 4, !dbg !475, !tbaa !476
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !462, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !466
  %42 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 0, !dbg !468
  store i32 0, i32* %42, align 4, !dbg !468, !tbaa !469
  %43 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1, !dbg !471
  store i32 0, i32* %43, align 4, !dbg !471, !tbaa !472
  %44 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 2, !dbg !473
  store i32 0, i32* %44, align 4, !dbg !473, !tbaa !474
  %45 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 3, !dbg !475
  store i32 0, i32* %45, align 4, !dbg !475, !tbaa !476
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !462, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !466
  %46 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 0, !dbg !468
  store i32 0, i32* %46, align 4, !dbg !468, !tbaa !469
  %47 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1, !dbg !471
  store i32 0, i32* %47, align 4, !dbg !471, !tbaa !472
  %48 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 2, !dbg !473
  store i32 0, i32* %48, align 4, !dbg !473, !tbaa !474
  %49 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 3, !dbg !475
  store i32 0, i32* %49, align 4, !dbg !475, !tbaa !476
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !462, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !466
  %50 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 0, !dbg !468
  store i32 0, i32* %50, align 4, !dbg !468, !tbaa !469
  %51 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1, !dbg !471
  store i32 0, i32* %51, align 4, !dbg !471, !tbaa !472
  %52 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 2, !dbg !473
  store i32 0, i32* %52, align 4, !dbg !473, !tbaa !474
  %53 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 3, !dbg !475
  store i32 0, i32* %53, align 4, !dbg !475, !tbaa !476
  call void @llvm.dbg.value(metadata i64 1, metadata !277, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !477
  %54 = load i32, i32* %28, align 4, !dbg !478, !tbaa !434
  %55 = icmp sgt i32 %54, 0, !dbg !480
  br i1 %55, label %56, label %62, !dbg !481

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %58 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %57, align 8, !tbaa !482
  %59 = zext i32 %54 to i64, !dbg !481
  br label %65, !dbg !481

60:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i32 %54, metadata !284, metadata !DIExpression()), !dbg !483
  %61 = icmp slt i32 %54, 4, !dbg !484
  br i1 %61, label %62, label %80, !dbg !486

62:                                               ; preds = %36, %60
  %63 = phi i64 [ %75, %60 ], [ 1, %36 ]
  %64 = sext i32 %54 to i64, !dbg !486
  br label %88, !dbg !486

65:                                               ; preds = %56, %65
  %66 = phi i64 [ 0, %56 ], [ %76, %65 ]
  %67 = phi i64 [ 1, %56 ], [ %75, %65 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !277, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i64 %66, metadata !282, metadata !DIExpression()), !dbg !477
  %68 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %58, i64 %66, !dbg !487
  %69 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %66, !dbg !489
  %70 = bitcast %struct.halide_dimension_t* %69 to i8*, !dbg !490
  %71 = bitcast %struct.halide_dimension_t* %68 to i8*, !dbg !490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %70, i8* nonnull align 4 dereferenceable(16) %71, i64 16, i1 false), !dbg !490, !tbaa.struct !491
  %72 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %66, i32 1, !dbg !493
  %73 = load i32, i32* %72, align 4, !dbg !493, !tbaa !472
  %74 = zext i32 %73 to i64, !dbg !494
  %75 = mul i64 %67, %74, !dbg !495
  call void @llvm.dbg.value(metadata i64 %75, metadata !277, metadata !DIExpression()), !dbg !407
  %76 = add nuw nsw i64 %66, 1, !dbg !496
  call void @llvm.dbg.value(metadata i64 %76, metadata !282, metadata !DIExpression()), !dbg !477
  %77 = icmp ult i64 %76, %59, !dbg !480
  %78 = icmp ult i64 %66, 3, !dbg !497
  %79 = and i1 %78, %77, !dbg !497
  br i1 %79, label %65, label %60, !dbg !481, !llvm.loop !498

80:                                               ; preds = %88, %60
  %81 = phi i64 [ %75, %60 ], [ %63, %88 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !504
  %82 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1, !dbg !506
  %83 = load i8, i8* %82, align 1, !dbg !506, !tbaa !507
  %84 = zext i8 %83 to i32, !dbg !506
  %85 = add nuw nsw i32 %84, 7, !dbg !508
  %86 = lshr i32 %85, 3, !dbg !509
  call void @llvm.dbg.value(metadata i32 %86, metadata !286, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 0, metadata !287, metadata !DIExpression()), !dbg !407
  %87 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !510
  br i1 %87, label %98, label %96, !dbg !511

88:                                               ; preds = %62, %88
  %89 = phi i64 [ %64, %62 ], [ %93, %88 ]
  call void @llvm.dbg.value(metadata i64 %89, metadata !284, metadata !DIExpression()), !dbg !483
  %90 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %89, i32 0, !dbg !512
  store i32 0, i32* %90, align 4, !dbg !514, !tbaa !469
  %91 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %89, i32 1, !dbg !515
  store i32 1, i32* %91, align 4, !dbg !516, !tbaa !472
  %92 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %89, i32 2, !dbg !517
  store i32 0, i32* %92, align 4, !dbg !518, !tbaa !474
  %93 = add nsw i64 %89, 1, !dbg !519
  call void @llvm.dbg.value(metadata i64 %93, metadata !284, metadata !DIExpression()), !dbg !483
  %94 = trunc i64 %93 to i32, !dbg !484
  %95 = icmp eq i32 %94, 4, !dbg !484
  br i1 %95, label %80, label %88, !dbg !486, !llvm.loop !520

96:                                               ; preds = %80
  %97 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !522
  br i1 %97, label %98, label %242, !dbg !523

98:                                               ; preds = %96, %80
  %99 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1, !dbg !524
  %100 = load i32, i32* %99, align 4, !dbg !524, !tbaa !472
  call void @llvm.dbg.value(metadata i32 %100, metadata !291, metadata !DIExpression()), !dbg !525
  %101 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1, !dbg !526
  %102 = load i32, i32* %101, align 4, !dbg !526, !tbaa !472
  call void @llvm.dbg.value(metadata i32 %102, metadata !292, metadata !DIExpression()), !dbg !525
  %103 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1, !dbg !527
  %104 = load i32, i32* %103, align 4, !dbg !527, !tbaa !472
  %105 = icmp ult i32 %104, 2, !dbg !529
  %106 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1
  %107 = load i32, i32* %106, align 4, !dbg !530, !tbaa !472
  %108 = icmp slt i32 %107, 5
  %109 = and i1 %105, %108, !dbg !529
  %110 = select i1 %109, i32 1, i32 %107, !dbg !529
  %111 = select i1 %109, i32 %107, i32 %104, !dbg !529
  call void @llvm.dbg.value(metadata i32 %111, metadata !288, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 %110, metadata !293, metadata !DIExpression()), !dbg !525
  %112 = bitcast %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6 to i8*, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 210, i8* nonnull %112) #6, !dbg !531
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !294, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8 73, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !525
  call void @llvm.dbg.value(metadata i8 73, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !525
  call void @llvm.dbg.value(metadata i16 19789, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !525
  call void @llvm.dbg.value(metadata i8* undef, metadata !335, metadata !DIExpression()), !dbg !525
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 0, !dbg !533
  store i16 18761, i16* %113, align 2, !dbg !534, !tbaa !535
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 1, !dbg !537
  store i16 42, i16* %114, align 2, !dbg !538, !tbaa !539
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 2, !dbg !540
  store i32 8, i32* %115, align 2, !dbg !541, !tbaa !542
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 3, !dbg !543
  store i16 15, i16* %116, align 2, !dbg !544, !tbaa !545
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 22, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !552
  call void @llvm.dbg.value(metadata i16 256, metadata !549, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 1, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %100, metadata !551, metadata !DIExpression()), !dbg !552
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 0, !dbg !554
  store i16 256, i16* %117, align 2, !dbg !555, !tbaa !556
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 1, !dbg !558
  store i16 4, i16* %118, align 2, !dbg !559, !tbaa !560
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 2, !dbg !561
  store i32 1, i32* %119, align 2, !dbg !562, !tbaa !563
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 3, i32 0, !dbg !564
  store i32 %100, i32* %120, align 2, !dbg !565, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 34, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 22, DW_OP_stack_value)), !dbg !566
  call void @llvm.dbg.value(metadata i16 257, metadata !549, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32 1, metadata !550, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32 %102, metadata !551, metadata !DIExpression()), !dbg !566
  %121 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 0, !dbg !568
  store i16 257, i16* %121, align 2, !dbg !569, !tbaa !556
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 1, !dbg !570
  store i16 4, i16* %122, align 2, !dbg !571, !tbaa !560
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 2, !dbg !572
  store i32 1, i32* %123, align 2, !dbg !573, !tbaa !563
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 3, i32 0, !dbg !574
  store i32 %102, i32* %124, align 2, !dbg !575, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 46, DW_OP_stack_value)), !dbg !525
  %125 = trunc i32 %85 to i16, !dbg !576
  %126 = and i16 %125, 504, !dbg !576
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 34, DW_OP_stack_value)), !dbg !583
  call void @llvm.dbg.value(metadata i16 258, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i16 %126, metadata !582, metadata !DIExpression()), !dbg !583
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 0, !dbg !585
  store i16 258, i16* %127, align 2, !dbg !586, !tbaa !556
  %128 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 1, !dbg !587
  store i16 3, i16* %128, align 2, !dbg !588, !tbaa !560
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 2, !dbg !589
  store i32 1, i32* %129, align 2, !dbg !590, !tbaa !563
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 3, !dbg !591
  %131 = bitcast %union.anon* %130 to i16*, !dbg !592
  store i16 %126, i16* %131, align 2, !dbg !593, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 58, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 46, DW_OP_stack_value)), !dbg !594
  call void @llvm.dbg.value(metadata i16 259, metadata !580, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata i16 1, metadata !582, metadata !DIExpression()), !dbg !594
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 0, !dbg !596
  store i16 259, i16* %132, align 2, !dbg !597, !tbaa !556
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 1, !dbg !598
  store i16 3, i16* %133, align 2, !dbg !599, !tbaa !560
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 2, !dbg !600
  store i32 1, i32* %134, align 2, !dbg !601, !tbaa !563
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 3, !dbg !602
  %136 = bitcast %union.anon* %135 to i16*, !dbg !603
  store i16 1, i16* %136, align 2, !dbg !604, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 70, DW_OP_stack_value)), !dbg !525
  %137 = icmp sgt i32 %111, 2, !dbg !605
  %138 = select i1 %137, i16 2, i16 1, !dbg !606
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 58, DW_OP_stack_value)), !dbg !607
  call void @llvm.dbg.value(metadata i16 262, metadata !580, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i16 %138, metadata !582, metadata !DIExpression()), !dbg !607
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 0, !dbg !609
  store i16 262, i16* %139, align 2, !dbg !610, !tbaa !556
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 1, !dbg !611
  store i16 3, i16* %140, align 2, !dbg !612, !tbaa !560
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 2, !dbg !613
  store i32 1, i32* %141, align 2, !dbg !614, !tbaa !563
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 3, !dbg !615
  %143 = bitcast %union.anon* %142 to i16*, !dbg !616
  store i16 %138, i16* %143, align 2, !dbg !617, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 82, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 70, DW_OP_stack_value)), !dbg !618
  call void @llvm.dbg.value(metadata i16 273, metadata !549, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 %111, metadata !550, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 210, metadata !551, metadata !DIExpression()), !dbg !618
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 0, !dbg !620
  store i16 273, i16* %144, align 2, !dbg !621, !tbaa !556
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 1, !dbg !622
  store i16 4, i16* %145, align 2, !dbg !623, !tbaa !560
  %146 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 2, !dbg !624
  store i32 %111, i32* %146, align 2, !dbg !625, !tbaa !563
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 3, i32 0, !dbg !626
  store i32 210, i32* %147, align 2, !dbg !627, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 94, DW_OP_stack_value)), !dbg !525
  %148 = trunc i32 %111 to i16, !dbg !628
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 82, DW_OP_stack_value)), !dbg !629
  call void @llvm.dbg.value(metadata i16 277, metadata !580, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i16 %148, metadata !582, metadata !DIExpression()), !dbg !629
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 0, !dbg !631
  store i16 277, i16* %149, align 2, !dbg !632, !tbaa !556
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 1, !dbg !633
  store i16 3, i16* %150, align 2, !dbg !634, !tbaa !560
  %151 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 2, !dbg !635
  store i32 1, i32* %151, align 2, !dbg !636, !tbaa !563
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 3, !dbg !637
  %153 = bitcast %union.anon* %152 to i16*, !dbg !638
  store i16 %148, i16* %153, align 2, !dbg !639, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 106, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 94, DW_OP_stack_value)), !dbg !640
  call void @llvm.dbg.value(metadata i16 278, metadata !549, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 1, metadata !550, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i32 %102, metadata !551, metadata !DIExpression()), !dbg !640
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 0, !dbg !642
  store i16 278, i16* %154, align 2, !dbg !643, !tbaa !556
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 1, !dbg !644
  store i16 4, i16* %155, align 2, !dbg !645, !tbaa !560
  %156 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 2, !dbg !646
  store i32 1, i32* %156, align 2, !dbg !647, !tbaa !563
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 3, i32 0, !dbg !648
  store i32 %102, i32* %157, align 2, !dbg !649, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 118, DW_OP_stack_value)), !dbg !525
  %158 = icmp eq i32 %111, 1, !dbg !650
  %159 = trunc i64 %81 to i32, !dbg !651
  %160 = mul i32 %86, %159, !dbg !651
  %161 = shl i32 %111, 2, !dbg !651
  %162 = add i32 %161, 210, !dbg !651
  %163 = select i1 %158, i32 %160, i32 %162, !dbg !651
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 0, !dbg !652
  store i16 279, i16* %164, align 2, !dbg !654
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 1, !dbg !655
  store i16 4, i16* %165, align 2, !dbg !656
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 2, !dbg !657
  store i32 %111, i32* %166, align 2, !dbg !658
  %167 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 3, i32 0, !dbg !659
  store i32 %163, i32* %167, align 2, !dbg !660
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !661, metadata !DIExpression(DW_OP_plus_uconst, 118, DW_OP_stack_value)), !dbg !668
  call void @llvm.dbg.value(metadata i16 282, metadata !664, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i16 5, metadata !665, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 1, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 194, metadata !667, metadata !DIExpression()), !dbg !668
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 0, !dbg !670
  store i16 282, i16* %168, align 2, !dbg !671, !tbaa !556
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 1, !dbg !672
  store i16 5, i16* %169, align 2, !dbg !673, !tbaa !560
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 2, !dbg !674
  store i32 1, i32* %170, align 2, !dbg !675, !tbaa !563
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 3, i32 0, !dbg !676
  store i32 194, i32* %171, align 2, !dbg !677, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 142, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !661, metadata !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value)), !dbg !678
  call void @llvm.dbg.value(metadata i16 283, metadata !664, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i16 5, metadata !665, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 1, metadata !666, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 202, metadata !667, metadata !DIExpression()), !dbg !678
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 0, !dbg !680
  store i16 283, i16* %172, align 2, !dbg !681, !tbaa !556
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 1, !dbg !682
  store i16 5, i16* %173, align 2, !dbg !683, !tbaa !560
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 2, !dbg !684
  store i32 1, i32* %174, align 2, !dbg !685, !tbaa !563
  %175 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 3, i32 0, !dbg !686
  store i32 202, i32* %175, align 2, !dbg !687, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 154, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 142, DW_OP_stack_value)), !dbg !688
  call void @llvm.dbg.value(metadata i16 284, metadata !580, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i16 2, metadata !582, metadata !DIExpression()), !dbg !688
  %176 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 0, !dbg !690
  store i16 284, i16* %176, align 2, !dbg !691, !tbaa !556
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 1, !dbg !692
  store i16 3, i16* %177, align 2, !dbg !693, !tbaa !560
  %178 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 2, !dbg !694
  store i32 1, i32* %178, align 2, !dbg !695, !tbaa !563
  %179 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 3, !dbg !696
  %180 = bitcast %union.anon* %179 to i16*, !dbg !697
  store i16 2, i16* %180, align 2, !dbg !698, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 166, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 154, DW_OP_stack_value)), !dbg !699
  call void @llvm.dbg.value(metadata i16 296, metadata !580, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i16 1, metadata !582, metadata !DIExpression()), !dbg !699
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 0, !dbg !701
  store i16 296, i16* %181, align 2, !dbg !702, !tbaa !556
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 1, !dbg !703
  store i16 3, i16* %182, align 2, !dbg !704, !tbaa !560
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 2, !dbg !705
  store i32 1, i32* %183, align 2, !dbg !706, !tbaa !563
  %184 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 3, !dbg !707
  %185 = bitcast %union.anon* %184 to i16*, !dbg !708
  store i16 1, i16* %185, align 2, !dbg !709, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 178, DW_OP_stack_value)), !dbg !525
  %186 = sext i32 %2 to i64, !dbg !710
  %187 = getelementptr inbounds [10 x i16], [10 x i16]* @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, i64 0, i64 %186, !dbg !710
  %188 = load i16, i16* %187, align 2, !dbg !710, !tbaa !711
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !577, metadata !DIExpression(DW_OP_plus_uconst, 166, DW_OP_stack_value)), !dbg !712
  call void @llvm.dbg.value(metadata i16 339, metadata !580, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 1, metadata !581, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i16 %188, metadata !582, metadata !DIExpression()), !dbg !712
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 0, !dbg !714
  store i16 339, i16* %189, align 2, !dbg !715, !tbaa !556
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 1, !dbg !716
  store i16 3, i16* %190, align 2, !dbg !717, !tbaa !560
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 2, !dbg !718
  store i32 1, i32* %191, align 2, !dbg !719, !tbaa !563
  %192 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 3, !dbg !720
  %193 = bitcast %union.anon* %192 to i16*, !dbg !721
  store i16 %188, i16* %193, align 2, !dbg !722, !tbaa !66
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 178, DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !525
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !546, metadata !DIExpression(DW_OP_plus_uconst, 178, DW_OP_stack_value)), !dbg !723
  call void @llvm.dbg.value(metadata i16 -32539, metadata !549, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32 1, metadata !550, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32 %110, metadata !551, metadata !DIExpression()), !dbg !723
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 0, !dbg !725
  store i16 -32539, i16* %194, align 2, !dbg !726, !tbaa !556
  %195 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 1, !dbg !727
  store i16 4, i16* %195, align 2, !dbg !728, !tbaa !560
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 2, !dbg !729
  store i32 1, i32* %196, align 2, !dbg !730, !tbaa !563
  %197 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 3, i32 0, !dbg !731
  store i32 %110, i32* %197, align 2, !dbg !732, !tbaa !66
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 5, !dbg !733
  store i32 0, i32* %198, align 2, !dbg !734, !tbaa !735
  %199 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 6, i64 0, !dbg !736
  store i32 1, i32* %199, align 2, !dbg !737, !tbaa !492
  %200 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 6, i64 1, !dbg !738
  store i32 1, i32* %200, align 2, !dbg !739, !tbaa !492
  %201 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 7, i64 0, !dbg !740
  store i32 1, i32* %201, align 2, !dbg !741, !tbaa !492
  %202 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 7, i64 1, !dbg !742
  store i32 1, i32* %202, align 2, !dbg !743, !tbaa !492
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !749
  call void @llvm.dbg.value(metadata i8* %112, metadata !747, metadata !DIExpression()) #6, !dbg !749
  call void @llvm.dbg.value(metadata i64 210, metadata !748, metadata !DIExpression()) #6, !dbg !749
  %203 = call i64 @fwrite(i8* nonnull %112, i64 210, i64 1, i8* nonnull %34) #5, !dbg !752
  %204 = icmp eq i64 %203, 0, !dbg !753
  br i1 %204, label %240, label %205, !dbg !754

205:                                              ; preds = %98
  %206 = icmp sgt i32 %111, 1, !dbg !755
  br i1 %206, label %207, label %239, !dbg !756

207:                                              ; preds = %205
  %208 = bitcast i32* %7 to i8*, !dbg !757
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %208) #6, !dbg !757
  %209 = shl i32 %111, 3, !dbg !758
  %210 = add i32 %209, 210, !dbg !759
  call void @llvm.dbg.value(metadata i32 %210, metadata !338, metadata !DIExpression()), !dbg !760
  store i32 %210, i32* %7, align 4, !dbg !761, !tbaa !492
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !762
  %211 = mul i32 %110, %86
  br label %212, !dbg !763

212:                                              ; preds = %207, %216
  %213 = phi i32 [ 0, %207 ], [ %223, %216 ]
  call void @llvm.dbg.value(metadata i32 %213, metadata !341, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.value(metadata i32* %7, metadata !338, metadata !DIExpression(DW_OP_deref)), !dbg !760
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !764
  call void @llvm.dbg.value(metadata i8* %208, metadata !747, metadata !DIExpression()) #6, !dbg !764
  call void @llvm.dbg.value(metadata i64 4, metadata !748, metadata !DIExpression()) #6, !dbg !764
  %214 = call i64 @fwrite(i8* nonnull %208, i64 4, i64 1, i8* nonnull %34) #5, !dbg !769
  %215 = icmp eq i64 %214, 0, !dbg !770
  br i1 %215, label %236, label %216, !dbg !771

216:                                              ; preds = %212
  %217 = load i32, i32* %99, align 4, !dbg !772, !tbaa !472
  %218 = load i32, i32* %101, align 4, !dbg !773, !tbaa !472
  %219 = mul i32 %211, %217, !dbg !774
  %220 = mul i32 %219, %218, !dbg !775
  %221 = load i32, i32* %7, align 4, !dbg !776, !tbaa !492
  call void @llvm.dbg.value(metadata i32 %221, metadata !338, metadata !DIExpression()), !dbg !760
  %222 = add nsw i32 %220, %221, !dbg !776
  call void @llvm.dbg.value(metadata i32 %222, metadata !338, metadata !DIExpression()), !dbg !760
  store i32 %222, i32* %7, align 4, !dbg !776, !tbaa !492
  %223 = add nuw nsw i32 %213, 1, !dbg !777
  call void @llvm.dbg.value(metadata i32 %223, metadata !341, metadata !DIExpression()), !dbg !762
  %224 = icmp eq i32 %223, %111, !dbg !778
  br i1 %224, label %225, label %212, !dbg !763, !llvm.loop !779

225:                                              ; preds = %216
  %226 = bitcast i32* %8 to i8*, !dbg !781
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %226) #6, !dbg !781
  call void @llvm.dbg.value(metadata i32 %220, metadata !343, metadata !DIExpression()), !dbg !760
  store i32 %220, i32* %8, align 4, !dbg !782, !tbaa !492
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()), !dbg !783
  %227 = icmp sgt i32 %111, 0, !dbg !784
  br i1 %227, label %230, label %238, !dbg !786

228:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i32 %234, metadata !344, metadata !DIExpression()), !dbg !783
  %229 = icmp eq i32 %234, %111, !dbg !784
  br i1 %229, label %238, label %230, !dbg !786, !llvm.loop !787

230:                                              ; preds = %225, %228
  %231 = phi i32 [ %234, %228 ], [ 0, %225 ]
  call void @llvm.dbg.value(metadata i32 %231, metadata !344, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32* %8, metadata !343, metadata !DIExpression(DW_OP_deref)), !dbg !760
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !789
  call void @llvm.dbg.value(metadata i8* %226, metadata !747, metadata !DIExpression()) #6, !dbg !789
  call void @llvm.dbg.value(metadata i64 4, metadata !748, metadata !DIExpression()) #6, !dbg !789
  %232 = call i64 @fwrite(i8* nonnull %226, i64 4, i64 1, i8* nonnull %34) #5, !dbg !793
  %233 = icmp eq i64 %232, 0, !dbg !794
  %234 = add nuw nsw i32 %231, 1, !dbg !795
  call void @llvm.dbg.value(metadata i32 %234, metadata !344, metadata !DIExpression()), !dbg !783
  br i1 %233, label %235, label %228, !dbg !796

235:                                              ; preds = %230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #6, !dbg !797
  br label %236

236:                                              ; preds = %212, %235
  %237 = phi i32 [ -5, %235 ], [ -4, %212 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %208) #6, !dbg !797
  br label %240

238:                                              ; preds = %228, %225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #6, !dbg !797
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %208) #6, !dbg !797
  br label %239

239:                                              ; preds = %238, %205
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %112) #6, !dbg !798
  br label %449

240:                                              ; preds = %236, %98
  %241 = phi i32 [ -3, %98 ], [ %237, %236 ], !dbg !525
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %112) #6, !dbg !798
  br label %615

242:                                              ; preds = %96
  %243 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !799
  br i1 %243, label %244, label %432, !dbg !800

244:                                              ; preds = %242, %244
  %245 = phi i8* [ %248, %244 ], [ %1, %242 ], !dbg !801
  call void @llvm.dbg.value(metadata i8* %245, metadata !346, metadata !DIExpression()), !dbg !801
  %246 = load i8, i8* %245, align 1, !dbg !802, !tbaa !66
  %247 = icmp eq i8 %246, 0, !dbg !802
  %248 = getelementptr inbounds i8, i8* %245, i64 1, !dbg !803
  call void @llvm.dbg.value(metadata i8* %248, metadata !346, metadata !DIExpression()), !dbg !801
  br i1 %247, label %253, label %244, !dbg !805, !llvm.loop !806

249:                                              ; preds = %253
  %250 = ptrtoint i8* %254 to i64
  %251 = ptrtoint i8* %1 to i64, !dbg !808
  %252 = sub i64 %251, %250, !dbg !808
  br label %258, !dbg !808

253:                                              ; preds = %244, %253
  %254 = phi i8* [ %255, %253 ], [ %245, %244 ]
  call void @llvm.dbg.value(metadata i8* %254, metadata !346, metadata !DIExpression()), !dbg !801
  %255 = getelementptr inbounds i8, i8* %254, i64 -1, !dbg !801
  call void @llvm.dbg.value(metadata i8* %255, metadata !346, metadata !DIExpression()), !dbg !801
  %256 = load i8, i8* %255, align 1, !dbg !809, !tbaa !66
  %257 = icmp eq i8 %256, 46, !dbg !810
  br i1 %257, label %249, label %253, !dbg !811, !llvm.loop !812

258:                                              ; preds = %249, %262
  %259 = phi i64 [ %263, %262 ], [ -1, %249 ]
  %260 = getelementptr inbounds i8, i8* %254, i64 %259, !dbg !801
  call void @llvm.dbg.value(metadata i8* %260, metadata !349, metadata !DIExpression()), !dbg !801
  %261 = icmp eq i8* %260, %1, !dbg !814
  br i1 %261, label %267, label %262, !dbg !815

262:                                              ; preds = %258
  %263 = add nsw i64 %259, -1, !dbg !816
  %264 = getelementptr inbounds i8, i8* %254, i64 %263, !dbg !816
  %265 = load i8, i8* %264, align 1, !dbg !816, !tbaa !66
  %266 = icmp eq i8 %265, 47, !dbg !817
  br i1 %266, label %267, label %258, !dbg !808, !llvm.loop !818

267:                                              ; preds = %258, %262
  %268 = phi i64 [ %252, %258 ], [ %259, %262 ]
  %269 = trunc i64 %268 to i32, !dbg !820
  %270 = xor i32 %269, -1, !dbg !820
  call void @llvm.dbg.value(metadata i32 %270, metadata !350, metadata !DIExpression()), !dbg !801
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %271) #6, !dbg !821
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !351, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8* %271, metadata !355, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i8* %260, metadata !349, metadata !DIExpression()), !dbg !801
  %272 = icmp eq i64 %268, -1, !dbg !823
  br i1 %272, label %276, label %279, !dbg !824

273:                                              ; preds = %279
  call void @llvm.dbg.value(metadata i8* %285, metadata !355, metadata !DIExpression()), !dbg !801
  %274 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 256, !dbg !825
  %275 = icmp ult i8* %285, %274, !dbg !826
  br i1 %275, label %276, label %291, !dbg !827

276:                                              ; preds = %267, %273
  %277 = phi i8* [ %285, %273 ], [ %271, %267 ]
  %278 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 1, i64 0, !dbg !827
  br label %287, !dbg !827

279:                                              ; preds = %267, %279
  %280 = phi i8* [ %285, %279 ], [ %271, %267 ]
  %281 = phi i64 [ %283, %279 ], [ %268, %267 ]
  %282 = getelementptr inbounds i8, i8* %254, i64 %281, !dbg !801
  call void @llvm.dbg.value(metadata i8* %280, metadata !355, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i8* %282, metadata !349, metadata !DIExpression()), !dbg !801
  %283 = add nuw nsw i64 %281, 1, !dbg !828
  call void @llvm.dbg.value(metadata i8* undef, metadata !349, metadata !DIExpression()), !dbg !801
  %284 = load i8, i8* %282, align 1, !dbg !830, !tbaa !66
  %285 = getelementptr inbounds i8, i8* %280, i64 1, !dbg !831
  call void @llvm.dbg.value(metadata i8* %285, metadata !355, metadata !DIExpression()), !dbg !801
  store i8 %284, i8* %280, align 1, !dbg !832, !tbaa !66
  %286 = icmp eq i64 %283, -1, !dbg !823
  br i1 %286, label %273, label %279, !dbg !824, !llvm.loop !833

287:                                              ; preds = %276, %287
  %288 = phi i8* [ %289, %287 ], [ %277, %276 ]
  call void @llvm.dbg.value(metadata i8* %288, metadata !355, metadata !DIExpression()), !dbg !801
  %289 = getelementptr inbounds i8, i8* %288, i64 1, !dbg !835
  call void @llvm.dbg.value(metadata i8* %289, metadata !355, metadata !DIExpression()), !dbg !801
  store i8 0, i8* %288, align 1, !dbg !837, !tbaa !66
  %290 = icmp eq i8* %289, %278, !dbg !826
  br i1 %290, label %291, label %287, !dbg !827, !llvm.loop !838

291:                                              ; preds = %287, %273
  %292 = sub i32 6, %269, !dbg !840
  %293 = and i32 %292, -8, !dbg !841
  call void @llvm.dbg.value(metadata i32 %293, metadata !357, metadata !DIExpression()), !dbg !801
  %294 = getelementptr inbounds [129 x i8], [129 x i8]* %10, i64 0, i64 0, !dbg !842
  call void @llvm.lifetime.start.p0i8(i64 129, i8* nonnull %294) #6, !dbg !842
  call void @llvm.dbg.declare(metadata [129 x i8]* %10, metadata !358, metadata !DIExpression()), !dbg !843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(129) %294, i8* nonnull align 1 dereferenceable(129) getelementptr inbounds ([129 x i8], [129 x i8]* @__const.halide_debug_to_file.header, i64 0, i64 0), i64 129, i1 false), !dbg !843
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !844
  call void @llvm.dbg.value(metadata i8* %294, metadata !747, metadata !DIExpression()) #6, !dbg !844
  call void @llvm.dbg.value(metadata i64 128, metadata !748, metadata !DIExpression()) #6, !dbg !844
  %295 = call i64 @fwrite(i8* nonnull %294, i64 128, i64 1, i8* nonnull %34) #5, !dbg !846
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !852, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i64 0, metadata !855, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 0, metadata !856, metadata !DIExpression()), !dbg !860
  %296 = load i32, i32* %28, align 4, !dbg !861, !tbaa !434
  %297 = icmp sgt i32 %296, 0, !dbg !863
  br i1 %297, label %300, label %298, !dbg !864

298:                                              ; preds = %291
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !865
  %299 = load i8, i8* %82, align 1, !dbg !867, !tbaa !507
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 0, metadata !872, metadata !DIExpression()), !dbg !876
  br label %342, !dbg !877

300:                                              ; preds = %291
  %301 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %302 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %301, align 8, !tbaa !482
  %303 = zext i32 %296 to i64, !dbg !863
  br label %304, !dbg !864

304:                                              ; preds = %318, %300
  %305 = phi i64 [ 0, %300 ], [ %320, %318 ]
  %306 = phi i64 [ 0, %300 ], [ %319, %318 ]
  call void @llvm.dbg.value(metadata i64 %305, metadata !856, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i64 %306, metadata !855, metadata !DIExpression()), !dbg !858
  %307 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %305, i32 2, !dbg !878
  %308 = load i32, i32* %307, align 4, !dbg !878, !tbaa !474
  %309 = icmp sgt i32 %308, 0, !dbg !881
  br i1 %309, label %310, label %318, !dbg !882

310:                                              ; preds = %304
  %311 = zext i32 %308 to i64, !dbg !883
  %312 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %305, i32 1, !dbg !885
  %313 = load i32, i32* %312, align 4, !dbg !885, !tbaa !472
  %314 = add nsw i32 %313, -1, !dbg !886
  %315 = sext i32 %314 to i64, !dbg !887
  %316 = mul nsw i64 %315, %311, !dbg !888
  %317 = add nsw i64 %316, %306, !dbg !889
  call void @llvm.dbg.value(metadata i64 %317, metadata !855, metadata !DIExpression()), !dbg !858
  br label %318, !dbg !890

318:                                              ; preds = %310, %304
  %319 = phi i64 [ %317, %310 ], [ %306, %304 ], !dbg !858
  call void @llvm.dbg.value(metadata i64 %319, metadata !855, metadata !DIExpression()), !dbg !858
  %320 = add nuw nsw i64 %305, 1, !dbg !891
  call void @llvm.dbg.value(metadata i64 %320, metadata !856, metadata !DIExpression()), !dbg !860
  %321 = icmp eq i64 %320, %303, !dbg !863
  br i1 %321, label %322, label %304, !dbg !864, !llvm.loop !892

322:                                              ; preds = %318
  call void @llvm.dbg.value(metadata i64 %319, metadata !855, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !858
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !865
  %323 = load i8, i8* %82, align 1, !dbg !867, !tbaa !507
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 0, metadata !871, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 0, metadata !872, metadata !DIExpression()), !dbg !876
  br label %324, !dbg !877

324:                                              ; preds = %338, %322
  %325 = phi i64 [ 0, %322 ], [ %340, %338 ]
  %326 = phi i64 [ 0, %322 ], [ %339, %338 ]
  call void @llvm.dbg.value(metadata i64 %325, metadata !872, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i64 %326, metadata !871, metadata !DIExpression()), !dbg !874
  %327 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %325, i32 2, !dbg !894
  %328 = load i32, i32* %327, align 4, !dbg !894, !tbaa !474
  %329 = icmp slt i32 %328, 0, !dbg !898
  br i1 %329, label %330, label %338, !dbg !899

330:                                              ; preds = %324
  %331 = sext i32 %328 to i64, !dbg !900
  %332 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %325, i32 1, !dbg !902
  %333 = load i32, i32* %332, align 4, !dbg !902, !tbaa !472
  %334 = add nsw i32 %333, -1, !dbg !903
  %335 = sext i32 %334 to i64, !dbg !904
  %336 = mul nsw i64 %335, %331, !dbg !905
  %337 = add nsw i64 %336, %326, !dbg !906
  call void @llvm.dbg.value(metadata i64 %337, metadata !871, metadata !DIExpression()), !dbg !874
  br label %338, !dbg !907

338:                                              ; preds = %330, %324
  %339 = phi i64 [ %337, %330 ], [ %326, %324 ], !dbg !874
  call void @llvm.dbg.value(metadata i64 %339, metadata !871, metadata !DIExpression()), !dbg !874
  %340 = add nuw nsw i64 %325, 1, !dbg !908
  call void @llvm.dbg.value(metadata i64 %340, metadata !872, metadata !DIExpression()), !dbg !876
  %341 = icmp eq i64 %340, %303, !dbg !909
  br i1 %341, label %342, label %324, !dbg !877, !llvm.loop !910

342:                                              ; preds = %338, %298
  %343 = phi i8 [ %299, %298 ], [ %323, %338 ]
  %344 = phi i64 [ 0, %298 ], [ %319, %338 ]
  %345 = phi i64 [ 0, %298 ], [ %339, %338 ], !dbg !874
  %346 = zext i8 %343 to i64, !dbg !867
  %347 = add nuw nsw i64 %346, 7, !dbg !912
  %348 = lshr i64 %347, 3, !dbg !913
  %349 = add nsw i64 %344, 1, !dbg !914
  call void @llvm.dbg.value(metadata i64 %349, metadata !855, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !915
  %350 = sub i64 %349, %345, !dbg !917
  %351 = mul i64 %350, %348, !dbg !917
  call void @llvm.dbg.value(metadata i64 %351, metadata !362, metadata !DIExpression()), !dbg !801
  %352 = icmp ult i64 %351, 4294967296, !dbg !918
  br i1 %352, label %354, label %353, !dbg !920

353:                                              ; preds = %342
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !921
  call void @llvm.dbg.value(metadata i32 %428, metadata !287, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 129, i8* nonnull %294) #6, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %271) #6, !dbg !923
  br label %615

354:                                              ; preds = %342
  call void @llvm.dbg.value(metadata i32 %296, metadata !363, metadata !DIExpression()), !dbg !801
  %355 = icmp sgt i32 %296, 2, !dbg !924
  %356 = select i1 %355, i32 %296, i32 2, !dbg !924
  call void @llvm.dbg.value(metadata i32 %356, metadata !363, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i32 %356, metadata !364, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)), !dbg !801
  %357 = bitcast [8 x i32]* %11 to i8*, !dbg !925
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %357) #6, !dbg !925
  call void @llvm.dbg.declare(metadata [8 x i32]* %11, metadata !365, metadata !DIExpression()), !dbg !926
  %358 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0, !dbg !927
  store i32 14, i32* %358, align 4, !dbg !927, !tbaa !492
  %359 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1, !dbg !927
  %360 = shl i32 %356, 2, !dbg !928
  %361 = add i32 %360, 4, !dbg !928
  %362 = and i32 %361, -8, !dbg !928
  %363 = trunc i64 %351 to i32, !dbg !929
  %364 = add i32 %293, 40, !dbg !930
  %365 = add i32 %364, %362, !dbg !931
  %366 = add i32 %365, %363, !dbg !932
  store i32 %366, i32* %359, align 4, !dbg !927, !tbaa !492
  %367 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2, !dbg !927
  store i32 6, i32* %367, align 4, !dbg !927, !tbaa !492
  %368 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3, !dbg !927
  store i32 8, i32* %368, align 4, !dbg !927, !tbaa !492
  %369 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4, !dbg !927
  %370 = sext i32 %2 to i64, !dbg !933
  %371 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE, i64 0, i64 %370, !dbg !933
  %372 = load i8, i8* %371, align 1, !dbg !933, !tbaa !66
  %373 = zext i8 %372 to i32, !dbg !933
  store i32 %373, i32* %369, align 4, !dbg !927, !tbaa !492
  %374 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5, !dbg !927
  store i32 1, i32* %374, align 4, !dbg !927, !tbaa !492
  %375 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6, !dbg !927
  store i32 5, i32* %375, align 4, !dbg !927, !tbaa !492
  %376 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7, !dbg !927
  store i32 %360, i32* %376, align 4, !dbg !927, !tbaa !492
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !934
  call void @llvm.dbg.value(metadata i8* %357, metadata !747, metadata !DIExpression()) #6, !dbg !934
  call void @llvm.dbg.value(metadata i64 32, metadata !748, metadata !DIExpression()) #6, !dbg !934
  %377 = call i64 @fwrite(i8* nonnull %357, i64 32, i64 1, i8* nonnull %34) #5, !dbg !937
  %378 = icmp eq i64 %377, 0, !dbg !938
  br i1 %378, label %427, label %379, !dbg !939

379:                                              ; preds = %354
  %380 = bitcast [4 x i32]* %12 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %380) #6, !dbg !940
  call void @llvm.dbg.declare(metadata [4 x i32]* %12, metadata !369, metadata !DIExpression()), !dbg !941
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0, !dbg !942
  %382 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1, !dbg !943
  %383 = load i32, i32* %382, align 4, !dbg !943, !tbaa !472
  store i32 %383, i32* %381, align 4, !dbg !942, !tbaa !492
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1, !dbg !942
  %385 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1, !dbg !944
  %386 = load i32, i32* %385, align 4, !dbg !944, !tbaa !472
  store i32 %386, i32* %384, align 4, !dbg !942, !tbaa !492
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2, !dbg !942
  %388 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1, !dbg !945
  %389 = load i32, i32* %388, align 4, !dbg !945, !tbaa !472
  store i32 %389, i32* %387, align 4, !dbg !942, !tbaa !492
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3, !dbg !942
  %391 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1, !dbg !946
  %392 = load i32, i32* %391, align 4, !dbg !946, !tbaa !472
  store i32 %392, i32* %390, align 4, !dbg !942, !tbaa !492
  %393 = sext i32 %362 to i64, !dbg !947
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !949
  call void @llvm.dbg.value(metadata i8* %380, metadata !747, metadata !DIExpression()) #6, !dbg !949
  call void @llvm.dbg.value(metadata i64 %393, metadata !748, metadata !DIExpression()) #6, !dbg !949
  %394 = call i64 @fwrite(i8* nonnull %380, i64 %393, i64 1, i8* nonnull %34) #5, !dbg !951
  %395 = icmp eq i64 %394, 0, !dbg !952
  br i1 %395, label %423, label %396, !dbg !953

396:                                              ; preds = %379
  %397 = bitcast [2 x i32]* %13 to i8*, !dbg !954
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %397) #6, !dbg !954
  call void @llvm.dbg.declare(metadata [2 x i32]* %13, metadata !371, metadata !DIExpression()), !dbg !955
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0, !dbg !956
  store i32 1, i32* %398, align 4, !dbg !956, !tbaa !492
  %399 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1, !dbg !956
  store i32 %270, i32* %399, align 4, !dbg !956, !tbaa !492
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !957
  call void @llvm.dbg.value(metadata i8* %397, metadata !747, metadata !DIExpression()) #6, !dbg !957
  call void @llvm.dbg.value(metadata i64 8, metadata !748, metadata !DIExpression()) #6, !dbg !957
  %400 = call i64 @fwrite(i8* nonnull %397, i64 8, i64 1, i8* nonnull %34) #5, !dbg !960
  %401 = icmp eq i64 %400, 0, !dbg !961
  br i1 %401, label %419, label %402, !dbg !962

402:                                              ; preds = %396
  %403 = zext i32 %293 to i64, !dbg !963
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !965
  call void @llvm.dbg.value(metadata i8* %271, metadata !747, metadata !DIExpression()) #6, !dbg !965
  call void @llvm.dbg.value(metadata i64 %403, metadata !748, metadata !DIExpression()) #6, !dbg !965
  %404 = call i64 @fwrite(i8* nonnull %271, i64 %403, i64 1, i8* nonnull %34) #5, !dbg !967
  %405 = icmp eq i64 %404, 0, !dbg !968
  br i1 %405, label %419, label %406, !dbg !969

406:                                              ; preds = %402
  %407 = add i32 %363, 7, !dbg !970
  %408 = and i32 %407, 7, !dbg !970
  %409 = xor i32 %408, 7, !dbg !970
  call void @llvm.dbg.value(metadata i32 %409, metadata !287, metadata !DIExpression()), !dbg !407
  %410 = bitcast [2 x i32]* %14 to i8*, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %410) #6, !dbg !971
  call void @llvm.dbg.declare(metadata [2 x i32]* %14, metadata !373, metadata !DIExpression()), !dbg !972
  %411 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0, !dbg !973
  %412 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE, i64 0, i64 %370, !dbg !974
  %413 = load i8, i8* %412, align 1, !dbg !974, !tbaa !66
  %414 = zext i8 %413 to i32, !dbg !974
  store i32 %414, i32* %411, align 4, !dbg !973, !tbaa !492
  %415 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1, !dbg !973
  store i32 %363, i32* %415, align 4, !dbg !973, !tbaa !492
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !975
  call void @llvm.dbg.value(metadata i8* %410, metadata !747, metadata !DIExpression()) #6, !dbg !975
  call void @llvm.dbg.value(metadata i64 8, metadata !748, metadata !DIExpression()) #6, !dbg !975
  %416 = call i64 @fwrite(i8* nonnull %410, i64 8, i64 1, i8* nonnull %34) #5, !dbg !978
  %417 = icmp eq i64 %416, 0, !dbg !979
  %418 = zext i1 %417 to i32, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %410) #6, !dbg !923
  br label %419

419:                                              ; preds = %402, %396, %406
  %420 = phi i32 [ %409, %406 ], [ 0, %396 ], [ 0, %402 ], !dbg !407
  %421 = phi i32 [ %418, %406 ], [ 1, %396 ], [ 1, %402 ]
  %422 = phi i32 [ -11, %406 ], [ -9, %396 ], [ -10, %402 ]
  call void @llvm.dbg.value(metadata i32 %420, metadata !287, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %397) #6, !dbg !923
  br label %423

423:                                              ; preds = %379, %419
  %424 = phi i32 [ %420, %419 ], [ 0, %379 ], !dbg !407
  %425 = phi i32 [ %421, %419 ], [ 1, %379 ]
  %426 = phi i32 [ %422, %419 ], [ -8, %379 ]
  call void @llvm.dbg.value(metadata i32 %424, metadata !287, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %380) #6, !dbg !923
  br label %427

427:                                              ; preds = %423, %354
  %428 = phi i32 [ %424, %423 ], [ 0, %354 ], !dbg !407
  %429 = phi i32 [ %425, %423 ], [ 1, %354 ]
  %430 = phi i32 [ %426, %423 ], [ -7, %354 ]
  call void @llvm.dbg.value(metadata i32 %428, metadata !287, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %357) #6, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 129, i8* nonnull %294) #6, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %271) #6, !dbg !923
  %431 = icmp eq i32 %429, 0
  br i1 %431, label %449, label %615

432:                                              ; preds = %242
  %433 = bitcast [5 x i32]* %15 to i8*, !dbg !981
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %433) #6, !dbg !981
  call void @llvm.dbg.declare(metadata [5 x i32]* %15, metadata !374, metadata !DIExpression()), !dbg !982
  %434 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0, !dbg !983
  %435 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1, !dbg !984
  %436 = load i32, i32* %435, align 4, !dbg !984, !tbaa !472
  store i32 %436, i32* %434, align 4, !dbg !983, !tbaa !492
  %437 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1, !dbg !983
  %438 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1, !dbg !985
  %439 = load i32, i32* %438, align 4, !dbg !985, !tbaa !472
  store i32 %439, i32* %437, align 4, !dbg !983, !tbaa !492
  %440 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2, !dbg !983
  %441 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1, !dbg !986
  %442 = load i32, i32* %441, align 4, !dbg !986, !tbaa !472
  store i32 %442, i32* %440, align 4, !dbg !983, !tbaa !492
  %443 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3, !dbg !983
  %444 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1, !dbg !987
  %445 = load i32, i32* %444, align 4, !dbg !987, !tbaa !472
  store i32 %445, i32* %443, align 4, !dbg !983, !tbaa !492
  %446 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4, !dbg !983
  store i32 %2, i32* %446, align 4, !dbg !983, !tbaa !492
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !988
  call void @llvm.dbg.value(metadata i8* %433, metadata !747, metadata !DIExpression()) #6, !dbg !988
  call void @llvm.dbg.value(metadata i64 20, metadata !748, metadata !DIExpression()) #6, !dbg !988
  %447 = call i64 @fwrite(i8* nonnull %433, i64 20, i64 1, i8* nonnull %34) #5, !dbg !991
  %448 = icmp eq i64 %447, 0, !dbg !992
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %433) #6, !dbg !993
  br i1 %448, label %615, label %449

449:                                              ; preds = %239, %427, %432
  %450 = phi i32 [ %428, %427 ], [ 0, %432 ], [ 0, %239 ], !dbg !994
  call void @llvm.dbg.value(metadata i32 %450, metadata !287, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 4096, metadata !379, metadata !DIExpression()), !dbg !407
  %451 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0, !dbg !995
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %451) #6, !dbg !995
  call void @llvm.dbg.declare(metadata [4096 x i8]* %16, metadata !380, metadata !DIExpression()), !dbg !996
  %452 = udiv i32 4096, %86, !dbg !997
  call void @llvm.dbg.value(metadata i32 %452, metadata !384, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !407
  %453 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 0, !dbg !998
  call void @llvm.dbg.value(metadata i32 undef, metadata !386, metadata !DIExpression()), !dbg !999
  %454 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1, !dbg !1000
  %455 = load i32, i32* %454, align 4, !dbg !1000, !tbaa !472
  %456 = icmp sgt i32 %455, 0, !dbg !1001
  br i1 %456, label %457, label %602, !dbg !1002

457:                                              ; preds = %449
  %458 = load i32, i32* %453, align 4, !dbg !998, !tbaa !469
  call void @llvm.dbg.value(metadata i32 %458, metadata !386, metadata !DIExpression()), !dbg !999
  %459 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 0
  %460 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1
  %461 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 0
  %462 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1
  %463 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 0
  %464 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1
  %465 = bitcast [4 x i32]* %17 to i8*
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %469 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %470 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %471 = zext i32 %86 to i64
  %472 = mul nuw nsw i32 %452, %86
  %473 = zext i32 %472 to i64
  %474 = load i32, i32* %459, align 4, !dbg !1003, !tbaa !469
  %475 = load i32, i32* %460, align 4, !dbg !1004, !tbaa !472
  br label %476, !dbg !1002

476:                                              ; preds = %457, %584
  %477 = phi i32 [ %458, %457 ], [ %585, %584 ]
  %478 = phi i32 [ %455, %457 ], [ %586, %584 ]
  %479 = phi i32 [ %474, %457 ], [ %587, %584 ]
  %480 = phi i32 [ %475, %457 ], [ %588, %584 ]
  %481 = phi i32 [ %475, %457 ], [ %589, %584 ], !dbg !1004
  %482 = phi i32 [ %474, %457 ], [ %590, %584 ], !dbg !1003
  %483 = phi i32 [ %458, %457 ], [ %592, %584 ]
  %484 = phi i32 [ 0, %457 ], [ %591, %584 ]
  call void @llvm.dbg.value(metadata i32 %483, metadata !386, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 %482, metadata !388, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %484, metadata !385, metadata !DIExpression()), !dbg !407
  %485 = icmp sgt i32 %481, 0, !dbg !1006
  br i1 %485, label %486, label %584, !dbg !1007

486:                                              ; preds = %476
  %487 = load i32, i32* %461, align 4, !dbg !1008, !tbaa !469
  %488 = load i32, i32* %462, align 4, !dbg !1009, !tbaa !472
  br label %489, !dbg !1007

489:                                              ; preds = %486, %572
  %490 = phi i32 [ %573, %572 ], [ %479, %486 ]
  %491 = phi i32 [ %574, %572 ], [ %480, %486 ]
  %492 = phi i32 [ %575, %572 ], [ %488, %486 ], !dbg !1009
  %493 = phi i32 [ %576, %572 ], [ %487, %486 ], !dbg !1008
  %494 = phi i32 [ %578, %572 ], [ %482, %486 ]
  %495 = phi i32 [ %577, %572 ], [ %484, %486 ]
  call void @llvm.dbg.value(metadata i32 %494, metadata !388, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %493, metadata !392, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %495, metadata !385, metadata !DIExpression()), !dbg !407
  %496 = icmp sgt i32 %492, 0, !dbg !1011
  br i1 %496, label %497, label %572, !dbg !1012

497:                                              ; preds = %489, %562
  %498 = phi i32 [ %564, %562 ], [ %493, %489 ]
  %499 = phi i32 [ %563, %562 ], [ %495, %489 ]
  call void @llvm.dbg.value(metadata i32 %498, metadata !392, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 undef, metadata !396, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %499, metadata !385, metadata !DIExpression()), !dbg !407
  %500 = load i32, i32* %464, align 4, !dbg !1014, !tbaa !472
  %501 = icmp sgt i32 %500, 0, !dbg !1015
  br i1 %501, label %502, label %562, !dbg !1016

502:                                              ; preds = %497
  %503 = load i32, i32* %463, align 4, !dbg !1017, !tbaa !469
  call void @llvm.dbg.value(metadata i32 %503, metadata !396, metadata !DIExpression()), !dbg !1013
  br label %504, !dbg !1016

504:                                              ; preds = %502, %555
  %505 = phi i32 [ %557, %555 ], [ %503, %502 ]
  %506 = phi i32 [ %556, %555 ], [ %499, %502 ]
  call void @llvm.dbg.value(metadata i32 %505, metadata !396, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %506, metadata !385, metadata !DIExpression()), !dbg !407
  %507 = add nsw i32 %506, 1, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %507, metadata !385, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %465) #6, !dbg !1019
  call void @llvm.dbg.declare(metadata [4 x i32]* %17, metadata !400, metadata !DIExpression()), !dbg !1020
  store i32 %505, i32* %466, align 4, !dbg !1021, !tbaa !492
  store i32 %498, i32* %467, align 4, !dbg !1021, !tbaa !492
  store i32 %494, i32* %468, align 4, !dbg !1021, !tbaa !492
  store i32 %483, i32* %469, align 4, !dbg !1021, !tbaa !492
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1022, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i32* %466, metadata !1025, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i32 0, metadata !1027, metadata !DIExpression()), !dbg !1031
  %508 = load i32, i32* %28, align 4, !dbg !1032, !tbaa !434
  %509 = icmp sgt i32 %508, 0, !dbg !1034
  br i1 %509, label %510, label %538, !dbg !1035

510:                                              ; preds = %504
  %511 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %470, align 8, !tbaa !482
  %512 = zext i32 %508 to i64, !dbg !1034
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1029
  %513 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 0, i32 2, !dbg !1036
  %514 = load i32, i32* %513, align 4, !dbg !1036, !tbaa !474
  %515 = sext i32 %514 to i64, !dbg !1038
  %516 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 0, i32 0, !dbg !1039
  %517 = load i32, i32* %516, align 4, !dbg !1039, !tbaa !469
  %518 = sub nsw i32 %505, %517, !dbg !1040
  %519 = sext i32 %518 to i64, !dbg !1041
  %520 = mul nsw i64 %519, %515, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %520, metadata !1026, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 1, metadata !1027, metadata !DIExpression()), !dbg !1031
  %521 = icmp eq i32 %508, 1, !dbg !1034
  br i1 %521, label %538, label %522, !dbg !1035, !llvm.loop !1043

522:                                              ; preds = %510, %522
  %523 = phi i64 [ %536, %522 ], [ 1, %510 ]
  %524 = phi i64 [ %535, %522 ], [ %520, %510 ]
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %523
  %526 = load i32, i32* %525, align 4, !dbg !1045, !tbaa !492
  call void @llvm.dbg.value(metadata i64 %523, metadata !1027, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %524, metadata !1026, metadata !DIExpression()), !dbg !1029
  %527 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 %523, i32 2, !dbg !1036
  %528 = load i32, i32* %527, align 4, !dbg !1036, !tbaa !474
  %529 = sext i32 %528 to i64, !dbg !1038
  %530 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 %523, i32 0, !dbg !1039
  %531 = load i32, i32* %530, align 4, !dbg !1039, !tbaa !469
  %532 = sub nsw i32 %526, %531, !dbg !1040
  %533 = sext i32 %532 to i64, !dbg !1041
  %534 = mul nsw i64 %533, %529, !dbg !1042
  %535 = add nsw i64 %534, %524, !dbg !1046
  call void @llvm.dbg.value(metadata i64 %535, metadata !1026, metadata !DIExpression()), !dbg !1029
  %536 = add nuw nsw i64 %523, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i64 %536, metadata !1027, metadata !DIExpression()), !dbg !1031
  %537 = icmp eq i64 %536, %512, !dbg !1034
  br i1 %537, label %538, label %522, !dbg !1035, !llvm.loop !1043

538:                                              ; preds = %522, %510, %504
  %539 = phi i64 [ 0, %504 ], [ %520, %510 ], [ %535, %522 ], !dbg !1029
  %540 = load i8*, i8** %19, align 8, !dbg !1048, !tbaa !415
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !500, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !1049
  %541 = load i8, i8* %82, align 1, !dbg !1051, !tbaa !507
  %542 = zext i8 %541 to i64, !dbg !1051
  %543 = add nuw nsw i64 %542, 7, !dbg !1052
  %544 = lshr i64 %543, 3, !dbg !1053
  %545 = mul nsw i64 %544, %539, !dbg !1054
  %546 = getelementptr inbounds i8, i8* %540, i64 %545, !dbg !1055
  call void @llvm.dbg.value(metadata i8* %546, metadata !403, metadata !DIExpression()), !dbg !1056
  %547 = mul nsw i32 %506, %86, !dbg !1057
  %548 = sext i32 %547 to i64, !dbg !1058
  %549 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 %548, !dbg !1058
  call void @llvm.dbg.value(metadata i8* %549, metadata !404, metadata !DIExpression()), !dbg !1056
  %550 = call i8* @memcpy(i8* nonnull %549, i8* %546, i64 %471) #5, !dbg !1059
  %551 = icmp eq i32 %507, %452, !dbg !1060
  br i1 %551, label %552, label %555, !dbg !1062

552:                                              ; preds = %538
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %451, metadata !747, metadata !DIExpression()) #6, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %473, metadata !748, metadata !DIExpression()) #6, !dbg !1063
  %553 = call i64 @fwrite(i8* nonnull %451, i64 %473, i64 1, i8* nonnull %34) #5, !dbg !1067
  %554 = icmp eq i64 %553, 0, !dbg !1068
  br i1 %554, label %612, label %555, !dbg !1069

555:                                              ; preds = %538, %552
  %556 = phi i32 [ 0, %552 ], [ %507, %538 ], !dbg !1056
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %465) #6, !dbg !1070
  %557 = add nsw i32 %505, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %557, metadata !396, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i32 %556, metadata !385, metadata !DIExpression()), !dbg !407
  %558 = load i32, i32* %464, align 4, !dbg !1014, !tbaa !472
  %559 = load i32, i32* %463, align 4, !dbg !1072, !tbaa !469
  %560 = add nsw i32 %559, %558, !dbg !1073
  %561 = icmp slt i32 %557, %560, !dbg !1015
  br i1 %561, label %504, label %562, !dbg !1016, !llvm.loop !1074

562:                                              ; preds = %555, %497
  %563 = phi i32 [ %499, %497 ], [ %556, %555 ]
  %564 = add nsw i32 %498, 1, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %564, metadata !392, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %563, metadata !385, metadata !DIExpression()), !dbg !407
  %565 = load i32, i32* %462, align 4, !dbg !1009, !tbaa !472
  %566 = load i32, i32* %461, align 4, !dbg !1077, !tbaa !469
  %567 = add nsw i32 %566, %565, !dbg !1078
  %568 = icmp slt i32 %564, %567, !dbg !1011
  br i1 %568, label %497, label %569, !dbg !1012, !llvm.loop !1079

569:                                              ; preds = %562
  %570 = load i32, i32* %460, align 4, !dbg !1004, !tbaa !472
  %571 = load i32, i32* %459, align 4, !dbg !1081, !tbaa !469
  br label %572, !dbg !1082

572:                                              ; preds = %569, %489
  %573 = phi i32 [ %490, %489 ], [ %571, %569 ], !dbg !1081
  %574 = phi i32 [ %491, %489 ], [ %570, %569 ], !dbg !1004
  %575 = phi i32 [ %492, %489 ], [ %565, %569 ]
  %576 = phi i32 [ %493, %489 ], [ %566, %569 ]
  %577 = phi i32 [ %495, %489 ], [ %563, %569 ], !dbg !407
  call void @llvm.dbg.value(metadata i32 undef, metadata !385, metadata !DIExpression()), !dbg !407
  %578 = add nsw i32 %494, 1, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %578, metadata !388, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %577, metadata !385, metadata !DIExpression()), !dbg !407
  %579 = add nsw i32 %573, %574, !dbg !1083
  %580 = icmp slt i32 %578, %579, !dbg !1006
  br i1 %580, label %489, label %581, !dbg !1007, !llvm.loop !1084

581:                                              ; preds = %572
  %582 = load i32, i32* %454, align 4, !dbg !1000, !tbaa !472
  %583 = load i32, i32* %453, align 4, !dbg !1086, !tbaa !469
  br label %584, !dbg !1087

584:                                              ; preds = %581, %476
  %585 = phi i32 [ %477, %476 ], [ %583, %581 ], !dbg !1086
  %586 = phi i32 [ %478, %476 ], [ %582, %581 ], !dbg !1000
  %587 = phi i32 [ %479, %476 ], [ %573, %581 ]
  %588 = phi i32 [ %480, %476 ], [ %574, %581 ]
  %589 = phi i32 [ %481, %476 ], [ %574, %581 ]
  %590 = phi i32 [ %482, %476 ], [ %573, %581 ]
  %591 = phi i32 [ %484, %476 ], [ %577, %581 ], !dbg !407
  call void @llvm.dbg.value(metadata i32 undef, metadata !385, metadata !DIExpression()), !dbg !407
  %592 = add nsw i32 %483, 1, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %592, metadata !386, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i32 %591, metadata !385, metadata !DIExpression()), !dbg !407
  %593 = add nsw i32 %585, %586, !dbg !1088
  %594 = icmp slt i32 %592, %593, !dbg !1001
  br i1 %594, label %476, label %595, !dbg !1002, !llvm.loop !1089

595:                                              ; preds = %584
  call void @llvm.dbg.value(metadata i32 undef, metadata !385, metadata !DIExpression()), !dbg !407
  %596 = icmp sgt i32 %591, 0, !dbg !1091
  br i1 %596, label %597, label %602, !dbg !1093

597:                                              ; preds = %595
  %598 = mul nsw i32 %591, %86, !dbg !1094
  %599 = sext i32 %598 to i64, !dbg !1097
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !1098
  call void @llvm.dbg.value(metadata i8* %451, metadata !747, metadata !DIExpression()) #6, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %599, metadata !748, metadata !DIExpression()) #6, !dbg !1098
  %600 = call i64 @fwrite(i8* nonnull %451, i64 %599, i64 1, i8* nonnull %34) #5, !dbg !1100
  %601 = icmp eq i64 %600, 0, !dbg !1101
  br i1 %601, label %613, label %602, !dbg !1102

602:                                              ; preds = %449, %597, %595
  %603 = bitcast i64* %18 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %603) #6, !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, metadata !405, metadata !DIExpression()), !dbg !407
  store i64 0, i64* %18, align 8, !dbg !1104, !tbaa !1105
  %604 = icmp eq i32 %450, 0, !dbg !1106
  br i1 %604, label %609, label %605, !dbg !1108

605:                                              ; preds = %602
  %606 = zext i32 %450 to i64, !dbg !1109
  call void @llvm.dbg.value(metadata i64* %18, metadata !405, metadata !DIExpression(DW_OP_deref)), !dbg !407
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !744, metadata !DIExpression()) #6, !dbg !1112
  call void @llvm.dbg.value(metadata i8* %603, metadata !747, metadata !DIExpression()) #6, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %606, metadata !748, metadata !DIExpression()) #6, !dbg !1112
  %607 = call i64 @fwrite(i8* nonnull %603, i64 %606, i64 1, i8* nonnull %34) #5, !dbg !1115
  %608 = icmp eq i64 %607, 0, !dbg !1116
  br i1 %608, label %610, label %609, !dbg !1117

609:                                              ; preds = %605, %602
  br label %610, !dbg !1118

610:                                              ; preds = %605, %609
  %611 = phi i32 [ 0, %609 ], [ -16, %605 ], !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %603) #6, !dbg !1119
  br label %613

612:                                              ; preds = %552
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %465) #6, !dbg !1070
  br label %613, !dbg !1119

613:                                              ; preds = %612, %597, %610
  %614 = phi i32 [ %611, %610 ], [ -14, %597 ], [ -13, %612 ], !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %451) #6, !dbg !1119
  br label %615

615:                                              ; preds = %613, %432, %427, %240, %353
  %616 = phi i32 [ %614, %613 ], [ %241, %240 ], [ %430, %427 ], [ -12, %432 ], [ -6, %353 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #6, !dbg !1119
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !1120, metadata !DIExpression()) #6, !dbg !1123
  %617 = call i32 @fclose(i8* nonnull %34) #5, !dbg !1125
  br label %618, !dbg !1129

618:                                              ; preds = %32, %615, %31, %26
  %619 = phi i32 [ -1, %26 ], [ -1, %31 ], [ %616, %615 ], [ -2, %32 ], !dbg !407
  ret i32 %619, !dbg !1119
}

declare !dbg !1130 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

declare !dbg !1134 dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !dbg !1135 dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

declare !dbg !1138 dso_local i8* @fopen(i8*, i8*) local_unnamed_addr #4

declare !dbg !1141 dso_local i64 @fwrite(i8*, i64, i64, i8*) local_unnamed_addr #4

declare !dbg !1144 dso_local i32 @fclose(i8*) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pixel_type_to_tiff_sample_type", linkageName: "_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE", scope: !2, file: !5, line: 33, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/write_debug_image.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !10)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !8, line: 13, baseType: !9)
!8 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "pixel_type_to_matlab_class_code", linkageName: "_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE", scope: !2, file: !5, line: 38, type: !14, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !10)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 16, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "pixel_type_to_matlab_type_code", linkageName: "_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE", scope: !2, file: !5, line: 41, type: !14, isLocal: false, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !20, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !35, globals: !47, imports: !48, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/write_debug_image.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!21 = !{!22, !30}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "halide_type_code_t", file: !23, line: 403, baseType: !15, size: 8, elements: !24, identifier: "_ZTS18halide_type_code_t")
!23 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "halide_type_int", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "halide_type_uint", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "halide_type_float", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "halide_type_handle", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "halide_type_bfloat", value: 4, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 1415, baseType: !31, size: 32, elements: !32, identifier: "_ZTS19halide_buffer_flags")
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "halide_buffer_flag_host_dirty", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "halide_buffer_flag_device_dirty", value: 2, isUnsigned: true)
!35 = !{!36, !7, !39, !40, !41, !43, !45}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 12, baseType: !31)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 10, baseType: !42)
!42 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 27, baseType: !44)
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !8, line: 28, baseType: !46)
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !{!0, !12, !17}
!48 = !{!49}
!49 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !19, entity: !2, file: !8, line: 225)
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!54 = distinct !DISubprogram(name: "ends_with", linkageName: "_ZN6Halide7Runtime8Internal9ends_withEPKcS3_", scope: !2, file: !5, line: 92, type: !55, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !36, !36}
!57 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!58 = !{!59, !60, !61, !62}
!59 = !DILocalVariable(name: "filename", arg: 1, scope: !54, file: !5, line: 92, type: !36)
!60 = !DILocalVariable(name: "suffix", arg: 2, scope: !54, file: !5, line: 92, type: !36)
!61 = !DILocalVariable(name: "f", scope: !54, file: !5, line: 93, type: !36)
!62 = !DILocalVariable(name: "s", scope: !54, file: !5, line: 93, type: !36)
!63 = !DILocation(line: 0, scope: !54)
!64 = !DILocation(line: 94, column: 5, scope: !54)
!65 = !DILocation(line: 94, column: 12, scope: !54)
!66 = !{!67, !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !DILocation(line: 95, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !54, file: !5, line: 94, column: 16)
!71 = distinct !{!71, !64, !72, !73}
!72 = !DILocation(line: 96, column: 5, scope: !54)
!73 = !{!"llvm.loop.mustprogress"}
!74 = !DILocation(line: 97, column: 12, scope: !54)
!75 = !DILocation(line: 98, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !54, file: !5, line: 97, column: 16)
!77 = !DILocation(line: 97, column: 5, scope: !54)
!78 = distinct !{!78, !77, !79, !73}
!79 = !DILocation(line: 99, column: 5, scope: !54)
!80 = !DILocation(line: 100, column: 14, scope: !54)
!81 = !DILocation(line: 100, column: 24, scope: !54)
!82 = !DILocation(line: 100, column: 5, scope: !54)
!83 = !DILocation(line: 104, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !54, file: !5, line: 100, column: 42)
!85 = !DILocation(line: 105, column: 10, scope: !84)
!86 = distinct !{!86, !82, !87, !73}
!87 = !DILocation(line: 106, column: 5, scope: !54)
!88 = !DILocation(line: 101, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !5, line: 101, column: 13)
!90 = !DILocation(line: 101, column: 13, scope: !84)
!91 = !DILocation(line: 107, column: 18, scope: !54)
!92 = !DILocation(line: 107, column: 12, scope: !54)
!93 = !DILocation(line: 107, column: 15, scope: !54)
!94 = !DILocation(line: 107, column: 5, scope: !54)
!95 = !DILocation(line: 108, column: 1, scope: !54)
!96 = distinct !DISubprogram(name: "halide_debug_to_file", scope: !5, file: !5, line: 132, type: !97, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !251)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !39, !36, !99, !101}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 11, baseType: !100)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !23, line: 1423, size: 448, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !103, identifier: "_ZTS15halide_buffer_t")
!103 = !{!104, !105, !156, !158, !159, !192, !193, !216, !217, !222, !226, !229, !230, !233, !234, !237, !240, !241, !242, !247, !250}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !102, file: !23, line: 1425, baseType: !41, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !102, file: !23, line: 1428, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !23, line: 723, size: 1024, flags: DIFlagTypePassByValue, elements: !109, identifier: "_ZTS25halide_device_interface_t")
!109 = !{!110, !114, !118, !119, !123, !124, !125, !126, !127, !131, !137, !141, !142, !146, !147, !152}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !108, file: !23, line: 724, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!100, !39, !101, !106}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !108, file: !23, line: 726, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!100, !39, !101}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !108, file: !23, line: 727, baseType: !115, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !108, file: !23, line: 728, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !39, !106}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !108, file: !23, line: 730, baseType: !115, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !108, file: !23, line: 731, baseType: !111, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !108, file: !23, line: 733, baseType: !111, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !108, file: !23, line: 735, baseType: !115, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !108, file: !23, line: 736, baseType: !128, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!100, !39, !101, !106, !101}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !108, file: !23, line: 738, baseType: !132, size: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!100, !39, !135, !101}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !108, file: !23, line: 740, baseType: !138, size: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!100, !39, !135, !100, !100, !101}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !108, file: !23, line: 742, baseType: !115, size: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !108, file: !23, line: 743, baseType: !143, size: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!100, !39, !101, !41, !106}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !108, file: !23, line: 745, baseType: !115, size: 64, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !108, file: !23, line: 746, baseType: !148, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!100, !39, !151, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !108, file: !23, line: 747, baseType: !153, size: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !23, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !102, file: !23, line: 1433, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !23, line: 1436, baseType: !41, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !23, line: 1439, baseType: !160, size: 32, offset: 256)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !23, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !161, identifier: "_ZTS13halide_type_t")
!161 = !{!162, !164, !165, !168, !172, !175, !180, !184, !185, !186, !189}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !160, file: !23, line: 434, baseType: !163, size: 8, align: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !23, line: 413, baseType: !22)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !160, file: !23, line: 442, baseType: !15, size: 8, align: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !160, file: !23, line: 446, baseType: !166, size: 16, align: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 14, baseType: !167)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DISubprogram(name: "halide_type_t", scope: !160, file: !23, line: 453, type: !169, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171, !163, !15, !166}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!172 = !DISubprogram(name: "halide_type_t", scope: !160, file: !23, line: 459, type: !173, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !171}
!175 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !160, file: !23, line: 463, type: !176, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{!160, !178, !166}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!180 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !160, file: !23, line: 468, type: !181, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{!57, !178, !183}
!183 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !179, size: 64)
!184 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !160, file: !23, line: 472, type: !181, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !160, file: !23, line: 476, type: !181, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !160, file: !23, line: 481, type: !187, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{!100, !178}
!189 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !160, file: !23, line: 485, type: !190, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{!40, !178}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !102, file: !23, line: 1442, baseType: !99, size: 32, offset: 288)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !102, file: !23, line: 1446, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !23, line: 1409, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !23, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !197, identifier: "_ZTS18halide_dimension_t")
!197 = !{!198, !199, !200, !201, !202, !206, !209, !215}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !196, file: !23, line: 1383, baseType: !99, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !196, file: !23, line: 1383, baseType: !99, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !196, file: !23, line: 1383, baseType: !99, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !23, line: 1386, baseType: !40, size: 32, offset: 96)
!202 = !DISubprogram(name: "halide_dimension_t", scope: !196, file: !23, line: 1388, type: !203, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!206 = !DISubprogram(name: "halide_dimension_t", scope: !196, file: !23, line: 1389, type: !207, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !205, !99, !99, !99, !40}
!209 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !196, file: !23, line: 1393, type: !210, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{!57, !212, !214}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!214 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !213, size: 64)
!215 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !196, file: !23, line: 1400, type: !210, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !102, file: !23, line: 1449, baseType: !39, size: 64, offset: 384)
!217 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !102, file: !23, line: 1454, type: !218, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!57, !220, !221}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !23, line: 1416, baseType: !30)
!222 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !102, file: !23, line: 1458, type: !223, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225, !221, !57}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!226 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !102, file: !23, line: 1466, type: !227, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{!57, !220}
!229 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !102, file: !23, line: 1470, type: !227, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !102, file: !23, line: 1474, type: !231, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !225, !57}
!233 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !102, file: !23, line: 1478, type: !231, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !102, file: !23, line: 1485, type: !235, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{!43, !220}
!237 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !102, file: !23, line: 1495, type: !238, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!157, !220}
!240 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !102, file: !23, line: 1506, type: !238, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !102, file: !23, line: 1518, type: !235, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !102, file: !23, line: 1523, type: !243, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubroutineType(types: !244)
!244 = !{!157, !220, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!247 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !102, file: !23, line: 1534, type: !248, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DISubroutineType(types: !249)
!249 = !{!100, !225, !39}
!250 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !102, file: !23, line: 1545, type: !227, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !{!252, !253, !254, !255, !256, !277, !278, !282, !284, !286, !287, !288, !291, !292, !293, !294, !334, !335, !336, !338, !341, !343, !344, !346, !349, !350, !351, !355, !357, !358, !362, !363, !364, !365, !369, !371, !373, !374, !379, !380, !384, !385, !386, !388, !392, !396, !400, !403, !404, !405}
!252 = !DILocalVariable(name: "user_context", arg: 1, scope: !96, file: !5, line: 132, type: !39)
!253 = !DILocalVariable(name: "filename", arg: 2, scope: !96, file: !5, line: 132, type: !36)
!254 = !DILocalVariable(name: "type_code", arg: 3, scope: !96, file: !5, line: 133, type: !99)
!255 = !DILocalVariable(name: "buf", arg: 4, scope: !96, file: !5, line: 133, type: !101)
!256 = !DILocalVariable(name: "f", scope: !96, file: !5, line: 147, type: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedFile", scope: !2, file: !5, line: 110, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !258, identifier: "_ZTSN6Halide7Runtime8Internal10ScopedFileE")
!258 = !{!259, !260, !264, !267, !272}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !257, file: !5, line: 111, baseType: !39, size: 64)
!260 = !DISubprogram(name: "ScopedFile", scope: !257, file: !5, line: 112, type: !261, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !263, !36, !36}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!264 = !DISubprogram(name: "~ScopedFile", scope: !257, file: !5, line: 115, type: !265, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !263}
!267 = !DISubprogram(name: "write", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFile5writeEPKvm", scope: !257, file: !5, line: 120, type: !268, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubroutineType(types: !269)
!269 = !{!57, !263, !270, !43}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!272 = !DISubprogram(name: "open", linkageName: "_ZNK6Halide7Runtime8Internal10ScopedFile4openEv", scope: !257, file: !5, line: 123, type: !273, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!57, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!277 = !DILocalVariable(name: "elts", scope: !96, file: !5, line: 152, type: !43)
!278 = !DILocalVariable(name: "shape", scope: !96, file: !5, line: 153, type: !279)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 512, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 4)
!282 = !DILocalVariable(name: "i", scope: !283, file: !5, line: 154, type: !100)
!283 = distinct !DILexicalBlock(scope: !96, file: !5, line: 154, column: 5)
!284 = !DILocalVariable(name: "i", scope: !285, file: !5, line: 158, type: !100)
!285 = distinct !DILexicalBlock(scope: !96, file: !5, line: 158, column: 5)
!286 = !DILocalVariable(name: "bytes_per_element", scope: !96, file: !5, line: 163, type: !99)
!287 = !DILocalVariable(name: "final_padding_bytes", scope: !96, file: !5, line: 165, type: !40)
!288 = !DILocalVariable(name: "channels", scope: !289, file: !5, line: 168, type: !99)
!289 = distinct !DILexicalBlock(scope: !290, file: !5, line: 167, column: 70)
!290 = distinct !DILexicalBlock(scope: !96, file: !5, line: 167, column: 9)
!291 = !DILocalVariable(name: "width", scope: !289, file: !5, line: 169, type: !99)
!292 = !DILocalVariable(name: "height", scope: !289, file: !5, line: 170, type: !99)
!293 = !DILocalVariable(name: "depth", scope: !289, file: !5, line: 171, type: !99)
!294 = !DILocalVariable(name: "header", scope: !289, file: !5, line: 181, type: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_tiff_header", scope: !2, file: !5, line: 79, size: 1680, flags: DIFlagTypePassByValue, elements: !296, identifier: "_ZTSN6Halide7Runtime8Internal18halide_tiff_headerE")
!296 = !{!297, !298, !299, !300, !301, !328, !329, !333}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "byte_order_marker", scope: !295, file: !5, line: 80, baseType: !7, size: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !295, file: !5, line: 81, baseType: !7, size: 16, offset: 16)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ifd0_offset", scope: !295, file: !5, line: 82, baseType: !99, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "entry_count", scope: !295, file: !5, line: 83, baseType: !7, size: 16, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !295, file: !5, line: 84, baseType: !302, size: 1440, offset: 80)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 1440, elements: !326)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiff_tag", scope: !2, file: !5, line: 47, size: 96, flags: DIFlagTypePassByValue, elements: !304, identifier: "_ZTSN6Halide7Runtime8Internal8tiff_tagE")
!304 = !{!305, !306, !307, !308, !316, !320, !323}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tag_code", scope: !303, file: !5, line: 48, baseType: !166, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type_code", scope: !303, file: !5, line: 49, baseType: !7, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !5, line: 50, baseType: !99, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !5, line: 55, baseType: !309, size: 32, offset: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !5, line: 51, size: 32, flags: DIFlagTypePassByValue, elements: !310, identifier: "_ZTSN6Halide7Runtime8Internal8tiff_tagUt_E")
!310 = !{!311, !314, !315}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !309, file: !5, line: 52, baseType: !312, size: 8)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !8, line: 15, baseType: !313)
!313 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i16", scope: !309, file: !5, line: 53, baseType: !7, size: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !309, file: !5, line: 54, baseType: !99, size: 32)
!316 = !DISubprogram(name: "assign16", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign16Etis", scope: !303, file: !5, line: 57, type: !317, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319, !166, !99, !7}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!320 = !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etii", scope: !303, file: !5, line: 64, type: !321, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !319, !166, !99, !99}
!323 = !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etsii", scope: !303, file: !5, line: 71, type: !324, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !319, !166, !7, !99, !99}
!326 = !{!327}
!327 = !DISubrange(count: 15)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ifd0_end", scope: !295, file: !5, line: 85, baseType: !99, size: 32, offset: 1520)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "width_resolution", scope: !295, file: !5, line: 86, baseType: !330, size: 64, offset: 1552)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 2)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "height_resolution", scope: !295, file: !5, line: 87, baseType: !330, size: 64, offset: 1616)
!334 = !DILocalVariable(name: "MMII", scope: !289, file: !5, line: 183, type: !99)
!335 = !DILocalVariable(name: "c", scope: !289, file: !5, line: 185, type: !36)
!336 = !DILocalVariable(name: "tag", scope: !289, file: !5, line: 192, type: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!338 = !DILocalVariable(name: "offset", scope: !339, file: !5, line: 227, type: !99)
!339 = distinct !DILexicalBlock(scope: !340, file: !5, line: 226, column: 27)
!340 = distinct !DILexicalBlock(scope: !289, file: !5, line: 226, column: 13)
!341 = !DILocalVariable(name: "i", scope: !342, file: !5, line: 229, type: !99)
!342 = distinct !DILexicalBlock(scope: !339, file: !5, line: 229, column: 13)
!343 = !DILocalVariable(name: "count", scope: !339, file: !5, line: 235, type: !99)
!344 = !DILocalVariable(name: "i", scope: !345, file: !5, line: 236, type: !99)
!345 = distinct !DILexicalBlock(scope: !339, file: !5, line: 236, column: 13)
!346 = !DILocalVariable(name: "end", scope: !347, file: !5, line: 244, type: !36)
!347 = distinct !DILexicalBlock(scope: !348, file: !5, line: 242, column: 45)
!348 = distinct !DILexicalBlock(scope: !290, file: !5, line: 242, column: 16)
!349 = !DILocalVariable(name: "start", scope: !347, file: !5, line: 251, type: !36)
!350 = !DILocalVariable(name: "name_size", scope: !347, file: !5, line: 255, type: !40)
!351 = !DILocalVariable(name: "array_name", scope: !347, file: !5, line: 256, type: !352)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 256)
!355 = !DILocalVariable(name: "dst", scope: !347, file: !5, line: 257, type: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!357 = !DILocalVariable(name: "padded_name_size", scope: !347, file: !5, line: 265, type: !40)
!358 = !DILocalVariable(name: "header", scope: !347, file: !5, line: 267, type: !359)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1032, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 129)
!362 = !DILocalVariable(name: "payload_bytes", scope: !347, file: !5, line: 273, type: !43)
!363 = !DILocalVariable(name: "dims", scope: !347, file: !5, line: 281, type: !100)
!364 = !DILocalVariable(name: "padded_dimensions", scope: !347, file: !5, line: 287, type: !100)
!365 = !DILocalVariable(name: "tags", scope: !347, file: !5, line: 289, type: !366)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DILocalVariable(name: "extents", scope: !347, file: !5, line: 301, type: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !280)
!371 = !DILocalVariable(name: "name_header", scope: !347, file: !5, line: 307, type: !372)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !331)
!373 = !DILocalVariable(name: "payload_header", scope: !347, file: !5, line: 319, type: !372)
!374 = !DILocalVariable(name: "header", scope: !375, file: !5, line: 325, type: !376)
!375 = distinct !DILexicalBlock(scope: !348, file: !5, line: 324, column: 12)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 160, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 5)
!379 = !DILocalVariable(name: "TEMP_SIZE", scope: !96, file: !5, line: 336, type: !246)
!380 = !DILocalVariable(name: "temp", scope: !96, file: !5, line: 337, type: !381)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32768, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 4096)
!384 = !DILocalVariable(name: "max_elts", scope: !96, file: !5, line: 338, type: !100)
!385 = !DILocalVariable(name: "counter", scope: !96, file: !5, line: 339, type: !100)
!386 = !DILocalVariable(name: "dim3", scope: !387, file: !5, line: 341, type: !99)
!387 = distinct !DILexicalBlock(scope: !96, file: !5, line: 341, column: 5)
!388 = !DILocalVariable(name: "dim2", scope: !389, file: !5, line: 342, type: !99)
!389 = distinct !DILexicalBlock(scope: !390, file: !5, line: 342, column: 9)
!390 = distinct !DILexicalBlock(scope: !391, file: !5, line: 341, column: 86)
!391 = distinct !DILexicalBlock(scope: !387, file: !5, line: 341, column: 5)
!392 = !DILocalVariable(name: "dim1", scope: !393, file: !5, line: 343, type: !99)
!393 = distinct !DILexicalBlock(scope: !394, file: !5, line: 343, column: 13)
!394 = distinct !DILexicalBlock(scope: !395, file: !5, line: 342, column: 90)
!395 = distinct !DILexicalBlock(scope: !389, file: !5, line: 342, column: 9)
!396 = !DILocalVariable(name: "dim0", scope: !397, file: !5, line: 344, type: !99)
!397 = distinct !DILexicalBlock(scope: !398, file: !5, line: 344, column: 17)
!398 = distinct !DILexicalBlock(scope: !399, file: !5, line: 343, column: 94)
!399 = distinct !DILexicalBlock(scope: !393, file: !5, line: 343, column: 13)
!400 = !DILocalVariable(name: "idx", scope: !401, file: !5, line: 346, type: !370)
!401 = distinct !DILexicalBlock(scope: !402, file: !5, line: 344, column: 98)
!402 = distinct !DILexicalBlock(scope: !397, file: !5, line: 344, column: 17)
!403 = !DILocalVariable(name: "loc", scope: !401, file: !5, line: 347, type: !157)
!404 = !DILocalVariable(name: "dst", scope: !401, file: !5, line: 348, type: !39)
!405 = !DILocalVariable(name: "zero", scope: !96, file: !5, line: 367, type: !406)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!407 = !DILocation(line: 0, scope: !96)
!408 = !DILocalVariable(name: "this", arg: 1, scope: !409, type: !135, flags: DIFlagArtificial | DIFlagObjectPointer)
!409 = distinct !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !102, file: !23, line: 1545, type: !227, scopeLine: 1545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !250, retainedNodes: !410)
!410 = !{!408}
!411 = !DILocation(line: 0, scope: !409, inlinedAt: !412)
!412 = distinct !DILocation(line: 135, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !96, file: !5, line: 135, column: 9)
!414 = !DILocation(line: 1546, column: 16, scope: !409, inlinedAt: !412)
!415 = !{!416, !418, i64 16}
!416 = !{!"_ZTS15halide_buffer_t", !417, i64 0, !418, i64 8, !418, i64 16, !417, i64 24, !419, i64 32, !422, i64 36, !418, i64 40, !418, i64 48}
!417 = !{!"long long", !67, i64 0}
!418 = !{!"any pointer", !67, i64 0}
!419 = !{!"_ZTS13halide_type_t", !420, i64 0, !67, i64 1, !421, i64 2}
!420 = !{!"_ZTS18halide_type_code_t", !67, i64 0}
!421 = !{!"short", !67, i64 0}
!422 = !{!"int", !67, i64 0}
!423 = !DILocation(line: 1546, column: 21, scope: !409, inlinedAt: !412)
!424 = !DILocation(line: 1546, column: 32, scope: !409, inlinedAt: !412)
!425 = !DILocation(line: 1546, column: 35, scope: !409, inlinedAt: !412)
!426 = !{!416, !417, i64 0}
!427 = !DILocation(line: 1546, column: 42, scope: !409, inlinedAt: !412)
!428 = !DILocation(line: 135, column: 9, scope: !96)
!429 = !DILocation(line: 136, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !413, file: !5, line: 135, column: 33)
!431 = !DILocation(line: 137, column: 9, scope: !430)
!432 = !DILocation(line: 140, column: 14, scope: !433)
!433 = distinct !DILexicalBlock(scope: !96, file: !5, line: 140, column: 9)
!434 = !{!416, !422, i64 36}
!435 = !DILocation(line: 140, column: 25, scope: !433)
!436 = !DILocation(line: 140, column: 9, scope: !96)
!437 = !DILocation(line: 141, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !5, line: 140, column: 30)
!439 = !DILocation(line: 142, column: 9, scope: !438)
!440 = !DILocation(line: 145, column: 5, scope: !96)
!441 = !DILocalVariable(name: "this", arg: 1, scope: !442, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!442 = distinct !DISubprogram(name: "ScopedFile", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFileC2EPKcS4_", scope: !257, file: !5, line: 112, type: !261, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !260, retainedNodes: !443)
!443 = !{!441, !444, !445}
!444 = !DILocalVariable(name: "filename", arg: 2, scope: !442, file: !5, line: 112, type: !36)
!445 = !DILocalVariable(name: "mode", arg: 3, scope: !442, file: !5, line: 112, type: !36)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!447 = !DILocation(line: 0, scope: !442, inlinedAt: !448)
!448 = distinct !DILocation(line: 147, column: 16, scope: !96)
!449 = !DILocation(line: 113, column: 13, scope: !450, inlinedAt: !448)
!450 = distinct !DILexicalBlock(scope: !442, file: !5, line: 112, column: 70)
!451 = !DILocalVariable(name: "this", arg: 1, scope: !452, type: !454, flags: DIFlagArtificial | DIFlagObjectPointer)
!452 = distinct !DISubprogram(name: "open", linkageName: "_ZNK6Halide7Runtime8Internal10ScopedFile4openEv", scope: !257, file: !5, line: 123, type: !273, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !272, retainedNodes: !453)
!453 = !{!451}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!455 = !DILocation(line: 0, scope: !452, inlinedAt: !456)
!456 = distinct !DILocation(line: 148, column: 12, scope: !457)
!457 = distinct !DILexicalBlock(scope: !96, file: !5, line: 148, column: 9)
!458 = !DILocation(line: 124, column: 18, scope: !452, inlinedAt: !456)
!459 = !DILocation(line: 148, column: 9, scope: !96)
!460 = !DILocation(line: 153, column: 5, scope: !96)
!461 = !DILocation(line: 153, column: 24, scope: !96)
!462 = !DILocalVariable(name: "this", arg: 1, scope: !463, type: !465, flags: DIFlagArtificial | DIFlagObjectPointer)
!463 = distinct !DISubprogram(name: "halide_dimension_t", linkageName: "_ZN18halide_dimension_tC2Ev", scope: !196, file: !23, line: 1388, type: !203, scopeLine: 1388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !202, retainedNodes: !464)
!464 = !{!462}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!466 = !DILocation(line: 0, scope: !463, inlinedAt: !467)
!467 = distinct !DILocation(line: 153, column: 24, scope: !96)
!468 = !DILocation(line: 1383, column: 13, scope: !463, inlinedAt: !467)
!469 = !{!470, !422, i64 0}
!470 = !{!"_ZTS18halide_dimension_t", !422, i64 0, !422, i64 4, !422, i64 8, !422, i64 12}
!471 = !DILocation(line: 1383, column: 22, scope: !463, inlinedAt: !467)
!472 = !{!470, !422, i64 4}
!473 = !DILocation(line: 1383, column: 34, scope: !463, inlinedAt: !467)
!474 = !{!470, !422, i64 8}
!475 = !DILocation(line: 1386, column: 14, scope: !463, inlinedAt: !467)
!476 = !{!470, !422, i64 12}
!477 = !DILocation(line: 0, scope: !283)
!478 = !DILocation(line: 154, column: 30, scope: !479)
!479 = distinct !DILexicalBlock(scope: !283, file: !5, line: 154, column: 5)
!480 = !DILocation(line: 154, column: 23, scope: !479)
!481 = !DILocation(line: 154, column: 5, scope: !283)
!482 = !{!416, !418, i64 40}
!483 = !DILocation(line: 0, scope: !285)
!484 = !DILocation(line: 158, column: 37, scope: !485)
!485 = distinct !DILexicalBlock(scope: !285, file: !5, line: 158, column: 5)
!486 = !DILocation(line: 158, column: 5, scope: !285)
!487 = !DILocation(line: 155, column: 20, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !5, line: 154, column: 56)
!489 = !DILocation(line: 155, column: 9, scope: !488)
!490 = !DILocation(line: 155, column: 18, scope: !488)
!491 = !{i64 0, i64 4, !492, i64 4, i64 4, !492, i64 8, i64 4, !492, i64 12, i64 4, !492}
!492 = !{!422, !422, i64 0}
!493 = !DILocation(line: 156, column: 26, scope: !488)
!494 = !DILocation(line: 156, column: 17, scope: !488)
!495 = !DILocation(line: 156, column: 14, scope: !488)
!496 = !DILocation(line: 154, column: 52, scope: !479)
!497 = !DILocation(line: 154, column: 41, scope: !479)
!498 = distinct !{!498, !481, !499, !73}
!499 = !DILocation(line: 157, column: 5, scope: !283)
!500 = !DILocalVariable(name: "this", arg: 1, scope: !501, type: !503, flags: DIFlagArtificial | DIFlagObjectPointer)
!501 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !160, file: !23, line: 481, type: !187, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !186, retainedNodes: !502)
!502 = !{!500}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!504 = !DILocation(line: 0, scope: !501, inlinedAt: !505)
!505 = distinct !DILocation(line: 163, column: 43, scope: !96)
!506 = !DILocation(line: 482, column: 17, scope: !501, inlinedAt: !505)
!507 = !{!419, !67, i64 1}
!508 = !DILocation(line: 482, column: 22, scope: !501, inlinedAt: !505)
!509 = !DILocation(line: 482, column: 27, scope: !501, inlinedAt: !505)
!510 = !DILocation(line: 167, column: 9, scope: !290)
!511 = !DILocation(line: 167, column: 38, scope: !290)
!512 = !DILocation(line: 159, column: 18, scope: !513)
!513 = distinct !DILexicalBlock(scope: !485, file: !5, line: 158, column: 47)
!514 = !DILocation(line: 159, column: 22, scope: !513)
!515 = !DILocation(line: 160, column: 18, scope: !513)
!516 = !DILocation(line: 160, column: 25, scope: !513)
!517 = !DILocation(line: 161, column: 18, scope: !513)
!518 = !DILocation(line: 161, column: 25, scope: !513)
!519 = !DILocation(line: 158, column: 43, scope: !485)
!520 = distinct !{!520, !486, !521, !73}
!521 = !DILocation(line: 162, column: 5, scope: !285)
!522 = !DILocation(line: 167, column: 41, scope: !290)
!523 = !DILocation(line: 167, column: 9, scope: !96)
!524 = !DILocation(line: 169, column: 34, scope: !289)
!525 = !DILocation(line: 0, scope: !289)
!526 = !DILocation(line: 170, column: 35, scope: !289)
!527 = !DILocation(line: 173, column: 23, scope: !528)
!528 = distinct !DILexicalBlock(scope: !289, file: !5, line: 173, column: 13)
!529 = !DILocation(line: 173, column: 35, scope: !528)
!530 = !DILocation(line: 0, scope: !528)
!531 = !DILocation(line: 181, column: 9, scope: !289)
!532 = !DILocation(line: 181, column: 35, scope: !289)
!533 = !DILocation(line: 186, column: 16, scope: !289)
!534 = !DILocation(line: 186, column: 34, scope: !289)
!535 = !{!536, !421, i64 0}
!536 = !{!"_ZTSN6Halide7Runtime8Internal18halide_tiff_headerE", !421, i64 0, !421, i64 2, !422, i64 4, !421, i64 8, !67, i64 10, !422, i64 190, !67, i64 194, !67, i64 202}
!537 = !DILocation(line: 188, column: 16, scope: !289)
!538 = !DILocation(line: 188, column: 24, scope: !289)
!539 = !{!536, !421, i64 2}
!540 = !DILocation(line: 189, column: 16, scope: !289)
!541 = !DILocation(line: 189, column: 28, scope: !289)
!542 = !{!536, !422, i64 4}
!543 = !DILocation(line: 190, column: 16, scope: !289)
!544 = !DILocation(line: 190, column: 28, scope: !289)
!545 = !{!536, !421, i64 8}
!546 = !DILocalVariable(name: "this", arg: 1, scope: !547, type: !337, flags: DIFlagArtificial | DIFlagObjectPointer)
!547 = distinct !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etii", scope: !303, file: !5, line: 64, type: !321, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !320, retainedNodes: !548)
!548 = !{!546, !549, !550, !551}
!549 = !DILocalVariable(name: "tag_code", arg: 2, scope: !547, file: !5, line: 64, type: !166)
!550 = !DILocalVariable(name: "count", arg: 3, scope: !547, file: !5, line: 64, type: !99)
!551 = !DILocalVariable(name: "value", arg: 4, scope: !547, file: !5, line: 64, type: !99)
!552 = !DILocation(line: 0, scope: !547, inlinedAt: !553)
!553 = distinct !DILocation(line: 193, column: 16, scope: !289)
!554 = !DILocation(line: 65, column: 15, scope: !547, inlinedAt: !553)
!555 = !DILocation(line: 65, column: 24, scope: !547, inlinedAt: !553)
!556 = !{!557, !421, i64 0}
!557 = !{!"_ZTSN6Halide7Runtime8Internal8tiff_tagE", !421, i64 0, !421, i64 2, !422, i64 4, !67, i64 8}
!558 = !DILocation(line: 66, column: 15, scope: !547, inlinedAt: !553)
!559 = !DILocation(line: 66, column: 25, scope: !547, inlinedAt: !553)
!560 = !{!557, !421, i64 2}
!561 = !DILocation(line: 67, column: 15, scope: !547, inlinedAt: !553)
!562 = !DILocation(line: 67, column: 21, scope: !547, inlinedAt: !553)
!563 = !{!557, !422, i64 4}
!564 = !DILocation(line: 68, column: 21, scope: !547, inlinedAt: !553)
!565 = !DILocation(line: 68, column: 25, scope: !547, inlinedAt: !553)
!566 = !DILocation(line: 0, scope: !547, inlinedAt: !567)
!567 = distinct !DILocation(line: 194, column: 16, scope: !289)
!568 = !DILocation(line: 65, column: 15, scope: !547, inlinedAt: !567)
!569 = !DILocation(line: 65, column: 24, scope: !547, inlinedAt: !567)
!570 = !DILocation(line: 66, column: 15, scope: !547, inlinedAt: !567)
!571 = !DILocation(line: 66, column: 25, scope: !547, inlinedAt: !567)
!572 = !DILocation(line: 67, column: 15, scope: !547, inlinedAt: !567)
!573 = !DILocation(line: 67, column: 21, scope: !547, inlinedAt: !567)
!574 = !DILocation(line: 68, column: 21, scope: !547, inlinedAt: !567)
!575 = !DILocation(line: 68, column: 25, scope: !547, inlinedAt: !567)
!576 = !DILocation(line: 195, column: 41, scope: !289)
!577 = !DILocalVariable(name: "this", arg: 1, scope: !578, type: !337, flags: DIFlagArtificial | DIFlagObjectPointer)
!578 = distinct !DISubprogram(name: "assign16", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign16Etis", scope: !303, file: !5, line: 57, type: !317, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !316, retainedNodes: !579)
!579 = !{!577, !580, !581, !582}
!580 = !DILocalVariable(name: "tag_code", arg: 2, scope: !578, file: !5, line: 57, type: !166)
!581 = !DILocalVariable(name: "count", arg: 3, scope: !578, file: !5, line: 57, type: !99)
!582 = !DILocalVariable(name: "value", arg: 4, scope: !578, file: !5, line: 57, type: !7)
!583 = !DILocation(line: 0, scope: !578, inlinedAt: !584)
!584 = distinct !DILocation(line: 195, column: 16, scope: !289)
!585 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !584)
!586 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !584)
!587 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !584)
!588 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !584)
!589 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !584)
!590 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !584)
!591 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !584)
!592 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !584)
!593 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !584)
!594 = !DILocation(line: 0, scope: !578, inlinedAt: !595)
!595 = distinct !DILocation(line: 196, column: 16, scope: !289)
!596 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !595)
!597 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !595)
!598 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !595)
!599 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !595)
!600 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !595)
!601 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !595)
!602 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !595)
!603 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !595)
!604 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !595)
!605 = !DILocation(line: 197, column: 42, scope: !289)
!606 = !DILocation(line: 197, column: 33, scope: !289)
!607 = !DILocation(line: 0, scope: !578, inlinedAt: !608)
!608 = distinct !DILocation(line: 197, column: 16, scope: !289)
!609 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !608)
!610 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !608)
!611 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !608)
!612 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !608)
!613 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !608)
!614 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !608)
!615 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !608)
!616 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !608)
!617 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !608)
!618 = !DILocation(line: 0, scope: !547, inlinedAt: !619)
!619 = distinct !DILocation(line: 198, column: 16, scope: !289)
!620 = !DILocation(line: 65, column: 15, scope: !547, inlinedAt: !619)
!621 = !DILocation(line: 65, column: 24, scope: !547, inlinedAt: !619)
!622 = !DILocation(line: 66, column: 15, scope: !547, inlinedAt: !619)
!623 = !DILocation(line: 66, column: 25, scope: !547, inlinedAt: !619)
!624 = !DILocation(line: 67, column: 15, scope: !547, inlinedAt: !619)
!625 = !DILocation(line: 67, column: 21, scope: !547, inlinedAt: !619)
!626 = !DILocation(line: 68, column: 21, scope: !547, inlinedAt: !619)
!627 = !DILocation(line: 68, column: 25, scope: !547, inlinedAt: !619)
!628 = !DILocation(line: 199, column: 41, scope: !289)
!629 = !DILocation(line: 0, scope: !578, inlinedAt: !630)
!630 = distinct !DILocation(line: 199, column: 16, scope: !289)
!631 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !630)
!632 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !630)
!633 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !630)
!634 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !630)
!635 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !630)
!636 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !630)
!637 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !630)
!638 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !630)
!639 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !630)
!640 = !DILocation(line: 0, scope: !547, inlinedAt: !641)
!641 = distinct !DILocation(line: 200, column: 16, scope: !289)
!642 = !DILocation(line: 65, column: 15, scope: !547, inlinedAt: !641)
!643 = !DILocation(line: 65, column: 24, scope: !547, inlinedAt: !641)
!644 = !DILocation(line: 66, column: 15, scope: !547, inlinedAt: !641)
!645 = !DILocation(line: 66, column: 25, scope: !547, inlinedAt: !641)
!646 = !DILocation(line: 67, column: 15, scope: !547, inlinedAt: !641)
!647 = !DILocation(line: 67, column: 21, scope: !547, inlinedAt: !641)
!648 = !DILocation(line: 68, column: 21, scope: !547, inlinedAt: !641)
!649 = !DILocation(line: 68, column: 25, scope: !547, inlinedAt: !641)
!650 = !DILocation(line: 202, column: 35, scope: !289)
!651 = !DILocation(line: 202, column: 25, scope: !289)
!652 = !DILocation(line: 65, column: 15, scope: !547, inlinedAt: !653)
!653 = distinct !DILocation(line: 201, column: 16, scope: !289)
!654 = !DILocation(line: 65, column: 24, scope: !547, inlinedAt: !653)
!655 = !DILocation(line: 66, column: 15, scope: !547, inlinedAt: !653)
!656 = !DILocation(line: 66, column: 25, scope: !547, inlinedAt: !653)
!657 = !DILocation(line: 67, column: 15, scope: !547, inlinedAt: !653)
!658 = !DILocation(line: 67, column: 21, scope: !547, inlinedAt: !653)
!659 = !DILocation(line: 68, column: 21, scope: !547, inlinedAt: !653)
!660 = !DILocation(line: 68, column: 25, scope: !547, inlinedAt: !653)
!661 = !DILocalVariable(name: "this", arg: 1, scope: !662, type: !337, flags: DIFlagArtificial | DIFlagObjectPointer)
!662 = distinct !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etsii", scope: !303, file: !5, line: 71, type: !324, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !323, retainedNodes: !663)
!663 = !{!661, !664, !665, !666, !667}
!664 = !DILocalVariable(name: "tag_code", arg: 2, scope: !662, file: !5, line: 71, type: !166)
!665 = !DILocalVariable(name: "type_code", arg: 3, scope: !662, file: !5, line: 71, type: !7)
!666 = !DILocalVariable(name: "count", arg: 4, scope: !662, file: !5, line: 71, type: !99)
!667 = !DILocalVariable(name: "value", arg: 5, scope: !662, file: !5, line: 71, type: !99)
!668 = !DILocation(line: 0, scope: !662, inlinedAt: !669)
!669 = distinct !DILocation(line: 206, column: 16, scope: !289)
!670 = !DILocation(line: 72, column: 15, scope: !662, inlinedAt: !669)
!671 = !DILocation(line: 72, column: 24, scope: !662, inlinedAt: !669)
!672 = !DILocation(line: 73, column: 15, scope: !662, inlinedAt: !669)
!673 = !DILocation(line: 73, column: 25, scope: !662, inlinedAt: !669)
!674 = !DILocation(line: 74, column: 15, scope: !662, inlinedAt: !669)
!675 = !DILocation(line: 74, column: 21, scope: !662, inlinedAt: !669)
!676 = !DILocation(line: 75, column: 21, scope: !662, inlinedAt: !669)
!677 = !DILocation(line: 75, column: 25, scope: !662, inlinedAt: !669)
!678 = !DILocation(line: 0, scope: !662, inlinedAt: !679)
!679 = distinct !DILocation(line: 208, column: 16, scope: !289)
!680 = !DILocation(line: 72, column: 15, scope: !662, inlinedAt: !679)
!681 = !DILocation(line: 72, column: 24, scope: !662, inlinedAt: !679)
!682 = !DILocation(line: 73, column: 15, scope: !662, inlinedAt: !679)
!683 = !DILocation(line: 73, column: 25, scope: !662, inlinedAt: !679)
!684 = !DILocation(line: 74, column: 15, scope: !662, inlinedAt: !679)
!685 = !DILocation(line: 74, column: 21, scope: !662, inlinedAt: !679)
!686 = !DILocation(line: 75, column: 21, scope: !662, inlinedAt: !679)
!687 = !DILocation(line: 75, column: 25, scope: !662, inlinedAt: !679)
!688 = !DILocation(line: 0, scope: !578, inlinedAt: !689)
!689 = distinct !DILocation(line: 210, column: 16, scope: !289)
!690 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !689)
!691 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !689)
!692 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !689)
!693 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !689)
!694 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !689)
!695 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !689)
!696 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !689)
!697 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !689)
!698 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !689)
!699 = !DILocation(line: 0, scope: !578, inlinedAt: !700)
!700 = distinct !DILocation(line: 211, column: 16, scope: !289)
!701 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !700)
!702 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !700)
!703 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !700)
!704 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !700)
!705 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !700)
!706 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !700)
!707 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !700)
!708 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !700)
!709 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !700)
!710 = !DILocation(line: 213, column: 25, scope: !289)
!711 = !{!421, !421, i64 0}
!712 = !DILocation(line: 0, scope: !578, inlinedAt: !713)
!713 = distinct !DILocation(line: 212, column: 16, scope: !289)
!714 = !DILocation(line: 58, column: 15, scope: !578, inlinedAt: !713)
!715 = !DILocation(line: 58, column: 24, scope: !578, inlinedAt: !713)
!716 = !DILocation(line: 59, column: 15, scope: !578, inlinedAt: !713)
!717 = !DILocation(line: 59, column: 25, scope: !578, inlinedAt: !713)
!718 = !DILocation(line: 60, column: 15, scope: !578, inlinedAt: !713)
!719 = !DILocation(line: 60, column: 21, scope: !578, inlinedAt: !713)
!720 = !DILocation(line: 61, column: 15, scope: !578, inlinedAt: !713)
!721 = !DILocation(line: 61, column: 21, scope: !578, inlinedAt: !713)
!722 = !DILocation(line: 61, column: 25, scope: !578, inlinedAt: !713)
!723 = !DILocation(line: 0, scope: !547, inlinedAt: !724)
!724 = distinct !DILocation(line: 214, column: 16, scope: !289)
!725 = !DILocation(line: 65, column: 15, scope: !547, inlinedAt: !724)
!726 = !DILocation(line: 65, column: 24, scope: !547, inlinedAt: !724)
!727 = !DILocation(line: 66, column: 15, scope: !547, inlinedAt: !724)
!728 = !DILocation(line: 66, column: 25, scope: !547, inlinedAt: !724)
!729 = !DILocation(line: 67, column: 15, scope: !547, inlinedAt: !724)
!730 = !DILocation(line: 67, column: 21, scope: !547, inlinedAt: !724)
!731 = !DILocation(line: 68, column: 21, scope: !547, inlinedAt: !724)
!732 = !DILocation(line: 68, column: 25, scope: !547, inlinedAt: !724)
!733 = !DILocation(line: 216, column: 16, scope: !289)
!734 = !DILocation(line: 216, column: 25, scope: !289)
!735 = !{!536, !422, i64 190}
!736 = !DILocation(line: 217, column: 9, scope: !289)
!737 = !DILocation(line: 217, column: 36, scope: !289)
!738 = !DILocation(line: 218, column: 9, scope: !289)
!739 = !DILocation(line: 218, column: 36, scope: !289)
!740 = !DILocation(line: 219, column: 9, scope: !289)
!741 = !DILocation(line: 219, column: 37, scope: !289)
!742 = !DILocation(line: 220, column: 9, scope: !289)
!743 = !DILocation(line: 220, column: 37, scope: !289)
!744 = !DILocalVariable(name: "this", arg: 1, scope: !745, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!745 = distinct !DISubprogram(name: "write", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFile5writeEPKvm", scope: !257, file: !5, line: 120, type: !268, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !267, retainedNodes: !746)
!746 = !{!744, !747, !748}
!747 = !DILocalVariable(name: "ptr", arg: 2, scope: !745, file: !5, line: 120, type: !270)
!748 = !DILocalVariable(name: "bytes", arg: 3, scope: !745, file: !5, line: 120, type: !43)
!749 = !DILocation(line: 0, scope: !745, inlinedAt: !750)
!750 = distinct !DILocation(line: 222, column: 16, scope: !751)
!751 = distinct !DILexicalBlock(scope: !289, file: !5, line: 222, column: 13)
!752 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !750)
!753 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !750)
!754 = !DILocation(line: 222, column: 13, scope: !289)
!755 = !DILocation(line: 226, column: 22, scope: !340)
!756 = !DILocation(line: 226, column: 13, scope: !289)
!757 = !DILocation(line: 227, column: 13, scope: !339)
!758 = !DILocation(line: 227, column: 74, scope: !339)
!759 = !DILocation(line: 227, column: 45, scope: !339)
!760 = !DILocation(line: 0, scope: !339)
!761 = !DILocation(line: 227, column: 21, scope: !339)
!762 = !DILocation(line: 0, scope: !342)
!763 = !DILocation(line: 229, column: 13, scope: !342)
!764 = !DILocation(line: 0, scope: !745, inlinedAt: !765)
!765 = distinct !DILocation(line: 230, column: 24, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !5, line: 230, column: 21)
!767 = distinct !DILexicalBlock(scope: !768, file: !5, line: 229, column: 52)
!768 = distinct !DILexicalBlock(scope: !342, file: !5, line: 229, column: 13)
!769 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !765)
!770 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !765)
!771 = !DILocation(line: 230, column: 21, scope: !767)
!772 = !DILocation(line: 233, column: 36, scope: !767)
!773 = !DILocation(line: 233, column: 54, scope: !767)
!774 = !DILocation(line: 233, column: 61, scope: !767)
!775 = !DILocation(line: 233, column: 69, scope: !767)
!776 = !DILocation(line: 233, column: 24, scope: !767)
!777 = !DILocation(line: 229, column: 48, scope: !768)
!778 = !DILocation(line: 229, column: 35, scope: !768)
!779 = distinct !{!779, !763, !780, !73}
!780 = !DILocation(line: 234, column: 13, scope: !342)
!781 = !DILocation(line: 235, column: 13, scope: !339)
!782 = !DILocation(line: 235, column: 21, scope: !339)
!783 = !DILocation(line: 0, scope: !345)
!784 = !DILocation(line: 236, column: 35, scope: !785)
!785 = distinct !DILexicalBlock(scope: !345, file: !5, line: 236, column: 13)
!786 = !DILocation(line: 236, column: 13, scope: !345)
!787 = distinct !{!787, !786, !788, !73}
!788 = !DILocation(line: 240, column: 13, scope: !345)
!789 = !DILocation(line: 0, scope: !745, inlinedAt: !790)
!790 = distinct !DILocation(line: 237, column: 24, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !5, line: 237, column: 21)
!792 = distinct !DILexicalBlock(scope: !785, file: !5, line: 236, column: 52)
!793 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !790)
!794 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !790)
!795 = !DILocation(line: 236, column: 48, scope: !785)
!796 = !DILocation(line: 237, column: 21, scope: !792)
!797 = !DILocation(line: 241, column: 9, scope: !340)
!798 = !DILocation(line: 242, column: 5, scope: !290)
!799 = !DILocation(line: 242, column: 16, scope: !348)
!800 = !DILocation(line: 242, column: 16, scope: !290)
!801 = !DILocation(line: 0, scope: !347)
!802 = !DILocation(line: 245, column: 16, scope: !347)
!803 = !DILocation(line: 246, column: 16, scope: !804)
!804 = distinct !DILexicalBlock(scope: !347, file: !5, line: 245, column: 22)
!805 = !DILocation(line: 245, column: 9, scope: !347)
!806 = distinct !{!806, !805, !807, !73}
!807 = !DILocation(line: 247, column: 9, scope: !347)
!808 = !DILocation(line: 252, column: 9, scope: !347)
!809 = !DILocation(line: 248, column: 16, scope: !347)
!810 = !DILocation(line: 248, column: 21, scope: !347)
!811 = !DILocation(line: 248, column: 9, scope: !347)
!812 = distinct !{!812, !811, !813, !73}
!813 = !DILocation(line: 250, column: 9, scope: !347)
!814 = !DILocation(line: 252, column: 22, scope: !347)
!815 = !DILocation(line: 252, column: 34, scope: !347)
!816 = !DILocation(line: 252, column: 37, scope: !347)
!817 = !DILocation(line: 252, column: 47, scope: !347)
!818 = distinct !{!818, !808, !819, !73}
!819 = !DILocation(line: 254, column: 9, scope: !347)
!820 = !DILocation(line: 255, column: 40, scope: !347)
!821 = !DILocation(line: 256, column: 9, scope: !347)
!822 = !DILocation(line: 256, column: 14, scope: !347)
!823 = !DILocation(line: 258, column: 22, scope: !347)
!824 = !DILocation(line: 258, column: 9, scope: !347)
!825 = !DILocation(line: 261, column: 33, scope: !347)
!826 = !DILocation(line: 261, column: 20, scope: !347)
!827 = !DILocation(line: 261, column: 9, scope: !347)
!828 = !DILocation(line: 259, column: 28, scope: !829)
!829 = distinct !DILexicalBlock(scope: !347, file: !5, line: 258, column: 30)
!830 = !DILocation(line: 259, column: 22, scope: !829)
!831 = !DILocation(line: 259, column: 17, scope: !829)
!832 = !DILocation(line: 259, column: 20, scope: !829)
!833 = distinct !{!833, !824, !834, !73}
!834 = !DILocation(line: 260, column: 9, scope: !347)
!835 = !DILocation(line: 262, column: 17, scope: !836)
!836 = distinct !DILexicalBlock(scope: !347, file: !5, line: 261, column: 55)
!837 = !DILocation(line: 262, column: 20, scope: !836)
!838 = distinct !{!838, !827, !839, !73}
!839 = !DILocation(line: 263, column: 9, scope: !347)
!840 = !DILocation(line: 265, column: 48, scope: !347)
!841 = !DILocation(line: 265, column: 53, scope: !347)
!842 = !DILocation(line: 267, column: 9, scope: !347)
!843 = !DILocation(line: 267, column: 14, scope: !347)
!844 = !DILocation(line: 0, scope: !745, inlinedAt: !845)
!845 = distinct !DILocation(line: 271, column: 11, scope: !347)
!846 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !845)
!847 = !DILocalVariable(name: "this", arg: 1, scope: !848, type: !135, flags: DIFlagArtificial | DIFlagObjectPointer)
!848 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !102, file: !23, line: 1518, type: !235, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !241, retainedNodes: !849)
!849 = !{!847}
!850 = !DILocation(line: 0, scope: !848, inlinedAt: !851)
!851 = distinct !DILocation(line: 273, column: 37, scope: !347)
!852 = !DILocalVariable(name: "this", arg: 1, scope: !853, type: !135, flags: DIFlagArtificial | DIFlagObjectPointer)
!853 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !102, file: !23, line: 1506, type: !238, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !240, retainedNodes: !854)
!854 = !{!852, !855, !856}
!855 = !DILocalVariable(name: "index", scope: !853, file: !23, line: 1507, type: !45)
!856 = !DILocalVariable(name: "i", scope: !857, file: !23, line: 1508, type: !100)
!857 = distinct !DILexicalBlock(scope: !853, file: !23, line: 1508, column: 9)
!858 = !DILocation(line: 0, scope: !853, inlinedAt: !859)
!859 = distinct !DILocation(line: 1519, column: 25, scope: !848, inlinedAt: !851)
!860 = !DILocation(line: 0, scope: !857, inlinedAt: !859)
!861 = !DILocation(line: 1508, column: 29, scope: !862, inlinedAt: !859)
!862 = distinct !DILexicalBlock(scope: !857, file: !23, line: 1508, column: 9)
!863 = !DILocation(line: 1508, column: 27, scope: !862, inlinedAt: !859)
!864 = !DILocation(line: 1508, column: 9, scope: !857, inlinedAt: !859)
!865 = !DILocation(line: 0, scope: !501, inlinedAt: !866)
!866 = distinct !DILocation(line: 1514, column: 36, scope: !853, inlinedAt: !859)
!867 = !DILocation(line: 482, column: 17, scope: !501, inlinedAt: !866)
!868 = !DILocalVariable(name: "this", arg: 1, scope: !869, type: !135, flags: DIFlagArtificial | DIFlagObjectPointer)
!869 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !102, file: !23, line: 1495, type: !238, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !237, retainedNodes: !870)
!870 = !{!868, !871, !872}
!871 = !DILocalVariable(name: "index", scope: !869, file: !23, line: 1496, type: !45)
!872 = !DILocalVariable(name: "i", scope: !873, file: !23, line: 1497, type: !100)
!873 = distinct !DILexicalBlock(scope: !869, file: !23, line: 1497, column: 9)
!874 = !DILocation(line: 0, scope: !869, inlinedAt: !875)
!875 = distinct !DILocation(line: 1519, column: 33, scope: !848, inlinedAt: !851)
!876 = !DILocation(line: 0, scope: !873, inlinedAt: !875)
!877 = !DILocation(line: 1497, column: 9, scope: !873, inlinedAt: !875)
!878 = !DILocation(line: 1509, column: 24, scope: !879, inlinedAt: !859)
!879 = distinct !DILexicalBlock(scope: !880, file: !23, line: 1509, column: 17)
!880 = distinct !DILexicalBlock(scope: !862, file: !23, line: 1508, column: 46)
!881 = !DILocation(line: 1509, column: 31, scope: !879, inlinedAt: !859)
!882 = !DILocation(line: 1509, column: 17, scope: !880, inlinedAt: !859)
!883 = !DILocation(line: 1510, column: 37, scope: !884, inlinedAt: !859)
!884 = distinct !DILexicalBlock(scope: !879, file: !23, line: 1509, column: 36)
!885 = !DILocation(line: 1510, column: 61, scope: !884, inlinedAt: !859)
!886 = !DILocation(line: 1510, column: 68, scope: !884, inlinedAt: !859)
!887 = !DILocation(line: 1510, column: 53, scope: !884, inlinedAt: !859)
!888 = !DILocation(line: 1510, column: 51, scope: !884, inlinedAt: !859)
!889 = !DILocation(line: 1510, column: 23, scope: !884, inlinedAt: !859)
!890 = !DILocation(line: 1511, column: 13, scope: !884, inlinedAt: !859)
!891 = !DILocation(line: 1508, column: 42, scope: !862, inlinedAt: !859)
!892 = distinct !{!892, !864, !893, !73}
!893 = !DILocation(line: 1512, column: 9, scope: !857, inlinedAt: !859)
!894 = !DILocation(line: 1498, column: 24, scope: !895, inlinedAt: !875)
!895 = distinct !DILexicalBlock(scope: !896, file: !23, line: 1498, column: 17)
!896 = distinct !DILexicalBlock(scope: !897, file: !23, line: 1497, column: 46)
!897 = distinct !DILexicalBlock(scope: !873, file: !23, line: 1497, column: 9)
!898 = !DILocation(line: 1498, column: 31, scope: !895, inlinedAt: !875)
!899 = !DILocation(line: 1498, column: 17, scope: !896, inlinedAt: !875)
!900 = !DILocation(line: 1499, column: 37, scope: !901, inlinedAt: !875)
!901 = distinct !DILexicalBlock(scope: !895, file: !23, line: 1498, column: 36)
!902 = !DILocation(line: 1499, column: 61, scope: !901, inlinedAt: !875)
!903 = !DILocation(line: 1499, column: 68, scope: !901, inlinedAt: !875)
!904 = !DILocation(line: 1499, column: 53, scope: !901, inlinedAt: !875)
!905 = !DILocation(line: 1499, column: 51, scope: !901, inlinedAt: !875)
!906 = !DILocation(line: 1499, column: 23, scope: !901, inlinedAt: !875)
!907 = !DILocation(line: 1500, column: 13, scope: !901, inlinedAt: !875)
!908 = !DILocation(line: 1497, column: 42, scope: !897, inlinedAt: !875)
!909 = !DILocation(line: 1497, column: 27, scope: !897, inlinedAt: !875)
!910 = distinct !{!910, !877, !911, !73}
!911 = !DILocation(line: 1501, column: 9, scope: !873, inlinedAt: !875)
!912 = !DILocation(line: 482, column: 22, scope: !501, inlinedAt: !866)
!913 = !DILocation(line: 482, column: 27, scope: !501, inlinedAt: !866)
!914 = !DILocation(line: 1513, column: 15, scope: !853, inlinedAt: !859)
!915 = !DILocation(line: 0, scope: !501, inlinedAt: !916)
!916 = distinct !DILocation(line: 1502, column: 36, scope: !869, inlinedAt: !875)
!917 = !DILocation(line: 1519, column: 31, scope: !848, inlinedAt: !851)
!918 = !DILocation(line: 276, column: 13, scope: !919)
!919 = distinct !DILexicalBlock(scope: !347, file: !5, line: 276, column: 13)
!920 = !DILocation(line: 276, column: 13, scope: !347)
!921 = !DILocation(line: 277, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !919, file: !5, line: 276, column: 44)
!923 = !DILocation(line: 324, column: 5, scope: !348)
!924 = !DILocation(line: 283, column: 13, scope: !347)
!925 = !DILocation(line: 289, column: 9, scope: !347)
!926 = !DILocation(line: 289, column: 18, scope: !347)
!927 = !DILocation(line: 289, column: 27, scope: !347)
!928 = !DILocation(line: 291, column: 40, scope: !347)
!929 = !DILocation(line: 291, column: 75, scope: !347)
!930 = !DILocation(line: 291, column: 20, scope: !347)
!931 = !DILocation(line: 291, column: 44, scope: !347)
!932 = !DILocation(line: 291, column: 63, scope: !347)
!933 = !DILocation(line: 293, column: 19, scope: !347)
!934 = !DILocation(line: 0, scope: !745, inlinedAt: !935)
!935 = distinct !DILocation(line: 297, column: 16, scope: !936)
!936 = distinct !DILexicalBlock(scope: !347, file: !5, line: 297, column: 13)
!937 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !935)
!938 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !935)
!939 = !DILocation(line: 297, column: 13, scope: !347)
!940 = !DILocation(line: 301, column: 9, scope: !347)
!941 = !DILocation(line: 301, column: 13, scope: !347)
!942 = !DILocation(line: 301, column: 25, scope: !347)
!943 = !DILocation(line: 301, column: 35, scope: !347)
!944 = !DILocation(line: 301, column: 52, scope: !347)
!945 = !DILocation(line: 301, column: 69, scope: !347)
!946 = !DILocation(line: 301, column: 86, scope: !347)
!947 = !DILocation(line: 302, column: 32, scope: !948)
!948 = distinct !DILexicalBlock(scope: !347, file: !5, line: 302, column: 13)
!949 = !DILocation(line: 0, scope: !745, inlinedAt: !950)
!950 = distinct !DILocation(line: 302, column: 16, scope: !948)
!951 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !950)
!952 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !950)
!953 = !DILocation(line: 302, column: 13, scope: !347)
!954 = !DILocation(line: 307, column: 9, scope: !347)
!955 = !DILocation(line: 307, column: 18, scope: !347)
!956 = !DILocation(line: 307, column: 35, scope: !347)
!957 = !DILocation(line: 0, scope: !745, inlinedAt: !958)
!958 = distinct !DILocation(line: 308, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !347, file: !5, line: 308, column: 13)
!960 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !958)
!961 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !958)
!962 = !DILocation(line: 308, column: 13, scope: !347)
!963 = !DILocation(line: 312, column: 34, scope: !964)
!964 = distinct !DILexicalBlock(scope: !347, file: !5, line: 312, column: 13)
!965 = !DILocation(line: 0, scope: !745, inlinedAt: !966)
!966 = distinct !DILocation(line: 312, column: 16, scope: !964)
!967 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !966)
!968 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !966)
!969 = !DILocation(line: 312, column: 13, scope: !347)
!970 = !DILocation(line: 316, column: 31, scope: !347)
!971 = !DILocation(line: 319, column: 9, scope: !347)
!972 = !DILocation(line: 319, column: 18, scope: !347)
!973 = !DILocation(line: 319, column: 38, scope: !347)
!974 = !DILocation(line: 320, column: 13, scope: !347)
!975 = !DILocation(line: 0, scope: !745, inlinedAt: !976)
!976 = distinct !DILocation(line: 321, column: 16, scope: !977)
!977 = distinct !DILexicalBlock(scope: !347, file: !5, line: 321, column: 13)
!978 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !976)
!979 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !976)
!980 = !DILocation(line: 321, column: 13, scope: !347)
!981 = !DILocation(line: 325, column: 9, scope: !375)
!982 = !DILocation(line: 325, column: 17, scope: !375)
!983 = !DILocation(line: 325, column: 28, scope: !375)
!984 = !DILocation(line: 325, column: 38, scope: !375)
!985 = !DILocation(line: 326, column: 38, scope: !375)
!986 = !DILocation(line: 327, column: 38, scope: !375)
!987 = !DILocation(line: 328, column: 38, scope: !375)
!988 = !DILocation(line: 0, scope: !745, inlinedAt: !989)
!989 = distinct !DILocation(line: 330, column: 16, scope: !990)
!990 = distinct !DILexicalBlock(scope: !375, file: !5, line: 330, column: 13)
!991 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !989)
!992 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !989)
!993 = !DILocation(line: 333, column: 5, scope: !348)
!994 = !DILocation(line: 165, column: 14, scope: !96)
!995 = !DILocation(line: 337, column: 5, scope: !96)
!996 = !DILocation(line: 337, column: 13, scope: !96)
!997 = !DILocation(line: 338, column: 30, scope: !96)
!998 = !DILocation(line: 341, column: 34, scope: !387)
!999 = !DILocation(line: 0, scope: !387)
!1000 = !DILocation(line: 341, column: 55, scope: !391)
!1001 = !DILocation(line: 341, column: 44, scope: !391)
!1002 = !DILocation(line: 341, column: 5, scope: !387)
!1003 = !DILocation(line: 342, column: 38, scope: !389)
!1004 = !DILocation(line: 342, column: 59, scope: !395)
!1005 = !DILocation(line: 0, scope: !389)
!1006 = !DILocation(line: 342, column: 48, scope: !395)
!1007 = !DILocation(line: 342, column: 9, scope: !389)
!1008 = !DILocation(line: 343, column: 42, scope: !393)
!1009 = !DILocation(line: 343, column: 63, scope: !399)
!1010 = !DILocation(line: 0, scope: !393)
!1011 = !DILocation(line: 343, column: 52, scope: !399)
!1012 = !DILocation(line: 343, column: 13, scope: !393)
!1013 = !DILocation(line: 0, scope: !397)
!1014 = !DILocation(line: 344, column: 67, scope: !402)
!1015 = !DILocation(line: 344, column: 56, scope: !402)
!1016 = !DILocation(line: 344, column: 17, scope: !397)
!1017 = !DILocation(line: 344, column: 46, scope: !397)
!1018 = !DILocation(line: 345, column: 28, scope: !401)
!1019 = !DILocation(line: 346, column: 21, scope: !401)
!1020 = !DILocation(line: 346, column: 25, scope: !401)
!1021 = !DILocation(line: 346, column: 33, scope: !401)
!1022 = !DILocalVariable(name: "this", arg: 1, scope: !1023, type: !135, flags: DIFlagArtificial | DIFlagObjectPointer)
!1023 = distinct !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !102, file: !23, line: 1523, type: !243, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !242, retainedNodes: !1024)
!1024 = !{!1022, !1025, !1026, !1027}
!1025 = !DILocalVariable(name: "pos", arg: 2, scope: !1023, file: !23, line: 1523, type: !245)
!1026 = !DILocalVariable(name: "index", scope: !1023, file: !23, line: 1524, type: !45)
!1027 = !DILocalVariable(name: "i", scope: !1028, file: !23, line: 1525, type: !100)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !23, line: 1525, column: 9)
!1029 = !DILocation(line: 0, scope: !1023, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 347, column: 41, scope: !401)
!1031 = !DILocation(line: 0, scope: !1028, inlinedAt: !1030)
!1032 = !DILocation(line: 1525, column: 29, scope: !1033, inlinedAt: !1030)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !23, line: 1525, column: 9)
!1034 = !DILocation(line: 1525, column: 27, scope: !1033, inlinedAt: !1030)
!1035 = !DILocation(line: 1525, column: 9, scope: !1028, inlinedAt: !1030)
!1036 = !DILocation(line: 1526, column: 40, scope: !1037, inlinedAt: !1030)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !23, line: 1525, column: 46)
!1038 = !DILocation(line: 1526, column: 33, scope: !1037, inlinedAt: !1030)
!1039 = !DILocation(line: 1526, column: 66, scope: !1037, inlinedAt: !1030)
!1040 = !DILocation(line: 1526, column: 57, scope: !1037, inlinedAt: !1030)
!1041 = !DILocation(line: 1526, column: 49, scope: !1037, inlinedAt: !1030)
!1042 = !DILocation(line: 1526, column: 47, scope: !1037, inlinedAt: !1030)
!1043 = distinct !{!1043, !1035, !1044, !73}
!1044 = !DILocation(line: 1527, column: 9, scope: !1028, inlinedAt: !1030)
!1045 = !DILocation(line: 1526, column: 50, scope: !1037, inlinedAt: !1030)
!1046 = !DILocation(line: 1526, column: 19, scope: !1037, inlinedAt: !1030)
!1047 = !DILocation(line: 1525, column: 42, scope: !1033, inlinedAt: !1030)
!1048 = !DILocation(line: 1528, column: 16, scope: !1023, inlinedAt: !1030)
!1049 = !DILocation(line: 0, scope: !501, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 1528, column: 36, scope: !1023, inlinedAt: !1030)
!1051 = !DILocation(line: 482, column: 17, scope: !501, inlinedAt: !1050)
!1052 = !DILocation(line: 482, column: 22, scope: !501, inlinedAt: !1050)
!1053 = !DILocation(line: 482, column: 27, scope: !501, inlinedAt: !1050)
!1054 = !DILocation(line: 1528, column: 29, scope: !1023, inlinedAt: !1030)
!1055 = !DILocation(line: 1528, column: 21, scope: !1023, inlinedAt: !1030)
!1056 = !DILocation(line: 0, scope: !401)
!1057 = !DILocation(line: 348, column: 54, scope: !401)
!1058 = !DILocation(line: 348, column: 38, scope: !401)
!1059 = !DILocation(line: 349, column: 21, scope: !401)
!1060 = !DILocation(line: 351, column: 33, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !401, file: !5, line: 351, column: 25)
!1062 = !DILocation(line: 351, column: 25, scope: !401)
!1063 = !DILocation(line: 0, scope: !745, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 353, column: 32, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !5, line: 353, column: 29)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !5, line: 351, column: 46)
!1067 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !1064)
!1068 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !1064)
!1069 = !DILocation(line: 353, column: 29, scope: !1066)
!1070 = !DILocation(line: 357, column: 17, scope: !402)
!1071 = !DILocation(line: 344, column: 90, scope: !402)
!1072 = !DILocation(line: 344, column: 85, scope: !402)
!1073 = !DILocation(line: 344, column: 74, scope: !402)
!1074 = distinct !{!1074, !1016, !1075, !73}
!1075 = !DILocation(line: 357, column: 17, scope: !397)
!1076 = !DILocation(line: 343, column: 86, scope: !399)
!1077 = !DILocation(line: 343, column: 81, scope: !399)
!1078 = !DILocation(line: 343, column: 70, scope: !399)
!1079 = distinct !{!1079, !1012, !1080, !73}
!1080 = !DILocation(line: 358, column: 13, scope: !393)
!1081 = !DILocation(line: 342, column: 77, scope: !395)
!1082 = !DILocation(line: 342, column: 82, scope: !395)
!1083 = !DILocation(line: 342, column: 66, scope: !395)
!1084 = distinct !{!1084, !1007, !1085, !73}
!1085 = !DILocation(line: 359, column: 9, scope: !389)
!1086 = !DILocation(line: 341, column: 73, scope: !391)
!1087 = !DILocation(line: 341, column: 78, scope: !391)
!1088 = !DILocation(line: 341, column: 62, scope: !391)
!1089 = distinct !{!1089, !1002, !1090, !73}
!1090 = !DILocation(line: 360, column: 5, scope: !387)
!1091 = !DILocation(line: 361, column: 17, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !96, file: !5, line: 361, column: 9)
!1093 = !DILocation(line: 361, column: 9, scope: !96)
!1094 = !DILocation(line: 362, column: 44, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !5, line: 362, column: 13)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !5, line: 361, column: 22)
!1097 = !DILocation(line: 362, column: 36, scope: !1095)
!1098 = !DILocation(line: 0, scope: !745, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 362, column: 16, scope: !1095)
!1100 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !1099)
!1101 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !1099)
!1102 = !DILocation(line: 362, column: 13, scope: !1096)
!1103 = !DILocation(line: 367, column: 5, scope: !96)
!1104 = !DILocation(line: 367, column: 20, scope: !96)
!1105 = !{!417, !417, i64 0}
!1106 = !DILocation(line: 368, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !96, file: !5, line: 368, column: 9)
!1108 = !DILocation(line: 368, column: 9, scope: !96)
!1109 = !DILocation(line: 369, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !5, line: 369, column: 13)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !5, line: 368, column: 30)
!1112 = !DILocation(line: 0, scope: !745, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 373, column: 16, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !5, line: 373, column: 13)
!1115 = !DILocation(line: 121, column: 20, scope: !745, inlinedAt: !1113)
!1116 = !DILocation(line: 121, column: 45, scope: !745, inlinedAt: !1113)
!1117 = !DILocation(line: 373, column: 13, scope: !1111)
!1118 = !DILocation(line: 378, column: 5, scope: !96)
!1119 = !DILocation(line: 379, column: 1, scope: !96)
!1120 = !DILocalVariable(name: "this", arg: 1, scope: !1121, type: !446, flags: DIFlagArtificial | DIFlagObjectPointer)
!1121 = distinct !DISubprogram(name: "~ScopedFile", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFileD2Ev", scope: !257, file: !5, line: 115, type: !265, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !264, retainedNodes: !1122)
!1122 = !{!1120}
!1123 = !DILocation(line: 0, scope: !1121, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 379, column: 1, scope: !96)
!1125 = !DILocation(line: 117, column: 13, scope: !1126, inlinedAt: !1124)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !5, line: 116, column: 16)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !5, line: 116, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1121, file: !5, line: 115, column: 33)
!1129 = !DILocation(line: 118, column: 9, scope: !1126, inlinedAt: !1124)
!1130 = !DISubprogram(name: "halide_error", scope: !23, file: !23, line: 111, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !39, !36}
!1133 = !{}
!1134 = !DISubprogram(name: "halide_copy_to_host", scope: !23, file: !23, line: 761, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1135 = !DISubprogram(name: "memcpy", scope: !8, file: !8, line: 94, type: !1136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!39, !39, !270, !44}
!1138 = !DISubprogram(name: "fopen", scope: !8, file: !8, line: 99, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!39, !36, !36}
!1141 = !DISubprogram(name: "fwrite", scope: !8, file: !8, line: 103, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!44, !270, !44, !44, !39}
!1144 = !DISubprogram(name: "fclose", scope: !8, file: !8, line: 101, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!100, !39}
