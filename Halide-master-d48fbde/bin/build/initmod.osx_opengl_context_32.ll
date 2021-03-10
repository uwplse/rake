; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_opengl_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_opengl_context.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

%struct.halide_mutex = type { [1 x i32] }

@_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE = weak global %struct.halide_mutex zeroinitializer, align 4
@_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE = weak local_unnamed_addr global i8 0, align 1
@_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE = weak local_unnamed_addr global i32 (i32*, i8**, i32*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE = weak local_unnamed_addr global i32 (i8*, i8*, i8**)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE = weak local_unnamed_addr global i32 (i8*)* null, align 4
@_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE = weak local_unnamed_addr global i32 (i8*)* null, align 4
@_ZZ30halide_opengl_get_proc_addressE5dylib = internal unnamed_addr global i8* null, align 4
@.str = private unnamed_addr constant [68 x i8] c"/System/Library/Frameworks/OpenGL.framework/Versions/Current/OpenGL\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CGLChoosePixelFormat\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CGLCreateContext\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CGLDestroyPixelFormat\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CGLSetCurrentContext\00", align 1
@__const.halide_opengl_create_context.attribs = private unnamed_addr constant [5 x i32] [i32 72, i32 96, i32 99, i32 4096, i32 0], align 4

; Function Attrs: nounwind mustprogress
define weak i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = load i8*, i8** @_ZZ30halide_opengl_get_proc_addressE5dylib, align 4, !tbaa !3
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %6, i8** @_ZZ30halide_opengl_get_proc_addressE5dylib, align 4, !tbaa !3
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5, %2
  %9 = phi i8* [ %6, %5 ], [ %3, %2 ]
  %10 = tail call i8* @halide_get_library_symbol(i8* nonnull %9, i8* %1) #4
  br label %11

11:                                               ; preds = %5, %8
  %12 = phi i8* [ %10, %8 ], [ null, %5 ]
  ret i8* %12
}

declare extern_weak i8* @halide_load_library(i8*) local_unnamed_addr #1

declare extern_weak i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
define weak i32 @halide_opengl_create_context(i8* %0) local_unnamed_addr #2 {
  %2 = alloca i8*, align 4
  %3 = alloca [5 x i32], align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE) #4
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE, align 1, !tbaa !7, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  store i8* %9, i8** bitcast (i32 (i32*, i8**, i32*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE to i8**), align 4, !tbaa !3
  %10 = icmp eq i8* %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %8
  %12 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #5
  store i8* %12, i8** bitcast (i32 (i8*, i8*, i8**)** @_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE to i8**), align 4, !tbaa !3
  %13 = icmp eq i8* %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %15, i8** bitcast (i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE to i8**), align 4, !tbaa !3
  %16 = icmp eq i8* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %18, i8** bitcast (i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE to i8**), align 4, !tbaa !3
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %17, %1
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE, align 1, !tbaa !7
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE) #4
  %21 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #6
  store i8* null, i8** %2, align 4, !tbaa !3
  %22 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %22) #6
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) %22, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i32 20, i1 false)
  %23 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #6
  %24 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #6
  store i32 0, i32* %5, align 4, !tbaa !10
  %25 = load i32 (i32*, i8**, i32*)*, i32 (i32*, i8**, i32*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE, align 4, !tbaa !3
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i32 0, i32 0
  %27 = call i32 %25(i32* nonnull %26, i8** nonnull %4, i32* nonnull %5) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %43

29:                                               ; preds = %17, %14, %11, %8
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE) #4
  br label %45

30:                                               ; preds = %20
  %31 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** @_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE, align 4, !tbaa !3
  %32 = load i8*, i8** %4, align 4, !tbaa !3
  %33 = call i32 %31(i8* %32, i8* null, i8** nonnull %2) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32 (i8*)*, i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE, align 4, !tbaa !3
  %37 = load i8*, i8** %4, align 4, !tbaa !3
  %38 = call i32 %36(i8* %37) #4
  br label %43

39:                                               ; preds = %30
  %40 = load i32 (i8*)*, i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE, align 4, !tbaa !3
  %41 = load i8*, i8** %2, align 4, !tbaa !3
  %42 = call i32 %40(i8* %41) #4
  br label %43

43:                                               ; preds = %20, %39, %35
  %44 = phi i32 [ -1, %35 ], [ 0, %39 ], [ -1, %20 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #6
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %22) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #6
  br label %45

45:                                               ; preds = %29, %43
  %46 = phi i32 [ %44, %43 ], [ -1, %29 ]
  ret i32 %46
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

declare void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #1

declare void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"bool", !5, i64 0}
!9 = !{i8 0, i8 2}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !5, i64 0}
