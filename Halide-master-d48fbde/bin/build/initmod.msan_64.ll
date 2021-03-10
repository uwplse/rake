; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/msan.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

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
  br i1 %5, label %6, label %15

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %1, %4 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !3
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %6, label %27, !llvm.loop !7

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 4, i64 %19
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 5, i64 %19
  br label %39

27:                                               ; preds = %12, %15
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !9
  %30 = add i64 %29, %2
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !11
  %34 = add i64 %33, %3
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 6
  %37 = load i64, i64* %36, align 8, !tbaa !12
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #5
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #6
  %43 = load i64, i64* %25, align 8, !tbaa !3
  %44 = add i64 %43, %41
  %45 = load i64, i64* %26, align 8, !tbaa !3
  %46 = add i64 %45, %42
  %47 = add nuw i64 %40, 1
  %48 = load i64, i64* %20, align 8, !tbaa !3
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %39, label %50, !llvm.loop !13

50:                                               ; preds = %39, %18, %27
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal11copy_memoryERKNS1_11device_copyEPv(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i8* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 0
  %4 = load i64, i64* %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !11
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %0, i64 0, i32 2
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
  br i1 %2, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8, !tbaa !15
  %11 = ptrtoint i8* %10 to i64
  br label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !9
  br i1 %4, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8, !tbaa !15
  %21 = ptrtoint i8* %20 to i64
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !22
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i64 [ %21, %18 ], [ %24, %22 ]
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 1
  store i64 %26, i64* %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 4, i32 1
  %29 = load i8, i8* %28, align 1, !tbaa !23
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 7
  %32 = lshr i32 %31, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 6
  store i64 %33, i64* %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 0
  store i64 1, i64* %35, align 8, !tbaa !3
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 0
  store i64 0, i64* %36, align 8, !tbaa !3
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 0
  store i64 0, i64* %37, align 8, !tbaa !3
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 1
  store i64 1, i64* %38, align 8, !tbaa !3
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 1
  store i64 0, i64* %39, align 8, !tbaa !3
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 1
  store i64 0, i64* %40, align 8, !tbaa !3
  %41 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 2
  store i64 1, i64* %41, align 8, !tbaa !3
  %42 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 2
  store i64 0, i64* %42, align 8, !tbaa !3
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 2
  store i64 0, i64* %43, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 3
  store i64 1, i64* %44, align 8, !tbaa !3
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 3
  store i64 0, i64* %45, align 8, !tbaa !3
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 3
  store i64 0, i64* %46, align 8, !tbaa !3
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 4
  store i64 1, i64* %47, align 8, !tbaa !3
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 4
  store i64 0, i64* %48, align 8, !tbaa !3
  %49 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 4
  store i64 0, i64* %49, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 5
  store i64 1, i64* %50, align 8, !tbaa !3
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 5
  store i64 0, i64* %51, align 8, !tbaa !3
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 5
  store i64 0, i64* %52, align 8, !tbaa !3
  %53 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 6
  store i64 1, i64* %53, align 8, !tbaa !3
  %54 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 6
  store i64 0, i64* %54, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 6
  store i64 0, i64* %55, align 8, !tbaa !3
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 7
  store i64 1, i64* %56, align 8, !tbaa !3
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 7
  store i64 0, i64* %57, align 8, !tbaa !3
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 7
  store i64 0, i64* %58, align 8, !tbaa !3
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 8
  store i64 1, i64* %59, align 8, !tbaa !3
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 8
  store i64 0, i64* %60, align 8, !tbaa !3
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 8
  store i64 0, i64* %61, align 8, !tbaa !3
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 9
  store i64 1, i64* %62, align 8, !tbaa !3
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 9
  store i64 0, i64* %63, align 8, !tbaa !3
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 9
  store i64 0, i64* %64, align 8, !tbaa !3
  %65 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 10
  store i64 1, i64* %65, align 8, !tbaa !3
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 10
  store i64 0, i64* %66, align 8, !tbaa !3
  %67 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 10
  store i64 0, i64* %67, align 8, !tbaa !3
  %68 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 11
  store i64 1, i64* %68, align 8, !tbaa !3
  %69 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 11
  store i64 0, i64* %69, align 8, !tbaa !3
  %70 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 11
  store i64 0, i64* %70, align 8, !tbaa !3
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 12
  store i64 1, i64* %71, align 8, !tbaa !3
  %72 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 12
  store i64 0, i64* %72, align 8, !tbaa !3
  %73 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 12
  store i64 0, i64* %73, align 8, !tbaa !3
  %74 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 13
  store i64 1, i64* %74, align 8, !tbaa !3
  %75 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 13
  store i64 0, i64* %75, align 8, !tbaa !3
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 13
  store i64 0, i64* %76, align 8, !tbaa !3
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 14
  store i64 1, i64* %77, align 8, !tbaa !3
  %78 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 14
  store i64 0, i64* %78, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 14
  store i64 0, i64* %79, align 8, !tbaa !3
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 15
  store i64 1, i64* %80, align 8, !tbaa !3
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 15
  store i64 0, i64* %81, align 8, !tbaa !3
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 15
  store i64 0, i64* %82, align 8, !tbaa !3
  %83 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 2
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %85 = load i32, i32* %84, align 4, !tbaa !24
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %25
  %88 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %89 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %88, align 8, !tbaa !25
  %90 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %90, align 8, !tbaa !25
  %92 = zext i32 %85 to i64
  br label %100

93:                                               ; preds = %100, %25
  %94 = phi i64 [ 0, %25 ], [ %113, %100 ]
  %95 = load i64, i64* %34, align 8, !tbaa !12
  %96 = mul i64 %94, %95
  store i64 %96, i64* %83, align 8, !tbaa !14
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 5
  %98 = load i32, i32* %97, align 4, !tbaa !24
  %99 = icmp eq i32 %85, %98
  br i1 %99, label %116, label %125

100:                                              ; preds = %87, %100
  %101 = phi i64 [ 0, %87 ], [ %114, %100 ]
  %102 = phi i64 [ 0, %87 ], [ %113, %100 ]
  %103 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 2
  %104 = load i32, i32* %103, align 4, !tbaa !26
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %101, i32 0
  %107 = load i32, i32* %106, align 4, !tbaa !28
  %108 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %89, i64 %101, i32 0
  %109 = load i32, i32* %108, align 4, !tbaa !28
  %110 = sub nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %105
  %113 = add i64 %112, %102
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp eq i64 %114, %92
  br i1 %115, label %93, label %100, !llvm.loop !29

116:                                              ; preds = %93
  %117 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 4, i32 1
  %118 = load i8, i8* %117, align 1, !tbaa !23
  %119 = zext i8 %118 to i32
  %120 = add nuw nsw i32 %119, 7
  %121 = lshr i32 %120, 3
  %122 = icmp ne i32 %32, %121
  %123 = icmp sgt i32 %85, 16
  %124 = or i1 %123, %122
  br i1 %124, label %125, label %127

125:                                              ; preds = %116, %93
  %126 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %126, i8 0, i64 416, i1 false)
  br label %253

127:                                              ; preds = %116
  %128 = icmp eq i64 %95, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %127
  br i1 %86, label %130, label %251

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %3, i64 0, i32 6
  %132 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %131, align 8, !tbaa !25
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %134 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %133, align 8, !tbaa !25
  %135 = zext i32 %85 to i64
  br label %144

136:                                              ; preds = %127
  %137 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %137, i8 0, i64 416, i1 false)
  br label %253

138:                                              ; preds = %176
  %139 = load i64, i64* %34, align 8, !tbaa !12
  %140 = load i64, i64* %36, align 8, !tbaa !3
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %251

142:                                              ; preds = %138
  %143 = load i64, i64* %37, align 8, !tbaa !3
  br label %198

144:                                              ; preds = %130, %176
  %145 = phi i64 [ 0, %130 ], [ %183, %176 ]
  %146 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 2
  %147 = load i32, i32* %146, align 4, !tbaa !26
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, %33
  %150 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %134, i64 %145, i32 2
  %151 = load i32, i32* %150, align 4, !tbaa !26
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %33
  %154 = icmp eq i64 %145, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %144
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  %158 = trunc i64 %145 to i32
  br label %170

159:                                              ; preds = %155, %164
  %160 = phi i64 [ %165, %164 ], [ 0, %155 ]
  %161 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %160
  %162 = load i64, i64* %161, align 8, !tbaa !3
  %163 = icmp ult i64 %149, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = add nuw nsw i64 %160, 1
  %166 = icmp eq i64 %165, %145
  br i1 %166, label %167, label %159, !llvm.loop !30

167:                                              ; preds = %159, %164
  %168 = phi i64 [ %145, %164 ], [ %160, %159 ]
  %169 = trunc i64 %168 to i32
  br label %170

170:                                              ; preds = %157, %167, %144
  %171 = phi i32 [ 0, %144 ], [ %169, %167 ], [ %158, %157 ]
  %172 = zext i32 %171 to i64
  %173 = icmp ugt i64 %145, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64
  br label %185

176:                                              ; preds = %185, %170
  %177 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %132, i64 %145, i32 1
  %178 = load i32, i32* %177, align 4, !tbaa !31
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %172
  store i64 %179, i64* %180, align 8, !tbaa !3
  %181 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %172
  store i64 %149, i64* %181, align 8, !tbaa !3
  %182 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %172
  store i64 %153, i64* %182, align 8, !tbaa !3
  %183 = add nuw nsw i64 %145, 1
  %184 = icmp eq i64 %183, %135
  br i1 %184, label %138, label %144, !llvm.loop !32

185:                                              ; preds = %174, %185
  %186 = phi i64 [ %145, %174 ], [ %187, %185 ]
  %187 = add nsw i64 %186, -1
  %188 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %187
  %189 = load i64, i64* %188, align 8, !tbaa !3
  %190 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 3, i64 %186
  store i64 %189, i64* %190, align 8, !tbaa !3
  %191 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %187
  %192 = load i64, i64* %191, align 8, !tbaa !3
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 5, i64 %186
  store i64 %192, i64* %193, align 8, !tbaa !3
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %187
  %195 = load i64, i64* %194, align 8, !tbaa !3
  %196 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %6, i64 0, i32 4, i64 %186
  store i64 %195, i64* %196, align 8, !tbaa !3
  %197 = icmp sgt i64 %187, %175
  br i1 %197, label %185, label %176, !llvm.loop !33

198:                                              ; preds = %142, %202
  %199 = phi i64 [ %143, %142 ], [ %207, %202 ]
  %200 = phi i64 [ %140, %142 ], [ %204, %202 ]
  %201 = icmp eq i64 %200, %199
  br i1 %201, label %202, label %251

202:                                              ; preds = %198
  %203 = load i64, i64* %35, align 8, !tbaa !3
  %204 = mul i64 %203, %199
  store i64 %204, i64* %34, align 8, !tbaa !12
  %205 = load i64, i64* %38, align 8, !tbaa !3
  store i64 %205, i64* %35, align 8, !tbaa !3
  %206 = load i64, i64* %39, align 8, !tbaa !3
  store i64 %206, i64* %36, align 8, !tbaa !3
  %207 = load i64, i64* %40, align 8, !tbaa !3
  store i64 %207, i64* %37, align 8, !tbaa !3
  %208 = load i64, i64* %41, align 8, !tbaa !3
  store i64 %208, i64* %38, align 8, !tbaa !3
  %209 = load i64, i64* %42, align 8, !tbaa !3
  store i64 %209, i64* %39, align 8, !tbaa !3
  %210 = load i64, i64* %43, align 8, !tbaa !3
  store i64 %210, i64* %40, align 8, !tbaa !3
  %211 = load i64, i64* %44, align 8, !tbaa !3
  store i64 %211, i64* %41, align 8, !tbaa !3
  %212 = load i64, i64* %45, align 8, !tbaa !3
  store i64 %212, i64* %42, align 8, !tbaa !3
  %213 = load i64, i64* %46, align 8, !tbaa !3
  store i64 %213, i64* %43, align 8, !tbaa !3
  %214 = load i64, i64* %47, align 8, !tbaa !3
  store i64 %214, i64* %44, align 8, !tbaa !3
  %215 = load i64, i64* %48, align 8, !tbaa !3
  store i64 %215, i64* %45, align 8, !tbaa !3
  %216 = load i64, i64* %49, align 8, !tbaa !3
  store i64 %216, i64* %46, align 8, !tbaa !3
  %217 = load i64, i64* %50, align 8, !tbaa !3
  store i64 %217, i64* %47, align 8, !tbaa !3
  %218 = load i64, i64* %51, align 8, !tbaa !3
  store i64 %218, i64* %48, align 8, !tbaa !3
  %219 = load i64, i64* %52, align 8, !tbaa !3
  store i64 %219, i64* %49, align 8, !tbaa !3
  %220 = load i64, i64* %53, align 8, !tbaa !3
  store i64 %220, i64* %50, align 8, !tbaa !3
  %221 = load i64, i64* %54, align 8, !tbaa !3
  store i64 %221, i64* %51, align 8, !tbaa !3
  %222 = load i64, i64* %55, align 8, !tbaa !3
  store i64 %222, i64* %52, align 8, !tbaa !3
  %223 = load i64, i64* %56, align 8, !tbaa !3
  store i64 %223, i64* %53, align 8, !tbaa !3
  %224 = load i64, i64* %57, align 8, !tbaa !3
  store i64 %224, i64* %54, align 8, !tbaa !3
  %225 = load i64, i64* %58, align 8, !tbaa !3
  store i64 %225, i64* %55, align 8, !tbaa !3
  %226 = load i64, i64* %59, align 8, !tbaa !3
  store i64 %226, i64* %56, align 8, !tbaa !3
  %227 = load i64, i64* %60, align 8, !tbaa !3
  store i64 %227, i64* %57, align 8, !tbaa !3
  %228 = load i64, i64* %61, align 8, !tbaa !3
  store i64 %228, i64* %58, align 8, !tbaa !3
  %229 = load i64, i64* %62, align 8, !tbaa !3
  store i64 %229, i64* %59, align 8, !tbaa !3
  %230 = load i64, i64* %63, align 8, !tbaa !3
  store i64 %230, i64* %60, align 8, !tbaa !3
  %231 = load i64, i64* %64, align 8, !tbaa !3
  store i64 %231, i64* %61, align 8, !tbaa !3
  %232 = load i64, i64* %65, align 8, !tbaa !3
  store i64 %232, i64* %62, align 8, !tbaa !3
  %233 = load i64, i64* %66, align 8, !tbaa !3
  store i64 %233, i64* %63, align 8, !tbaa !3
  %234 = load i64, i64* %67, align 8, !tbaa !3
  store i64 %234, i64* %64, align 8, !tbaa !3
  %235 = load i64, i64* %68, align 8, !tbaa !3
  store i64 %235, i64* %65, align 8, !tbaa !3
  %236 = load i64, i64* %69, align 8, !tbaa !3
  store i64 %236, i64* %66, align 8, !tbaa !3
  %237 = load i64, i64* %70, align 8, !tbaa !3
  store i64 %237, i64* %67, align 8, !tbaa !3
  %238 = load i64, i64* %71, align 8, !tbaa !3
  store i64 %238, i64* %68, align 8, !tbaa !3
  %239 = load i64, i64* %72, align 8, !tbaa !3
  store i64 %239, i64* %69, align 8, !tbaa !3
  %240 = load i64, i64* %73, align 8, !tbaa !3
  store i64 %240, i64* %70, align 8, !tbaa !3
  %241 = load i64, i64* %74, align 8, !tbaa !3
  store i64 %241, i64* %71, align 8, !tbaa !3
  %242 = load i64, i64* %75, align 8, !tbaa !3
  store i64 %242, i64* %72, align 8, !tbaa !3
  %243 = load i64, i64* %76, align 8, !tbaa !3
  store i64 %243, i64* %73, align 8, !tbaa !3
  %244 = load i64, i64* %77, align 8, !tbaa !3
  store i64 %244, i64* %74, align 8, !tbaa !3
  %245 = load i64, i64* %78, align 8, !tbaa !3
  store i64 %245, i64* %75, align 8, !tbaa !3
  %246 = load i64, i64* %79, align 8, !tbaa !3
  store i64 %246, i64* %76, align 8, !tbaa !3
  %247 = load i64, i64* %80, align 8, !tbaa !3
  store i64 %247, i64* %77, align 8, !tbaa !3
  %248 = load i64, i64* %81, align 8, !tbaa !3
  store i64 %248, i64* %78, align 8, !tbaa !3
  %249 = load i64, i64* %82, align 8, !tbaa !3
  store i64 %249, i64* %79, align 8, !tbaa !3
  store i64 1, i64* %80, align 8, !tbaa !3
  store i64 0, i64* %81, align 8, !tbaa !3
  store i64 0, i64* %82, align 8, !tbaa !3
  %250 = icmp eq i64 %204, %206
  br i1 %250, label %198, label %251, !llvm.loop !34

251:                                              ; preds = %198, %202, %129, %138
  %252 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(416) %252, i8* nonnull align 8 dereferenceable(416) %7, i64 416, i1 false), !tbaa.struct !35
  br label %253

253:                                              ; preds = %251, %136, %125
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #7
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
  tail call void @__msan_unpoison(i8* %1, i64 %2) #5
  ret i32 0
}

declare void @__msan_unpoison(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
define weak i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %1, i64 %2, i8* %3) local_unnamed_addr #4 {
  %5 = tail call i64 @__msan_test_shadow(i8* %1, i64 %2) #5
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = tail call i8* @malloc(i64 1024) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i8, i8* %8, i64 1023
  store i8 0, i8* %11, align 1, !tbaa !36
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i8* [ %11, %10 ], [ null, %7 ]
  %14 = tail call i8* @halide_string_to_string(i8* %8, i8* %13, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #5
  %15 = icmp eq i8* %3, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %20

18:                                               ; preds = %12
  %19 = tail call i8* @halide_string_to_string(i8* %14, i8* %13, i8* nonnull %3) #5
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi i8* [ %19, %18 ], [ %17, %16 ]
  %22 = tail call i8* @halide_string_to_string(i8* %21, i8* %13, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #5
  %23 = tail call i8* @halide_pointer_to_string(i8* %22, i8* %13, i8* %1) #5
  %24 = tail call i8* @halide_string_to_string(i8* %23, i8* %13, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5
  %25 = shl i64 %5, 32
  %26 = ashr exact i64 %25, 32
  %27 = tail call i8* @halide_int64_to_string(i8* %24, i8* %13, i64 %26, i32 1) #5
  %28 = tail call i8* @halide_string_to_string(i8* %27, i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #5
  br i1 %9, label %29, label %30

29:                                               ; preds = %20
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %36

30:                                               ; preds = %20
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %8 to i64
  %33 = add i64 %31, 1
  %34 = sub i64 %33, %32
  %35 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* nonnull %8, i64 %34) #5
  tail call void @halide_print(i8* %0, i8* nonnull %8) #5
  br label %36

36:                                               ; preds = %29, %30
  call void @free(i8* %8) #5
  call void @__msan_check_mem_is_initialized(i8* %1, i64 %2) #5
  br label %37

37:                                               ; preds = %36, %4
  ret i32 0
}

declare i64 @__msan_test_shadow(i8*, i64) local_unnamed_addr #2

declare void @__msan_check_mem_is_initialized(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4, %12
  %7 = phi i32 [ %13, %12 ], [ %2, %4 ]
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !3
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %6, label %26, !llvm.loop !37

15:                                               ; preds = %6, %4
  %16 = phi i32 [ %2, %4 ], [ %7, %6 ]
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %19
  %21 = load i64, i64* %20, align 8, !tbaa !3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %19
  br label %34

26:                                               ; preds = %12, %15
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !9
  %29 = add i64 %28, %3
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6
  %32 = load i64, i64* %31, align 8, !tbaa !12
  %33 = tail call i32 @halide_msan_annotate_memory_is_initialized(i8* %0, i8* %30, i64 %32) #6
  br label %42

34:                                               ; preds = %23, %34
  %35 = phi i64 [ 0, %23 ], [ %39, %34 ]
  %36 = phi i64 [ %3, %23 ], [ %38, %34 ]
  tail call void @annotate_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %24, i64 %36) #6
  %37 = load i64, i64* %25, align 8, !tbaa !3
  %38 = add i64 %37, %36
  %39 = add nuw i64 %35, 1
  %40 = load i64, i64* %20, align 8, !tbaa !3
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %34, label %42, !llvm.loop !38

42:                                               ; preds = %34, %18, %26
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %2, i64 %3, i8* %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %5, %13
  %8 = phi i32 [ %14, %13 ], [ %2, %5 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !3
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = add nsw i32 %8, -1
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %7, label %27, !llvm.loop !39

16:                                               ; preds = %7, %5
  %17 = phi i32 [ %2, %5 ], [ %8, %7 ]
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 3, i64 %20
  %22 = load i64, i64* %21, align 8, !tbaa !3
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = add nsw i32 %17, -1
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 4, i64 %20
  br label %35

27:                                               ; preds = %13, %16
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !9
  %30 = add i64 %29, %3
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %1, i64 0, i32 6
  %33 = load i64, i64* %32, align 8, !tbaa !12
  %34 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %31, i64 %33, i8* %4) #6
  br label %43

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %40, %35 ]
  %37 = phi i64 [ %3, %24 ], [ %39, %35 ]
  tail call void @check_helper(i8* %0, %"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %1, i32 %25, i64 %37, i8* %4) #6
  %38 = load i64, i64* %26, align 8, !tbaa !3
  %39 = add i64 %38, %37
  %40 = add nuw i64 %36, 1
  %41 = load i64, i64* %21, align 8, !tbaa !3
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %35, label %43, !llvm.loop !40

43:                                               ; preds = %35, %19, %27
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
  %7 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %3, i64 0, i32 6
  %8 = load i64, i64* %7, align 8, !tbaa !12
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
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
  %8 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* nonnull %7, i64 56, i8* %2) #6
  %9 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 6
  %10 = bitcast %struct.halide_dimension_t** %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 5
  %13 = load i32, i32* %12, align 4, !tbaa !24
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 4
  %16 = tail call i32 @halide_msan_check_memory_is_initialized(i8* %0, i8* %11, i64 %15, i8* %2) #6
  %17 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %17) #7
  call void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* nonnull sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %4, %struct.halide_buffer_t* nonnull %1) #6
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::device_copy", %"struct.Halide::Runtime::Internal::device_copy"* %4, i64 0, i32 6
  %19 = load i64, i64* %18, align 8, !tbaa !12
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %1, i64 0, i32 3
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

declare i8* @malloc(i64) local_unnamed_addr #2

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
!15 = !{!16, !17, i64 16}
!16 = !{!"_ZTS15halide_buffer_t", !4, i64 0, !17, i64 8, !17, i64 16, !4, i64 24, !18, i64 32, !21, i64 36, !17, i64 40, !17, i64 48}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"_ZTS13halide_type_t", !19, i64 0, !5, i64 1, !20, i64 2}
!19 = !{!"_ZTS18halide_type_code_t", !5, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!"int", !5, i64 0}
!22 = !{!16, !4, i64 0}
!23 = !{!18, !5, i64 1}
!24 = !{!16, !21, i64 36}
!25 = !{!16, !17, i64 40}
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
!41 = !{!16, !4, i64 24}
