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

@_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE = weak local_unnamed_addr global [10 x i16] [i16 3, i16 3, i16 1, i16 2, i16 1, i16 2, i16 1, i16 2, i16 1, i16 2], align 2
@_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE = weak local_unnamed_addr global [10 x i8] c"\07\06\09\08\0B\0A\0D\0C\0F\0E", align 1
@_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE = weak local_unnamed_addr global [10 x i8] c"\07\09\02\01\04\03\06\05\0D\0C", align 1
@.str = private unnamed_addr constant [51 x i8] c"Bounds query buffer passed to halide_debug_to_file\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't debug_to_file a Func with more than four dimensions\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".tiff\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".tif\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".mat\00", align 1
@__const.halide_debug_to_file.header = private unnamed_addr constant [129 x i8] c"MATLAB 5.0 MAT-file, produced by Halide                                                                                     \00\01IM\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Can't debug_to_file to a .mat file greater than 4GB\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %0, i8* %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i8* [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, i8* %4, align 1, !tbaa !3
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds i8, i8* %4, i64 1
  br i1 %6, label %8, label %3, !llvm.loop !6

8:                                                ; preds = %3, %8
  %9 = phi i8* [ %12, %8 ], [ %1, %3 ]
  %10 = load i8, i8* %9, align 1, !tbaa !3
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  br i1 %11, label %13, label %8, !llvm.loop !8

13:                                               ; preds = %8
  %14 = icmp ne i8* %9, %1
  %15 = icmp ne i8* %4, %0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %27
  %18 = phi i8* [ %20, %27 ], [ %4, %13 ]
  %19 = phi i8* [ %21, %27 ], [ %9, %13 ]
  %20 = getelementptr inbounds i8, i8* %18, i64 -1
  %21 = getelementptr inbounds i8, i8* %19, i64 -1
  %22 = icmp ne i8* %21, %1
  %23 = icmp ne i8* %20, %0
  %24 = and i1 %23, %22
  %25 = load i8, i8* %20, align 1, !tbaa !3
  %26 = load i8, i8* %21, align 1, !tbaa !3
  br i1 %24, label %27, label %29, !llvm.loop !9

27:                                               ; preds = %17
  %28 = icmp eq i8 %25, %26
  br i1 %28, label %17, label %33

29:                                               ; preds = %17, %13
  %30 = phi i8 [ 0, %13 ], [ %26, %17 ]
  %31 = phi i8 [ 0, %13 ], [ %25, %17 ]
  %32 = icmp eq i8 %31, %30
  br label %33

33:                                               ; preds = %27, %29
  %34 = phi i1 [ %32, %29 ], [ false, %27 ]
  ret i1 %34
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
define weak i32 @halide_debug_to_file(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3) local_unnamed_addr #2 {
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
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8, !tbaa !10
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0)) #4
  br label %618

27:                                               ; preds = %4, %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !19
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %618

32:                                               ; preds = %27
  %33 = tail call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* nonnull %3) #4
  %34 = tail call i8* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #4
  %35 = icmp eq i8* %34, null
  br i1 %35, label %618, label %36

36:                                               ; preds = %32
  %37 = bitcast [4 x %struct.halide_dimension_t]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #5
  %38 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 0
  store i32 0, i32* %38, align 4, !tbaa !20
  %39 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1
  store i32 0, i32* %39, align 4, !tbaa !22
  %40 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 2
  store i32 0, i32* %40, align 4, !tbaa !23
  %41 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 3
  store i32 0, i32* %41, align 4, !tbaa !24
  %42 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 0
  store i32 0, i32* %42, align 4, !tbaa !20
  %43 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1
  store i32 0, i32* %43, align 4, !tbaa !22
  %44 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 2
  store i32 0, i32* %44, align 4, !tbaa !23
  %45 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 3
  store i32 0, i32* %45, align 4, !tbaa !24
  %46 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 0
  store i32 0, i32* %46, align 4, !tbaa !20
  %47 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1
  store i32 0, i32* %47, align 4, !tbaa !22
  %48 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 2
  store i32 0, i32* %48, align 4, !tbaa !23
  %49 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 3
  store i32 0, i32* %49, align 4, !tbaa !24
  %50 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 0
  store i32 0, i32* %50, align 4, !tbaa !20
  %51 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1
  store i32 0, i32* %51, align 4, !tbaa !22
  %52 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 2
  store i32 0, i32* %52, align 4, !tbaa !23
  %53 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 3
  store i32 0, i32* %53, align 4, !tbaa !24
  %54 = load i32, i32* %28, align 4, !tbaa !19
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %58 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %57, align 8, !tbaa !25
  %59 = zext i32 %54 to i64
  br label %65

60:                                               ; preds = %65
  %61 = icmp slt i32 %54, 4
  br i1 %61, label %62, label %80

62:                                               ; preds = %36, %60
  %63 = phi i64 [ %75, %60 ], [ 1, %36 ]
  %64 = sext i32 %54 to i64
  br label %88

65:                                               ; preds = %56, %65
  %66 = phi i64 [ 0, %56 ], [ %76, %65 ]
  %67 = phi i64 [ 1, %56 ], [ %75, %65 ]
  %68 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %58, i64 %66
  %69 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %66
  %70 = bitcast %struct.halide_dimension_t* %69 to i8*
  %71 = bitcast %struct.halide_dimension_t* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %70, i8* nonnull align 4 dereferenceable(16) %71, i64 16, i1 false), !tbaa.struct !26
  %72 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %66, i32 1
  %73 = load i32, i32* %72, align 4, !tbaa !22
  %74 = zext i32 %73 to i64
  %75 = mul i64 %67, %74
  %76 = add nuw nsw i64 %66, 1
  %77 = icmp ult i64 %76, %59
  %78 = icmp ult i64 %66, 3
  %79 = and i1 %78, %77
  br i1 %79, label %65, label %60, !llvm.loop !28

80:                                               ; preds = %88, %60
  %81 = phi i64 [ %75, %60 ], [ %63, %88 ]
  %82 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %83 = load i8, i8* %82, align 1, !tbaa !29
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %84, 7
  %86 = lshr i32 %85, 3
  %87 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #6
  br i1 %87, label %98, label %96

88:                                               ; preds = %62, %88
  %89 = phi i64 [ %64, %62 ], [ %93, %88 ]
  %90 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %89, i32 0
  store i32 0, i32* %90, align 4, !tbaa !20
  %91 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %89, i32 1
  store i32 1, i32* %91, align 4, !tbaa !22
  %92 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 %89, i32 2
  store i32 0, i32* %92, align 4, !tbaa !23
  %93 = add nsw i64 %89, 1
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %80, label %88, !llvm.loop !30

96:                                               ; preds = %80
  %97 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6
  br i1 %97, label %98, label %242

98:                                               ; preds = %96, %80
  %99 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1
  %100 = load i32, i32* %99, align 4, !tbaa !22
  %101 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1
  %102 = load i32, i32* %101, align 4, !tbaa !22
  %103 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1
  %104 = load i32, i32* %103, align 4, !tbaa !22
  %105 = icmp ult i32 %104, 2
  %106 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1
  %107 = load i32, i32* %106, align 4, !tbaa !22
  %108 = icmp slt i32 %107, 5
  %109 = and i1 %105, %108
  %110 = select i1 %109, i32 1, i32 %107
  %111 = select i1 %109, i32 %107, i32 %104
  %112 = bitcast %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 210, i8* nonnull %112) #5
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 0
  store i16 18761, i16* %113, align 2, !tbaa !31
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 1
  store i16 42, i16* %114, align 2, !tbaa !33
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 2
  store i32 8, i32* %115, align 2, !tbaa !34
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 3
  store i16 15, i16* %116, align 2, !tbaa !35
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 0
  store i16 256, i16* %117, align 2, !tbaa !36
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 1
  store i16 4, i16* %118, align 2, !tbaa !38
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 2
  store i32 1, i32* %119, align 2, !tbaa !39
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 0, i32 3, i32 0
  store i32 %100, i32* %120, align 2, !tbaa !3
  %121 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 0
  store i16 257, i16* %121, align 2, !tbaa !36
  %122 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 1
  store i16 4, i16* %122, align 2, !tbaa !38
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 2
  store i32 1, i32* %123, align 2, !tbaa !39
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 1, i32 3, i32 0
  store i32 %102, i32* %124, align 2, !tbaa !3
  %125 = trunc i32 %85 to i16
  %126 = and i16 %125, 504
  %127 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 0
  store i16 258, i16* %127, align 2, !tbaa !36
  %128 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 1
  store i16 3, i16* %128, align 2, !tbaa !38
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 2
  store i32 1, i32* %129, align 2, !tbaa !39
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 2, i32 3
  %131 = bitcast %union.anon* %130 to i16*
  store i16 %126, i16* %131, align 2, !tbaa !3
  %132 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 0
  store i16 259, i16* %132, align 2, !tbaa !36
  %133 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 1
  store i16 3, i16* %133, align 2, !tbaa !38
  %134 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 2
  store i32 1, i32* %134, align 2, !tbaa !39
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 3, i32 3
  %136 = bitcast %union.anon* %135 to i16*
  store i16 1, i16* %136, align 2, !tbaa !3
  %137 = icmp sgt i32 %111, 2
  %138 = select i1 %137, i16 2, i16 1
  %139 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 0
  store i16 262, i16* %139, align 2, !tbaa !36
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 1
  store i16 3, i16* %140, align 2, !tbaa !38
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 2
  store i32 1, i32* %141, align 2, !tbaa !39
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 4, i32 3
  %143 = bitcast %union.anon* %142 to i16*
  store i16 %138, i16* %143, align 2, !tbaa !3
  %144 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 0
  store i16 273, i16* %144, align 2, !tbaa !36
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 1
  store i16 4, i16* %145, align 2, !tbaa !38
  %146 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 2
  store i32 %111, i32* %146, align 2, !tbaa !39
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 5, i32 3, i32 0
  store i32 210, i32* %147, align 2, !tbaa !3
  %148 = trunc i32 %111 to i16
  %149 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 0
  store i16 277, i16* %149, align 2, !tbaa !36
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 1
  store i16 3, i16* %150, align 2, !tbaa !38
  %151 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 2
  store i32 1, i32* %151, align 2, !tbaa !39
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 6, i32 3
  %153 = bitcast %union.anon* %152 to i16*
  store i16 %148, i16* %153, align 2, !tbaa !3
  %154 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 0
  store i16 278, i16* %154, align 2, !tbaa !36
  %155 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 1
  store i16 4, i16* %155, align 2, !tbaa !38
  %156 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 2
  store i32 1, i32* %156, align 2, !tbaa !39
  %157 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 7, i32 3, i32 0
  store i32 %102, i32* %157, align 2, !tbaa !3
  %158 = icmp eq i32 %111, 1
  %159 = trunc i64 %81 to i32
  %160 = mul i32 %86, %159
  %161 = shl i32 %111, 2
  %162 = add i32 %161, 210
  %163 = select i1 %158, i32 %160, i32 %162
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 0
  store i16 279, i16* %164, align 2
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 1
  store i16 4, i16* %165, align 2
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 2
  store i32 %111, i32* %166, align 2
  %167 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 8, i32 3, i32 0
  store i32 %163, i32* %167, align 2
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 0
  store i16 282, i16* %168, align 2, !tbaa !36
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 1
  store i16 5, i16* %169, align 2, !tbaa !38
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 2
  store i32 1, i32* %170, align 2, !tbaa !39
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 9, i32 3, i32 0
  store i32 194, i32* %171, align 2, !tbaa !3
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 0
  store i16 283, i16* %172, align 2, !tbaa !36
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 1
  store i16 5, i16* %173, align 2, !tbaa !38
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 2
  store i32 1, i32* %174, align 2, !tbaa !39
  %175 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 10, i32 3, i32 0
  store i32 202, i32* %175, align 2, !tbaa !3
  %176 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 0
  store i16 284, i16* %176, align 2, !tbaa !36
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 1
  store i16 3, i16* %177, align 2, !tbaa !38
  %178 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 2
  store i32 1, i32* %178, align 2, !tbaa !39
  %179 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 11, i32 3
  %180 = bitcast %union.anon* %179 to i16*
  store i16 2, i16* %180, align 2, !tbaa !3
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 0
  store i16 296, i16* %181, align 2, !tbaa !36
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 1
  store i16 3, i16* %182, align 2, !tbaa !38
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 2
  store i32 1, i32* %183, align 2, !tbaa !39
  %184 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 12, i32 3
  %185 = bitcast %union.anon* %184 to i16*
  store i16 1, i16* %185, align 2, !tbaa !3
  %186 = sext i32 %2 to i64
  %187 = getelementptr inbounds [10 x i16], [10 x i16]* @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, i64 0, i64 %186
  %188 = load i16, i16* %187, align 2, !tbaa !40
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 0
  store i16 339, i16* %189, align 2, !tbaa !36
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 1
  store i16 3, i16* %190, align 2, !tbaa !38
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 2
  store i32 1, i32* %191, align 2, !tbaa !39
  %192 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 13, i32 3
  %193 = bitcast %union.anon* %192 to i16*
  store i16 %188, i16* %193, align 2, !tbaa !3
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 0
  store i16 -32539, i16* %194, align 2, !tbaa !36
  %195 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 1
  store i16 4, i16* %195, align 2, !tbaa !38
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 2
  store i32 1, i32* %196, align 2, !tbaa !39
  %197 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 4, i64 14, i32 3, i32 0
  store i32 %110, i32* %197, align 2, !tbaa !3
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 5
  store i32 0, i32* %198, align 2, !tbaa !41
  %199 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 6, i64 0
  store i32 1, i32* %199, align 2, !tbaa !27
  %200 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 6, i64 1
  store i32 1, i32* %200, align 2, !tbaa !27
  %201 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 7, i64 0
  store i32 1, i32* %201, align 2, !tbaa !27
  %202 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i64 0, i32 7, i64 1
  store i32 1, i32* %202, align 2, !tbaa !27
  %203 = call i64 @fwrite(i8* nonnull %112, i64 210, i64 1, i8* nonnull %34) #4
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %240, label %205

205:                                              ; preds = %98
  %206 = icmp sgt i32 %111, 1
  br i1 %206, label %207, label %239

207:                                              ; preds = %205
  %208 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %208) #5
  %209 = shl i32 %111, 3
  %210 = add i32 %209, 210
  store i32 %210, i32* %7, align 4, !tbaa !27
  %211 = mul i32 %110, %86
  br label %212

212:                                              ; preds = %207, %216
  %213 = phi i32 [ 0, %207 ], [ %223, %216 ]
  %214 = call i64 @fwrite(i8* nonnull %208, i64 4, i64 1, i8* nonnull %34) #4
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %236, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %99, align 4, !tbaa !22
  %218 = load i32, i32* %101, align 4, !tbaa !22
  %219 = mul i32 %211, %217
  %220 = mul i32 %219, %218
  %221 = load i32, i32* %7, align 4, !tbaa !27
  %222 = add nsw i32 %220, %221
  store i32 %222, i32* %7, align 4, !tbaa !27
  %223 = add nuw nsw i32 %213, 1
  %224 = icmp eq i32 %223, %111
  br i1 %224, label %225, label %212, !llvm.loop !42

225:                                              ; preds = %216
  %226 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %226) #5
  store i32 %220, i32* %8, align 4, !tbaa !27
  %227 = icmp sgt i32 %111, 0
  br i1 %227, label %230, label %238

228:                                              ; preds = %230
  %229 = icmp eq i32 %234, %111
  br i1 %229, label %238, label %230, !llvm.loop !43

230:                                              ; preds = %225, %228
  %231 = phi i32 [ %234, %228 ], [ 0, %225 ]
  %232 = call i64 @fwrite(i8* nonnull %226, i64 4, i64 1, i8* nonnull %34) #4
  %233 = icmp eq i64 %232, 0
  %234 = add nuw nsw i32 %231, 1
  br i1 %233, label %235, label %228

235:                                              ; preds = %230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #5
  br label %236

236:                                              ; preds = %212, %235
  %237 = phi i32 [ -5, %235 ], [ -4, %212 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %208) #5
  br label %240

238:                                              ; preds = %228, %225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %226) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %208) #5
  br label %239

239:                                              ; preds = %238, %205
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %112) #5
  br label %449

240:                                              ; preds = %236, %98
  %241 = phi i32 [ -3, %98 ], [ %237, %236 ]
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %112) #5
  br label %615

242:                                              ; preds = %96
  %243 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6
  br i1 %243, label %244, label %432

244:                                              ; preds = %242, %244
  %245 = phi i8* [ %248, %244 ], [ %1, %242 ]
  %246 = load i8, i8* %245, align 1, !tbaa !3
  %247 = icmp eq i8 %246, 0
  %248 = getelementptr inbounds i8, i8* %245, i64 1
  br i1 %247, label %253, label %244, !llvm.loop !44

249:                                              ; preds = %253
  %250 = ptrtoint i8* %254 to i64
  %251 = ptrtoint i8* %1 to i64
  %252 = sub i64 %251, %250
  br label %258

253:                                              ; preds = %244, %253
  %254 = phi i8* [ %255, %253 ], [ %245, %244 ]
  %255 = getelementptr inbounds i8, i8* %254, i64 -1
  %256 = load i8, i8* %255, align 1, !tbaa !3
  %257 = icmp eq i8 %256, 46
  br i1 %257, label %249, label %253, !llvm.loop !45

258:                                              ; preds = %249, %262
  %259 = phi i64 [ %263, %262 ], [ -1, %249 ]
  %260 = getelementptr inbounds i8, i8* %254, i64 %259
  %261 = icmp eq i8* %260, %1
  br i1 %261, label %267, label %262

262:                                              ; preds = %258
  %263 = add nsw i64 %259, -1
  %264 = getelementptr inbounds i8, i8* %254, i64 %263
  %265 = load i8, i8* %264, align 1, !tbaa !3
  %266 = icmp eq i8 %265, 47
  br i1 %266, label %267, label %258, !llvm.loop !46

267:                                              ; preds = %258, %262
  %268 = phi i64 [ %252, %258 ], [ %259, %262 ]
  %269 = trunc i64 %268 to i32
  %270 = xor i32 %269, -1
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %271) #5
  %272 = icmp eq i64 %268, -1
  br i1 %272, label %276, label %279

273:                                              ; preds = %279
  %274 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 256
  %275 = icmp ult i8* %285, %274
  br i1 %275, label %276, label %291

276:                                              ; preds = %267, %273
  %277 = phi i8* [ %285, %273 ], [ %271, %267 ]
  %278 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 1, i64 0
  br label %287

279:                                              ; preds = %267, %279
  %280 = phi i8* [ %285, %279 ], [ %271, %267 ]
  %281 = phi i64 [ %283, %279 ], [ %268, %267 ]
  %282 = getelementptr inbounds i8, i8* %254, i64 %281
  %283 = add nuw nsw i64 %281, 1
  %284 = load i8, i8* %282, align 1, !tbaa !3
  %285 = getelementptr inbounds i8, i8* %280, i64 1
  store i8 %284, i8* %280, align 1, !tbaa !3
  %286 = icmp eq i64 %283, -1
  br i1 %286, label %273, label %279, !llvm.loop !47

287:                                              ; preds = %276, %287
  %288 = phi i8* [ %289, %287 ], [ %277, %276 ]
  %289 = getelementptr inbounds i8, i8* %288, i64 1
  store i8 0, i8* %288, align 1, !tbaa !3
  %290 = icmp eq i8* %289, %278
  br i1 %290, label %291, label %287, !llvm.loop !48

291:                                              ; preds = %287, %273
  %292 = sub i32 6, %269
  %293 = and i32 %292, -8
  %294 = getelementptr inbounds [129 x i8], [129 x i8]* %10, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 129, i8* nonnull %294) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(129) %294, i8* nonnull align 1 dereferenceable(129) getelementptr inbounds ([129 x i8], [129 x i8]* @__const.halide_debug_to_file.header, i64 0, i64 0), i64 129, i1 false)
  %295 = call i64 @fwrite(i8* nonnull %294, i64 128, i64 1, i8* nonnull %34) #4
  %296 = load i32, i32* %28, align 4, !tbaa !19
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %291
  %299 = load i8, i8* %82, align 1, !tbaa !29
  br label %342

300:                                              ; preds = %291
  %301 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %302 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %301, align 8, !tbaa !25
  %303 = zext i32 %296 to i64
  br label %304

304:                                              ; preds = %318, %300
  %305 = phi i64 [ 0, %300 ], [ %320, %318 ]
  %306 = phi i64 [ 0, %300 ], [ %319, %318 ]
  %307 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %305, i32 2
  %308 = load i32, i32* %307, align 4, !tbaa !23
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %304
  %311 = zext i32 %308 to i64
  %312 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %305, i32 1
  %313 = load i32, i32* %312, align 4, !tbaa !22
  %314 = add nsw i32 %313, -1
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 %315, %311
  %317 = add nsw i64 %316, %306
  br label %318

318:                                              ; preds = %310, %304
  %319 = phi i64 [ %317, %310 ], [ %306, %304 ]
  %320 = add nuw nsw i64 %305, 1
  %321 = icmp eq i64 %320, %303
  br i1 %321, label %322, label %304, !llvm.loop !49

322:                                              ; preds = %318
  %323 = load i8, i8* %82, align 1, !tbaa !29
  br label %324

324:                                              ; preds = %338, %322
  %325 = phi i64 [ 0, %322 ], [ %340, %338 ]
  %326 = phi i64 [ 0, %322 ], [ %339, %338 ]
  %327 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %325, i32 2
  %328 = load i32, i32* %327, align 4, !tbaa !23
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %324
  %331 = sext i32 %328 to i64
  %332 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %302, i64 %325, i32 1
  %333 = load i32, i32* %332, align 4, !tbaa !22
  %334 = add nsw i32 %333, -1
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, %331
  %337 = add nsw i64 %336, %326
  br label %338

338:                                              ; preds = %330, %324
  %339 = phi i64 [ %337, %330 ], [ %326, %324 ]
  %340 = add nuw nsw i64 %325, 1
  %341 = icmp eq i64 %340, %303
  br i1 %341, label %342, label %324, !llvm.loop !50

342:                                              ; preds = %338, %298
  %343 = phi i8 [ %299, %298 ], [ %323, %338 ]
  %344 = phi i64 [ 0, %298 ], [ %319, %338 ]
  %345 = phi i64 [ 0, %298 ], [ %339, %338 ]
  %346 = zext i8 %343 to i64
  %347 = add nuw nsw i64 %346, 7
  %348 = lshr i64 %347, 3
  %349 = add nsw i64 %344, 1
  %350 = sub i64 %349, %345
  %351 = mul i64 %350, %348
  %352 = icmp ult i64 %351, 4294967296
  br i1 %352, label %354, label %353

353:                                              ; preds = %342
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0)) #4
  call void @llvm.lifetime.end.p0i8(i64 129, i8* nonnull %294) #5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %271) #5
  br label %615

354:                                              ; preds = %342
  %355 = icmp sgt i32 %296, 2
  %356 = select i1 %355, i32 %296, i32 2
  %357 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %357) #5
  %358 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  store i32 14, i32* %358, align 4, !tbaa !27
  %359 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 1
  %360 = shl i32 %356, 2
  %361 = add i32 %360, 4
  %362 = and i32 %361, -8
  %363 = trunc i64 %351 to i32
  %364 = add i32 %293, 40
  %365 = add i32 %364, %362
  %366 = add i32 %365, %363
  store i32 %366, i32* %359, align 4, !tbaa !27
  %367 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  store i32 6, i32* %367, align 4, !tbaa !27
  %368 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 8, i32* %368, align 4, !tbaa !27
  %369 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  %370 = sext i32 %2 to i64
  %371 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE, i64 0, i64 %370
  %372 = load i8, i8* %371, align 1, !tbaa !3
  %373 = zext i8 %372 to i32
  store i32 %373, i32* %369, align 4, !tbaa !27
  %374 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 5
  store i32 1, i32* %374, align 4, !tbaa !27
  %375 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 6
  store i32 5, i32* %375, align 4, !tbaa !27
  %376 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 7
  store i32 %360, i32* %376, align 4, !tbaa !27
  %377 = call i64 @fwrite(i8* nonnull %357, i64 32, i64 1, i8* nonnull %34) #4
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %427, label %379

379:                                              ; preds = %354
  %380 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %380) #5
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %382 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1
  %383 = load i32, i32* %382, align 4, !tbaa !22
  store i32 %383, i32* %381, align 4, !tbaa !27
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %385 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1
  %386 = load i32, i32* %385, align 4, !tbaa !22
  store i32 %386, i32* %384, align 4, !tbaa !27
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %388 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1
  %389 = load i32, i32* %388, align 4, !tbaa !22
  store i32 %389, i32* %387, align 4, !tbaa !27
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %391 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1
  %392 = load i32, i32* %391, align 4, !tbaa !22
  store i32 %392, i32* %390, align 4, !tbaa !27
  %393 = sext i32 %362 to i64
  %394 = call i64 @fwrite(i8* nonnull %380, i64 %393, i64 1, i8* nonnull %34) #4
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %423, label %396

396:                                              ; preds = %379
  %397 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %397) #5
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 1, i32* %398, align 4, !tbaa !27
  %399 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %270, i32* %399, align 4, !tbaa !27
  %400 = call i64 @fwrite(i8* nonnull %397, i64 8, i64 1, i8* nonnull %34) #4
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %419, label %402

402:                                              ; preds = %396
  %403 = zext i32 %293 to i64
  %404 = call i64 @fwrite(i8* nonnull %271, i64 %403, i64 1, i8* nonnull %34) #4
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %419, label %406

406:                                              ; preds = %402
  %407 = add i32 %363, 7
  %408 = and i32 %407, 7
  %409 = xor i32 %408, 7
  %410 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %410) #5
  %411 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %412 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE, i64 0, i64 %370
  %413 = load i8, i8* %412, align 1, !tbaa !3
  %414 = zext i8 %413 to i32
  store i32 %414, i32* %411, align 4, !tbaa !27
  %415 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %363, i32* %415, align 4, !tbaa !27
  %416 = call i64 @fwrite(i8* nonnull %410, i64 8, i64 1, i8* nonnull %34) #4
  %417 = icmp eq i64 %416, 0
  %418 = zext i1 %417 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %410) #5
  br label %419

419:                                              ; preds = %402, %396, %406
  %420 = phi i32 [ %409, %406 ], [ 0, %396 ], [ 0, %402 ]
  %421 = phi i32 [ %418, %406 ], [ 1, %396 ], [ 1, %402 ]
  %422 = phi i32 [ -11, %406 ], [ -9, %396 ], [ -10, %402 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %397) #5
  br label %423

423:                                              ; preds = %379, %419
  %424 = phi i32 [ %420, %419 ], [ 0, %379 ]
  %425 = phi i32 [ %421, %419 ], [ 1, %379 ]
  %426 = phi i32 [ %422, %419 ], [ -8, %379 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %380) #5
  br label %427

427:                                              ; preds = %423, %354
  %428 = phi i32 [ %424, %423 ], [ 0, %354 ]
  %429 = phi i32 [ %425, %423 ], [ 1, %354 ]
  %430 = phi i32 [ %426, %423 ], [ -7, %354 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %357) #5
  call void @llvm.lifetime.end.p0i8(i64 129, i8* nonnull %294) #5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %271) #5
  %431 = icmp eq i32 %429, 0
  br i1 %431, label %449, label %615

432:                                              ; preds = %242
  %433 = bitcast [5 x i32]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %433) #5
  %434 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %435 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 0, i32 1
  %436 = load i32, i32* %435, align 4, !tbaa !22
  store i32 %436, i32* %434, align 4, !tbaa !27
  %437 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 1
  %438 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 1, i32 1
  %439 = load i32, i32* %438, align 4, !tbaa !22
  store i32 %439, i32* %437, align 4, !tbaa !27
  %440 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 2
  %441 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 2, i32 1
  %442 = load i32, i32* %441, align 4, !tbaa !22
  store i32 %442, i32* %440, align 4, !tbaa !27
  %443 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 3
  %444 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1
  %445 = load i32, i32* %444, align 4, !tbaa !22
  store i32 %445, i32* %443, align 4, !tbaa !27
  %446 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 4
  store i32 %2, i32* %446, align 4, !tbaa !27
  %447 = call i64 @fwrite(i8* nonnull %433, i64 20, i64 1, i8* nonnull %34) #4
  %448 = icmp eq i64 %447, 0
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %433) #5
  br i1 %448, label %615, label %449

449:                                              ; preds = %239, %427, %432
  %450 = phi i32 [ %428, %427 ], [ 0, %432 ], [ 0, %239 ]
  %451 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %451) #5
  %452 = udiv i32 4096, %86
  %453 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 0
  %454 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i64 0, i64 3, i32 1
  %455 = load i32, i32* %454, align 4, !tbaa !22
  %456 = icmp sgt i32 %455, 0
  br i1 %456, label %457, label %602

457:                                              ; preds = %449
  %458 = load i32, i32* %453, align 4, !tbaa !20
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
  %474 = load i32, i32* %459, align 4, !tbaa !20
  %475 = load i32, i32* %460, align 4, !tbaa !22
  br label %476

476:                                              ; preds = %457, %584
  %477 = phi i32 [ %458, %457 ], [ %585, %584 ]
  %478 = phi i32 [ %455, %457 ], [ %586, %584 ]
  %479 = phi i32 [ %474, %457 ], [ %587, %584 ]
  %480 = phi i32 [ %475, %457 ], [ %588, %584 ]
  %481 = phi i32 [ %475, %457 ], [ %589, %584 ]
  %482 = phi i32 [ %474, %457 ], [ %590, %584 ]
  %483 = phi i32 [ %458, %457 ], [ %592, %584 ]
  %484 = phi i32 [ 0, %457 ], [ %591, %584 ]
  %485 = icmp sgt i32 %481, 0
  br i1 %485, label %486, label %584

486:                                              ; preds = %476
  %487 = load i32, i32* %461, align 4, !tbaa !20
  %488 = load i32, i32* %462, align 4, !tbaa !22
  br label %489

489:                                              ; preds = %486, %572
  %490 = phi i32 [ %573, %572 ], [ %479, %486 ]
  %491 = phi i32 [ %574, %572 ], [ %480, %486 ]
  %492 = phi i32 [ %575, %572 ], [ %488, %486 ]
  %493 = phi i32 [ %576, %572 ], [ %487, %486 ]
  %494 = phi i32 [ %578, %572 ], [ %482, %486 ]
  %495 = phi i32 [ %577, %572 ], [ %484, %486 ]
  %496 = icmp sgt i32 %492, 0
  br i1 %496, label %497, label %572

497:                                              ; preds = %489, %562
  %498 = phi i32 [ %564, %562 ], [ %493, %489 ]
  %499 = phi i32 [ %563, %562 ], [ %495, %489 ]
  %500 = load i32, i32* %464, align 4, !tbaa !22
  %501 = icmp sgt i32 %500, 0
  br i1 %501, label %502, label %562

502:                                              ; preds = %497
  %503 = load i32, i32* %463, align 4, !tbaa !20
  br label %504

504:                                              ; preds = %502, %555
  %505 = phi i32 [ %557, %555 ], [ %503, %502 ]
  %506 = phi i32 [ %556, %555 ], [ %499, %502 ]
  %507 = add nsw i32 %506, 1
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %465) #5
  store i32 %505, i32* %466, align 4, !tbaa !27
  store i32 %498, i32* %467, align 4, !tbaa !27
  store i32 %494, i32* %468, align 4, !tbaa !27
  store i32 %483, i32* %469, align 4, !tbaa !27
  %508 = load i32, i32* %28, align 4, !tbaa !19
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %538

510:                                              ; preds = %504
  %511 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %470, align 8, !tbaa !25
  %512 = zext i32 %508 to i64
  %513 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 0, i32 2
  %514 = load i32, i32* %513, align 4, !tbaa !23
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 0, i32 0
  %517 = load i32, i32* %516, align 4, !tbaa !20
  %518 = sub nsw i32 %505, %517
  %519 = sext i32 %518 to i64
  %520 = mul nsw i64 %519, %515
  %521 = icmp eq i32 %508, 1
  br i1 %521, label %538, label %522, !llvm.loop !51

522:                                              ; preds = %510, %522
  %523 = phi i64 [ %536, %522 ], [ 1, %510 ]
  %524 = phi i64 [ %535, %522 ], [ %520, %510 ]
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %523
  %526 = load i32, i32* %525, align 4, !tbaa !27
  %527 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 %523, i32 2
  %528 = load i32, i32* %527, align 4, !tbaa !23
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %511, i64 %523, i32 0
  %531 = load i32, i32* %530, align 4, !tbaa !20
  %532 = sub nsw i32 %526, %531
  %533 = sext i32 %532 to i64
  %534 = mul nsw i64 %533, %529
  %535 = add nsw i64 %534, %524
  %536 = add nuw nsw i64 %523, 1
  %537 = icmp eq i64 %536, %512
  br i1 %537, label %538, label %522, !llvm.loop !51

538:                                              ; preds = %522, %510, %504
  %539 = phi i64 [ 0, %504 ], [ %520, %510 ], [ %535, %522 ]
  %540 = load i8*, i8** %19, align 8, !tbaa !10
  %541 = load i8, i8* %82, align 1, !tbaa !29
  %542 = zext i8 %541 to i64
  %543 = add nuw nsw i64 %542, 7
  %544 = lshr i64 %543, 3
  %545 = mul nsw i64 %544, %539
  %546 = getelementptr inbounds i8, i8* %540, i64 %545
  %547 = mul nsw i32 %506, %86
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i64 0, i64 %548
  %550 = call i8* @memcpy(i8* nonnull %549, i8* %546, i64 %471) #4
  %551 = icmp eq i32 %507, %452
  br i1 %551, label %552, label %555

552:                                              ; preds = %538
  %553 = call i64 @fwrite(i8* nonnull %451, i64 %473, i64 1, i8* nonnull %34) #4
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %612, label %555

555:                                              ; preds = %538, %552
  %556 = phi i32 [ 0, %552 ], [ %507, %538 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %465) #5
  %557 = add nsw i32 %505, 1
  %558 = load i32, i32* %464, align 4, !tbaa !22
  %559 = load i32, i32* %463, align 4, !tbaa !20
  %560 = add nsw i32 %559, %558
  %561 = icmp slt i32 %557, %560
  br i1 %561, label %504, label %562, !llvm.loop !52

562:                                              ; preds = %555, %497
  %563 = phi i32 [ %499, %497 ], [ %556, %555 ]
  %564 = add nsw i32 %498, 1
  %565 = load i32, i32* %462, align 4, !tbaa !22
  %566 = load i32, i32* %461, align 4, !tbaa !20
  %567 = add nsw i32 %566, %565
  %568 = icmp slt i32 %564, %567
  br i1 %568, label %497, label %569, !llvm.loop !53

569:                                              ; preds = %562
  %570 = load i32, i32* %460, align 4, !tbaa !22
  %571 = load i32, i32* %459, align 4, !tbaa !20
  br label %572

572:                                              ; preds = %569, %489
  %573 = phi i32 [ %490, %489 ], [ %571, %569 ]
  %574 = phi i32 [ %491, %489 ], [ %570, %569 ]
  %575 = phi i32 [ %492, %489 ], [ %565, %569 ]
  %576 = phi i32 [ %493, %489 ], [ %566, %569 ]
  %577 = phi i32 [ %495, %489 ], [ %563, %569 ]
  %578 = add nsw i32 %494, 1
  %579 = add nsw i32 %573, %574
  %580 = icmp slt i32 %578, %579
  br i1 %580, label %489, label %581, !llvm.loop !54

581:                                              ; preds = %572
  %582 = load i32, i32* %454, align 4, !tbaa !22
  %583 = load i32, i32* %453, align 4, !tbaa !20
  br label %584

584:                                              ; preds = %581, %476
  %585 = phi i32 [ %477, %476 ], [ %583, %581 ]
  %586 = phi i32 [ %478, %476 ], [ %582, %581 ]
  %587 = phi i32 [ %479, %476 ], [ %573, %581 ]
  %588 = phi i32 [ %480, %476 ], [ %574, %581 ]
  %589 = phi i32 [ %481, %476 ], [ %574, %581 ]
  %590 = phi i32 [ %482, %476 ], [ %573, %581 ]
  %591 = phi i32 [ %484, %476 ], [ %577, %581 ]
  %592 = add nsw i32 %483, 1
  %593 = add nsw i32 %585, %586
  %594 = icmp slt i32 %592, %593
  br i1 %594, label %476, label %595, !llvm.loop !55

595:                                              ; preds = %584
  %596 = icmp sgt i32 %591, 0
  br i1 %596, label %597, label %602

597:                                              ; preds = %595
  %598 = mul nsw i32 %591, %86
  %599 = sext i32 %598 to i64
  %600 = call i64 @fwrite(i8* nonnull %451, i64 %599, i64 1, i8* nonnull %34) #4
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %613, label %602

602:                                              ; preds = %449, %597, %595
  %603 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %603) #5
  store i64 0, i64* %18, align 8, !tbaa !56
  %604 = icmp eq i32 %450, 0
  br i1 %604, label %609, label %605

605:                                              ; preds = %602
  %606 = zext i32 %450 to i64
  %607 = call i64 @fwrite(i8* nonnull %603, i64 %606, i64 1, i8* nonnull %34) #4
  %608 = icmp eq i64 %607, 0
  br i1 %608, label %610, label %609

609:                                              ; preds = %605, %602
  br label %610

610:                                              ; preds = %605, %609
  %611 = phi i32 [ 0, %609 ], [ -16, %605 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %603) #5
  br label %613

612:                                              ; preds = %552
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %465) #5
  br label %613

613:                                              ; preds = %612, %597, %610
  %614 = phi i32 [ %611, %610 ], [ -14, %597 ], [ -13, %612 ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %451) #5
  br label %615

615:                                              ; preds = %613, %432, %427, %240, %353
  %616 = phi i32 [ %614, %613 ], [ %241, %240 ], [ %430, %427 ], [ -12, %432 ], [ -6, %353 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #5
  %617 = call i32 @fclose(i8* nonnull %34) #4
  br label %618

618:                                              ; preds = %32, %615, %31, %26
  %619 = phi i32 [ -1, %26 ], [ -1, %31 ], [ %616, %615 ], [ -2, %32 ]
  ret i32 %619
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #3

declare i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

declare i8* @fopen(i8*, i8*) local_unnamed_addr #3

declare i64 @fwrite(i8*, i64, i64, i8*) local_unnamed_addr #3

declare i32 @fclose(i8*) local_unnamed_addr #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = !{!11, !13, i64 16}
!11 = !{!"_ZTS15halide_buffer_t", !12, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !14, i64 32, !17, i64 36, !13, i64 40, !13, i64 48}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"_ZTS13halide_type_t", !15, i64 0, !4, i64 1, !16, i64 2}
!15 = !{!"_ZTS18halide_type_code_t", !4, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"int", !4, i64 0}
!18 = !{!11, !12, i64 0}
!19 = !{!11, !17, i64 36}
!20 = !{!21, !17, i64 0}
!21 = !{!"_ZTS18halide_dimension_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!22 = !{!21, !17, i64 4}
!23 = !{!21, !17, i64 8}
!24 = !{!21, !17, i64 12}
!25 = !{!11, !13, i64 40}
!26 = !{i64 0, i64 4, !27, i64 4, i64 4, !27, i64 8, i64 4, !27, i64 12, i64 4, !27}
!27 = !{!17, !17, i64 0}
!28 = distinct !{!28, !7}
!29 = !{!14, !4, i64 1}
!30 = distinct !{!30, !7}
!31 = !{!32, !16, i64 0}
!32 = !{!"_ZTSN6Halide7Runtime8Internal18halide_tiff_headerE", !16, i64 0, !16, i64 2, !17, i64 4, !16, i64 8, !4, i64 10, !17, i64 190, !4, i64 194, !4, i64 202}
!33 = !{!32, !16, i64 2}
!34 = !{!32, !17, i64 4}
!35 = !{!32, !16, i64 8}
!36 = !{!37, !16, i64 0}
!37 = !{!"_ZTSN6Halide7Runtime8Internal8tiff_tagE", !16, i64 0, !16, i64 2, !17, i64 4, !4, i64 8}
!38 = !{!37, !16, i64 2}
!39 = !{!37, !17, i64 4}
!40 = !{!16, !16, i64 0}
!41 = !{!32, !17, i64 190}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = !{!12, !12, i64 0}
