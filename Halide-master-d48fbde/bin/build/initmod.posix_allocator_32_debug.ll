; ModuleID = '/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_allocator.cpp'
source_filename = "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_allocator.cpp"
target datalayout = "e-p:32:32-i64:64"
target triple = "le32-unknown-nacl-unknown"

@_ZN6Halide7Runtime8Internal13custom_mallocE = weak dso_local local_unnamed_addr global i8* (i8*, i32)* @halide_default_malloc, align 4, !dbg !0
@_ZN6Halide7Runtime8Internal11custom_freeE = weak dso_local local_unnamed_addr global void (i8*, i8*)* @halide_default_free, align 4, !dbg !15

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_default_malloc(i8* %0, i32 %1) #0 !dbg !33 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !35, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.value(metadata i32 %1, metadata !36, metadata !DIExpression()), !dbg !41
  %3 = tail call i32 @halide_malloc_alignment() #4, !dbg !42
  call void @llvm.dbg.value(metadata i32 %3, metadata !37, metadata !DIExpression()), !dbg !41
  %4 = add i32 %3, %1, !dbg !43
  %5 = tail call i8* @malloc(i32 %4) #4, !dbg !44
  call void @llvm.dbg.value(metadata i8* %5, metadata !39, metadata !DIExpression()), !dbg !41
  %6 = icmp eq i8* %5, null, !dbg !45
  br i1 %6, label %16, label %7, !dbg !47

7:                                                ; preds = %2
  %8 = ptrtoint i8* %5 to i32, !dbg !48
  %9 = add i32 %3, 3, !dbg !49
  %10 = add i32 %9, %8, !dbg !50
  %11 = sub i32 0, %3, !dbg !51
  %12 = and i32 %10, %11, !dbg !52
  %13 = inttoptr i32 %12 to i8*, !dbg !53
  call void @llvm.dbg.value(metadata i8* %13, metadata !40, metadata !DIExpression()), !dbg !41
  %14 = inttoptr i32 %12 to i8**, !dbg !54
  %15 = getelementptr inbounds i8*, i8** %14, i32 -1, !dbg !55
  store i8* %5, i8** %15, align 4, !dbg !56, !tbaa !57
  br label %16

16:                                               ; preds = %2, %7
  %17 = phi i8* [ %13, %7 ], [ null, %2 ], !dbg !41
  ret i8* %17, !dbg !61
}

declare !dbg !62 extern_weak dso_local i32 @halide_malloc_alignment() local_unnamed_addr #1

declare !dbg !66 dso_local i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_default_free(i8* %0, i8* %1) #0 !dbg !69 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i8* %1, metadata !72, metadata !DIExpression()), !dbg !73
  %3 = getelementptr inbounds i8, i8* %1, i32 -4, !dbg !74
  %4 = bitcast i8* %3 to i8**, !dbg !74
  %5 = load i8*, i8** %4, align 4, !dbg !74, !tbaa !57
  tail call void @free(i8* %5) #4, !dbg !75
  ret void, !dbg !76
}

declare !dbg !77 dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local i8* (i8*, i32)* @halide_set_custom_malloc(i8* (i8*, i32)* %0) local_unnamed_addr #2 !dbg !80 {
  call void @llvm.dbg.value(metadata i8* (i8*, i32)* %0, metadata !84, metadata !DIExpression()), !dbg !86
  %2 = load i8* (i8*, i32)*, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !dbg !87, !tbaa !57
  call void @llvm.dbg.value(metadata i8* (i8*, i32)* %2, metadata !85, metadata !DIExpression()), !dbg !86
  store i8* (i8*, i32)* %0, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !dbg !88, !tbaa !57
  ret i8* (i8*, i32)* %2, !dbg !89
}

; Function Attrs: nounwind willreturn mustprogress
define weak dso_local void (i8*, i8*)* @halide_set_custom_free(void (i8*, i8*)* %0) local_unnamed_addr #2 !dbg !90 {
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %0, metadata !94, metadata !DIExpression()), !dbg !96
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !dbg !97, !tbaa !57
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %2, metadata !95, metadata !DIExpression()), !dbg !96
  store void (i8*, i8*)* %0, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !dbg !98, !tbaa !57
  ret void (i8*, i8*)* %2, !dbg !99
}

; Function Attrs: nounwind mustprogress
define weak dso_local i8* @halide_malloc(i8* %0, i32 %1) local_unnamed_addr #0 !dbg !100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %1, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load i8* (i8*, i32)*, i8* (i8*, i32)** @_ZN6Halide7Runtime8Internal13custom_mallocE, align 4, !dbg !105, !tbaa !57
  %4 = tail call i8* %3(i8* %0, i32 %1) #4, !dbg !105
  ret i8* %4, !dbg !106
}

; Function Attrs: nounwind mustprogress
define weak dso_local void @halide_free(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8* %1, metadata !110, metadata !DIExpression()), !dbg !111
  %3 = load void (i8*, i8*)*, void (i8*, i8*)** @_ZN6Halide7Runtime8Internal11custom_freeE, align 4, !dbg !112, !tbaa !57
  tail call void %3(i8* %0, i8* %1) #4, !dbg !112
  ret void, !dbg !113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "custom_malloc", linkageName: "_ZN6Halide7Runtime8Internal13custom_mallocE", scope: !2, file: !5, line: 34, type: !6, isLocal: false, isDefinition: true)
!2 = !DINamespace(name: "Internal", scope: !3)
!3 = !DINamespace(name: "Runtime", scope: !4)
!4 = !DINamespace(name: "Halide", scope: null)
!5 = !DIFile(filename: "src/runtime/posix_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_malloc_t", file: !7, line: 358, baseType: !8)
!7 = !DIFile(filename: "src/runtime/HalideRuntime.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 27, baseType: !14)
!13 = !DIFile(filename: "src/runtime/runtime_internal.h", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "custom_free", linkageName: "_ZN6Halide7Runtime8Internal11custom_freeE", scope: !2, file: !5, line: 35, type: !17, isLocal: false, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "halide_free_t", file: !7, line: 359, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !11, !11}
!21 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_11, file: !22, producer: "Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, retainedTypes: !24, globals: !26, imports: !27, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde/src/runtime/posix_allocator.cpp", directory: "/media/maaz/Data/Repos/rake/Halide-master-d48fbde")
!23 = !{}
!24 = !{!11, !12, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!26 = !{!0, !15}
!27 = !{!28}
!28 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !21, entity: !2, file: !13, line: 225)
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"Ubuntu clang version 12.0.0-++20210305074957+d24e102ba266-1~exp1~20210305185701.56"}
!33 = distinct !DISubprogram(name: "halide_default_malloc", scope: !5, file: !5, line: 11, type: !9, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !34)
!34 = !{!35, !36, !37, !39, !40}
!35 = !DILocalVariable(name: "user_context", arg: 1, scope: !33, file: !5, line: 11, type: !11)
!36 = !DILocalVariable(name: "x", arg: 2, scope: !33, file: !5, line: 11, type: !12)
!37 = !DILocalVariable(name: "alignment", scope: !33, file: !5, line: 13, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!39 = !DILocalVariable(name: "orig", scope: !33, file: !5, line: 14, type: !11)
!40 = !DILocalVariable(name: "ptr", scope: !33, file: !5, line: 20, type: !11)
!41 = !DILocation(line: 0, scope: !33)
!42 = !DILocation(line: 13, column: 30, scope: !33)
!43 = !DILocation(line: 14, column: 27, scope: !33)
!44 = !DILocation(line: 14, column: 18, scope: !33)
!45 = !DILocation(line: 15, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !33, file: !5, line: 15, column: 9)
!47 = !DILocation(line: 15, column: 9, scope: !33)
!48 = !DILocation(line: 20, column: 27, scope: !33)
!49 = !DILocation(line: 20, column: 40, scope: !33)
!50 = !DILocation(line: 20, column: 69, scope: !33)
!51 = !DILocation(line: 20, column: 76, scope: !33)
!52 = !DILocation(line: 20, column: 74, scope: !33)
!53 = !DILocation(line: 20, column: 17, scope: !33)
!54 = !DILocation(line: 21, column: 6, scope: !33)
!55 = !DILocation(line: 21, column: 5, scope: !33)
!56 = !DILocation(line: 21, column: 24, scope: !33)
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C++ TBAA"}
!61 = !DILocation(line: 23, column: 1, scope: !33)
!62 = !DISubprogram(name: "halide_malloc_alignment", scope: !13, file: !13, line: 188, type: !63, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!63 = !DISubroutineType(types: !64)
!64 = !{!65}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DISubprogram(name: "malloc", scope: !5, file: !5, line: 8, type: !67, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!67 = !DISubroutineType(types: !68)
!68 = !{!11, !14}
!69 = distinct !DISubprogram(name: "halide_default_free", scope: !5, file: !5, line: 25, type: !19, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !70)
!70 = !{!71, !72}
!71 = !DILocalVariable(name: "user_context", arg: 1, scope: !69, file: !5, line: 25, type: !11)
!72 = !DILocalVariable(name: "ptr", arg: 2, scope: !69, file: !5, line: 25, type: !11)
!73 = !DILocation(line: 0, scope: !69)
!74 = !DILocation(line: 26, column: 10, scope: !69)
!75 = !DILocation(line: 26, column: 5, scope: !69)
!76 = !DILocation(line: 27, column: 1, scope: !69)
!77 = !DISubprogram(name: "free", scope: !5, file: !5, line: 9, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !23)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !11}
!80 = distinct !DISubprogram(name: "halide_set_custom_malloc", scope: !5, file: !5, line: 43, type: !81, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!6, !6}
!83 = !{!84, !85}
!84 = !DILocalVariable(name: "user_malloc", arg: 1, scope: !80, file: !5, line: 43, type: !6)
!85 = !DILocalVariable(name: "result", scope: !80, file: !5, line: 44, type: !6)
!86 = !DILocation(line: 0, scope: !80)
!87 = !DILocation(line: 44, column: 30, scope: !80)
!88 = !DILocation(line: 45, column: 19, scope: !80)
!89 = !DILocation(line: 46, column: 5, scope: !80)
!90 = distinct !DISubprogram(name: "halide_set_custom_free", scope: !5, file: !5, line: 49, type: !91, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!17, !17}
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "user_free", arg: 1, scope: !90, file: !5, line: 49, type: !17)
!95 = !DILocalVariable(name: "result", scope: !90, file: !5, line: 50, type: !17)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 50, column: 28, scope: !90)
!98 = !DILocation(line: 51, column: 17, scope: !90)
!99 = !DILocation(line: 52, column: 5, scope: !90)
!100 = distinct !DISubprogram(name: "halide_malloc", scope: !5, file: !5, line: 55, type: !9, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !101)
!101 = !{!102, !103}
!102 = !DILocalVariable(name: "user_context", arg: 1, scope: !100, file: !5, line: 55, type: !11)
!103 = !DILocalVariable(name: "x", arg: 2, scope: !100, file: !5, line: 55, type: !12)
!104 = !DILocation(line: 0, scope: !100)
!105 = !DILocation(line: 56, column: 12, scope: !100)
!106 = !DILocation(line: 56, column: 5, scope: !100)
!107 = distinct !DISubprogram(name: "halide_free", scope: !5, file: !5, line: 59, type: !19, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !21, retainedNodes: !108)
!108 = !{!109, !110}
!109 = !DILocalVariable(name: "user_context", arg: 1, scope: !107, file: !5, line: 59, type: !11)
!110 = !DILocalVariable(name: "ptr", arg: 2, scope: !107, file: !5, line: 59, type: !11)
!111 = !DILocation(line: 0, scope: !107)
!112 = !DILocation(line: 60, column: 5, scope: !107)
!113 = !DILocation(line: 61, column: 1, scope: !107)
