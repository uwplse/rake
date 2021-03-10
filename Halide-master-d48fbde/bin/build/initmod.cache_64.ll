; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::CacheEntry" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, i8*, i64, i8*, i32, i32, i32, i32, %struct.halide_dimension_t*, %struct.halide_buffer_t*, i64, i8, [7 x i8] }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"struct.Halide::Runtime::Internal::CacheBlockHeader" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, i32, [4 x i8] }

@_ZN6Halide7Runtime8Internal16memoization_lockE = weak global %struct.halide_mutex zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal13cache_entriesE = weak local_unnamed_addr global [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*] zeroinitializer, align 8
@_ZN6Halide7Runtime8Internal18most_recently_usedE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 8
@_ZN6Halide7Runtime8Internal19least_recently_usedE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 8
@_ZN6Halide7Runtime8Internal14max_cache_sizeE = weak local_unnamed_addr global i64 1048576, align 8
@_ZN6Halide7Runtime8Internal18current_cache_sizeE = weak local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [119 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:281 Assert failed: prev_hash_entry != nullptr\0A\00", align 1
@.str.2 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:370 Assert failed: entry->more_recent != nullptr\0A\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:374 Assert failed: least_recently_used == entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [122 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:377 Assert failed: entry->more_recent != nullptr\0A\00", align 1
@.str.8 = private unnamed_addr constant [115 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:469 Assert failed: no_host_pointers_equal\0A\00", align 1
@.str.11 = private unnamed_addr constant [116 x i8] c"/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp:547 Assert failed: entry->in_use_count > 0\0A\00", align 1
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @halide_cache_cleanup, i8* null }]

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
  %38 = tail call i8* @memcpy(i8* %35, i8* %31, i64 %37) #6
  br label %50

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %47, %39 ]
  %41 = phi i64 [ %2, %23 ], [ %44, %39 ]
  %42 = phi i64 [ %3, %23 ], [ %46, %39 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %24, i64 %41, i64 %42) #7
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
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 15, i64 %10, i64 0) #7
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext %2, %struct.halide_buffer_t* %3, i1 zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %"struct.Halide::Runtime::Internal::device_copy", align 8
  %7 = bitcast %"struct.Halide::Runtime::Internal::device_copy"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %7) #8
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_host_to_device_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext true, %struct.halide_buffer_t* %1, i1 zeroext false) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal24make_device_to_host_copyEPK15halide_buffer_t(%"struct.Halide::Runtime::Internal::device_copy"* noalias sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1) local_unnamed_addr #0 {
  tail call void @_ZN6Halide7Runtime8Internal16make_buffer_copyEPK15halide_buffer_tbS4_b(%"struct.Halide::Runtime::Internal::device_copy"* sret(%"struct.Halide::Runtime::Internal::device_copy") align 8 %0, %struct.halide_buffer_t* %1, i1 zeroext false, %struct.halide_buffer_t* %1, i1 zeroext true) #7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %0, i8* %1, i64 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @memcmp(i8* %0, i8* %1, i64 %2) #6
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

declare i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 5
  %4 = load i32, i32* %3, align 4, !tbaa !24
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i64 0, i32 6
  %8 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %7, align 8, !tbaa !25
  %9 = sext i32 %4 to i64
  br label %12

10:                                               ; preds = %31
  %11 = icmp slt i64 %37, %9
  br i1 %11, label %12, label %38, !llvm.loop !37

12:                                               ; preds = %6, %10
  %13 = phi i64 [ 0, %6 ], [ %37, %10 ]
  %14 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 0
  %15 = load i32, i32* %14, align 4, !tbaa !28
  %16 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 0
  %17 = load i32, i32* %16, align 4, !tbaa !28
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 1
  %21 = load i32, i32* %20, align 4, !tbaa !31
  %22 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 1
  %23 = load i32, i32* %22, align 4, !tbaa !31
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 2
  %27 = load i32, i32* %26, align 4, !tbaa !26
  %28 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 2
  %29 = load i32, i32* %28, align 4, !tbaa !26
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i64 %13, i32 3
  %33 = load i32, i32* %32, align 4, !tbaa !38
  %34 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i64 %13, i32 3
  %35 = load i32, i32* %34, align 4, !tbaa !38
  %36 = icmp eq i32 %33, %35
  %37 = add nuw nsw i64 %13, 1
  br i1 %36, label %10, label %38

38:                                               ; preds = %31, %10, %25, %19, %12, %2
  %39 = phi i1 [ true, %2 ], [ false, %12 ], [ false, %19 ], [ false, %25 ], [ true, %10 ], [ false, %31 ]
  ret i1 %39
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i64 @_ZN6Halide7Runtime8Internal12header_bytesEv() local_unnamed_addr #4 {
  %1 = tail call i32 @halide_malloc_alignment() #6
  %2 = add nsw i32 %1, -1
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 16
  %5 = xor i64 %3, -1
  %6 = and i64 %4, %5
  ret i64 %6
}

declare extern_weak i32 @halide_malloc_alignment() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i32 @halide_malloc_alignment() #6
  %3 = add nsw i32 %2, -1
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 16
  %6 = xor i64 %4, -1
  %7 = and i64 %5, %6
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = bitcast i8* %9 to %"struct.Halide::Runtime::Internal::CacheBlockHeader"*
  ret %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %10
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %0, i8* %1, i64 %2, i32 %3, %struct.halide_buffer_t* %4, i32 %5, %struct.halide_buffer_t** %6, i1 zeroext %7, i64 %8) local_unnamed_addr #0 align 2 {
  %10 = zext i1 %7 to i8
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 4
  store i64 %2, i64* %14, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 6
  store i32 %3, i32* %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 7
  store i32 0, i32* %16, align 4, !tbaa !47
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 8
  store i32 %5, i32* %17, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 5
  %19 = load i32, i32* %18, align 4, !tbaa !24
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 9
  store i32 %19, i32* %20, align 4, !tbaa !49
  %21 = zext i32 %5 to i64
  %22 = mul nuw nsw i64 %21, 56
  %23 = sext i32 %19 to i64
  %24 = add i32 %5, 1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 4
  %27 = mul i64 %26, %23
  %28 = add i64 %27, %22
  %29 = add i64 %28, %2
  %30 = tail call i8* @halide_malloc(i8* null, i64 %29) #6
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 3
  store i8* %30, i8** %31, align 8, !tbaa !50
  %32 = icmp eq i8* %30, null
  br i1 %32, label %125, label %33

33:                                               ; preds = %9
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 11
  %35 = bitcast %struct.halide_buffer_t** %34 to i8**
  store i8* %30, i8** %35, align 8, !tbaa !51
  %36 = getelementptr inbounds i8, i8* %30, i64 %22
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 10
  %38 = bitcast %struct.halide_dimension_t** %37 to i8**
  store i8* %36, i8** %38, align 8, !tbaa !52
  %39 = getelementptr inbounds i8, i8* %30, i64 %28
  %40 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 5
  store i8* %39, i8** %40, align 8, !tbaa !53
  %41 = load i64, i64* %14, align 8, !tbaa !45
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load i8, i8* %1, align 1, !tbaa !36
  store i8 %44, i8* %39, align 1, !tbaa !36
  %45 = load i64, i64* %14, align 8, !tbaa !45
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %52, label %47, !llvm.loop !54

47:                                               ; preds = %52, %43, %33
  %48 = load i32, i32* %20, align 4, !tbaa !49
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i64 0, i32 6
  br label %64

52:                                               ; preds = %43, %52
  %53 = phi i64 [ %58, %52 ], [ 1, %43 ]
  %54 = load i8*, i8** %40, align 8, !tbaa !53
  %55 = getelementptr inbounds i8, i8* %1, i64 %53
  %56 = load i8, i8* %55, align 1, !tbaa !36
  %57 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8 %56, i8* %57, align 1, !tbaa !36
  %58 = add nuw i64 %53, 1
  %59 = load i64, i64* %14, align 8, !tbaa !45
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %52, label %47, !llvm.loop !54

61:                                               ; preds = %64, %47
  %62 = load i32, i32* %17, align 8, !tbaa !48
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %83

64:                                               ; preds = %50, %64
  %65 = phi i64 [ 0, %50 ], [ %72, %64 ]
  %66 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %51, align 8, !tbaa !25
  %67 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %66, i64 %65
  %68 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %37, align 8, !tbaa !52
  %69 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %68, i64 %65
  %70 = bitcast %struct.halide_dimension_t* %69 to i8*
  %71 = bitcast %struct.halide_dimension_t* %67 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %70, i8* nonnull align 4 dereferenceable(16) %71, i64 16, i1 false), !tbaa.struct !55
  %72 = add nuw nsw i64 %65, 1
  %73 = load i32, i32* %20, align 4, !tbaa !49
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %64, label %61, !llvm.loop !57

76:                                               ; preds = %109, %101, %83
  %77 = load i32, i32* %17, align 8, !tbaa !48
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %92, %78
  br i1 %79, label %83, label %80, !llvm.loop !58

80:                                               ; preds = %76, %61
  %81 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 13
  store i8 %10, i8* %81, align 8, !tbaa !59
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 12
  store i64 %8, i64* %82, align 8, !tbaa !60
  br label %125

83:                                               ; preds = %61, %76
  %84 = phi i64 [ %92, %76 ], [ 0, %61 ]
  %85 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, i64 %84
  %86 = bitcast %struct.halide_buffer_t** %85 to i8**
  %87 = load i8*, i8** %86, align 8, !tbaa !61
  %88 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %34, align 8, !tbaa !51
  %89 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %88, i64 %84
  %90 = bitcast %struct.halide_buffer_t* %89 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %90, i8* nonnull align 8 dereferenceable(56) %87, i64 56, i1 false), !tbaa.struct !62
  %91 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %37, align 8, !tbaa !52
  %92 = add nuw nsw i64 %84, 1
  %93 = load i32, i32* %20, align 4, !tbaa !49
  %94 = trunc i64 %92 to i32
  %95 = mul i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %91, i64 %96
  %98 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %34, align 8, !tbaa !51
  %99 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %98, i64 %84, i32 6
  store %struct.halide_dimension_t* %97, %struct.halide_dimension_t** %99, align 8, !tbaa !25
  %100 = icmp sgt i32 %93, 0
  br i1 %100, label %101, label %76

101:                                              ; preds = %83
  %102 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 8, !tbaa !61
  %103 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %102, i64 0, i32 6
  %104 = bitcast %struct.halide_dimension_t** %103 to i8**
  %105 = load i8*, i8** %104, align 8, !tbaa !25
  %106 = bitcast %struct.halide_dimension_t* %97 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %106, i8* nonnull align 4 dereferenceable(16) %105, i64 16, i1 false), !tbaa.struct !55
  %107 = load i32, i32* %20, align 4, !tbaa !49
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %76, !llvm.loop !65

109:                                              ; preds = %101, %109
  %110 = phi i64 [ %121, %109 ], [ 1, %101 ]
  %111 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %34, align 8, !tbaa !51
  %112 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %111, i64 %84, i32 6
  %113 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %112, align 8, !tbaa !25
  %114 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 6
  %116 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %115, align 8, !tbaa !25
  %117 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %116, i64 %110
  %118 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %113, i64 %110
  %119 = bitcast %struct.halide_dimension_t* %118 to i8*
  %120 = bitcast %struct.halide_dimension_t* %117 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %119, i8* nonnull align 4 dereferenceable(16) %120, i64 16, i1 false), !tbaa.struct !55
  %121 = add nuw nsw i64 %110, 1
  %122 = load i32, i32* %20, align 4, !tbaa !49
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %109, label %76, !llvm.loop !65

125:                                              ; preds = %9, %80
  %126 = xor i1 %32, true
  ret i1 %126
}

declare i8* @halide_malloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 8
  %3 = load i32, i32* %2, align 8, !tbaa !48
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 11
  br label %10

7:                                                ; preds = %10, %1
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 8, !tbaa !50
  tail call void @halide_free(i8* null, i8* %9) #6
  ret void

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %20, %10 ]
  %12 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %12, i64 %11
  %14 = tail call i32 @halide_device_free(i8* null, %struct.halide_buffer_t* %13) #6
  %15 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %15, i64 %11, i32 2
  %17 = load i8*, i8** %16, align 8, !tbaa !15
  %18 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %17) #7
  %19 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %18 to i8*
  tail call void @halide_free(i8* null, i8* %19) #6
  %20 = add nuw nsw i64 %11, 1
  %21 = load i32, i32* %2, align 8, !tbaa !48
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %10, label %7, !llvm.loop !66
}

declare i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #2

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhm(i8* %0, i64 %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %6, %2
  %5 = phi i32 [ 5381, %2 ], [ %13, %6 ]
  ret i32 %5

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %14, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %13, %6 ], [ 5381, %2 ]
  %9 = mul i32 %8, 33
  %10 = getelementptr inbounds i8, i8* %0, i64 %7
  %11 = load i8, i8* %10, align 1, !tbaa !36
  %12 = zext i8 %11 to i32
  %13 = add i32 %9, %12
  %14 = add nuw i64 %7, 1
  %15 = icmp eq i64 %14, %1
  br i1 %15, label %4, label %6, !llvm.loop !67
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal11prune_cacheEv() local_unnamed_addr #0 {
  %1 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  %2 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %3 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !tbaa !3
  %4 = icmp sgt i64 %2, %3
  %5 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %144

7:                                                ; preds = %0, %138
  %8 = phi i64 [ %139, %138 ], [ %3, %0 ]
  %9 = phi i64 [ %140, %138 ], [ %2, %0 ]
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %12, %138 ], [ %1, %0 ]
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 1
  %12 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 7
  %14 = load i32, i32* %13, align 4, !tbaa !47
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %138

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 6
  %18 = load i32, i32* %17, align 8, !tbaa !46
  %19 = and i32 %18, 255
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %20
  %22 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %21, align 8, !tbaa !61
  %23 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %10
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 0
  %26 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !tbaa !39
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** %21, align 8, !tbaa !61
  br label %39

27:                                               ; preds = %16, %30
  %28 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %32, %30 ], [ %22, %16 ]
  %29 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 0
  %32 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %31, align 8, !tbaa !39
  %33 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %32, %10
  br i1 %33, label %35, label %27, !llvm.loop !68

34:                                               ; preds = %27
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %35

35:                                               ; preds = %30, %34
  %36 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 0
  %37 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %36, align 8, !tbaa !39
  %38 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %28, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %37, %"struct.Halide::Runtime::Internal::CacheEntry"** %38, align 8, !tbaa !39
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  %41 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %40, %10
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  br label %43

43:                                               ; preds = %42, %39
  %44 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 2
  %47 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %46, align 8, !tbaa !44
  %48 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %12, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %47, %"struct.Halide::Runtime::Internal::CacheEntry"** %48, align 8, !tbaa !44
  br label %49

49:                                               ; preds = %45, %43
  %50 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  %51 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %50, %10
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 2
  %53 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %52, align 8, !tbaa !44
  br i1 %51, label %54, label %55

54:                                               ; preds = %49
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %53, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  br label %55

55:                                               ; preds = %49, %54
  %56 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %53, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** %58, align 8, !tbaa !44
  br label %59

59:                                               ; preds = %57, %55
  %60 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 8
  %61 = load i32, i32* %60, align 8, !tbaa !48
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i64 0, i32 11
  %65 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %64, align 8, !tbaa !51
  %66 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %67 = zext i32 %61 to i64
  br label %73

68:                                               ; preds = %125
  store i64 %135, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  br label %69

69:                                               ; preds = %68, %59
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %10) #7
  %70 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %10 to i8*
  tail call void @halide_free(i8* null, i8* nonnull %70) #6
  %71 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %72 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !tbaa !3
  br label %138

73:                                               ; preds = %63, %125
  %74 = phi i64 [ 0, %63 ], [ %136, %125 ]
  %75 = phi i64 [ %66, %63 ], [ %135, %125 ]
  %76 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 5
  %77 = load i32, i32* %76, align 4, !tbaa !24
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 4, i32 1
  %81 = load i8, i8* %80, align 1, !tbaa !23
  br label %125

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 6
  %84 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %83, align 8, !tbaa !25
  %85 = zext i32 %77 to i64
  br label %86

86:                                               ; preds = %100, %82
  %87 = phi i64 [ 0, %82 ], [ %102, %100 ]
  %88 = phi i64 [ 0, %82 ], [ %101, %100 ]
  %89 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %87, i32 2
  %90 = load i32, i32* %89, align 4, !tbaa !26
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = zext i32 %90 to i64
  %94 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %87, i32 1
  %95 = load i32, i32* %94, align 4, !tbaa !31
  %96 = add nsw i32 %95, -1
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, %93
  %99 = add nsw i64 %98, %88
  br label %100

100:                                              ; preds = %92, %86
  %101 = phi i64 [ %99, %92 ], [ %88, %86 ]
  %102 = add nuw nsw i64 %87, 1
  %103 = icmp eq i64 %102, %85
  br i1 %103, label %104, label %86, !llvm.loop !69

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i64 %74, i32 4, i32 1
  %106 = load i8, i8* %105, align 1, !tbaa !23
  br label %107

107:                                              ; preds = %121, %104
  %108 = phi i64 [ 0, %104 ], [ %123, %121 ]
  %109 = phi i64 [ 0, %104 ], [ %122, %121 ]
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %108, i32 2
  %111 = load i32, i32* %110, align 4, !tbaa !26
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %84, i64 %108, i32 1
  %116 = load i32, i32* %115, align 4, !tbaa !31
  %117 = add nsw i32 %116, -1
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %118, %114
  %120 = add nsw i64 %119, %109
  br label %121

121:                                              ; preds = %113, %107
  %122 = phi i64 [ %120, %113 ], [ %109, %107 ]
  %123 = add nuw nsw i64 %108, 1
  %124 = icmp eq i64 %123, %85
  br i1 %124, label %125, label %107, !llvm.loop !70

125:                                              ; preds = %121, %79
  %126 = phi i8 [ %81, %79 ], [ %106, %121 ]
  %127 = phi i64 [ 0, %79 ], [ %101, %121 ]
  %128 = phi i64 [ 0, %79 ], [ %122, %121 ]
  %129 = zext i8 %126 to i64
  %130 = add nuw nsw i64 %129, 7
  %131 = lshr i64 %130, 3
  %132 = xor i64 %127, -1
  %133 = add i64 %128, %132
  %134 = mul i64 %133, %131
  %135 = add i64 %134, %75
  %136 = add nuw nsw i64 %74, 1
  %137 = icmp eq i64 %136, %67
  br i1 %137, label %68, label %73, !llvm.loop !71

138:                                              ; preds = %69, %7
  %139 = phi i64 [ %72, %69 ], [ %8, %7 ]
  %140 = phi i64 [ %71, %69 ], [ %9, %7 ]
  %141 = icmp sgt i64 %140, %139
  %142 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null
  %143 = and i1 %142, %141
  br i1 %143, label %7, label %144, !llvm.loop !72

144:                                              ; preds = %138, %0
  ret void
}

declare extern_weak void @halide_print(i8*, i8*) local_unnamed_addr #2

declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind
define weak void @halide_memoization_cache_set_size(i64 %0) local_unnamed_addr #5 {
  %2 = icmp eq i64 %0, 0
  %3 = select i1 %2, i64 1048576, i64 %0
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  store i64 %3, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret void
}

; Function Attrs: nounwind
define weak i32 @halide_memoization_cache_lookup(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5) local_unnamed_addr #5 {
  %7 = sext i32 %2 to i64
  %8 = tail call i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhm(i8* %1, i64 %7) #7
  %9 = and i32 %8, 255
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %10
  %12 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !tbaa !61
  %13 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = icmp sgt i32 %4, 0
  %16 = sext i32 %4 to i64
  br label %21

17:                                               ; preds = %107, %6
  %18 = icmp sgt i32 %4, 0
  br i1 %18, label %19, label %218

19:                                               ; preds = %17
  %20 = zext i32 %4 to i64
  br label %111

21:                                               ; preds = %14, %107
  %22 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %12, %14 ], [ %109, %107 ]
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 6
  %24 = load i32, i32* %23, align 8, !tbaa !46
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %26, label %107

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 4
  %28 = load i64, i64* %27, align 8, !tbaa !45
  %29 = icmp eq i64 %28, %7
  br i1 %29, label %30, label %107

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 5
  %32 = load i8*, i8** %31, align 8, !tbaa !53
  %33 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %32, i8* %1, i64 %7) #7
  br i1 %33, label %34, label %107

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 10
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !tbaa !52
  %37 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %36) #7
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 8
  %40 = load i32, i32* %39, align 8, !tbaa !48
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  br i1 %15, label %43, label %57

43:                                               ; preds = %42
  %44 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 11
  br label %46

45:                                               ; preds = %46
  br i1 %53, label %57, label %107

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %54, %46 ]
  %48 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %47
  %49 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %48, align 8, !tbaa !61
  %50 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %44, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %50, i64 %47, i32 6
  %52 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %51, align 8, !tbaa !25
  %53 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %49, %struct.halide_dimension_t* %52) #7
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp slt i64 %54, %16
  %56 = and i1 %53, %55
  br i1 %56, label %46, label %45, !llvm.loop !73

57:                                               ; preds = %42, %45
  %58 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  %59 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %58
  br i1 %59, label %93, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 1
  %62 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  %63 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 2
  %67 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 8, !tbaa !44
  %68 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  %71 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %67, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %70, %"struct.Halide::Runtime::Internal::CacheEntry"** %71, align 8, !tbaa !43
  %72 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  br label %79

73:                                               ; preds = %65
  %74 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  %75 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %74, %22
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %77

77:                                               ; preds = %76, %73
  %78 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %78, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  br label %79

79:                                               ; preds = %69, %77
  %80 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %72, %69 ], [ %78, %77 ]
  %81 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.4, i64 0, i64 0)) #6
  tail call void @abort() #6
  %83 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %83, %82 ], [ %80, %79 ]
  %86 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 8, !tbaa !44
  %87 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %86, %"struct.Halide::Runtime::Internal::CacheEntry"** %87, align 8, !tbaa !44
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  %88 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %88, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 8, !tbaa !44
  %89 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %88, i64 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %"struct.Halide::Runtime::Internal::CacheEntry"** %91, align 8, !tbaa !43
  br label %92

92:                                               ; preds = %90, %84
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %22, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  br label %93

93:                                               ; preds = %92, %57
  br i1 %15, label %94, label %214

94:                                               ; preds = %93
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 11
  %96 = zext i32 %4 to i64
  br label %97

97:                                               ; preds = %94, %97
  %98 = phi i64 [ 0, %94 ], [ %105, %97 ]
  %99 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %98
  %100 = bitcast %struct.halide_buffer_t** %99 to i8**
  %101 = load i8*, i8** %100, align 8, !tbaa !61
  %102 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %95, align 8, !tbaa !51
  %103 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %102, i64 %98
  %104 = bitcast %struct.halide_buffer_t* %103 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %101, i8* nonnull align 8 dereferenceable(56) %104, i64 56, i1 false), !tbaa.struct !62
  %105 = add nuw nsw i64 %98, 1
  %106 = icmp eq i64 %105, %96
  br i1 %106, label %214, label %97, !llvm.loop !74

107:                                              ; preds = %45, %38, %34, %30, %26, %21
  %108 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 0
  %109 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %108, align 8, !tbaa !61
  %110 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %109, null
  br i1 %110, label %17, label %21, !llvm.loop !75

111:                                              ; preds = %19, %200
  %112 = phi i64 [ 0, %19 ], [ %212, %200 ]
  %113 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %112
  %114 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %113, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 5
  %116 = load i32, i32* %115, align 4, !tbaa !24
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 4, i32 1
  %120 = load i8, i8* %119, align 1, !tbaa !23
  br label %164

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 6
  %123 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %122, align 8, !tbaa !25
  %124 = zext i32 %116 to i64
  br label %125

125:                                              ; preds = %139, %121
  %126 = phi i64 [ 0, %121 ], [ %141, %139 ]
  %127 = phi i64 [ 0, %121 ], [ %140, %139 ]
  %128 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %126, i32 2
  %129 = load i32, i32* %128, align 4, !tbaa !26
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = zext i32 %129 to i64
  %133 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %126, i32 1
  %134 = load i32, i32* %133, align 4, !tbaa !31
  %135 = add nsw i32 %134, -1
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, %132
  %138 = add nsw i64 %137, %127
  br label %139

139:                                              ; preds = %131, %125
  %140 = phi i64 [ %138, %131 ], [ %127, %125 ]
  %141 = add nuw nsw i64 %126, 1
  %142 = icmp eq i64 %141, %124
  br i1 %142, label %143, label %125, !llvm.loop !69

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 4, i32 1
  %145 = load i8, i8* %144, align 1, !tbaa !23
  br label %146

146:                                              ; preds = %160, %143
  %147 = phi i64 [ 0, %143 ], [ %162, %160 ]
  %148 = phi i64 [ 0, %143 ], [ %161, %160 ]
  %149 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %147, i32 2
  %150 = load i32, i32* %149, align 4, !tbaa !26
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = sext i32 %150 to i64
  %154 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %123, i64 %147, i32 1
  %155 = load i32, i32* %154, align 4, !tbaa !31
  %156 = add nsw i32 %155, -1
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %153
  %159 = add nsw i64 %158, %148
  br label %160

160:                                              ; preds = %152, %146
  %161 = phi i64 [ %159, %152 ], [ %148, %146 ]
  %162 = add nuw nsw i64 %147, 1
  %163 = icmp eq i64 %162, %124
  br i1 %163, label %164, label %146, !llvm.loop !70

164:                                              ; preds = %160, %118
  %165 = phi i8 [ %120, %118 ], [ %145, %160 ]
  %166 = phi i64 [ 0, %118 ], [ %140, %160 ]
  %167 = phi i64 [ 0, %118 ], [ %161, %160 ]
  %168 = zext i8 %165 to i64
  %169 = add nuw nsw i64 %168, 7
  %170 = lshr i64 %169, 3
  %171 = add nsw i64 %166, 1
  %172 = sub i64 %171, %167
  %173 = mul i64 %172, %170
  %174 = tail call i32 @halide_malloc_alignment() #6
  %175 = add nsw i32 %174, -1
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, 16
  %178 = xor i64 %176, -1
  %179 = and i64 %177, %178
  %180 = add i64 %179, %173
  %181 = tail call i8* @halide_malloc(i8* %0, i64 %180) #6
  %182 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %114, i64 0, i32 2
  store i8* %181, i8** %182, align 8, !tbaa !15
  %183 = icmp eq i8* %181, null
  br i1 %183, label %184, label %200

184:                                              ; preds = %164
  %185 = icmp eq i64 %112, 0
  br i1 %185, label %218, label %186

186:                                              ; preds = %184, %186
  %187 = phi i64 [ %199, %186 ], [ %112, %184 ]
  %188 = add i64 %187, 4294967295
  %189 = and i64 %188, 4294967295
  %190 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %189
  %191 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %190, align 8, !tbaa !61
  %192 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %191, i64 0, i32 2
  %193 = load i8*, i8** %192, align 8, !tbaa !15
  %194 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %193) #7
  %195 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %194 to i8*
  tail call void @halide_free(i8* %0, i8* %195) #6
  %196 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %190, align 8, !tbaa !61
  %197 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %196, i64 0, i32 2
  store i8* null, i8** %197, align 8, !tbaa !15
  %198 = icmp sgt i64 %187, 1
  %199 = add nsw i64 %187, -1
  br i1 %198, label %186, label %218, !llvm.loop !76

200:                                              ; preds = %164
  %201 = tail call i32 @halide_malloc_alignment() #6
  %202 = add nsw i32 %201, -1
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, 16
  %205 = xor i64 %203, -1
  %206 = and i64 %204, %205
  %207 = load i8*, i8** %182, align 8, !tbaa !15
  %208 = getelementptr inbounds i8, i8* %207, i64 %206
  store i8* %208, i8** %182, align 8, !tbaa !15
  %209 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %208) #7
  %210 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %209, i64 0, i32 1
  store i32 %8, i32* %210, align 8, !tbaa !77
  %211 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %209, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %211, align 8, !tbaa !79
  %212 = add nuw nsw i64 %112, 1
  %213 = icmp eq i64 %212, %20
  br i1 %213, label %218, label %111, !llvm.loop !80

214:                                              ; preds = %97, %93
  %215 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i64 0, i32 7
  %216 = load i32, i32* %215, align 4, !tbaa !47
  %217 = add i32 %216, %4
  store i32 %217, i32* %215, align 4, !tbaa !47
  br label %218

218:                                              ; preds = %200, %186, %184, %214, %17
  %219 = phi i32 [ 1, %17 ], [ 0, %214 ], [ -1, %184 ], [ -1, %186 ], [ 1, %200 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret i32 %219
}

; Function Attrs: nounwind
define weak i32 @halide_memoization_cache_store(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5, i1 zeroext %6, i64 %7) local_unnamed_addr #5 {
  %9 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %9, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8, !tbaa !15
  %12 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %11) #7
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %12, i64 0, i32 1
  %14 = load i32, i32* %13, align 8, !tbaa !77
  %15 = and i32 %14, 255
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %16
  %18 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %17, align 8, !tbaa !61
  %19 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %18, null
  br i1 %19, label %89, label %20

20:                                               ; preds = %8
  %21 = sext i32 %2 to i64
  %22 = icmp sgt i32 %4, 0
  br i1 %22, label %23, label %93

23:                                               ; preds = %20
  %24 = zext i32 %4 to i64
  br label %25

25:                                               ; preds = %23, %51
  %26 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %53, %51 ], [ %18, %23 ]
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 6
  %28 = load i32, i32* %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 4
  %32 = load i64, i64* %31, align 8, !tbaa !45
  %33 = icmp eq i64 %32, %21
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 5
  %36 = load i8*, i8** %35, align 8, !tbaa !53
  %37 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %36, i8* %1, i64 %21) #7
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 10
  %40 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %39, align 8, !tbaa !52
  %41 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %40) #7
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 8
  %44 = load i32, i32* %43, align 8, !tbaa !48
  %45 = icmp eq i32 %44, %4
  br i1 %45, label %84, label %51

46:                                               ; preds = %65
  br i1 %73, label %47, label %51

47:                                               ; preds = %46
  %48 = and i8 %80, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i64 0, i64 0)) #6
  tail call void @abort() #6
  br label %87

51:                                               ; preds = %46, %42, %38, %34, %30, %25
  %52 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 0
  %53 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %52, align 8, !tbaa !61
  %54 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %53, null
  br i1 %54, label %89, label %25, !llvm.loop !81

55:                                               ; preds = %87, %55
  %56 = phi i64 [ 0, %87 ], [ %63, %55 ]
  %57 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %56
  %58 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %57, align 8, !tbaa !61
  %59 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %58, i64 0, i32 2
  %60 = load i8*, i8** %59, align 8, !tbaa !15
  %61 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %60) #7
  %62 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %61, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %62, align 8, !tbaa !79
  %63 = add nuw nsw i64 %56, 1
  %64 = icmp eq i64 %63, %88
  br i1 %64, label %242, label %55, !llvm.loop !82

65:                                               ; preds = %84, %65
  %66 = phi %struct.halide_buffer_t* [ %86, %84 ], [ %74, %65 ]
  %67 = phi i64 [ 0, %84 ], [ %81, %65 ]
  %68 = phi i8 [ 1, %84 ], [ %80, %65 ]
  %69 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %67
  %70 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %69, align 8, !tbaa !61
  %71 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %66, i64 %67, i32 6
  %72 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %71, align 8, !tbaa !25
  %73 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %70, %struct.halide_dimension_t* %72) #7
  %74 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 8, !tbaa !51
  %75 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %74, i64 %67, i32 2
  %76 = load i8*, i8** %75, align 8, !tbaa !15
  %77 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %70, i64 0, i32 2
  %78 = load i8*, i8** %77, align 8, !tbaa !15
  %79 = icmp eq i8* %76, %78
  %80 = select i1 %79, i8 0, i8 %68
  %81 = add nuw nsw i64 %67, 1
  %82 = icmp ult i64 %81, %24
  %83 = and i1 %73, %82
  br i1 %83, label %65, label %46, !llvm.loop !83

84:                                               ; preds = %42
  %85 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %26, i64 0, i32 11
  %86 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %85, align 8, !tbaa !51
  br label %65

87:                                               ; preds = %47, %50
  %88 = zext i32 %4 to i64
  br label %55

89:                                               ; preds = %114, %51, %8
  %90 = icmp sgt i32 %4, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %89
  %92 = zext i32 %4 to i64
  br label %124

93:                                               ; preds = %20, %114
  %94 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %116, %114 ], [ %18, %20 ]
  %95 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %94, i64 0, i32 6
  %96 = load i32, i32* %95, align 8, !tbaa !46
  %97 = icmp eq i32 %96, %14
  br i1 %97, label %98, label %114

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %94, i64 0, i32 4
  %100 = load i64, i64* %99, align 8, !tbaa !45
  %101 = icmp eq i64 %100, %21
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %94, i64 0, i32 5
  %104 = load i8*, i8** %103, align 8, !tbaa !53
  %105 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_m(i8* %104, i8* %1, i64 %21) #7
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %94, i64 0, i32 10
  %108 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %107, align 8, !tbaa !52
  %109 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %108) #7
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %94, i64 0, i32 8
  %112 = load i32, i32* %111, align 8, !tbaa !48
  %113 = icmp eq i32 %112, %4
  br i1 %113, label %242, label %114

114:                                              ; preds = %110, %106, %102, %98, %93
  %115 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %94, i64 0, i32 0
  %116 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %115, align 8, !tbaa !61
  %117 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %116, null
  br i1 %117, label %89, label %93, !llvm.loop !81

118:                                              ; preds = %178, %89
  %119 = phi i64 [ 0, %89 ], [ %188, %178 ]
  %120 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %121 = add i64 %120, %119
  store i64 %121, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #7
  %122 = tail call i8* @halide_malloc(i8* null, i64 96) #6
  %123 = icmp eq i8* %122, null
  br i1 %123, label %195, label %191

124:                                              ; preds = %91, %178
  %125 = phi i64 [ 0, %91 ], [ %189, %178 ]
  %126 = phi i64 [ 0, %91 ], [ %188, %178 ]
  %127 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %125
  %128 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %127, align 8, !tbaa !61
  %129 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %128, i64 0, i32 5
  %130 = load i32, i32* %129, align 4, !tbaa !24
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %128, i64 0, i32 4, i32 1
  %134 = load i8, i8* %133, align 1, !tbaa !23
  br label %178

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %128, i64 0, i32 6
  %137 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %136, align 8, !tbaa !25
  %138 = zext i32 %130 to i64
  br label %139

139:                                              ; preds = %153, %135
  %140 = phi i64 [ 0, %135 ], [ %155, %153 ]
  %141 = phi i64 [ 0, %135 ], [ %154, %153 ]
  %142 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %140, i32 2
  %143 = load i32, i32* %142, align 4, !tbaa !26
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = zext i32 %143 to i64
  %147 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %140, i32 1
  %148 = load i32, i32* %147, align 4, !tbaa !31
  %149 = add nsw i32 %148, -1
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, %146
  %152 = add nsw i64 %151, %141
  br label %153

153:                                              ; preds = %145, %139
  %154 = phi i64 [ %152, %145 ], [ %141, %139 ]
  %155 = add nuw nsw i64 %140, 1
  %156 = icmp eq i64 %155, %138
  br i1 %156, label %157, label %139, !llvm.loop !69

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %128, i64 0, i32 4, i32 1
  %159 = load i8, i8* %158, align 1, !tbaa !23
  br label %160

160:                                              ; preds = %174, %157
  %161 = phi i64 [ 0, %157 ], [ %176, %174 ]
  %162 = phi i64 [ 0, %157 ], [ %175, %174 ]
  %163 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %161, i32 2
  %164 = load i32, i32* %163, align 4, !tbaa !26
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = sext i32 %164 to i64
  %168 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %137, i64 %161, i32 1
  %169 = load i32, i32* %168, align 4, !tbaa !31
  %170 = add nsw i32 %169, -1
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %171, %167
  %173 = add nsw i64 %172, %162
  br label %174

174:                                              ; preds = %166, %160
  %175 = phi i64 [ %173, %166 ], [ %162, %160 ]
  %176 = add nuw nsw i64 %161, 1
  %177 = icmp eq i64 %176, %138
  br i1 %177, label %178, label %160, !llvm.loop !70

178:                                              ; preds = %174, %132
  %179 = phi i8 [ %134, %132 ], [ %159, %174 ]
  %180 = phi i64 [ 0, %132 ], [ %154, %174 ]
  %181 = phi i64 [ 0, %132 ], [ %175, %174 ]
  %182 = zext i8 %179 to i64
  %183 = add nuw nsw i64 %182, 7
  %184 = lshr i64 %183, 3
  %185 = add nsw i64 %180, 1
  %186 = sub i64 %185, %181
  %187 = mul i64 %186, %184
  %188 = add i64 %187, %126
  %189 = add nuw nsw i64 %125, 1
  %190 = icmp eq i64 %189, %92
  br i1 %190, label %118, label %124, !llvm.loop !84

191:                                              ; preds = %118
  %192 = bitcast i8* %122 to %"struct.Halide::Runtime::Internal::CacheEntry"*
  %193 = sext i32 %2 to i64
  %194 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhmjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %192, i8* %1, i64 %193, i32 %14, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** nonnull %5, i1 zeroext %6, i64 %7) #7
  br i1 %194, label %212, label %195

195:                                              ; preds = %118, %191
  %196 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %197 = sub i64 %196, %119
  store i64 %197, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  br i1 %90, label %198, label %200

198:                                              ; preds = %195
  %199 = zext i32 %4 to i64
  br label %201

200:                                              ; preds = %201, %195
  br i1 %123, label %242, label %211

201:                                              ; preds = %198, %201
  %202 = phi i64 [ 0, %198 ], [ %209, %201 ]
  %203 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %202
  %204 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %203, align 8, !tbaa !61
  %205 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %204, i64 0, i32 2
  %206 = load i8*, i8** %205, align 8, !tbaa !15
  %207 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %206) #7
  %208 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %207, i64 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %208, align 8, !tbaa !79
  %209 = add nuw nsw i64 %202, 1
  %210 = icmp eq i64 %209, %199
  br i1 %210, label %200, label %201, !llvm.loop !85

211:                                              ; preds = %200
  tail call void @halide_free(i8* %0, i8* nonnull %122) #6
  br label %242

212:                                              ; preds = %191
  %213 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %17, align 8, !tbaa !61
  %214 = bitcast i8* %122 to %"struct.Halide::Runtime::Internal::CacheEntry"**
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %213, %"struct.Halide::Runtime::Internal::CacheEntry"** %214, align 8, !tbaa !39
  %215 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  %216 = getelementptr inbounds i8, i8* %122, i64 16
  %217 = bitcast i8* %216 to %"struct.Halide::Runtime::Internal::CacheEntry"**
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %215, %"struct.Halide::Runtime::Internal::CacheEntry"** %217, align 8, !tbaa !44
  %218 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %215, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %215, i64 0, i32 1
  %221 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %220 to i8**
  store i8* %122, i8** %221, align 8, !tbaa !43
  br label %222

222:                                              ; preds = %219, %212
  store i8* %122, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE to i8**), align 8, !tbaa !61
  %223 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  %224 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %223, null
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  store i8* %122, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE to i8**), align 8, !tbaa !61
  br label %226

226:                                              ; preds = %225, %222
  %227 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %17 to i8**
  store i8* %122, i8** %227, align 8, !tbaa !61
  %228 = getelementptr inbounds i8, i8* %122, i64 52
  %229 = bitcast i8* %228 to i32*
  store i32 %4, i32* %229, align 4, !tbaa !47
  br i1 %90, label %230, label %242

230:                                              ; preds = %226
  %231 = zext i32 %4 to i64
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi i64 [ 0, %230 ], [ %240, %232 ]
  %234 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i64 %233
  %235 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %234, align 8, !tbaa !61
  %236 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %235, i64 0, i32 2
  %237 = load i8*, i8** %236, align 8, !tbaa !15
  %238 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %237) #7
  %239 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %238 to i8**
  store i8* %122, i8** %239, align 8, !tbaa !79
  %240 = add nuw nsw i64 %233, 1
  %241 = icmp eq i64 %240, %231
  br i1 %241, label %242, label %232, !llvm.loop !86

242:                                              ; preds = %110, %55, %232, %226, %211, %200
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret i32 0
}

; Function Attrs: nounwind
define weak void @halide_memoization_cache_release(i8* %0, i8* %1) local_unnamed_addr #5 {
  %3 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %1) #7
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3, i64 0, i32 0
  %5 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %4, align 8, !tbaa !79
  %6 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3 to i8*
  tail call void @halide_free(i8* %0, i8* %8) #6
  br label %18

9:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %5, i64 0, i32 7
  %11 = load i32, i32* %10, align 4, !tbaa !47
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.11, i64 0, i64 0)) #6
  tail call void @abort() #6
  %14 = load i32, i32* %10, align 4, !tbaa !47
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %11, %9 ]
  %17 = add i32 %16, -1
  store i32 %17, i32* %10, align 4, !tbaa !47
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  br label %18

18:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind mustprogress
define weak void @halide_memoization_cache_cleanup() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %13
  store i64 0, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 8, !tbaa !61
  ret void

2:                                                ; preds = %0, %13
  %3 = phi i64 [ 0, %0 ], [ %14, %13 ]
  %4 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %3
  %5 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %4, align 8, !tbaa !61
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %4, align 8, !tbaa !61
  %6 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %10, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %8, i64 0, i32 0
  %10 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %9, align 8, !tbaa !39
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %8) #7
  %11 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %8 to i8*
  tail call void @halide_free(i8* null, i8* nonnull %11) #6
  %12 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %10, null
  br i1 %12, label %13, label %7, !llvm.loop !87

13:                                               ; preds = %7, %2
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %1, label %2, !llvm.loop !88
}

; Function Attrs: nounwind
define weak void @halide_memoization_cache_evict(i8* %0, i64 %1) local_unnamed_addr #5 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  br label %4

3:                                                ; preds = %40
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret void

4:                                                ; preds = %2, %40
  %5 = phi i64 [ 0, %2 ], [ %41, %40 ]
  %6 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i64 0, i64 %5
  %7 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %6, align 8, !tbaa !61
  %8 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %4, %37
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %38, %37 ], [ %6, %4 ]
  %11 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %13, %37 ], [ %7, %4 ]
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 0
  %13 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 13
  %15 = load i8, i8* %14, align 8, !tbaa !59, !range !89
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 12
  %19 = load i64, i64* %18, align 8, !tbaa !60
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %13, %"struct.Halide::Runtime::Internal::CacheEntry"** %10, align 8, !tbaa !61
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 1
  %23 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %22, align 8, !tbaa !43
  %24 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %23, null
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i64 0, i32 2
  %26 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !tbaa !44
  br i1 %24, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %23, i64 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** %28, align 8, !tbaa !44
  %29 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !tbaa !44
  br label %31

30:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 8, !tbaa !61
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %26, %30 ], [ %29, %27 ]
  %33 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %32, null
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %32, i64 0, i32 1
  %35 = select i1 %33, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, %"struct.Halide::Runtime::Internal::CacheEntry"** %34
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %23, %"struct.Halide::Runtime::Internal::CacheEntry"** %35, align 8, !tbaa !61
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(96) %11) #7
  %36 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %11 to i8*
  tail call void @halide_free(i8* %0, i8* nonnull %36) #6
  br label %37

37:                                               ; preds = %9, %17, %31
  %38 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %10, %31 ], [ %12, %17 ], [ %12, %9 ]
  %39 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %13, null
  br i1 %39, label %40, label %9, !llvm.loop !90

40:                                               ; preds = %37, %4
  %41 = add nuw nsw i64 %5, 1
  %42 = icmp eq i64 %41, 256
  br i1 %42, label %3, label %4, !llvm.loop !91
}

; Function Attrs: nounwind mustprogress
define weak void @halide_cache_cleanup() #0 {
  tail call void @halide_memoization_cache_cleanup() #7
  ret void
}

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { alwaysinline nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

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
!38 = !{!27, !21, i64 12}
!39 = !{!40, !17, i64 0}
!40 = !{!"_ZTSN6Halide7Runtime8Internal10CacheEntryE", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !41, i64 32, !17, i64 40, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !17, i64 64, !17, i64 72, !4, i64 80, !42, i64 88}
!41 = !{!"long", !5, i64 0}
!42 = !{!"bool", !5, i64 0}
!43 = !{!40, !17, i64 8}
!44 = !{!40, !17, i64 16}
!45 = !{!40, !41, i64 32}
!46 = !{!40, !21, i64 48}
!47 = !{!40, !21, i64 52}
!48 = !{!40, !21, i64 56}
!49 = !{!40, !21, i64 60}
!50 = !{!40, !17, i64 24}
!51 = !{!40, !17, i64 72}
!52 = !{!40, !17, i64 64}
!53 = !{!40, !17, i64 40}
!54 = distinct !{!54, !8}
!55 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56, i64 12, i64 4, !56}
!56 = !{!21, !21, i64 0}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
!59 = !{!40, !42, i64 88}
!60 = !{!40, !4, i64 80}
!61 = !{!17, !17, i64 0}
!62 = !{i64 0, i64 8, !3, i64 8, i64 8, !61, i64 16, i64 8, !61, i64 24, i64 8, !3, i64 32, i64 1, !63, i64 33, i64 1, !36, i64 34, i64 2, !64, i64 36, i64 4, !56, i64 40, i64 8, !61, i64 48, i64 8, !61}
!63 = !{!19, !19, i64 0}
!64 = !{!20, !20, i64 0}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = distinct !{!68, !8}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !8}
!71 = distinct !{!71, !8}
!72 = distinct !{!72, !8}
!73 = distinct !{!73, !8}
!74 = distinct !{!74, !8}
!75 = distinct !{!75, !8}
!76 = distinct !{!76, !8}
!77 = !{!78, !21, i64 8}
!78 = !{!"_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE", !17, i64 0, !21, i64 8}
!79 = !{!78, !17, i64 0}
!80 = distinct !{!80, !8}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = distinct !{!86, !8}
!87 = distinct !{!87, !8}
!88 = distinct !{!88, !8}
!89 = !{i8 0, i8 2}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, !8}
