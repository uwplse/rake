; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }

@.str.1 = private unnamed_addr constant [27 x i8] c"MSAN failure detected for \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" @ \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Printer buffer allocation failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<nullptr>\00", align 1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %1, %4 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %7
  %9 = load i64, i64* %8, align 8, !tbaa !3
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %6, label %25, !llvm.loop !7

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 4, i32 %15
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 5, i32 %15
  br label %40

25:                                               ; preds = %11, %14
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !9
  %28 = add i64 %27, %2
  %29 = trunc i64 %28 to i32
  %30 = inttoptr i32 %29 to i8*
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !11
  %33 = add i64 %32, %3
  %34 = trunc i64 %33 to i32
  %35 = inttoptr i32 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !12
  %38 = trunc i64 %37 to i32
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #5
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #6
  %44 = load i64, i64* %23, align 8, !tbaa !3
  %45 = add i64 %44, %42
  %46 = load i64, i64* %24, align 8, !tbaa !3
  %47 = add i64 %46, %43
  %48 = add nuw i64 %41, 1
  %49 = load i64, i64* %18, align 8, !tbaa !3
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %40, label %51, !llvm.loop !13

51:                                               ; preds = %40, %17, %25
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i32 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !14
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #6
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #7
  br i1 %2, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 2
  %10 = load i8*, i8** %9, align 4, !tbaa !15
  %11 = ptrtoint i8* %10 to i32
  %12 = zext i32 %11 to i64
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i64 [ %12, %8 ], [ %15, %13 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8, !tbaa !9
  br i1 %4, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 2
  %21 = load i8*, i8** %20, align 4, !tbaa !15
  %22 = ptrtoint i8* %21 to i32
  %23 = zext i32 %22 to i64
  br label %27

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i64 [ %23, %19 ], [ %26, %24 ]
  %29 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 1
  store i64 %28, i64* %29, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 4, i32 1
  %31 = load i8, i8* %30, align 1, !tbaa !23
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 7
  %34 = lshr i32 %33, 3
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 6
  store i64 %35, i64* %36, align 8, !tbaa !12
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 0
  store i64 1, i64* %37, align 8, !tbaa !3
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 0
  store i64 0, i64* %38, align 8, !tbaa !3
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 0
  store i64 0, i64* %39, align 8, !tbaa !3
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 1
  store i64 1, i64* %40, align 8, !tbaa !3
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 1
  store i64 0, i64* %41, align 8, !tbaa !3
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 1
  store i64 0, i64* %42, align 8, !tbaa !3
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 2
  store i64 1, i64* %43, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 2
  store i64 0, i64* %44, align 8, !tbaa !3
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 2
  store i64 0, i64* %45, align 8, !tbaa !3
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 3
  store i64 1, i64* %46, align 8, !tbaa !3
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 3
  store i64 0, i64* %47, align 8, !tbaa !3
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 3
  store i64 0, i64* %48, align 8, !tbaa !3
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 4
  store i64 1, i64* %49, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 4
  store i64 0, i64* %50, align 8, !tbaa !3
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 4
  store i64 0, i64* %51, align 8, !tbaa !3
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 5
  store i64 1, i64* %52, align 8, !tbaa !3
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 5
  store i64 0, i64* %53, align 8, !tbaa !3
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 5
  store i64 0, i64* %54, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 6
  store i64 1, i64* %55, align 8, !tbaa !3
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 6
  store i64 0, i64* %56, align 8, !tbaa !3
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 6
  store i64 0, i64* %57, align 8, !tbaa !3
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 7
  store i64 1, i64* %58, align 8, !tbaa !3
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 7
  store i64 0, i64* %59, align 8, !tbaa !3
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 7
  store i64 0, i64* %60, align 8, !tbaa !3
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 8
  store i64 1, i64* %61, align 8, !tbaa !3
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 8
  store i64 0, i64* %62, align 8, !tbaa !3
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 8
  store i64 0, i64* %63, align 8, !tbaa !3
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 9
  store i64 1, i64* %64, align 8, !tbaa !3
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 9
  store i64 0, i64* %65, align 8, !tbaa !3
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 9
  store i64 0, i64* %66, align 8, !tbaa !3
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 10
  store i64 1, i64* %67, align 8, !tbaa !3
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 10
  store i64 0, i64* %68, align 8, !tbaa !3
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 10
  store i64 0, i64* %69, align 8, !tbaa !3
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 11
  store i64 1, i64* %70, align 8, !tbaa !3
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 11
  store i64 0, i64* %71, align 8, !tbaa !3
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 11
  store i64 0, i64* %72, align 8, !tbaa !3
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 12
  store i64 1, i64* %73, align 8, !tbaa !3
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 12
  store i64 0, i64* %74, align 8, !tbaa !3
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 12
  store i64 0, i64* %75, align 8, !tbaa !3
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 13
  store i64 1, i64* %76, align 8, !tbaa !3
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 13
  store i64 0, i64* %77, align 8, !tbaa !3
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 13
  store i64 0, i64* %78, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 14
  store i64 1, i64* %79, align 8, !tbaa !3
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 14
  store i64 0, i64* %80, align 8, !tbaa !3
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 14
  store i64 0, i64* %81, align 8, !tbaa !3
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 15
  store i64 1, i64* %82, align 8, !tbaa !3
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 15
  store i64 0, i64* %83, align 8, !tbaa !3
  %84 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 15
  store i64 0, i64* %84, align 8, !tbaa !3
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 2
  %86 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %87 = load i32, i32* %86, align 4, !tbaa !24
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %27
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !25
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %93 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %92, align 8, !tbaa !25
  br label %101

94:                                               ; preds = %101, %27
  %95 = phi i64 [ 0, %27 ], [ %114, %101 ]
  %96 = load i64, i64* %36, align 8, !tbaa !12
  %97 = mul i64 %95, %96
  store i64 %97, i64* %85, align 8, !tbaa !14
  %98 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 5
  %99 = load i32, i32* %98, align 4, !tbaa !24
  %100 = icmp eq i32 %87, %99
  br i1 %100, label %117, label %126

101:                                              ; preds = %89, %101
  %102 = phi i64 [ 0, %89 ], [ %114, %101 ]
  %103 = phi i32 [ 0, %89 ], [ %115, %101 ]
  %104 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 2
  %105 = load i32, i32* %104, align 4, !tbaa !26
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %93, i32 %103, i32 0
  %108 = load i32, i32* %107, align 4, !tbaa !28
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i32 %103, i32 0
  %110 = load i32, i32* %109, align 4, !tbaa !28
  %111 = sub nsw i32 %108, %110
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %106
  %114 = add i64 %113, %102
  %115 = add nuw nsw i32 %103, 1
  %116 = icmp slt i32 %115, %87
  br i1 %116, label %101, label %94, !llvm.loop !29

117:                                              ; preds = %94
  %118 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 4, i32 1
  %119 = load i8, i8* %118, align 1, !tbaa !23
  %120 = zext i8 %119 to i32
  %121 = add nuw nsw i32 %120, 7
  %122 = lshr i32 %121, 3
  %123 = icmp ne i32 %34, %122
  %124 = icmp sgt i32 %87, 16
  %125 = or i1 %124, %123
  br i1 %125, label %126, label %128

126:                                              ; preds = %117, %94
  %127 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %127, i8 0, i32 416, i1 false)
  br label %245

128:                                              ; preds = %117
  %129 = icmp eq i64 %96, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %128
  br i1 %88, label %131, label %243

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i32 0, i32 6
  %133 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %132, align 8, !tbaa !25
  %134 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %135 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %134, align 8, !tbaa !25
  br label %144

136:                                              ; preds = %128
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i32 416, i1 false)
  br label %245

138:                                              ; preds = %168
  %139 = load i64, i64* %36, align 8, !tbaa !12
  %140 = load i64, i64* %38, align 8, !tbaa !3
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %243

142:                                              ; preds = %138
  %143 = load i64, i64* %39, align 8, !tbaa !3
  br label %190

144:                                              ; preds = %131, %168
  %145 = phi i32 [ 0, %131 ], [ %175, %168 ]
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 2
  %147 = load i32, i32* %146, align 4, !tbaa !26
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %35
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %135, i32 %145, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !26
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %35
  %154 = icmp eq i32 %145, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %155, %162
  %158 = phi i32 [ %163, %162 ], [ 0, %155 ]
  %159 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %158
  %160 = load i64, i64* %159, align 8, !tbaa !3
  %161 = icmp ult i64 %149, %160
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = add nuw nsw i32 %158, 1
  %164 = icmp ult i32 %163, %145
  br i1 %164, label %157, label %165, !llvm.loop !30

165:                                              ; preds = %162, %157, %155, %144
  %166 = phi i32 [ 0, %144 ], [ %145, %155 ], [ %158, %157 ], [ %145, %162 ]
  %167 = icmp ugt i32 %145, %166
  br i1 %167, label %177, label %168

168:                                              ; preds = %177, %165
  %169 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %133, i32 %145, i32 1
  %170 = load i32, i32* %169, align 4, !tbaa !31
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %166
  store i64 %171, i64* %172, align 8, !tbaa !3
  %173 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %166
  store i64 %149, i64* %173, align 8, !tbaa !3
  %174 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %166
  store i64 %153, i64* %174, align 8, !tbaa !3
  %175 = add nuw nsw i32 %145, 1
  %176 = icmp slt i32 %175, %87
  br i1 %176, label %144, label %138, !llvm.loop !32

177:                                              ; preds = %165, %177
  %178 = phi i32 [ %179, %177 ], [ %145, %165 ]
  %179 = add nsw i32 %178, -1
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %179
  %181 = load i64, i64* %180, align 8, !tbaa !3
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 3, i32 %178
  store i64 %181, i64* %182, align 8, !tbaa !3
  %183 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %179
  %184 = load i64, i64* %183, align 8, !tbaa !3
  %185 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 5, i32 %178
  store i64 %184, i64* %185, align 8, !tbaa !3
  %186 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %179
  %187 = load i64, i64* %186, align 8, !tbaa !3
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i32 0, i32 4, i32 %178
  store i64 %187, i64* %188, align 8, !tbaa !3
  %189 = icmp sgt i32 %179, %166
  br i1 %189, label %177, label %168, !llvm.loop !33

190:                                              ; preds = %142, %194
  %191 = phi i64 [ %143, %142 ], [ %199, %194 ]
  %192 = phi i64 [ %140, %142 ], [ %196, %194 ]
  %193 = icmp eq i64 %192, %191
  br i1 %193, label %194, label %243

194:                                              ; preds = %190
  %195 = load i64, i64* %37, align 8, !tbaa !3
  %196 = mul i64 %195, %191
  store i64 %196, i64* %36, align 8, !tbaa !12
  %197 = load i64, i64* %40, align 8, !tbaa !3
  store i64 %197, i64* %37, align 8, !tbaa !3
  %198 = load i64, i64* %41, align 8, !tbaa !3
  store i64 %198, i64* %38, align 8, !tbaa !3
  %199 = load i64, i64* %42, align 8, !tbaa !3
  store i64 %199, i64* %39, align 8, !tbaa !3
  %200 = load i64, i64* %43, align 8, !tbaa !3
  store i64 %200, i64* %40, align 8, !tbaa !3
  %201 = load i64, i64* %44, align 8, !tbaa !3
  store i64 %201, i64* %41, align 8, !tbaa !3
  %202 = load i64, i64* %45, align 8, !tbaa !3
  store i64 %202, i64* %42, align 8, !tbaa !3
  %203 = load i64, i64* %46, align 8, !tbaa !3
  store i64 %203, i64* %43, align 8, !tbaa !3
  %204 = load i64, i64* %47, align 8, !tbaa !3
  store i64 %204, i64* %44, align 8, !tbaa !3
  %205 = load i64, i64* %48, align 8, !tbaa !3
  store i64 %205, i64* %45, align 8, !tbaa !3
  %206 = load i64, i64* %49, align 8, !tbaa !3
  store i64 %206, i64* %46, align 8, !tbaa !3
  %207 = load i64, i64* %50, align 8, !tbaa !3
  store i64 %207, i64* %47, align 8, !tbaa !3
  %208 = load i64, i64* %51, align 8, !tbaa !3
  store i64 %208, i64* %48, align 8, !tbaa !3
  %209 = load i64, i64* %52, align 8, !tbaa !3
  store i64 %209, i64* %49, align 8, !tbaa !3
  %210 = load i64, i64* %53, align 8, !tbaa !3
  store i64 %210, i64* %50, align 8, !tbaa !3
  %211 = load i64, i64* %54, align 8, !tbaa !3
  store i64 %211, i64* %51, align 8, !tbaa !3
  %212 = load i64, i64* %55, align 8, !tbaa !3
  store i64 %212, i64* %52, align 8, !tbaa !3
  %213 = load i64, i64* %56, align 8, !tbaa !3
  store i64 %213, i64* %53, align 8, !tbaa !3
  %214 = load i64, i64* %57, align 8, !tbaa !3
  store i64 %214, i64* %54, align 8, !tbaa !3
  %215 = load i64, i64* %58, align 8, !tbaa !3
  store i64 %215, i64* %55, align 8, !tbaa !3
  %216 = load i64, i64* %59, align 8, !tbaa !3
  store i64 %216, i64* %56, align 8, !tbaa !3
  %217 = load i64, i64* %60, align 8, !tbaa !3
  store i64 %217, i64* %57, align 8, !tbaa !3
  %218 = load i64, i64* %61, align 8, !tbaa !3
  store i64 %218, i64* %58, align 8, !tbaa !3
  %219 = load i64, i64* %62, align 8, !tbaa !3
  store i64 %219, i64* %59, align 8, !tbaa !3
  %220 = load i64, i64* %63, align 8, !tbaa !3
  store i64 %220, i64* %60, align 8, !tbaa !3
  %221 = load i64, i64* %64, align 8, !tbaa !3
  store i64 %221, i64* %61, align 8, !tbaa !3
  %222 = load i64, i64* %65, align 8, !tbaa !3
  store i64 %222, i64* %62, align 8, !tbaa !3
  %223 = load i64, i64* %66, align 8, !tbaa !3
  store i64 %223, i64* %63, align 8, !tbaa !3
  %224 = load i64, i64* %67, align 8, !tbaa !3
  store i64 %224, i64* %64, align 8, !tbaa !3
  %225 = load i64, i64* %68, align 8, !tbaa !3
  store i64 %225, i64* %65, align 8, !tbaa !3
  %226 = load i64, i64* %69, align 8, !tbaa !3
  store i64 %226, i64* %66, align 8, !tbaa !3
  %227 = load i64, i64* %70, align 8, !tbaa !3
  store i64 %227, i64* %67, align 8, !tbaa !3
  %228 = load i64, i64* %71, align 8, !tbaa !3
  store i64 %228, i64* %68, align 8, !tbaa !3
  %229 = load i64, i64* %72, align 8, !tbaa !3
  store i64 %229, i64* %69, align 8, !tbaa !3
  %230 = load i64, i64* %73, align 8, !tbaa !3
  store i64 %230, i64* %70, align 8, !tbaa !3
  %231 = load i64, i64* %74, align 8, !tbaa !3
  store i64 %231, i64* %71, align 8, !tbaa !3
  %232 = load i64, i64* %75, align 8, !tbaa !3
  store i64 %232, i64* %72, align 8, !tbaa !3
  %233 = load i64, i64* %76, align 8, !tbaa !3
  store i64 %233, i64* %73, align 8, !tbaa !3
  %234 = load i64, i64* %77, align 8, !tbaa !3
  store i64 %234, i64* %74, align 8, !tbaa !3
  %235 = load i64, i64* %78, align 8, !tbaa !3
  store i64 %235, i64* %75, align 8, !tbaa !3
  %236 = load i64, i64* %79, align 8, !tbaa !3
  store i64 %236, i64* %76, align 8, !tbaa !3
  %237 = load i64, i64* %80, align 8, !tbaa !3
  store i64 %237, i64* %77, align 8, !tbaa !3
  %238 = load i64, i64* %81, align 8, !tbaa !3
  store i64 %238, i64* %78, align 8, !tbaa !3
  %239 = load i64, i64* %82, align 8, !tbaa !3
  store i64 %239, i64* %79, align 8, !tbaa !3
  %240 = load i64, i64* %83, align 8, !tbaa !3
  store i64 %240, i64* %80, align 8, !tbaa !3
  %241 = load i64, i64* %84, align 8, !tbaa !3
  store i64 %241, i64* %81, align 8, !tbaa !3
  store i64 1, i64* %82, align 8, !tbaa !3
  store i64 0, i64* %83, align 8, !tbaa !3
  store i64 0, i64* %84, align 8, !tbaa !3
  %242 = icmp eq i64 %196, %198
  br i1 %242, label %190, label %243, !llvm.loop !34

243:                                              ; preds = %190, %194, %130, %138
  %244 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(416) %244, i8* nonnull align 8 dereferenceable(416) %7, i32 416, i1 false), !tbaa.struct !35
  br label %245

245:                                              ; preds = %243, %136, %126
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #7
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %1, i64 %2) local_unnamed_addr #0 {
  %4 = trunc i64 %2 to i32
  tail call void @__msan_unpoison(i8* %1, i32 %4) #5
  ret i32 0
}

declare void @__msan_unpoison(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %1, i64 %2, i8* %3) local_unnamed_addr #4 {
  %5 = trunc i64 %2 to i32
  %6 = tail call i32 @__msan_test_shadow(i8* %1, i32 %5) #5
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = tail call i8* @malloc(i32 1024) #5
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i32 1023
  store i8 0, i8* %12, align 1, !tbaa !36
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8* [ %12, %11 ], [ null, %8 ]
  %15 = tail call i8* @halide_string_to_string(i8* %9, i8* %14, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #5
  %16 = icmp eq i8* %3, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %21

19:                                               ; preds = %13
  %20 = tail call i8* @halide_string_to_string(i8* %15, i8* %14, i8* nonnull %3) #5
  br label %21

21:                                               ; preds = %17, %19
  %22 = phi i8* [ %20, %19 ], [ %18, %17 ]
  %23 = tail call i8* @halide_string_to_string(i8* %22, i8* %14, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5
  %24 = tail call i8* @halide_pointer_to_string(i8* %23, i8* %14, i8* %1) #5
  %25 = tail call i8* @halide_string_to_string(i8* %24, i8* %14, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #5
  %26 = zext i32 %6 to i64
  %27 = tail call i8* @halide_int64_to_string(i8* %25, i8* %14, i64 %26, i32 1) #5
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #5
  br i1 %10, label %29, label %30

29:                                               ; preds = %21
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %37

30:                                               ; preds = %21
  %31 = ptrtoint i8* %28 to i32
  %32 = ptrtoint i8* %9 to i32
  %33 = add i32 %31, 1
  %34 = sub i32 %33, %32
  %35 = sext i32 %34 to i64
  %36 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %9, i64 %35) #5
  tail call void @halide_print(i8* %0, i8* nonnull %9) #5
  br label %37

37:                                               ; preds = %29, %30
  call void @free(i8* %9) #5
  call void @__msan_check_mem_is_initialized(i8* %1, i32 %5) #5
  br label %38

38:                                               ; preds = %37, %4
  ret i32 0
}

declare i32 @__msan_test_shadow(i8*, i32) local_unnamed_addr #2

declare void @__msan_check_mem_is_initialized(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, -1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4, %11
  %7 = phi i32 [ %12, %11 ], [ %2, %4 ]
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %7
  %9 = load i64, i64* %8, align 8, !tbaa !3
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %6, label %24, !llvm.loop !37

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %2, %4 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %15
  %19 = load i64, i64* %18, align 8, !tbaa !3
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -1
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %15
  br label %33

24:                                               ; preds = %11, %14
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !9
  %27 = add i64 %26, %3
  %28 = trunc i64 %27 to i32
  %29 = inttoptr i32 %28 to i8*
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6
  %31 = load i64, i64* %30, align 8, !tbaa !12
  %32 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %29, i64 %31) #6
  br label %41

33:                                               ; preds = %21, %33
  %34 = phi i64 [ 0, %21 ], [ %38, %33 ]
  %35 = phi i64 [ %3, %21 ], [ %37, %33 ]
  tail call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %22, i64 %35) #6
  %36 = load i64, i64* %23, align 8, !tbaa !3
  %37 = add i64 %36, %35
  %38 = add nuw i64 %34, 1
  %39 = load i64, i64* %18, align 8, !tbaa !3
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %33, label %41, !llvm.loop !38

41:                                               ; preds = %33, %17, %24
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3, i8* %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %5, %12
  %8 = phi i32 [ %13, %12 ], [ %2, %5 ]
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %8
  %10 = load i64, i64* %9, align 8, !tbaa !3
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = add nsw i32 %8, -1
  %14 = icmp sgt i32 %8, 0
  br i1 %14, label %7, label %25, !llvm.loop !39

15:                                               ; preds = %7, %5
  %16 = phi i32 [ %2, %5 ], [ %8, %7 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 3, i32 %16
  %20 = load i64, i64* %19, align 8, !tbaa !3
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %16, -1
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 4, i32 %16
  br label %34

25:                                               ; preds = %12, %15
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !9
  %28 = add i64 %27, %3
  %29 = trunc i64 %28 to i32
  %30 = inttoptr i32 %29 to i8*
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i32 0, i32 6
  %32 = load i64, i64* %31, align 8, !tbaa !12
  %33 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %30, i64 %32, i8* %4) #6
  br label %42

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %39, %34 ]
  %36 = phi i64 [ %3, %22 ], [ %38, %34 ]
  tail call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %23, i64 %36, i8* %4) #6
  %37 = load i64, i64* %24, align 8, !tbaa !3
  %38 = add i64 %37, %36
  %39 = add nuw i64 %35, 1
  %40 = load i64, i64* %19, align 8, !tbaa !3
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %34, label %42, !llvm.loop !40

42:                                               ; preds = %34, %18, %25
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  %3 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %4 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %6) #7
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %3, %struct.halide_buffer_t* nonnull %1) #6
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i32 0, i32 6
  %8 = load i64, i64* %7, align 8, !tbaa !12
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %12 = load i64, i64* %11, align 8, !tbaa !41
  %13 = and i64 %12, 2
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %3, i32 15, i64 0) #6
  br label %16

16:                                               ; preds = %10, %5, %15
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %6) #7
  br label %17

17:                                               ; preds = %2, %16
  ret i32 0
}

; Function Attrs: nounwind mustprogress
define weak void @halide_msan_annotate_buffer_is_initialized_as_destructor(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = bitcast i8* %1 to %struct.halide_buffer_t*
  %4 = tail call i32 @halide_msan_annotate_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %3) #6
  ret void
}

; Function Attrs: nounwind mustprogress
define weak i32 @halide_msan_check_buffer_is_initialized(i8* %0, %struct.halide_buffer_t* %1, i8* %2) local_unnamed_addr #0 {
  %4 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %5 = icmp eq %struct.halide_buffer_t* %1, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = bitcast %struct.halide_buffer_t* %1 to i8*
  %8 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* nonnull %7, i64 40, i8* %2) #6
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 6
  %10 = bitcast %struct.halide_dimension_t** %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !24
  %14 = shl i32 %13, 4
  %15 = zext i32 %14 to i64
  %16 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %11, i64 %15, i8* %2) #6
  %17 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %17) #7
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #6
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i32 0, i32 6
  %19 = load i64, i64* %18, align 8, !tbaa !12
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i32 0, i32 3
  %23 = load i64, i64* %22, align 8, !tbaa !41
  %24 = and i64 %23, 2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %4, i32 15, i64 0, i8* %2) #6
  br label %27

27:                                               ; preds = %21, %6, %26
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %17) #7
  br label %28

28:                                               ; preds = %3, %27
  ret i32 0
}

declare i8* @malloc(i32) local_unnamed_addr #2

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #2

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @free(i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_string_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_pointer_to_string(i8*, i8*, i8*) local_unnamed_addr #2

declare extern_weak i8* @halide_int64_to_string(i8*, i8*, i64, i32) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !4, i64 0}
!10 = !{!"_ZTSN6Halide7Runtime8Internal11device_copyE", !4, i64 0, !4, i64 8, !4, i64 16, !5, i64 24, !5, i64 152, !5, i64 280, !4, i64 408}
!11 = !{!10, !4, i64 8}
!12 = !{!10, !4, i64 408}
!13 = distinct !{!13, !8}
!14 = !{!10, !4, i64 16}
!15 = !{!16, !17, i64 12}
!16 = !{!"_ZTS15halide_buffer_t", !4, i64 0, !17, i64 8, !17, i64 12, !4, i64 16, !18, i64 24, !21, i64 28, !17, i64 32, !17, i64 36}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"_ZTS13halide_type_t", !19, i64 0, !5, i64 1, !20, i64 2}
!19 = !{!"_ZTS18halide_type_code_t", !5, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"int", !5, i64 0}
!22 = !{!16, !4, i64 0}
!23 = !{!18, !5, i64 1}
!24 = !{!16, !21, i64 28}
!25 = !{!16, !17, i64 32}
!26 = !{!27, !21, i64 8}
!27 = !{!"_ZTS18halide_dimension_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!28 = !{!27, !21, i64 0}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = !{!27, !21, i64 4}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = !{i64 0, i64 8, !3, i64 8, i64 8, !3, i64 16, i64 8, !3, i64 24, i64 128, !36, i64 152, i64 128, !36, i64 280, i64 128, !36, i64 408, i64 8, !3}
!36 = !{!5, !5, i64 0}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = !{!16, !4, i64 16}
