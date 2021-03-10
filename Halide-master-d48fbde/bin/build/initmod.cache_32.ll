; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/cache.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_mutex = type { [1 x i32] }
%"struct.Halide::Runtime::Internal::CacheEntry" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"*, i8*, i32, i8*, i32, i32, i32, i32, %struct.halide_dimension_t*, %struct.halide_buffer_t*, i64, i8 }
%struct.halide_dimension_t = type { i32, i32, i32, i32 }
%struct.halide_buffer_t = type { i64, %struct.halide_device_interface_t*, i8*, i64, %struct.halide_type_t, i32, %struct.halide_dimension_t*, i8* }
%struct.halide_device_interface_t = type { i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, void (i8*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64, %struct.halide_device_interface_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, i32*, i32*)*, %struct.halide_device_interface_impl_t* }
%struct.halide_device_interface_impl_t = type { void ()*, void ()*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_device_interface_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i32, i32, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*)*, i32 (i8*, %struct.halide_buffer_t*, i64)*, i32 (i8*, %struct.halide_buffer_t*)* }
%struct.halide_type_t = type { i8, i8, i16 }
%"struct.Halide::Runtime::Internal::device_copy" = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], i64 }
%"struct.Halide::Runtime::Internal::CacheBlockHeader" = type { %"struct.Halide::Runtime::Internal::CacheEntry"*, i32 }

@_ZN6Halide7Runtime8Internal16memoization_lockE = weak global %struct.halide_mutex zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal13cache_entriesE = weak local_unnamed_addr global [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*] zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal18most_recently_usedE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 4
@_ZN6Halide7Runtime8Internal19least_recently_usedE = weak local_unnamed_addr global %"struct.Halide::Runtime::Internal::CacheEntry"* null, align 4
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
  %39 = tail call i8* @memcpy(i8* %35, i8* %30, i32 %38) #6
  br label %51

40:                                               ; preds = %21, %40
  %41 = phi i64 [ 0, %21 ], [ %48, %40 ]
  %42 = phi i64 [ %2, %21 ], [ %45, %40 ]
  %43 = phi i64 [ %3, %21 ], [ %47, %40 ]
  tail call void @_ZN6Halide7Runtime8Internal18copy_memory_helperERKNS1_11device_copyEixx(%"struct.Halide::Runtime::Internal::device_copy"* nonnull align 8 dereferenceable(416) %0, i32 %22, i64 %42, i64 %43) #7
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
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %7) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

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
define weak zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %0, i8* %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @memcmp(i8* %0, i8* %1, i32 %2) #6
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

declare i32 @memcmp(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %0, %struct.halide_dimension_t* %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 5
  %4 = load i32, i32* %3, align 4, !tbaa !24
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %0, i32 0, i32 6
  %8 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %7, align 8, !tbaa !25
  br label %11

9:                                                ; preds = %30
  %10 = icmp slt i32 %36, %4
  br i1 %10, label %11, label %37, !llvm.loop !37

11:                                               ; preds = %6, %9
  %12 = phi i32 [ 0, %6 ], [ %36, %9 ]
  %13 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 0
  %14 = load i32, i32* %13, align 4, !tbaa !28
  %15 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 0
  %16 = load i32, i32* %15, align 4, !tbaa !28
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !31
  %21 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 1
  %22 = load i32, i32* %21, align 4, !tbaa !31
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 2
  %26 = load i32, i32* %25, align 4, !tbaa !26
  %27 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 2
  %28 = load i32, i32* %27, align 4, !tbaa !26
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %8, i32 %12, i32 3
  %32 = load i32, i32* %31, align 4, !tbaa !38
  %33 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %1, i32 %12, i32 3
  %34 = load i32, i32* %33, align 4, !tbaa !38
  %35 = icmp eq i32 %32, %34
  %36 = add nuw nsw i32 %12, 1
  br i1 %35, label %9, label %37

37:                                               ; preds = %30, %9, %24, %18, %11, %2
  %38 = phi i1 [ true, %2 ], [ false, %11 ], [ false, %18 ], [ false, %24 ], [ true, %9 ], [ false, %30 ]
  ret i1 %38
}

; Function Attrs: alwaysinline nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal12header_bytesEv() local_unnamed_addr #4 {
  %1 = tail call i32 @halide_malloc_alignment() #6
  %2 = add i32 %1, 7
  %3 = sub i32 0, %1
  %4 = and i32 %2, %3
  ret i32 %4
}

declare extern_weak i32 @halide_malloc_alignment() local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %0) local_unnamed_addr #0 {
  %2 = tail call i32 @halide_malloc_alignment() #6
  %3 = add i32 %2, 7
  %4 = sub i32 0, %2
  %5 = and i32 %3, %4
  %6 = sub i32 0, %5
  %7 = getelementptr inbounds i8, i8* %0, i32 %6
  %8 = bitcast i8* %7 to %"struct.Halide::Runtime::Internal::CacheBlockHeader"*
  ret %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %8
}

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %0, i8* %1, i32 %2, i32 %3, %struct.halide_buffer_t* %4, i32 %5, %struct.halide_buffer_t** %6, i1 zeroext %7, i64 %8) local_unnamed_addr #0 align 2 {
  %10 = zext i1 %7 to i8
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 8, !tbaa !39
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 4, !tbaa !42
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %13, align 8, !tbaa !43
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 4
  store i32 %2, i32* %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 6
  store i32 %3, i32* %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 7
  store i32 0, i32* %16, align 4, !tbaa !46
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 8
  store i32 %5, i32* %17, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 5
  %19 = load i32, i32* %18, align 4, !tbaa !24
  %20 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 9
  store i32 %19, i32* %20, align 4, !tbaa !48
  %21 = mul i32 %5, 40
  %22 = shl i32 %5, 4
  %23 = add i32 %22, 16
  %24 = mul i32 %23, %19
  %25 = add i32 %24, %21
  %26 = add i32 %25, %2
  %27 = tail call i8* @halide_malloc(i8* null, i32 %26) #6
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 3
  store i8* %27, i8** %28, align 4, !tbaa !49
  %29 = icmp eq i8* %27, null
  br i1 %29, label %117, label %30

30:                                               ; preds = %9
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 11
  %32 = bitcast %struct.halide_buffer_t** %31 to i8**
  store i8* %27, i8** %32, align 4, !tbaa !50
  %33 = getelementptr inbounds i8, i8* %27, i32 %21
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 10
  %35 = bitcast %struct.halide_dimension_t** %34 to i8**
  store i8* %33, i8** %35, align 8, !tbaa !51
  %36 = getelementptr inbounds i8, i8* %27, i32 %25
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 5
  store i8* %36, i8** %37, align 4, !tbaa !52
  %38 = load i32, i32* %14, align 8, !tbaa !44
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load i8, i8* %1, align 1, !tbaa !36
  store i8 %41, i8* %36, align 1, !tbaa !36
  %42 = load i32, i32* %14, align 8, !tbaa !44
  %43 = icmp ugt i32 %42, 1
  br i1 %43, label %49, label %44, !llvm.loop !53

44:                                               ; preds = %49, %40, %30
  %45 = load i32, i32* %20, align 4, !tbaa !48
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %4, i32 0, i32 6
  br label %61

49:                                               ; preds = %40, %49
  %50 = phi i32 [ %55, %49 ], [ 1, %40 ]
  %51 = load i8*, i8** %37, align 4, !tbaa !52
  %52 = getelementptr inbounds i8, i8* %1, i32 %50
  %53 = load i8, i8* %52, align 1, !tbaa !36
  %54 = getelementptr inbounds i8, i8* %51, i32 %50
  store i8 %53, i8* %54, align 1, !tbaa !36
  %55 = add nuw i32 %50, 1
  %56 = load i32, i32* %14, align 8, !tbaa !44
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %49, label %44, !llvm.loop !53

58:                                               ; preds = %61, %44
  %59 = load i32, i32* %17, align 8, !tbaa !47
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %78

61:                                               ; preds = %47, %61
  %62 = phi i32 [ 0, %47 ], [ %69, %61 ]
  %63 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %48, align 8, !tbaa !25
  %64 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %63, i32 %62
  %65 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %34, align 8, !tbaa !51
  %66 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %65, i32 %62
  %67 = bitcast %struct.halide_dimension_t* %66 to i8*
  %68 = bitcast %struct.halide_dimension_t* %64 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %67, i8* nonnull align 4 dereferenceable(16) %68, i32 16, i1 false), !tbaa.struct !54
  %69 = add nuw nsw i32 %62, 1
  %70 = load i32, i32* %20, align 4, !tbaa !48
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %61, label %58, !llvm.loop !56

72:                                               ; preds = %102, %94, %78
  %73 = load i32, i32* %17, align 8, !tbaa !47
  %74 = icmp ult i32 %87, %73
  br i1 %74, label %78, label %75, !llvm.loop !57

75:                                               ; preds = %72, %58
  %76 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 13
  store i8 %10, i8* %76, align 8, !tbaa !58
  %77 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 12
  store i64 %8, i64* %77, align 8, !tbaa !59
  br label %117

78:                                               ; preds = %58, %72
  %79 = phi i32 [ %87, %72 ], [ 0, %58 ]
  %80 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, i32 %79
  %81 = bitcast %struct.halide_buffer_t** %80 to i8**
  %82 = load i8*, i8** %81, align 4, !tbaa !60
  %83 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %31, align 4, !tbaa !50
  %84 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %83, i32 %79
  %85 = bitcast %struct.halide_buffer_t* %84 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %85, i8* nonnull align 8 dereferenceable(40) %82, i32 40, i1 false), !tbaa.struct !61
  %86 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %34, align 8, !tbaa !51
  %87 = add nuw i32 %79, 1
  %88 = load i32, i32* %20, align 4, !tbaa !48
  %89 = mul i32 %88, %87
  %90 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %86, i32 %89
  %91 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %31, align 4, !tbaa !50
  %92 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %91, i32 %79, i32 6
  store %struct.halide_dimension_t* %90, %struct.halide_dimension_t** %92, align 8, !tbaa !25
  %93 = icmp sgt i32 %88, 0
  br i1 %93, label %94, label %72

94:                                               ; preds = %78
  %95 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %80, align 4, !tbaa !60
  %96 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %95, i32 0, i32 6
  %97 = bitcast %struct.halide_dimension_t** %96 to i8**
  %98 = load i8*, i8** %97, align 8, !tbaa !25
  %99 = bitcast %struct.halide_dimension_t* %90 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %99, i8* nonnull align 4 dereferenceable(16) %98, i32 16, i1 false), !tbaa.struct !54
  %100 = load i32, i32* %20, align 4, !tbaa !48
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %72, !llvm.loop !64

102:                                              ; preds = %94, %102
  %103 = phi i32 [ %114, %102 ], [ 1, %94 ]
  %104 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %31, align 4, !tbaa !50
  %105 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %104, i32 %79, i32 6
  %106 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %105, align 8, !tbaa !25
  %107 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %80, align 4, !tbaa !60
  %108 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %107, i32 0, i32 6
  %109 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %108, align 8, !tbaa !25
  %110 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %109, i32 %103
  %111 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %106, i32 %103
  %112 = bitcast %struct.halide_dimension_t* %111 to i8*
  %113 = bitcast %struct.halide_dimension_t* %110 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(16) %112, i8* nonnull align 4 dereferenceable(16) %113, i32 16, i1 false), !tbaa.struct !54
  %114 = add nuw nsw i32 %103, 1
  %115 = load i32, i32* %20, align 4, !tbaa !48
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %102, label %72, !llvm.loop !64

117:                                              ; preds = %9, %75
  %118 = xor i1 %29, true
  ret i1 %118
}

declare i8* @halide_malloc(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 8
  %3 = load i32, i32* %2, align 8, !tbaa !47
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 11
  br label %10

7:                                                ; preds = %10, %1
  %8 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %0, i32 0, i32 3
  %9 = load i8*, i8** %8, align 4, !tbaa !49
  tail call void @halide_free(i8* null, i8* %9) #6
  ret void

10:                                               ; preds = %5, %10
  %11 = phi i32 [ 0, %5 ], [ %20, %10 ]
  %12 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 4, !tbaa !50
  %13 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %12, i32 %11
  %14 = tail call i32 @halide_device_free(i8* null, %struct.halide_buffer_t* %13) #6
  %15 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %6, align 4, !tbaa !50
  %16 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %15, i32 %11, i32 2
  %17 = load i8*, i8** %16, align 4, !tbaa !15
  %18 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %17) #7
  %19 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %18 to i8*
  tail call void @halide_free(i8* null, i8* %19) #6
  %20 = add nuw i32 %11, 1
  %21 = load i32, i32* %2, align 8, !tbaa !47
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %10, label %7, !llvm.loop !65
}

declare i32 @halide_device_free(i8*, %struct.halide_buffer_t*) local_unnamed_addr #2

declare void @halide_free(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhj(i8* %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %6, %2
  %5 = phi i32 [ 5381, %2 ], [ %13, %6 ]
  ret i32 %5

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %14, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %13, %6 ], [ 5381, %2 ]
  %9 = mul i32 %8, 33
  %10 = getelementptr inbounds i8, i8* %0, i32 %7
  %11 = load i8, i8* %10, align 1, !tbaa !36
  %12 = zext i8 %11 to i32
  %13 = add i32 %9, %12
  %14 = add nuw i32 %7, 1
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %6, label %4, !llvm.loop !66
}

; Function Attrs: nounwind mustprogress
define weak void @_ZN6Halide7Runtime8Internal11prune_cacheEv() local_unnamed_addr #0 {
  %1 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  %2 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %3 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !tbaa !3
  %4 = icmp sgt i64 %2, %3
  %5 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %138

7:                                                ; preds = %0, %132
  %8 = phi i64 [ %133, %132 ], [ %3, %0 ]
  %9 = phi i64 [ %134, %132 ], [ %2, %0 ]
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %12, %132 ], [ %1, %0 ]
  %11 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 1
  %12 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %11, align 4, !tbaa !42
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 7
  %14 = load i32, i32* %13, align 4, !tbaa !46
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %132

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 6
  %18 = load i32, i32* %17, align 8, !tbaa !45
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %19
  %21 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %20, align 4, !tbaa !60
  %22 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %21, %10
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 0
  %25 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %24, align 8, !tbaa !39
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %25, %"struct.Halide::Runtime::Internal::CacheEntry"** %20, align 4, !tbaa !60
  br label %38

26:                                               ; preds = %16, %29
  %27 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %31, %29 ], [ %21, %16 ]
  %28 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %27, i32 0, i32 0
  %31 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %30, align 8, !tbaa !39
  %32 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %31, %10
  br i1 %32, label %34, label %26, !llvm.loop !67

33:                                               ; preds = %26
  tail call void @halide_print(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 0
  %36 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %35, align 8, !tbaa !39
  %37 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %27, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %36, %"struct.Halide::Runtime::Internal::CacheEntry"** %37, align 8, !tbaa !39
  br label %38

38:                                               ; preds = %34, %23
  %39 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  %40 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %39, %10
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  br label %42

42:                                               ; preds = %41, %38
  %43 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 2
  %46 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %45, align 8, !tbaa !43
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %12, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %46, %"struct.Halide::Runtime::Internal::CacheEntry"** %47, align 8, !tbaa !43
  br label %48

48:                                               ; preds = %44, %42
  %49 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  %50 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %49, %10
  %51 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 2
  %52 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %51, align 8, !tbaa !43
  br i1 %50, label %53, label %54

53:                                               ; preds = %48
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %52, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  br label %54

54:                                               ; preds = %48, %53
  %55 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %52, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %12, %"struct.Halide::Runtime::Internal::CacheEntry"** %57, align 8, !tbaa !43
  br label %58

58:                                               ; preds = %56, %54
  %59 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 8
  %60 = load i32, i32* %59, align 8, !tbaa !47
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %10, i32 0, i32 11
  %64 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %63, align 4, !tbaa !50
  %65 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  br label %71

66:                                               ; preds = %118
  store i64 %129, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  br label %67

67:                                               ; preds = %66, %58
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %10) #7
  %68 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %10 to i8*
  tail call void @halide_free(i8* null, i8* nonnull %68) #6
  %69 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %70 = load i64, i64* @_ZN6Halide7Runtime8Internal14max_cache_sizeE, align 8, !tbaa !3
  br label %132

71:                                               ; preds = %62, %118
  %72 = phi i64 [ %65, %62 ], [ %129, %118 ]
  %73 = phi i32 [ 0, %62 ], [ %130, %118 ]
  %74 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 5
  %75 = load i32, i32* %74, align 4, !tbaa !24
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 4, i32 1
  %79 = load i8, i8* %78, align 1, !tbaa !23
  br label %118

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 6
  %82 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %81, align 8, !tbaa !25
  br label %83

83:                                               ; preds = %95, %80
  %84 = phi i32 [ 0, %80 ], [ %97, %95 ]
  %85 = phi i32 [ 0, %80 ], [ %96, %95 ]
  %86 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %84, i32 2
  %87 = load i32, i32* %86, align 4, !tbaa !26
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %84, i32 1
  %91 = load i32, i32* %90, align 4, !tbaa !31
  %92 = add nsw i32 %91, -1
  %93 = mul nsw i32 %92, %87
  %94 = add nsw i32 %93, %85
  br label %95

95:                                               ; preds = %89, %83
  %96 = phi i32 [ %94, %89 ], [ %85, %83 ]
  %97 = add nuw nsw i32 %84, 1
  %98 = icmp slt i32 %97, %75
  br i1 %98, label %83, label %99, !llvm.loop !68

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %64, i32 %73, i32 4, i32 1
  %101 = load i8, i8* %100, align 1, !tbaa !23
  br label %102

102:                                              ; preds = %114, %99
  %103 = phi i32 [ 0, %99 ], [ %116, %114 ]
  %104 = phi i32 [ 0, %99 ], [ %115, %114 ]
  %105 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %103, i32 2
  %106 = load i32, i32* %105, align 4, !tbaa !26
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %82, i32 %103, i32 1
  %110 = load i32, i32* %109, align 4, !tbaa !31
  %111 = add nsw i32 %110, -1
  %112 = mul nsw i32 %111, %106
  %113 = add nsw i32 %112, %104
  br label %114

114:                                              ; preds = %108, %102
  %115 = phi i32 [ %113, %108 ], [ %104, %102 ]
  %116 = add nuw nsw i32 %103, 1
  %117 = icmp slt i32 %116, %75
  br i1 %117, label %102, label %118, !llvm.loop !69

118:                                              ; preds = %114, %77
  %119 = phi i8 [ %79, %77 ], [ %101, %114 ]
  %120 = phi i32 [ 0, %77 ], [ %96, %114 ]
  %121 = phi i32 [ 0, %77 ], [ %115, %114 ]
  %122 = zext i8 %119 to i32
  %123 = add nuw nsw i32 %122, 7
  %124 = lshr i32 %123, 3
  %125 = add nsw i32 %120, 1
  %126 = sub i32 %125, %121
  %127 = mul i32 %126, %124
  %128 = zext i32 %127 to i64
  %129 = sub nsw i64 %72, %128
  %130 = add nuw i32 %73, 1
  %131 = icmp ult i32 %130, %60
  br i1 %131, label %71, label %66, !llvm.loop !70

132:                                              ; preds = %67, %7
  %133 = phi i64 [ %70, %67 ], [ %8, %7 ]
  %134 = phi i64 [ %69, %67 ], [ %9, %7 ]
  %135 = icmp sgt i64 %134, %133
  %136 = icmp ne %"struct.Halide::Runtime::Internal::CacheEntry"* %12, null
  %137 = and i1 %136, %135
  br i1 %137, label %7, label %138, !llvm.loop !71

138:                                              ; preds = %132, %0
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
  %7 = tail call i32 @_ZN6Halide7Runtime8Internal8djb_hashEPKhj(i8* %1, i32 %2) #7
  %8 = and i32 %7, 255
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  %9 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %8
  %10 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %9, align 4, !tbaa !60
  %11 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = icmp sgt i32 %4, 0
  br label %16

14:                                               ; preds = %101, %6
  %15 = icmp sgt i32 %4, 0
  br i1 %15, label %105, label %201

16:                                               ; preds = %12, %101
  %17 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %10, %12 ], [ %103, %101 ]
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8, !tbaa !45
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %101

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 4
  %23 = load i32, i32* %22, align 8, !tbaa !44
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %101

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 5
  %27 = load i8*, i8** %26, align 4, !tbaa !52
  %28 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %27, i8* %1, i32 %2) #7
  br i1 %28, label %29, label %101

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 10
  %31 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %30, align 8, !tbaa !51
  %32 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %31) #7
  br i1 %32, label %33, label %101

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 8
  %35 = load i32, i32* %34, align 8, !tbaa !47
  %36 = icmp eq i32 %35, %4
  br i1 %36, label %37, label %101

37:                                               ; preds = %33
  br i1 %13, label %38, label %52

38:                                               ; preds = %37
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 11
  br label %41

40:                                               ; preds = %41
  br i1 %48, label %52, label %101

41:                                               ; preds = %38, %41
  %42 = phi i32 [ 0, %38 ], [ %49, %41 ]
  %43 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %42
  %44 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %43, align 4, !tbaa !60
  %45 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %39, align 4, !tbaa !50
  %46 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %45, i32 %42, i32 6
  %47 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %46, align 8, !tbaa !25
  %48 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %44, %struct.halide_dimension_t* %47) #7
  %49 = add nuw nsw i32 %42, 1
  %50 = icmp slt i32 %49, %4
  %51 = and i1 %48, %50
  br i1 %51, label %41, label %40, !llvm.loop !72

52:                                               ; preds = %37, %40
  %53 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  %54 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %17, %53
  br i1 %54, label %88, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 1
  %57 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !tbaa !42
  %58 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 2
  %62 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  %63 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !tbaa !42
  %66 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %62, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %65, %"struct.Halide::Runtime::Internal::CacheEntry"** %66, align 4, !tbaa !42
  %67 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !tbaa !42
  br label %74

68:                                               ; preds = %60
  %69 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  %70 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %69, %17
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %72

72:                                               ; preds = %71, %68
  %73 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !tbaa !42
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %73, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  br label %74

74:                                               ; preds = %64, %72
  %75 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %67, %64 ], [ %73, %72 ]
  %76 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.4, i32 0, i32 0)) #6
  tail call void @abort() #6
  %78 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !tbaa !42
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %78, %77 ], [ %75, %74 ]
  %81 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  %82 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %80, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %81, %"struct.Halide::Runtime::Internal::CacheEntry"** %82, align 8, !tbaa !43
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %56, align 4, !tbaa !42
  %83 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %83, %"struct.Halide::Runtime::Internal::CacheEntry"** %61, align 8, !tbaa !43
  %84 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %83, i32 0, i32 1
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %17, %"struct.Halide::Runtime::Internal::CacheEntry"** %86, align 4, !tbaa !42
  br label %87

87:                                               ; preds = %85, %79
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %17, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  br label %88

88:                                               ; preds = %87, %52
  br i1 %13, label %89, label %197

89:                                               ; preds = %88
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 11
  br label %91

91:                                               ; preds = %89, %91
  %92 = phi i32 [ 0, %89 ], [ %99, %91 ]
  %93 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %92
  %94 = bitcast %struct.halide_buffer_t** %93 to i8**
  %95 = load i8*, i8** %94, align 4, !tbaa !60
  %96 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %90, align 4, !tbaa !50
  %97 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %96, i32 %92
  %98 = bitcast %struct.halide_buffer_t* %97 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 8 dereferenceable(40) %95, i8* nonnull align 8 dereferenceable(40) %98, i32 40, i1 false), !tbaa.struct !61
  %99 = add nuw nsw i32 %92, 1
  %100 = icmp slt i32 %99, %4
  br i1 %100, label %91, label %197, !llvm.loop !73

101:                                              ; preds = %40, %33, %29, %25, %21, %16
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 0
  %103 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %102, align 4, !tbaa !60
  %104 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %103, null
  br i1 %104, label %14, label %16, !llvm.loop !74

105:                                              ; preds = %14, %185
  %106 = phi i32 [ %195, %185 ], [ 0, %14 ]
  %107 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %106
  %108 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %107, align 4, !tbaa !60
  %109 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4, !tbaa !24
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 4, i32 1
  %114 = load i8, i8* %113, align 1, !tbaa !23
  br label %153

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 6
  %117 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %116, align 8, !tbaa !25
  br label %118

118:                                              ; preds = %130, %115
  %119 = phi i32 [ 0, %115 ], [ %132, %130 ]
  %120 = phi i32 [ 0, %115 ], [ %131, %130 ]
  %121 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %119, i32 2
  %122 = load i32, i32* %121, align 4, !tbaa !26
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %119, i32 1
  %126 = load i32, i32* %125, align 4, !tbaa !31
  %127 = add nsw i32 %126, -1
  %128 = mul nsw i32 %127, %122
  %129 = add nsw i32 %128, %120
  br label %130

130:                                              ; preds = %124, %118
  %131 = phi i32 [ %129, %124 ], [ %120, %118 ]
  %132 = add nuw nsw i32 %119, 1
  %133 = icmp slt i32 %132, %110
  br i1 %133, label %118, label %134, !llvm.loop !68

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 4, i32 1
  %136 = load i8, i8* %135, align 1, !tbaa !23
  br label %137

137:                                              ; preds = %149, %134
  %138 = phi i32 [ 0, %134 ], [ %151, %149 ]
  %139 = phi i32 [ 0, %134 ], [ %150, %149 ]
  %140 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %138, i32 2
  %141 = load i32, i32* %140, align 4, !tbaa !26
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %117, i32 %138, i32 1
  %145 = load i32, i32* %144, align 4, !tbaa !31
  %146 = add nsw i32 %145, -1
  %147 = mul nsw i32 %146, %141
  %148 = add nsw i32 %147, %139
  br label %149

149:                                              ; preds = %143, %137
  %150 = phi i32 [ %148, %143 ], [ %139, %137 ]
  %151 = add nuw nsw i32 %138, 1
  %152 = icmp slt i32 %151, %110
  br i1 %152, label %137, label %153, !llvm.loop !69

153:                                              ; preds = %149, %112
  %154 = phi i8 [ %114, %112 ], [ %136, %149 ]
  %155 = phi i32 [ 0, %112 ], [ %131, %149 ]
  %156 = phi i32 [ 0, %112 ], [ %150, %149 ]
  %157 = zext i8 %154 to i32
  %158 = add nuw nsw i32 %157, 7
  %159 = lshr i32 %158, 3
  %160 = add nsw i32 %155, 1
  %161 = sub i32 %160, %156
  %162 = mul i32 %161, %159
  %163 = tail call i32 @halide_malloc_alignment() #6
  %164 = add i32 %163, 7
  %165 = sub i32 0, %163
  %166 = and i32 %164, %165
  %167 = add i32 %166, %162
  %168 = tail call i8* @halide_malloc(i8* %0, i32 %167) #6
  %169 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %108, i32 0, i32 2
  store i8* %168, i8** %169, align 4, !tbaa !15
  %170 = icmp eq i8* %168, null
  br i1 %170, label %171, label %185

171:                                              ; preds = %153
  %172 = icmp eq i32 %106, 0
  br i1 %172, label %201, label %173

173:                                              ; preds = %171, %173
  %174 = phi i32 [ %175, %173 ], [ %106, %171 ]
  %175 = add nsw i32 %174, -1
  %176 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %175
  %177 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %176, align 4, !tbaa !60
  %178 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 4, !tbaa !15
  %180 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %179) #7
  %181 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %180 to i8*
  tail call void @halide_free(i8* %0, i8* %181) #6
  %182 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %176, align 4, !tbaa !60
  %183 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %182, i32 0, i32 2
  store i8* null, i8** %183, align 4, !tbaa !15
  %184 = icmp sgt i32 %174, 1
  br i1 %184, label %173, label %201, !llvm.loop !75

185:                                              ; preds = %153
  %186 = tail call i32 @halide_malloc_alignment() #6
  %187 = add i32 %186, 7
  %188 = sub i32 0, %186
  %189 = and i32 %187, %188
  %190 = load i8*, i8** %169, align 4, !tbaa !15
  %191 = getelementptr inbounds i8, i8* %190, i32 %189
  store i8* %191, i8** %169, align 4, !tbaa !15
  %192 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %191) #7
  %193 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %192, i32 0, i32 1
  store i32 %7, i32* %193, align 4, !tbaa !76
  %194 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %192, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %194, align 4, !tbaa !78
  %195 = add nuw nsw i32 %106, 1
  %196 = icmp slt i32 %195, %4
  br i1 %196, label %105, label %201, !llvm.loop !79

197:                                              ; preds = %91, %88
  %198 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %17, i32 0, i32 7
  %199 = load i32, i32* %198, align 4, !tbaa !46
  %200 = add i32 %199, %4
  store i32 %200, i32* %198, align 4, !tbaa !46
  br label %201

201:                                              ; preds = %185, %173, %171, %197, %14
  %202 = phi i32 [ 1, %14 ], [ 0, %197 ], [ -1, %171 ], [ -1, %173 ], [ 1, %185 ]
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret i32 %202
}

; Function Attrs: nounwind
define weak i32 @halide_memoization_cache_store(i8* %0, i8* %1, i32 %2, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** %5, i1 zeroext %6, i64 %7) local_unnamed_addr #5 {
  %9 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, align 4, !tbaa !60
  %10 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 4, !tbaa !15
  %12 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %11) #7
  %13 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4, !tbaa !76
  %15 = and i32 %14, 255
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  %16 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %15
  %17 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %16, align 4, !tbaa !60
  %18 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %17, null
  br i1 %18, label %82, label %19

19:                                               ; preds = %8
  %20 = icmp sgt i32 %4, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %19, %46
  %22 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %48, %46 ], [ %17, %19 ]
  %23 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8, !tbaa !45
  %25 = icmp eq i32 %24, %14
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 4
  %28 = load i32, i32* %27, align 8, !tbaa !44
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 5
  %32 = load i8*, i8** %31, align 4, !tbaa !52
  %33 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %32, i8* %1, i32 %2) #7
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 10
  %36 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %35, align 8, !tbaa !51
  %37 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %36) #7
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 8
  %40 = load i32, i32* %39, align 8, !tbaa !47
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %79, label %46

42:                                               ; preds = %60
  br i1 %68, label %43, label %46

43:                                               ; preds = %42
  br i1 %75, label %45, label %44

44:                                               ; preds = %43
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.8, i32 0, i32 0)) #6
  tail call void @abort() #6
  br label %45

45:                                               ; preds = %43, %44
  br label %50

46:                                               ; preds = %42, %38, %34, %30, %26, %21
  %47 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 0
  %48 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %47, align 4, !tbaa !60
  %49 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %48, null
  br i1 %49, label %82, label %21, !llvm.loop !80

50:                                               ; preds = %45, %50
  %51 = phi i32 [ %58, %50 ], [ 0, %45 ]
  %52 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %51
  %53 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %52, align 4, !tbaa !60
  %54 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 4, !tbaa !15
  %56 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %55) #7
  %57 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %56, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %57, align 4, !tbaa !78
  %58 = add nuw nsw i32 %51, 1
  %59 = icmp slt i32 %58, %4
  br i1 %59, label %50, label %224, !llvm.loop !81

60:                                               ; preds = %79, %60
  %61 = phi %struct.halide_buffer_t* [ %81, %79 ], [ %69, %60 ]
  %62 = phi i32 [ 0, %79 ], [ %76, %60 ]
  %63 = phi i1 [ true, %79 ], [ %75, %60 ]
  %64 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %62
  %65 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %64, align 4, !tbaa !60
  %66 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %61, i32 %62, i32 6
  %67 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %66, align 8, !tbaa !25
  %68 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %65, %struct.halide_dimension_t* %67) #7
  %69 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %80, align 4, !tbaa !50
  %70 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %69, i32 %62, i32 2
  %71 = load i8*, i8** %70, align 4, !tbaa !15
  %72 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %65, i32 0, i32 2
  %73 = load i8*, i8** %72, align 4, !tbaa !15
  %74 = icmp ne i8* %71, %73
  %75 = and i1 %63, %74
  %76 = add nuw nsw i32 %62, 1
  %77 = icmp slt i32 %76, %4
  %78 = and i1 %68, %77
  br i1 %78, label %60, label %42, !llvm.loop !82

79:                                               ; preds = %38
  %80 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %22, i32 0, i32 11
  %81 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %80, align 4, !tbaa !50
  br label %60

82:                                               ; preds = %105, %46, %8
  %83 = icmp sgt i32 %4, 0
  br i1 %83, label %115, label %109

84:                                               ; preds = %19, %105
  %85 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %107, %105 ], [ %17, %19 ]
  %86 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8, !tbaa !45
  %88 = icmp eq i32 %87, %14
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i32 0, i32 4
  %91 = load i32, i32* %90, align 8, !tbaa !44
  %92 = icmp eq i32 %91, %2
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i32 0, i32 5
  %95 = load i8*, i8** %94, align 4, !tbaa !52
  %96 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(i8* %95, i8* %1, i32 %2) #7
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i32 0, i32 10
  %99 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %98, align 8, !tbaa !51
  %100 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(%struct.halide_buffer_t* %3, %struct.halide_dimension_t* %99) #7
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i32 0, i32 8
  %103 = load i32, i32* %102, align 8, !tbaa !47
  %104 = icmp eq i32 %103, %4
  br i1 %104, label %224, label %105

105:                                              ; preds = %101, %97, %93, %89, %84
  %106 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %85, i32 0, i32 0
  %107 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %106, align 4, !tbaa !60
  %108 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %107, null
  br i1 %108, label %82, label %84, !llvm.loop !80

109:                                              ; preds = %164, %82
  %110 = phi i64 [ 0, %82 ], [ %175, %164 ]
  %111 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %112 = add i64 %111, %110
  store i64 %112, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  tail call void @_ZN6Halide7Runtime8Internal11prune_cacheEv() #7
  %113 = tail call i8* @halide_malloc(i8* null, i32 64) #6
  %114 = icmp eq i8* %113, null
  br i1 %114, label %181, label %178

115:                                              ; preds = %82, %164
  %116 = phi i32 [ %176, %164 ], [ 0, %82 ]
  %117 = phi i64 [ %175, %164 ], [ 0, %82 ]
  %118 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %116
  %119 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %118, align 4, !tbaa !60
  %120 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4, !tbaa !24
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %119, i32 0, i32 4, i32 1
  %125 = load i8, i8* %124, align 1, !tbaa !23
  br label %164

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %119, i32 0, i32 6
  %128 = load %struct.halide_dimension_t*, %struct.halide_dimension_t** %127, align 8, !tbaa !25
  br label %129

129:                                              ; preds = %141, %126
  %130 = phi i32 [ 0, %126 ], [ %143, %141 ]
  %131 = phi i32 [ 0, %126 ], [ %142, %141 ]
  %132 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %128, i32 %130, i32 2
  %133 = load i32, i32* %132, align 4, !tbaa !26
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %128, i32 %130, i32 1
  %137 = load i32, i32* %136, align 4, !tbaa !31
  %138 = add nsw i32 %137, -1
  %139 = mul nsw i32 %138, %133
  %140 = add nsw i32 %139, %131
  br label %141

141:                                              ; preds = %135, %129
  %142 = phi i32 [ %140, %135 ], [ %131, %129 ]
  %143 = add nuw nsw i32 %130, 1
  %144 = icmp slt i32 %143, %121
  br i1 %144, label %129, label %145, !llvm.loop !68

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %119, i32 0, i32 4, i32 1
  %147 = load i8, i8* %146, align 1, !tbaa !23
  br label %148

148:                                              ; preds = %160, %145
  %149 = phi i32 [ 0, %145 ], [ %162, %160 ]
  %150 = phi i32 [ 0, %145 ], [ %161, %160 ]
  %151 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %128, i32 %149, i32 2
  %152 = load i32, i32* %151, align 4, !tbaa !26
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.halide_dimension_t, %struct.halide_dimension_t* %128, i32 %149, i32 1
  %156 = load i32, i32* %155, align 4, !tbaa !31
  %157 = add nsw i32 %156, -1
  %158 = mul nsw i32 %157, %152
  %159 = add nsw i32 %158, %150
  br label %160

160:                                              ; preds = %154, %148
  %161 = phi i32 [ %159, %154 ], [ %150, %148 ]
  %162 = add nuw nsw i32 %149, 1
  %163 = icmp slt i32 %162, %121
  br i1 %163, label %148, label %164, !llvm.loop !69

164:                                              ; preds = %160, %123
  %165 = phi i8 [ %125, %123 ], [ %147, %160 ]
  %166 = phi i32 [ 0, %123 ], [ %142, %160 ]
  %167 = phi i32 [ 0, %123 ], [ %161, %160 ]
  %168 = zext i8 %165 to i32
  %169 = add nuw nsw i32 %168, 7
  %170 = lshr i32 %169, 3
  %171 = add nsw i32 %166, 1
  %172 = sub i32 %171, %167
  %173 = mul i32 %172, %170
  %174 = zext i32 %173 to i64
  %175 = add i64 %117, %174
  %176 = add nuw nsw i32 %116, 1
  %177 = icmp slt i32 %176, %4
  br i1 %177, label %115, label %109, !llvm.loop !83

178:                                              ; preds = %109
  %179 = bitcast i8* %113 to %"struct.Halide::Runtime::Internal::CacheEntry"*
  %180 = tail call zeroext i1 @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_by(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %179, i8* %1, i32 %2, i32 %14, %struct.halide_buffer_t* %3, i32 %4, %struct.halide_buffer_t** nonnull %5, i1 zeroext %6, i64 %7) #7
  br i1 %180, label %196, label %181

181:                                              ; preds = %109, %178
  %182 = load i64, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  %183 = sub i64 %182, %110
  store i64 %183, i64* @_ZN6Halide7Runtime8Internal18current_cache_sizeE, align 8, !tbaa !3
  br i1 %83, label %185, label %184

184:                                              ; preds = %185, %181
  br i1 %114, label %224, label %195

185:                                              ; preds = %181, %185
  %186 = phi i32 [ %193, %185 ], [ 0, %181 ]
  %187 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %186
  %188 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %187, align 4, !tbaa !60
  %189 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 4, !tbaa !15
  %191 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %190) #7
  %192 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %191, i32 0, i32 0
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %192, align 4, !tbaa !78
  %193 = add nuw nsw i32 %186, 1
  %194 = icmp slt i32 %193, %4
  br i1 %194, label %185, label %184, !llvm.loop !84

195:                                              ; preds = %184
  tail call void @halide_free(i8* %0, i8* nonnull %113) #6
  br label %224

196:                                              ; preds = %178
  %197 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %16, align 4, !tbaa !60
  %198 = bitcast i8* %113 to %"struct.Halide::Runtime::Internal::CacheEntry"**
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %197, %"struct.Halide::Runtime::Internal::CacheEntry"** %198, align 8, !tbaa !39
  %199 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  %200 = getelementptr inbounds i8, i8* %113, i32 8
  %201 = bitcast i8* %200 to %"struct.Halide::Runtime::Internal::CacheEntry"**
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %199, %"struct.Halide::Runtime::Internal::CacheEntry"** %201, align 8, !tbaa !43
  %202 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %199, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %199, i32 0, i32 1
  %205 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %204 to i8**
  store i8* %113, i8** %205, align 4, !tbaa !42
  br label %206

206:                                              ; preds = %203, %196
  store i8* %113, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE to i8**), align 4, !tbaa !60
  %207 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  %208 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i8* %113, i8** bitcast (%"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE to i8**), align 4, !tbaa !60
  br label %210

210:                                              ; preds = %209, %206
  %211 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"** %16 to i8**
  store i8* %113, i8** %211, align 4, !tbaa !60
  %212 = getelementptr inbounds i8, i8* %113, i32 28
  %213 = bitcast i8* %212 to i32*
  store i32 %4, i32* %213, align 4, !tbaa !46
  br i1 %83, label %214, label %224

214:                                              ; preds = %210, %214
  %215 = phi i32 [ %222, %214 ], [ 0, %210 ]
  %216 = getelementptr inbounds %struct.halide_buffer_t*, %struct.halide_buffer_t** %5, i32 %215
  %217 = load %struct.halide_buffer_t*, %struct.halide_buffer_t** %216, align 4, !tbaa !60
  %218 = getelementptr inbounds %struct.halide_buffer_t, %struct.halide_buffer_t* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 4, !tbaa !15
  %220 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %219) #7
  %221 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %220 to i8**
  store i8* %113, i8** %221, align 4, !tbaa !78
  %222 = add nuw nsw i32 %215, 1
  %223 = icmp slt i32 %222, %4
  br i1 %223, label %214, label %224, !llvm.loop !85

224:                                              ; preds = %101, %50, %214, %210, %195, %184
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret i32 0
}

; Function Attrs: nounwind
define weak void @halide_memoization_cache_release(i8* %0, i8* %1) local_unnamed_addr #5 {
  %3 = tail call %"struct.Halide::Runtime::Internal::CacheBlockHeader"* @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(i8* %1) #7
  %4 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheBlockHeader", %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3, i32 0, i32 0
  %5 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %4, align 4, !tbaa !78
  %6 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = bitcast %"struct.Halide::Runtime::Internal::CacheBlockHeader"* %3 to i8*
  tail call void @halide_free(i8* %0, i8* %8) #6
  br label %18

9:                                                ; preds = %2
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  %10 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %5, i32 0, i32 7
  %11 = load i32, i32* %10, align 4, !tbaa !46
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void @halide_print(i8* %0, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.11, i32 0, i32 0)) #6
  tail call void @abort() #6
  %14 = load i32, i32* %10, align 4, !tbaa !46
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %11, %9 ]
  %17 = add i32 %16, -1
  store i32 %17, i32* %10, align 4, !tbaa !46
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
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, align 4, !tbaa !60
  ret void

2:                                                ; preds = %0, %13
  %3 = phi i32 [ 0, %0 ], [ %14, %13 ]
  %4 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %3
  %5 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %4, align 4, !tbaa !60
  store %"struct.Halide::Runtime::Internal::CacheEntry"* null, %"struct.Halide::Runtime::Internal::CacheEntry"** %4, align 4, !tbaa !60
  %6 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %10, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %8, i32 0, i32 0
  %10 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %9, align 8, !tbaa !39
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %8) #7
  %11 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %8 to i8*
  tail call void @halide_free(i8* null, i8* nonnull %11) #6
  %12 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %10, null
  br i1 %12, label %13, label %7, !llvm.loop !86

13:                                               ; preds = %7, %2
  %14 = add nuw nsw i32 %3, 1
  %15 = icmp ult i32 %3, 255
  br i1 %15, label %2, label %1, !llvm.loop !87
}

; Function Attrs: nounwind
define weak void @halide_memoization_cache_evict(i8* %0, i64 %1) local_unnamed_addr #5 {
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  br label %4

3:                                                ; preds = %40
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal16memoization_lockE) #6
  ret void

4:                                                ; preds = %2, %40
  %5 = phi i32 [ 0, %2 ], [ %41, %40 ]
  %6 = getelementptr inbounds [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*], [256 x %"struct.Halide::Runtime::Internal::CacheEntry"*]* @_ZN6Halide7Runtime8Internal13cache_entriesE, i32 0, i32 %5
  %7 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %6, align 4, !tbaa !60
  %8 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %4, %37
  %10 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %38, %37 ], [ %6, %4 ]
  %11 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %13, %37 ], [ %7, %4 ]
  %12 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 0
  %13 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 13
  %15 = load i8, i8* %14, align 8, !tbaa !58, !range !88
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 12
  %19 = load i64, i64* %18, align 8, !tbaa !59
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %13, %"struct.Halide::Runtime::Internal::CacheEntry"** %10, align 4, !tbaa !60
  %22 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 1
  %23 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %22, align 4, !tbaa !42
  %24 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %23, null
  %25 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %11, i32 0, i32 2
  %26 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !tbaa !43
  br i1 %24, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %23, i32 0, i32 2
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** %28, align 8, !tbaa !43
  %29 = load %"struct.Halide::Runtime::Internal::CacheEntry"*, %"struct.Halide::Runtime::Internal::CacheEntry"** %25, align 8, !tbaa !43
  br label %31

30:                                               ; preds = %21
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %26, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal18most_recently_usedE, align 4, !tbaa !60
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %"struct.Halide::Runtime::Internal::CacheEntry"* [ %26, %30 ], [ %29, %27 ]
  %33 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %32, null
  %34 = getelementptr inbounds %"struct.Halide::Runtime::Internal::CacheEntry", %"struct.Halide::Runtime::Internal::CacheEntry"* %32, i32 0, i32 1
  %35 = select i1 %33, %"struct.Halide::Runtime::Internal::CacheEntry"** @_ZN6Halide7Runtime8Internal19least_recently_usedE, %"struct.Halide::Runtime::Internal::CacheEntry"** %34
  store %"struct.Halide::Runtime::Internal::CacheEntry"* %23, %"struct.Halide::Runtime::Internal::CacheEntry"** %35, align 4, !tbaa !60
  tail call void @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(%"struct.Halide::Runtime::Internal::CacheEntry"* nonnull dereferenceable(64) %11) #7
  %36 = bitcast %"struct.Halide::Runtime::Internal::CacheEntry"* %11 to i8*
  tail call void @halide_free(i8* %0, i8* nonnull %36) #6
  br label %37

37:                                               ; preds = %9, %17, %31
  %38 = phi %"struct.Halide::Runtime::Internal::CacheEntry"** [ %10, %31 ], [ %12, %17 ], [ %12, %9 ]
  %39 = icmp eq %"struct.Halide::Runtime::Internal::CacheEntry"* %13, null
  br i1 %39, label %40, label %9, !llvm.loop !89

40:                                               ; preds = %37, %4
  %41 = add nuw nsw i32 %5, 1
  %42 = icmp ult i32 %5, 255
  br i1 %42, label %4, label %3, !llvm.loop !90
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
!38 = !{!27, !21, i64 12}
!39 = !{!40, !17, i64 0}
!40 = !{!"_ZTSN6Halide7Runtime8Internal10CacheEntryE", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !21, i64 16, !17, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !17, i64 40, !17, i64 44, !4, i64 48, !41, i64 56}
!41 = !{!"bool", !5, i64 0}
!42 = !{!40, !17, i64 4}
!43 = !{!40, !17, i64 8}
!44 = !{!40, !21, i64 16}
!45 = !{!40, !21, i64 24}
!46 = !{!40, !21, i64 28}
!47 = !{!40, !21, i64 32}
!48 = !{!40, !21, i64 36}
!49 = !{!40, !17, i64 12}
!50 = !{!40, !17, i64 44}
!51 = !{!40, !17, i64 40}
!52 = !{!40, !17, i64 20}
!53 = distinct !{!53, !8}
!54 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55}
!55 = !{!21, !21, i64 0}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = !{!40, !41, i64 56}
!59 = !{!40, !4, i64 48}
!60 = !{!17, !17, i64 0}
!61 = !{i64 0, i64 8, !3, i64 8, i64 4, !60, i64 12, i64 4, !60, i64 16, i64 8, !3, i64 24, i64 1, !62, i64 25, i64 1, !36, i64 26, i64 2, !63, i64 28, i64 4, !55, i64 32, i64 4, !60, i64 36, i64 4, !60}
!62 = !{!19, !19, i64 0}
!63 = !{!20, !20, i64 0}
!64 = distinct !{!64, !8}
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
!76 = !{!77, !21, i64 4}
!77 = !{!"_ZTSN6Halide7Runtime8Internal16CacheBlockHeaderE", !17, i64 0, !21, i64 4}
!78 = !{!77, !17, i64 0}
!79 = distinct !{!79, !8}
!80 = distinct !{!80, !8}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8}
!84 = distinct !{!84, !8}
!85 = distinct !{!85, !8}
!86 = distinct !{!86, !8}
!87 = distinct !{!87, !8}
!88 = !{i8 0, i8 2}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
