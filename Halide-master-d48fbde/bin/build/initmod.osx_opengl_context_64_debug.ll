; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_opengl_context.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_opengl_context.cpp"
target datalayout = "e-m:e-v128:32-v16:16-v32:32-v96:32-n8:16:32:64-S128"
target triple = "le64-unknown-unknown-unknown"

%struct.halide_mutex = type { [1 x i64] }
%"struct.Halide::Runtime::Internal::ScopedMutexLock" = type { %struct.halide_mutex* }

@_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE = weak dso_local global %struct.halide_mutex zeroinitializer, align 8, !dbg !0
@_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE = weak dso_local local_unnamed_addr global i8 0, align 1, !dbg !18
@_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE = weak dso_local local_unnamed_addr global i32 (i32*, i8**, i32*)* null, align 8, !dbg !21
@_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE = weak dso_local local_unnamed_addr global i32 (i8*, i8*, i8**)* null, align 8, !dbg !30
@_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE = weak dso_local local_unnamed_addr global i32 (i8*)* null, align 8, !dbg !35
@_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE = weak dso_local local_unnamed_addr global i32 (i8*)* null, align 8, !dbg !40
@_ZZ30halide_opengl_get_proc_addressE5dylib = internal unnamed_addr global i8* null, align 8, !dbg !42
@.str = private unnamed_addr constant [68 x i8] c"/System/Library/Frameworks/OpenGL.framework/Versions/Current/OpenGL\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CGLChoosePixelFormat\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CGLCreateContext\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CGLDestroyPixelFormat\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"CGLSetCurrentContext\00", align 1
@__const.halide_opengl_create_context.attribs = private unnamed_addr constant [5 x i32] [i32 72, i32 96, i32 99, i32 4096, i32 0], align 4

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_opengl_get_proc_address(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !44 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i8* %1, metadata !60, metadata !DIExpression()), !dbg !65
  %3 = load i8*, i8** @_ZZ30halide_opengl_get_proc_addressE5dylib, align 8, !dbg !66, !tbaa !68
  %4 = icmp eq i8* %3, null, !dbg !66
  br i1 %4, label %5, label %8, !dbg !72

5:                                                ; preds = %2
  %6 = tail call i8* @halide_load_library(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0)) #5, !dbg !73
  store i8* %6, i8** @_ZZ30halide_opengl_get_proc_addressE5dylib, align 8, !dbg !75, !tbaa !68
  %7 = icmp eq i8* %6, null, !dbg !76
  br i1 %7, label %11, label %8, !dbg !78

8:                                                ; preds = %5, %2
  %9 = phi i8* [ %6, %5 ], [ %3, %2 ], !dbg !79
  %10 = tail call i8* @halide_get_library_symbol(i8* nonnull %9, i8* %1) #5, !dbg !80
  br label %11, !dbg !81

11:                                               ; preds = %5, %8
  %12 = phi i8* [ %10, %8 ], [ null, %5 ], !dbg !65
  ret i8* %12, !dbg !82
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !83 extern_weak dso_local i8* @halide_load_library(i8*) local_unnamed_addr #2

declare !dbg !86 extern_weak dso_local i8* @halide_get_library_symbol(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
define weak dso_local i32 @halide_opengl_create_context(i8* %0) local_unnamed_addr #3 !dbg !87 {
  %2 = alloca i8*, align 8
  %3 = alloca [5 x i32], align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !89, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !112, metadata !DIExpression()) #6, !dbg !117
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE, metadata !115, metadata !DIExpression()) #6, !dbg !117
  call void @llvm.dbg.value(metadata %struct.halide_mutex* @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE, metadata !90, metadata !DIExpression()), !dbg !119
  tail call void @halide_mutex_lock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE) #5, !dbg !120
  %6 = load i8, i8* @_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE, align 1, !dbg !122, !tbaa !124, !range !126
  %7 = icmp eq i8 %6, 0, !dbg !122
  br i1 %7, label %8, label %20, !dbg !127

8:                                                ; preds = %1
  %9 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !128
  store i8* %9, i8** bitcast (i32 (i32*, i8**, i32*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE to i8**), align 8, !dbg !131, !tbaa !68
  %10 = icmp eq i8* %9, null, !dbg !132
  br i1 %10, label %29, label %11, !dbg !133

11:                                               ; preds = %8
  %12 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !134
  store i8* %12, i8** bitcast (i32 (i8*, i8*, i8**)** @_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE to i8**), align 8, !dbg !136, !tbaa !68
  %13 = icmp eq i8* %12, null, !dbg !137
  br i1 %13, label %29, label %14, !dbg !138

14:                                               ; preds = %11
  %15 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !139
  store i8* %15, i8** bitcast (i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE to i8**), align 8, !dbg !141, !tbaa !68
  %16 = icmp eq i8* %15, null, !dbg !142
  br i1 %16, label %29, label %17, !dbg !143

17:                                               ; preds = %14
  %18 = tail call i8* @halide_opengl_get_proc_address(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !144
  store i8* %18, i8** bitcast (i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE to i8**), align 8, !dbg !146, !tbaa !68
  %19 = icmp eq i8* %18, null, !dbg !147
  br i1 %19, label %29, label %20, !dbg !148

20:                                               ; preds = %17, %1
  store i8 1, i8* @_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE, align 1, !dbg !149, !tbaa !124
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !150, metadata !DIExpression()) #6, !dbg !153
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE) #5, !dbg !155
  %21 = bitcast i8** %2 to i8*, !dbg !157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #6, !dbg !157
  call void @llvm.dbg.value(metadata i8* null, metadata !104, metadata !DIExpression()), !dbg !111
  store i8* null, i8** %2, align 8, !dbg !158, !tbaa !68
  %22 = bitcast [5 x i32]* %3 to i8*, !dbg !159
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %22) #6, !dbg !159
  call void @llvm.dbg.declare(metadata [5 x i32]* %3, metadata !105, metadata !DIExpression()), !dbg !160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(20) %22, i8* nonnull align 4 dereferenceable(20) bitcast ([5 x i32]* @__const.halide_opengl_create_context.attribs to i8*), i64 20, i1 false), !dbg !160
  %23 = bitcast i8** %4 to i8*, !dbg !161
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #6, !dbg !161
  %24 = bitcast i32* %5 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #6, !dbg !162
  call void @llvm.dbg.value(metadata i32 0, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 0, i32* %5, align 4, !dbg !163, !tbaa !164
  %25 = load i32 (i32*, i8**, i32*)*, i32 (i32*, i8**, i32*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE, align 8, !dbg !166, !tbaa !68
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0, !dbg !168
  call void @llvm.dbg.value(metadata i8** %4, metadata !109, metadata !DIExpression(DW_OP_deref)), !dbg !111
  call void @llvm.dbg.value(metadata i32* %5, metadata !110, metadata !DIExpression(DW_OP_deref)), !dbg !111
  %27 = call i32 %25(i32* nonnull %26, i8** nonnull %4, i32* nonnull %5) #5, !dbg !166
  %28 = icmp eq i32 %27, 0, !dbg !169
  br i1 %28, label %30, label %43, !dbg !170

29:                                               ; preds = %17, %14, %11, %8
  call void @llvm.dbg.value(metadata %"struct.Halide::Runtime::Internal::ScopedMutexLock"* undef, metadata !150, metadata !DIExpression()) #6, !dbg !171
  tail call void @halide_mutex_unlock(%struct.halide_mutex* nonnull @_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE) #5, !dbg !173
  br label %45

30:                                               ; preds = %20
  %31 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** @_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE, align 8, !dbg !174, !tbaa !68
  %32 = load i8*, i8** %4, align 8, !dbg !176, !tbaa !68
  call void @llvm.dbg.value(metadata i8* %32, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8** %2, metadata !104, metadata !DIExpression(DW_OP_deref)), !dbg !111
  %33 = call i32 %31(i8* %32, i8* null, i8** nonnull %2) #5, !dbg !174
  %34 = icmp eq i32 %33, 0, !dbg !177
  br i1 %34, label %39, label %35, !dbg !178

35:                                               ; preds = %30
  %36 = load i32 (i8*)*, i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE, align 8, !dbg !179, !tbaa !68
  %37 = load i8*, i8** %4, align 8, !dbg !181, !tbaa !68
  call void @llvm.dbg.value(metadata i8* %37, metadata !109, metadata !DIExpression()), !dbg !111
  %38 = call i32 %36(i8* %37) #5, !dbg !179
  br label %43, !dbg !182

39:                                               ; preds = %30
  %40 = load i32 (i8*)*, i32 (i8*)** @_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE, align 8, !dbg !183, !tbaa !68
  %41 = load i8*, i8** %2, align 8, !dbg !184, !tbaa !68
  call void @llvm.dbg.value(metadata i8* %41, metadata !104, metadata !DIExpression()), !dbg !111
  %42 = call i32 %40(i8* %41) #5, !dbg !183
  br label %43, !dbg !185

43:                                               ; preds = %20, %39, %35
  %44 = phi i32 [ -1, %35 ], [ 0, %39 ], [ -1, %20 ], !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #6, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #6, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %22) #6, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #6, !dbg !186
  br label %45

45:                                               ; preds = %29, %43
  %46 = phi i32 [ %44, %43 ], [ -1, %29 ]
  ret i32 %46, !dbg !186
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !187 dso_local void @halide_mutex_lock(%struct.halide_mutex*) local_unnamed_addr #2

declare !dbg !190 dso_local void @halide_mutex_unlock(%struct.halide_mutex*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!50}
!llvm.module.flags = !{!61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cgl_functions_mutex", linkageName: "_ZN6Halide7Runtime8Internal6OpenGL19cgl_functions_mutexE", scope: !2, file: !6, line: 20, type: !7, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "OpenGL", scope: !3)
!3 = !DINamespace(name: "Internal", scope: !4)
!4 = !DINamespace(name: "Runtime", scope: !5)
!5 = !DINamespace(name: "Halide", scope: null)
!6 = !DIFile(filename: "src/runtime/osx_opengl_context.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "halide_mutex", file: !8, line: 120, size: 64, flags: DIFlagTypePassByValue, elements: !9, identifier: "_ZTS12halide_mutex")
!8 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !7, file: !8, line: 121, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !16)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !13, line: 61, baseType: !14)
!13 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 10, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!17}
!17 = !DISubrange(count: 1)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "cgl_initialized", linkageName: "_ZN6Halide7Runtime8Internal6OpenGL15cgl_initializedE", scope: !2, file: !6, line: 21, type: !20, isLocal: false, isDefinition: true)
!20 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "CGLChoosePixelFormat", linkageName: "_ZN6Halide7Runtime8Internal6OpenGL20CGLChoosePixelFormatE", scope: !2, file: !6, line: 22, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !28, !27}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "CGLCreateContext", linkageName: "_ZN6Halide7Runtime8Internal6OpenGL16CGLCreateContextE", scope: !2, file: !6, line: 23, type: !32, isLocal: false, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!26, !29, !29, !28}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "CGLDestroyPixelFormat", linkageName: "_ZN6Halide7Runtime8Internal6OpenGL21CGLDestroyPixelFormatE", scope: !2, file: !6, line: 24, type: !37, isLocal: false, isDefinition: true)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!26, !29}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "CGLSetCurrentContext", linkageName: "_ZN6Halide7Runtime8Internal6OpenGL20CGLSetCurrentContextE", scope: !2, file: !6, line: 25, type: !37, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "dylib", scope: !44, file: !6, line: 38, type: !29, isLocal: true, isDefinition: true)
!44 = distinct !DISubprogram(name: "halide_opengl_get_proc_address", scope: !6, file: !6, line: 37, type: !45, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !58)
!45 = !DISubroutineType(types: !46)
!46 = !{!29, !29, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !51, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !52, retainedTypes: !53, globals: !54, imports: !55, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/osx_opengl_context.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!52 = !{}
!53 = !{!23, !32, !37}
!54 = !{!0, !18, !21, !30, !35, !40, !42}
!55 = !{!56, !57}
!56 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !50, entity: !3, file: !13, line: 225)
!57 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !50, entity: !2, file: !6, line: 32)
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "user_context", arg: 1, scope: !44, file: !6, line: 37, type: !29)
!60 = !DILocalVariable(name: "name", arg: 2, scope: !44, file: !6, line: 37, type: !47)
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!65 = !DILocation(line: 0, scope: !44)
!66 = !DILocation(line: 39, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !44, file: !6, line: 39, column: 9)
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !DILocation(line: 39, column: 9, scope: !44)
!73 = !DILocation(line: 40, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !67, file: !6, line: 39, column: 17)
!75 = !DILocation(line: 40, column: 15, scope: !74)
!76 = !DILocation(line: 42, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !6, line: 42, column: 13)
!78 = !DILocation(line: 42, column: 13, scope: !74)
!79 = !DILocation(line: 46, column: 38, scope: !44)
!80 = !DILocation(line: 46, column: 12, scope: !44)
!81 = !DILocation(line: 46, column: 5, scope: !44)
!82 = !DILocation(line: 47, column: 1, scope: !44)
!83 = !DISubprogram(name: "halide_load_library", scope: !8, file: !8, line: 376, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!84 = !DISubroutineType(types: !85)
!85 = !{!29, !47}
!86 = !DISubprogram(name: "halide_get_library_symbol", scope: !8, file: !8, line: 377, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!87 = distinct !DISubprogram(name: "halide_opengl_create_context", scope: !6, file: !6, line: 50, type: !38, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !88)
!88 = !{!89, !90, !104, !105, !109, !110}
!89 = !DILocalVariable(name: "user_context", arg: 1, scope: !87, file: !6, line: 50, type: !29)
!90 = !DILocalVariable(name: "lock", scope: !91, file: !6, line: 72, type: !92)
!91 = distinct !DILexicalBlock(scope: !87, file: !6, line: 71, column: 5)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ScopedMutexLock", scope: !3, file: !93, line: 11, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !94, identifier: "_ZTSN6Halide7Runtime8Internal15ScopedMutexLockE")
!93 = !DIFile(filename: "src/runtime/scoped_mutex_lock.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!94 = !{!95, !97, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !92, file: !93, line: 12, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!97 = !DISubprogram(name: "ScopedMutexLock", scope: !92, file: !93, line: 14, type: !98, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100, !96}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !DISubprogram(name: "~ScopedMutexLock", scope: !92, file: !93, line: 19, type: !102, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !100}
!104 = !DILocalVariable(name: "ctx", scope: !87, file: !6, line: 95, type: !29)
!105 = !DILocalVariable(name: "attribs", scope: !87, file: !6, line: 96, type: !106)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 5)
!109 = !DILocalVariable(name: "fmt", scope: !87, file: !6, line: 105, type: !29)
!110 = !DILocalVariable(name: "numFormats", scope: !87, file: !6, line: 106, type: !26)
!111 = !DILocation(line: 0, scope: !87)
!112 = !DILocalVariable(name: "this", arg: 1, scope: !113, type: !116, flags: DIFlagArtificial | DIFlagObjectPointer)
!113 = distinct !DISubprogram(name: "ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockC2EP12halide_mutex", scope: !92, file: !93, line: 14, type: !98, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, declaration: !97, retainedNodes: !114)
!114 = !{!112, !115}
!115 = !DILocalVariable(name: "mutex", arg: 2, scope: !113, file: !93, line: 14, type: !96)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!117 = !DILocation(line: 0, scope: !113, inlinedAt: !118)
!118 = distinct !DILocation(line: 72, column: 25, scope: !91)
!119 = !DILocation(line: 0, scope: !91)
!120 = !DILocation(line: 16, column: 9, scope: !121, inlinedAt: !118)
!121 = distinct !DILexicalBlock(scope: !113, file: !93, line: 15, column: 24)
!122 = !DILocation(line: 74, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !91, file: !6, line: 74, column: 13)
!124 = !{!125, !125, i64 0}
!125 = !{!"bool", !70, i64 0}
!126 = !{i8 0, i8 2}
!127 = !DILocation(line: 74, column: 13, scope: !91)
!128 = !DILocation(line: 76, column: 54, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !6, line: 75, column: 17)
!130 = distinct !DILexicalBlock(scope: !123, file: !6, line: 74, column: 31)
!131 = !DILocation(line: 75, column: 39, scope: !129)
!132 = !DILocation(line: 76, column: 124, scope: !129)
!133 = !DILocation(line: 75, column: 17, scope: !130)
!134 = !DILocation(line: 80, column: 56, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !6, line: 79, column: 17)
!136 = !DILocation(line: 79, column: 35, scope: !135)
!137 = !DILocation(line: 80, column: 122, scope: !135)
!138 = !DILocation(line: 79, column: 17, scope: !130)
!139 = !DILocation(line: 84, column: 39, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !6, line: 83, column: 17)
!141 = !DILocation(line: 83, column: 40, scope: !140)
!142 = !DILocation(line: 84, column: 110, scope: !140)
!143 = !DILocation(line: 83, column: 17, scope: !130)
!144 = !DILocation(line: 88, column: 39, scope: !145)
!145 = distinct !DILexicalBlock(scope: !130, file: !6, line: 87, column: 17)
!146 = !DILocation(line: 87, column: 39, scope: !145)
!147 = !DILocation(line: 88, column: 109, scope: !145)
!148 = !DILocation(line: 87, column: 17, scope: !130)
!149 = !DILocation(line: 92, column: 25, scope: !91)
!150 = !DILocalVariable(name: "this", arg: 1, scope: !151, type: !116, flags: DIFlagArtificial | DIFlagObjectPointer)
!151 = distinct !DISubprogram(name: "~ScopedMutexLock", linkageName: "_ZN6Halide7Runtime8Internal15ScopedMutexLockD2Ev", scope: !92, file: !93, line: 19, type: !102, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, declaration: !101, retainedNodes: !152)
!152 = !{!150}
!153 = !DILocation(line: 0, scope: !151, inlinedAt: !154)
!154 = distinct !DILocation(line: 93, column: 5, scope: !87)
!155 = !DILocation(line: 20, column: 9, scope: !156, inlinedAt: !154)
!156 = distinct !DILexicalBlock(scope: !151, file: !93, line: 19, column: 38)
!157 = !DILocation(line: 95, column: 5, scope: !87)
!158 = !DILocation(line: 95, column: 11, scope: !87)
!159 = !DILocation(line: 96, column: 5, scope: !87)
!160 = !DILocation(line: 96, column: 9, scope: !87)
!161 = !DILocation(line: 105, column: 5, scope: !87)
!162 = !DILocation(line: 106, column: 5, scope: !87)
!163 = !DILocation(line: 106, column: 9, scope: !87)
!164 = !{!165, !165, i64 0}
!165 = !{!"int", !70, i64 0}
!166 = !DILocation(line: 107, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !87, file: !6, line: 107, column: 9)
!168 = !DILocation(line: 107, column: 30, scope: !167)
!169 = !DILocation(line: 107, column: 58, scope: !167)
!170 = !DILocation(line: 107, column: 9, scope: !87)
!171 = !DILocation(line: 0, scope: !151, inlinedAt: !172)
!172 = distinct !DILocation(line: 93, column: 5, scope: !87)
!173 = !DILocation(line: 20, column: 9, scope: !156, inlinedAt: !172)
!174 = !DILocation(line: 110, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !87, file: !6, line: 110, column: 9)
!176 = !DILocation(line: 110, column: 26, scope: !175)
!177 = !DILocation(line: 110, column: 46, scope: !175)
!178 = !DILocation(line: 110, column: 9, scope: !87)
!179 = !DILocation(line: 111, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !6, line: 110, column: 52)
!181 = !DILocation(line: 111, column: 31, scope: !180)
!182 = !DILocation(line: 112, column: 9, scope: !180)
!183 = !DILocation(line: 114, column: 5, scope: !87)
!184 = !DILocation(line: 114, column: 26, scope: !87)
!185 = !DILocation(line: 116, column: 5, scope: !87)
!186 = !DILocation(line: 117, column: 1, scope: !87)
!187 = !DISubprogram(name: "halide_mutex_lock", scope: !8, file: !8, line: 133, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !96}
!190 = !DISubprogram(name: "halide_mutex_unlock", scope: !8, file: !8, line: 134, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !52)
