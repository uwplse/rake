; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/write_debug_image.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/write_debug_image.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

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

; Function Attrs: nounwind mustprogress
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !53 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !59, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %0, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !61, metadata !DIExpression()), !dbg !62
  br label %3, !dbg !63

3:                                                ; preds = %3, %2
  %4 = phi i8* [ %0, %2 ], [ %7, %3 ], !dbg !62
  call void @llvm.dbg.value(metadata i8* %4, metadata !60, metadata !DIExpression()), !dbg !62
  %5 = load i8, i8* %4, align 1, !dbg !64, !tbaa !65
  %6 = icmp eq i8 %5, 0, !dbg !64
  %7 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !68
  call void @llvm.dbg.value(metadata i8* %7, metadata !60, metadata !DIExpression()), !dbg !62
  br i1 %6, label %8, label %3, !dbg !63, !llvm.loop !70

8:                                                ; preds = %3, %8
  %9 = phi i8* [ %12, %8 ], [ %1, %3 ], !dbg !62
  call void @llvm.dbg.value(metadata i8* %9, metadata !61, metadata !DIExpression()), !dbg !62
  %10 = load i8, i8* %9, align 1, !dbg !73, !tbaa !65
  %11 = icmp eq i8 %10, 0, !dbg !73
  %12 = getelementptr inbounds i8, i8* %9, i32 1, !dbg !74
  call void @llvm.dbg.value(metadata i8* %12, metadata !61, metadata !DIExpression()), !dbg !62
  br i1 %11, label %13, label %8, !dbg !76, !llvm.loop !77

13:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %4, metadata !60, metadata !DIExpression()), !dbg !62
  %14 = icmp ne i8* %9, %1, !dbg !79
  %15 = icmp ne i8* %4, %0, !dbg !80
  %16 = and i1 %15, %14, !dbg !80
  br i1 %16, label %17, label %29, !dbg !81

17:                                               ; preds = %13, %27
  %18 = phi i8* [ %20, %27 ], [ %4, %13 ]
  %19 = phi i8* [ %21, %27 ], [ %9, %13 ]
  call void @llvm.dbg.value(metadata i8* %18, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %19, metadata !61, metadata !DIExpression()), !dbg !62
  %20 = getelementptr inbounds i8, i8* %18, i32 -1, !dbg !82
  call void @llvm.dbg.value(metadata i8* %20, metadata !60, metadata !DIExpression()), !dbg !62
  %21 = getelementptr inbounds i8, i8* %19, i32 -1, !dbg !84
  call void @llvm.dbg.value(metadata i8* %21, metadata !61, metadata !DIExpression()), !dbg !62
  %22 = icmp ne i8* %21, %1, !dbg !79
  %23 = icmp ne i8* %20, %0, !dbg !80
  %24 = and i1 %23, %22, !dbg !80
  %25 = load i8, i8* %20, align 1, !dbg !62, !tbaa !65
  %26 = load i8, i8* %21, align 1, !dbg !62, !tbaa !65
  br i1 %24, label %27, label %29, !dbg !81, !llvm.loop !85

27:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* %20, metadata !60, metadata !DIExpression()), !dbg !62
  %28 = icmp eq i8 %25, %26, !dbg !87
  br i1 %28, label %17, label %33, !dbg !89

29:                                               ; preds = %17, %13
  %30 = phi i8 [ 0, %13 ], [ %26, %17 ], !dbg !90
  %31 = phi i8 [ 0, %13 ], [ %25, %17 ], !dbg !91
  %32 = icmp eq i8 %31, %30, !dbg !92
  br label %33, !dbg !93

33:                                               ; preds = %27, %29
  %34 = phi i1 [ %32, %29 ], [ false, %27 ], !dbg !62
  ret i1 %34, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_debug_to_file(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #3 !dbg !95 {
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
  call void @llvm.dbg.value(metadata i8* %0, metadata !250, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i8* %1, metadata !251, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %2, metadata !252, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !253, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !406, metadata !DIExpression()), !dbg !409
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2, !dbg !412
  %20 = load i8*, i8** %19, align 4, !dbg !412, !tbaa !413
  %21 = icmp eq i8* %20, null, !dbg !421
  br i1 %21, label %22, label %27, !dbg !422

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0, !dbg !423
  %24 = load i64, i64* %23, align 8, !dbg !423, !tbaa !424
  %25 = icmp eq i64 %24, 0, !dbg !425
  br i1 %25, label %26, label %27, !dbg !426

26:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0)) #5, !dbg !427
  br label %591, !dbg !429

27:                                               ; preds = %4, %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5, !dbg !430
  %29 = load i32, i32* %28, align 4, !dbg !430, !tbaa !432
  %30 = icmp sgt i32 %29, 4, !dbg !433
  br i1 %30, label %31, label %32, !dbg !434

31:                                               ; preds = %27
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0)) #5, !dbg !435
  br label %591, !dbg !437

32:                                               ; preds = %27
  %33 = tail call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* nonnull %3) #5, !dbg !438
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !439, metadata !DIExpression()) #6, !dbg !445
  call void @llvm.dbg.value(metadata i8* %1, metadata !442, metadata !DIExpression()) #6, !dbg !445
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), metadata !443, metadata !DIExpression()) #6, !dbg !445
  %34 = tail call i8* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !447
  call void @llvm.dbg.value(metadata i8* %34, metadata !254, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !449, metadata !DIExpression()), !dbg !453
  %35 = icmp eq i8* %34, null, !dbg !456
  br i1 %35, label %591, label %36, !dbg !457

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 1, metadata !275, metadata !DIExpression()), !dbg !405
  %37 = bitcast [4 x %struct.halide_dimension_t]* %5 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #6, !dbg !458
  call void @llvm.dbg.declare(metadata [4 x %struct.halide_dimension_t]* %5, metadata !276, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !460, metadata !DIExpression()), !dbg !464
  %38 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 0, !dbg !466
  store i32 0, i32* %38, align 4, !dbg !466, !tbaa !467
  %39 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1, !dbg !469
  store i32 0, i32* %39, align 4, !dbg !469, !tbaa !470
  %40 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 2, !dbg !471
  store i32 0, i32* %40, align 4, !dbg !471, !tbaa !472
  %41 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 3, !dbg !473
  store i32 0, i32* %41, align 4, !dbg !473, !tbaa !474
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !464
  %42 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 0, !dbg !466
  store i32 0, i32* %42, align 4, !dbg !466, !tbaa !467
  %43 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1, !dbg !469
  store i32 0, i32* %43, align 4, !dbg !469, !tbaa !470
  %44 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 2, !dbg !471
  store i32 0, i32* %44, align 4, !dbg !471, !tbaa !472
  %45 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 3, !dbg !473
  store i32 0, i32* %45, align 4, !dbg !473, !tbaa !474
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !464
  %46 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 0, !dbg !466
  store i32 0, i32* %46, align 4, !dbg !466, !tbaa !467
  %47 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1, !dbg !469
  store i32 0, i32* %47, align 4, !dbg !469, !tbaa !470
  %48 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 2, !dbg !471
  store i32 0, i32* %48, align 4, !dbg !471, !tbaa !472
  %49 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 3, !dbg !473
  store i32 0, i32* %49, align 4, !dbg !473, !tbaa !474
  call void @llvm.dbg.value(metadata [4 x %struct.halide_dimension_t]* %5, metadata !460, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !464
  %50 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 0, !dbg !466
  store i32 0, i32* %50, align 4, !dbg !466, !tbaa !467
  %51 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1, !dbg !469
  store i32 0, i32* %51, align 4, !dbg !469, !tbaa !470
  %52 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 2, !dbg !471
  store i32 0, i32* %52, align 4, !dbg !471, !tbaa !472
  %53 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 3, !dbg !473
  store i32 0, i32* %53, align 4, !dbg !473, !tbaa !474
  call void @llvm.dbg.value(metadata i32 1, metadata !275, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 0, metadata !280, metadata !DIExpression()), !dbg !475
  %54 = load i32, i32* %28, align 4, !dbg !476, !tbaa !432
  %55 = icmp sgt i32 %54, 0, !dbg !478
  br i1 %55, label %56, label %61, !dbg !479

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %58 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %57, align 8, !tbaa !480
  br label %63, !dbg !479

59:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i32 %54, metadata !282, metadata !DIExpression()), !dbg !481
  %60 = icmp slt i32 %54, 4, !dbg !482
  br i1 %60, label %61, label %77, !dbg !484

61:                                               ; preds = %36, %59
  %62 = phi i32 [ %72, %59 ], [ 1, %36 ]
  br label %85, !dbg !484

63:                                               ; preds = %56, %63
  %64 = phi i32 [ 1, %56 ], [ %72, %63 ]
  %65 = phi i32 [ 0, %56 ], [ %73, %63 ]
  call void @llvm.dbg.value(metadata i32 %64, metadata !275, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %65, metadata !280, metadata !DIExpression()), !dbg !475
  %66 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %58, i32 %65, !dbg !485
  %67 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %65, !dbg !487
  %68 = bitcast %struct.halide_dimension_t* %67 to i8*, !dbg !488
  %69 = bitcast %struct.halide_dimension_t* %66 to i8*, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %68, i8* nonnull align 4 dereferenceable(16) %69, i32 16, i1 false), !dbg !488, !tbaa.struct !489
  %70 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %65, i32 1, !dbg !491
  %71 = load i32, i32* %70, align 4, !dbg !491, !tbaa !470
  %72 = mul i32 %71, %64, !dbg !492
  call void @llvm.dbg.value(metadata i32 %72, metadata !275, metadata !DIExpression()), !dbg !405
  %73 = add nuw nsw i32 %65, 1, !dbg !493
  call void @llvm.dbg.value(metadata i32 %73, metadata !280, metadata !DIExpression()), !dbg !475
  %74 = icmp slt i32 %73, %54, !dbg !478
  %75 = icmp ult i32 %65, 3, !dbg !494
  %76 = and i1 %75, %74, !dbg !494
  br i1 %76, label %63, label %59, !dbg !479, !llvm.loop !495

77:                                               ; preds = %85, %59
  %78 = phi i32 [ %72, %59 ], [ %62, %85 ]
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !497, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !501
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1, !dbg !503
  %80 = load i8, i8* %79, align 1, !dbg !503, !tbaa !504
  %81 = zext i8 %80 to i32, !dbg !503
  %82 = add nuw nsw i32 %81, 7, !dbg !505
  %83 = lshr i32 %82, 3, !dbg !506
  call void @llvm.dbg.value(metadata i32 %83, metadata !284, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 0, metadata !285, metadata !DIExpression()), !dbg !405
  %84 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7, !dbg !507
  br i1 %84, label %94, label %92, !dbg !508

85:                                               ; preds = %61, %85
  %86 = phi i32 [ %90, %85 ], [ %54, %61 ]
  call void @llvm.dbg.value(metadata i32 %86, metadata !282, metadata !DIExpression()), !dbg !481
  %87 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %86, i32 0, !dbg !509
  store i32 0, i32* %87, align 4, !dbg !511, !tbaa !467
  %88 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %86, i32 1, !dbg !512
  store i32 1, i32* %88, align 4, !dbg !513, !tbaa !470
  %89 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %86, i32 2, !dbg !514
  store i32 0, i32* %89, align 4, !dbg !515, !tbaa !472
  %90 = add nsw i32 %86, 1, !dbg !516
  call void @llvm.dbg.value(metadata i32 %90, metadata !282, metadata !DIExpression()), !dbg !481
  %91 = icmp slt i32 %86, 3, !dbg !482
  br i1 %91, label %85, label %77, !dbg !484, !llvm.loop !517

92:                                               ; preds = %77
  %93 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !519
  br i1 %93, label %94, label %236, !dbg !520

94:                                               ; preds = %92, %77
  %95 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1, !dbg !521
  %96 = load i32, i32* %95, align 4, !dbg !521, !tbaa !470
  call void @llvm.dbg.value(metadata i32 %96, metadata !289, metadata !DIExpression()), !dbg !522
  %97 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1, !dbg !523
  %98 = load i32, i32* %97, align 4, !dbg !523, !tbaa !470
  call void @llvm.dbg.value(metadata i32 %98, metadata !290, metadata !DIExpression()), !dbg !522
  %99 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1, !dbg !524
  %100 = load i32, i32* %99, align 4, !dbg !524, !tbaa !470
  %101 = icmp ult i32 %100, 2, !dbg !526
  %102 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1
  %103 = load i32, i32* %102, align 4, !dbg !527, !tbaa !470
  %104 = icmp slt i32 %103, 5
  %105 = and i1 %101, %104, !dbg !526
  %106 = select i1 %105, i32 1, i32 %103, !dbg !526
  %107 = select i1 %105, i32 %103, i32 %100, !dbg !526
  call void @llvm.dbg.value(metadata i32 %107, metadata !286, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 %106, metadata !291, metadata !DIExpression()), !dbg !522
  %108 = bitcast %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6 to i8*, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 210, i8* nonnull %108) #6, !dbg !528
  call void @llvm.dbg.declare(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !292, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8 73, metadata !332, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !522
  call void @llvm.dbg.value(metadata i8 73, metadata !332, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !522
  call void @llvm.dbg.value(metadata i16 19789, metadata !332, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 16)), !dbg !522
  call void @llvm.dbg.value(metadata i8* undef, metadata !333, metadata !DIExpression()), !dbg !522
  %109 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 0, !dbg !530
  store i16 18761, i16* %109, align 2, !dbg !531, !tbaa !532
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 1, !dbg !534
  store i16 42, i16* %110, align 2, !dbg !535, !tbaa !536
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 2, !dbg !537
  store i32 8, i32* %111, align 2, !dbg !538, !tbaa !539
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 3, !dbg !540
  store i16 15, i16* %112, align 2, !dbg !541, !tbaa !542
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 22, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !543, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !549
  call void @llvm.dbg.value(metadata i16 256, metadata !546, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32 %96, metadata !548, metadata !DIExpression()), !dbg !549
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 0, !dbg !551
  store i16 256, i16* %113, align 2, !dbg !552, !tbaa !553
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 1, !dbg !555
  store i16 4, i16* %114, align 2, !dbg !556, !tbaa !557
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 2, !dbg !558
  store i32 1, i32* %115, align 2, !dbg !559, !tbaa !560
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 3, i32 0, !dbg !561
  store i32 %96, i32* %116, align 2, !dbg !562, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 34, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !543, metadata !DIExpression(DW_OP_plus_uconst, 22, DW_OP_stack_value)), !dbg !563
  call void @llvm.dbg.value(metadata i16 257, metadata !546, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i32 %98, metadata !548, metadata !DIExpression()), !dbg !563
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 0, !dbg !565
  store i16 257, i16* %117, align 2, !dbg !566, !tbaa !553
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 1, !dbg !567
  store i16 4, i16* %118, align 2, !dbg !568, !tbaa !557
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 2, !dbg !569
  store i32 1, i32* %119, align 2, !dbg !570, !tbaa !560
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 3, i32 0, !dbg !571
  store i32 %98, i32* %120, align 2, !dbg !572, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 46, DW_OP_stack_value)), !dbg !522
  %121 = trunc i32 %82 to i16, !dbg !573
  %122 = and i16 %121, 504, !dbg !573
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 34, DW_OP_stack_value)), !dbg !580
  call void @llvm.dbg.value(metadata i16 258, metadata !577, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i16 %122, metadata !579, metadata !DIExpression()), !dbg !580
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 0, !dbg !582
  store i16 258, i16* %123, align 2, !dbg !583, !tbaa !553
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 1, !dbg !584
  store i16 3, i16* %124, align 2, !dbg !585, !tbaa !557
  %125 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 2, !dbg !586
  store i32 1, i32* %125, align 2, !dbg !587, !tbaa !560
  %126 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 3, !dbg !588
  %127 = bitcast %union.anon* %126 to i16*, !dbg !589
  store i16 %122, i16* %127, align 2, !dbg !590, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 58, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 46, DW_OP_stack_value)), !dbg !591
  call void @llvm.dbg.value(metadata i16 259, metadata !577, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i16 1, metadata !579, metadata !DIExpression()), !dbg !591
  %128 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 0, !dbg !593
  store i16 259, i16* %128, align 2, !dbg !594, !tbaa !553
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 1, !dbg !595
  store i16 3, i16* %129, align 2, !dbg !596, !tbaa !557
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 2, !dbg !597
  store i32 1, i32* %130, align 2, !dbg !598, !tbaa !560
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 3, !dbg !599
  %132 = bitcast %union.anon* %131 to i16*, !dbg !600
  store i16 1, i16* %132, align 2, !dbg !601, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 70, DW_OP_stack_value)), !dbg !522
  %133 = icmp sgt i32 %107, 2, !dbg !602
  %134 = select i1 %133, i16 2, i16 1, !dbg !603
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 58, DW_OP_stack_value)), !dbg !604
  call void @llvm.dbg.value(metadata i16 262, metadata !577, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i16 %134, metadata !579, metadata !DIExpression()), !dbg !604
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 0, !dbg !606
  store i16 262, i16* %135, align 2, !dbg !607, !tbaa !553
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 1, !dbg !608
  store i16 3, i16* %136, align 2, !dbg !609, !tbaa !557
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 2, !dbg !610
  store i32 1, i32* %137, align 2, !dbg !611, !tbaa !560
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 3, !dbg !612
  %139 = bitcast %union.anon* %138 to i16*, !dbg !613
  store i16 %134, i16* %139, align 2, !dbg !614, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 82, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !543, metadata !DIExpression(DW_OP_plus_uconst, 70, DW_OP_stack_value)), !dbg !615
  call void @llvm.dbg.value(metadata i16 273, metadata !546, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32 %107, metadata !547, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32 210, metadata !548, metadata !DIExpression()), !dbg !615
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 0, !dbg !617
  store i16 273, i16* %140, align 2, !dbg !618, !tbaa !553
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 1, !dbg !619
  store i16 4, i16* %141, align 2, !dbg !620, !tbaa !557
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 2, !dbg !621
  store i32 %107, i32* %142, align 2, !dbg !622, !tbaa !560
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 3, i32 0, !dbg !623
  store i32 210, i32* %143, align 2, !dbg !624, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 94, DW_OP_stack_value)), !dbg !522
  %144 = trunc i32 %107 to i16, !dbg !625
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 82, DW_OP_stack_value)), !dbg !626
  call void @llvm.dbg.value(metadata i16 277, metadata !577, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i16 %144, metadata !579, metadata !DIExpression()), !dbg !626
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 0, !dbg !628
  store i16 277, i16* %145, align 2, !dbg !629, !tbaa !553
  %146 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 1, !dbg !630
  store i16 3, i16* %146, align 2, !dbg !631, !tbaa !557
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 2, !dbg !632
  store i32 1, i32* %147, align 2, !dbg !633, !tbaa !560
  %148 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 3, !dbg !634
  %149 = bitcast %union.anon* %148 to i16*, !dbg !635
  store i16 %144, i16* %149, align 2, !dbg !636, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 106, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !543, metadata !DIExpression(DW_OP_plus_uconst, 94, DW_OP_stack_value)), !dbg !637
  call void @llvm.dbg.value(metadata i16 278, metadata !546, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %98, metadata !548, metadata !DIExpression()), !dbg !637
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 0, !dbg !639
  store i16 278, i16* %150, align 2, !dbg !640, !tbaa !553
  %151 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 1, !dbg !641
  store i16 4, i16* %151, align 2, !dbg !642, !tbaa !557
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 2, !dbg !643
  store i32 1, i32* %152, align 2, !dbg !644, !tbaa !560
  %153 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 3, i32 0, !dbg !645
  store i32 %98, i32* %153, align 2, !dbg !646, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 118, DW_OP_stack_value)), !dbg !522
  %154 = icmp eq i32 %107, 1, !dbg !647
  %155 = mul i32 %83, %78, !dbg !648
  %156 = shl i32 %107, 2, !dbg !648
  %157 = add i32 %156, 210, !dbg !648
  %158 = select i1 %154, i32 %155, i32 %157, !dbg !648
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 0, !dbg !649
  store i16 279, i16* %159, align 2, !dbg !651
  %160 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 1, !dbg !652
  store i16 4, i16* %160, align 2, !dbg !653
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 2, !dbg !654
  store i32 %107, i32* %161, align 2, !dbg !655
  %162 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 3, i32 0, !dbg !656
  store i32 %158, i32* %162, align 2, !dbg !657
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !658, metadata !DIExpression(DW_OP_plus_uconst, 118, DW_OP_stack_value)), !dbg !665
  call void @llvm.dbg.value(metadata i16 282, metadata !661, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i16 5, metadata !662, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 1, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i32 194, metadata !664, metadata !DIExpression()), !dbg !665
  %163 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 0, !dbg !667
  store i16 282, i16* %163, align 2, !dbg !668, !tbaa !553
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 1, !dbg !669
  store i16 5, i16* %164, align 2, !dbg !670, !tbaa !557
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 2, !dbg !671
  store i32 1, i32* %165, align 2, !dbg !672, !tbaa !560
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 3, i32 0, !dbg !673
  store i32 194, i32* %166, align 2, !dbg !674, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 142, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !658, metadata !DIExpression(DW_OP_plus_uconst, 130, DW_OP_stack_value)), !dbg !675
  call void @llvm.dbg.value(metadata i16 283, metadata !661, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i16 5, metadata !662, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 1, metadata !663, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 202, metadata !664, metadata !DIExpression()), !dbg !675
  %167 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 0, !dbg !677
  store i16 283, i16* %167, align 2, !dbg !678, !tbaa !553
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 1, !dbg !679
  store i16 5, i16* %168, align 2, !dbg !680, !tbaa !557
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 2, !dbg !681
  store i32 1, i32* %169, align 2, !dbg !682, !tbaa !560
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 3, i32 0, !dbg !683
  store i32 202, i32* %170, align 2, !dbg !684, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 154, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 142, DW_OP_stack_value)), !dbg !685
  call void @llvm.dbg.value(metadata i16 284, metadata !577, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i16 2, metadata !579, metadata !DIExpression()), !dbg !685
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 0, !dbg !687
  store i16 284, i16* %171, align 2, !dbg !688, !tbaa !553
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 1, !dbg !689
  store i16 3, i16* %172, align 2, !dbg !690, !tbaa !557
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 2, !dbg !691
  store i32 1, i32* %173, align 2, !dbg !692, !tbaa !560
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 3, !dbg !693
  %175 = bitcast %union.anon* %174 to i16*, !dbg !694
  store i16 2, i16* %175, align 2, !dbg !695, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 166, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 154, DW_OP_stack_value)), !dbg !696
  call void @llvm.dbg.value(metadata i16 296, metadata !577, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i16 1, metadata !579, metadata !DIExpression()), !dbg !696
  %176 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 0, !dbg !698
  store i16 296, i16* %176, align 2, !dbg !699, !tbaa !553
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 1, !dbg !700
  store i16 3, i16* %177, align 2, !dbg !701, !tbaa !557
  %178 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 2, !dbg !702
  store i32 1, i32* %178, align 2, !dbg !703, !tbaa !560
  %179 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 3, !dbg !704
  %180 = bitcast %union.anon* %179 to i16*, !dbg !705
  store i16 1, i16* %180, align 2, !dbg !706, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 178, DW_OP_stack_value)), !dbg !522
  %181 = getelementptr inbounds [10 x i16], [10 x i16]* @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, i32 0, i32 %2, !dbg !707
  %182 = load i16, i16* %181, align 2, !dbg !707, !tbaa !708
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !574, metadata !DIExpression(DW_OP_plus_uconst, 166, DW_OP_stack_value)), !dbg !709
  call void @llvm.dbg.value(metadata i16 339, metadata !577, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i32 1, metadata !578, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.value(metadata i16 %182, metadata !579, metadata !DIExpression()), !dbg !709
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 0, !dbg !711
  store i16 339, i16* %183, align 2, !dbg !712, !tbaa !553
  %184 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 1, !dbg !713
  store i16 3, i16* %184, align 2, !dbg !714, !tbaa !557
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 2, !dbg !715
  store i32 1, i32* %185, align 2, !dbg !716, !tbaa !560
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 3, !dbg !717
  %187 = bitcast %union.anon* %186 to i16*, !dbg !718
  store i16 %182, i16* %187, align 2, !dbg !719, !tbaa !65
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !334, metadata !DIExpression(DW_OP_plus_uconst, 178, DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !522
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, metadata !543, metadata !DIExpression(DW_OP_plus_uconst, 178, DW_OP_stack_value)), !dbg !720
  call void @llvm.dbg.value(metadata i16 -32539, metadata !546, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32 %106, metadata !548, metadata !DIExpression()), !dbg !720
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 0, !dbg !722
  store i16 -32539, i16* %188, align 2, !dbg !723, !tbaa !553
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 1, !dbg !724
  store i16 4, i16* %189, align 2, !dbg !725, !tbaa !557
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 2, !dbg !726
  store i32 1, i32* %190, align 2, !dbg !727, !tbaa !560
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 3, i32 0, !dbg !728
  store i32 %106, i32* %191, align 2, !dbg !729, !tbaa !65
  %192 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 5, !dbg !730
  store i32 0, i32* %192, align 2, !dbg !731, !tbaa !732
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 6, i32 0, !dbg !733
  store i32 1, i32* %193, align 2, !dbg !734, !tbaa !490
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 6, i32 1, !dbg !735
  store i32 1, i32* %194, align 2, !dbg !736, !tbaa !490
  %195 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 7, i32 0, !dbg !737
  store i32 1, i32* %195, align 2, !dbg !738, !tbaa !490
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 7, i32 1, !dbg !739
  store i32 1, i32* %196, align 2, !dbg !740, !tbaa !490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !746
  call void @llvm.dbg.value(metadata i8* %108, metadata !744, metadata !DIExpression()) #6, !dbg !746
  call void @llvm.dbg.value(metadata i32 210, metadata !745, metadata !DIExpression()) #6, !dbg !746
  %197 = call i32 @fwrite(i8* nonnull %108, i32 210, i32 1, i8* nonnull %34) #5, !dbg !749
  %198 = icmp eq i32 %197, 0, !dbg !750
  br i1 %198, label %234, label %199, !dbg !751

199:                                              ; preds = %94
  %200 = icmp sgt i32 %107, 1, !dbg !752
  br i1 %200, label %201, label %233, !dbg !753

201:                                              ; preds = %199
  %202 = bitcast i32* %7 to i8*, !dbg !754
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %202) #6, !dbg !754
  %203 = shl i32 %107, 3, !dbg !755
  %204 = add i32 %203, 210, !dbg !756
  call void @llvm.dbg.value(metadata i32 %204, metadata !336, metadata !DIExpression()), !dbg !757
  store i32 %204, i32* %7, align 4, !dbg !758, !tbaa !490
  call void @llvm.dbg.value(metadata i32 0, metadata !339, metadata !DIExpression()), !dbg !759
  %205 = mul i32 %106, %83
  br label %206, !dbg !760

206:                                              ; preds = %201, %210
  %207 = phi i32 [ 0, %201 ], [ %217, %210 ]
  call void @llvm.dbg.value(metadata i32 %207, metadata !339, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i32* %7, metadata !336, metadata !DIExpression(DW_OP_deref)), !dbg !757
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !761
  call void @llvm.dbg.value(metadata i8* %202, metadata !744, metadata !DIExpression()) #6, !dbg !761
  call void @llvm.dbg.value(metadata i32 4, metadata !745, metadata !DIExpression()) #6, !dbg !761
  %208 = call i32 @fwrite(i8* nonnull %202, i32 4, i32 1, i8* nonnull %34) #5, !dbg !766
  %209 = icmp eq i32 %208, 0, !dbg !767
  br i1 %209, label %230, label %210, !dbg !768

210:                                              ; preds = %206
  %211 = load i32, i32* %95, align 4, !dbg !769, !tbaa !470
  %212 = load i32, i32* %97, align 4, !dbg !770, !tbaa !470
  %213 = mul i32 %205, %211, !dbg !771
  %214 = mul i32 %213, %212, !dbg !772
  %215 = load i32, i32* %7, align 4, !dbg !773, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %215, metadata !336, metadata !DIExpression()), !dbg !757
  %216 = add nsw i32 %214, %215, !dbg !773
  call void @llvm.dbg.value(metadata i32 %216, metadata !336, metadata !DIExpression()), !dbg !757
  store i32 %216, i32* %7, align 4, !dbg !773, !tbaa !490
  %217 = add nuw nsw i32 %207, 1, !dbg !774
  call void @llvm.dbg.value(metadata i32 %217, metadata !339, metadata !DIExpression()), !dbg !759
  %218 = icmp slt i32 %217, %107, !dbg !775
  br i1 %218, label %206, label %219, !dbg !760, !llvm.loop !776

219:                                              ; preds = %210
  %220 = bitcast i32* %8 to i8*, !dbg !778
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %220) #6, !dbg !778
  call void @llvm.dbg.value(metadata i32 %214, metadata !341, metadata !DIExpression()), !dbg !757
  store i32 %214, i32* %8, align 4, !dbg !779, !tbaa !490
  call void @llvm.dbg.value(metadata i32 0, metadata !342, metadata !DIExpression()), !dbg !780
  %221 = icmp sgt i32 %107, 0, !dbg !781
  br i1 %221, label %224, label %232, !dbg !783

222:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i32 %228, metadata !342, metadata !DIExpression()), !dbg !780
  %223 = icmp slt i32 %228, %107, !dbg !781
  br i1 %223, label %224, label %232, !dbg !783, !llvm.loop !784

224:                                              ; preds = %219, %222
  %225 = phi i32 [ %228, %222 ], [ 0, %219 ]
  call void @llvm.dbg.value(metadata i32 %225, metadata !342, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i32* %8, metadata !341, metadata !DIExpression(DW_OP_deref)), !dbg !757
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !786
  call void @llvm.dbg.value(metadata i8* %220, metadata !744, metadata !DIExpression()) #6, !dbg !786
  call void @llvm.dbg.value(metadata i32 4, metadata !745, metadata !DIExpression()) #6, !dbg !786
  %226 = call i32 @fwrite(i8* nonnull %220, i32 4, i32 1, i8* nonnull %34) #5, !dbg !790
  %227 = icmp eq i32 %226, 0, !dbg !791
  %228 = add nuw nsw i32 %225, 1, !dbg !792
  call void @llvm.dbg.value(metadata i32 %228, metadata !342, metadata !DIExpression()), !dbg !780
  br i1 %227, label %229, label %222, !dbg !793

229:                                              ; preds = %224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %220) #6, !dbg !794
  br label %230

230:                                              ; preds = %206, %229
  %231 = phi i32 [ -5, %229 ], [ -4, %206 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %202) #6, !dbg !794
  br label %234

232:                                              ; preds = %222, %219
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %220) #6, !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %202) #6, !dbg !794
  br label %233

233:                                              ; preds = %232, %199
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %108) #6, !dbg !795
  br label %432

234:                                              ; preds = %230, %94
  %235 = phi i32 [ -3, %94 ], [ %231, %230 ], !dbg !522
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %108) #6, !dbg !795
  br label %588

236:                                              ; preds = %92
  %237 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #7, !dbg !796
  br i1 %237, label %238, label %415, !dbg !797

238:                                              ; preds = %236, %238
  %239 = phi i8* [ %242, %238 ], [ %1, %236 ], !dbg !798
  call void @llvm.dbg.value(metadata i8* %239, metadata !344, metadata !DIExpression()), !dbg !798
  %240 = load i8, i8* %239, align 1, !dbg !799, !tbaa !65
  %241 = icmp eq i8 %240, 0, !dbg !799
  %242 = getelementptr inbounds i8, i8* %239, i32 1, !dbg !800
  call void @llvm.dbg.value(metadata i8* %242, metadata !344, metadata !DIExpression()), !dbg !798
  br i1 %241, label %247, label %238, !dbg !802, !llvm.loop !803

243:                                              ; preds = %247
  %244 = ptrtoint i8* %248 to i32
  %245 = ptrtoint i8* %1 to i32, !dbg !805
  %246 = sub i32 %245, %244, !dbg !805
  br label %252, !dbg !805

247:                                              ; preds = %238, %247
  %248 = phi i8* [ %249, %247 ], [ %239, %238 ]
  call void @llvm.dbg.value(metadata i8* %248, metadata !344, metadata !DIExpression()), !dbg !798
  %249 = getelementptr inbounds i8, i8* %248, i32 -1, !dbg !798
  call void @llvm.dbg.value(metadata i8* %249, metadata !344, metadata !DIExpression()), !dbg !798
  %250 = load i8, i8* %249, align 1, !dbg !806, !tbaa !65
  %251 = icmp eq i8 %250, 46, !dbg !807
  br i1 %251, label %243, label %247, !dbg !808, !llvm.loop !809

252:                                              ; preds = %243, %256
  %253 = phi i32 [ %257, %256 ], [ -1, %243 ]
  %254 = getelementptr inbounds i8, i8* %248, i32 %253, !dbg !798
  call void @llvm.dbg.value(metadata i8* %254, metadata !347, metadata !DIExpression()), !dbg !798
  %255 = icmp eq i8* %254, %1, !dbg !811
  br i1 %255, label %261, label %256, !dbg !812

256:                                              ; preds = %252
  %257 = add nsw i32 %253, -1, !dbg !813
  %258 = getelementptr inbounds i8, i8* %248, i32 %257, !dbg !813
  %259 = load i8, i8* %258, align 1, !dbg !813, !tbaa !65
  %260 = icmp eq i8 %259, 47, !dbg !814
  br i1 %260, label %261, label %252, !dbg !805, !llvm.loop !815

261:                                              ; preds = %252, %256
  %262 = phi i32 [ %246, %252 ], [ %253, %256 ]
  %263 = xor i32 %262, -1, !dbg !817
  call void @llvm.dbg.value(metadata i32 %263, metadata !348, metadata !DIExpression()), !dbg !798
  %264 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0, !dbg !818
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %264) #6, !dbg !818
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !349, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %264, metadata !353, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8* %254, metadata !347, metadata !DIExpression()), !dbg !798
  %265 = icmp eq i32 %262, -1, !dbg !820
  br i1 %265, label %266, label %274, !dbg !821

266:                                              ; preds = %261
  call void @llvm.dbg.value(metadata i8* %280, metadata !353, metadata !DIExpression()), !dbg !798
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 256, !dbg !822
  br label %271, !dbg !823

268:                                              ; preds = %274
  call void @llvm.dbg.value(metadata i8* %280, metadata !353, metadata !DIExpression()), !dbg !798
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 256, !dbg !822
  %270 = icmp ult i8* %280, %269, !dbg !824
  br i1 %270, label %271, label %286, !dbg !823

271:                                              ; preds = %266, %268
  %272 = phi i8* [ %267, %266 ], [ %269, %268 ]
  %273 = phi i8* [ %264, %266 ], [ %280, %268 ]
  br label %282, !dbg !823

274:                                              ; preds = %261, %274
  %275 = phi i8* [ %280, %274 ], [ %264, %261 ]
  %276 = phi i32 [ %278, %274 ], [ %262, %261 ]
  %277 = getelementptr inbounds i8, i8* %248, i32 %276, !dbg !798
  call void @llvm.dbg.value(metadata i8* %275, metadata !353, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8* %277, metadata !347, metadata !DIExpression()), !dbg !798
  %278 = add nuw nsw i32 %276, 1, !dbg !825
  call void @llvm.dbg.value(metadata i8* undef, metadata !347, metadata !DIExpression()), !dbg !798
  %279 = load i8, i8* %277, align 1, !dbg !827, !tbaa !65
  %280 = getelementptr inbounds i8, i8* %275, i32 1, !dbg !828
  call void @llvm.dbg.value(metadata i8* %280, metadata !353, metadata !DIExpression()), !dbg !798
  store i8 %279, i8* %275, align 1, !dbg !829, !tbaa !65
  %281 = icmp eq i32 %278, -1, !dbg !820
  br i1 %281, label %268, label %274, !dbg !821, !llvm.loop !830

282:                                              ; preds = %271, %282
  %283 = phi i8* [ %284, %282 ], [ %273, %271 ]
  call void @llvm.dbg.value(metadata i8* %283, metadata !353, metadata !DIExpression()), !dbg !798
  %284 = getelementptr inbounds i8, i8* %283, i32 1, !dbg !832
  call void @llvm.dbg.value(metadata i8* %284, metadata !353, metadata !DIExpression()), !dbg !798
  store i8 0, i8* %283, align 1, !dbg !834, !tbaa !65
  %285 = icmp ult i8* %284, %272, !dbg !824
  br i1 %285, label %282, label %286, !dbg !823, !llvm.loop !835

286:                                              ; preds = %282, %268
  %287 = sub i32 6, %262, !dbg !837
  %288 = and i32 %287, -8, !dbg !838
  call void @llvm.dbg.value(metadata i32 %288, metadata !355, metadata !DIExpression()), !dbg !798
  %289 = getelementptr inbounds [129 x i8], [129 x i8]* %10, i32 0, i32 0, !dbg !839
  call void @llvm.lifetime.start.p0i8(i64 129, i8* nonnull %289) #6, !dbg !839
  call void @llvm.dbg.declare(metadata [129 x i8]* %10, metadata !356, metadata !DIExpression()), !dbg !840
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(129) %289, i8* nonnull align 1 dereferenceable(129) getelementptr inbounds ([129 x i8], [129 x i8]* @__const.halide_debug_to_file.header, i32 0, i32 0), i32 129, i1 false), !dbg !840
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !841
  call void @llvm.dbg.value(metadata i8* %289, metadata !744, metadata !DIExpression()) #6, !dbg !841
  call void @llvm.dbg.value(metadata i32 128, metadata !745, metadata !DIExpression()) #6, !dbg !841
  %290 = call i32 @fwrite(i8* nonnull %289, i32 128, i32 1, i8* nonnull %34) #5, !dbg !843
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !844, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !849, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 0, metadata !852, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i32 0, metadata !853, metadata !DIExpression()), !dbg !857
  %291 = load i32, i32* %28, align 4, !dbg !858, !tbaa !432
  %292 = icmp sgt i32 %291, 0, !dbg !860
  br i1 %292, label %295, label %293, !dbg !861

293:                                              ; preds = %286
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !497, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !862
  %294 = load i8, i8* %79, align 1, !dbg !864, !tbaa !504
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !865, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i32 0, metadata !869, metadata !DIExpression()), !dbg !873
  br label %332, !dbg !874

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %297 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %296, align 8, !tbaa !480
  br label %298, !dbg !861

298:                                              ; preds = %310, %295
  %299 = phi i32 [ 0, %295 ], [ %312, %310 ]
  %300 = phi i32 [ 0, %295 ], [ %311, %310 ]
  call void @llvm.dbg.value(metadata i32 %299, metadata !853, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i32 %300, metadata !852, metadata !DIExpression()), !dbg !855
  %301 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %299, i32 2, !dbg !875
  %302 = load i32, i32* %301, align 4, !dbg !875, !tbaa !472
  %303 = icmp sgt i32 %302, 0, !dbg !878
  br i1 %303, label %304, label %310, !dbg !879

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %299, i32 1, !dbg !880
  %306 = load i32, i32* %305, align 4, !dbg !880, !tbaa !470
  %307 = add nsw i32 %306, -1, !dbg !882
  %308 = mul nsw i32 %307, %302, !dbg !883
  %309 = add nsw i32 %308, %300, !dbg !884
  call void @llvm.dbg.value(metadata i32 %309, metadata !852, metadata !DIExpression()), !dbg !855
  br label %310, !dbg !885

310:                                              ; preds = %304, %298
  %311 = phi i32 [ %309, %304 ], [ %300, %298 ], !dbg !855
  call void @llvm.dbg.value(metadata i32 %311, metadata !852, metadata !DIExpression()), !dbg !855
  %312 = add nuw nsw i32 %299, 1, !dbg !886
  call void @llvm.dbg.value(metadata i32 %312, metadata !853, metadata !DIExpression()), !dbg !857
  %313 = icmp slt i32 %312, %291, !dbg !860
  br i1 %313, label %298, label %314, !dbg !861, !llvm.loop !887

314:                                              ; preds = %310
  call void @llvm.dbg.value(metadata i32 %311, metadata !852, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !855
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !497, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !862
  %315 = load i8, i8* %79, align 1, !dbg !864, !tbaa !504
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !865, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i32 0, metadata !868, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i32 0, metadata !869, metadata !DIExpression()), !dbg !873
  br label %316, !dbg !874

316:                                              ; preds = %328, %314
  %317 = phi i32 [ 0, %314 ], [ %330, %328 ]
  %318 = phi i32 [ 0, %314 ], [ %329, %328 ]
  call void @llvm.dbg.value(metadata i32 %317, metadata !869, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 %318, metadata !868, metadata !DIExpression()), !dbg !871
  %319 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %317, i32 2, !dbg !889
  %320 = load i32, i32* %319, align 4, !dbg !889, !tbaa !472
  %321 = icmp slt i32 %320, 0, !dbg !893
  br i1 %321, label %322, label %328, !dbg !894

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %317, i32 1, !dbg !895
  %324 = load i32, i32* %323, align 4, !dbg !895, !tbaa !470
  %325 = add nsw i32 %324, -1, !dbg !897
  %326 = mul nsw i32 %325, %320, !dbg !898
  %327 = add nsw i32 %326, %318, !dbg !899
  call void @llvm.dbg.value(metadata i32 %327, metadata !868, metadata !DIExpression()), !dbg !871
  br label %328, !dbg !900

328:                                              ; preds = %322, %316
  %329 = phi i32 [ %327, %322 ], [ %318, %316 ], !dbg !871
  call void @llvm.dbg.value(metadata i32 %329, metadata !868, metadata !DIExpression()), !dbg !871
  %330 = add nuw nsw i32 %317, 1, !dbg !901
  call void @llvm.dbg.value(metadata i32 %330, metadata !869, metadata !DIExpression()), !dbg !873
  %331 = icmp slt i32 %330, %291, !dbg !902
  br i1 %331, label %316, label %332, !dbg !874, !llvm.loop !903

332:                                              ; preds = %328, %293
  %333 = phi i8 [ %294, %293 ], [ %315, %328 ]
  %334 = phi i32 [ 0, %293 ], [ %311, %328 ]
  %335 = phi i32 [ 0, %293 ], [ %329, %328 ], !dbg !871
  %336 = zext i8 %333 to i32, !dbg !864
  %337 = add nuw nsw i32 %336, 7, !dbg !905
  %338 = lshr i32 %337, 3, !dbg !906
  %339 = add nsw i32 %334, 1, !dbg !907
  call void @llvm.dbg.value(metadata i32 %339, metadata !852, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !497, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !908
  %340 = sub i32 %339, %335, !dbg !910
  %341 = mul i32 %340, %338, !dbg !910
  call void @llvm.dbg.value(metadata i32 undef, metadata !360, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %291, metadata !361, metadata !DIExpression()), !dbg !798
  %342 = icmp sgt i32 %291, 2, !dbg !911
  %343 = select i1 %342, i32 %291, i32 2, !dbg !911
  call void @llvm.dbg.value(metadata i32 %343, metadata !361, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %343, metadata !362, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)), !dbg !798
  %344 = bitcast [8 x i32]* %11 to i8*, !dbg !912
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %344) #6, !dbg !912
  call void @llvm.dbg.declare(metadata [8 x i32]* %11, metadata !363, metadata !DIExpression()), !dbg !913
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 0, !dbg !914
  store i32 14, i32* %345, align 4, !dbg !914, !tbaa !490
  %346 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 1, !dbg !914
  %347 = shl i32 %343, 2, !dbg !915
  %348 = add i32 %347, 4, !dbg !915
  %349 = and i32 %348, -8, !dbg !915
  %350 = add i32 %288, 40, !dbg !916
  %351 = add i32 %350, %349, !dbg !917
  %352 = add i32 %351, %341, !dbg !918
  store i32 %352, i32* %346, align 4, !dbg !914, !tbaa !490
  %353 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 2, !dbg !914
  store i32 6, i32* %353, align 4, !dbg !914, !tbaa !490
  %354 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 3, !dbg !914
  store i32 8, i32* %354, align 4, !dbg !914, !tbaa !490
  %355 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 4, !dbg !914
  %356 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE, i32 0, i32 %2, !dbg !919
  %357 = load i8, i8* %356, align 1, !dbg !919, !tbaa !65
  %358 = zext i8 %357 to i32, !dbg !919
  store i32 %358, i32* %355, align 4, !dbg !914, !tbaa !490
  %359 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 5, !dbg !914
  store i32 1, i32* %359, align 4, !dbg !914, !tbaa !490
  %360 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 6, !dbg !914
  store i32 5, i32* %360, align 4, !dbg !914, !tbaa !490
  %361 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 7, !dbg !914
  store i32 %347, i32* %361, align 4, !dbg !914, !tbaa !490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !920
  call void @llvm.dbg.value(metadata i8* %344, metadata !744, metadata !DIExpression()) #6, !dbg !920
  call void @llvm.dbg.value(metadata i32 32, metadata !745, metadata !DIExpression()) #6, !dbg !920
  %362 = call i32 @fwrite(i8* nonnull %344, i32 32, i32 1, i8* nonnull %34) #5, !dbg !923
  %363 = icmp eq i32 %362, 0, !dbg !924
  br i1 %363, label %410, label %364, !dbg !925

364:                                              ; preds = %332
  %365 = bitcast [4 x i32]* %12 to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %365) #6, !dbg !926
  call void @llvm.dbg.declare(metadata [4 x i32]* %12, metadata !367, metadata !DIExpression()), !dbg !927
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 0, !dbg !928
  %367 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1, !dbg !929
  %368 = load i32, i32* %367, align 4, !dbg !929, !tbaa !470
  store i32 %368, i32* %366, align 4, !dbg !928, !tbaa !490
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 1, !dbg !928
  %370 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1, !dbg !930
  %371 = load i32, i32* %370, align 4, !dbg !930, !tbaa !470
  store i32 %371, i32* %369, align 4, !dbg !928, !tbaa !490
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 2, !dbg !928
  %373 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1, !dbg !931
  %374 = load i32, i32* %373, align 4, !dbg !931, !tbaa !470
  store i32 %374, i32* %372, align 4, !dbg !928, !tbaa !490
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 3, !dbg !928
  %376 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1, !dbg !932
  %377 = load i32, i32* %376, align 4, !dbg !932, !tbaa !470
  store i32 %377, i32* %375, align 4, !dbg !928, !tbaa !490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !933
  call void @llvm.dbg.value(metadata i8* %365, metadata !744, metadata !DIExpression()) #6, !dbg !933
  call void @llvm.dbg.value(metadata i32 %349, metadata !745, metadata !DIExpression()) #6, !dbg !933
  %378 = call i32 @fwrite(i8* nonnull %365, i32 %349, i32 1, i8* nonnull %34) #5, !dbg !936
  %379 = icmp eq i32 %378, 0, !dbg !937
  br i1 %379, label %406, label %380, !dbg !938

380:                                              ; preds = %364
  %381 = bitcast [2 x i32]* %13 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %381) #6, !dbg !939
  call void @llvm.dbg.declare(metadata [2 x i32]* %13, metadata !369, metadata !DIExpression()), !dbg !940
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i32 0, i32 0, !dbg !941
  store i32 1, i32* %382, align 4, !dbg !941, !tbaa !490
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i32 0, i32 1, !dbg !941
  store i32 %263, i32* %383, align 4, !dbg !941, !tbaa !490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !942
  call void @llvm.dbg.value(metadata i8* %381, metadata !744, metadata !DIExpression()) #6, !dbg !942
  call void @llvm.dbg.value(metadata i32 8, metadata !745, metadata !DIExpression()) #6, !dbg !942
  %384 = call i32 @fwrite(i8* nonnull %381, i32 8, i32 1, i8* nonnull %34) #5, !dbg !945
  %385 = icmp eq i32 %384, 0, !dbg !946
  br i1 %385, label %402, label %386, !dbg !947

386:                                              ; preds = %380
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !948
  call void @llvm.dbg.value(metadata i8* %264, metadata !744, metadata !DIExpression()) #6, !dbg !948
  call void @llvm.dbg.value(metadata i32 %288, metadata !745, metadata !DIExpression()) #6, !dbg !948
  %387 = call i32 @fwrite(i8* nonnull %264, i32 %288, i32 1, i8* nonnull %34) #5, !dbg !951
  %388 = icmp eq i32 %387, 0, !dbg !952
  br i1 %388, label %402, label %389, !dbg !953

389:                                              ; preds = %386
  %390 = add i32 %341, 7, !dbg !954
  %391 = and i32 %390, 7, !dbg !955
  %392 = xor i32 %391, 7, !dbg !956
  call void @llvm.dbg.value(metadata i32 %392, metadata !285, metadata !DIExpression()), !dbg !405
  %393 = bitcast [2 x i32]* %14 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %393) #6, !dbg !957
  call void @llvm.dbg.declare(metadata [2 x i32]* %14, metadata !371, metadata !DIExpression()), !dbg !958
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i32 0, i32 0, !dbg !959
  %395 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE, i32 0, i32 %2, !dbg !960
  %396 = load i8, i8* %395, align 1, !dbg !960, !tbaa !65
  %397 = zext i8 %396 to i32, !dbg !960
  store i32 %397, i32* %394, align 4, !dbg !959, !tbaa !490
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i32 0, i32 1, !dbg !959
  store i32 %341, i32* %398, align 4, !dbg !959, !tbaa !490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !961
  call void @llvm.dbg.value(metadata i8* %393, metadata !744, metadata !DIExpression()) #6, !dbg !961
  call void @llvm.dbg.value(metadata i32 8, metadata !745, metadata !DIExpression()) #6, !dbg !961
  %399 = call i32 @fwrite(i8* nonnull %393, i32 8, i32 1, i8* nonnull %34) #5, !dbg !964
  %400 = icmp eq i32 %399, 0, !dbg !965
  %401 = zext i1 %400 to i32, !dbg !966
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %393) #6, !dbg !967
  br label %402

402:                                              ; preds = %386, %380, %389
  %403 = phi i32 [ %392, %389 ], [ 0, %380 ], [ 0, %386 ], !dbg !405
  %404 = phi i32 [ %401, %389 ], [ 1, %380 ], [ 1, %386 ]
  %405 = phi i32 [ -11, %389 ], [ -9, %380 ], [ -10, %386 ]
  call void @llvm.dbg.value(metadata i32 %403, metadata !285, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %381) #6, !dbg !967
  br label %406

406:                                              ; preds = %364, %402
  %407 = phi i32 [ %403, %402 ], [ 0, %364 ], !dbg !405
  %408 = phi i32 [ %404, %402 ], [ 1, %364 ]
  %409 = phi i32 [ %405, %402 ], [ -8, %364 ]
  call void @llvm.dbg.value(metadata i32 %407, metadata !285, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %365) #6, !dbg !967
  br label %410

410:                                              ; preds = %332, %406
  %411 = phi i32 [ %407, %406 ], [ 0, %332 ], !dbg !405
  %412 = phi i32 [ %408, %406 ], [ 1, %332 ]
  %413 = phi i32 [ %409, %406 ], [ -7, %332 ]
  call void @llvm.dbg.value(metadata i32 %411, metadata !285, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %344) #6, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 129, i8* nonnull %289) #6, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %264) #6, !dbg !967
  %414 = icmp eq i32 %412, 0
  br i1 %414, label %432, label %588

415:                                              ; preds = %236
  %416 = bitcast [5 x i32]* %15 to i8*, !dbg !968
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %416) #6, !dbg !968
  call void @llvm.dbg.declare(metadata [5 x i32]* %15, metadata !372, metadata !DIExpression()), !dbg !969
  %417 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 0, !dbg !970
  %418 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1, !dbg !971
  %419 = load i32, i32* %418, align 4, !dbg !971, !tbaa !470
  store i32 %419, i32* %417, align 4, !dbg !970, !tbaa !490
  %420 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 1, !dbg !970
  %421 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1, !dbg !972
  %422 = load i32, i32* %421, align 4, !dbg !972, !tbaa !470
  store i32 %422, i32* %420, align 4, !dbg !970, !tbaa !490
  %423 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 2, !dbg !970
  %424 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1, !dbg !973
  %425 = load i32, i32* %424, align 4, !dbg !973, !tbaa !470
  store i32 %425, i32* %423, align 4, !dbg !970, !tbaa !490
  %426 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 3, !dbg !970
  %427 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1, !dbg !974
  %428 = load i32, i32* %427, align 4, !dbg !974, !tbaa !470
  store i32 %428, i32* %426, align 4, !dbg !970, !tbaa !490
  %429 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 4, !dbg !970
  store i32 %2, i32* %429, align 4, !dbg !970, !tbaa !490
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !975
  call void @llvm.dbg.value(metadata i8* %416, metadata !744, metadata !DIExpression()) #6, !dbg !975
  call void @llvm.dbg.value(metadata i32 20, metadata !745, metadata !DIExpression()) #6, !dbg !975
  %430 = call i32 @fwrite(i8* nonnull %416, i32 20, i32 1, i8* nonnull %34) #5, !dbg !978
  %431 = icmp eq i32 %430, 0, !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %416) #6, !dbg !980
  br i1 %431, label %588, label %432

432:                                              ; preds = %233, %410, %415
  %433 = phi i32 [ %411, %410 ], [ 0, %415 ], [ 0, %233 ], !dbg !981
  call void @llvm.dbg.value(metadata i32 %433, metadata !285, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 4096, metadata !377, metadata !DIExpression()), !dbg !405
  %434 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i32 0, i32 0, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %434) #6, !dbg !982
  call void @llvm.dbg.declare(metadata [4096 x i8]* %16, metadata !378, metadata !DIExpression()), !dbg !983
  %435 = udiv i32 4096, %83, !dbg !984
  call void @llvm.dbg.value(metadata i32 %435, metadata !382, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !405
  %436 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 0, !dbg !985
  call void @llvm.dbg.value(metadata i32 undef, metadata !384, metadata !DIExpression()), !dbg !986
  %437 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1, !dbg !987
  %438 = load i32, i32* %437, align 4, !dbg !987, !tbaa !470
  %439 = icmp sgt i32 %438, 0, !dbg !988
  br i1 %439, label %440, label %576, !dbg !989

440:                                              ; preds = %432
  %441 = load i32, i32* %436, align 4, !dbg !985, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %441, metadata !384, metadata !DIExpression()), !dbg !986
  %442 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 0
  %443 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1
  %444 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 0
  %445 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1
  %446 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 0
  %447 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1
  %448 = bitcast [4 x i32]* %17 to i8*
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 0
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 1
  %451 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 2
  %452 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 3
  %453 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %454 = mul nuw nsw i32 %435, %83
  %455 = load i32, i32* %442, align 4, !dbg !990, !tbaa !467
  %456 = load i32, i32* %443, align 4, !dbg !991, !tbaa !470
  br label %457, !dbg !989

457:                                              ; preds = %440, %559
  %458 = phi i32 [ %441, %440 ], [ %560, %559 ]
  %459 = phi i32 [ %438, %440 ], [ %561, %559 ]
  %460 = phi i32 [ %455, %440 ], [ %562, %559 ]
  %461 = phi i32 [ %456, %440 ], [ %563, %559 ]
  %462 = phi i32 [ %456, %440 ], [ %564, %559 ], !dbg !991
  %463 = phi i32 [ %455, %440 ], [ %565, %559 ], !dbg !990
  %464 = phi i32 [ %441, %440 ], [ %567, %559 ]
  %465 = phi i32 [ 0, %440 ], [ %566, %559 ]
  call void @llvm.dbg.value(metadata i32 %464, metadata !384, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 %463, metadata !386, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 %465, metadata !383, metadata !DIExpression()), !dbg !405
  %466 = icmp sgt i32 %462, 0, !dbg !993
  br i1 %466, label %467, label %559, !dbg !994

467:                                              ; preds = %457
  %468 = load i32, i32* %444, align 4, !dbg !995, !tbaa !467
  %469 = load i32, i32* %445, align 4, !dbg !996, !tbaa !470
  br label %470, !dbg !994

470:                                              ; preds = %467, %547
  %471 = phi i32 [ %548, %547 ], [ %460, %467 ]
  %472 = phi i32 [ %549, %547 ], [ %461, %467 ]
  %473 = phi i32 [ %550, %547 ], [ %469, %467 ], !dbg !996
  %474 = phi i32 [ %551, %547 ], [ %468, %467 ], !dbg !995
  %475 = phi i32 [ %553, %547 ], [ %463, %467 ]
  %476 = phi i32 [ %552, %547 ], [ %465, %467 ]
  call void @llvm.dbg.value(metadata i32 %475, metadata !386, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 %474, metadata !390, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %476, metadata !383, metadata !DIExpression()), !dbg !405
  %477 = icmp sgt i32 %473, 0, !dbg !998
  br i1 %477, label %478, label %547, !dbg !999

478:                                              ; preds = %470, %537
  %479 = phi i32 [ %539, %537 ], [ %474, %470 ]
  %480 = phi i32 [ %538, %537 ], [ %476, %470 ]
  call void @llvm.dbg.value(metadata i32 %479, metadata !390, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 undef, metadata !394, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %480, metadata !383, metadata !DIExpression()), !dbg !405
  %481 = load i32, i32* %447, align 4, !dbg !1001, !tbaa !470
  %482 = icmp sgt i32 %481, 0, !dbg !1002
  br i1 %482, label %483, label %537, !dbg !1003

483:                                              ; preds = %478
  %484 = load i32, i32* %446, align 4, !dbg !1004, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %484, metadata !394, metadata !DIExpression()), !dbg !1000
  br label %485, !dbg !1003

485:                                              ; preds = %483, %530
  %486 = phi i32 [ %532, %530 ], [ %484, %483 ]
  %487 = phi i32 [ %531, %530 ], [ %480, %483 ]
  call void @llvm.dbg.value(metadata i32 %486, metadata !394, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %487, metadata !383, metadata !DIExpression()), !dbg !405
  %488 = add nsw i32 %487, 1, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %488, metadata !383, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %448) #6, !dbg !1006
  call void @llvm.dbg.declare(metadata [4 x i32]* %17, metadata !398, metadata !DIExpression()), !dbg !1007
  store i32 %486, i32* %449, align 4, !dbg !1008, !tbaa !490
  store i32 %479, i32* %450, align 4, !dbg !1008, !tbaa !490
  store i32 %475, i32* %451, align 4, !dbg !1008, !tbaa !490
  store i32 %464, i32* %452, align 4, !dbg !1008, !tbaa !490
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !1009, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i32* %449, metadata !1012, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i32 0, metadata !1014, metadata !DIExpression()), !dbg !1018
  %489 = load i32, i32* %28, align 4, !dbg !1019, !tbaa !432
  %490 = icmp sgt i32 %489, 0, !dbg !1021
  br i1 %490, label %491, label %514, !dbg !1022

491:                                              ; preds = %485
  %492 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %453, align 8, !tbaa !480
  call void @llvm.dbg.value(metadata i32 0, metadata !1014, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1013, metadata !DIExpression()), !dbg !1016
  %493 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 0, i32 2, !dbg !1023
  %494 = load i32, i32* %493, align 4, !dbg !1023, !tbaa !472
  %495 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 0, i32 0, !dbg !1025
  %496 = load i32, i32* %495, align 4, !dbg !1025, !tbaa !467
  %497 = sub nsw i32 %486, %496, !dbg !1026
  %498 = mul nsw i32 %497, %494, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %498, metadata !1013, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i32 1, metadata !1014, metadata !DIExpression()), !dbg !1018
  %499 = icmp eq i32 %489, 1, !dbg !1021
  br i1 %499, label %514, label %500, !dbg !1022, !llvm.loop !1028

500:                                              ; preds = %491, %500
  %501 = phi i32 [ %512, %500 ], [ 1, %491 ]
  %502 = phi i32 [ %511, %500 ], [ %498, %491 ]
  %503 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 %501
  %504 = load i32, i32* %503, align 4, !dbg !1030, !tbaa !490
  call void @llvm.dbg.value(metadata i32 %501, metadata !1014, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 %502, metadata !1013, metadata !DIExpression()), !dbg !1016
  %505 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 %501, i32 2, !dbg !1023
  %506 = load i32, i32* %505, align 4, !dbg !1023, !tbaa !472
  %507 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 %501, i32 0, !dbg !1025
  %508 = load i32, i32* %507, align 4, !dbg !1025, !tbaa !467
  %509 = sub nsw i32 %504, %508, !dbg !1026
  %510 = mul nsw i32 %509, %506, !dbg !1027
  %511 = add nsw i32 %510, %502, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %511, metadata !1013, metadata !DIExpression()), !dbg !1016
  %512 = add nuw nsw i32 %501, 1, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %512, metadata !1014, metadata !DIExpression()), !dbg !1018
  %513 = icmp slt i32 %512, %489, !dbg !1021
  br i1 %513, label %500, label %514, !dbg !1022, !llvm.loop !1028

514:                                              ; preds = %500, %491, %485
  %515 = phi i32 [ 0, %485 ], [ %498, %491 ], [ %511, %500 ], !dbg !1016
  %516 = load i8*, i8** %19, align 4, !dbg !1033, !tbaa !413
  call void @llvm.dbg.value(metadata %struct.halide_buffer_t* %3, metadata !497, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !1034
  %517 = load i8, i8* %79, align 1, !dbg !1036, !tbaa !504
  %518 = zext i8 %517 to i32, !dbg !1036
  %519 = add nuw nsw i32 %518, 7, !dbg !1037
  %520 = lshr i32 %519, 3, !dbg !1038
  %521 = mul nsw i32 %520, %515, !dbg !1039
  %522 = getelementptr inbounds i8, i8* %516, i32 %521, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %522, metadata !401, metadata !DIExpression()), !dbg !1041
  %523 = mul nsw i32 %487, %83, !dbg !1042
  %524 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i32 0, i32 %523, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %524, metadata !402, metadata !DIExpression()), !dbg !1041
  %525 = call i8* @memcpy(i8* nonnull %524, i8* %522, i32 %83) #5, !dbg !1044
  %526 = icmp eq i32 %488, %435, !dbg !1045
  br i1 %526, label %527, label %530, !dbg !1047

527:                                              ; preds = %514
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !1048
  call void @llvm.dbg.value(metadata i8* %434, metadata !744, metadata !DIExpression()) #6, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %454, metadata !745, metadata !DIExpression()) #6, !dbg !1048
  %528 = call i32 @fwrite(i8* nonnull %434, i32 %454, i32 1, i8* nonnull %34) #5, !dbg !1052
  %529 = icmp eq i32 %528, 0, !dbg !1053
  br i1 %529, label %585, label %530, !dbg !1054

530:                                              ; preds = %514, %527
  %531 = phi i32 [ 0, %527 ], [ %488, %514 ], !dbg !1041
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %448) #6, !dbg !1055
  %532 = add nsw i32 %486, 1, !dbg !1056
  call void @llvm.dbg.value(metadata i32 %532, metadata !394, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i32 %531, metadata !383, metadata !DIExpression()), !dbg !405
  %533 = load i32, i32* %447, align 4, !dbg !1001, !tbaa !470
  %534 = load i32, i32* %446, align 4, !dbg !1057, !tbaa !467
  %535 = add nsw i32 %534, %533, !dbg !1058
  %536 = icmp slt i32 %532, %535, !dbg !1002
  br i1 %536, label %485, label %537, !dbg !1003, !llvm.loop !1059

537:                                              ; preds = %530, %478
  %538 = phi i32 [ %480, %478 ], [ %531, %530 ]
  %539 = add nsw i32 %479, 1, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %539, metadata !390, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %538, metadata !383, metadata !DIExpression()), !dbg !405
  %540 = load i32, i32* %445, align 4, !dbg !996, !tbaa !470
  %541 = load i32, i32* %444, align 4, !dbg !1062, !tbaa !467
  %542 = add nsw i32 %541, %540, !dbg !1063
  %543 = icmp slt i32 %539, %542, !dbg !998
  br i1 %543, label %478, label %544, !dbg !999, !llvm.loop !1064

544:                                              ; preds = %537
  %545 = load i32, i32* %443, align 4, !dbg !991, !tbaa !470
  %546 = load i32, i32* %442, align 4, !dbg !1066, !tbaa !467
  br label %547, !dbg !1067

547:                                              ; preds = %544, %470
  %548 = phi i32 [ %471, %470 ], [ %546, %544 ], !dbg !1066
  %549 = phi i32 [ %472, %470 ], [ %545, %544 ], !dbg !991
  %550 = phi i32 [ %473, %470 ], [ %540, %544 ]
  %551 = phi i32 [ %474, %470 ], [ %541, %544 ]
  %552 = phi i32 [ %476, %470 ], [ %538, %544 ], !dbg !405
  call void @llvm.dbg.value(metadata i32 undef, metadata !383, metadata !DIExpression()), !dbg !405
  %553 = add nsw i32 %475, 1, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %553, metadata !386, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 %552, metadata !383, metadata !DIExpression()), !dbg !405
  %554 = add nsw i32 %548, %549, !dbg !1068
  %555 = icmp slt i32 %553, %554, !dbg !993
  br i1 %555, label %470, label %556, !dbg !994, !llvm.loop !1069

556:                                              ; preds = %547
  %557 = load i32, i32* %437, align 4, !dbg !987, !tbaa !470
  %558 = load i32, i32* %436, align 4, !dbg !1071, !tbaa !467
  br label %559, !dbg !1072

559:                                              ; preds = %556, %457
  %560 = phi i32 [ %458, %457 ], [ %558, %556 ], !dbg !1071
  %561 = phi i32 [ %459, %457 ], [ %557, %556 ], !dbg !987
  %562 = phi i32 [ %460, %457 ], [ %548, %556 ]
  %563 = phi i32 [ %461, %457 ], [ %549, %556 ]
  %564 = phi i32 [ %462, %457 ], [ %549, %556 ]
  %565 = phi i32 [ %463, %457 ], [ %548, %556 ]
  %566 = phi i32 [ %465, %457 ], [ %552, %556 ], !dbg !405
  call void @llvm.dbg.value(metadata i32 undef, metadata !383, metadata !DIExpression()), !dbg !405
  %567 = add nsw i32 %464, 1, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %567, metadata !384, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 %566, metadata !383, metadata !DIExpression()), !dbg !405
  %568 = add nsw i32 %560, %561, !dbg !1073
  %569 = icmp slt i32 %567, %568, !dbg !988
  br i1 %569, label %457, label %570, !dbg !989, !llvm.loop !1074

570:                                              ; preds = %559
  call void @llvm.dbg.value(metadata i32 undef, metadata !383, metadata !DIExpression()), !dbg !405
  %571 = icmp sgt i32 %566, 0, !dbg !1076
  br i1 %571, label %572, label %576, !dbg !1078

572:                                              ; preds = %570
  %573 = mul nsw i32 %566, %83, !dbg !1079
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !1082
  call void @llvm.dbg.value(metadata i8* %434, metadata !744, metadata !DIExpression()) #6, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %573, metadata !745, metadata !DIExpression()) #6, !dbg !1082
  %574 = call i32 @fwrite(i8* nonnull %434, i32 %573, i32 1, i8* nonnull %34) #5, !dbg !1084
  %575 = icmp eq i32 %574, 0, !dbg !1085
  br i1 %575, label %586, label %576, !dbg !1086

576:                                              ; preds = %432, %572, %570
  %577 = bitcast i64* %18 to i8*, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %577) #6, !dbg !1087
  call void @llvm.dbg.value(metadata i64 0, metadata !403, metadata !DIExpression()), !dbg !405
  store i64 0, i64* %18, align 8, !dbg !1088, !tbaa !1089
  %578 = icmp eq i32 %433, 0, !dbg !1090
  br i1 %578, label %582, label %579, !dbg !1092

579:                                              ; preds = %576
  call void @llvm.dbg.value(metadata i64* %18, metadata !403, metadata !DIExpression(DW_OP_deref)), !dbg !405
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !741, metadata !DIExpression()) #6, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %577, metadata !744, metadata !DIExpression()) #6, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %433, metadata !745, metadata !DIExpression()) #6, !dbg !1093
  %580 = call i32 @fwrite(i8* nonnull %577, i32 %433, i32 1, i8* nonnull %34) #5, !dbg !1097
  %581 = icmp eq i32 %580, 0, !dbg !1098
  br i1 %581, label %583, label %582, !dbg !1099

582:                                              ; preds = %579, %576
  br label %583, !dbg !1100

583:                                              ; preds = %579, %582
  %584 = phi i32 [ 0, %582 ], [ -16, %579 ], !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %577) #6, !dbg !1101
  br label %586

585:                                              ; preds = %527
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %448) #6, !dbg !1055
  br label %586, !dbg !1101

586:                                              ; preds = %585, %572, %583
  %587 = phi i32 [ %584, %583 ], [ -14, %572 ], [ -13, %585 ], !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %434) #6, !dbg !1101
  br label %588

588:                                              ; preds = %586, %415, %410, %234
  %589 = phi i32 [ %587, %586 ], [ %235, %234 ], [ %413, %410 ], [ -12, %415 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #6, !dbg !1101
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedFile"* undef, metadata !1102, metadata !DIExpression()) #6, !dbg !1105
  %590 = call i32 @fclose(i8* nonnull %34) #5, !dbg !1107
  br label %591, !dbg !1111

591:                                              ; preds = %32, %588, %31, %26
  %592 = phi i32 [ -1, %26 ], [ -1, %31 ], [ %589, %588 ], [ -2, %32 ], !dbg !405
  ret i32 %592, !dbg !1101
}

declare !dbg !1112 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #4

declare !dbg !1116 dso_local i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare !dbg !1117 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #4

declare !dbg !1120 dso_local i8* @fopen(i8*, i8*) local_unnamed_addr #4

declare !dbg !1123 dso_local i32 @fwrite(i8*, i32, i32, i8*) local_unnamed_addr #4

declare !dbg !1126 dso_local i32 @fclose(i8*) local_unnamed_addr #4

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
!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

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
!19 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !20, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !35, globals: !46, imports: !47, splitDebugInlining: false, nameTableKind: None)
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
!35 = !{!36, !7, !39, !40, !41, !43, !44}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 12, baseType: !31)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 10, baseType: !42)
!42 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 27, baseType: !31)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !8, line: 28, baseType: !45)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!0, !12, !17}
!47 = !{!48}
!48 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !19, entity: !2, file: !8, line: 225)
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!53 = distinct !DISubprogram(name: "ends_with", linkageName: "_ZN6Halide7Runtime8Internal9ends_withEPKcS3_", scope: !2, file: !5, line: 92, type: !54, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !57)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !36, !36}
!56 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!57 = !{!58, !59, !60, !61}
!58 = !DILocalVariable(name: "filename", arg: 1, scope: !53, file: !5, line: 92, type: !36)
!59 = !DILocalVariable(name: "suffix", arg: 2, scope: !53, file: !5, line: 92, type: !36)
!60 = !DILocalVariable(name: "f", scope: !53, file: !5, line: 93, type: !36)
!61 = !DILocalVariable(name: "s", scope: !53, file: !5, line: 93, type: !36)
!62 = !DILocation(line: 0, scope: !53)
!63 = !DILocation(line: 94, column: 5, scope: !53)
!64 = !DILocation(line: 94, column: 12, scope: !53)
!65 = !{!66, !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !DILocation(line: 95, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !53, file: !5, line: 94, column: 16)
!70 = distinct !{!70, !63, !71, !72}
!71 = !DILocation(line: 96, column: 5, scope: !53)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 97, column: 12, scope: !53)
!74 = !DILocation(line: 98, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !53, file: !5, line: 97, column: 16)
!76 = !DILocation(line: 97, column: 5, scope: !53)
!77 = distinct !{!77, !76, !78, !72}
!78 = !DILocation(line: 99, column: 5, scope: !53)
!79 = !DILocation(line: 100, column: 14, scope: !53)
!80 = !DILocation(line: 100, column: 24, scope: !53)
!81 = !DILocation(line: 100, column: 5, scope: !53)
!82 = !DILocation(line: 104, column: 10, scope: !83)
!83 = distinct !DILexicalBlock(scope: !53, file: !5, line: 100, column: 42)
!84 = !DILocation(line: 105, column: 10, scope: !83)
!85 = distinct !{!85, !81, !86, !72}
!86 = !DILocation(line: 106, column: 5, scope: !53)
!87 = !DILocation(line: 101, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !5, line: 101, column: 13)
!89 = !DILocation(line: 101, column: 13, scope: !83)
!90 = !DILocation(line: 107, column: 18, scope: !53)
!91 = !DILocation(line: 107, column: 12, scope: !53)
!92 = !DILocation(line: 107, column: 15, scope: !53)
!93 = !DILocation(line: 107, column: 5, scope: !53)
!94 = !DILocation(line: 108, column: 1, scope: !53)
!95 = distinct !DISubprogram(name: "halide_debug_to_file", scope: !5, file: !5, line: 132, type: !96, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !249)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !39, !36, !98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 11, baseType: !45)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_buffer_t", file: !23, line: 1423, size: 320, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !101, identifier: "_ZTS15halide_buffer_t")
!101 = !{!102, !103, !154, !156, !157, !190, !191, !214, !215, !220, !224, !227, !228, !231, !232, !235, !238, !239, !240, !245, !248}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !100, file: !23, line: 1425, baseType: !41, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "device_interface", scope: !100, file: !23, line: 1428, baseType: !104, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_t", file: !23, line: 723, size: 512, flags: DIFlagTypePassByValue, elements: !107, identifier: "_ZTS25halide_device_interface_t")
!107 = !{!108, !112, !116, !117, !121, !122, !123, !124, !125, !129, !135, !139, !140, !144, !145, !150}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "device_malloc", scope: !106, file: !23, line: 724, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DISubroutineType(types: !111)
!111 = !{!45, !39, !99, !104}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !106, file: !23, line: 726, baseType: !113, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DISubroutineType(types: !115)
!115 = !{!45, !39, !99}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "device_sync", scope: !106, file: !23, line: 727, baseType: !113, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !106, file: !23, line: 728, baseType: !118, size: 32, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !39, !104}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_host", scope: !106, file: !23, line: 730, baseType: !113, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to_device", scope: !106, file: !23, line: 731, baseType: !109, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_malloc", scope: !106, file: !23, line: 733, baseType: !109, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "device_and_host_free", scope: !106, file: !23, line: 735, baseType: !113, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_copy", scope: !106, file: !23, line: 736, baseType: !126, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!127 = !DISubroutineType(types: !128)
!128 = !{!45, !39, !99, !104, !99}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "device_crop", scope: !106, file: !23, line: 738, baseType: !130, size: 32, offset: 288)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!131 = !DISubroutineType(types: !132)
!132 = !{!45, !39, !133, !99}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "device_slice", scope: !106, file: !23, line: 740, baseType: !136, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!137 = !DISubroutineType(types: !138)
!138 = !{!45, !39, !133, !45, !45, !99}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "device_release_crop", scope: !106, file: !23, line: 742, baseType: !113, size: 32, offset: 352)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "wrap_native", scope: !106, file: !23, line: 743, baseType: !141, size: 32, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DISubroutineType(types: !143)
!143 = !{!45, !39, !99, !41, !104}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "detach_native", scope: !106, file: !23, line: 745, baseType: !113, size: 32, offset: 416)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "compute_capability", scope: !106, file: !23, line: 746, baseType: !146, size: 32, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DISubroutineType(types: !148)
!148 = !{!45, !39, !149, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "impl", scope: !106, file: !23, line: 747, baseType: !151, size: 32, offset: 480)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "halide_device_interface_impl_t", file: !23, line: 707, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS30halide_device_interface_impl_t")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !100, file: !23, line: 1433, baseType: !155, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !23, line: 1436, baseType: !41, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !23, line: 1439, baseType: !158, size: 32, offset: 192)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_type_t", file: !23, line: 430, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !159, identifier: "_ZTS13halide_type_t")
!159 = !{!160, !162, !163, !166, !170, !173, !178, !182, !183, !184, !187}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !158, file: !23, line: 434, baseType: !161, size: 8, align: 8)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_type_code_t", file: !23, line: 413, baseType: !22)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !158, file: !23, line: 442, baseType: !15, size: 8, align: 8, offset: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !158, file: !23, line: 446, baseType: !164, size: 16, align: 16, offset: 16)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 14, baseType: !165)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DISubprogram(name: "halide_type_t", scope: !158, file: !23, line: 453, type: !167, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !161, !15, !164}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!170 = !DISubprogram(name: "halide_type_t", scope: !158, file: !23, line: 459, type: !171, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !169}
!173 = !DISubprogram(name: "with_lanes", linkageName: "_ZNK13halide_type_t10with_lanesEt", scope: !158, file: !23, line: 463, type: !174, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!158, !176, !164}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!178 = !DISubprogram(name: "operator==", linkageName: "_ZNK13halide_type_teqERKS_", scope: !158, file: !23, line: 468, type: !179, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{!56, !176, !181}
!181 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !177, size: 32)
!182 = !DISubprogram(name: "operator!=", linkageName: "_ZNK13halide_type_tneERKS_", scope: !158, file: !23, line: 472, type: !179, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DISubprogram(name: "operator<", linkageName: "_ZNK13halide_type_tltERKS_", scope: !158, file: !23, line: 476, type: !179, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !158, file: !23, line: 481, type: !185, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!45, !176}
!187 = !DISubprogram(name: "as_u32", linkageName: "_ZNK13halide_type_t6as_u32Ev", scope: !158, file: !23, line: 485, type: !188, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{!40, !176}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dimensions", scope: !100, file: !23, line: 1442, baseType: !98, size: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !100, file: !23, line: 1446, baseType: !192, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_dimension_t", file: !23, line: 1409, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_dimension_t", file: !23, line: 1381, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !195, identifier: "_ZTS18halide_dimension_t")
!195 = !{!196, !197, !198, !199, !200, !204, !207, !213}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !194, file: !23, line: 1383, baseType: !98, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !194, file: !23, line: 1383, baseType: !98, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !194, file: !23, line: 1383, baseType: !98, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !23, line: 1386, baseType: !40, size: 32, offset: 96)
!200 = !DISubprogram(name: "halide_dimension_t", scope: !194, file: !23, line: 1388, type: !201, scopeLine: 1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!204 = !DISubprogram(name: "halide_dimension_t", scope: !194, file: !23, line: 1389, type: !205, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !203, !98, !98, !98, !40}
!207 = !DISubprogram(name: "operator==", linkageName: "_ZNK18halide_dimension_teqERKS_", scope: !194, file: !23, line: 1393, type: !208, scopeLine: 1393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DISubroutineType(types: !209)
!209 = !{!56, !210, !212}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!212 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !211, size: 32)
!213 = !DISubprogram(name: "operator!=", linkageName: "_ZNK18halide_dimension_tneERKS_", scope: !194, file: !23, line: 1400, type: !208, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !100, file: !23, line: 1449, baseType: !39, size: 32, offset: 288)
!215 = !DISubprogram(name: "get_flag", linkageName: "_ZNK15halide_buffer_t8get_flagE19halide_buffer_flags", scope: !100, file: !23, line: 1454, type: !216, scopeLine: 1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubroutineType(types: !217)
!217 = !{!56, !218, !219}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_buffer_flags", file: !23, line: 1416, baseType: !30)
!220 = !DISubprogram(name: "set_flag", linkageName: "_ZN15halide_buffer_t8set_flagE19halide_buffer_flagsb", scope: !100, file: !23, line: 1458, type: !221, scopeLine: 1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223, !219, !56}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!224 = !DISubprogram(name: "host_dirty", linkageName: "_ZNK15halide_buffer_t10host_dirtyEv", scope: !100, file: !23, line: 1466, type: !225, scopeLine: 1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{!56, !218}
!227 = !DISubprogram(name: "device_dirty", linkageName: "_ZNK15halide_buffer_t12device_dirtyEv", scope: !100, file: !23, line: 1470, type: !225, scopeLine: 1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubprogram(name: "set_host_dirty", linkageName: "_ZN15halide_buffer_t14set_host_dirtyEb", scope: !100, file: !23, line: 1474, type: !229, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !223, !56}
!231 = !DISubprogram(name: "set_device_dirty", linkageName: "_ZN15halide_buffer_t16set_device_dirtyEb", scope: !100, file: !23, line: 1478, type: !229, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubprogram(name: "number_of_elements", linkageName: "_ZNK15halide_buffer_t18number_of_elementsEv", scope: !100, file: !23, line: 1485, type: !233, scopeLine: 1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{!43, !218}
!235 = !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !100, file: !23, line: 1495, type: !236, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubroutineType(types: !237)
!237 = !{!155, !218}
!238 = !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !100, file: !23, line: 1506, type: !236, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !100, file: !23, line: 1518, type: !233, scopeLine: 1518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !100, file: !23, line: 1523, type: !241, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!155, !218, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!245 = !DISubprogram(name: "device_sync", linkageName: "_ZN15halide_buffer_t11device_syncEPv", scope: !100, file: !23, line: 1534, type: !246, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!45, !223, !39}
!248 = !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !100, file: !23, line: 1545, type: !225, scopeLine: 1545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !{!250, !251, !252, !253, !254, !275, !276, !280, !282, !284, !285, !286, !289, !290, !291, !292, !332, !333, !334, !336, !339, !341, !342, !344, !347, !348, !349, !353, !355, !356, !360, !361, !362, !363, !367, !369, !371, !372, !377, !378, !382, !383, !384, !386, !390, !394, !398, !401, !402, !403}
!250 = !DILocalVariable(name: "user_context", arg: 1, scope: !95, file: !5, line: 132, type: !39)
!251 = !DILocalVariable(name: "filename", arg: 2, scope: !95, file: !5, line: 132, type: !36)
!252 = !DILocalVariable(name: "type_code", arg: 3, scope: !95, file: !5, line: 133, type: !98)
!253 = !DILocalVariable(name: "buf", arg: 4, scope: !95, file: !5, line: 133, type: !99)
!254 = !DILocalVariable(name: "f", scope: !95, file: !5, line: 147, type: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedFile", scope: !2, file: !5, line: 110, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !256, identifier: "_ZTSN6Halide7Runtime8Internal10ScopedFileE")
!256 = !{!257, !258, !262, !265, !270}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !255, file: !5, line: 111, baseType: !39, size: 32)
!258 = !DISubprogram(name: "ScopedFile", scope: !255, file: !5, line: 112, type: !259, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !261, !36, !36}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!262 = !DISubprogram(name: "~ScopedFile", scope: !255, file: !5, line: 115, type: !263, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !261}
!265 = !DISubprogram(name: "write", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFile5writeEPKvj", scope: !255, file: !5, line: 120, type: !266, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{!56, !261, !268, !43}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!270 = !DISubprogram(name: "open", linkageName: "_ZNK6Halide7Runtime8Internal10ScopedFile4openEv", scope: !255, file: !5, line: 123, type: !271, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!56, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!275 = !DILocalVariable(name: "elts", scope: !95, file: !5, line: 152, type: !43)
!276 = !DILocalVariable(name: "shape", scope: !95, file: !5, line: 153, type: !277)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 512, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 4)
!280 = !DILocalVariable(name: "i", scope: !281, file: !5, line: 154, type: !45)
!281 = distinct !DILexicalBlock(scope: !95, file: !5, line: 154, column: 5)
!282 = !DILocalVariable(name: "i", scope: !283, file: !5, line: 158, type: !45)
!283 = distinct !DILexicalBlock(scope: !95, file: !5, line: 158, column: 5)
!284 = !DILocalVariable(name: "bytes_per_element", scope: !95, file: !5, line: 163, type: !98)
!285 = !DILocalVariable(name: "final_padding_bytes", scope: !95, file: !5, line: 165, type: !40)
!286 = !DILocalVariable(name: "channels", scope: !287, file: !5, line: 168, type: !98)
!287 = distinct !DILexicalBlock(scope: !288, file: !5, line: 167, column: 70)
!288 = distinct !DILexicalBlock(scope: !95, file: !5, line: 167, column: 9)
!289 = !DILocalVariable(name: "width", scope: !287, file: !5, line: 169, type: !98)
!290 = !DILocalVariable(name: "height", scope: !287, file: !5, line: 170, type: !98)
!291 = !DILocalVariable(name: "depth", scope: !287, file: !5, line: 171, type: !98)
!292 = !DILocalVariable(name: "header", scope: !287, file: !5, line: 181, type: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_tiff_header", scope: !2, file: !5, line: 79, size: 1680, flags: DIFlagTypePassByValue, elements: !294, identifier: "_ZTSN6Halide7Runtime8Internal18halide_tiff_headerE")
!294 = !{!295, !296, !297, !298, !299, !326, !327, !331}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "byte_order_marker", scope: !293, file: !5, line: 80, baseType: !7, size: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !293, file: !5, line: 81, baseType: !7, size: 16, offset: 16)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ifd0_offset", scope: !293, file: !5, line: 82, baseType: !98, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "entry_count", scope: !293, file: !5, line: 83, baseType: !7, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !293, file: !5, line: 84, baseType: !300, size: 1440, offset: 80)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 1440, elements: !324)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiff_tag", scope: !2, file: !5, line: 47, size: 96, flags: DIFlagTypePassByValue, elements: !302, identifier: "_ZTSN6Halide7Runtime8Internal8tiff_tagE")
!302 = !{!303, !304, !305, !306, !314, !318, !321}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tag_code", scope: !301, file: !5, line: 48, baseType: !164, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type_code", scope: !301, file: !5, line: 49, baseType: !7, size: 16, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !301, file: !5, line: 50, baseType: !98, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !5, line: 55, baseType: !307, size: 32, offset: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !301, file: !5, line: 51, size: 32, flags: DIFlagTypePassByValue, elements: !308, identifier: "_ZTSN6Halide7Runtime8Internal8tiff_tagUt_E")
!308 = !{!309, !312, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !307, file: !5, line: 52, baseType: !310, size: 8)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !8, line: 15, baseType: !311)
!311 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i16", scope: !307, file: !5, line: 53, baseType: !7, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !307, file: !5, line: 54, baseType: !98, size: 32)
!314 = !DISubprogram(name: "assign16", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign16Etis", scope: !301, file: !5, line: 57, type: !315, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317, !164, !98, !7}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!318 = !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etii", scope: !301, file: !5, line: 64, type: !319, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !317, !164, !98, !98}
!321 = !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etsii", scope: !301, file: !5, line: 71, type: !322, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !317, !164, !7, !98, !98}
!324 = !{!325}
!325 = !DISubrange(count: 15)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ifd0_end", scope: !293, file: !5, line: 85, baseType: !98, size: 32, offset: 1520)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "width_resolution", scope: !293, file: !5, line: 86, baseType: !328, size: 64, offset: 1552)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "height_resolution", scope: !293, file: !5, line: 87, baseType: !328, size: 64, offset: 1616)
!332 = !DILocalVariable(name: "MMII", scope: !287, file: !5, line: 183, type: !98)
!333 = !DILocalVariable(name: "c", scope: !287, file: !5, line: 185, type: !36)
!334 = !DILocalVariable(name: "tag", scope: !287, file: !5, line: 192, type: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!336 = !DILocalVariable(name: "offset", scope: !337, file: !5, line: 227, type: !98)
!337 = distinct !DILexicalBlock(scope: !338, file: !5, line: 226, column: 27)
!338 = distinct !DILexicalBlock(scope: !287, file: !5, line: 226, column: 13)
!339 = !DILocalVariable(name: "i", scope: !340, file: !5, line: 229, type: !98)
!340 = distinct !DILexicalBlock(scope: !337, file: !5, line: 229, column: 13)
!341 = !DILocalVariable(name: "count", scope: !337, file: !5, line: 235, type: !98)
!342 = !DILocalVariable(name: "i", scope: !343, file: !5, line: 236, type: !98)
!343 = distinct !DILexicalBlock(scope: !337, file: !5, line: 236, column: 13)
!344 = !DILocalVariable(name: "end", scope: !345, file: !5, line: 244, type: !36)
!345 = distinct !DILexicalBlock(scope: !346, file: !5, line: 242, column: 45)
!346 = distinct !DILexicalBlock(scope: !288, file: !5, line: 242, column: 16)
!347 = !DILocalVariable(name: "start", scope: !345, file: !5, line: 251, type: !36)
!348 = !DILocalVariable(name: "name_size", scope: !345, file: !5, line: 255, type: !40)
!349 = !DILocalVariable(name: "array_name", scope: !345, file: !5, line: 256, type: !350)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 256)
!353 = !DILocalVariable(name: "dst", scope: !345, file: !5, line: 257, type: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!355 = !DILocalVariable(name: "padded_name_size", scope: !345, file: !5, line: 265, type: !40)
!356 = !DILocalVariable(name: "header", scope: !345, file: !5, line: 267, type: !357)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1032, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 129)
!360 = !DILocalVariable(name: "payload_bytes", scope: !345, file: !5, line: 273, type: !43)
!361 = !DILocalVariable(name: "dims", scope: !345, file: !5, line: 281, type: !45)
!362 = !DILocalVariable(name: "padded_dimensions", scope: !345, file: !5, line: 287, type: !45)
!363 = !DILocalVariable(name: "tags", scope: !345, file: !5, line: 289, type: !364)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DILocalVariable(name: "extents", scope: !345, file: !5, line: 301, type: !368)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !278)
!369 = !DILocalVariable(name: "name_header", scope: !345, file: !5, line: 307, type: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !329)
!371 = !DILocalVariable(name: "payload_header", scope: !345, file: !5, line: 319, type: !370)
!372 = !DILocalVariable(name: "header", scope: !373, file: !5, line: 325, type: !374)
!373 = distinct !DILexicalBlock(scope: !346, file: !5, line: 324, column: 12)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 160, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 5)
!377 = !DILocalVariable(name: "TEMP_SIZE", scope: !95, file: !5, line: 336, type: !244)
!378 = !DILocalVariable(name: "temp", scope: !95, file: !5, line: 337, type: !379)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32768, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 4096)
!382 = !DILocalVariable(name: "max_elts", scope: !95, file: !5, line: 338, type: !45)
!383 = !DILocalVariable(name: "counter", scope: !95, file: !5, line: 339, type: !45)
!384 = !DILocalVariable(name: "dim3", scope: !385, file: !5, line: 341, type: !98)
!385 = distinct !DILexicalBlock(scope: !95, file: !5, line: 341, column: 5)
!386 = !DILocalVariable(name: "dim2", scope: !387, file: !5, line: 342, type: !98)
!387 = distinct !DILexicalBlock(scope: !388, file: !5, line: 342, column: 9)
!388 = distinct !DILexicalBlock(scope: !389, file: !5, line: 341, column: 86)
!389 = distinct !DILexicalBlock(scope: !385, file: !5, line: 341, column: 5)
!390 = !DILocalVariable(name: "dim1", scope: !391, file: !5, line: 343, type: !98)
!391 = distinct !DILexicalBlock(scope: !392, file: !5, line: 343, column: 13)
!392 = distinct !DILexicalBlock(scope: !393, file: !5, line: 342, column: 90)
!393 = distinct !DILexicalBlock(scope: !387, file: !5, line: 342, column: 9)
!394 = !DILocalVariable(name: "dim0", scope: !395, file: !5, line: 344, type: !98)
!395 = distinct !DILexicalBlock(scope: !396, file: !5, line: 344, column: 17)
!396 = distinct !DILexicalBlock(scope: !397, file: !5, line: 343, column: 94)
!397 = distinct !DILexicalBlock(scope: !391, file: !5, line: 343, column: 13)
!398 = !DILocalVariable(name: "idx", scope: !399, file: !5, line: 346, type: !368)
!399 = distinct !DILexicalBlock(scope: !400, file: !5, line: 344, column: 98)
!400 = distinct !DILexicalBlock(scope: !395, file: !5, line: 344, column: 17)
!401 = !DILocalVariable(name: "loc", scope: !399, file: !5, line: 347, type: !155)
!402 = !DILocalVariable(name: "dst", scope: !399, file: !5, line: 348, type: !39)
!403 = !DILocalVariable(name: "zero", scope: !95, file: !5, line: 367, type: !404)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!405 = !DILocation(line: 0, scope: !95)
!406 = !DILocalVariable(name: "this", arg: 1, scope: !407, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!407 = distinct !DISubprogram(name: "is_bounds_query", linkageName: "_ZNK15halide_buffer_t15is_bounds_queryEv", scope: !100, file: !23, line: 1545, type: !225, scopeLine: 1545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !248, retainedNodes: !408)
!408 = !{!406}
!409 = !DILocation(line: 0, scope: !407, inlinedAt: !410)
!410 = distinct !DILocation(line: 135, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !95, file: !5, line: 135, column: 9)
!412 = !DILocation(line: 1546, column: 16, scope: !407, inlinedAt: !410)
!413 = !{!414, !416, i64 12}
!414 = !{!"_ZTS15halide_buffer_t", !415, i64 0, !416, i64 8, !416, i64 12, !415, i64 16, !417, i64 24, !420, i64 28, !416, i64 32, !416, i64 36}
!415 = !{!"long long", !66, i64 0}
!416 = !{!"any pointer", !66, i64 0}
!417 = !{!"_ZTS13halide_type_t", !418, i64 0, !66, i64 1, !419, i64 2}
!418 = !{!"_ZTS18halide_type_code_t", !66, i64 0}
!419 = !{!"short", !66, i64 0}
!420 = !{!"int", !66, i64 0}
!421 = !DILocation(line: 1546, column: 21, scope: !407, inlinedAt: !410)
!422 = !DILocation(line: 1546, column: 32, scope: !407, inlinedAt: !410)
!423 = !DILocation(line: 1546, column: 35, scope: !407, inlinedAt: !410)
!424 = !{!414, !415, i64 0}
!425 = !DILocation(line: 1546, column: 42, scope: !407, inlinedAt: !410)
!426 = !DILocation(line: 135, column: 9, scope: !95)
!427 = !DILocation(line: 136, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !411, file: !5, line: 135, column: 33)
!429 = !DILocation(line: 137, column: 9, scope: !428)
!430 = !DILocation(line: 140, column: 14, scope: !431)
!431 = distinct !DILexicalBlock(scope: !95, file: !5, line: 140, column: 9)
!432 = !{!414, !420, i64 28}
!433 = !DILocation(line: 140, column: 25, scope: !431)
!434 = !DILocation(line: 140, column: 9, scope: !95)
!435 = !DILocation(line: 141, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !5, line: 140, column: 30)
!437 = !DILocation(line: 142, column: 9, scope: !436)
!438 = !DILocation(line: 145, column: 5, scope: !95)
!439 = !DILocalVariable(name: "this", arg: 1, scope: !440, type: !444, flags: DIFlagArtificial | DIFlagObjectPointer)
!440 = distinct !DISubprogram(name: "ScopedFile", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFileC2EPKcS4_", scope: !255, file: !5, line: 112, type: !259, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !258, retainedNodes: !441)
!441 = !{!439, !442, !443}
!442 = !DILocalVariable(name: "filename", arg: 2, scope: !440, file: !5, line: 112, type: !36)
!443 = !DILocalVariable(name: "mode", arg: 3, scope: !440, file: !5, line: 112, type: !36)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 32)
!445 = !DILocation(line: 0, scope: !440, inlinedAt: !446)
!446 = distinct !DILocation(line: 147, column: 16, scope: !95)
!447 = !DILocation(line: 113, column: 13, scope: !448, inlinedAt: !446)
!448 = distinct !DILexicalBlock(scope: !440, file: !5, line: 112, column: 70)
!449 = !DILocalVariable(name: "this", arg: 1, scope: !450, type: !452, flags: DIFlagArtificial | DIFlagObjectPointer)
!450 = distinct !DISubprogram(name: "open", linkageName: "_ZNK6Halide7Runtime8Internal10ScopedFile4openEv", scope: !255, file: !5, line: 123, type: !271, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !270, retainedNodes: !451)
!451 = !{!449}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32)
!453 = !DILocation(line: 0, scope: !450, inlinedAt: !454)
!454 = distinct !DILocation(line: 148, column: 12, scope: !455)
!455 = distinct !DILexicalBlock(scope: !95, file: !5, line: 148, column: 9)
!456 = !DILocation(line: 124, column: 18, scope: !450, inlinedAt: !454)
!457 = !DILocation(line: 148, column: 9, scope: !95)
!458 = !DILocation(line: 153, column: 5, scope: !95)
!459 = !DILocation(line: 153, column: 24, scope: !95)
!460 = !DILocalVariable(name: "this", arg: 1, scope: !461, type: !463, flags: DIFlagArtificial | DIFlagObjectPointer)
!461 = distinct !DISubprogram(name: "halide_dimension_t", linkageName: "_ZN18halide_dimension_tC2Ev", scope: !194, file: !23, line: 1388, type: !201, scopeLine: 1388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !200, retainedNodes: !462)
!462 = !{!460}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!464 = !DILocation(line: 0, scope: !461, inlinedAt: !465)
!465 = distinct !DILocation(line: 153, column: 24, scope: !95)
!466 = !DILocation(line: 1383, column: 13, scope: !461, inlinedAt: !465)
!467 = !{!468, !420, i64 0}
!468 = !{!"_ZTS18halide_dimension_t", !420, i64 0, !420, i64 4, !420, i64 8, !420, i64 12}
!469 = !DILocation(line: 1383, column: 22, scope: !461, inlinedAt: !465)
!470 = !{!468, !420, i64 4}
!471 = !DILocation(line: 1383, column: 34, scope: !461, inlinedAt: !465)
!472 = !{!468, !420, i64 8}
!473 = !DILocation(line: 1386, column: 14, scope: !461, inlinedAt: !465)
!474 = !{!468, !420, i64 12}
!475 = !DILocation(line: 0, scope: !281)
!476 = !DILocation(line: 154, column: 30, scope: !477)
!477 = distinct !DILexicalBlock(scope: !281, file: !5, line: 154, column: 5)
!478 = !DILocation(line: 154, column: 23, scope: !477)
!479 = !DILocation(line: 154, column: 5, scope: !281)
!480 = !{!414, !416, i64 32}
!481 = !DILocation(line: 0, scope: !283)
!482 = !DILocation(line: 158, column: 37, scope: !483)
!483 = distinct !DILexicalBlock(scope: !283, file: !5, line: 158, column: 5)
!484 = !DILocation(line: 158, column: 5, scope: !283)
!485 = !DILocation(line: 155, column: 20, scope: !486)
!486 = distinct !DILexicalBlock(scope: !477, file: !5, line: 154, column: 56)
!487 = !DILocation(line: 155, column: 9, scope: !486)
!488 = !DILocation(line: 155, column: 18, scope: !486)
!489 = !{i64 0, i64 4, !490, i64 4, i64 4, !490, i64 8, i64 4, !490, i64 12, i64 4, !490}
!490 = !{!420, !420, i64 0}
!491 = !DILocation(line: 156, column: 26, scope: !486)
!492 = !DILocation(line: 156, column: 14, scope: !486)
!493 = !DILocation(line: 154, column: 52, scope: !477)
!494 = !DILocation(line: 154, column: 41, scope: !477)
!495 = distinct !{!495, !479, !496, !72}
!496 = !DILocation(line: 157, column: 5, scope: !281)
!497 = !DILocalVariable(name: "this", arg: 1, scope: !498, type: !500, flags: DIFlagArtificial | DIFlagObjectPointer)
!498 = distinct !DISubprogram(name: "bytes", linkageName: "_ZNK13halide_type_t5bytesEv", scope: !158, file: !23, line: 481, type: !185, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !184, retainedNodes: !499)
!499 = !{!497}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!501 = !DILocation(line: 0, scope: !498, inlinedAt: !502)
!502 = distinct !DILocation(line: 163, column: 43, scope: !95)
!503 = !DILocation(line: 482, column: 17, scope: !498, inlinedAt: !502)
!504 = !{!417, !66, i64 1}
!505 = !DILocation(line: 482, column: 22, scope: !498, inlinedAt: !502)
!506 = !DILocation(line: 482, column: 27, scope: !498, inlinedAt: !502)
!507 = !DILocation(line: 167, column: 9, scope: !288)
!508 = !DILocation(line: 167, column: 38, scope: !288)
!509 = !DILocation(line: 159, column: 18, scope: !510)
!510 = distinct !DILexicalBlock(scope: !483, file: !5, line: 158, column: 47)
!511 = !DILocation(line: 159, column: 22, scope: !510)
!512 = !DILocation(line: 160, column: 18, scope: !510)
!513 = !DILocation(line: 160, column: 25, scope: !510)
!514 = !DILocation(line: 161, column: 18, scope: !510)
!515 = !DILocation(line: 161, column: 25, scope: !510)
!516 = !DILocation(line: 158, column: 43, scope: !483)
!517 = distinct !{!517, !484, !518, !72}
!518 = !DILocation(line: 162, column: 5, scope: !283)
!519 = !DILocation(line: 167, column: 41, scope: !288)
!520 = !DILocation(line: 167, column: 9, scope: !95)
!521 = !DILocation(line: 169, column: 34, scope: !287)
!522 = !DILocation(line: 0, scope: !287)
!523 = !DILocation(line: 170, column: 35, scope: !287)
!524 = !DILocation(line: 173, column: 23, scope: !525)
!525 = distinct !DILexicalBlock(scope: !287, file: !5, line: 173, column: 13)
!526 = !DILocation(line: 173, column: 35, scope: !525)
!527 = !DILocation(line: 0, scope: !525)
!528 = !DILocation(line: 181, column: 9, scope: !287)
!529 = !DILocation(line: 181, column: 35, scope: !287)
!530 = !DILocation(line: 186, column: 16, scope: !287)
!531 = !DILocation(line: 186, column: 34, scope: !287)
!532 = !{!533, !419, i64 0}
!533 = !{!"_ZTSN6Halide7Runtime8Internal18halide_tiff_headerE", !419, i64 0, !419, i64 2, !420, i64 4, !419, i64 8, !66, i64 10, !420, i64 190, !66, i64 194, !66, i64 202}
!534 = !DILocation(line: 188, column: 16, scope: !287)
!535 = !DILocation(line: 188, column: 24, scope: !287)
!536 = !{!533, !419, i64 2}
!537 = !DILocation(line: 189, column: 16, scope: !287)
!538 = !DILocation(line: 189, column: 28, scope: !287)
!539 = !{!533, !420, i64 4}
!540 = !DILocation(line: 190, column: 16, scope: !287)
!541 = !DILocation(line: 190, column: 28, scope: !287)
!542 = !{!533, !419, i64 8}
!543 = !DILocalVariable(name: "this", arg: 1, scope: !544, type: !335, flags: DIFlagArtificial | DIFlagObjectPointer)
!544 = distinct !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etii", scope: !301, file: !5, line: 64, type: !319, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !318, retainedNodes: !545)
!545 = !{!543, !546, !547, !548}
!546 = !DILocalVariable(name: "tag_code", arg: 2, scope: !544, file: !5, line: 64, type: !164)
!547 = !DILocalVariable(name: "count", arg: 3, scope: !544, file: !5, line: 64, type: !98)
!548 = !DILocalVariable(name: "value", arg: 4, scope: !544, file: !5, line: 64, type: !98)
!549 = !DILocation(line: 0, scope: !544, inlinedAt: !550)
!550 = distinct !DILocation(line: 193, column: 16, scope: !287)
!551 = !DILocation(line: 65, column: 15, scope: !544, inlinedAt: !550)
!552 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !550)
!553 = !{!554, !419, i64 0}
!554 = !{!"_ZTSN6Halide7Runtime8Internal8tiff_tagE", !419, i64 0, !419, i64 2, !420, i64 4, !66, i64 8}
!555 = !DILocation(line: 66, column: 15, scope: !544, inlinedAt: !550)
!556 = !DILocation(line: 66, column: 25, scope: !544, inlinedAt: !550)
!557 = !{!554, !419, i64 2}
!558 = !DILocation(line: 67, column: 15, scope: !544, inlinedAt: !550)
!559 = !DILocation(line: 67, column: 21, scope: !544, inlinedAt: !550)
!560 = !{!554, !420, i64 4}
!561 = !DILocation(line: 68, column: 21, scope: !544, inlinedAt: !550)
!562 = !DILocation(line: 68, column: 25, scope: !544, inlinedAt: !550)
!563 = !DILocation(line: 0, scope: !544, inlinedAt: !564)
!564 = distinct !DILocation(line: 194, column: 16, scope: !287)
!565 = !DILocation(line: 65, column: 15, scope: !544, inlinedAt: !564)
!566 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !564)
!567 = !DILocation(line: 66, column: 15, scope: !544, inlinedAt: !564)
!568 = !DILocation(line: 66, column: 25, scope: !544, inlinedAt: !564)
!569 = !DILocation(line: 67, column: 15, scope: !544, inlinedAt: !564)
!570 = !DILocation(line: 67, column: 21, scope: !544, inlinedAt: !564)
!571 = !DILocation(line: 68, column: 21, scope: !544, inlinedAt: !564)
!572 = !DILocation(line: 68, column: 25, scope: !544, inlinedAt: !564)
!573 = !DILocation(line: 195, column: 41, scope: !287)
!574 = !DILocalVariable(name: "this", arg: 1, scope: !575, type: !335, flags: DIFlagArtificial | DIFlagObjectPointer)
!575 = distinct !DISubprogram(name: "assign16", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign16Etis", scope: !301, file: !5, line: 57, type: !315, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !314, retainedNodes: !576)
!576 = !{!574, !577, !578, !579}
!577 = !DILocalVariable(name: "tag_code", arg: 2, scope: !575, file: !5, line: 57, type: !164)
!578 = !DILocalVariable(name: "count", arg: 3, scope: !575, file: !5, line: 57, type: !98)
!579 = !DILocalVariable(name: "value", arg: 4, scope: !575, file: !5, line: 57, type: !7)
!580 = !DILocation(line: 0, scope: !575, inlinedAt: !581)
!581 = distinct !DILocation(line: 195, column: 16, scope: !287)
!582 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !581)
!583 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !581)
!584 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !581)
!585 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !581)
!586 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !581)
!587 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !581)
!588 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !581)
!589 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !581)
!590 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !581)
!591 = !DILocation(line: 0, scope: !575, inlinedAt: !592)
!592 = distinct !DILocation(line: 196, column: 16, scope: !287)
!593 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !592)
!594 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !592)
!595 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !592)
!596 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !592)
!597 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !592)
!598 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !592)
!599 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !592)
!600 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !592)
!601 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !592)
!602 = !DILocation(line: 197, column: 42, scope: !287)
!603 = !DILocation(line: 197, column: 33, scope: !287)
!604 = !DILocation(line: 0, scope: !575, inlinedAt: !605)
!605 = distinct !DILocation(line: 197, column: 16, scope: !287)
!606 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !605)
!607 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !605)
!608 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !605)
!609 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !605)
!610 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !605)
!611 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !605)
!612 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !605)
!613 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !605)
!614 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !605)
!615 = !DILocation(line: 0, scope: !544, inlinedAt: !616)
!616 = distinct !DILocation(line: 198, column: 16, scope: !287)
!617 = !DILocation(line: 65, column: 15, scope: !544, inlinedAt: !616)
!618 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !616)
!619 = !DILocation(line: 66, column: 15, scope: !544, inlinedAt: !616)
!620 = !DILocation(line: 66, column: 25, scope: !544, inlinedAt: !616)
!621 = !DILocation(line: 67, column: 15, scope: !544, inlinedAt: !616)
!622 = !DILocation(line: 67, column: 21, scope: !544, inlinedAt: !616)
!623 = !DILocation(line: 68, column: 21, scope: !544, inlinedAt: !616)
!624 = !DILocation(line: 68, column: 25, scope: !544, inlinedAt: !616)
!625 = !DILocation(line: 199, column: 41, scope: !287)
!626 = !DILocation(line: 0, scope: !575, inlinedAt: !627)
!627 = distinct !DILocation(line: 199, column: 16, scope: !287)
!628 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !627)
!629 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !627)
!630 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !627)
!631 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !627)
!632 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !627)
!633 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !627)
!634 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !627)
!635 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !627)
!636 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !627)
!637 = !DILocation(line: 0, scope: !544, inlinedAt: !638)
!638 = distinct !DILocation(line: 200, column: 16, scope: !287)
!639 = !DILocation(line: 65, column: 15, scope: !544, inlinedAt: !638)
!640 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !638)
!641 = !DILocation(line: 66, column: 15, scope: !544, inlinedAt: !638)
!642 = !DILocation(line: 66, column: 25, scope: !544, inlinedAt: !638)
!643 = !DILocation(line: 67, column: 15, scope: !544, inlinedAt: !638)
!644 = !DILocation(line: 67, column: 21, scope: !544, inlinedAt: !638)
!645 = !DILocation(line: 68, column: 21, scope: !544, inlinedAt: !638)
!646 = !DILocation(line: 68, column: 25, scope: !544, inlinedAt: !638)
!647 = !DILocation(line: 202, column: 35, scope: !287)
!648 = !DILocation(line: 202, column: 25, scope: !287)
!649 = !DILocation(line: 65, column: 15, scope: !544, inlinedAt: !650)
!650 = distinct !DILocation(line: 201, column: 16, scope: !287)
!651 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !650)
!652 = !DILocation(line: 66, column: 15, scope: !544, inlinedAt: !650)
!653 = !DILocation(line: 66, column: 25, scope: !544, inlinedAt: !650)
!654 = !DILocation(line: 67, column: 15, scope: !544, inlinedAt: !650)
!655 = !DILocation(line: 67, column: 21, scope: !544, inlinedAt: !650)
!656 = !DILocation(line: 68, column: 21, scope: !544, inlinedAt: !650)
!657 = !DILocation(line: 68, column: 25, scope: !544, inlinedAt: !650)
!658 = !DILocalVariable(name: "this", arg: 1, scope: !659, type: !335, flags: DIFlagArtificial | DIFlagObjectPointer)
!659 = distinct !DISubprogram(name: "assign32", linkageName: "_ZN6Halide7Runtime8Internal8tiff_tag8assign32Etsii", scope: !301, file: !5, line: 71, type: !322, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !321, retainedNodes: !660)
!660 = !{!658, !661, !662, !663, !664}
!661 = !DILocalVariable(name: "tag_code", arg: 2, scope: !659, file: !5, line: 71, type: !164)
!662 = !DILocalVariable(name: "type_code", arg: 3, scope: !659, file: !5, line: 71, type: !7)
!663 = !DILocalVariable(name: "count", arg: 4, scope: !659, file: !5, line: 71, type: !98)
!664 = !DILocalVariable(name: "value", arg: 5, scope: !659, file: !5, line: 71, type: !98)
!665 = !DILocation(line: 0, scope: !659, inlinedAt: !666)
!666 = distinct !DILocation(line: 206, column: 16, scope: !287)
!667 = !DILocation(line: 72, column: 15, scope: !659, inlinedAt: !666)
!668 = !DILocation(line: 72, column: 24, scope: !659, inlinedAt: !666)
!669 = !DILocation(line: 73, column: 15, scope: !659, inlinedAt: !666)
!670 = !DILocation(line: 73, column: 25, scope: !659, inlinedAt: !666)
!671 = !DILocation(line: 74, column: 15, scope: !659, inlinedAt: !666)
!672 = !DILocation(line: 74, column: 21, scope: !659, inlinedAt: !666)
!673 = !DILocation(line: 75, column: 21, scope: !659, inlinedAt: !666)
!674 = !DILocation(line: 75, column: 25, scope: !659, inlinedAt: !666)
!675 = !DILocation(line: 0, scope: !659, inlinedAt: !676)
!676 = distinct !DILocation(line: 208, column: 16, scope: !287)
!677 = !DILocation(line: 72, column: 15, scope: !659, inlinedAt: !676)
!678 = !DILocation(line: 72, column: 24, scope: !659, inlinedAt: !676)
!679 = !DILocation(line: 73, column: 15, scope: !659, inlinedAt: !676)
!680 = !DILocation(line: 73, column: 25, scope: !659, inlinedAt: !676)
!681 = !DILocation(line: 74, column: 15, scope: !659, inlinedAt: !676)
!682 = !DILocation(line: 74, column: 21, scope: !659, inlinedAt: !676)
!683 = !DILocation(line: 75, column: 21, scope: !659, inlinedAt: !676)
!684 = !DILocation(line: 75, column: 25, scope: !659, inlinedAt: !676)
!685 = !DILocation(line: 0, scope: !575, inlinedAt: !686)
!686 = distinct !DILocation(line: 210, column: 16, scope: !287)
!687 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !686)
!688 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !686)
!689 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !686)
!690 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !686)
!691 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !686)
!692 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !686)
!693 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !686)
!694 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !686)
!695 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !686)
!696 = !DILocation(line: 0, scope: !575, inlinedAt: !697)
!697 = distinct !DILocation(line: 211, column: 16, scope: !287)
!698 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !697)
!699 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !697)
!700 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !697)
!701 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !697)
!702 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !697)
!703 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !697)
!704 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !697)
!705 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !697)
!706 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !697)
!707 = !DILocation(line: 213, column: 25, scope: !287)
!708 = !{!419, !419, i64 0}
!709 = !DILocation(line: 0, scope: !575, inlinedAt: !710)
!710 = distinct !DILocation(line: 212, column: 16, scope: !287)
!711 = !DILocation(line: 58, column: 15, scope: !575, inlinedAt: !710)
!712 = !DILocation(line: 58, column: 24, scope: !575, inlinedAt: !710)
!713 = !DILocation(line: 59, column: 15, scope: !575, inlinedAt: !710)
!714 = !DILocation(line: 59, column: 25, scope: !575, inlinedAt: !710)
!715 = !DILocation(line: 60, column: 15, scope: !575, inlinedAt: !710)
!716 = !DILocation(line: 60, column: 21, scope: !575, inlinedAt: !710)
!717 = !DILocation(line: 61, column: 15, scope: !575, inlinedAt: !710)
!718 = !DILocation(line: 61, column: 21, scope: !575, inlinedAt: !710)
!719 = !DILocation(line: 61, column: 25, scope: !575, inlinedAt: !710)
!720 = !DILocation(line: 0, scope: !544, inlinedAt: !721)
!721 = distinct !DILocation(line: 214, column: 16, scope: !287)
!722 = !DILocation(line: 65, column: 15, scope: !544, inlinedAt: !721)
!723 = !DILocation(line: 65, column: 24, scope: !544, inlinedAt: !721)
!724 = !DILocation(line: 66, column: 15, scope: !544, inlinedAt: !721)
!725 = !DILocation(line: 66, column: 25, scope: !544, inlinedAt: !721)
!726 = !DILocation(line: 67, column: 15, scope: !544, inlinedAt: !721)
!727 = !DILocation(line: 67, column: 21, scope: !544, inlinedAt: !721)
!728 = !DILocation(line: 68, column: 21, scope: !544, inlinedAt: !721)
!729 = !DILocation(line: 68, column: 25, scope: !544, inlinedAt: !721)
!730 = !DILocation(line: 216, column: 16, scope: !287)
!731 = !DILocation(line: 216, column: 25, scope: !287)
!732 = !{!533, !420, i64 190}
!733 = !DILocation(line: 217, column: 9, scope: !287)
!734 = !DILocation(line: 217, column: 36, scope: !287)
!735 = !DILocation(line: 218, column: 9, scope: !287)
!736 = !DILocation(line: 218, column: 36, scope: !287)
!737 = !DILocation(line: 219, column: 9, scope: !287)
!738 = !DILocation(line: 219, column: 37, scope: !287)
!739 = !DILocation(line: 220, column: 9, scope: !287)
!740 = !DILocation(line: 220, column: 37, scope: !287)
!741 = !DILocalVariable(name: "this", arg: 1, scope: !742, type: !444, flags: DIFlagArtificial | DIFlagObjectPointer)
!742 = distinct !DISubprogram(name: "write", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFile5writeEPKvj", scope: !255, file: !5, line: 120, type: !266, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !265, retainedNodes: !743)
!743 = !{!741, !744, !745}
!744 = !DILocalVariable(name: "ptr", arg: 2, scope: !742, file: !5, line: 120, type: !268)
!745 = !DILocalVariable(name: "bytes", arg: 3, scope: !742, file: !5, line: 120, type: !43)
!746 = !DILocation(line: 0, scope: !742, inlinedAt: !747)
!747 = distinct !DILocation(line: 222, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !287, file: !5, line: 222, column: 13)
!749 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !747)
!750 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !747)
!751 = !DILocation(line: 222, column: 13, scope: !287)
!752 = !DILocation(line: 226, column: 22, scope: !338)
!753 = !DILocation(line: 226, column: 13, scope: !287)
!754 = !DILocation(line: 227, column: 13, scope: !337)
!755 = !DILocation(line: 227, column: 74, scope: !337)
!756 = !DILocation(line: 227, column: 45, scope: !337)
!757 = !DILocation(line: 0, scope: !337)
!758 = !DILocation(line: 227, column: 21, scope: !337)
!759 = !DILocation(line: 0, scope: !340)
!760 = !DILocation(line: 229, column: 13, scope: !340)
!761 = !DILocation(line: 0, scope: !742, inlinedAt: !762)
!762 = distinct !DILocation(line: 230, column: 24, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !5, line: 230, column: 21)
!764 = distinct !DILexicalBlock(scope: !765, file: !5, line: 229, column: 52)
!765 = distinct !DILexicalBlock(scope: !340, file: !5, line: 229, column: 13)
!766 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !762)
!767 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !762)
!768 = !DILocation(line: 230, column: 21, scope: !764)
!769 = !DILocation(line: 233, column: 36, scope: !764)
!770 = !DILocation(line: 233, column: 54, scope: !764)
!771 = !DILocation(line: 233, column: 61, scope: !764)
!772 = !DILocation(line: 233, column: 69, scope: !764)
!773 = !DILocation(line: 233, column: 24, scope: !764)
!774 = !DILocation(line: 229, column: 48, scope: !765)
!775 = !DILocation(line: 229, column: 35, scope: !765)
!776 = distinct !{!776, !760, !777, !72}
!777 = !DILocation(line: 234, column: 13, scope: !340)
!778 = !DILocation(line: 235, column: 13, scope: !337)
!779 = !DILocation(line: 235, column: 21, scope: !337)
!780 = !DILocation(line: 0, scope: !343)
!781 = !DILocation(line: 236, column: 35, scope: !782)
!782 = distinct !DILexicalBlock(scope: !343, file: !5, line: 236, column: 13)
!783 = !DILocation(line: 236, column: 13, scope: !343)
!784 = distinct !{!784, !783, !785, !72}
!785 = !DILocation(line: 240, column: 13, scope: !343)
!786 = !DILocation(line: 0, scope: !742, inlinedAt: !787)
!787 = distinct !DILocation(line: 237, column: 24, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !5, line: 237, column: 21)
!789 = distinct !DILexicalBlock(scope: !782, file: !5, line: 236, column: 52)
!790 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !787)
!791 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !787)
!792 = !DILocation(line: 236, column: 48, scope: !782)
!793 = !DILocation(line: 237, column: 21, scope: !789)
!794 = !DILocation(line: 241, column: 9, scope: !338)
!795 = !DILocation(line: 242, column: 5, scope: !288)
!796 = !DILocation(line: 242, column: 16, scope: !346)
!797 = !DILocation(line: 242, column: 16, scope: !288)
!798 = !DILocation(line: 0, scope: !345)
!799 = !DILocation(line: 245, column: 16, scope: !345)
!800 = !DILocation(line: 246, column: 16, scope: !801)
!801 = distinct !DILexicalBlock(scope: !345, file: !5, line: 245, column: 22)
!802 = !DILocation(line: 245, column: 9, scope: !345)
!803 = distinct !{!803, !802, !804, !72}
!804 = !DILocation(line: 247, column: 9, scope: !345)
!805 = !DILocation(line: 252, column: 9, scope: !345)
!806 = !DILocation(line: 248, column: 16, scope: !345)
!807 = !DILocation(line: 248, column: 21, scope: !345)
!808 = !DILocation(line: 248, column: 9, scope: !345)
!809 = distinct !{!809, !808, !810, !72}
!810 = !DILocation(line: 250, column: 9, scope: !345)
!811 = !DILocation(line: 252, column: 22, scope: !345)
!812 = !DILocation(line: 252, column: 34, scope: !345)
!813 = !DILocation(line: 252, column: 37, scope: !345)
!814 = !DILocation(line: 252, column: 47, scope: !345)
!815 = distinct !{!815, !805, !816, !72}
!816 = !DILocation(line: 254, column: 9, scope: !345)
!817 = !DILocation(line: 255, column: 45, scope: !345)
!818 = !DILocation(line: 256, column: 9, scope: !345)
!819 = !DILocation(line: 256, column: 14, scope: !345)
!820 = !DILocation(line: 258, column: 22, scope: !345)
!821 = !DILocation(line: 258, column: 9, scope: !345)
!822 = !DILocation(line: 261, column: 33, scope: !345)
!823 = !DILocation(line: 261, column: 9, scope: !345)
!824 = !DILocation(line: 261, column: 20, scope: !345)
!825 = !DILocation(line: 259, column: 28, scope: !826)
!826 = distinct !DILexicalBlock(scope: !345, file: !5, line: 258, column: 30)
!827 = !DILocation(line: 259, column: 22, scope: !826)
!828 = !DILocation(line: 259, column: 17, scope: !826)
!829 = !DILocation(line: 259, column: 20, scope: !826)
!830 = distinct !{!830, !821, !831, !72}
!831 = !DILocation(line: 260, column: 9, scope: !345)
!832 = !DILocation(line: 262, column: 17, scope: !833)
!833 = distinct !DILexicalBlock(scope: !345, file: !5, line: 261, column: 55)
!834 = !DILocation(line: 262, column: 20, scope: !833)
!835 = distinct !{!835, !823, !836, !72}
!836 = !DILocation(line: 263, column: 9, scope: !345)
!837 = !DILocation(line: 265, column: 48, scope: !345)
!838 = !DILocation(line: 265, column: 53, scope: !345)
!839 = !DILocation(line: 267, column: 9, scope: !345)
!840 = !DILocation(line: 267, column: 14, scope: !345)
!841 = !DILocation(line: 0, scope: !742, inlinedAt: !842)
!842 = distinct !DILocation(line: 271, column: 11, scope: !345)
!843 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !842)
!844 = !DILocalVariable(name: "this", arg: 1, scope: !845, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!845 = distinct !DISubprogram(name: "size_in_bytes", linkageName: "_ZNK15halide_buffer_t13size_in_bytesEv", scope: !100, file: !23, line: 1518, type: !233, scopeLine: 1518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !239, retainedNodes: !846)
!846 = !{!844}
!847 = !DILocation(line: 0, scope: !845, inlinedAt: !848)
!848 = distinct !DILocation(line: 273, column: 37, scope: !345)
!849 = !DILocalVariable(name: "this", arg: 1, scope: !850, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!850 = distinct !DISubprogram(name: "end", linkageName: "_ZNK15halide_buffer_t3endEv", scope: !100, file: !23, line: 1506, type: !236, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !238, retainedNodes: !851)
!851 = !{!849, !852, !853}
!852 = !DILocalVariable(name: "index", scope: !850, file: !23, line: 1507, type: !44)
!853 = !DILocalVariable(name: "i", scope: !854, file: !23, line: 1508, type: !45)
!854 = distinct !DILexicalBlock(scope: !850, file: !23, line: 1508, column: 9)
!855 = !DILocation(line: 0, scope: !850, inlinedAt: !856)
!856 = distinct !DILocation(line: 1519, column: 25, scope: !845, inlinedAt: !848)
!857 = !DILocation(line: 0, scope: !854, inlinedAt: !856)
!858 = !DILocation(line: 1508, column: 29, scope: !859, inlinedAt: !856)
!859 = distinct !DILexicalBlock(scope: !854, file: !23, line: 1508, column: 9)
!860 = !DILocation(line: 1508, column: 27, scope: !859, inlinedAt: !856)
!861 = !DILocation(line: 1508, column: 9, scope: !854, inlinedAt: !856)
!862 = !DILocation(line: 0, scope: !498, inlinedAt: !863)
!863 = distinct !DILocation(line: 1514, column: 36, scope: !850, inlinedAt: !856)
!864 = !DILocation(line: 482, column: 17, scope: !498, inlinedAt: !863)
!865 = !DILocalVariable(name: "this", arg: 1, scope: !866, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!866 = distinct !DISubprogram(name: "begin", linkageName: "_ZNK15halide_buffer_t5beginEv", scope: !100, file: !23, line: 1495, type: !236, scopeLine: 1495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !235, retainedNodes: !867)
!867 = !{!865, !868, !869}
!868 = !DILocalVariable(name: "index", scope: !866, file: !23, line: 1496, type: !44)
!869 = !DILocalVariable(name: "i", scope: !870, file: !23, line: 1497, type: !45)
!870 = distinct !DILexicalBlock(scope: !866, file: !23, line: 1497, column: 9)
!871 = !DILocation(line: 0, scope: !866, inlinedAt: !872)
!872 = distinct !DILocation(line: 1519, column: 33, scope: !845, inlinedAt: !848)
!873 = !DILocation(line: 0, scope: !870, inlinedAt: !872)
!874 = !DILocation(line: 1497, column: 9, scope: !870, inlinedAt: !872)
!875 = !DILocation(line: 1509, column: 24, scope: !876, inlinedAt: !856)
!876 = distinct !DILexicalBlock(scope: !877, file: !23, line: 1509, column: 17)
!877 = distinct !DILexicalBlock(scope: !859, file: !23, line: 1508, column: 46)
!878 = !DILocation(line: 1509, column: 31, scope: !876, inlinedAt: !856)
!879 = !DILocation(line: 1509, column: 17, scope: !877, inlinedAt: !856)
!880 = !DILocation(line: 1510, column: 61, scope: !881, inlinedAt: !856)
!881 = distinct !DILexicalBlock(scope: !876, file: !23, line: 1509, column: 36)
!882 = !DILocation(line: 1510, column: 68, scope: !881, inlinedAt: !856)
!883 = !DILocation(line: 1510, column: 51, scope: !881, inlinedAt: !856)
!884 = !DILocation(line: 1510, column: 23, scope: !881, inlinedAt: !856)
!885 = !DILocation(line: 1511, column: 13, scope: !881, inlinedAt: !856)
!886 = !DILocation(line: 1508, column: 42, scope: !859, inlinedAt: !856)
!887 = distinct !{!887, !861, !888, !72}
!888 = !DILocation(line: 1512, column: 9, scope: !854, inlinedAt: !856)
!889 = !DILocation(line: 1498, column: 24, scope: !890, inlinedAt: !872)
!890 = distinct !DILexicalBlock(scope: !891, file: !23, line: 1498, column: 17)
!891 = distinct !DILexicalBlock(scope: !892, file: !23, line: 1497, column: 46)
!892 = distinct !DILexicalBlock(scope: !870, file: !23, line: 1497, column: 9)
!893 = !DILocation(line: 1498, column: 31, scope: !890, inlinedAt: !872)
!894 = !DILocation(line: 1498, column: 17, scope: !891, inlinedAt: !872)
!895 = !DILocation(line: 1499, column: 61, scope: !896, inlinedAt: !872)
!896 = distinct !DILexicalBlock(scope: !890, file: !23, line: 1498, column: 36)
!897 = !DILocation(line: 1499, column: 68, scope: !896, inlinedAt: !872)
!898 = !DILocation(line: 1499, column: 51, scope: !896, inlinedAt: !872)
!899 = !DILocation(line: 1499, column: 23, scope: !896, inlinedAt: !872)
!900 = !DILocation(line: 1500, column: 13, scope: !896, inlinedAt: !872)
!901 = !DILocation(line: 1497, column: 42, scope: !892, inlinedAt: !872)
!902 = !DILocation(line: 1497, column: 27, scope: !892, inlinedAt: !872)
!903 = distinct !{!903, !874, !904, !72}
!904 = !DILocation(line: 1501, column: 9, scope: !870, inlinedAt: !872)
!905 = !DILocation(line: 482, column: 22, scope: !498, inlinedAt: !863)
!906 = !DILocation(line: 482, column: 27, scope: !498, inlinedAt: !863)
!907 = !DILocation(line: 1513, column: 15, scope: !850, inlinedAt: !856)
!908 = !DILocation(line: 0, scope: !498, inlinedAt: !909)
!909 = distinct !DILocation(line: 1502, column: 36, scope: !866, inlinedAt: !872)
!910 = !DILocation(line: 1519, column: 31, scope: !845, inlinedAt: !848)
!911 = !DILocation(line: 283, column: 13, scope: !345)
!912 = !DILocation(line: 289, column: 9, scope: !345)
!913 = !DILocation(line: 289, column: 18, scope: !345)
!914 = !DILocation(line: 289, column: 27, scope: !345)
!915 = !DILocation(line: 291, column: 40, scope: !345)
!916 = !DILocation(line: 291, column: 20, scope: !345)
!917 = !DILocation(line: 291, column: 44, scope: !345)
!918 = !DILocation(line: 291, column: 63, scope: !345)
!919 = !DILocation(line: 293, column: 19, scope: !345)
!920 = !DILocation(line: 0, scope: !742, inlinedAt: !921)
!921 = distinct !DILocation(line: 297, column: 16, scope: !922)
!922 = distinct !DILexicalBlock(scope: !345, file: !5, line: 297, column: 13)
!923 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !921)
!924 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !921)
!925 = !DILocation(line: 297, column: 13, scope: !345)
!926 = !DILocation(line: 301, column: 9, scope: !345)
!927 = !DILocation(line: 301, column: 13, scope: !345)
!928 = !DILocation(line: 301, column: 25, scope: !345)
!929 = !DILocation(line: 301, column: 35, scope: !345)
!930 = !DILocation(line: 301, column: 52, scope: !345)
!931 = !DILocation(line: 301, column: 69, scope: !345)
!932 = !DILocation(line: 301, column: 86, scope: !345)
!933 = !DILocation(line: 0, scope: !742, inlinedAt: !934)
!934 = distinct !DILocation(line: 302, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !345, file: !5, line: 302, column: 13)
!936 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !934)
!937 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !934)
!938 = !DILocation(line: 302, column: 13, scope: !345)
!939 = !DILocation(line: 307, column: 9, scope: !345)
!940 = !DILocation(line: 307, column: 18, scope: !345)
!941 = !DILocation(line: 307, column: 35, scope: !345)
!942 = !DILocation(line: 0, scope: !742, inlinedAt: !943)
!943 = distinct !DILocation(line: 308, column: 16, scope: !944)
!944 = distinct !DILexicalBlock(scope: !345, file: !5, line: 308, column: 13)
!945 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !943)
!946 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !943)
!947 = !DILocation(line: 308, column: 13, scope: !345)
!948 = !DILocation(line: 0, scope: !742, inlinedAt: !949)
!949 = distinct !DILocation(line: 312, column: 16, scope: !950)
!950 = distinct !DILexicalBlock(scope: !345, file: !5, line: 312, column: 13)
!951 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !949)
!952 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !949)
!953 = !DILocation(line: 312, column: 13, scope: !345)
!954 = !DILocation(line: 316, column: 51, scope: !345)
!955 = !DILocation(line: 316, column: 56, scope: !345)
!956 = !DILocation(line: 316, column: 33, scope: !345)
!957 = !DILocation(line: 319, column: 9, scope: !345)
!958 = !DILocation(line: 319, column: 18, scope: !345)
!959 = !DILocation(line: 319, column: 38, scope: !345)
!960 = !DILocation(line: 320, column: 13, scope: !345)
!961 = !DILocation(line: 0, scope: !742, inlinedAt: !962)
!962 = distinct !DILocation(line: 321, column: 16, scope: !963)
!963 = distinct !DILexicalBlock(scope: !345, file: !5, line: 321, column: 13)
!964 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !962)
!965 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !962)
!966 = !DILocation(line: 321, column: 13, scope: !345)
!967 = !DILocation(line: 324, column: 5, scope: !346)
!968 = !DILocation(line: 325, column: 9, scope: !373)
!969 = !DILocation(line: 325, column: 17, scope: !373)
!970 = !DILocation(line: 325, column: 28, scope: !373)
!971 = !DILocation(line: 325, column: 38, scope: !373)
!972 = !DILocation(line: 326, column: 38, scope: !373)
!973 = !DILocation(line: 327, column: 38, scope: !373)
!974 = !DILocation(line: 328, column: 38, scope: !373)
!975 = !DILocation(line: 0, scope: !742, inlinedAt: !976)
!976 = distinct !DILocation(line: 330, column: 16, scope: !977)
!977 = distinct !DILexicalBlock(scope: !373, file: !5, line: 330, column: 13)
!978 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !976)
!979 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !976)
!980 = !DILocation(line: 333, column: 5, scope: !346)
!981 = !DILocation(line: 165, column: 14, scope: !95)
!982 = !DILocation(line: 337, column: 5, scope: !95)
!983 = !DILocation(line: 337, column: 13, scope: !95)
!984 = !DILocation(line: 338, column: 30, scope: !95)
!985 = !DILocation(line: 341, column: 34, scope: !385)
!986 = !DILocation(line: 0, scope: !385)
!987 = !DILocation(line: 341, column: 55, scope: !389)
!988 = !DILocation(line: 341, column: 44, scope: !389)
!989 = !DILocation(line: 341, column: 5, scope: !385)
!990 = !DILocation(line: 342, column: 38, scope: !387)
!991 = !DILocation(line: 342, column: 59, scope: !393)
!992 = !DILocation(line: 0, scope: !387)
!993 = !DILocation(line: 342, column: 48, scope: !393)
!994 = !DILocation(line: 342, column: 9, scope: !387)
!995 = !DILocation(line: 343, column: 42, scope: !391)
!996 = !DILocation(line: 343, column: 63, scope: !397)
!997 = !DILocation(line: 0, scope: !391)
!998 = !DILocation(line: 343, column: 52, scope: !397)
!999 = !DILocation(line: 343, column: 13, scope: !391)
!1000 = !DILocation(line: 0, scope: !395)
!1001 = !DILocation(line: 344, column: 67, scope: !400)
!1002 = !DILocation(line: 344, column: 56, scope: !400)
!1003 = !DILocation(line: 344, column: 17, scope: !395)
!1004 = !DILocation(line: 344, column: 46, scope: !395)
!1005 = !DILocation(line: 345, column: 28, scope: !399)
!1006 = !DILocation(line: 346, column: 21, scope: !399)
!1007 = !DILocation(line: 346, column: 25, scope: !399)
!1008 = !DILocation(line: 346, column: 33, scope: !399)
!1009 = !DILocalVariable(name: "this", arg: 1, scope: !1010, type: !133, flags: DIFlagArtificial | DIFlagObjectPointer)
!1010 = distinct !DISubprogram(name: "address_of", linkageName: "_ZNK15halide_buffer_t10address_ofEPKi", scope: !100, file: !23, line: 1523, type: !241, scopeLine: 1523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !240, retainedNodes: !1011)
!1011 = !{!1009, !1012, !1013, !1014}
!1012 = !DILocalVariable(name: "pos", arg: 2, scope: !1010, file: !23, line: 1523, type: !243)
!1013 = !DILocalVariable(name: "index", scope: !1010, file: !23, line: 1524, type: !44)
!1014 = !DILocalVariable(name: "i", scope: !1015, file: !23, line: 1525, type: !45)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !23, line: 1525, column: 9)
!1016 = !DILocation(line: 0, scope: !1010, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 347, column: 41, scope: !399)
!1018 = !DILocation(line: 0, scope: !1015, inlinedAt: !1017)
!1019 = !DILocation(line: 1525, column: 29, scope: !1020, inlinedAt: !1017)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !23, line: 1525, column: 9)
!1021 = !DILocation(line: 1525, column: 27, scope: !1020, inlinedAt: !1017)
!1022 = !DILocation(line: 1525, column: 9, scope: !1015, inlinedAt: !1017)
!1023 = !DILocation(line: 1526, column: 40, scope: !1024, inlinedAt: !1017)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !23, line: 1525, column: 46)
!1025 = !DILocation(line: 1526, column: 66, scope: !1024, inlinedAt: !1017)
!1026 = !DILocation(line: 1526, column: 57, scope: !1024, inlinedAt: !1017)
!1027 = !DILocation(line: 1526, column: 47, scope: !1024, inlinedAt: !1017)
!1028 = distinct !{!1028, !1022, !1029, !72}
!1029 = !DILocation(line: 1527, column: 9, scope: !1015, inlinedAt: !1017)
!1030 = !DILocation(line: 1526, column: 50, scope: !1024, inlinedAt: !1017)
!1031 = !DILocation(line: 1526, column: 19, scope: !1024, inlinedAt: !1017)
!1032 = !DILocation(line: 1525, column: 42, scope: !1020, inlinedAt: !1017)
!1033 = !DILocation(line: 1528, column: 16, scope: !1010, inlinedAt: !1017)
!1034 = !DILocation(line: 0, scope: !498, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 1528, column: 36, scope: !1010, inlinedAt: !1017)
!1036 = !DILocation(line: 482, column: 17, scope: !498, inlinedAt: !1035)
!1037 = !DILocation(line: 482, column: 22, scope: !498, inlinedAt: !1035)
!1038 = !DILocation(line: 482, column: 27, scope: !498, inlinedAt: !1035)
!1039 = !DILocation(line: 1528, column: 29, scope: !1010, inlinedAt: !1017)
!1040 = !DILocation(line: 1528, column: 21, scope: !1010, inlinedAt: !1017)
!1041 = !DILocation(line: 0, scope: !399)
!1042 = !DILocation(line: 348, column: 54, scope: !399)
!1043 = !DILocation(line: 348, column: 38, scope: !399)
!1044 = !DILocation(line: 349, column: 21, scope: !399)
!1045 = !DILocation(line: 351, column: 33, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !399, file: !5, line: 351, column: 25)
!1047 = !DILocation(line: 351, column: 25, scope: !399)
!1048 = !DILocation(line: 0, scope: !742, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 353, column: 32, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !5, line: 353, column: 29)
!1051 = distinct !DILexicalBlock(scope: !1046, file: !5, line: 351, column: 46)
!1052 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !1049)
!1053 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !1049)
!1054 = !DILocation(line: 353, column: 29, scope: !1051)
!1055 = !DILocation(line: 357, column: 17, scope: !400)
!1056 = !DILocation(line: 344, column: 90, scope: !400)
!1057 = !DILocation(line: 344, column: 85, scope: !400)
!1058 = !DILocation(line: 344, column: 74, scope: !400)
!1059 = distinct !{!1059, !1003, !1060, !72}
!1060 = !DILocation(line: 357, column: 17, scope: !395)
!1061 = !DILocation(line: 343, column: 86, scope: !397)
!1062 = !DILocation(line: 343, column: 81, scope: !397)
!1063 = !DILocation(line: 343, column: 70, scope: !397)
!1064 = distinct !{!1064, !999, !1065, !72}
!1065 = !DILocation(line: 358, column: 13, scope: !391)
!1066 = !DILocation(line: 342, column: 77, scope: !393)
!1067 = !DILocation(line: 342, column: 82, scope: !393)
!1068 = !DILocation(line: 342, column: 66, scope: !393)
!1069 = distinct !{!1069, !994, !1070, !72}
!1070 = !DILocation(line: 359, column: 9, scope: !387)
!1071 = !DILocation(line: 341, column: 73, scope: !389)
!1072 = !DILocation(line: 341, column: 78, scope: !389)
!1073 = !DILocation(line: 341, column: 62, scope: !389)
!1074 = distinct !{!1074, !989, !1075, !72}
!1075 = !DILocation(line: 360, column: 5, scope: !385)
!1076 = !DILocation(line: 361, column: 17, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !95, file: !5, line: 361, column: 9)
!1078 = !DILocation(line: 361, column: 9, scope: !95)
!1079 = !DILocation(line: 362, column: 44, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !5, line: 362, column: 13)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !5, line: 361, column: 22)
!1082 = !DILocation(line: 0, scope: !742, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 362, column: 16, scope: !1080)
!1084 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !1083)
!1085 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !1083)
!1086 = !DILocation(line: 362, column: 13, scope: !1081)
!1087 = !DILocation(line: 367, column: 5, scope: !95)
!1088 = !DILocation(line: 367, column: 20, scope: !95)
!1089 = !{!415, !415, i64 0}
!1090 = !DILocation(line: 368, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !95, file: !5, line: 368, column: 9)
!1092 = !DILocation(line: 368, column: 9, scope: !95)
!1093 = !DILocation(line: 0, scope: !742, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 373, column: 16, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !5, line: 373, column: 13)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !5, line: 368, column: 30)
!1097 = !DILocation(line: 121, column: 20, scope: !742, inlinedAt: !1094)
!1098 = !DILocation(line: 121, column: 45, scope: !742, inlinedAt: !1094)
!1099 = !DILocation(line: 373, column: 13, scope: !1096)
!1100 = !DILocation(line: 378, column: 5, scope: !95)
!1101 = !DILocation(line: 379, column: 1, scope: !95)
!1102 = !DILocalVariable(name: "this", arg: 1, scope: !1103, type: !444, flags: DIFlagArtificial | DIFlagObjectPointer)
!1103 = distinct !DISubprogram(name: "~ScopedFile", linkageName: "_ZN6Halide7Runtime8Internal10ScopedFileD2Ev", scope: !255, file: !5, line: 115, type: !263, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, declaration: !262, retainedNodes: !1104)
!1104 = !{!1102}
!1105 = !DILocation(line: 0, scope: !1103, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 379, column: 1, scope: !95)
!1107 = !DILocation(line: 117, column: 13, scope: !1108, inlinedAt: !1106)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !5, line: 116, column: 16)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !5, line: 116, column: 13)
!1110 = distinct !DILexicalBlock(scope: !1103, file: !5, line: 115, column: 33)
!1111 = !DILocation(line: 118, column: 9, scope: !1108, inlinedAt: !1106)
!1112 = !DISubprogram(name: "halide_error", scope: !23, file: !23, line: 111, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !39, !36}
!1115 = !{}
!1116 = !DISubprogram(name: "halide_copy_to_host", scope: !23, file: !23, line: 761, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1115)
!1117 = !DISubprogram(name: "memcpy", scope: !8, file: !8, line: 94, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1115)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!39, !39, !268, !31}
!1120 = !DISubprogram(name: "fopen", scope: !8, file: !8, line: 99, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1115)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!39, !36, !36}
!1123 = !DISubprogram(name: "fwrite", scope: !8, file: !8, line: 103, type: !1124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1115)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!31, !268, !31, !31, !39}
!1126 = !DISubprogram(name: "fclose", scope: !8, file: !8, line: 101, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1115)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!45, !39}
