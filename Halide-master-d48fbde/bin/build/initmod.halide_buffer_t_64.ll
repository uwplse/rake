; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/halide_buffer_t.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type opaque
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_get_dimensions(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !3
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i8* @_halide_buffer_get_host(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2
  %3 = load i8*, i8** %2, align 8, !tbaa !13
  ret i8* %3
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i64 @_halide_buffer_get_device(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8, !tbaa !14
  ret i64 %3
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak %struct.halide_device_interface_t* @_halide_buffer_get_device_interface(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  %3 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %2, align 8, !tbaa !15
  ret %struct.halide_device_interface_t* %3
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_get_min(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !tbaa !16
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !17
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_get_max(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !tbaa !16
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 0
  %7 = load i32, i32* %6, align 4, !tbaa !17
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !19
  %10 = add i32 %7, -1
  %11 = add i32 %10, %9
  ret i32 %11
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_get_extent(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !tbaa !16
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !19
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_get_stride(%struct.halide_buffer_t* %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %4 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %3, align 8, !tbaa !16
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %4, i64 %5, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !20
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_set_host_dirty(%struct.halide_buffer_t* %0, i1 zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = and i64 %4, -2
  %6 = zext i1 %1 to i64
  %7 = or i64 %5, %6
  store i64 %7, i64* %3, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak i32 @_halide_buffer_set_device_dirty(%struct.halide_buffer_t* %0, i1 zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %4 = load i64, i64* %3, align 8, !tbaa !21
  %5 = and i64 %4, -3
  %6 = select i1 %1, i64 2, i64 0
  %7 = or i64 %5, %6
  store i64 %7, i64* %3, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak zeroext i1 @_halide_buffer_get_host_dirty(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8, !tbaa !21
  %4 = and i64 %3, 1
  %5 = icmp ne i64 %4, 0
  ret i1 %5
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak zeroext i1 @_halide_buffer_get_device_dirty(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8, !tbaa !21
  %4 = and i64 %3, 2
  %5 = icmp ne i64 %4, 0
  ret i1 %5
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak %struct.halide_dimension_t* @_halide_buffer_get_shape(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %3 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %2, align 8, !tbaa !16
  ret %struct.halide_dimension_t* %3
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak zeroext i1 @_halide_buffer_is_bounds_query(%struct.halide_buffer_t* %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2
  %3 = load i8*, i8** %2, align 8, !tbaa !13
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !14
  %8 = icmp eq i64 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @_halide_buffer_get_type(%struct.halide_buffer_t* %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 0
  %5 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %4, i64 4) #5
  %6 = load i32, i32* %2, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  ret i32 %6
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak %struct.halide_buffer_t* @_halide_buffer_init(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1, i8* %2, i64 %3, %struct.halide_device_interface_t* %4, i32 %5, i32 %6, i32 %7, %struct.halide_dimension_t* %8, i64 %9) local_unnamed_addr #1 {
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2
  store i8* %2, i8** %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  store i64 %3, i64* %12, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  store %struct.halide_device_interface_t* %4, %struct.halide_device_interface_t** %13, align 8, !tbaa !15
  %14 = trunc i32 %5 to i8
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 0
  store i8 %14, i8* %15, align 8, !tbaa !23
  %16 = trunc i32 %6 to i8
  %17 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !24
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 2
  store i16 1, i16* %18, align 2, !tbaa !25
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5
  store i32 %7, i32* %19, align 4, !tbaa !3
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  store %struct.halide_dimension_t* %1, %struct.halide_dimension_t** %20, align 8, !tbaa !16
  %21 = icmp ne %struct.halide_dimension_t* %8, %1
  %22 = icmp sgt i32 %7, 0
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %10
  %25 = zext i32 %7 to i64
  %26 = bitcast %struct.halide_dimension_t* %1 to i8*
  %27 = bitcast %struct.halide_dimension_t* %8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %26, i8* nonnull align 4 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !26
  %28 = icmp eq i32 %7, 1
  br i1 %28, label %38, label %29, !llvm.loop !27

29:                                               ; preds = %24, %29
  %30 = phi i64 [ %36, %29 ], [ 1, %24 ]
  %31 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %20, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %30
  %33 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %31, i64 %30
  %34 = bitcast %struct.halide_dimension_t* %33 to i8*
  %35 = bitcast %struct.halide_dimension_t* %32 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %34, i8* nonnull align 4 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !26
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %25
  br i1 %37, label %38, label %29, !llvm.loop !27

38:                                               ; preds = %29, %24, %10
  %39 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  store i64 %9, i64* %39, align 8, !tbaa !21
  ret %struct.halide_buffer_t* %0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind mustprogress
define weak %struct.halide_buffer_t* @_halide_buffer_init_from_buffer(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1, %struct.halide_buffer_t* %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 2
  store i8* %5, i8** %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 0
  store i64 %8, i64* %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 1
  %11 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 1
  store %struct.halide_device_interface_t* %11, %struct.halide_device_interface_t** %12, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 4, i32 0
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 4, i32 0
  %15 = bitcast i8* %14 to i32*
  %16 = bitcast i8* %13 to i32*
  %17 = load i32, i32* %15, align 8
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 5
  %19 = load i32, i32* %18, align 4, !tbaa !3
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5
  store i32 %19, i32* %20, align 4, !tbaa !3
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  store %struct.halide_dimension_t* %1, %struct.halide_dimension_t** %21, align 8, !tbaa !16
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 3
  store i64 %23, i64* %24, align 8, !tbaa !21
  %25 = icmp sgt i32 %19, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %2, i64 0, i32 6
  %28 = bitcast %struct.halide_dimension_t** %27 to i8**
  %29 = load i8*, i8** %28, align 8, !tbaa !16
  %30 = bitcast %struct.halide_dimension_t* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %30, i8* nonnull align 4 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !26
  %31 = load i32, i32* %20, align 4, !tbaa !3
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %34, label %33, !llvm.loop !29

33:                                               ; preds = %34, %26, %3
  ret %struct.halide_buffer_t* %0

34:                                               ; preds = %26, %34
  %35 = phi i64 [ %42, %34 ], [ 1, %26 ]
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %21, align 8, !tbaa !16
  %37 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %27, align 8, !tbaa !16
  %38 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %37, i64 %35
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %36, i64 %35
  %40 = bitcast %struct.halide_dimension_t* %39 to i8*
  %41 = bitcast %struct.halide_dimension_t* %38 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %40, i8* nonnull align 4 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !26
  %42 = add nuw nsw i64 %35, 1
  %43 = load i32, i32* %20, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %34, label %33, !llvm.loop !29
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak %struct.halide_buffer_t* @_halide_buffer_crop(i8* %0, %struct.halide_buffer_t* %1, %struct.halide_dimension_t* %2, %struct.halide_buffer_t* %3, i32* %4, i32* %5) local_unnamed_addr #1 {
  %7 = bitcast %struct.halide_buffer_t* %1 to i8*
  %8 = bitcast %struct.halide_buffer_t* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !30
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  store %struct.halide_dimension_t* %2, %struct.halide_dimension_t** %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %11 = load i32, i32* %10, align 4, !tbaa !3
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %15 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !tbaa !16
  br label %21

16:                                               ; preds = %21, %6
  %17 = phi i64 [ 0, %6 ], [ %47, %21 ]
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8, !tbaa !13
  %20 = icmp eq i8* %19, null
  br i1 %20, label %60, label %52

21:                                               ; preds = %13, %21
  %22 = phi %struct.halide_dimension_t* [ %2, %13 ], [ %32, %21 ]
  %23 = phi %struct.halide_dimension_t* [ %15, %13 ], [ %38, %21 ]
  %24 = phi i64 [ 0, %13 ], [ %48, %21 ]
  %25 = phi i64 [ 0, %13 ], [ %47, %21 ]
  %26 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %23, i64 %24
  %27 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %22, i64 %24
  %28 = bitcast %struct.halide_dimension_t* %27 to i8*
  %29 = bitcast %struct.halide_dimension_t* %26 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %28, i8* nonnull align 4 dereferenceable(16) %29, i64 16, i1 false), !tbaa.struct !26
  %30 = getelementptr inbounds i32, i32* %4, i64 %24
  %31 = load i32, i32* %30, align 4, !tbaa !22
  %32 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %9, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %24, i32 0
  store i32 %31, i32* %33, align 4, !tbaa !17
  %34 = getelementptr inbounds i32, i32* %5, i64 %24
  %35 = load i32, i32* %34, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %32, i64 %24, i32 1
  store i32 %35, i32* %36, align 4, !tbaa !19
  %37 = load i32, i32* %30, align 4, !tbaa !22
  %38 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %14, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i64 %24, i32 0
  %40 = load i32, i32* %39, align 4, !tbaa !17
  %41 = sub nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %38, i64 %24, i32 2
  %44 = load i32, i32* %43, align 4, !tbaa !20
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %42, %45
  %47 = add nsw i64 %46, %25
  %48 = add nuw nsw i64 %24, 1
  %49 = load i32, i32* %10, align 4, !tbaa !3
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %21, label %16, !llvm.loop !36

52:                                               ; preds = %16
  %53 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %54 = load i8, i8* %53, align 1, !tbaa !37
  %55 = zext i8 %54 to i64
  %56 = add nuw nsw i64 %55, 7
  %57 = lshr i64 %56, 3
  %58 = mul nsw i64 %57, %17
  %59 = getelementptr inbounds i8, i8* %19, i64 %58
  store i8* %59, i8** %18, align 8, !tbaa !13
  br label %60

60:                                               ; preds = %52, %16
  %61 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 1
  store %struct.halide_device_interface_t* null, %struct.halide_device_interface_t** %61, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  store i64 0, i64* %62, align 8, !tbaa !14
  %63 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 1
  %64 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %63, align 8, !tbaa !15
  %65 = icmp eq %struct.halide_device_interface_t* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %64, i64 0, i32 9
  %68 = load i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)** %67, align 8, !tbaa !38
  %69 = tail call i32 %68(i8* %0, %struct.halide_buffer_t* nonnull %3, %struct.halide_buffer_t* nonnull %1) #5
  br label %70

70:                                               ; preds = %66, %60
  ret %struct.halide_buffer_t* %1
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @_halide_buffer_retire_crop_after_extern_stage(i8* %0, i8* %1) local_unnamed_addr #1 {
  %3 = bitcast i8* %1 to %struct.halide_buffer_t**
  %4 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds i8, i8* %1, i64 8
  %6 = bitcast i8* %5 to %struct.halide_buffer_t**
  %7 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !14
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !14
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 3
  %16 = load i64, i64* %15, align 8, !tbaa !21
  %17 = and i64 %16, 2
  %18 = icmp eq i64 %17, 0
  br i1 %14, label %19, label %32

19:                                               ; preds = %11
  br i1 %18, label %26, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 1
  %22 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %22, i64 0, i32 4
  %24 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %23, align 8, !tbaa !40
  %25 = tail call i32 %24(i8* %0, %struct.halide_buffer_t* nonnull %4) #5
  br label %26

26:                                               ; preds = %20, %19
  %27 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 1
  %28 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %27, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %28, i64 0, i32 1
  %30 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %29, align 8, !tbaa !41
  %31 = tail call i32 %30(i8* %0, %struct.halide_buffer_t* nonnull %4) #5
  br label %43

32:                                               ; preds = %11
  br i1 %18, label %37, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3
  %35 = load i64, i64* %34, align 8, !tbaa !21
  %36 = or i64 %35, 2
  store i64 %36, i64* %34, align 8, !tbaa !21
  br label %37

37:                                               ; preds = %33, %32
  %38 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 1
  %39 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %38, align 8, !tbaa !15
  %40 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %39, i64 0, i32 11
  %41 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %40, align 8, !tbaa !42
  %42 = tail call i32 %41(i8* %0, %struct.halide_buffer_t* nonnull %4) #5
  br label %43

43:                                               ; preds = %26, %37, %2
  %44 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 3
  %45 = load i64, i64* %44, align 8, !tbaa !21
  %46 = and i64 %45, 1
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3
  %50 = load i64, i64* %49, align 8, !tbaa !21
  %51 = or i64 %50, 1
  store i64 %51, i64* %49, align 8, !tbaa !21
  br label %52

52:                                               ; preds = %48, %43
  ret i32 0
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @_halide_buffer_retire_crops_after_extern_stage(i8* %0, i8* %1) local_unnamed_addr #1 {
  %3 = bitcast i8* %1 to %struct.halide_buffer_t**
  %4 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %3, align 8, !tbaa !32
  %5 = icmp eq %struct.halide_buffer_t* %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %2, %55
  %7 = phi %struct.halide_buffer_t* [ %57, %55 ], [ %4, %2 ]
  %8 = phi %struct.halide_buffer_t** [ %56, %55 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %8, i64 1
  %10 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !14
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !14
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3
  %19 = load i64, i64* %18, align 8, !tbaa !21
  %20 = and i64 %19, 2
  %21 = icmp eq i64 %20, 0
  br i1 %17, label %22, label %35

22:                                               ; preds = %14
  br i1 %21, label %29, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 1
  %25 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %24, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %25, i64 0, i32 4
  %27 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %26, align 8, !tbaa !40
  %28 = tail call i32 %27(i8* %0, %struct.halide_buffer_t* nonnull %7) #5
  br label %29

29:                                               ; preds = %23, %22
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 1
  %31 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %30, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %31, i64 0, i32 1
  %33 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %32, align 8, !tbaa !41
  %34 = tail call i32 %33(i8* %0, %struct.halide_buffer_t* nonnull %7) #5
  br label %46

35:                                               ; preds = %14
  br i1 %21, label %40, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i64 0, i32 3
  %38 = load i64, i64* %37, align 8, !tbaa !21
  %39 = or i64 %38, 2
  store i64 %39, i64* %37, align 8, !tbaa !21
  br label %40

40:                                               ; preds = %36, %35
  %41 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 1
  %42 = load %struct.halide_device_interface_t*, %struct.halide_device_interface_t** %41, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.halide_device_interface_t, %struct.halide_device_interface_t* %42, i64 0, i32 11
  %44 = load i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)** %43, align 8, !tbaa !42
  %45 = tail call i32 %44(i8* %0, %struct.halide_buffer_t* nonnull %7) #5
  br label %46

46:                                               ; preds = %40, %29, %6
  %47 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %7, i64 0, i32 3
  %48 = load i64, i64* %47, align 8, !tbaa !21
  %49 = and i64 %48, 1
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %10, i64 0, i32 3
  %53 = load i64, i64* %52, align 8, !tbaa !21
  %54 = or i64 %53, 1
  store i64 %54, i64* %52, align 8, !tbaa !21
  br label %55

55:                                               ; preds = %46, %51
  %56 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %8, i64 2
  %57 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %56, align 8, !tbaa !32
  %58 = icmp eq %struct.halide_buffer_t* %57, null
  br i1 %58, label %59, label %6, !llvm.loop !43

59:                                               ; preds = %55, %2
  ret i32 0
}

; Function Attrs: alwaysinline nounwind willreturn mustprogress
define weak %struct.halide_buffer_t* @_halide_buffer_set_bounds(%struct.halide_buffer_t* %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %6 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %5, align 8, !tbaa !16
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %6, i64 %7, i32 0
  store i32 %2, i32* %8, align 4, !tbaa !17
  %9 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %6, i64 %7, i32 1
  store i32 %3, i32* %9, align 4, !tbaa !19
  ret %struct.halide_buffer_t* %0
}

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

attributes #0 = { alwaysinline nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !12, i64 36}
!4 = !{!"_ZTS15halide_buffer_t", !5, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !9, i64 32, !12, i64 36, !8, i64 40, !8, i64 48}
!5 = !{!"long long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"_ZTS13halide_type_t", !10, i64 0, !6, i64 1, !11, i64 2}
!10 = !{!"_ZTS18halide_type_code_t", !6, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!4, !8, i64 16}
!14 = !{!4, !5, i64 0}
!15 = !{!4, !8, i64 8}
!16 = !{!4, !8, i64 40}
!17 = !{!18, !12, i64 0}
!18 = !{!"_ZTS18halide_dimension_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!19 = !{!18, !12, i64 4}
!20 = !{!18, !12, i64 8}
!21 = !{!4, !5, i64 24}
!22 = !{!12, !12, i64 0}
!23 = !{!4, !10, i64 32}
!24 = !{!4, !6, i64 33}
!25 = !{!4, !11, i64 34}
!26 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{i64 0, i64 8, !31, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !31, i64 32, i64 1, !33, i64 33, i64 1, !34, i64 34, i64 2, !35, i64 36, i64 4, !22, i64 40, i64 8, !32, i64 48, i64 8, !32}
!31 = !{!5, !5, i64 0}
!32 = !{!8, !8, i64 0}
!33 = !{!10, !10, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!11, !11, i64 0}
!36 = distinct !{!36, !28}
!37 = !{!9, !6, i64 1}
!38 = !{!39, !8, i64 72}
!39 = !{!"_ZTS25halide_device_interface_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120}
!40 = !{!39, !8, i64 32}
!41 = !{!39, !8, i64 8}
!42 = !{!39, !8, i64 88}
!43 = distinct !{!43, !28}
