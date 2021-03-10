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

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %0, i8* %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i8* [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, i8* %4, align 1, !tbaa !3
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds i8, i8* %4, i32 1
  br i1 %6, label %8, label %3, !llvm.loop !6

8:                                                ; preds = %3, %8
  %9 = phi i8* [ %12, %8 ], [ %1, %3 ]
  %10 = load i8, i8* %9, align 1, !tbaa !3
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds i8, i8* %9, i32 1
  br i1 %11, label %13, label %8, !llvm.loop !8

13:                                               ; preds = %8
  %14 = icmp ne i8* %9, %1
  %15 = icmp ne i8* %4, %0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %27
  %18 = phi i8* [ %20, %27 ], [ %4, %13 ]
  %19 = phi i8* [ %21, %27 ], [ %9, %13 ]
  %20 = getelementptr inbounds i8, i8* %18, i32 -1
  %21 = getelementptr inbounds i8, i8* %19, i32 -1
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
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2
  %20 = load i8*, i8** %19, align 4, !tbaa !10
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0)) #4
  br label %591

27:                                               ; preds = %4, %22
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %29 = load i32, i32* %28, align 4, !tbaa !19
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0)) #4
  br label %591

32:                                               ; preds = %27
  %33 = tail call i32 @halide_copy_to_host(i8* %0, %struct.halide_buffer_t* nonnull %3) #4
  %34 = tail call i8* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #4
  %35 = icmp eq i8* %34, null
  br i1 %35, label %591, label %36

36:                                               ; preds = %32
  %37 = bitcast [4 x %struct.halide_dimension_t]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %37) #5
  %38 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 0
  store i32 0, i32* %38, align 4, !tbaa !20
  %39 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1
  store i32 0, i32* %39, align 4, !tbaa !22
  %40 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 2
  store i32 0, i32* %40, align 4, !tbaa !23
  %41 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 3
  store i32 0, i32* %41, align 4, !tbaa !24
  %42 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 0
  store i32 0, i32* %42, align 4, !tbaa !20
  %43 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1
  store i32 0, i32* %43, align 4, !tbaa !22
  %44 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 2
  store i32 0, i32* %44, align 4, !tbaa !23
  %45 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 3
  store i32 0, i32* %45, align 4, !tbaa !24
  %46 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 0
  store i32 0, i32* %46, align 4, !tbaa !20
  %47 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1
  store i32 0, i32* %47, align 4, !tbaa !22
  %48 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 2
  store i32 0, i32* %48, align 4, !tbaa !23
  %49 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 3
  store i32 0, i32* %49, align 4, !tbaa !24
  %50 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 0
  store i32 0, i32* %50, align 4, !tbaa !20
  %51 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1
  store i32 0, i32* %51, align 4, !tbaa !22
  %52 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 2
  store i32 0, i32* %52, align 4, !tbaa !23
  %53 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 3
  store i32 0, i32* %53, align 4, !tbaa !24
  %54 = load i32, i32* %28, align 4, !tbaa !19
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %58 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %57, align 8, !tbaa !25
  br label %63

59:                                               ; preds = %63
  %60 = icmp slt i32 %54, 4
  br i1 %60, label %61, label %77

61:                                               ; preds = %36, %59
  %62 = phi i32 [ %72, %59 ], [ 1, %36 ]
  br label %85

63:                                               ; preds = %56, %63
  %64 = phi i32 [ 1, %56 ], [ %72, %63 ]
  %65 = phi i32 [ 0, %56 ], [ %73, %63 ]
  %66 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %58, i32 %65
  %67 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %65
  %68 = bitcast %struct.halide_dimension_t* %67 to i8*
  %69 = bitcast %struct.halide_dimension_t* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %68, i8* nonnull align 4 dereferenceable(16) %69, i32 16, i1 false), !tbaa.struct !26
  %70 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %65, i32 1
  %71 = load i32, i32* %70, align 4, !tbaa !22
  %72 = mul i32 %71, %64
  %73 = add nuw nsw i32 %65, 1
  %74 = icmp slt i32 %73, %54
  %75 = icmp ult i32 %65, 3
  %76 = and i1 %75, %74
  br i1 %76, label %63, label %59, !llvm.loop !28

77:                                               ; preds = %85, %59
  %78 = phi i32 [ %72, %59 ], [ %62, %85 ]
  %79 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %80 = load i8, i8* %79, align 1, !tbaa !29
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %81, 7
  %83 = lshr i32 %82, 3
  %84 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #6
  br i1 %84, label %94, label %92

85:                                               ; preds = %61, %85
  %86 = phi i32 [ %90, %85 ], [ %54, %61 ]
  %87 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %86, i32 0
  store i32 0, i32* %87, align 4, !tbaa !20
  %88 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %86, i32 1
  store i32 1, i32* %88, align 4, !tbaa !22
  %89 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 %86, i32 2
  store i32 0, i32* %89, align 4, !tbaa !23
  %90 = add nsw i32 %86, 1
  %91 = icmp slt i32 %86, 3
  br i1 %91, label %85, label %77, !llvm.loop !30

92:                                               ; preds = %77
  %93 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #6
  br i1 %93, label %94, label %236

94:                                               ; preds = %92, %77
  %95 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1
  %96 = load i32, i32* %95, align 4, !tbaa !22
  %97 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1
  %98 = load i32, i32* %97, align 4, !tbaa !22
  %99 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1
  %100 = load i32, i32* %99, align 4, !tbaa !22
  %101 = icmp ult i32 %100, 2
  %102 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1
  %103 = load i32, i32* %102, align 4, !tbaa !22
  %104 = icmp slt i32 %103, 5
  %105 = and i1 %101, %104
  %106 = select i1 %105, i32 1, i32 %103
  %107 = select i1 %105, i32 %103, i32 %100
  %108 = bitcast %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 210, i8* nonnull %108) #5
  %109 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 0
  store i16 18761, i16* %109, align 2, !tbaa !31
  %110 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 1
  store i16 42, i16* %110, align 2, !tbaa !33
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 2
  store i32 8, i32* %111, align 2, !tbaa !34
  %112 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 3
  store i16 15, i16* %112, align 2, !tbaa !35
  %113 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 0
  store i16 256, i16* %113, align 2, !tbaa !36
  %114 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 1
  store i16 4, i16* %114, align 2, !tbaa !38
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 2
  store i32 1, i32* %115, align 2, !tbaa !39
  %116 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 0, i32 3, i32 0
  store i32 %96, i32* %116, align 2, !tbaa !3
  %117 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 0
  store i16 257, i16* %117, align 2, !tbaa !36
  %118 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 1
  store i16 4, i16* %118, align 2, !tbaa !38
  %119 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 2
  store i32 1, i32* %119, align 2, !tbaa !39
  %120 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 1, i32 3, i32 0
  store i32 %98, i32* %120, align 2, !tbaa !3
  %121 = trunc i32 %82 to i16
  %122 = and i16 %121, 504
  %123 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 0
  store i16 258, i16* %123, align 2, !tbaa !36
  %124 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 1
  store i16 3, i16* %124, align 2, !tbaa !38
  %125 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 2
  store i32 1, i32* %125, align 2, !tbaa !39
  %126 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 2, i32 3
  %127 = bitcast %union.anon* %126 to i16*
  store i16 %122, i16* %127, align 2, !tbaa !3
  %128 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 0
  store i16 259, i16* %128, align 2, !tbaa !36
  %129 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 1
  store i16 3, i16* %129, align 2, !tbaa !38
  %130 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 2
  store i32 1, i32* %130, align 2, !tbaa !39
  %131 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 3, i32 3
  %132 = bitcast %union.anon* %131 to i16*
  store i16 1, i16* %132, align 2, !tbaa !3
  %133 = icmp sgt i32 %107, 2
  %134 = select i1 %133, i16 2, i16 1
  %135 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 0
  store i16 262, i16* %135, align 2, !tbaa !36
  %136 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 1
  store i16 3, i16* %136, align 2, !tbaa !38
  %137 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 2
  store i32 1, i32* %137, align 2, !tbaa !39
  %138 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 4, i32 3
  %139 = bitcast %union.anon* %138 to i16*
  store i16 %134, i16* %139, align 2, !tbaa !3
  %140 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 0
  store i16 273, i16* %140, align 2, !tbaa !36
  %141 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 1
  store i16 4, i16* %141, align 2, !tbaa !38
  %142 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 2
  store i32 %107, i32* %142, align 2, !tbaa !39
  %143 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 5, i32 3, i32 0
  store i32 210, i32* %143, align 2, !tbaa !3
  %144 = trunc i32 %107 to i16
  %145 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 0
  store i16 277, i16* %145, align 2, !tbaa !36
  %146 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 1
  store i16 3, i16* %146, align 2, !tbaa !38
  %147 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 2
  store i32 1, i32* %147, align 2, !tbaa !39
  %148 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 6, i32 3
  %149 = bitcast %union.anon* %148 to i16*
  store i16 %144, i16* %149, align 2, !tbaa !3
  %150 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 0
  store i16 278, i16* %150, align 2, !tbaa !36
  %151 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 1
  store i16 4, i16* %151, align 2, !tbaa !38
  %152 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 2
  store i32 1, i32* %152, align 2, !tbaa !39
  %153 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 7, i32 3, i32 0
  store i32 %98, i32* %153, align 2, !tbaa !3
  %154 = icmp eq i32 %107, 1
  %155 = mul i32 %83, %78
  %156 = shl i32 %107, 2
  %157 = add i32 %156, 210
  %158 = select i1 %154, i32 %155, i32 %157
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 0
  store i16 279, i16* %159, align 2
  %160 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 1
  store i16 4, i16* %160, align 2
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 2
  store i32 %107, i32* %161, align 2
  %162 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 8, i32 3, i32 0
  store i32 %158, i32* %162, align 2
  %163 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 0
  store i16 282, i16* %163, align 2, !tbaa !36
  %164 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 1
  store i16 5, i16* %164, align 2, !tbaa !38
  %165 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 2
  store i32 1, i32* %165, align 2, !tbaa !39
  %166 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 9, i32 3, i32 0
  store i32 194, i32* %166, align 2, !tbaa !3
  %167 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 0
  store i16 283, i16* %167, align 2, !tbaa !36
  %168 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 1
  store i16 5, i16* %168, align 2, !tbaa !38
  %169 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 2
  store i32 1, i32* %169, align 2, !tbaa !39
  %170 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 10, i32 3, i32 0
  store i32 202, i32* %170, align 2, !tbaa !3
  %171 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 0
  store i16 284, i16* %171, align 2, !tbaa !36
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 1
  store i16 3, i16* %172, align 2, !tbaa !38
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 2
  store i32 1, i32* %173, align 2, !tbaa !39
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 11, i32 3
  %175 = bitcast %union.anon* %174 to i16*
  store i16 2, i16* %175, align 2, !tbaa !3
  %176 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 0
  store i16 296, i16* %176, align 2, !tbaa !36
  %177 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 1
  store i16 3, i16* %177, align 2, !tbaa !38
  %178 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 2
  store i32 1, i32* %178, align 2, !tbaa !39
  %179 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 12, i32 3
  %180 = bitcast %union.anon* %179 to i16*
  store i16 1, i16* %180, align 2, !tbaa !3
  %181 = getelementptr inbounds [10 x i16], [10 x i16]* @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, i32 0, i32 %2
  %182 = load i16, i16* %181, align 2, !tbaa !40
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 0
  store i16 339, i16* %183, align 2, !tbaa !36
  %184 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 1
  store i16 3, i16* %184, align 2, !tbaa !38
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 2
  store i32 1, i32* %185, align 2, !tbaa !39
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 13, i32 3
  %187 = bitcast %union.anon* %186 to i16*
  store i16 %182, i16* %187, align 2, !tbaa !3
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 0
  store i16 -32539, i16* %188, align 2, !tbaa !36
  %189 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 1
  store i16 4, i16* %189, align 2, !tbaa !38
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 2
  store i32 1, i32* %190, align 2, !tbaa !39
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 4, i32 14, i32 3, i32 0
  store i32 %106, i32* %191, align 2, !tbaa !3
  %192 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 5
  store i32 0, i32* %192, align 2, !tbaa !41
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 6, i32 0
  store i32 1, i32* %193, align 2, !tbaa !27
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 6, i32 1
  store i32 1, i32* %194, align 2, !tbaa !27
  %195 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 7, i32 0
  store i32 1, i32* %195, align 2, !tbaa !27
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::halide_tiff_header", %"struct.Halide::Runtime::Internal::halide_tiff_header"* %6, i32 0, i32 7, i32 1
  store i32 1, i32* %196, align 2, !tbaa !27
  %197 = call i32 @fwrite(i8* nonnull %108, i32 210, i32 1, i8* nonnull %34) #4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %234, label %199

199:                                              ; preds = %94
  %200 = icmp sgt i32 %107, 1
  br i1 %200, label %201, label %233

201:                                              ; preds = %199
  %202 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %202) #5
  %203 = shl i32 %107, 3
  %204 = add i32 %203, 210
  store i32 %204, i32* %7, align 4, !tbaa !27
  %205 = mul i32 %106, %83
  br label %206

206:                                              ; preds = %201, %210
  %207 = phi i32 [ 0, %201 ], [ %217, %210 ]
  %208 = call i32 @fwrite(i8* nonnull %202, i32 4, i32 1, i8* nonnull %34) #4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %230, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* %95, align 4, !tbaa !22
  %212 = load i32, i32* %97, align 4, !tbaa !22
  %213 = mul i32 %205, %211
  %214 = mul i32 %213, %212
  %215 = load i32, i32* %7, align 4, !tbaa !27
  %216 = add nsw i32 %214, %215
  store i32 %216, i32* %7, align 4, !tbaa !27
  %217 = add nuw nsw i32 %207, 1
  %218 = icmp slt i32 %217, %107
  br i1 %218, label %206, label %219, !llvm.loop !42

219:                                              ; preds = %210
  %220 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %220) #5
  store i32 %214, i32* %8, align 4, !tbaa !27
  %221 = icmp sgt i32 %107, 0
  br i1 %221, label %224, label %232

222:                                              ; preds = %224
  %223 = icmp slt i32 %228, %107
  br i1 %223, label %224, label %232, !llvm.loop !43

224:                                              ; preds = %219, %222
  %225 = phi i32 [ %228, %222 ], [ 0, %219 ]
  %226 = call i32 @fwrite(i8* nonnull %220, i32 4, i32 1, i8* nonnull %34) #4
  %227 = icmp eq i32 %226, 0
  %228 = add nuw nsw i32 %225, 1
  br i1 %227, label %229, label %222

229:                                              ; preds = %224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %220) #5
  br label %230

230:                                              ; preds = %206, %229
  %231 = phi i32 [ -5, %229 ], [ -4, %206 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %202) #5
  br label %234

232:                                              ; preds = %222, %219
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %220) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %202) #5
  br label %233

233:                                              ; preds = %232, %199
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %108) #5
  br label %432

234:                                              ; preds = %230, %94
  %235 = phi i32 [ -3, %94 ], [ %231, %230 ]
  call void @llvm.lifetime.end.p0i8(i64 210, i8* nonnull %108) #5
  br label %588

236:                                              ; preds = %92
  %237 = call zeroext i1 @_ZN6Halide7Runtime8Internal9ends_withEPKcS3_(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #6
  br i1 %237, label %238, label %415

238:                                              ; preds = %236, %238
  %239 = phi i8* [ %242, %238 ], [ %1, %236 ]
  %240 = load i8, i8* %239, align 1, !tbaa !3
  %241 = icmp eq i8 %240, 0
  %242 = getelementptr inbounds i8, i8* %239, i32 1
  br i1 %241, label %247, label %238, !llvm.loop !44

243:                                              ; preds = %247
  %244 = ptrtoint i8* %248 to i32
  %245 = ptrtoint i8* %1 to i32
  %246 = sub i32 %245, %244
  br label %252

247:                                              ; preds = %238, %247
  %248 = phi i8* [ %249, %247 ], [ %239, %238 ]
  %249 = getelementptr inbounds i8, i8* %248, i32 -1
  %250 = load i8, i8* %249, align 1, !tbaa !3
  %251 = icmp eq i8 %250, 46
  br i1 %251, label %243, label %247, !llvm.loop !45

252:                                              ; preds = %243, %256
  %253 = phi i32 [ %257, %256 ], [ -1, %243 ]
  %254 = getelementptr inbounds i8, i8* %248, i32 %253
  %255 = icmp eq i8* %254, %1
  br i1 %255, label %261, label %256

256:                                              ; preds = %252
  %257 = add nsw i32 %253, -1
  %258 = getelementptr inbounds i8, i8* %248, i32 %257
  %259 = load i8, i8* %258, align 1, !tbaa !3
  %260 = icmp eq i8 %259, 47
  br i1 %260, label %261, label %252, !llvm.loop !46

261:                                              ; preds = %252, %256
  %262 = phi i32 [ %246, %252 ], [ %253, %256 ]
  %263 = xor i32 %262, -1
  %264 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %264) #5
  %265 = icmp eq i32 %262, -1
  br i1 %265, label %266, label %274

266:                                              ; preds = %261
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 256
  br label %271

268:                                              ; preds = %274
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i32 0, i32 256
  %270 = icmp ult i8* %280, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %266, %268
  %272 = phi i8* [ %267, %266 ], [ %269, %268 ]
  %273 = phi i8* [ %264, %266 ], [ %280, %268 ]
  br label %282

274:                                              ; preds = %261, %274
  %275 = phi i8* [ %280, %274 ], [ %264, %261 ]
  %276 = phi i32 [ %278, %274 ], [ %262, %261 ]
  %277 = getelementptr inbounds i8, i8* %248, i32 %276
  %278 = add nuw nsw i32 %276, 1
  %279 = load i8, i8* %277, align 1, !tbaa !3
  %280 = getelementptr inbounds i8, i8* %275, i32 1
  store i8 %279, i8* %275, align 1, !tbaa !3
  %281 = icmp eq i32 %278, -1
  br i1 %281, label %268, label %274, !llvm.loop !47

282:                                              ; preds = %271, %282
  %283 = phi i8* [ %284, %282 ], [ %273, %271 ]
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8 0, i8* %283, align 1, !tbaa !3
  %285 = icmp ult i8* %284, %272
  br i1 %285, label %282, label %286, !llvm.loop !48

286:                                              ; preds = %282, %268
  %287 = sub i32 6, %262
  %288 = and i32 %287, -8
  %289 = getelementptr inbounds [129 x i8], [129 x i8]* %10, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 129, i8* nonnull %289) #5
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 dereferenceable(129) %289, i8* nonnull align 1 dereferenceable(129) getelementptr inbounds ([129 x i8], [129 x i8]* @__const.halide_debug_to_file.header, i32 0, i32 0), i32 129, i1 false)
  %290 = call i32 @fwrite(i8* nonnull %289, i32 128, i32 1, i8* nonnull %34) #4
  %291 = load i32, i32* %28, align 4, !tbaa !19
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %286
  %294 = load i8, i8* %79, align 1, !tbaa !29
  br label %332

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %297 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %296, align 8, !tbaa !25
  br label %298

298:                                              ; preds = %310, %295
  %299 = phi i32 [ 0, %295 ], [ %312, %310 ]
  %300 = phi i32 [ 0, %295 ], [ %311, %310 ]
  %301 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %299, i32 2
  %302 = load i32, i32* %301, align 4, !tbaa !23
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %299, i32 1
  %306 = load i32, i32* %305, align 4, !tbaa !22
  %307 = add nsw i32 %306, -1
  %308 = mul nsw i32 %307, %302
  %309 = add nsw i32 %308, %300
  br label %310

310:                                              ; preds = %304, %298
  %311 = phi i32 [ %309, %304 ], [ %300, %298 ]
  %312 = add nuw nsw i32 %299, 1
  %313 = icmp slt i32 %312, %291
  br i1 %313, label %298, label %314, !llvm.loop !49

314:                                              ; preds = %310
  %315 = load i8, i8* %79, align 1, !tbaa !29
  br label %316

316:                                              ; preds = %328, %314
  %317 = phi i32 [ 0, %314 ], [ %330, %328 ]
  %318 = phi i32 [ 0, %314 ], [ %329, %328 ]
  %319 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %317, i32 2
  %320 = load i32, i32* %319, align 4, !tbaa !23
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %297, i32 %317, i32 1
  %324 = load i32, i32* %323, align 4, !tbaa !22
  %325 = add nsw i32 %324, -1
  %326 = mul nsw i32 %325, %320
  %327 = add nsw i32 %326, %318
  br label %328

328:                                              ; preds = %322, %316
  %329 = phi i32 [ %327, %322 ], [ %318, %316 ]
  %330 = add nuw nsw i32 %317, 1
  %331 = icmp slt i32 %330, %291
  br i1 %331, label %316, label %332, !llvm.loop !50

332:                                              ; preds = %328, %293
  %333 = phi i8 [ %294, %293 ], [ %315, %328 ]
  %334 = phi i32 [ 0, %293 ], [ %311, %328 ]
  %335 = phi i32 [ 0, %293 ], [ %329, %328 ]
  %336 = zext i8 %333 to i32
  %337 = add nuw nsw i32 %336, 7
  %338 = lshr i32 %337, 3
  %339 = add nsw i32 %334, 1
  %340 = sub i32 %339, %335
  %341 = mul i32 %340, %338
  %342 = icmp sgt i32 %291, 2
  %343 = select i1 %342, i32 %291, i32 2
  %344 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %344) #5
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 0
  store i32 14, i32* %345, align 4, !tbaa !27
  %346 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 1
  %347 = shl i32 %343, 2
  %348 = add i32 %347, 4
  %349 = and i32 %348, -8
  %350 = add i32 %288, 40
  %351 = add i32 %350, %349
  %352 = add i32 %351, %341
  store i32 %352, i32* %346, align 4, !tbaa !27
  %353 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 2
  store i32 6, i32* %353, align 4, !tbaa !27
  %354 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 3
  store i32 8, i32* %354, align 4, !tbaa !27
  %355 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 4
  %356 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal31pixel_type_to_matlab_class_codeE, i32 0, i32 %2
  %357 = load i8, i8* %356, align 1, !tbaa !3
  %358 = zext i8 %357 to i32
  store i32 %358, i32* %355, align 4, !tbaa !27
  %359 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 5
  store i32 1, i32* %359, align 4, !tbaa !27
  %360 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 6
  store i32 5, i32* %360, align 4, !tbaa !27
  %361 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i32 0, i32 7
  store i32 %347, i32* %361, align 4, !tbaa !27
  %362 = call i32 @fwrite(i8* nonnull %344, i32 32, i32 1, i8* nonnull %34) #4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %410, label %364

364:                                              ; preds = %332
  %365 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %365) #5
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 0
  %367 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1
  %368 = load i32, i32* %367, align 4, !tbaa !22
  store i32 %368, i32* %366, align 4, !tbaa !27
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 1
  %370 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1
  %371 = load i32, i32* %370, align 4, !tbaa !22
  store i32 %371, i32* %369, align 4, !tbaa !27
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 2
  %373 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1
  %374 = load i32, i32* %373, align 4, !tbaa !22
  store i32 %374, i32* %372, align 4, !tbaa !27
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i32 0, i32 3
  %376 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1
  %377 = load i32, i32* %376, align 4, !tbaa !22
  store i32 %377, i32* %375, align 4, !tbaa !27
  %378 = call i32 @fwrite(i8* nonnull %365, i32 %349, i32 1, i8* nonnull %34) #4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %406, label %380

380:                                              ; preds = %364
  %381 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %381) #5
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i32 0, i32 0
  store i32 1, i32* %382, align 4, !tbaa !27
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i32 0, i32 1
  store i32 %263, i32* %383, align 4, !tbaa !27
  %384 = call i32 @fwrite(i8* nonnull %381, i32 8, i32 1, i8* nonnull %34) #4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %402, label %386

386:                                              ; preds = %380
  %387 = call i32 @fwrite(i8* nonnull %264, i32 %288, i32 1, i8* nonnull %34) #4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %402, label %389

389:                                              ; preds = %386
  %390 = add i32 %341, 7
  %391 = and i32 %390, 7
  %392 = xor i32 %391, 7
  %393 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %393) #5
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i32 0, i32 0
  %395 = getelementptr inbounds [10 x i8], [10 x i8]* @_ZN6Halide7Runtime8Internal30pixel_type_to_matlab_type_codeE, i32 0, i32 %2
  %396 = load i8, i8* %395, align 1, !tbaa !3
  %397 = zext i8 %396 to i32
  store i32 %397, i32* %394, align 4, !tbaa !27
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i32 0, i32 1
  store i32 %341, i32* %398, align 4, !tbaa !27
  %399 = call i32 @fwrite(i8* nonnull %393, i32 8, i32 1, i8* nonnull %34) #4
  %400 = icmp eq i32 %399, 0
  %401 = zext i1 %400 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %393) #5
  br label %402

402:                                              ; preds = %386, %380, %389
  %403 = phi i32 [ %392, %389 ], [ 0, %380 ], [ 0, %386 ]
  %404 = phi i32 [ %401, %389 ], [ 1, %380 ], [ 1, %386 ]
  %405 = phi i32 [ -11, %389 ], [ -9, %380 ], [ -10, %386 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %381) #5
  br label %406

406:                                              ; preds = %364, %402
  %407 = phi i32 [ %403, %402 ], [ 0, %364 ]
  %408 = phi i32 [ %404, %402 ], [ 1, %364 ]
  %409 = phi i32 [ %405, %402 ], [ -8, %364 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %365) #5
  br label %410

410:                                              ; preds = %332, %406
  %411 = phi i32 [ %407, %406 ], [ 0, %332 ]
  %412 = phi i32 [ %408, %406 ], [ 1, %332 ]
  %413 = phi i32 [ %409, %406 ], [ -7, %332 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %344) #5
  call void @llvm.lifetime.end.p0i8(i64 129, i8* nonnull %289) #5
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %264) #5
  %414 = icmp eq i32 %412, 0
  br i1 %414, label %432, label %588

415:                                              ; preds = %236
  %416 = bitcast [5 x i32]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %416) #5
  %417 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 0
  %418 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 0, i32 1
  %419 = load i32, i32* %418, align 4, !tbaa !22
  store i32 %419, i32* %417, align 4, !tbaa !27
  %420 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 1
  %421 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 1, i32 1
  %422 = load i32, i32* %421, align 4, !tbaa !22
  store i32 %422, i32* %420, align 4, !tbaa !27
  %423 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 2
  %424 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 2, i32 1
  %425 = load i32, i32* %424, align 4, !tbaa !22
  store i32 %425, i32* %423, align 4, !tbaa !27
  %426 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 3
  %427 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1
  %428 = load i32, i32* %427, align 4, !tbaa !22
  store i32 %428, i32* %426, align 4, !tbaa !27
  %429 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i32 0, i32 4
  store i32 %2, i32* %429, align 4, !tbaa !27
  %430 = call i32 @fwrite(i8* nonnull %416, i32 20, i32 1, i8* nonnull %34) #4
  %431 = icmp eq i32 %430, 0
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %416) #5
  br i1 %431, label %588, label %432

432:                                              ; preds = %233, %410, %415
  %433 = phi i32 [ %411, %410 ], [ 0, %415 ], [ 0, %233 ]
  %434 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %434) #5
  %435 = udiv i32 4096, %83
  %436 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 0
  %437 = getelementptr inbounds [4 x %struct.halide_dimension_t], [4 x %struct.halide_dimension_t]* %5, i32 0, i32 3, i32 1
  %438 = load i32, i32* %437, align 4, !tbaa !22
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %576

440:                                              ; preds = %432
  %441 = load i32, i32* %436, align 4, !tbaa !20
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
  %455 = load i32, i32* %442, align 4, !tbaa !20
  %456 = load i32, i32* %443, align 4, !tbaa !22
  br label %457

457:                                              ; preds = %440, %559
  %458 = phi i32 [ %441, %440 ], [ %560, %559 ]
  %459 = phi i32 [ %438, %440 ], [ %561, %559 ]
  %460 = phi i32 [ %455, %440 ], [ %562, %559 ]
  %461 = phi i32 [ %456, %440 ], [ %563, %559 ]
  %462 = phi i32 [ %456, %440 ], [ %564, %559 ]
  %463 = phi i32 [ %455, %440 ], [ %565, %559 ]
  %464 = phi i32 [ %441, %440 ], [ %567, %559 ]
  %465 = phi i32 [ 0, %440 ], [ %566, %559 ]
  %466 = icmp sgt i32 %462, 0
  br i1 %466, label %467, label %559

467:                                              ; preds = %457
  %468 = load i32, i32* %444, align 4, !tbaa !20
  %469 = load i32, i32* %445, align 4, !tbaa !22
  br label %470

470:                                              ; preds = %467, %547
  %471 = phi i32 [ %548, %547 ], [ %460, %467 ]
  %472 = phi i32 [ %549, %547 ], [ %461, %467 ]
  %473 = phi i32 [ %550, %547 ], [ %469, %467 ]
  %474 = phi i32 [ %551, %547 ], [ %468, %467 ]
  %475 = phi i32 [ %553, %547 ], [ %463, %467 ]
  %476 = phi i32 [ %552, %547 ], [ %465, %467 ]
  %477 = icmp sgt i32 %473, 0
  br i1 %477, label %478, label %547

478:                                              ; preds = %470, %537
  %479 = phi i32 [ %539, %537 ], [ %474, %470 ]
  %480 = phi i32 [ %538, %537 ], [ %476, %470 ]
  %481 = load i32, i32* %447, align 4, !tbaa !22
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %537

483:                                              ; preds = %478
  %484 = load i32, i32* %446, align 4, !tbaa !20
  br label %485

485:                                              ; preds = %483, %530
  %486 = phi i32 [ %532, %530 ], [ %484, %483 ]
  %487 = phi i32 [ %531, %530 ], [ %480, %483 ]
  %488 = add nsw i32 %487, 1
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %448) #5
  store i32 %486, i32* %449, align 4, !tbaa !27
  store i32 %479, i32* %450, align 4, !tbaa !27
  store i32 %475, i32* %451, align 4, !tbaa !27
  store i32 %464, i32* %452, align 4, !tbaa !27
  %489 = load i32, i32* %28, align 4, !tbaa !19
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %514

491:                                              ; preds = %485
  %492 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %453, align 8, !tbaa !25
  %493 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4, !tbaa !23
  %495 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 0, i32 0
  %496 = load i32, i32* %495, align 4, !tbaa !20
  %497 = sub nsw i32 %486, %496
  %498 = mul nsw i32 %497, %494
  %499 = icmp eq i32 %489, 1
  br i1 %499, label %514, label %500, !llvm.loop !51

500:                                              ; preds = %491, %500
  %501 = phi i32 [ %512, %500 ], [ 1, %491 ]
  %502 = phi i32 [ %511, %500 ], [ %498, %491 ]
  %503 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i32 0, i32 %501
  %504 = load i32, i32* %503, align 4, !tbaa !27
  %505 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 %501, i32 2
  %506 = load i32, i32* %505, align 4, !tbaa !23
  %507 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %492, i32 %501, i32 0
  %508 = load i32, i32* %507, align 4, !tbaa !20
  %509 = sub nsw i32 %504, %508
  %510 = mul nsw i32 %509, %506
  %511 = add nsw i32 %510, %502
  %512 = add nuw nsw i32 %501, 1
  %513 = icmp slt i32 %512, %489
  br i1 %513, label %500, label %514, !llvm.loop !51

514:                                              ; preds = %500, %491, %485
  %515 = phi i32 [ 0, %485 ], [ %498, %491 ], [ %511, %500 ]
  %516 = load i8*, i8** %19, align 4, !tbaa !10
  %517 = load i8, i8* %79, align 1, !tbaa !29
  %518 = zext i8 %517 to i32
  %519 = add nuw nsw i32 %518, 7
  %520 = lshr i32 %519, 3
  %521 = mul nsw i32 %520, %515
  %522 = getelementptr inbounds i8, i8* %516, i32 %521
  %523 = mul nsw i32 %487, %83
  %524 = getelementptr inbounds [4096 x i8], [4096 x i8]* %16, i32 0, i32 %523
  %525 = call i8* @memcpy(i8* nonnull %524, i8* %522, i32 %83) #4
  %526 = icmp eq i32 %488, %435
  br i1 %526, label %527, label %530

527:                                              ; preds = %514
  %528 = call i32 @fwrite(i8* nonnull %434, i32 %454, i32 1, i8* nonnull %34) #4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %585, label %530

530:                                              ; preds = %514, %527
  %531 = phi i32 [ 0, %527 ], [ %488, %514 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %448) #5
  %532 = add nsw i32 %486, 1
  %533 = load i32, i32* %447, align 4, !tbaa !22
  %534 = load i32, i32* %446, align 4, !tbaa !20
  %535 = add nsw i32 %534, %533
  %536 = icmp slt i32 %532, %535
  br i1 %536, label %485, label %537, !llvm.loop !52

537:                                              ; preds = %530, %478
  %538 = phi i32 [ %480, %478 ], [ %531, %530 ]
  %539 = add nsw i32 %479, 1
  %540 = load i32, i32* %445, align 4, !tbaa !22
  %541 = load i32, i32* %444, align 4, !tbaa !20
  %542 = add nsw i32 %541, %540
  %543 = icmp slt i32 %539, %542
  br i1 %543, label %478, label %544, !llvm.loop !53

544:                                              ; preds = %537
  %545 = load i32, i32* %443, align 4, !tbaa !22
  %546 = load i32, i32* %442, align 4, !tbaa !20
  br label %547

547:                                              ; preds = %544, %470
  %548 = phi i32 [ %471, %470 ], [ %546, %544 ]
  %549 = phi i32 [ %472, %470 ], [ %545, %544 ]
  %550 = phi i32 [ %473, %470 ], [ %540, %544 ]
  %551 = phi i32 [ %474, %470 ], [ %541, %544 ]
  %552 = phi i32 [ %476, %470 ], [ %538, %544 ]
  %553 = add nsw i32 %475, 1
  %554 = add nsw i32 %548, %549
  %555 = icmp slt i32 %553, %554
  br i1 %555, label %470, label %556, !llvm.loop !54

556:                                              ; preds = %547
  %557 = load i32, i32* %437, align 4, !tbaa !22
  %558 = load i32, i32* %436, align 4, !tbaa !20
  br label %559

559:                                              ; preds = %556, %457
  %560 = phi i32 [ %458, %457 ], [ %558, %556 ]
  %561 = phi i32 [ %459, %457 ], [ %557, %556 ]
  %562 = phi i32 [ %460, %457 ], [ %548, %556 ]
  %563 = phi i32 [ %461, %457 ], [ %549, %556 ]
  %564 = phi i32 [ %462, %457 ], [ %549, %556 ]
  %565 = phi i32 [ %463, %457 ], [ %548, %556 ]
  %566 = phi i32 [ %465, %457 ], [ %552, %556 ]
  %567 = add nsw i32 %464, 1
  %568 = add nsw i32 %560, %561
  %569 = icmp slt i32 %567, %568
  br i1 %569, label %457, label %570, !llvm.loop !55

570:                                              ; preds = %559
  %571 = icmp sgt i32 %566, 0
  br i1 %571, label %572, label %576

572:                                              ; preds = %570
  %573 = mul nsw i32 %566, %83
  %574 = call i32 @fwrite(i8* nonnull %434, i32 %573, i32 1, i8* nonnull %34) #4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %586, label %576

576:                                              ; preds = %432, %572, %570
  %577 = bitcast i64* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %577) #5
  store i64 0, i64* %18, align 8, !tbaa !56
  %578 = icmp eq i32 %433, 0
  br i1 %578, label %582, label %579

579:                                              ; preds = %576
  %580 = call i32 @fwrite(i8* nonnull %577, i32 %433, i32 1, i8* nonnull %34) #4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %583, label %582

582:                                              ; preds = %579, %576
  br label %583

583:                                              ; preds = %579, %582
  %584 = phi i32 [ 0, %582 ], [ -16, %579 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %577) #5
  br label %586

585:                                              ; preds = %527
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %448) #5
  br label %586

586:                                              ; preds = %585, %572, %583
  %587 = phi i32 [ %584, %583 ], [ -14, %572 ], [ -13, %585 ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %434) #5
  br label %588

588:                                              ; preds = %586, %415, %410, %234
  %589 = phi i32 [ %587, %586 ], [ %235, %234 ], [ %413, %410 ], [ -12, %415 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %37) #5
  %590 = call i32 @fclose(i8* nonnull %34) #4
  br label %591

591:                                              ; preds = %32, %588, %31, %26
  %592 = phi i32 [ -1, %26 ], [ -1, %31 ], [ %589, %588 ], [ -2, %32 ]
  ret i32 %592
}

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #3

declare i32 @halide_copy_to_host(i8*, %struct.halide_buffer_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

declare i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #3

declare i8* @fopen(i8*, i8*) local_unnamed_addr #3

declare i32 @fwrite(i8*, i32, i32, i8*) local_unnamed_addr #3

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
!10 = !{!11, !13, i64 12}
!11 = !{!"_ZTS15halide_buffer_t", !12, i64 0, !13, i64 8, !13, i64 12, !12, i64 16, !14, i64 24, !17, i64 28, !13, i64 32, !13, i64 36}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"_ZTS13halide_type_t", !15, i64 0, !4, i64 1, !16, i64 2}
!15 = !{!"_ZTS18halide_type_code_t", !4, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"int", !4, i64 0}
!18 = !{!11, !12, i64 0}
!19 = !{!11, !17, i64 28}
!20 = !{!21, !17, i64 0}
!21 = !{!"_ZTS18halide_dimension_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!22 = !{!21, !17, i64 4}
!23 = !{!21, !17, i64 8}
!24 = !{!21, !17, i64 12}
!25 = !{!11, !13, i64 32}
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
