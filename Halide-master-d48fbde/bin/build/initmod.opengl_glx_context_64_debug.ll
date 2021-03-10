; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_glx_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_glx_context.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

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
define weak dso_local zeroext i1 @_ZN6Halide7Runtime8Internal23glx_extension_supportedEPKcS3_(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !28 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i8* %1, metadata !37, metadata !DIExpression()), !dbg !42
  %3 = tail call i8* @strchr(i8* %1, i32 32) #4, !dbg !43
  %4 = icmp eq i8* %3, null, !dbg !45
  br i1 %4, label %5, label %26, !dbg !46

5:                                                ; preds = %2
  %6 = load i8, i8* %1, align 1, !dbg !47, !tbaa !48
  %7 = icmp eq i8 %6, 0, !dbg !51
  br i1 %7, label %26, label %8, !dbg !52

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %0, metadata !38, metadata !DIExpression()), !dbg !42
  %9 = tail call i8* @strstr(i8* %0, i8* nonnull %1) #4, !dbg !53
  call void @llvm.dbg.value(metadata i8* %9, metadata !39, metadata !DIExpression()), !dbg !42
  %10 = icmp eq i8* %9, null, !dbg !54
  br i1 %10, label %26, label %11, !dbg !55

11:                                               ; preds = %8, %23
  %12 = phi i8* [ %24, %23 ], [ %9, %8 ]
  %13 = phi i8* [ %15, %23 ], [ %0, %8 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !38, metadata !DIExpression()), !dbg !42
  %14 = tail call i64 @strlen(i8* nonnull %1) #4, !dbg !56
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !57
  call void @llvm.dbg.value(metadata i8* %15, metadata !40, metadata !DIExpression()), !dbg !58
  %16 = icmp eq i8* %12, %13, !dbg !59
  br i1 %16, label %21, label %17, !dbg !61

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !62
  %19 = load i8, i8* %18, align 1, !dbg !62, !tbaa !48
  %20 = icmp eq i8 %19, 32, !dbg !63
  br i1 %20, label %21, label %23, !dbg !64

21:                                               ; preds = %17, %11
  %22 = load i8, i8* %15, align 1, !dbg !65, !tbaa !48
  switch i8 %22, label %23 [
    i8 32, label %26
    i8 0, label %26
  ], !dbg !66

23:                                               ; preds = %21, %17
  call void @llvm.dbg.value(metadata i8* %15, metadata !38, metadata !DIExpression()), !dbg !42
  %24 = tail call i8* @strstr(i8* nonnull %15, i8* nonnull %1) #4, !dbg !53
  call void @llvm.dbg.value(metadata i8* %24, metadata !39, metadata !DIExpression()), !dbg !42
  %25 = icmp eq i8* %24, null, !dbg !54
  br i1 %25, label %26, label %11, !dbg !55

26:                                               ; preds = %23, %21, %21, %8, %2, %5
  %27 = phi i1 [ false, %5 ], [ false, %2 ], [ false, %8 ], [ false, %23 ], [ true, %21 ], [ true, %21 ], !dbg !42
  ret i1 %27, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !68 dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !71 dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #2

declare !dbg !74 dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !78 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !82, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i8* %1, metadata !83, metadata !DIExpression()), !dbg !84
  %3 = tail call void ()* @glXGetProcAddressARB(i8* %1) #4, !dbg !85
  %4 = bitcast void ()* %3 to i8*, !dbg !86
  ret i8* %4, !dbg !87
}

declare !dbg !88 dso_local void ()* @glXGetProcAddressARB(i8*) local_unnamed_addr #2

; Function Attrs: nounwind mustprogress
define weak dso_local i32 @halide_opengl_create_context(i8* %0) local_unnamed_addr #0 !dbg !94 {
  %2 = alloca [11 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 4
  %5 = alloca [5 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !98, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i32 3, metadata !99, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i32 2, metadata !100, metadata !DIExpression()), !dbg !124
  %6 = tail call i8* @glXGetCurrentContext() #4, !dbg !125
  %7 = icmp eq i8* %6, null, !dbg !125
  br i1 %7, label %8, label %57, !dbg !127

8:                                                ; preds = %1
  %9 = tail call i8* @XOpenDisplay(i8* null) #4, !dbg !128
  call void @llvm.dbg.value(metadata i8* %9, metadata !101, metadata !DIExpression()), !dbg !124
  %10 = icmp eq i8* %9, null, !dbg !129
  br i1 %10, label %11, label %12, !dbg !131

11:                                               ; preds = %8
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #4, !dbg !132
  br label %57, !dbg !134

12:                                               ; preds = %8
  %13 = tail call i32 @glXQueryExtension(i8* nonnull %9, i8* null, i8* null) #4, !dbg !135
  %14 = icmp eq i32 %13, 0, !dbg !135
  br i1 %14, label %15, label %16, !dbg !137

15:                                               ; preds = %12
  tail call void @halide_error(i8* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !138
  br label %57, !dbg !140

16:                                               ; preds = %12
  %17 = tail call i32 @XDefaultScreen(i8* nonnull %9) #4, !dbg !141
  call void @llvm.dbg.value(metadata i32 %17, metadata !102, metadata !DIExpression()), !dbg !124
  %18 = bitcast [11 x i32]* %2 to i8*, !dbg !142
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %18) #5, !dbg !142
  call void @llvm.dbg.declare(metadata [11 x i32]* %2, metadata !103, metadata !DIExpression()), !dbg !143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(44) %18, i8* nonnull align 4 dereferenceable(44) bitcast ([11 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i64 44, i1 false), !dbg !143
  %19 = bitcast i32* %3 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #5, !dbg !144
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !124
  store i32 0, i32* %3, align 4, !dbg !145, !tbaa !146
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* %2, i64 0, i64 0, !dbg !148
  call void @llvm.dbg.value(metadata i32* %3, metadata !107, metadata !DIExpression(DW_OP_deref)), !dbg !124
  %21 = call i8** @glXChooseFBConfig(i8* nonnull %9, i32 %17, i32* nonnull %20, i32* nonnull %3) #4, !dbg !149
  call void @llvm.dbg.value(metadata i8** %21, metadata !108, metadata !DIExpression()), !dbg !124
  %22 = load i32, i32* %3, align 4, !dbg !150, !tbaa !146
  call void @llvm.dbg.value(metadata i32 %22, metadata !107, metadata !DIExpression()), !dbg !124
  %23 = icmp eq i32 %22, 0, !dbg !150
  br i1 %23, label %24, label %25, !dbg !152

24:                                               ; preds = %16
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !153
  br label %55, !dbg !155

25:                                               ; preds = %16
  %26 = load i8*, i8** %21, align 8, !dbg !156, !tbaa !157
  call void @llvm.dbg.value(metadata i8* %26, metadata !110, metadata !DIExpression()), !dbg !124
  %27 = call i8* @glXQueryExtensionsString(i8* nonnull %9, i32 %17) #4, !dbg !159
  call void @llvm.dbg.value(metadata i8* %27, metadata !111, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* null, metadata !112, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i32 1, metadata !113, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* null, metadata !114, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i32, i32*)* null, metadata !115, metadata !DIExpression()), !dbg !124
  %28 = call void ()* @glXGetProcAddressARB(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !160
  call void @llvm.dbg.value(metadata void ()* %28, metadata !115, metadata !DIExpression()), !dbg !124
  %29 = call zeroext i1 @_ZN6Halide7Runtime8Internal23glx_extension_supportedEPKcS3_(i8* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !161
  %30 = icmp ne void ()* %28, null
  %31 = and i1 %29, %30, !dbg !162
  br i1 %31, label %32, label %38, !dbg !162

32:                                               ; preds = %25
  %33 = bitcast void ()* %28 to i8* (i8*, i8*, i8*, i32, i32*)*, !dbg !163
  call void @llvm.dbg.value(metadata i8* (i8*, i8*, i8*, i32, i32*)* %33, metadata !115, metadata !DIExpression()), !dbg !124
  %34 = bitcast [5 x i32]* %4 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %34) #5, !dbg !164
  call void @llvm.dbg.declare(metadata [5 x i32]* %4, metadata !116, metadata !DIExpression()), !dbg !165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %34, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.context_attribs to i8*), i64 20, i1 false), !dbg !165
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0, !dbg !166
  %36 = call i8* %33(i8* nonnull %9, i8* %26, i8* null, i32 1, i32* nonnull %35) #4, !dbg !167
  call void @llvm.dbg.value(metadata i8* %36, metadata !114, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %34) #5, !dbg !168
  %37 = icmp eq i8* %36, null, !dbg !169
  br i1 %37, label %38, label %42, !dbg !171

38:                                               ; preds = %25, %32
  %39 = call i8* @glXCreateNewContext(i8* nonnull %9, i8* %26, i32 32788, i8* null, i32 1) #4, !dbg !172
  call void @llvm.dbg.value(metadata i8* %39, metadata !114, metadata !DIExpression()), !dbg !124
  %40 = icmp eq i8* %39, null, !dbg !174
  br i1 %40, label %41, label %42, !dbg !176

41:                                               ; preds = %38
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !177
  br label %55, !dbg !179

42:                                               ; preds = %32, %38
  %43 = phi i8* [ %39, %38 ], [ %36, %32 ]
  %44 = bitcast [5 x i32]* %5 to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %44) #5, !dbg !180
  call void @llvm.dbg.declare(metadata [5 x i32]* %5, metadata !122, metadata !DIExpression()), !dbg !181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %44, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.pbuffer_attribs to i8*), i64 20, i1 false), !dbg !181
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0, !dbg !182
  %46 = call i64 @glXCreatePbuffer(i8* nonnull %9, i8* %26, i32* nonnull %45) #4, !dbg !183
  call void @llvm.dbg.value(metadata i64 %46, metadata !123, metadata !DIExpression()), !dbg !124
  %47 = bitcast i8** %21 to i8*, !dbg !184
  %48 = call i32 @XFree(i8* nonnull %47) #4, !dbg !185
  %49 = call i32 @XSync(i8* nonnull %9, i32 0) #4, !dbg !186
  %50 = call i32 @glXMakeContextCurrent(i8* nonnull %9, i64 %46, i64 %46, i8* nonnull %43) #4, !dbg !187
  %51 = icmp eq i32 %50, 0, !dbg !187
  br i1 %51, label %52, label %53, !dbg !189

52:                                               ; preds = %42
  call void @halide_error(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !190
  br label %53, !dbg !192

53:                                               ; preds = %42, %52
  %54 = phi i32 [ -1, %52 ], [ 0, %42 ], !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %44) #5, !dbg !193
  br label %55

55:                                               ; preds = %41, %53, %24
  %56 = phi i32 [ -1, %24 ], [ %54, %53 ], [ -1, %41 ], !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #5, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %18) #5, !dbg !193
  br label %57

57:                                               ; preds = %11, %15, %55, %1
  %58 = phi i32 [ 0, %1 ], [ %56, %55 ], [ -1, %15 ], [ -1, %11 ], !dbg !124
  ret i32 %58, !dbg !193
}

declare !dbg !194 dso_local i8* @glXGetCurrentContext() local_unnamed_addr #2

declare !dbg !197 dso_local i8* @XOpenDisplay(i8*) local_unnamed_addr #2

declare !dbg !200 extern_weak dso_local void @halide_error(i8*, i8*) local_unnamed_addr #2

declare !dbg !204 dso_local i32 @glXQueryExtension(i8*, i8*, i8*) local_unnamed_addr #2

declare !dbg !207 dso_local i32 @XDefaultScreen(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !208 dso_local i8** @glXChooseFBConfig(i8*, i32, i32*, i32*) local_unnamed_addr #2

declare !dbg !212 dso_local i8* @glXQueryExtensionsString(i8*, i32) local_unnamed_addr #2

declare !dbg !215 dso_local i8* @glXCreateNewContext(i8*, i8*, i32, i8*, i32) local_unnamed_addr #2

declare !dbg !218 dso_local i64 @glXCreatePbuffer(i8*, i8*, i32*) local_unnamed_addr #2

declare !dbg !221 dso_local i32 @XFree(i8*) local_unnamed_addr #2

declare !dbg !222 dso_local i32 @XSync(i8*, i32) local_unnamed_addr #2

declare !dbg !225 dso_local i32 @glXMakeContextCurrent(i8*, i64, i64, i8*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !1, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !18, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/opengl_glx_context.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "glXCreateContextAttribsARBProc", file: !6, line: 34, baseType: !7)
!6 = !DIFile(filename: "src/runtime/opengl_glx_context.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !13, !10, !14, !16}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLXContext", file: !6, line: 5, baseType: !4)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Display", file: !6, line: 8, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLXFBConfig", file: !6, line: 6, baseType: !4)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !6, line: 7, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!18 = !{!19}
!19 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !20, file: !23, line: 225)
!20 = !DINamespace(name: "Internal", scope: !21)
!21 = !DINamespace(name: "Runtime", scope: !22)
!22 = !DINamespace(name: "Halide", scope: null)
!23 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!28 = distinct !DISubprogram(name: "glx_extension_supported", linkageName: "_ZN6Halide7Runtime8Internal23glx_extension_supportedEPKcS3_", scope: !20, file: !6, line: 44, type: !29, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !32}
!31 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36, !37, !38, !39, !40}
!36 = !DILocalVariable(name: "extlist", arg: 1, scope: !28, file: !6, line: 44, type: !32)
!37 = !DILocalVariable(name: "extension", arg: 2, scope: !28, file: !6, line: 44, type: !32)
!38 = !DILocalVariable(name: "start", scope: !28, file: !6, line: 50, type: !32)
!39 = !DILocalVariable(name: "pos", scope: !28, file: !6, line: 51, type: !32)
!40 = !DILocalVariable(name: "end", scope: !41, file: !6, line: 52, type: !32)
!41 = distinct !DILexicalBlock(scope: !28, file: !6, line: 51, column: 56)
!42 = !DILocation(line: 0, scope: !28)
!43 = !DILocation(line: 46, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !28, file: !6, line: 46, column: 9)
!45 = !DILocation(line: 46, column: 32, scope: !44)
!46 = !DILocation(line: 46, column: 43, scope: !44)
!47 = !DILocation(line: 46, column: 46, scope: !44)
!48 = !{!49, !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !DILocation(line: 46, column: 57, scope: !44)
!52 = !DILocation(line: 46, column: 9, scope: !28)
!53 = !DILocation(line: 51, column: 30, scope: !28)
!54 = !DILocation(line: 51, column: 24, scope: !28)
!55 = !DILocation(line: 51, column: 5, scope: !28)
!56 = !DILocation(line: 52, column: 33, scope: !41)
!57 = !DILocation(line: 52, column: 31, scope: !41)
!58 = !DILocation(line: 0, scope: !41)
!59 = !DILocation(line: 54, column: 18, scope: !60)
!60 = distinct !DILexicalBlock(scope: !41, file: !6, line: 54, column: 13)
!61 = !DILocation(line: 54, column: 27, scope: !60)
!62 = !DILocation(line: 54, column: 30, scope: !60)
!63 = !DILocation(line: 54, column: 38, scope: !60)
!64 = !DILocation(line: 54, column: 46, scope: !60)
!65 = !DILocation(line: 55, column: 14, scope: !60)
!66 = !DILocation(line: 55, column: 26, scope: !60)
!67 = !DILocation(line: 61, column: 1, scope: !28)
!68 = !DISubprogram(name: "strchr", scope: !23, file: !23, line: 93, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{!32, !32, !15}
!71 = !DISubprogram(name: "strstr", scope: !23, file: !23, line: 88, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!72 = !DISubroutineType(types: !73)
!73 = !{!32, !32, !32}
!74 = !DISubprogram(name: "strlen", scope: !23, file: !23, line: 92, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !32}
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = distinct !DISubprogram(name: "halide_opengl_get_proc_address", scope: !6, file: !6, line: 69, type: !79, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!4, !4, !32}
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "user_context", arg: 1, scope: !78, file: !6, line: 69, type: !4)
!83 = !DILocalVariable(name: "name", arg: 2, scope: !78, file: !6, line: 69, type: !32)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 70, column: 20, scope: !78)
!86 = !DILocation(line: 70, column: 12, scope: !78)
!87 = !DILocation(line: 70, column: 5, scope: !78)
!88 = !DISubprogram(name: "glXGetProcAddressARB", scope: !6, file: !6, line: 11, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !32}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null}
!94 = distinct !DISubprogram(name: "halide_opengl_create_context", scope: !6, file: !6, line: 74, type: !95, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !4}
!97 = !{!98, !99, !100, !101, !102, !103, !107, !108, !110, !111, !112, !113, !114, !115, !116, !122, !123}
!98 = !DILocalVariable(name: "user_context", arg: 1, scope: !94, file: !6, line: 74, type: !4)
!99 = !DILocalVariable(name: "desired_major_version", scope: !94, file: !6, line: 75, type: !17)
!100 = !DILocalVariable(name: "desired_minor_version", scope: !94, file: !6, line: 76, type: !17)
!101 = !DILocalVariable(name: "dpy", scope: !94, file: !6, line: 83, type: !4)
!102 = !DILocalVariable(name: "screen", scope: !94, file: !6, line: 95, type: !15)
!103 = !DILocalVariable(name: "attribs", scope: !94, file: !6, line: 97, type: !104)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 352, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 11)
!107 = !DILocalVariable(name: "num_configs", scope: !94, file: !6, line: 104, type: !15)
!108 = !DILocalVariable(name: "fbconfigs", scope: !94, file: !6, line: 105, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!110 = !DILocalVariable(name: "fbconfig", scope: !94, file: !6, line: 110, type: !4)
!111 = !DILocalVariable(name: "glxexts", scope: !94, file: !6, line: 112, type: !32)
!112 = !DILocalVariable(name: "share_list", scope: !94, file: !6, line: 113, type: !4)
!113 = !DILocalVariable(name: "direct", scope: !94, file: !6, line: 114, type: !15)
!114 = !DILocalVariable(name: "context", scope: !94, file: !6, line: 115, type: !4)
!115 = !DILocalVariable(name: "glXCreateContextAttribsARB", scope: !94, file: !6, line: 117, type: !5)
!116 = !DILocalVariable(name: "context_attribs", scope: !117, file: !6, line: 123, type: !119)
!117 = distinct !DILexicalBlock(scope: !118, file: !6, line: 122, column: 37)
!118 = distinct !DILexicalBlock(scope: !94, file: !6, line: 121, column: 9)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 5)
!122 = !DILocalVariable(name: "pbuffer_attribs", scope: !94, file: !6, line: 139, type: !119)
!123 = !DILocalVariable(name: "pbuffer", scope: !94, file: !6, line: 143, type: !77)
!124 = !DILocation(line: 0, scope: !94)
!125 = !DILocation(line: 78, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !94, file: !6, line: 78, column: 9)
!127 = !DILocation(line: 78, column: 9, scope: !94)
!128 = !DILocation(line: 83, column: 17, scope: !94)
!129 = !DILocation(line: 84, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !94, file: !6, line: 84, column: 9)
!131 = !DILocation(line: 84, column: 9, scope: !94)
!132 = !DILocation(line: 85, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !6, line: 84, column: 15)
!134 = !DILocation(line: 86, column: 9, scope: !133)
!135 = !DILocation(line: 90, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !94, file: !6, line: 90, column: 9)
!137 = !DILocation(line: 90, column: 9, scope: !94)
!138 = !DILocation(line: 91, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !6, line: 90, column: 52)
!140 = !DILocation(line: 92, column: 9, scope: !139)
!141 = !DILocation(line: 95, column: 18, scope: !94)
!142 = !DILocation(line: 97, column: 5, scope: !94)
!143 = !DILocation(line: 97, column: 9, scope: !94)
!144 = !DILocation(line: 104, column: 5, scope: !94)
!145 = !DILocation(line: 104, column: 9, scope: !94)
!146 = !{!147, !147, i64 0}
!147 = !{!"int", !49, i64 0}
!148 = !DILocation(line: 105, column: 55, scope: !94)
!149 = !DILocation(line: 105, column: 24, scope: !94)
!150 = !DILocation(line: 106, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !94, file: !6, line: 106, column: 9)
!152 = !DILocation(line: 106, column: 9, scope: !94)
!153 = !DILocation(line: 107, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !6, line: 106, column: 23)
!155 = !DILocation(line: 108, column: 9, scope: !154)
!156 = !DILocation(line: 110, column: 22, scope: !94)
!157 = !{!158, !158, i64 0}
!158 = !{!"any pointer", !49, i64 0}
!159 = !DILocation(line: 112, column: 27, scope: !94)
!160 = !DILocation(line: 119, column: 9, scope: !94)
!161 = !DILocation(line: 121, column: 9, scope: !118)
!162 = !DILocation(line: 121, column: 68, scope: !118)
!163 = !DILocation(line: 118, column: 34, scope: !94)
!164 = !DILocation(line: 123, column: 9, scope: !117)
!165 = !DILocation(line: 123, column: 13, scope: !117)
!166 = !DILocation(line: 128, column: 46, scope: !117)
!167 = !DILocation(line: 127, column: 19, scope: !117)
!168 = !DILocation(line: 129, column: 5, scope: !118)
!169 = !DILocation(line: 130, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !94, file: !6, line: 130, column: 9)
!171 = !DILocation(line: 130, column: 9, scope: !94)
!172 = !DILocation(line: 132, column: 19, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !6, line: 130, column: 19)
!174 = !DILocation(line: 134, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !94, file: !6, line: 134, column: 9)
!176 = !DILocation(line: 134, column: 9, scope: !94)
!177 = !DILocation(line: 135, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !6, line: 134, column: 19)
!179 = !DILocation(line: 136, column: 9, scope: !178)
!180 = !DILocation(line: 139, column: 5, scope: !94)
!181 = !DILocation(line: 139, column: 9, scope: !94)
!182 = !DILocation(line: 143, column: 61, scope: !94)
!183 = !DILocation(line: 143, column: 29, scope: !94)
!184 = !DILocation(line: 145, column: 11, scope: !94)
!185 = !DILocation(line: 145, column: 5, scope: !94)
!186 = !DILocation(line: 146, column: 5, scope: !94)
!187 = !DILocation(line: 148, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !94, file: !6, line: 148, column: 9)
!189 = !DILocation(line: 148, column: 9, scope: !94)
!190 = !DILocation(line: 149, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !6, line: 148, column: 65)
!192 = !DILocation(line: 150, column: 9, scope: !191)
!193 = !DILocation(line: 154, column: 1, scope: !94)
!194 = !DISubprogram(name: "glXGetCurrentContext", scope: !6, file: !6, line: 21, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!195 = !DISubroutineType(types: !196)
!196 = !{!4}
!197 = !DISubprogram(name: "XOpenDisplay", scope: !6, file: !6, line: 12, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!198 = !DISubroutineType(types: !199)
!199 = !{!4, !4}
!200 = !DISubprogram(name: "halide_error", scope: !201, file: !201, line: 111, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!201 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!202 = !DISubroutineType(types: !203)
!203 = !{null, !4, !32}
!204 = !DISubprogram(name: "glXQueryExtension", scope: !6, file: !6, line: 14, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!205 = !DISubroutineType(types: !206)
!206 = !{!15, !4, !4, !4}
!207 = !DISubprogram(name: "XDefaultScreen", scope: !6, file: !6, line: 13, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!208 = !DISubprogram(name: "glXChooseFBConfig", scope: !6, file: !6, line: 17, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!209 = !DISubroutineType(types: !210)
!210 = !{!109, !4, !15, !16, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!212 = !DISubprogram(name: "glXQueryExtensionsString", scope: !6, file: !6, line: 15, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!213 = !DISubroutineType(types: !214)
!214 = !{!32, !4, !15}
!215 = !DISubprogram(name: "glXCreateNewContext", scope: !6, file: !6, line: 16, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!216 = !DISubroutineType(types: !217)
!217 = !{!4, !4, !4, !15, !4, !15}
!218 = !DISubprogram(name: "glXCreatePbuffer", scope: !6, file: !6, line: 18, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!219 = !DISubroutineType(types: !220)
!220 = !{!77, !4, !4, !16}
!221 = !DISubprogram(name: "XFree", scope: !6, file: !6, line: 19, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!222 = !DISubprogram(name: "XSync", scope: !6, file: !6, line: 20, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!223 = !DISubroutineType(types: !224)
!224 = !{!15, !4, !15}
!225 = !DISubprogram(name: "glXMakeContextCurrent", scope: !6, file: !6, line: 22, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!226 = !DISubroutineType(types: !227)
!227 = !{!15, !4, !77, !77, !4}
