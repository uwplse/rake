; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_glx_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_glx_context.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@.str = private unnamed_addr constant [29 x i8] c"Could not open X11 display.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"GLX not supported by X server.\0A\00", align 1
@__const.halide_opengl_create_context.attribs = private unnamed_addr constant [11 x i32] [i32 32785, i32 1, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not get framebuffer config.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"glXCreateContextAttribsARB\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GLX_ARB_create_context\00", align 1
@__const.halide_opengl_create_context.context_attribs = private unnamed_addr constant [5 x i32] [i32 8337, i32 3, i32 8338, i32 2, i32 0], align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Could not create OpenGL context.\0A\00", align 1
@__const.halide_opengl_create_context.pbuffer_attribs = private unnamed_addr constant [5 x i32] [i32 32833, i32 32, i32 32832, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Could not make context current.\0A\00", align 1

; Function Attrs: nounwind mustprogress
define weak zeroext i1 @_ZN6Halide7Runtime8Internal23glx_extension_supportedEPKcS3_(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call i8* @strchr(i8* %1, i32 32) #3
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = load i8, i8* %1, align 1, !tbaa !3
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i8* @strstr(i8* %0, i8* nonnull %1) #3
  %10 = icmp eq i8* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8, %23
  %12 = phi i8* [ %24, %23 ], [ %9, %8 ]
  %13 = phi i8* [ %15, %23 ], [ %0, %8 ]
  %14 = tail call i32 @strlen(i8* nonnull %1) #3
  %15 = getelementptr inbounds i8, i8* %12, i32 %14
  %16 = icmp eq i8* %12, %13
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, i8* %12, i32 -1
  %19 = load i8, i8* %18, align 1, !tbaa !3
  %20 = icmp eq i8 %19, 32
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %11
  %22 = load i8, i8* %15, align 1, !tbaa !3
  switch i8 %22, label %23 [
    i8 32, label %26
    i8 0, label %26
  ]

23:                                               ; preds = %21, %17
  %24 = tail call i8* @strstr(i8* nonnull %15, i8* nonnull %1) #3
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %11

26:                                               ; preds = %23, %21, %21, %8, %2, %5
  %27 = phi i1 [ false, %5 ], [ false, %2 ], [ false, %8 ], [ false, %23 ], [ true, %21 ], [ true, %21 ]
  ret i1 %27
}

declare i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @strstr(i8*, i8*) local_unnamed_addr #1

declare i32 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind mustprogress
define weak i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #0 {
  %3 = tail call void ()* @glXGetProcAddressARB(i8* %1) #3
  %4 = bitcast void ()* %3 to i8*
  ret i8* %4
}

declare void ()* @glXGetProcAddressARB(i8*) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak i32 @halide_opengl_create_context(i8* %0) local_unnamed_addr #0 {
  %2 = alloca [11 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 4
  %5 = alloca [5 x i32], align 4
  %6 = tail call i8* @glXGetCurrentContext() #3
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %57

8:                                                ; preds = %1
  %9 = tail call i8* @XOpenDisplay(i8* null) #3
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #3
  br label %57

12:                                               ; preds = %8
  %13 = tail call i32 @glXQueryExtension(i8* nonnull %9, i8* null, i8* null) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %57

16:                                               ; preds = %12
  %17 = tail call i32 @XDefaultScreen(i8* nonnull %9) #3
  %18 = bitcast [11 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %18) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(44) %18, i8* nonnull align 4 dereferenceable(44) bitcast ([11 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i32 44, i1 false)
  %19 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %3, align 4, !tbaa !6
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i32 0, i32 0
  %21 = call i8** @glXChooseFBConfig(i8* nonnull %9, i32 %17, i32* nonnull %20, i32* nonnull %3) #3
  %22 = load i32, i32* %3, align 4, !tbaa !6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %55

25:                                               ; preds = %16
  %26 = load i8*, i8** %21, align 4, !tbaa !8
  %27 = call i8* @glXQueryExtensionsString(i8* nonnull %9, i32 %17) #3
  %28 = call void ()* @glXGetProcAddressARB(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #3
  %29 = call zeroext i1 @_ZN6Halide7Runtime8Internal23glx_extension_supportedEPKcS3_(i8* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  %30 = icmp ne void ()* %28, null
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = bitcast void ()* %28 to i8* (i8*, i8*, i8*, i32, i32*)*
  %34 = bitcast [5 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %34) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) %34, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.context_attribs to i8*), i32 20, i1 false)
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i32 0, i32 0
  %36 = call i8* %33(i8* nonnull %9, i8* %26, i8* null, i32 1, i32* nonnull %35) #3
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %34) #4
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %25, %32
  %39 = call i8* @glXCreateNewContext(i8* nonnull %9, i8* %26, i32 32788, i8* null, i32 1) #3
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %55

42:                                               ; preds = %32, %38
  %43 = phi i8* [ %39, %38 ], [ %36, %32 ]
  %44 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %44) #4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 dereferenceable(20) %44, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.pbuffer_attribs to i8*), i32 20, i1 false)
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i32 0, i32 0
  %46 = call i32 @glXCreatePbuffer(i8* nonnull %9, i8* %26, i32* nonnull %45) #3
  %47 = bitcast i8** %21 to i8*
  %48 = call i32 @XFree(i8* nonnull %47) #3
  %49 = call i32 @XSync(i8* nonnull %9, i32 0) #3
  %50 = call i32 @glXMakeContextCurrent(i8* nonnull %9, i32 %46, i32 %46, i8* nonnull %43) #3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)) #3
  br label %53

53:                                               ; preds = %42, %52
  %54 = phi i32 [ -1, %52 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %44) #4
  br label %55

55:                                               ; preds = %41, %53, %24
  %56 = phi i32 [ -1, %24 ], [ %54, %53 ], [ -1, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %18) #4
  br label %57

57:                                               ; preds = %11, %15, %55, %1
  %58 = phi i32 [ 0, %1 ], [ %56, %55 ], [ -1, %15 ], [ -1, %11 ]
  ret i32 %58
}

declare i8* @glXGetCurrentContext() local_unnamed_addr #1

declare i8* @XOpenDisplay(i8*) local_unnamed_addr #1

declare extern_weak void @halide_error(i8*, i8*) local_unnamed_addr #1

declare i32 @glXQueryExtension(i8*, i8*, i8*) local_unnamed_addr #1

declare i32 @XDefaultScreen(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

declare i8** @glXChooseFBConfig(i8*, i32, i32*, i32*) local_unnamed_addr #1

declare i8* @glXQueryExtensionsString(i8*, i32) local_unnamed_addr #1

declare i8* @glXCreateNewContext(i8*, i8*, i32, i8*, i32) local_unnamed_addr #1

declare i32 @glXCreatePbuffer(i8*, i8*, i32*) local_unnamed_addr #1

declare i32 @XFree(i8*) local_unnamed_addr #1

declare i32 @XSync(i8*, i32) local_unnamed_addr #1

declare i32 @glXMakeContextCurrent(i8*, i32, i32, i8*) local_unnamed_addr #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!3 = !{!4, !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
